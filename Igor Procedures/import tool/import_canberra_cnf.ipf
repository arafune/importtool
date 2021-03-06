// Licence: Lesser GNU Public License 2.1 (LGPL)
#pragma rtGlobals=3		// Use modern global access method.

// The Canberra Cnf procedure is based on xylib by Marcin Wojdyr:
// https://github.com/wojdyr/xylib (https://github.com/wojdyr/xylib/blob/master/xylib/canberra_cnf.cpp)

// Canberra CNF (aka CAM format) with spectral data from Genie software
// Based on code from Jim Fitzgerald that is used in FitzPeaks (Gamma Analysis
// and Calibration Software, http://www.jimfitz.demon.co.uk/fitzpeak.htm).
//
// I have rewritten large part of this code and may have introduced bugs.
// Let me know if you find one - Marcin W.
//
// The first attempt to add this format was based on script from:
// http://www.physicsforums.com/showpost.php?p=2279239&postcount=11
// and on analysis of a sample from Canberra DSA1000 MCA w/ Genie 2000 software,
// but it was almost completely rewritten when JF sent me his code.


static function CanberraCnf_readX(offset, file, ycols, n_channels)
	variable offset
	variable file
	wave ycols
	variable n_channels
	
	variable xval=0, i=0
	// energy calibration
	offset +=2*4+28
	FSetPos file, offset
	variable coef0 = from_pdp11(mybinread(file,4))
	variable coef1 = from_pdp11(mybinread(file,4))
	variable coef2 = from_pdp11(mybinread(file,4))
	if (coef1 == 0)
		return 0
	endif
	for (i = 0; i != 3; i+=1)
	endfor
	if (coef2 != 0) // quadr term
		string tmps=getnameforwave(file)+"_X"
		Make /O/R/N=(n_channels)  $tmps /wave=Xcols
		// Comparing results with FitzPeaks and and Cambio 4.0
		// the first channel should have number 1 (not 0).
		for (i = 0; i < n_channels; i+=1)
			xval = coef0 + coef1 * i + coef2 * i * i
			xcols[i]=xval
		endfor
		return 1
	else
		// since we start from ch1, the first value is coef[0] + coef[1]
		SetScale/P  x,coef0+coef1,coef1,"", ycols
		return 1
	endif
end


//http://www.igorexchange.com/node/2550
static function  CanberraCnf_convert_time(file)
	variable file
	Variable lowWord, highWord

#if (IgorVersion() >= 7) 
	// 64bit support
	fbinread /B=3/F=6/U file, lowword
#else
	FBinRead /B=3/F=3/U file, lowWord	
	FBinRead /B=3/F=3/U file, highWord
	if(highWord == 0)
	else
		lowWord = highWord * (2.^32) + lowWord
	endif
#endif
	return lowWord
end


function CanberraCnf_check_file(file)
	variable file
	fstatus file
	if(V_logEOF<=112)
		return -1
	endif
	fsetpos file, 112
	variable offset = 0
	variable pos = 112
	string buf
	struct fourbytes ptr
	do
		fstatus file
		if(V_logEOF<=(pos+4))
			return -1
		endif
		fsetpos file, pos
		Fbinread /B=3 file, ptr //read little endian (=3)
		if(ptr.bytes[0] == 5 && ((ptr.bytes[1] == 0x20 && ptr.bytes[2] == 0x01) || ptr.bytes[1] == 0 || ptr.bytes[2] == 0))
			FSetPos file,pos+10
			offset = read_uint32_le(file)
			break
		endif
		pos +=48	
		fstatus file
	while(V_logEOF>V_filePOS)
	if(offset <= pos)
		fsetpos file, 0
		return -1
	endif
	fstatus file
	if(V_logEOF<=offset)
		return -1
	endif
	fsetpos file, offset
	Fbinread /B=3 file, ptr //read little endian (=3)
	fstatus file
	if(V_logEOF>V_filePOS && ptr.bytes[0] == 5 && ptr.bytes[1] == 0x20)
		fsetpos file, 0
		return 1
	endif	
	fsetpos file, 0
	return -1
end


function CanberraCnf_load_data_info(importloader)
	struct importloader &importloader
	importloader.name = "Canberra CNF"
	importloader.filestr = "*.cnf"
	importloader.category = "XRD"
end


function CanberraCnf_load_data([optfile])
	variable optfile
	optfile = paramIsDefault(optfile) ? -1 : optfile
	struct importloader importloader
	CanberraCnf_load_data_info(importloader)
	 if(loaderstart(importloader, optfile=optfile)!=0)
		return -1
	endif
	string header = importloader.header
	variable file = importloader.file

	Fstatus file
	string file_string = ""
	variable beg_=0
	variable end_=V_logEOF
	variable acq_offset = 0, sam_offset = 0, eff_offset = 0, enc_offset = 0, chan_offset = 0
	variable offset =0, ptrv=0


	struct fourbytes ptr
	string temp
	// we have here 48-byte blocks with meta data
	for (ptrv = beg_+112; ptrv+48 < end_; ptrv += 48) 
		FSetPos file,ptrv
		Fbinread /B=3 file, ptr //read little endian (=3)
		
		FSetPos file,ptrv+10
		offset = read_uint32_le(file)
		if ((ptr.bytes[1] == 0x20 && ptr.bytes[2] == 0x01) || ptr.bytes[1] == 0 || ptr.bytes[2] == 0) 
			switch (ptr.bytes[0])
				case 0:
					if (acq_offset == 0)
						acq_offset = offset
					else
						enc_offset = offset
					endif
				break
				case 1:
					if (sam_offset == 0)
						sam_offset = offset
					endif
				break
				case 2:
					if (eff_offset == 0)
						eff_offset = offset
					endif
				break
				case 5:
					if (chan_offset == 0)
						chan_offset = offset
					endif
				break
				default:
				break
			endswitch
			if (acq_offset != 0 && sam_offset != 0 && eff_offset != 0 && chan_offset != 0)
				break
			endif
		endif
	endfor
	if (enc_offset == 0)
		enc_offset = acq_offset
	endif

	// sample data - split name into name and description
	// (this was not in code from JF, it's my guess - MW)
    	//const char* sam_ptr = beg + sam_offset;
	FSetPos file,beg_ + sam_offset
	struct fourbytes sam_ptr
	Fbinread /B=3 file, sam_ptr //read little endian (=3)
	string name, desc
	if (beg_ + sam_offset+0x30+80 >= end_ || sam_ptr.bytes[0] != 1 || sam_ptr.bytes[1] != 0x20)
		Debugprintf2("Warning. Sample data not found.",0)
		loaderend(importloader)
		return -1
	else
		FSetPos file,beg_ + sam_offset+0x30
		name = ReplaceString(" ",mybinread(file,32),"")
		Debugprintf2("Sample name: "+name, 1)
		FSetPos file,beg_ + sam_offset+0x30+32
		desc = ReplaceString(" ",mybinread(file,48),"")
		Debugprintf2("sample description: "+desc,1)
	endif

	// go to acquisition data
	FSetPos file,beg_ + acq_offset
	struct fourbytes acq_ptr
	Fbinread /B=3 file, acq_ptr //read little endian (=3)
	if (beg_ + acq_offset+48+128+10+4 >= end_ || acq_ptr.bytes[0] != 0 || acq_ptr.bytes[1] != 0x20)
		Debugprintf2("Acquisition data not found.",0)
		loaderend(importloader)
		return -1
	endif
	FSetPos file, beg_ + acq_offset+34
	variable offset1=read_uint16_le(file)
	FSetPos file,beg_ + acq_offset+36
	variable offset2=read_uint16_le(file)
	FSetPos file, beg_ + acq_offset +48+128
	if (strsearch(mybinread(file,3)"PHA",0)!=0)
		Debugprintf2("Warning. PHA keyword not found.",0)
		loaderend(importloader)
		return -1
	endif
	FSetPos file, beg_ + acq_offset +48+128+10
	variable n_channels = read_uint16_le(file)*256
	if (n_channels < 256 || n_channels > 16384)
		Debugprintf2("Unexpected number of channels" + num2str(n_channels),0)
		loaderend(importloader)
		return -1
	endif

	// dates and times
    	FSetPos file, beg_ +acq_offset+48+offset2+1
	if ( beg_ +acq_offset+48+offset2+1+3*8>=end_)
		Debugprintf2("Unexpected end of file!",0)
		loaderend(importloader)
		return -1
	endif
	string dates="date and time: "+ cleanupname(mybinread(file,8),1)
	variable real_time = CanberraCnf_convert_time(file)
	Debugprintf2("real time (s): "+num2str(real_time),1)
	variable live_time =  CanberraCnf_convert_time(file)
	Debugprintf2("live time (s): "+num2str(live_time),1)

	if(beg_ + enc_offset+48+32 + offset1 >= end_)
		Debugprintf2("Unexpected end of file!",0)
		loaderend(importloader)
		return -1
	endif
	
	string tmps=getnameforwave(file)//"raw_data"
	Make /O/R/N=(n_channels)  $tmps /wave=ycols
	//SetScale/P  x,x_start,x_step,"", ycols //StepColumn* xcol = new StepColumn(start, step);
	note ycols, header
	note ycols,"Sample name: "+name
	note ycols,"sample description: "+desc
	note ycols, dates
	note ycols,"real time (s): "+num2str(real_time)
	note ycols,"live time (s): "+num2str(live_time)

	variable detoff=beg_ + enc_offset+48+32 + offset1+  2*4+28+3*4
	variable i=CanberraCnf_readX(beg_ + enc_offset+48+32 + offset1, file, ycols, n_channels)
	if (i==0)
		i=CanberraCnf_readX(beg_ + enc_offset+48+32, file, ycols, n_channels)
		detoff=beg_ + enc_offset+48+32+  2*4+28+3*4
	endif
	
	if (i==0)
		Debugprintf2( "Warning. Energy Calibration not found.",0)
		SetScale/P  x,1,1,"", ycols
	endif

	// code from JF is also reading detector name, but it's not needed here
	// detector name was 232 bytes after energy calibration

	FsetPos file, detoff
	string detector= "Detector name: "+cleanupname(mybinread(file,32),1)+"#"
	Debugprintf2(detector,1)
	note ycols, detector

	// channel data
	FSetPos file, beg_ + chan_offset
	struct fourbytes chan_ptr
	Fbinread /B=3 file, chan_ptr
	if (beg_ + chan_offset+512+4*n_channels > end_ || chan_ptr.bytes[0] != 5 || chan_ptr.bytes[1] != 0x20)
		Debugprintf2("Channel data not found.",0)
		loaderend(importloader)
		return -1
	endif 
        
	// the two first channels sometimes contain live and real time
	variable y=0
	FSetPos file, beg_ + chan_offset+512
	for (i = 0; i < 2; i+=1)
		y = read_uint32_le(file)
		if (y == round(real_time) || y == round(live_time))
			y = 0
		endif
		ycols[i]=y
	endfor    
	for (i = 2; i < n_channels; i+=1)
		y = read_uint32_le(file)
		ycols[i]=y
	endfor
	importloader.success = 1
	loaderend(importloader)
end
