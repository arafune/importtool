// Licence: Lesser GNU Public License 2.1 (LGPL)
#pragma rtGlobals=3		// Use modern global access method.

// file generated by EC-Lab (Bio-Logic-Science Instruments)
// http://www.bio-logic.info/potentiostat-electrochemistry-ec-lab/

function BIOLOGICmpt_check_file(file)
	variable file
	fsetpos file, 0
	string tmps = mycleanupstr(myreadline(file))
	if(cmpstr(tmps, "EC-Lab ASCII FILE")!=0)
		fsetpos file, 0
		return -1	
	endif
	tmps = mycleanupstr(myreadline(file))
	variable headerlines = 0
	if(strsearch(tmps, "Nb header lines",0)!=-1)
		headerlines = str2num(tmps[strsearch(tmps, ":",0)+1,inf])
		if(numtype(headerlines)!=0)
			fsetpos file, 0
			return -1	
		endif
	else
		fsetpos file, 0
		return -1
	endif
	fsetpos file, 0
	return 1
end


function BIOLOGICmpt_load_data_info(importloader)
	struct importloader &importloader
	importloader.name = "EC-Lab text"
	importloader.filestr = "*.mpt"
	importloader.category = "E-Chem"
end


function  BIOLOGICmpt_load_data([optfile])
	variable optfile
	optfile = paramIsDefault(optfile) ? -1 : optfile
	struct importloader importloader
	BIOLOGICmpt_load_data_info(importloader)
	if(loaderstart(importloader, optfile=optfile)!=0)
		return -1
	endif
	string header = importloader.header
	variable file = importloader.file
	
	// load complete file into a text wave for faster processing
	fstatus file
	LoadWave/Q/J/V={"", "", 0, 0}/K=2/A=$("file") (S_path+S_fileName)
	if(V_flag !=1)
		loaderend(importloader)
		return -1
	endif
	wave /T filewave = $(StringFromList(0, S_waveNames))
	string wavetokill = GetDataFolder(1)+StringFromList(0, S_waveNames)
	variable linecount = 0

	string valtmps = ""
	string tmps = mycleanupstr(filewave[linecount]); linecount +=1
	if(cmpstr(tmps, "EC-Lab ASCII FILE")!=0)
		Debugprintf2("Invalid header!",0)
		loaderend(importloader)
		return -1	
	endif

	// how many header lines in total
	tmps = mycleanupstr(filewave[linecount]); linecount +=1
	variable headerlines = 0
	if(strsearch(tmps, "Nb header lines",0)!=-1)
		headerlines = str2num(tmps[strsearch(tmps, ":",0)+1,inf])
		if(numtype(headerlines)!=0)
			Debugprintf2("Error in header lines!",0)
			killwaves $wavetokill
			loaderend(importloader)
			return -1	
		endif
	else
		Debugprintf2("Invalid header!",0)
		killwaves $wavetokill
		loaderend(importloader)
		return -1
	endif
	variable i=0

	// three lines: EC-LAB ASCII, header lines, and header names; rest are comments 
	for(i=3;i<headerlines;i+=1)
		header +="\r+Comment "+num2str(i-2)+": "+mycleanupstr(filewave[linecount]); linecount +=1
	endfor

	// now getting name of columns
	string wavenamelist = mycleanupstr(filewave[linecount]); linecount +=1

	tmpS = "tmpwavearray" ; Make /O/D/N=(0,ItemsInList(wavenamelist,"\t")) $tmpS ; wave datawave = $tmpS
	variable datacount = 1
	
	// reading the data
	do
		redimension /N=(datacount,-1) datawave
		tmps =mycleanupstr(filewave[linecount]); linecount +=1
		if(ItemsInList(wavenamelist,"\t")!=ItemsInList(tmps,"\t"))
			Debugprintf2("Column count mismatch!",0)
			killwaves $wavetokill
			loaderend(importloader)
			return -1
		endif
		tmps =ReplaceString(",",tmps,".")
		for(i=0;i<ItemsInList(tmps,"\t");i+=1)
			valtmps = StringFromList(i,tmps, "\t")
			if(numtype(str2num(valtmps))!=0 && cmpstr(valtmps, "xxx")!=0) //some new files also contain "xxx" as a "number"
				Debugprintf2("Error reading data!",0)
				killwaves $wavetokill
				loaderend(importloader)
				return -1
			else
				datawave[datacount-1][i] =str2num(valtmps)
			endif
		endfor
		
		datacount+=1
	while(linecount<dimsize(filewave,0))
	
	// adding notes and renaming waves
	note datawave, header
	splitmatrix(datawave, "0")
	for(i=0;i<ItemsInList(wavenamelist,"\t");i+=1)
		note $("0_spk"+num2str(i)), "Name: "+StringFromList(i,wavenamelist, "\t")
		rename $("0_spk"+num2str(i)), $(num2str(i)+"_"+ cleanname(StringFromList(i,wavenamelist, "\t")))
		Debugprintf2("... exporting: "+StringFromList(i,wavenamelist, "\t"),0)
	endfor	
	killwaves $wavetokill
	importloader.success = 1
	loaderend(importloader)
end
