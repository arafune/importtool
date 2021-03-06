// Licence: Lesser GNU Public License 2.1 (LGPL)
#pragma rtGlobals=3		// Use modern global access method.

// Reverse View 8'' LEED Optics with Retraction - Model RVL2000/8/R
// http://www.lktech.com/products/rvl2000.php

function LKAES_check_file(file)
	variable file
	fsetpos file, 0
	string tmps = mycleanupstr(myreadline(file))
	if(strsearch(tmps, "# AE file:",0)!=0)
		fsetpos file, 0
		return -1	
	endif
	fsetpos file, 0
	return 1
end


function LKAES_load_data_info(importloader)
	struct importloader &importloader
	importloader.name = "LK-Tech AES"
	importloader.filestr = "*.dat"
	importloader.category = "AES"
end


function LKAES_load_data([optfile])
	variable optfile
	optfile = paramIsDefault(optfile) ? -1 : optfile
	struct importloader importloader
	LKAES_load_data_info(importloader)
	if(loaderstart(importloader, optfile=optfile)!=0)
		return -1
	endif
	string header = importloader.header
	variable file = importloader.file

	string tmps="", tmps2=""
	variable tmp=0, tmp2=0, tmpc=0

	do
		Freadline file, tmps
		If (strlen(tmps)==0)
			return 0
		endif
		tmps=mycleanupstr(tmps)
		if(strsearch(tmps,"#",0)==0)
			tmp+=1
			header+="\rComment"+num2str(tmp)+": "+stripstrfirstlastspaces(tmps[strsearch(tmps,"#",0)+1,inf])
			continue
		endif

		tmps=splitintolist(tmps, " ")
		if (itemsinlist(tmps,"_") != 4)
			Debugprintf2("Wrong number of items in value list!",2)
			break
		endif
		tmp=str2num(StringFromList(3,tmps,"_")) // number of spektrum 

		if(tmp!=tmp2) //new spectrum begins
			tmp2=tmp
			tmpc=1
			tmps2="region_"+num2str(tmp)+"_X" ; Make /O/R/N=(tmpc)  $tmps2 /wave=detectorX
			tmps2="region_"+num2str(tmp)+"_Y" ; Make /O/R/N=(tmpc)  $tmps2 /wave=detectorY
			tmps2="region_"+num2str(tmp)+"_T" ; Make /O/R/N=(tmpc)  $tmps2 /wave=detectorT
			note detectorX, header
			note detectorY, header
			note detectorT, header
			SetScale d, 0,0,"eV", detectorX
			SetScale d, 0,0,"cps", detectorY
			SetScale d, 0,0,"timecode", detectorT
		else

			tmpc+=1
			redimension /N=(tmpc) detectorX
			redimension /N=(tmpc) detectorY
			redimension /N=(tmpc) detectorT
		endif

		detectorX[tmpc-1]=str2num(StringFromList(0,tmps,"_"))
		detectorY[tmpc-1]=str2num(StringFromList(1,tmps,"_"))
		detectorT[tmpc-1]=str2num(StringFromList(2,tmps,"_"))
		Fstatus file
	while (V_logEOF>V_filePOS)  	

	importloader.success = 1
	loaderend(importloader)
end
