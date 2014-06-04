// Licence: Lesser GNU Public License 2.1 (LGPL)
#pragma rtGlobals=3		// Use modern global access method.

// The Canberra Mca procedure is based on xylib by Marcin Wojdyr:
// https://github.com/wojdyr/xylib (https://github.com/wojdyr/xylib/blob/master/xylib/canberra_mca.cpp)


Menu "Macros"
	submenu "Import Tool "+importloaderversion
			submenu "XRD"
				"Load Canberra AccuSpec  *.dat 	*.mca	file... b1", CanberraMca_load_data()
			end
	end
end

// ###################### Canberra AccuSpec MCA ########################
// Canberra AccuSpec MCA

// based on a chapter from an unknown instruction, pages B1-B5:
// APPENDIX B: FILE STRUCTURES
// "Spectral data acquired on the MCA system are directly
// accumulated in memory. These data are transferred to a disk
// file via the \Move command in the MCA program."
//
// This format is (was?) used in two synchrotron stations in Hamburg.
// Data is produced by Canberra multi-channel analyser (MCA).
// NOTE: .mca is not a canonical extension.
// Update: In Cambio software from sandia.gov this format is called
// Canberra Accuspec (*.dat). In ver. 0.9 .dat extension was added.


function CanberraMca_load_data()
	string dfSave=""
	variable file
	string impname="Canberra AccuSpec MCA"
	string filestr="*.mca,*.dat"
	string header = loaderstart(impname, filestr,file,dfSave)
	if (strlen(header)==0)
		return -1
	endif

	variable file_size = 2*512+2048*4
	FStatus file
	if (V_logEOF <= 4100)
		Debugprintf2("Unexpected end of file.",0)
		close file
		return -1		
	endif
	FSetPos file, 0

	mybinread(file,24)
	variable data_offset = read_uint16_le(file)
	Debugprintf2("Data offset: "+num2str(data_offset),0)
	mybinread(file,82)//108-24-2=82
	variable energy_offset = from_pdp11(mybinread(file,4))//(all_data + 108)
	Debugprintf2("energy offset: "+num2str(energy_offset),0)
	variable energy_slope = from_pdp11(mybinread(file,4))//(all_data + 112)
	Debugprintf2("energy slope: "+num2str(energy_slope),0)
	variable energy_quadr = from_pdp11(mybinread(file,4))//(all_data + 116)
	Debugprintf2("energy quadr: "+num2str(energy_quadr),0)

	variable xval=0,yval=0
	string tmps = getnameforwave(file)+"_Y"//"raw_data_Y"
	Make /O/R/N=(2048)  $tmps /wave=ycol
	note ycol, header
	variable i=0
	if (energy_quadr)
		tmps = getnameforwave(file)+"_X"//"raw_data_X"
		Make /O/R/N=(2048)  $tmps /wave=xcol
		for (i = 1; i <= 2048; i+=1)
			//FIXME should it be from 1 ?
			// perhaps from 0 to 2047, description was not clear.
			 xval = energy_offset + energy_slope * i + energy_quadr * i * i
			xcol[i-1]=xval
		endfor
	else
		SetScale/P  x,energy_offset+energy_slope,energy_slope,"", ycol
	endif


	Fsetpos file, data_offset
	for (i = 1; i <= 2048; i+=1)
		yval = read_uint32_le(file)
		ycol[i-1]=yval
	endfor

	loaderend(impname,1,file, dfSave)
end

#if 0
function test()
	string raw="RAW " //5.4259e+08
	struct fourbytes raws
	struct myuint32 val
	variable val2
	StructGet/S/B=3 val, raw
	//StructPut/S db, temp
	val2=val.val
	print raw+ " --> "+num2str(val2)
end
#endif
// ###################### Canberra AccuSpec MCA END ######################