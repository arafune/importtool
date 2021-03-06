// Licence: Lesser GNU Public License 2.1 (LGPL)
#pragma rtGlobals=3		// Use modern global access method.

// Device: http://www.princetonappliedresearch.com/Our-Products/Potentiostats/VersaSTAT-4.aspx

static structure VersaStudio_param
	string key
	string val
	string group
	string groupnumber
endstructure


static structure VersaStudio_header
	string header
	string applicationName
	string applicationVersion
	string applicationLoggedIn
	string instrumentType
	string instrumentModel
	string instrumentSN
	string instrumentOptions
	string instrumentFirmware
	string experimentTimeAcquired
	string experimentDateAcquired
	string experimentSelectionEnd
	string experimentSelectionStart
	string experimentHeight
	string experimentWidth
	string experimentLocY
	string experimentLocX
	string experimentShow
endstructure


static function VersaStudio_getparam(str, param)
	string str ; struct VersaStudio_param &param
	param.key = ""
	param.val = ""
	param.group = ""
	param.groupnumber = ""
	if(strsearch(str,"<",0)!=-1)
		if(strsearch(str,"</",0)!=-1)
			param.group = stripstrfirstlastspaces(str[strsearch(str,"</",0)+1,strsearch(str,">",0)-1])
		else
			param.group = stripstrfirstlastspaces(str[strsearch(str,"<",0)+1,strsearch(str,">",0)-1])
		endif
	else
		if(strsearch(str,"=",0)!=-1)
			param.key=stripstrfirstlastspaces(str[0,strsearch(str,"=",0)-1])
			param.val=stripstrfirstlastspaces(str[strsearch(str,"=",0)+1,inf])
		else
			param.val = str
		endif
	endif
	
	//check for number at end of group marker
	if(strlen(param.group)!=0)
		str = param.group
		if(numtype(str2num(str[strlen(str)-1,inf]))==0) // # (0 .. 9)
			param.group = str[0,strlen(str)-2]
			param.groupnumber = str[strlen(str)-1,inf]
		elseif(numtype(str2num(str[strlen(str)-2,inf]))==0) // ## (10 ..99)
			param.group = str[0,strlen(str)-3]
			param.groupnumber = str[strlen(str)-2,inf]
		endif
		
	endif
	
end


function VersaStudio_check_file(file)
	variable file
	fsetpos file, 0
	string line = ""
	FReadLine file, line
	if(strlen(line) == 0)
		fsetpos file, 0
		return -1
	endif
	line = mycleanupstr(line)	
	if(strsearch(line, "<Application>",0)!=0)
		fsetpos file, 0
		return -1
	endif
	

	FReadLine file, line
	if(strlen(line) == 0)
		fsetpos file, 0
		return -1
	endif
	line = mycleanupstr(line)	
	if(strsearch(line, "Name=VersaStudio",0)!=0)
		fsetpos file, 0
		return -1
	endif

	FReadLine file, line
	if(strlen(line) == 0)
		fsetpos file, 0
		return -1
	endif
	line = mycleanupstr(line)	
	if(strsearch(line, "Version=",0)!=0)
		fsetpos file, 0
		return -1
	endif


	FReadLine file, line
	if(strlen(line) == 0)
		fsetpos file, 0
		return -1
	endif
	line = mycleanupstr(line)	
	if(strsearch(line, "LoggedIn=",0)!=0)
		fsetpos file, 0
		return -1
	endif

	FReadLine file, line
	if(strlen(line) == 0)
		fsetpos file, 0
		return -1
	endif
	line = mycleanupstr(line)	
	if(strsearch(line, "</Application>",0)!=0)
		fsetpos file, 0
		return -1
	endif
	fsetpos file, 0
	return 1
end


function VersaStudio_load_data_info(importloader)
	struct importloader &importloader
	importloader.name = "VersaStudio data"
	importloader.filestr = "*.par"
	importloader.category = "E-Chem"
end


function VersaStudio_load_data([optfile])
	variable optfile
	optfile = paramIsDefault(optfile) ? -1 : optfile
	struct importloader importloader
	VersaStudio_load_data_info(importloader)
	if(loaderstart(importloader, optfile=optfile)!=0)
		return -1
	endif
	string header = importloader.header
	variable file = importloader.file
	
	struct VersaStudio_param param
	struct VersaStudio_header hdr
	hdr.header = header
	string savepath = ""
	
	
	do
		VersaStudio_getparam(mycleanupstr(myreadline(file)), param)
		strswitch(param.group)
			case "Application":
				Debugprintf2("found Application",1)
				VersaStudio_read_application(file, hdr)
				break
			case "Action":
				Debugprintf2("found Action",1)
				break
			case "Instrument":
				Debugprintf2("found Instrument",1)
				VersaStudio_read_instrument(file, hdr)
				break
			case "Experiment":
				Debugprintf2("found Experiment",1)
				VersaStudio_read_experiment(file, hdr)
				break
			case "DataView":
				Debugprintf2("found DataView",1)
				break
			case "StripView":
				Debugprintf2("found StripView",1)
				break
			case "Segment":
				Debugprintf2("found Segment",1)
				// save the current path
				savepath=GetDataFolder(1)
				NewDataFolder/s $("Segment_"+param.groupnumber)
				if(VersaStudio_read_segement(file, hdr) == -1)
					Debugprintf2("Error reading data!",0)
					loaderend(importloader)
					return -1
				endif
				// reset old path
				Setdatafolder $savepath 
				break
			case "Graph":
				Debugprintf2("found Graph",1)
				break
			case "Overlays":
				Debugprintf2("found Overlays",1)
				break
			default:
				// should be an empty line
				break				
		endswitch
	
		fstatus file
	while(V_logEOF>V_filePOS)

	importloader.success = 1
	loaderend(importloader)
end


static function VersaStudio_read_application(file, hdr)
	variable file; struct VersaStudio_header &hdr

	variable run = 1
	struct VersaStudio_param param

	do
		VersaStudio_getparam(mycleanupstr(myreadline(file)), param)
		strswitch(param.key)
			case "Name":
				hdr.applicationName=param.val
				break
			case "Version":
				hdr.applicationVersion=param.val
				break
			case "LoggedIn":
				hdr.applicationLoggedIn=param.val
				break
			default:
				if(strsearch(param.group,"/Application",0)==0)
					run = 0
				endif
				break
		endswitch
		fstatus file
	while(V_logEOF>V_filePOS && run == 1)
	return 0
end


static function VersaStudio_read_instrument(file, hdr)
	variable file; struct VersaStudio_header &hdr

	variable run = 1
	struct VersaStudio_param param

	do
		VersaStudio_getparam(mycleanupstr(myreadline(file)), param)
		strswitch(param.key)
			case "Type":
				hdr.instrumentType=param.val
				break
			case "Model":
				hdr.instrumentModel=param.val
				break
			case "SN":
				hdr.instrumentSN=param.val
				break
			case "Options":
				hdr.instrumentOptions=param.val
				break
			case "Firmware":
				hdr.instrumentFirmware=param.val
				break
			default:
				if(strsearch(param.group,"/Instrument",0)==0)
					run = 0
				endif
				break
		endswitch
		fstatus file
	while(V_logEOF>V_filePOS && run == 1)
	return 0
end


static function VersaStudio_read_experiment(file, hdr)
	variable file; struct VersaStudio_header &hdr
	
	variable run = 1
	struct VersaStudio_param param

	do
		VersaStudio_getparam(mycleanupstr(myreadline(file)), param)
		strswitch(param.key)
			case "TimeAcquired":
				hdr.experimentTimeAcquired=param.val
				break
			case "DateAcquired":
				hdr.experimentDateAcquired=param.val
				break
			case "SelectionEnd":
				hdr.experimentSelectionEnd=param.val
				break
			case "SelectionStart":
				hdr.experimentSelectionStart=param.val
				break
			case "Height":
				hdr.experimentHeight=param.val
				break
			case "Width":
				hdr.experimentWidth=param.val
				break
			case "LocY":
				hdr.experimentLocY=param.val
				break
			case "LocX":
				hdr.experimentLocX=param.val
				break
			case "Show":
				hdr.experimentShow=param.val
				break
			default:
				if(strsearch(param.group,"/Experiment",0)==0)
					run = 0
				endif
				break
		endswitch
		fstatus file
	while(V_logEOF>V_filePOS && run == 1)
	return 0
end


static function VersaStudio_read_segement(file, hdr)
	variable file; struct VersaStudio_header &hdr

	struct VersaStudio_param param
	variable run = 1, datacount = 1, i=0
	string tmps = "", definition = ""
	
	do
		VersaStudio_getparam(mycleanupstr(myreadline(file)), param)
		strswitch(param.key)
			case "Type":
				Debugprintf2("Type: "+param.val,1)
				break
			case "Version":
				Debugprintf2("Version: "+param.val,1)
				break
			case "Definition":
				Debugprintf2("Definition: "+param.val,1)
				definition = param.val	
				tmpS = "tmpwavearray" ; Make /O/D/N=(0,itemsinlist(param.val,",")-1) $tmpS ; wave datawave = $tmpS
				datacount = 1
				break
			default:
				if(strsearch(param.group,"/Segment",0)==0)
					// end of segment
					run = 0
				else
					// reading the data
					redimension /N=(datacount,-1) datawave
					if((itemsinlist(definition,",")-1)!=ItemsInList(param.val,","))
						Debugprintf2("Column count mismatch!",0)
						run = 0
						return -1
						break
					endif
					for(i=0;i<ItemsInList(param.val,",");i+=1)
						if(numtype(str2num(StringFromList(i,param.val, ",")))!=0)
							return -1
						else
							datawave[datacount-1][i] =str2num(StringFromList(i,param.val, ","))
						endif
					endfor
					datacount+=1
				endif
				break
		endswitch

		fstatus file
	while(V_logEOF>V_filePOS && run == 1)

	// check if actually some data was read
	if(datacount>1)
		tmps = hdr.header; note datawave, tmps
		tmps = hdr.applicationName; note datawave, "Application Name: "+tmps
		tmps = hdr.applicationVersion; note datawave, "Application Version: "+tmps
		tmps = hdr.applicationLoggedIn; note datawave, "Application LoggedIn: "+tmps
		tmps = hdr.instrumentType; note datawave, "Instrument Type: "+tmps
		tmps = hdr.instrumentModel; note datawave, "Instrument Model: "+tmps
		tmps = hdr.instrumentSN; note datawave, "Instrument SN: "+tmps
		tmps = hdr.instrumentOptions; note datawave, "Instrument Options: "+tmps
		tmps = hdr.instrumentFirmware; note datawave, "Instrument Firmware: "+tmps
		tmps = hdr.experimentTimeAcquired; note datawave, "Experiment TimeAcquired: "+tmps
		tmps = hdr.experimentDateAcquired; note datawave, "Experiment DateAcquired: "+tmps
		tmps = hdr.experimentSelectionEnd; note datawave, "Experiment SelectionEnd: "+tmps
		tmps = hdr.experimentSelectionStart; note datawave, "Experiment SelectionStart: "+tmps
		tmps = hdr.experimentHeight; note datawave, "Experiment Height: "+tmps
		tmps = hdr.experimentWidth; note datawave, "Experiment Width: "+tmps
		tmps = hdr.experimentLocY; note datawave, "Experiment LocY: "+tmps
		tmps = hdr.experimentLocX; note datawave, "Experiment LocX: "+tmps
		tmps = hdr.experimentShow; note datawave, "Experiment Show: "+tmps

		// check if we have more than one segment in the list
		string listofwaves = ""
		variable start = 0
		tmps = "tmpwave_"+num2str(datawave[start][0]); listofwaves +=tmps+";"
		duplicate /O/R=[start,i-1] datawave, $tmps
		for(i=1;i<dimsize(datawave,0);i+=1)
			if(datawave[start][0]!=datawave[i][0])
				tmps = "tmpwave_"+num2str(datawave[start][0])
				duplicate /O/R=[start,i-1] datawave, $tmps
				tmps = "tmpwave_"+num2str(datawave[i][0]); listofwaves +=tmps+";"
				duplicate /O/R=[i,inf] datawave, $tmps
				start = i
			endif
	
		endfor
		killwaves datawave

		// adding notes and renaming waves
		variable j=0
		for(j=0;j<itemsinlist(listofwaves,";");j+=1)
			splitmatrix($(stringfromlist(j,listofwaves,";")), "0")
			for(i=0;i<ItemsInList(definition,",")-1;i+=1)
				note $("0_spk"+num2str(i)), "Name: "+stripstrfirstlastspaces(StringFromList(i,definition, ","))
				rename $("0_spk"+num2str(i)), $(num2str(j)+"_"+num2str(i)+"_"+ cleanname(stripstrfirstlastspaces(StringFromList(i,definition, ","))))
				Debugprintf2("... exporting (segment "+num2str(j)+"): "+StringFromList(i,definition, ","),0)
			endfor	
		endfor
	else
		killwaves datawave
		Debugprintf2(".. empty segment!",0)
	endif
	
	return 0
end
