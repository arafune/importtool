// Licence: Lesser GNU Public License 2.1 (LGPL)
#pragma rtGlobals=3		// Use modern global access method.

// The Philips UDF procedure is based on xylib by Marcin Wojdyr:
// https://github.com/wojdyr/xylib (https://github.com/wojdyr/xylib/blob/master/xylib/philips_udf.cpp)

// Philips UDF format - powder diffraction data from Philips diffractometers

// Sample Fragment: ("#xxx": comments added by me; ...: omitted lines)
// 
// # meta-info
// SampleIdent,Sample5 ,/
// Title1,Dat2rit program ,/
// Title2,Sample5 ,/
// ...
// DataAngleRange, 5.0000, 120.0000,/ # x_start & x_end
// ScanStepSize, 0.020,/ # x_step
// ...
// RawScan
// 6234, 6185, 5969, 6129, 6199, 5988, 6046, 5922
// 6017, 5966, 5806, 5918, 5843, 5938, 5899, 5851
// ...
// 442/ # last data ends with a '/'

function Udf_check_file(file)
	variable file
	fsetpos file, 0
	string head=""
	FReadLine /N=11 file, head
	if(strlen(head) == 0)
		fsetpos file, 0
		return -1
	endif
	if(cmpstr(head, "SampleIdent")!=0)
		fsetpos file, 0
		return -1
	endif
	// avoid false positive with GSAS files
	variable i=0, found = 0
	for(i = 0; i < 10; i+=1)
		FReadLine file, head
		if(strlen(head) == 0)
			fsetpos file, 0
			return -1
		endif
		head = mycleanupstr(head)
		if(strsearch(head,"Title1",0)!=-1)
			found +=1
		elseif(strsearch(head,"DiffrType",0)!=-1)
			found +=1
		elseif(strsearch(head,"DiffrNumber",0)!=-1)
			found +=1
		elseif(strsearch(head,"Anode",0)!=-1)
			found +=1
		endif		
	endfor	
	fsetpos file, 0
	if(found !=4)
		return -1
	endif
	return 1
end


function Udf_load_data_info(importloader)
	struct importloader &importloader
	importloader.name = "Philips UDF"
	importloader.filestr = "*.udf"
	importloader.category = "XRD"
end


function Udf_load_data([optfile])
	variable optfile
	optfile = paramIsDefault(optfile) ? -1 : optfile
	struct importloader importloader
	Udf_load_data_info(importloader)
	if(loaderstart(importloader, optfile=optfile)!=0)
		return -1
	endif
	string header = importloader.header +"\r"
	variable file = importloader.file

	variable x_start = 0
	variable x_step = 0
	string key = "", val = "", val2 = ""
	string line = ""
	// read header
	do
		line = read_line_trim(file)
		line = ReplaceString(" ",line,"")
		line = ReplaceString("\r",line,"")
		line = ReplaceString("\t",line,"")
		line = ReplaceString("\n",line,"")
		if (cmpstr(line,"RawScan")==0) // indicates XY data start
			break
		endif
		// there should be at least two ',' in a key-value line
		if(itemsinlist(line,",")<3)
			Debugprintf2("Wrong # (<3) of values in key-value line",0)
		endif
		key = stringfromlist(0,line,",")
		val = stringfromlist(1,line,",")
		val2 = stringfromlist(2,line,",")

		if (cmpstr(key,"DataAngleRange")==0)
			// both start and end value are given, separated with ','
			x_start = str2num(val)
			//x_end = str2num(val2)
			if(numtype(x_start) != 0)
				Debugprintf2("Couldn't get value for start!",0)
				close file
				return -1
			endif

		elseif (cmpstr(key,"ScanStepSize")==0)
			x_step = str2num(val)
			if(numtype(x_step) != 0)
				Debugprintf2("Couldn't get value for step!",0)
				close file
				return -1
			endif
		else
			header += key+": "+val+"\r"
		endif
		Fstatus file
	while(V_logEOF>V_filePOS)


	string tmps = getnameforwave(file)//"raw_scan"
	Make /O/R/N=(0)  $tmps /wave=ycols
	SetScale/P  x,x_start,x_step,"data angle", ycols
	note ycols, header
	variable size=0

	variable has_slash = 0
	variable finish = 0
	do
		if (has_slash==1)
			break
		endif
		Freadline file, line
		if(strlen(line) == 0)
			break
		endif
		line = mycleanupstr(line)
		line = ReplaceString(" ",line,"") // last line with last value 
		line = ReplaceString("\r",line,"")
		line = ReplaceString("\t",line,"")
		line = ReplaceString("\n",line,"")

		//line = stripstr(line,",/","") // last line with last value 
		if (strsearch(line,",/",0)!=-1)
			//print "found it: "+line
			line = line[0,strsearch(line,",/",0)-1]
			has_slash=1
		endif
		//line = stripstr(line,",/","") // last line with last value
		variable i=0
		for (i=0;i<itemsinlist(line,",");i+=1)
			size+=1
			Redimension/N=(size) ycols
			if(numtype(str2num(stringfromlist(i,line,",")))==0)
				ycols[size-1]=str2num(stringfromlist(i,line,","))
			else
				Debugprintf2("Unexpected char when reading data!",0)
				close file
				return -1
			endif
		endfor

		fstatus file
	while(V_logEOF>V_filePOS)

	importloader.success = 1
	loaderend(importloader)
end
