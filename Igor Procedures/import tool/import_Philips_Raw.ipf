// Licence: Lesser GNU Public License 2.1 (LGPL)
#pragma rtGlobals=3		// Use modern global access method.

// The Philips RD raw procedure is based on xylib by Marcin Wojdyr:
// https://github.com/wojdyr/xylib (https://github.com/wojdyr/xylib/blob/master/xylib/philips_raw.cpp)

// Philips RD raw scan format V3 (.rd) and V5 (.sd)

static Structure SSEread
	double x_step
	double x_start
	double x_end
endStructure


function PhilipsRaw_check_file(file)
	variable file
	fsetpos file, 0
	string head = mybinread(file, 4)
	fsetpos file, 0
	if( StringMatch(head,"V3RD")==1 || StringMatch(head,"V5RD")==1)
		return 1
	endif
	return -1
end


function PhilipsRaw_load_data_info(importloader)
	struct importloader &importloader
	importloader.name = "Philips RD raw scan"
	importloader.filestr = "*.rd,*sd"
	importloader.category = "XRD"
end


function PhilipsRaw_load_data([optfile])
	variable optfile
	optfile = paramIsDefault(optfile) ? -1 : optfile
	struct importloader importloader
	PhilipsRaw_load_data_info(importloader)
	if(loaderstart(importloader, optfile=optfile)!=0)
		return -1
	endif
	string header = importloader.header+"\r"
	variable file = importloader.file
	 
	string tmps=""

	// mappers, translate the numbers to human-readable strings
	string diffractor_types = "PW1800;PW1710 based system;PW1840;PW3710 based system;Undefined;X'Pert MPD"
	string anode_materials = "Cu;Mo;Fe;Cr;Other"
	string focus_types = "BF;NF;FF;LFF"
	string version = ""
	version =  mybinread(file, 2)
	Debugprintf2("Version: "+version,0)
	if(cmpstr(version,"V3")!=0 && cmpstr(version,"V5")!=0 )
		Debugprintf2("Wrong file version. Only V3 and V5 are supported",0)
		close file
		return -1
	endif
	
	mybinread(file, 82)
	variable dt_idx
	FBinread/B=3/f=1 file, dt_idx
	Debugprintf2("DT_IDX: "+num2str(dt_idx),1)
	if (0 <= dt_idx && dt_idx <= 5)
		header += "diffractor type: "+stringfromlist(dt_idx,diffractor_types,";")+"\r"
	endif

	variable anode_idx
	FBinread/B=3/f=1 file, anode_idx
	Debugprintf2("ANODE_IDX: "+num2str(anode_idx),1)
	if (0 <= anode_idx && anode_idx <= 5)
		header += "tube anode material: "+stringfromlist(anode_idx,anode_materials,";")+"\r"
	endif

	variable ft_idx
	FBinread/B=3/f=1 file, ft_idx
	Debugprintf2("FT_IDX: "+num2str(ft_idx),1)
	if (0 <= ft_idx && ft_idx <= 3)
		header +="focus type of x-ray tube: "+stringfromlist(ft_idx,focus_types,";")+"\r"
	endif

	mybinread(file, 138 - 84 - 3)
	tmps=mybinread(file,8)
	Debugprintf2("name of the file: "+tmps,0)
	header += "name of the file: "+tmps+"\r"
	tmps=mybinread(file,20)
	Debugprintf2("sample identification: "+tmps,0)
	header += "sample identification: "+tmps+"\r"

	mybinread(file,214 - 138 - 8 - 20)
	struct SSEread xvals
	FBinRead file, xvals
	variable pt_cnt = ((xvals.x_end - xvals.x_start) / xvals.x_step + 1)
	tmps= getnameforwave(file)//"raw_data"
	Make /O/R/N=(pt_cnt)  $tmps /wave=ycols
	SetScale/P  x,xvals.x_start,xvals.x_step,"", ycols
	note ycols, header

	// read in y data
	if (cmpstr(version,"V3")==0)
		mybinread(file,250 - 214 - 8*3)
	else
		mybinread(file,810 - 214 - 8*3)
	endif
	
	variable y=0,i=0, val=0
	for (i = 0; i < pt_cnt; i+=1)
		FBinRead /U/f=2 file,val
		y=val*val/100
		ycols[i]=y
	endfor

	importloader.success = 1
	loaderend(importloader)
end
