// Licence: Lesser GNU Public License 2.1 (LGPL)
#pragma rtGlobals=3		// Use modern global access method.

Menu "Macros"
	submenu "Import Tool "+importloaderversion
			submenu "PES"
				"Load Kratos Ultra				*.dset	file... v0.2", KratosDSET_load_data()
			end
	end
end

//static strconstant DsetBG = "BG"
//static strconstant Dsetimage = "img"
static strconstant Gtmpwavename = "tmpwave_"
static strconstant directory = "root:Packages:KratosDSET"

// These are my guesses and may not be correct
static strconstant offsetsname1_flags = "0;1;2;3;8;16;32;144;160"
static strconstant offsetsname1_value = "AES;ISS;SIMS;XPS;???;Position;???;???;Delay"
static strconstant offsetsname2_flags = "4;6;8;69;73;37;133;4096;4098;4160"
static strconstant offsetsname2_value = "List;Detector;Irregular;Spectrum;Split Object;???;?? Auto Z?;???;???;???"


// #### flags
static strconstant f_technique_names							= "AES;ISS;SIMS;XPS;SEM;SNMS;?;?;?"
static strconstant f_fat_resolution_names						= "Pass energy 5;Pass energy 10;Pass energy 20;Pass energy 40;Pass energy 80;Pass energy 160;Pass energy 320"
static strconstant f_fat_resolution_values						= "5;10;20;40;80;160;320"
static strconstant f_fixed_retard_ratio_names					= "Retard ratio 20/14;Retard ratio 10/11;Retard ratio 5/6;Retard ratio 2/3"
//static strconstant f_fixed_retard_ratio_names_20_10_5_2		= "Retard ratio 20;Retard ratio 10;Retard ratio 5;Retard ratio 2"
//static strconstant f_fixed_retard_ratio_names_14_11_6_3		= "Retard ratio 14;Retard ratio 11;Retard ratio 6;Retard ratio 3"
//static strconstant f_fixed_retard_ratio_values_20_10_5_2		= "20;10;5;2"
//static strconstant f_fixed_retard_ratio_values_14_11_6_3		= "14;11;6;3"
static strconstant f_lens_mode_names							= "Low Magn.;Medium Magn.;High Magn.;Hybrid;Magnetic;Slot-M;Electrostatic"
static strconstant f_hsa_lens_mode_names						= "Hybrid;Magnetic;Slot-M;Electrostatic;AES;UPS;ISS;Low Mag;Medium Mag;High Mag;SA XPS"
static strconstant f_mhsa_lens_mode_names						= "Field of View 1: Survey;Field of View 2: Small Spot;Field of View 3;Field of View 4;Field of View 5"
static strconstant f_fibre_optic_RS232_names					= "Fibre Optic 1;Fibre Optic 2;Fibre Optic 3;Fibre Optic 4"
static strconstant f_xray_manual_psu_options_names			= "Mg;Al;Mono (Al);Ti;Ag;UV"
static strconstant f_xray_manual_psu_source_names			= "Source 1;Source 2;Source 3;Source 4;Source 5"
static strconstant f_hardware_config_option_names				= ""//
//"ESCA Interface Card (IF1);ESCA Interface Card (IF3);ESCA Vision Interface Card;ESCA Xray Gun;ESCA Analyser;ESCA Ion Gun;ESCA Manipulator;VME BVME363 CPU68010;VME BVME370 CPU68030;VME BVME410 Ethernet;VME Kratos 3 Channel Timer Counter;VME Kratos 6 Channel Fibre-Optic Timer Counter;VME Kratos RS232 Fibre-Optic;VME Synoptics Frame-Store;
//VME Synoptics Slow-Scan Generator;VME Kratos Video Multiplexor;VME Imaging Technology Frame-Store;VME Kratos Slow-Scan Generator;VME Kratos Analog Signal Multiplexor;VME Kratos Parallel HT-Rack Interface;VME Kratos Fibre-Optic HT-Rack Interface;VME Kratos Fibre-Optic PSU Interface;VME Kratos Stepper Motor Interface;HT-Rack FAT Control Board;
//HT-Rack FRR Control Board;HT-Rack FAT/FRR Control Board;HT-Rack Lens Single PSU;HT-Rack Lens Double PSU;HT-Rack Mirror HSA Detector/Lens PSU;HT-Rack Analyser PSU;HT-Rack DAC I/O (AES Imaging);HT-Rack XPS Imaging Board MK1;HT-Rack XPS/AES Imaging Board MK2,;HT-Rack Manual Channeltron PSU;HT-Rack Channeltron PSU;HT-Rack Charge Neutraliser;
//Xray Manual PSU (Emission Stabiliser);Xray Spellman PSU;Electron-gun Manual PSU,;Electron-gun Accel PSU;Electron-gun Spellman PSU;Ion-Gun Manual PSU;K4 Vacuum Controller;Hemi-Spherical Analyser;Mirror Hemi-Spherical Analyser;Channeltrons;Channel Plates;Secondary Electron Detector;Camera;Stage;Selected Area Motor;Motorised Iris;Carousel;
//VME Kratos Slow-Scan Generator MK2;NICPU Delay Line Detector;NICPU Analyser HT Unit;NICPU Magnet and Charge Neutraliser Unit;NICPU Motor Control;NICPU X-ray PSU;NICPU Deflection Unit;NICPU Ion Gun PSU;NICPU Processor;NICPU VM-1 Vacuum Controller;NOVA Chamber;NICPU Manual UV Lamp;Electron-gun Kratos FEG;VME Synchronous Serial Interface;Sample Current Imaging;NICPU Stage Manual Control Unit"
static strconstant f_vme_baud_rate_names 						= "4800;9600;19200;38400"
static strconstant f_host_serial_port_names					= "COM1;COM2"
static strconstant f_vme_ethernet_hostname_names				= "sa_inst_0;sa_inst_1;sa_inst_2;sa_inst_3;sa_inst_4;sa_inst_5;sa_inst_6;sa_inst_7;os9"
static strconstant f_config_option_state_names					= "Disabled;Enabled"
static strconstant f_host_slave_config_names					= "Serial Port;Ethernet;Snapper8 Framestore;Passwords;User Logins;Parallel Port;Imagenation Framestore"
static strconstant f_k4_vacuum_config_names					= "Auxiliary Chamber Fitted;Turbo Isolate Value (V1) Fitted;Sample Magazine Fitted;Ion Gauge Fitted To STC;Manipulator Fitted;MHSA Entrance Aperture Motor"
static strconstant f_lens_psu_polarity_names					= "Positive;Negative;Switchable"
static strconstant f_lens_psu_range_limit_names				= "5 kV;6 kV;?;?;3 kV;10 kV"
static strconstant f_lens_double_psu_options_names			= "PSU 1;PSU 2;PSU 3;PSU 4"
static strconstant f_lens_single_psu_options_names				= "PSU 1;PSU 2;PSU 3;PSU 4;PSU 5;PSU 6;PSU 7;PSU 8"
static strconstant f_lens_options_names							= "Magnetic;V 1;V 2a;V 2b;V 3;V 4;V 5;V 6;V 7;V 8;V 9;V 2"
static strconstant f_channeltron_psu_options_names			= "3-Channel (3);2x3-Channel (6);3x3-Channel (9);3-Channel + 5-channel (8);5-channel (5)"
static strconstant f_configuration_section_names				= "Host/Slave Configuration;Instrument Configuration;Operating Configuration"
static strconstant f_esca_xray_anode_option_names				= "Single (Mg);Dual (Mg/Al);Single (Al);Dual and Mono"
static strconstant f_esca_manipulator_option_names			= "Linear Motion Probe;10 Position Carousel;Load Lock Probe"
//static strconstant f_esca_jp_xray_emission_option_names		= "0;10;20;30;40;50"
static strconstant f_esca_jp_xray_emission						= "0;0.01;0.02;0.03;0.04;0.05"
//static strconstant f_esca_jp_xray_accelHT_option_names			= "2;4;6;8;10;12;15"
static strconstant f_esca_jp_xray_accelHT						= "2000;4000;6000;8000;10000;12000;15000"
//static strconstant f_esca_xray_emission_option_names			= "0;5;10;15;20;25;30"
static strconstant f_esca_xray_emission							= "0;0.005;0.01;0.015;0.02;0.025;0.03"
//static strconstant f_esca_xray_accelHT_option_names				= "2;4;6;8;10;12"
static strconstant f_esca_xray_accelHT							= "2000;4000;6000;8000;10000;12000"
static strconstant f_esca_xray_anode_type_names				= "Mg;Al;Mono"
static strconstant f_off_on_switch_names						= "Off;On;Going To Off;Going To On"
//static strconstant f_esca_ion_gun_accelHT_option_names			= "0.5;1.0;1.5;2.0"
static strconstant f_esca_ion_gun_accelHT						= "0.5;1.0;1.5;2.0"
//static strconstant f_esca_ion_gun_emission_option_names		= "10;20;30"
static strconstant f_esca_ion_gun_emission						= "10;20;30"
static strconstant f_esca_calibrate_option_names				= "Never;On Initialisation;Before Experiment;Before Scan"
static strconstant f_esca_resolution_options_names				= "Manual;Two Options;ESCA K1 PEs"
static strconstant f_esca_resolution_names						= "Low;High;Error;Error"
static strconstant f_analyser_option_names						= "?;Mirror HSA;DuPont (ESCA 3X00)"
static strconstant f_neutraliser_state_names					= "Switch Off;Switch On;On For Acquisition;Under Manual Control"
//static strconstant f_detector_timer_counter_config_names		= "3 Detector HSA;5 Detector HSA;8 Detector HSA;8 Detector HSA/MHSA;1 Detector Analyser"
static strconstant f_hardware_control_names					= "Turn Off;Turn On;On For Acquisition;Manual Settings"
static strconstant f_energy_reference_names					= "Mg;Al;K.E.;Ag;He I;He II;Zr;Ti;Al (Mono)"
static strconstant f_energy_reference_values					= "1253.60;1486.61;0;2984.20;21.21;40.80;2042.40;4510;1486.69"
static strconstant f_anode_names 								= "Magnesium;Aluminium;None"
static strconstant f_stage_axes_names 							= "X Axis;Y Axis;Z Axis;Rotation X;Rotation Y;Rotation Z;Gripper;Elevator"
static strconstant f_aperture_sizes_names 						= "3x12 mm;10 mm;2 mm;1 mm;400 �m;150 �m"
static strconstant f_iris_positions_names 						= "3x12 mm;2 mm;1 mm;400 �m;150 �m;10 mm;10 mm;10 mm;Sp. Shield;3x12 mm"
static strconstant xps_energy_scale_names 						= "B. E.;K. E."
static strconstant f_egun_filament_type_names 					= "Thermal LaB6 Filament;Thermal Field Emission"
static strconstant f_egun_parameter_names 						= "Accel HT;Filament;Emission;Extractor Bias;Suppressor Bias;Spot Size Lens;Focus Lens;Alignment X;Alignment Y;Stigmator X;Stigmator Y;Collector Bias;Multiplier Bias;Black Level"
static strconstant f_sed_operating_mode_names					= "Off;SE1;SE2;BS1;BS2"
//static strconstant f_xray_spellman_psu_options_names			= "Mg;Al;Mono (Al);M.F. Mono;UV I;Ag;Zr;Ti;Mono (Ag);UV II"
//static strconstant f_xray_spellman_psu_source_names			= "Source 1;Source 2;Source 3;Source 4;Source 5;Source 6"
static strconstant f_lens_sweep_options_names					= "Sweep Lens;Sweep Analyser"
static strconstant f_xsam_carousel_option_names				= "9 Position Carousel;10 Position Carousel"
static strconstant f_stage_sequence_names						= ""//
//"Load platen from Elevator top level;Unload platen to Elevator top level;Load platen from Elevator middle level;Unload platen to Elevator middle level;Load platen from Elevator bottom level;Unload platen to Elevator bottom level;Go to Platen picture position from INT ref;Go to XPS position from INT ref;Go to Microscope position from INT ref;Go to INT ref from Platen image position;
//Sample Thickness - Unused;Platen image position;XPS analysis position;Microscope position;INT Ref Position;SAC Ref Position - Unused;SAC Zone x Upper Limit - x value only ;SAC Zone x Lower Limit - x value only;SAC Zone y Upper Limit - y value only;SAC Zone y Lower Limit - y value only;SAC Zone z Upper Limit - z value only;SAC Zone z Lower Limit - z value only;
//SEC Zone x Upper Limit - x value only;SEC Zone x Lower Limit - x value only;SEC Zone y Upper Limit - y value only;SEC Zone y Lower Limit - y value only;SEC Zone z Upper Limit - z value only;SEC Zone z Lower Limit - z value only;INT Zone x Upper Limit - x value only;INT Zone x Lower Limit - x value only;INT Zone y Upper Limit - y value only;
//INT Zone y Lower Limit - y value only;INT Zone z Upper Limit - z value only;INT Zone z Lower Limit - z value only;Gripper Open;Gripper Closed;Elevator Level 1 - Read back only;Elevator Level 1 Drop - Read back only;Elevator Level 2 - Read back only;Elevator Level 2 Drop - Read back only;Elevator Level 3 - Read back only;Elevator Level 3 Drop - Read back only;
//Analysis Datum;SAC Datum;Sample load sequence;Sample unload sequence;Go to INT rest position from SAC;Go to INT rest position from SEC;Go to INT rest position from INT;Compu Centric Centre of Rotation;Sample exchange coordinate;Elevator Raised Position;Elevator Lowered Position;Nova stage condition sequence"
static strconstant f_esca_k1_resolution_names					= "PE 8;PE 16;PE 32;PE 80"
static strconstant f_esca_k1_aperture_names					= "Slot 1;Slot 2;Slot 3;Slot 4"
static strconstant f_esca_k1_resolution_values					= "8;16;32;80"
//static strconstant f_esca_k1_resolution_exact_default_values		= "7.875;15.75;31.5;78.75"
static strconstant f_esca_k1_lens_modes_names					= "Small;Macro"
//static strconstant f_nicpu_spectrometer_option_names			= "FRR;ISS;UPS;TOF"
//static strconstant f_nicpu_motor_control_option_names			= "8 Stepper Motors and 2 Linear Motors;8 Stepper Motors;10 Stepper Motors"
//static strconstant f_nicpu_magnet_unit_option_names			= "Mark I"
//static strconstant f_nicpu_xray_psu_anode_materials_names		= "Mg;Al;Mono (Al);M.F. Mono;Ag;Zr;Ti;Mono (Ag)"
//static strconstant f_nicpu_xray_psu_filaments_names			= "Mono 1;Mono 2;Mono 3;Dual 1;Dual 2"
static strconstant f_nicpu_ion_gun_type_names					= "Minibeam 1;Minibeam 2;Minibeam 3;Minibeam 4;Minibeam 5"
static strconstant f_nicpu_ion_gun_filament_names				= "Filament 1;Filament 2"
static strconstant f_nicpu_vacuum_config_names				= ""//
//"MHSA Entrance Aperture Motor;CCG/Ion Gauge Fitted To SEC/STC;Manipulator Fitted;V8 and V9 Fitted;Sputter Shield Control;SAC MAGLEV TMP Fitted;UPS Fitted;NOVA MAGLEV Differential Pump;Ultra External Sample Exchange;NOVA MAGLEV;Ultra Dual Probe Fitted;Ultra Aux Chamber Fitted with STC Ion Gun;Ultra Fast Entry Lock Fitted;Ultra Fast Entry Lock Fitted with MAGLEV TMP;
//Ultra Fast Entry Lock Fitted with TIC Cart Readback;SAC Ion Gun Fitted;NOVA Differential Pump"
static strconstant f_camera_type_names							= "Analogue (requires framestore);PixeLINK FireWire (framestoreless)"
static strconstant f_coarse_image_rotation_names				= "None;90 degrees anticlockwise;180 degrees anticlockwise;270 degrees anticlockwise"
static strconstant f_nicpu_motor_step_mode_names				= "Full Step, High Current;Full Step, Medium Current;Full Step, Low Current;Half Step, High Current;Half Step, Medium High Current;Half Step, Medium Low Current;Half Step, Low Current;Quarter Step, High Current;Quarter Step, Medium High Current;Quarter Step, Medium Low Current;Quarter Step, Low Current"
//static strconstant f_nicpu_motor_holding_current_names		= "None;Low;Medium;High"
static strconstant f_ion_gun_gas_state_names					= "Switch Off;Switch On;As Previous State;Under Manual Control"
static strconstant f_nicpu_xray_psu_version_names			= "49-240;BE5856AA"
//static strconstant f_nicpu_xray_control_unit_version_names	= "BE1319AA;BE1319AB;BE1319AC;BE1319AD"


static structure KratosDsetobject
	wave IDlist
	wave type
	wave /T name
	wave /T strvalue
	wave numvalue
	wave /T units
	wave /T flags
	wave /T nameofdatawave

	variable id
	string objectname
	string header
	string appendtodetector
	string lastID
	string IDchain
endstructure


static structure KratosDsetobjectlist
	wave object_offsets
	wave /T object_name
	wave object_nextlist
	variable maxobjects
	variable currentobject
	variable loaded
	variable startofobjectlist
endstructure


static function KratosDSET_initaddobject(Dsetobject, ID, type, name,  units, flags, nameofdatawave)
	struct KratosDsetobject &Dsetobject; variable ID; variable type; 	string name; string units; string flags; string nameofdatawave
	variable i = DimSize(Dsetobject.IDlist,  0)
	Redimension /N=(i+1) Dsetobject.IDlist, Dsetobject.type, Dsetobject.name, Dsetobject.strvalue, Dsetobject.numvalue, Dsetobject.nameofdatawave, Dsetobject.units, Dsetobject.flags
	Dsetobject.IDlist[i]=ID
	Dsetobject.type[i]=type
	Dsetobject.name[i]=name
	Dsetobject.strvalue[i]=""
	Dsetobject.numvalue[i]=NaN
	Dsetobject.units[i]= units
	Dsetobject.flags[i] = flags
	Dsetobject.nameofdatawave[i]= nameofdatawave
end


static function KratosDSET_IDtopnt(Dsetobject, ID)
	struct KratosDsetobject &Dsetobject; variable ID
	FindValue /V=(ID) Dsetobject.IDlist
	return V_value
end


static function KratosDSET_checkID(file, Dsetobject, ID)
	variable file ; struct KratosDsetobject &Dsetobject ; 	variable ID
	// get the corresponding index in the ID wave
	variable pnt = KratosDSET_IDtopnt(Dsetobject, ID)
	if(pnt!=-1)
		variable type = Dsetobject.type[pnt]
		variable i=0, tmp=0, tmp2=0
		variable num100 = (type-mod(type,100))/100 ; type -= 100*num100
		variable num10 = (type-mod(type,10))/10 ; type -= 10*num10
		variable num1 = (type-mod(type,1))/1
		Debugprintf2("Reading "+Dsetobject.name+" ...",1)
		if( num100 == 0 && num10 == 0)
			if(num1<6 && num1 != 0)
				Fbinread /B=2/F=(num1) file, tmp ; Dsetobject.numvalue[pnt] = tmp
			elseif(num1>=6)
				Dsetobject.strvalue[pnt]=KratosDSET_readstr(file) // only for num1=6, but there are until now no 7, 8, 9
			else
			// do nothing
			endif		
		else // we have to read an array
			Fbinread /U/B=2/F=(num10) file, tmp // num10 should always be 3
			Debugprintf2("Reading "+num2str(tmp)+" values.",1)
			string tmpwavename=directory+":"+Gtmpwavename+Dsetobject.nameofdatawave[pnt]+StringFromList(0, Dsetobject.IDchain  ,";")
			//string tmpwavename=directory+":"+Gtmpwavename+Dsetobject.nameofdatawave[pnt]+Dsetobject.nameofdatawave[KratosDSET_IDtopnt(Dsetobject, str2num(StringFromList(0, Dsetobject.IDchain  ,";")))]
			Make /O/R/N=(tmp) $tmpwavename /wave=tmpwave
			Fbinread /B=2/F=(num1) file, tmpwave
		endif
		// save the last ID which was read
		Dsetobject.lastID = num2str(Dsetobject.IDlist[pnt])
		// in case we should read some flags
		if(strlen(Dsetobject.flags[pnt]) !=0 )
			string tmps = StringByKey(num2str(Dsetobject.numvalue[pnt]),Dsetobject.flags[pnt], "=", ";")
			 if(strlen(tmps)!=0)
				Dsetobject.strvalue[pnt] = tmps
			else
				Fstatus file
				Debugprintf2("Error in Flags, ID: "+num2str(Dsetobject.IDlist[pnt])+" ; Flag = "+num2str(Dsetobject.numvalue[pnt]),0)
				//Debugprintf2("Unknown ID "+num2str(ID)+" at position "+num2str(V_filePOS)+". Please check with kal and add to script! (ID: "+num2str(currentobject+1)+")",0)
			endif
		endif
	else
		// no suitable ID found, will be handled in the calling routine --> check for markers or unknown ID
		return -1
	endif
	return 0
end


static function KratosDSET_resetDsetobject(Dsetobject)
	struct KratosDsetobject &Dsetobject

	NewDatafolder /O root:Packages ; NewDatafolder /O $directory
	string tmps = ""

	tmpS = directory+":IDlist" ; Make /O/D/N=(0) $tmpS ; wave Dsetobject.IDlist = $tmpS
	tmpS = directory+":type" ; Make /O/B/U/N=(0) $tmpS ; wave Dsetobject.type = $tmpS
	tmpS = directory+":name" ; Make /O/T/N=(0) $tmpS ; wave /T Dsetobject.name = $tmpS
	tmpS = directory+":strvalue" ; Make /O/T/N=(0) $tmpS ; wave /T Dsetobject.strvalue = $tmpS
	tmpS = directory+":numvalue" ; Make /O/D/N=(0) $tmpS ; wave Dsetobject.numvalue = $tmpS
	tmpS = directory+":units" ;	Make /O/T/N=(0) $tmpS ; 	wave /T Dsetobject.units = $tmpS
	tmpS = directory+":flags" ; Make /O/T/N=(0) $tmpS ; wave /T Dsetobject.flags = $tmpS
	tmpS = directory+":nameofdatawave" ; Make /O/T/N=(0) $tmpS ; wave /T Dsetobject.nameofdatawave = $tmpS

	Dsetobject.objectname = ""
	Dsetobject.lastID = ""
	Dsetobject.IDchain = ""
	Dsetobject.id = NAN

//the following populates the list of DSET objects with ID etc. 
//for commented out objects the datatype is unknown (never had them in my files until now)
//KratosDSET_initaddobject(Dsetobject,/ID/,/datatype/,/"name for note"/,/"unit"/, /"Flags to string"/,/"name of wave"/)

	KratosDSET_initaddobject(Dsetobject,1,3,"Technique","", "0=AES;1=ISS;2=SIMS;3=XPS;4=SEM;5=SNMS;6=RGA;8=UPS","")//AID_technique
	KratosDSET_initaddobject(Dsetobject,2,3,"Scan type","","0=Spectrum;1=Irregular;2=Mapping;3=Linescan;4=profile scan;5=Snapshot","")//AID_scan_type
	KratosDSET_initaddobject(Dsetobject,3,5,"Spectrum scan start","eV","","")//AID_spectrum_start
	KratosDSET_initaddobject(Dsetobject,4,5,"Spectrum scan step size","eV","","")//AID_spectrum_step_size
	KratosDSET_initaddobject(Dsetobject,5,6,"Abscissa label","","","")//FID_abscissa_label
	KratosDSET_initaddobject(Dsetobject,6,6,"Abscissa units","","","")//FID_abscissa_units
	KratosDSET_initaddobject(Dsetobject,7,5,"Dwell time","","","")//AID_dwell_time
	KratosDSET_initaddobject(Dsetobject,8,6,"Ordinate label","","","")//FID_ordinate_label
	KratosDSET_initaddobject(Dsetobject,9,6,"Ordinate units","","","")//FID_ordinate_units
//	KratosDSET_initaddobject(Dsetobject,10,0,"# ordinate values","","","")//FID_no_abscissa_values
	KratosDSET_initaddobject(Dsetobject,11,35,"Abscissa values","","","abscval")//FID_abscissa_values
	KratosDSET_initaddobject(Dsetobject,12,34,"Ordinate values","","","ordval")//FID_ordinate_values
	//KratosDSET_initaddobject(Dsetobject,13,0,"Sample name","","","")//AID_sample_name
	//KratosDSET_initaddobject(Dsetobject,14,0,"X-coordinate","","","")//FID_xcoord
	//KratosDSET_initaddobject(Dsetobject,15,0,"Y-coordinate","","","")//FID_ycoord
	//KratosDSET_initaddobject(Dsetobject,16,0,"Z-coordinate","","","")//FID_zcoord
	//KratosDSET_initaddobject(Dsetobject,17,0,"Theta-coordinate","","","")//FID_theta_coord
	//KratosDSET_initaddobject(Dsetobject,18,0,"Phi-coordinate","","","")//FID_phi_coord
	//KratosDSET_initaddobject(Dsetobject,19,0,"Cumulative etch time","","","")//FID_total_etch_time
	//KratosDSET_initaddobject(Dsetobject,20,0,"Excitation name","","","")//FID_excitation_name
	//KratosDSET_initaddobject(Dsetobject,21,0,"Excitation energy","","","")//FID_excitation_energy
	//KratosDSET_initaddobject(Dsetobject,22,0,"Excitation strength","","","")//FID_excitation_strength
	//KratosDSET_initaddobject(Dsetobject,23,0,"Primary ion mass","","","")//FID_primary_mass
	KratosDSET_initaddobject(Dsetobject,25,3,"# points per line in map","","","")//AID_coord_n_points_x
	KratosDSET_initaddobject(Dsetobject,26,3,"# lines in map","","","")//AID_coord_n_lines_y
//	KratosDSET_initaddobject(Dsetobject,27,0,"Map start x","","","")//FID_map_start_x
//	KratosDSET_initaddobject(Dsetobject,28,0,"Map start y","","","")//FID_map_start_y
//	KratosDSET_initaddobject(Dsetobject,29,0,"Map end x","","","")//FID_map_end_x
//	KratosDSET_initaddobject(Dsetobject,30,0,"Map end y","","","")//FID_map_end_y
	KratosDSET_initaddobject(Dsetobject,31,5,"Etch time","","","")//AID_etch_time
//	KratosDSET_initaddobject(Dsetobject,32,0,"Map counts","","","")//FID_map_counts
//	KratosDSET_initaddobject(Dsetobject,33,0,"Minimum intensity","","","")//FID_min_intensity
//	KratosDSET_initaddobject(Dsetobject,34,0,"Maximum intensity","","","")//FID_max_intensity
//	KratosDSET_initaddobject(Dsetobject,35,0,"X step size","","","")//FID_delta_x
//	KratosDSET_initaddobject(Dsetobject,36,0,"Y step size","","","")//FID_delta_y
	KratosDSET_initaddobject(Dsetobject,37,6,"Acquisition name","","","")//AID_region_name
	KratosDSET_initaddobject(Dsetobject,38,3,"State change type","","0=Etch;1=Position;2=Counter;9=Ion Gun Gas;10=Delay","")//FID_change_of_state
	//KratosDSET_initaddobject(Dsetobject,39,0,"Gun current","","","")//AID_gun_current
	//KratosDSET_initaddobject(Dsetobject,40,0,"Gun voltage","","","")//AID_gun_voltage
	//KratosDSET_initaddobject(Dsetobject,41,0,"Analyser mode","","","")//FID_analyser_mode
	KratosDSET_initaddobject(Dsetobject,42,5,"Pass energy","","","")//AID_pass_energy_nominal
	//KratosDSET_initaddobject(Dsetobject,43,0,"Retard ratio","","","")//AID_retard_ratio_nominal
	//KratosDSET_initaddobject(Dsetobject,44,0,"Abscissa end","","","")//FID_abscissa_end
	//KratosDSET_initaddobject(Dsetobject,45,0,"Minimum sweeps","","","")//FID_min_scans
	//KratosDSET_initaddobject(Dsetobject,46,0,"Maximum sweeps","","","")//FID_max_scans
	//KratosDSET_initaddobject(Dsetobject,47,0,"Required counts","","","")//FID_required_counts
	//KratosDSET_initaddobject(Dsetobject,48,0,"Abscissa point","","","")//FID_abscissa_point
	//KratosDSET_initaddobject(Dsetobject,49,0,"S/n ratio","","","")//FID_signal_to_noise
	//KratosDSET_initaddobject(Dsetobject,50,0,"Magnification","","","")//FID_magnification
	KratosDSET_initaddobject(Dsetobject,51,5,"Map energy/mass","","","")//AID_map_energy
	//KratosDSET_initaddobject(Dsetobject,52,0,"First background","","","")//FID_background_1
	//KratosDSET_initaddobject(Dsetobject,53,0,"Second background","","","")//FID_background_2
	//KratosDSET_initaddobject(Dsetobject,54,0,"FAT code","","","")//FID_fat_code
	//KratosDSET_initaddobject(Dsetobject,55,0,"FRR code","","","")//FID_frr_code
	//KratosDSET_initaddobject(Dsetobject,56,0,"Mag code","","","")//FID_mag_code
	//KratosDSET_initaddobject(Dsetobject,57,0,"Excitation code","","","")//FID_excitation_code
	//KratosDSET_initaddobject(Dsetobject,58,0,"Filament","","","")//AID_filament
	KratosDSET_initaddobject(Dsetobject,59,3,"Loop index","","","")//AID_current_counter
	//KratosDSET_initaddobject(Dsetobject,60,0,"Etch table","","","")//FID_etch_table
	//KratosDSET_initaddobject(Dsetobject,61,3,"Loop index limit","","","")//AID_counter_limit
	//KratosDSET_initaddobject(Dsetobject,62,0,"Map geometry","","","")//FID_map_geometry
	//KratosDSET_initaddobject(Dsetobject,63,5,"Pre-etch delay","","","")//FID_pre_etch_delay
	//KratosDSET_initaddobject(Dsetobject,64,5,"Post etch delay","","","")//FID_post_etch_delay
	//KratosDSET_initaddobject(Dsetobject,65,0,"Registration coords","","","")//FID_registration
	//KratosDSET_initaddobject(Dsetobject,66,0,"Multi-point","","","")//FID_multi_point
	//KratosDSET_initaddobject(Dsetobject,67,0,"Control","","","")//FID_control
	//KratosDSET_initaddobject(Dsetobject,68,0,"Detector mask","","","")//FID_detector_mask
	//KratosDSET_initaddobject(Dsetobject,69,0,"Multi-point coords","","","")//FID_multi_point_coords
	//KratosDSET_initaddobject(Dsetobject,70,0,"Analyser x-coord","","","")//FID_analyser_x
	//KratosDSET_initaddobject(Dsetobject,71,0,"Analyser y-coord","","","")//FID_analyser_y
	//KratosDSET_initaddobject(Dsetobject,72,0,"Processing history","","","")//FID_history
	//KratosDSET_initaddobject(Dsetobject,73,0,"Loop start","","","")//FID_loop_start
	//KratosDSET_initaddobject(Dsetobject,74,0,"Loop end","","","")//FID_loop_end
	//KratosDSET_initaddobject(Dsetobject,75,0,"Quantitation regions","","","")//FID_regions
	//KratosDSET_initaddobject(Dsetobject,76,0,"Components","","","")//FID_components
	//KratosDSET_initaddobject(Dsetobject,77,0,"Map energies","","","")//FID_map_energy_array
	//KratosDSET_initaddobject(Dsetobject,78,0,"Related objects","","","")//FID_related_objects
	//KratosDSET_initaddobject(Dsetobject,79,0,"Annotation","","","")//FID_annotation
	//KratosDSET_initaddobject(Dsetobject,80,0,"Abscissa shift","","","")//FID_abscissa_shift
	//KratosDSET_initaddobject(Dsetobject,81,0,"Carousel Increments","","","")//FID_carousel_increments
	//KratosDSET_initaddobject(Dsetobject,82,0,"Electron Gun Mag.","","","")//FID_eg_magnification
	//KratosDSET_initaddobject(Dsetobject,83,0,"Electon gun zoom","","","")//FID_eg_zoom
	//KratosDSET_initaddobject(Dsetobject,84,0,"Full scale deflection","","","")//FID_full_deflection
	//KratosDSET_initaddobject(Dsetobject,85,0,"Manipulator positions","","","")//FID_position_table
	//KratosDSET_initaddobject(Dsetobject,86,0,"Position Type","","","")//FID_position_type
	//KratosDSET_initaddobject(Dsetobject,87,0,"Eucentric Correction","","","")//FID_eucentric_correction
	//KratosDSET_initaddobject(Dsetobject,88,0,"Background objects","","","")//FID_background_objects
	//KratosDSET_initaddobject(Dsetobject,89,0,"Colour array","","","")//FID_colour_array
	//KratosDSET_initaddobject(Dsetobject,90,0,"Map start X","","","")//FID_map_x0
	//KratosDSET_initaddobject(Dsetobject,91,0,"Map end X","","","")//FID_map_x1
	//KratosDSET_initaddobject(Dsetobject,92,0,"Map start Y","","","")//FID_map_y0
	//KratosDSET_initaddobject(Dsetobject,93,0,"Map end Y","","","")//FID_map_y1
	//KratosDSET_initaddobject(Dsetobject,94,0,"Coordinate type","","","")//FID_coord_type
	//KratosDSET_initaddobject(Dsetobject,95,0,"Map scan angle","","","")//FID_map_scan_angle
	//KratosDSET_initaddobject(Dsetobject,96,0,"Process ID',27h,'s","","","")//FID_process_ids
	//KratosDSET_initaddobject(Dsetobject,97,0,"Position Name","","","")//FID_position_name
	//KratosDSET_initaddobject(Dsetobject,98,0,"Position Values","","","")//FID_position_values
	KratosDSET_initaddobject(Dsetobject,99,3,"# Sweeps completed","","","")//AID_n_sweeps_completed
	//KratosDSET_initaddobject(Dsetobject,100,0,"MPA X coordinate","","","")//FID_mp_x
	//KratosDSET_initaddobject(Dsetobject,101,0,"MPA Y coordinate","","","")//FID_mp_y
	//KratosDSET_initaddobject(Dsetobject,102,0,"MPA label","","","")//FID_mp_label
	//KratosDSET_initaddobject(Dsetobject,103,0,"MPA units","","","")//FID_mp_units
	//KratosDSET_initaddobject(Dsetobject,104,0,"MPA coordinate system","","","")//FID_mp_coordtype
	//KratosDSET_initaddobject(Dsetobject,105,0,"MPA parent dataset","","","")//FID_mp_dset
	//KratosDSET_initaddobject(Dsetobject,106,0,"MPA parent object","","","")//FID_mp_pid
	//KratosDSET_initaddobject(Dsetobject,107,0,"MPA position table","","","")//FID_mp_table
	//KratosDSET_initaddobject(Dsetobject,108,0,"Multipoint Information","","","")//FID_multipoint
	//KratosDSET_initaddobject(Dsetobject,109,0,"Peak name","","","")//FID_peak_name
	//KratosDSET_initaddobject(Dsetobject,110,0,"Object Aborted","","","")//FID_aborted
	//KratosDSET_initaddobject(Dsetobject,111,0,"Lower limit","","","")//FID_lower_limit
	//KratosDSET_initaddobject(Dsetobject,112,0,"Upper limit","","","")//FID_upper_limit
	//KratosDSET_initaddobject(Dsetobject,113,0,"Instrument name","","","")//AID_instrument
	//KratosDSET_initaddobject(Dsetobject,114,0,"Transmission Function","","","")//FID_transmission_func
	//KratosDSET_initaddobject(Dsetobject,115,0,"Type of Ion Gun","","","")//FID_ion_gun_type
	//KratosDSET_initaddobject(Dsetobject,116,0,"Etch Position ID","","","")//FID_etch_position_id
	//KratosDSET_initaddobject(Dsetobject,117,0,"Pallet Type","","","")//FID_pallet_type
	//KratosDSET_initaddobject(Dsetobject,118,0,"Channels per AMU","","","")//FID_channels_amu
	//KratosDSET_initaddobject(Dsetobject,119,0,"Default Sample Bias","","","")//FID_default_sample_bias
	//KratosDSET_initaddobject(Dsetobject,120,0,"Sample Bias","","","")//FID_sample_bias
	//KratosDSET_initaddobject(Dsetobject,121,0,"Polarity","","","")//FID_polarity
	//KratosDSET_initaddobject(Dsetobject,122,0,"Number Of Frames","","","")//FID_n_frames
	//KratosDSET_initaddobject(Dsetobject,123,0,"Quadrupole DC","","","")//FID_quadrupole_dc
	//KratosDSET_initaddobject(Dsetobject,124,0,"Ion Gun Name","","","")//FID_ion_gun_name
	//KratosDSET_initaddobject(Dsetobject,125,0,"Ion Type","","","")//FID_ion_type
	//KratosDSET_initaddobject(Dsetobject,126,0,"Ion Gun Magnification","","","")//FID_ion_gun_magnification
	//KratosDSET_initaddobject(Dsetobject,127,0,"Ion Gun Zoom","","","")//FID_ion_gun_zoom
	//KratosDSET_initaddobject(Dsetobject,128,0,"Ion Gun Current","","","")//FID_ion_gun_current
	//KratosDSET_initaddobject(Dsetobject,129,0,"Ion Gun Voltage","","","")//FID_ion_gun_voltage
	//KratosDSET_initaddobject(Dsetobject,130,0,"Ion Spot Name","","","")//FID_ion_spot_name
	//KratosDSET_initaddobject(Dsetobject,131,0,"Ion Spot Size","","","")//FID_ion_spot_size
	//KratosDSET_initaddobject(Dsetobject,132,0,"SIMS Neutraliser","","","")//FID_neutraliser
	//KratosDSET_initaddobject(Dsetobject,133,0,"Raster Name","","","")//FID_raster_name
	//KratosDSET_initaddobject(Dsetobject,134,0,"Raster Shift X (%)","","","")//FID_raster_shift_x
	//KratosDSET_initaddobject(Dsetobject,135,0,"Raster Shift Y (%)","","","")//FID_raster_shift_y
	//KratosDSET_initaddobject(Dsetobject,136,0,"Raster Size X (%)","","","")//FID_raster_size_x
	//KratosDSET_initaddobject(Dsetobject,137,0,"Raster Size Y (%)","","","")//FID_raster_size_y
	//KratosDSET_initaddobject(Dsetobject,138,0,"# Pixels In Raster X","","","")//FID_raster_pixels_x
	//KratosDSET_initaddobject(Dsetobject,139,0,"# Pixels In Raster Y","","","")//FID_raster_pixels_y
	//KratosDSET_initaddobject(Dsetobject,140,0,"# Pixels In Border X","","","")//FID_raster_border_x
	//KratosDSET_initaddobject(Dsetobject,141,0,"# Pixels In Border Y","","","")//FID_raster_border_y
	//KratosDSET_initaddobject(Dsetobject,142,0,"Temperatures Cycles","","","")//FID_temperature_table
	//KratosDSET_initaddobject(Dsetobject,143,0,"Temperature","","","")//FID_temperature
	//KratosDSET_initaddobject(Dsetobject,144,0,"Profile Cycles","","","")//FID_profile_cycles
	//KratosDSET_initaddobject(Dsetobject,145,0,"Charge Neut. Current","","","")//FID_charge_neut_current
	//KratosDSET_initaddobject(Dsetobject,146,0,"Charge Neut. Voltage","","","")//FID_charge_neut_voltage
	//KratosDSET_initaddobject(Dsetobject,147,0,"Quadrupole Resolution","","","")//FID_quad_resolution
	//KratosDSET_initaddobject(Dsetobject,148,0,"Ion Gun Number","","","")//FID_ion_gun_number
	//KratosDSET_initaddobject(Dsetobject,149,0,"Operator name","","","")//AID_operator_name
	KratosDSET_initaddobject(Dsetobject,151,6,"Date Acquired","","","")//AID_date_and_time
	//KratosDSET_initaddobject(Dsetobject,152,0,"Probe Gas","","","")//FID_probe_gas
	//KratosDSET_initaddobject(Dsetobject,153,0,"Probe Mass","","","")//FID_probe_mass
	//KratosDSET_initaddobject(Dsetobject,154,0,"Probe Energy","","","")//FID_probe_energy
	//KratosDSET_initaddobject(Dsetobject,155,0,"Scattering Angle","","","")//FID_scatter_angle
	//KratosDSET_initaddobject(Dsetobject,156,0,"Profile Gate Pattern","","","")//FID_gate_pattern
	//KratosDSET_initaddobject(Dsetobject,157,0,"Profiling Gate Number","","","")//FID_gate_number
	//KratosDSET_initaddobject(Dsetobject,158,0,"Next Gate Object No.","","","")//FID_next_gate_object
	//KratosDSET_initaddobject(Dsetobject,159,0,"Profile Energy/Mass","","","")//FID_profile_energy
	//KratosDSET_initaddobject(Dsetobject,160,0,"Intervention Type","","","")//FID_intervention_type
	//KratosDSET_initaddobject(Dsetobject,161,0,"Monitor Signal Ratio","","","")//FID_signal_ratio
	//KratosDSET_initaddobject(Dsetobject,162,0,"Intervention Object","","","")//FID_intervention_objects
	//KratosDSET_initaddobject(Dsetobject,163,0,"Intervention Cycle","","","")//FID_intervention_cycle
	//KratosDSET_initaddobject(Dsetobject,164,0,"Intervention Gate","","","")//FID_intervention_gate
	//KratosDSET_initaddobject(Dsetobject,165,0,"Intervention Nt. Bias","","","")//FID_intervention_nt_bias
	//KratosDSET_initaddobject(Dsetobject,166,0,"Intervention Nt. Emission","","","")//FID_intervention_nt_emission
	//KratosDSET_initaddobject(Dsetobject,167,0,"Intervention Default Bias","","","")//FID_intervention_default_bias
	//KratosDSET_initaddobject(Dsetobject,168,0,"Intervention Sample Bias","","","")//FID_intervention_sample_bias
	//KratosDSET_initaddobject(Dsetobject,169,0,"Points have been edited","","","")//FID_points_edited
	//KratosDSET_initaddobject(Dsetobject,170,0,"Processing History","","","")//FID_proc_hist
	KratosDSET_initaddobject(Dsetobject,170,3,"???","","","")
	//KratosDSET_initaddobject(Dsetobject,171,0,"Sample Magazine Table","","","")//FID_sample_magazine_table
	//KratosDSET_initaddobject(Dsetobject,172,0,"Sample Magazine Index","","","")//FID_sample_magazine_index
	//KratosDSET_initaddobject(Dsetobject,173,0,"Sample Magazine Label","","","")//FID_sample_magazine_label
	//KratosDSET_initaddobject(Dsetobject,174,0,"Start Zalar Rotation","","","")//FID_zalar_rotation_start
	//KratosDSET_initaddobject(Dsetobject,175,0,"Stop Zalar Rotation","","","")//FID_zalar_rotation_stop
	//KratosDSET_initaddobject(Dsetobject,176,0,"Etch Positions","","","")//FID_etch_positions
	//KratosDSET_initaddobject(Dsetobject,177,0,"Fork Positions For Etching","","","")//FID_etch_fork_positions
	//KratosDSET_initaddobject(Dsetobject,178,0,"X-Ray Voltage Code","","","")//FID_xray_voltage_code
	//KratosDSET_initaddobject(Dsetobject,179,0,"X-Ray Current Code","","","")//FID_xray_current_code
	//KratosDSET_initaddobject(Dsetobject,180,0,"Ion Gun Voltage Code","","","")//FID_ion_gun_voltage_code
	//KratosDSET_initaddobject(Dsetobject,181,0,"Ion Gun Current Code","","","")//FID_ion_gun_current_code
	//KratosDSET_initaddobject(Dsetobject,182,0,"Position Index","","","")//FID_position_index
	//KratosDSET_initaddobject(Dsetobject,183,0,"No Licence","","","")//FID_no_licence
	//KratosDSET_initaddobject(Dsetobject,184,0,"Transfer Lens Aperture Index","","","")//FID_analyser_aperture_index
	//KratosDSET_initaddobject(Dsetobject,185,0,"Energy Filter Aperture Index","","","")//FID_mass_analyser_aperture_index
	//KratosDSET_initaddobject(Dsetobject,186,0,"Ion Gun Aperture Index","","","")//FID_ion_gun_aperture_index
	//KratosDSET_initaddobject(Dsetobject,187,0,"Transfer Lens Aperture Name","","","")//FID_analyser_aperture_name
	//KratosDSET_initaddobject(Dsetobject,188,0,"Energy Filter Aperture Name","","","")//FID_mass_analyser_aperture_name
	//KratosDSET_initaddobject(Dsetobject,189,0,"Ion Gun Aperture Name","","","")//FID_ion_gun_aperture_name
	//KratosDSET_initaddobject(Dsetobject,190,0,"Transfer Lens Aperture Position","","","")//FID_analyser_aperture_position
	//KratosDSET_initaddobject(Dsetobject,191,0,"Energy Filter Aperture Position","","","")//FID_mass_analyser_aperture_position
	//KratosDSET_initaddobject(Dsetobject,192,0,"Ion Gun Aperture Position","","","")//FID_ion_gun_aperture_position
	//KratosDSET_initaddobject(Dsetobject,193,0,"Ion Gun Mechanism Index","","","")//FID_ion_gun_aperture_mechanism_index
	//KratosDSET_initaddobject(Dsetobject,194,0,"Profile Depth Calibration","","","")//FID_depth_calibration
	//KratosDSET_initaddobject(Dsetobject,195,0,"Layer End Cycle","","","")//FID_depth_calib_end_cycle
	//KratosDSET_initaddobject(Dsetobject,196,0,"Sputter Rate","","","")//FID_depth_calib_sputter_rate
	//KratosDSET_initaddobject(Dsetobject,197,0,"RSF","","","")//FID_depth_calib_RSF
	//KratosDSET_initaddobject(Dsetobject,198,0,"Dose","","","")//FID_conc_calib_dose
	//KratosDSET_initaddobject(Dsetobject,199,0,"Matrix Species Object Number","","","")//FID_conc_calib_matrix
	//KratosDSET_initaddobject(Dsetobject,200,0,"Known Conc. Cycles","","","")//FID_conc_calib_cycles
	//KratosDSET_initaddobject(Dsetobject,201,0,"Sum for dose start cycles","","","")//FID_conc_calib_start_cycles
	//KratosDSET_initaddobject(Dsetobject,202,0,"Sum for dose end cycles","","","")//FID_conc_calib_end_cycles
	//KratosDSET_initaddobject(Dsetobject,203,0,"Ion Gun Con-focal","","","")//FID_ion_gun_confocal
	//KratosDSET_initaddobject(Dsetobject,204,0,"Direction","","","")//FID_direction
	//KratosDSET_initaddobject(Dsetobject,205,0,"Elevation","","","")//FID_elevation
	//KratosDSET_initaddobject(Dsetobject,206,0,"Orientation","","","")//FID_orientation
	//KratosDSET_initaddobject(Dsetobject,207,0,"Actual Working Distance","","","")//FID_actual_wd
	//KratosDSET_initaddobject(Dsetobject,208,0,"Neutraliser On","","","")//FID_neutraliser_on
	//KratosDSET_initaddobject(Dsetobject,209,0,"Neutraliser Bias Voltage","","","")//FID_neutraliser_bias
	//KratosDSET_initaddobject(Dsetobject,210,0,"Neutraliser Filament Current","","","")//FID_neutraliser_current
	//KratosDSET_initaddobject(Dsetobject,211,0,"Neutraliser Balance Voltage","","","")//FID_neutraliser_balance
	//KratosDSET_initaddobject(Dsetobject,212,0,"Primary Trim Coil Current","","","")//FID_primary_trim
	//KratosDSET_initaddobject(Dsetobject,213,0,"Detector number","","","")//FID_detector_number
	//KratosDSET_initaddobject(Dsetobject,214,0,"Separation ratio","","","")//FID_separation_ratio
	//KratosDSET_initaddobject(Dsetobject,215,0,"# detectors","","","")//FID_no_of_detectors
	KratosDSET_initaddobject(Dsetobject,221,0,"Background to a spectrum","","","BG")//FID_spectrum_background; Dsetobject.addtovaluewave=DsetBG
	//KratosDSET_initaddobject(Dsetobject,222,0,"Component Max Height","","","")//FID_comp_height
	//KratosDSET_initaddobject(Dsetobject,223,0,"Component Width","","","")//FID_comp_width
	//KratosDSET_initaddobject(Dsetobject,224,0,"Component start","","","")//FID_comp_start
	//KratosDSET_initaddobject(Dsetobject,225,0,"Component constraint on Max Height","","","")//FID_constr_lower_height
	//KratosDSET_initaddobject(Dsetobject,226,0,"Component constraint on Max Height","","","")//FID_constr_upper_height
	//KratosDSET_initaddobject(Dsetobject,227,0,"Component constraint on start","","","")//FID_constr_lower_start
	//KratosDSET_initaddobject(Dsetobject,228,0,"Component constraint on start","","","")//FID_constr_upper_start
	//KratosDSET_initaddobject(Dsetobject,229,0,"Component constraint on width","","","")//FID_constr_lower_width
	//KratosDSET_initaddobject(Dsetobject,230,0,"Component constraint on width","","","")//FID_constr_upper_width
	//KratosDSET_initaddobject(Dsetobject,231,0,"Line shape model","","","")//FID_comp_model
	//KratosDSET_initaddobject(Dsetobject,232,0,"Component list","","","")//FID_component_list
	//KratosDSET_initaddobject(Dsetobject,233,0,"Synthetic spectrum","","","")//FID_envelope
	//KratosDSET_initaddobject(Dsetobject,234,0,"Component half width in units of width","","","")//FID_comp_half_width
	//KratosDSET_initaddobject(Dsetobject,235,0,"Component group index","","","")//FID_comp_group_index
	//KratosDSET_initaddobject(Dsetobject,236,0,"Component Group","","","")//FID_component_group
	//KratosDSET_initaddobject(Dsetobject,237,0,"Component Group parameter flags","","","")//FID_group_param_flags
	KratosDSET_initaddobject(Dsetobject,238,33,"Dataset Browser Filter","","","DSF")//FID_dataset_filter
	//KratosDSET_initaddobject(Dsetobject,239,0,"Name of the Synthetic Component","","","")//FID_comp_name
	//KratosDSET_initaddobject(Dsetobject,240,0,"Name of the Group of Components","","","")//FID_comp_group_name
	KratosDSET_initaddobject(Dsetobject,241,5,"Sensitivity Factor","","","")//FID_sensitivity_factor
	KratosDSET_initaddobject(Dsetobject,242,5,"Atomic Mass for quantification","","","")//FID_atomic_mass
	KratosDSET_initaddobject(Dsetobject,243,35,"Quantification start coordinates","","","RegStart")//FID_region_start
	KratosDSET_initaddobject(Dsetobject,244,35,"Quantification end coordinates","","","RegEnd")//FID_region_end
	//KratosDSET_initaddobject(Dsetobject,245,0,"Name of the Model line shape","","","")//FID_comp_model_name
	//KratosDSET_initaddobject(Dsetobject,246,0,"Library Object Envelope","","","")//FID_library_envelope
	KratosDSET_initaddobject(Dsetobject,247,0,"Library General Information","","","")//FID_library_info
	KratosDSET_initaddobject(Dsetobject,248,6,"Name of Element","","","")//FID_element_name
	KratosDSET_initaddobject(Dsetobject,249,6,"Symbol for Element","","","")//FID_element_symbol
	KratosDSET_initaddobject(Dsetobject,250,3,"Atomic Number","","","")//FID_atomic_number
	KratosDSET_initaddobject(Dsetobject,251,5,"Peak Position","","","")//FID_peak_position
	KratosDSET_initaddobject(Dsetobject,252,5,"Percentage Isotope Abundance","","","")//FID_abundance
	KratosDSET_initaddobject(Dsetobject,253,3,"Library Element Filter","","","")//FID_element_filter
	//KratosDSET_initaddobject(Dsetobject,254,0,"Profile Raw Data","","","")//FID_profile_raw_data
	//KratosDSET_initaddobject(Dsetobject,255,0,"Profile Intensity Adjusted Data","","","")//FID_profile_adjusted_data
	//KratosDSET_initaddobject(Dsetobject,256,0,"Profile Calculated Peak Position","","","")//FID_profile_position
	//KratosDSET_initaddobject(Dsetobject,257,0,"Profile Calculated full width half Max","","","")//FID_profile_fwhm
	//KratosDSET_initaddobject(Dsetobject,258,0,"Profile component sensitivity factor","","","")//FID_profile_sensitivity
	//KratosDSET_initaddobject(Dsetobject,259,0,"Profile component atomic mass","","","")//FID_profile_atomic_mass
	//KratosDSET_initaddobject(Dsetobject,260,0,"Format of spectrum profile","","","")//FID_profile_nature
	//KratosDSET_initaddobject(Dsetobject,261,0,"Profile spectrum By .. ","","","")//FID_profile_data_type
	//KratosDSET_initaddobject(Dsetobject,262,0,"Profile spectrum Using .. ","","","")//FID_profile_source
	//KratosDSET_initaddobject(Dsetobject,263,0,"Profile spectrum variable","","","")//FID_profile_state_change_type
	//KratosDSET_initaddobject(Dsetobject,264,0,"Electron Gun Filament Current","","","")//FID_egun_filament
	//KratosDSET_initaddobject(Dsetobject,265,0,"Electron Gun Emission Current","","","")//FID_egun_emission
	//KratosDSET_initaddobject(Dsetobject,266,0,"Electron Gun Spot Size","","","")//FID_egun_spotsize
	//KratosDSET_initaddobject(Dsetobject,267,0,"Electron Gun Focus","","","")//FID_egun_focus
	KratosDSET_initaddobject(Dsetobject,268,3,"Quantification Region List","","","")//FID_region_list
	KratosDSET_initaddobject(Dsetobject,269,5,"Quantification Raw Area","","","")//FID_region_area
	KratosDSET_initaddobject(Dsetobject,270,5,"Quantification Peak Position","","","")//FID_region_peak_position
	KratosDSET_initaddobject(Dsetobject,271,5,"Quantification Peak Half Width","","","")//FID_region_peak_half_width
	KratosDSET_initaddobject(Dsetobject,272,5,"Quantification Peak Maximum","","","")//FID_region_peak_height
	//KratosDSET_initaddobject(Dsetobject,273,0,"Energy Offset (KE) for a group from a component","","","")//FID_reference_component_offset
	//KratosDSET_initaddobject(Dsetobject,274,0,"Reference Component Index ","","","")//FID_reference_component_index
	//KratosDSET_initaddobject(Dsetobject,275,0,"Reference Group Index ","","","")//FID_reference_group_index
	//KratosDSET_initaddobject(Dsetobject,276,0,"Measurement Interval","","","")//FID_log_interval
	//KratosDSET_initaddobject(Dsetobject,277,0,"X-Ray Active State","","","")//FID_log_xray_state
	//KratosDSET_initaddobject(Dsetobject,278,0,"X-Ray Emission Current","","","")//FID_log_xray_em_curr
	//KratosDSET_initaddobject(Dsetobject,279,0,"X-Ray Anode Name","","","")//FID_log_xray_anode_name
	//KratosDSET_initaddobject(Dsetobject,280,0,"X-Ray HT Voltage","","","")//FID_log_xray_ht_volt
	//KratosDSET_initaddobject(Dsetobject,281,0,"X-Ray Filament Current","","","")//FID_log_xray_fil_curr
	//KratosDSET_initaddobject(Dsetobject,282,0,"Channel-Plate Active State","","","")//FID_log_cplate_state
	//KratosDSET_initaddobject(Dsetobject,283,0,"Channel-Plate Voltage","","","")//FID_log_cplate_volt
	//KratosDSET_initaddobject(Dsetobject,284,0,"Max Channel-Plate Voltage","","","")//FID_log_cplate_max_volt
	//KratosDSET_initaddobject(Dsetobject,285,0,"Channeltrons Active State","","","")//FID_log_ctrons_state
	//KratosDSET_initaddobject(Dsetobject,286,0,"Channeltron Voltages","","","")//FID_log_ctrons_volts
	//KratosDSET_initaddobject(Dsetobject,287,0,"Max Channeltron Voltages","","","")//FID_log_ctrons_max_volts
	//KratosDSET_initaddobject(Dsetobject,288,0,"Electron Gun Active State","","","")//FID_log_egun_state
	//KratosDSET_initaddobject(Dsetobject,289,0,"Electron Gun HT Voltage","","","")//FID_log_egun_ht_volt
	//KratosDSET_initaddobject(Dsetobject,290,0,"E-Gun Emission Current","","","")//FID_log_egun_em_curr
	//KratosDSET_initaddobject(Dsetobject,291,0,"E-Gun Filament Current","","","")//FID_log_egun_fil_curr
	//KratosDSET_initaddobject(Dsetobject,292,0,"Ion Gun Active State","","","")//FID_log_igun_state
	//KratosDSET_initaddobject(Dsetobject,293,0,"Ion Gun HT Voltage","","","")//FID_log_igun_ht_volt
	//KratosDSET_initaddobject(Dsetobject,294,0,"Ion Gun Emission Current","","","")//FID_log_igun_em_curr
	//KratosDSET_initaddobject(Dsetobject,295,0,"Service Comment","","","")//FID_log_service_comment
	//KratosDSET_initaddobject(Dsetobject,296,0,"Neutraliser Active State","","","")//FID_log_neut_state
	//KratosDSET_initaddobject(Dsetobject,297,0,"Neutraliser Filament Current","","","")//FID_log_neut_fil_curr
	//KratosDSET_initaddobject(Dsetobject,298,0,"Max Neutraliser Filament Current","","","")//FID_log_neut_max_fil_curr
	//KratosDSET_initaddobject(Dsetobject,299,0,"Accumulated Channeltron Counts","","","")//FID_log_ctrons_counts
	//KratosDSET_initaddobject(Dsetobject,300,0,"Accumulated Counts From ESCA Detector","","","")//FID_log_esca_detector_counts
	//KratosDSET_initaddobject(Dsetobject,301,0,"Current User","","","")//FID_log_user_name
	//KratosDSET_initaddobject(Dsetobject,302,0,"hsa_available","","","")//IID_hsa_available
	//KratosDSET_initaddobject(Dsetobject,303,0,"fat_available","","","")//IID_fat_available
	//KratosDSET_initaddobject(Dsetobject,304,0,"fat_values","","","")//IID_fat_values
	//KratosDSET_initaddobject(Dsetobject,305,0,"frr_available","","","")//IID_frr_available
	//KratosDSET_initaddobject(Dsetobject,306,0,"frr_values","","","")//IID_frr_values
	//KratosDSET_initaddobject(Dsetobject,307,0,"electron_gun_available","","","")//IID_electron_gun_available
	//KratosDSET_initaddobject(Dsetobject,308,0,"can_set_eg_voltage","","","")//IID_can_set_eg_voltage
	//KratosDSET_initaddobject(Dsetobject,309,0,"max_eg_voltage","","","")//IID_max_eg_voltage
	//KratosDSET_initaddobject(Dsetobject,310,0,"can_set_eg_current","","","")//IID_can_set_eg_current
	//KratosDSET_initaddobject(Dsetobject,311,0,"max_eg_current","","","")//IID_max_eg_current
	//KratosDSET_initaddobject(Dsetobject,312,0,"x_rays_available","","","")//IID_x_rays_available
	//KratosDSET_initaddobject(Dsetobject,313,0,"x_ray_source","","","")//IID_x_ray_sources
	//KratosDSET_initaddobject(Dsetobject,314,0,"photon_energies","","","")//IID_photon_energies
	//KratosDSET_initaddobject(Dsetobject,315,0,"can_set_x_ray_current","","","")//IID_can_set_x_ray_current
	//KratosDSET_initaddobject(Dsetobject,316,0,"max_x_ray_current","","","")//IID_max_x_ray_current
	//KratosDSET_initaddobject(Dsetobject,317,0,"can_set_x_ray_voltage","","","")//IID_can_set_x_ray_voltage
	//KratosDSET_initaddobject(Dsetobject,318,0,"max_x_ray_voltage","","","")//IID_max_x_ray_voltage
	//KratosDSET_initaddobject(Dsetobject,319,0,"hsa_magnifications","","","")//IID_hsa_magnifications
	//KratosDSET_initaddobject(Dsetobject,320,0,"control_hosts","","","")//IID_control_hosts
	//KratosDSET_initaddobject(Dsetobject,321,0,"users_can_edit","","","")//IID_users_can_edit
	//KratosDSET_initaddobject(Dsetobject,322,0,"comms_type","","","")//IID_comms_type
	//KratosDSET_initaddobject(Dsetobject,323,0,"no_of_elements","","","")//IID_no_of_elements
	//KratosDSET_initaddobject(Dsetobject,324,0,"no_of_detectors","","","")//IID_no_of_detectors
	//KratosDSET_initaddobject(Dsetobject,325,0,"seperation_ratio","","","")//IID_seperation_ratio
	//KratosDSET_initaddobject(Dsetobject,326,0,"work_function","","","")//IID_work_function
	//KratosDSET_initaddobject(Dsetobject,327,0,"HT_units","","","")//IID_HT_units
	//KratosDSET_initaddobject(Dsetobject,328,0,"element_names","","","")//IID_element_names
	//KratosDSET_initaddobject(Dsetobject,329,0,"element_polarities","","","")//IID_element_polarities
	//KratosDSET_initaddobject(Dsetobject,330,0,"pe_offsets","","","")//IID_pe_offsets
	//KratosDSET_initaddobject(Dsetobject,331,0,"rr_gains","","","")//IID_rr_gains
	//KratosDSET_initaddobject(Dsetobject,332,0,"detector_dead_time","","","")//IID_detector_dead_time
	//KratosDSET_initaddobject(Dsetobject,333,0,"channeltron_settle_time","","","")//IID_channeltron_settle_time
	//KratosDSET_initaddobject(Dsetobject,334,0,"inter_region_delay","","","")//IID_inter_region_delay
	//KratosDSET_initaddobject(Dsetobject,335,0,"anode_change_time","","","")//IID_anode_change_time
	//KratosDSET_initaddobject(Dsetobject,336,0,"channel_settle_time","","","")//IID_channel_settle_time
	//KratosDSET_initaddobject(Dsetobject,337,0,"excitation_code","","","")//IID_excitation_code
	//KratosDSET_initaddobject(Dsetobject,338,0,"vme_host","","","")//IID_vme_host
	//KratosDSET_initaddobject(Dsetobject,339,0,"base_port","","","")//IID_base_port
	//KratosDSET_initaddobject(Dsetobject,340,0,"upper_filament","","","")//IID_upper_filament
	//KratosDSET_initaddobject(Dsetobject,341,0,"lower_filament","","","")//IID_lower_filament
	//KratosDSET_initaddobject(Dsetobject,342,0,"anode_option","","","")//IID_anode_option
	//KratosDSET_initaddobject(Dsetobject,343,0,"max_lens_voltage","","","")//IID_max_lens_voltage
	//KratosDSET_initaddobject(Dsetobject,344,0,"STC chamber","","","")//IID_stc_chamber
	//KratosDSET_initaddobject(Dsetobject,345,0,"SAC chamber","","","")//IID_sac_chamber
	//KratosDSET_initaddobject(Dsetobject,346,0,"25 eV step","","","")//IID_25ev_step
	//KratosDSET_initaddobject(Dsetobject,347,0,"scan type mask","","","")//IID_scan_type_mask
	//KratosDSET_initaddobject(Dsetobject,348,0,"technique mask","","","")//IID_technique_mask
	//KratosDSET_initaddobject(Dsetobject,349,0,"control type mask","","","")//IID_control_type_mask
	//KratosDSET_initaddobject(Dsetobject,350,0,"AES full scale defl.","","","")//IID_aes_fsd
	//KratosDSET_initaddobject(Dsetobject,351,0,"XPS full scale defl.","","","")//IID_xps_fsd
	//KratosDSET_initaddobject(Dsetobject,352,0,"can set EG mag.","","","")//IID_can_set_eg_mag
	//KratosDSET_initaddobject(Dsetobject,353,0,"can set EG zoom","","","")//IID_can_set_eg_zoom
	//KratosDSET_initaddobject(Dsetobject,354,0,"XPS mapping available","","","")//IID_xps_mapping_available
	//KratosDSET_initaddobject(Dsetobject,355,0,"E.G. lower zoom","","","")//IID_lower_zoom
	//KratosDSET_initaddobject(Dsetobject,356,0,"E.G. upper zoom","","","")//IID_upper_zoom
	//KratosDSET_initaddobject(Dsetobject,357,0,"E.G. magnifications","","","")//IID_eg_magnifications
	//KratosDSET_initaddobject(Dsetobject,358,0,"XPS/AES rack","","","")//IID_xps_rack
	//KratosDSET_initaddobject(Dsetobject,359,0,"SIMS rack","","","")//IID_sims_rack
	//KratosDSET_initaddobject(Dsetobject,360,0,"Manipulator available","","","")//IID_manipulator_available
	//KratosDSET_initaddobject(Dsetobject,361,0,"Manipulator Axes","","","")//IID_axes
	//KratosDSET_initaddobject(Dsetobject,362,0,"Manipulator type","","","")//IID_manipulator_type
	//KratosDSET_initaddobject(Dsetobject,363,0,"Manipulator number","","","")//IID_manipulator_number
	//KratosDSET_initaddobject(Dsetobject,364,0,"Nominal E.G. voltage","","","")//IID_nominal_eg_voltage
	//KratosDSET_initaddobject(Dsetobject,365,0,"Nominal E.G. distance","","","")//IID_nominal_eg_distance
	//KratosDSET_initaddobject(Dsetobject,366,0,"E.G. Elevation","","","")//IID_eg_elevation
	//KratosDSET_initaddobject(Dsetobject,367,0,"E.G. Direction","","","")//IID_eg_direction
	//KratosDSET_initaddobject(Dsetobject,368,0,"E.G. Orientation","","","")//IID_eg_orientation
	//KratosDSET_initaddobject(Dsetobject,369,0,"Actual working distance","","","")//IID_actual_eg_distance
	//KratosDSET_initaddobject(Dsetobject,370,0,"XPS magnifications","","","")//IID_xps_magnifications
	//KratosDSET_initaddobject(Dsetobject,371,0,"Analyser Elevation","","","")//IID_lens_elevation
	//KratosDSET_initaddobject(Dsetobject,372,0,"Analyser Direction","","","")//IID_lens_direction
	//KratosDSET_initaddobject(Dsetobject,373,0,"Analyser Orientation","","","")//IID_lens_orientation
	//KratosDSET_initaddobject(Dsetobject,374,0,"E.G. Aspect Ratio","","","")//IID_eg_aspect_ratio
	//KratosDSET_initaddobject(Dsetobject,375,0,"Analyser Aspect Ratio","","","")//IID_lens_aspect_ratio
	//KratosDSET_initaddobject(Dsetobject,376,0,"E.G. Voltage Compensation","","","")//IID_eg_voltage_compensation
	//KratosDSET_initaddobject(Dsetobject,377,0,"Lens Voltage Compensation","","","")//IID_lens_voltage_compensation
	//KratosDSET_initaddobject(Dsetobject,378,0,"Delay for EG position","","","")//IID_eg_position_delay
	//KratosDSET_initaddobject(Dsetobject,379,0,"Delay for Lens position","","","")//IID_lens_position_delay
	//KratosDSET_initaddobject(Dsetobject,380,0,"Analyser slew rate","","","")//IID_decrease_analyser_slew
	//KratosDSET_initaddobject(Dsetobject,381,0,"Analyser settle time","","","")//IID_analyser_settle_time
	//KratosDSET_initaddobject(Dsetobject,382,0,"Connected Host","","","")//IID_connected_host
	//KratosDSET_initaddobject(Dsetobject,383,0,"Axis Type","","","")//IID_axis_type
	//KratosDSET_initaddobject(Dsetobject,384,0,"Axis Step Size","","","")//IID_axis_step
	//KratosDSET_initaddobject(Dsetobject,385,0,"Axis Minimum Speed","","","")//IID_axis_min_speed
	//KratosDSET_initaddobject(Dsetobject,386,0,"Axis Maximum Speed","","","")//IID_axis_max_speed
	//KratosDSET_initaddobject(Dsetobject,387,0,"Axis Creep Speed","","","")//IID_axis_creep_speed
	//KratosDSET_initaddobject(Dsetobject,388,0,"Axis Acceleration","","","")//IID_axis_acceleration
	//KratosDSET_initaddobject(Dsetobject,389,0,"Axis Direction","","","")//IID_axis_direction
	//KratosDSET_initaddobject(Dsetobject,390,0,"Axis Speed Type","","","")//IID_axis_speed_type
	//KratosDSET_initaddobject(Dsetobject,391,0,"Axis Minimum Range","","","")//IID_axis_min_range
	//KratosDSET_initaddobject(Dsetobject,392,0,"Axis Maximum Range","","","")//IID_axis_max_range
	//KratosDSET_initaddobject(Dsetobject,393,0,"Axis Offset","","","")//IID_axis_offset
	//KratosDSET_initaddobject(Dsetobject,394,0,"Axis Move Sequence","","","")//IID_axis_move_sequence
	//KratosDSET_initaddobject(Dsetobject,395,0,"Axis Unit Number","","","")//IID_axis_unit_number
	//KratosDSET_initaddobject(Dsetobject,396,0,"Axis Fixed Position","","","")//IID_axis_fixed_position
	//KratosDSET_initaddobject(Dsetobject,397,0,"Manipulator Code","","","")//IID_manipulator_code
	//KratosDSET_initaddobject(Dsetobject,398,0,"Axis Creep Distance","","","")//IID_axis_creep_distance
	//KratosDSET_initaddobject(Dsetobject,399,0,"Axis Docking Position","","","")//IID_axis_docking_position
	//KratosDSET_initaddobject(Dsetobject,400,0,"Axis micrometer offset","","","")//IID_axis_micrometer_offset
	//KratosDSET_initaddobject(Dsetobject,401,0,"C',27h,'tron power supply unit","","","")//IID_Ctron_ps_unit
	//KratosDSET_initaddobject(Dsetobject,402,0,"Channeltron settings","","","")//IID_Ctron_settings
	//KratosDSET_initaddobject(Dsetobject,403,0,"Axis HS Instrument","","","")//IID_axis_hs
	//KratosDSET_initaddobject(Dsetobject,404,0,"Axis HS Orientations","","","")//IID_axis_hs_orientation
	//KratosDSET_initaddobject(Dsetobject,405,0,"Axis HS F.S.D.s","","","")//IID_axis_hs_fsd
	//KratosDSET_initaddobject(Dsetobject,406,0,"Pallet Type","","","")//IID_pallet_type
	//KratosDSET_initaddobject(Dsetobject,407,0,"Switch Backup","","","")//IID_axis_backoff
	//KratosDSET_initaddobject(Dsetobject,408,0,"Ion guns fitted","","","")//IID_ion_guns
	//KratosDSET_initaddobject(Dsetobject,409,0,"Ion Gun Type","","","")//IID_ion_gun_type
	//KratosDSET_initaddobject(Dsetobject,410,0,"Exchange Position (Locked)","","","")//IID_ex_position_locked
	//KratosDSET_initaddobject(Dsetobject,411,0,"Exchange Position (Unlocked)","","","")//IID_ex_position_unlocked
	//KratosDSET_initaddobject(Dsetobject,412,0,"Etch Position 1","","","")//IID_etch_position_1
	//KratosDSET_initaddobject(Dsetobject,413,0,"Etch Position 2","","","")//IID_etch_position_2
	//KratosDSET_initaddobject(Dsetobject,414,0,"Etch Position 3","","","")//IID_etch_position_3
	//KratosDSET_initaddobject(Dsetobject,415,0,"Etch Position 4","","","")//IID_etch_position_4
	//KratosDSET_initaddobject(Dsetobject,416,0,"Gate Valve Timeout","","","")//IID_gate_valve_timeout
	//KratosDSET_initaddobject(Dsetobject,417,0,"Fork Timeout","","","")//IID_fork_timeout
	//KratosDSET_initaddobject(Dsetobject,418,0,"Ion Types","","","")//IID_ion_gun_ion_type
	//KratosDSET_initaddobject(Dsetobject,419,0,"Can Set Ion Gun Volts","","","")//IID_ion_gun_can_set_voltage
	//KratosDSET_initaddobject(Dsetobject,420,0,"Ion Gun Max. Voltage","","","")//IID_ion_gun_max_voltage
	//KratosDSET_initaddobject(Dsetobject,421,0,"Can Set Ion Gun Amps","","","")//IID_ion_gun_can_set_current
	//KratosDSET_initaddobject(Dsetobject,422,0,"Ion Gun Max. Current","","","")//IID_ion_gun_max_current
	//KratosDSET_initaddobject(Dsetobject,423,0,"Can Set Ion Gun Mag","","","")//IID_ion_gun_can_set_magnification
	//KratosDSET_initaddobject(Dsetobject,424,0,"Can Set Ion Gun Zoom","","","")//IID_ion_gun_can_set_zoom
	//KratosDSET_initaddobject(Dsetobject,425,0,"Ion Gun Lower Zoom","","","")//IID_ion_gun_lower_zoom
	//KratosDSET_initaddobject(Dsetobject,426,0,"Ion Gun Upper Zoom","","","")//IID_ion_gun_upper_zoom
	//KratosDSET_initaddobject(Dsetobject,427,0,"Ion Gun Working Distance","","","")//IID_ion_gun_working_distance
	//KratosDSET_initaddobject(Dsetobject,428,0,"Ion Gun Elevation","","","")//IID_ion_gun_elevation
	//KratosDSET_initaddobject(Dsetobject,429,0,"Ion Gun Direction","","","")//IID_ion_gun_direction
	//KratosDSET_initaddobject(Dsetobject,430,0,"Ion Gun Orientation","","","")//IID_ion_gun_orientation
	//KratosDSET_initaddobject(Dsetobject,431,0,"Ion Gun Aspect Ratio","","","")//IID_ion_gun_aspect_ratio
	//KratosDSET_initaddobject(Dsetobject,432,0,"Ion Gun Nominal Voltage","","","")//IID_ion_gun_nominal_voltage
	//KratosDSET_initaddobject(Dsetobject,433,0,"Ion Gun Nominal Working Distance","","","")//IID_ion_gun_nominal_working_distance
	//KratosDSET_initaddobject(Dsetobject,434,0,"Ion Gun Spot Size Table","","","")//IID_ion_gun_spot_sizes
	//KratosDSET_initaddobject(Dsetobject,435,0,"Ion Spot Name","","","")//IID_ion_spot_name
	//KratosDSET_initaddobject(Dsetobject,436,0,"Ion Spot Size","","","")//IID_ion_spot_size
	//KratosDSET_initaddobject(Dsetobject,437,0,"Ion Gun Seting 1","","","")//IID_ion_setting_1
	//KratosDSET_initaddobject(Dsetobject,438,0,"Ion Gun Seting 2","","","")//IID_ion_setting_2
	//KratosDSET_initaddobject(Dsetobject,439,0,"Ion Gun Seting 3","","","")//IID_ion_setting_3
	//KratosDSET_initaddobject(Dsetobject,440,0,"Mass Analyser Type","","","")//IID_mass_analyser_type
	//KratosDSET_initaddobject(Dsetobject,441,0,"Maximum Mass (AMU)","","","")//IID_sims_maximum_mass
	//KratosDSET_initaddobject(Dsetobject,442,0,"Standby Mass (AMU)","","","")//IID_sims_standby_mass
	//KratosDSET_initaddobject(Dsetobject,443,0,"Mass Analyser Settle Time","","","")//IID_sims_mass_settle_time
	//KratosDSET_initaddobject(Dsetobject,444,0,"SIMS Energy Filter","","","")//IID_sims_energy_filter
	//KratosDSET_initaddobject(Dsetobject,445,0,"Minimum Temperature","","","")//IID_minimum_temperature
	//KratosDSET_initaddobject(Dsetobject,446,0,"Maximum Temperature","","","")//IID_maximum_temperature
	//KratosDSET_initaddobject(Dsetobject,447,0,"Standby Temperature","","","")//IID_standby_temperature
	//KratosDSET_initaddobject(Dsetobject,448,0,"Min. Temp. Increment","","","")//IID_minimum_temperature_increment
	//KratosDSET_initaddobject(Dsetobject,449,0,"Institute ID","","","")//IID_institute_id
	//KratosDSET_initaddobject(Dsetobject,450,0,"Instrument Type","","","")//IID_instrument_id
	//KratosDSET_initaddobject(Dsetobject,451,0,"SIMS Default Rasters","","","")//IID_rasters
	//KratosDSET_initaddobject(Dsetobject,452,0,"Minimum Dwell Time","","","")//IID_raster_minimum_dwell
	//KratosDSET_initaddobject(Dsetobject,453,0,"Raster Name","","","")//IID_raster_name
	//KratosDSET_initaddobject(Dsetobject,454,0,"# Raster Pixels","","","")//IID_raster_n_pixels
	//KratosDSET_initaddobject(Dsetobject,455,0,"# Border Pixels","","","")//IID_raster_n_border
	//KratosDSET_initaddobject(Dsetobject,456,0,"SIMS Master DAC Table","","","")//IID_sims_master_table
	//KratosDSET_initaddobject(Dsetobject,457,0,"DAC I.D. Number","","","")//IID_dac_id
	//KratosDSET_initaddobject(Dsetobject,458,0,"Master DAC Class","","","")//IID_master_dac_class
	//KratosDSET_initaddobject(Dsetobject,459,0,"Master DAC Processor","","","")//IID_master_proc_type
	//KratosDSET_initaddobject(Dsetobject,460,0,"Master DAC Offset","","","")//IID_master_dac_offset
	//KratosDSET_initaddobject(Dsetobject,461,0,"Master Minimum DAC","","","")//IID_master_min_dac
	//KratosDSET_initaddobject(Dsetobject,462,0,"Master Maximum DAC","","","")//IID_master_max_dac
	//KratosDSET_initaddobject(Dsetobject,463,0,"Master Minimum Value","","","")//IID_master_min_value
	//KratosDSET_initaddobject(Dsetobject,464,0,"Master Maximum Value","","","")//IID_master_max_value
	//KratosDSET_initaddobject(Dsetobject,465,0,"Master Units","","","")//IID_master_units
	//KratosDSET_initaddobject(Dsetobject,466,0,"+VE SIMS Alias Table","","","")//IID_pos_sims_alias_table
	//KratosDSET_initaddobject(Dsetobject,467,0,"-VE SIMS Alias Table","","","")//IID_neg_sims_alias_table
	//KratosDSET_initaddobject(Dsetobject,468,0,"SNMS Alias Table","","","")//IID_snms_alias_table
	//KratosDSET_initaddobject(Dsetobject,469,0,"RGA Alias Table","","","")//IID_rga_alias_table
	//KratosDSET_initaddobject(Dsetobject,470,0,"TDS Alias Table","","","")//IID_tds_alias_table
	//KratosDSET_initaddobject(Dsetobject,471,0,"Alias Minimum Value","","","")//IID_alias_min_value
	//KratosDSET_initaddobject(Dsetobject,472,0,"Alias Maximum Value","","","")//IID_alias_max_value
	//KratosDSET_initaddobject(Dsetobject,473,0,"Alias Step Size","","","")//IID_alias_step_size
	//KratosDSET_initaddobject(Dsetobject,474,0,"Alias Actual Value","","","")//IID_alias_actual_value
	//KratosDSET_initaddobject(Dsetobject,475,0,"Alias Standby Value","","","")//IID_alias_standby
	//KratosDSET_initaddobject(Dsetobject,476,0,"Ion Gun Usage","","","")//IID_ion_gun_use
	//KratosDSET_initaddobject(Dsetobject,477,0,"Mag. Entry Name","","","")//IID_mag_entry_name
	//KratosDSET_initaddobject(Dsetobject,478,0,"Mag. Entry F.S.D.","","","")//IID_mag_entry_fsd
	//KratosDSET_initaddobject(Dsetobject,479,0,"Mag. Entry Units","","","")//IID_mag_entry_units
	//KratosDSET_initaddobject(Dsetobject,480,0,"Ion Gun Magnifications","","","")//IID_ion_gun_magnifications
	//KratosDSET_initaddobject(Dsetobject,481,0,"Ion Gun Name","","","")//IID_ion_gun_name
	//KratosDSET_initaddobject(Dsetobject,482,0,"Ion Gun Number","","","")//IID_ion_gun_number
	//KratosDSET_initaddobject(Dsetobject,483,0,"Master DAC # Bits","","","")//IID_master_n_bits
	//KratosDSET_initaddobject(Dsetobject,484,0,"SIMS Maps Min. Dwell","","","")//IID_sims_map_min_dwell
	//KratosDSET_initaddobject(Dsetobject,485,0,"SIMS H.V. Switch Delay","","","")//IID_sims_switch_delay
	//KratosDSET_initaddobject(Dsetobject,486,0,"X Ray Ramp Time","","","")//IID_x_ray_ramp_time
	//KratosDSET_initaddobject(Dsetobject,487,0,"Standby Energy","","","")//IID_standby_energy
	//KratosDSET_initaddobject(Dsetobject,488,0,"Ion Scattering Angle","","","")//IID_ion_gun_scatter_angle
	//KratosDSET_initaddobject(Dsetobject,489,0,"Minimum Ion Energy","","","")//IID_ion_gun_min_energy
	//KratosDSET_initaddobject(Dsetobject,490,0,"Maximum Ion Energy","","","")//IID_ion_gun_max_energy
	//KratosDSET_initaddobject(Dsetobject,491,0,"Ion Masses","","","")//IID_ion_gun_ion_masses
	//KratosDSET_initaddobject(Dsetobject,492,0,"Gate Paterns","","","")//IID_gate_patterns
	//KratosDSET_initaddobject(Dsetobject,493,0,"Gate Pattern Name","","","")//IID_gate_pattern_name
	//KratosDSET_initaddobject(Dsetobject,494,0,"Gate Definitions","","","")//IID_gates
	//KratosDSET_initaddobject(Dsetobject,495,0,"Gate Name","","","")//IID_gate_name
	//KratosDSET_initaddobject(Dsetobject,496,0,"Gate X Pixels","","","")//IID_gate_pixels_x
	//KratosDSET_initaddobject(Dsetobject,497,0,"Gate Y Pixels","","","")//IID_gate_pixels_y
	//KratosDSET_initaddobject(Dsetobject,498,0,"Increasing Energy Slew Rate","","","")//IID_increase_analyser_slew
	//KratosDSET_initaddobject(Dsetobject,499,0,"To Standby After Each Sweep","","","")//IID_standby_after_sweep
	//KratosDSET_initaddobject(Dsetobject,500,0,"Default Raster Shift X","","","")//IID_default_raster_shift_x
	//KratosDSET_initaddobject(Dsetobject,501,0,"Default Raster Shift Y","","","")//IID_default_raster_shift_y
	//KratosDSET_initaddobject(Dsetobject,502,0,"Manip. Controller Type","","","")//IID_manipulator_controller
	//KratosDSET_initaddobject(Dsetobject,503,0,"Manipulator Interface Card","","","")//IID_manipulator_card
	//KratosDSET_initaddobject(Dsetobject,504,0,"Axis Microswitches","","","")//IID_axis_switches
	//KratosDSET_initaddobject(Dsetobject,505,0,"Axis Motor Number","","","")//IID_axis_motor_number
	//KratosDSET_initaddobject(Dsetobject,506,0,"Elec. Gun Scan Pt. Distance","","","")//IID_eg_scan_point_distance
	//KratosDSET_initaddobject(Dsetobject,507,0,"Ion Gun Scan Pt. Distance","","","")//IID_ion_gun_scan_point_distance
	//KratosDSET_initaddobject(Dsetobject,508,0,"VME Serial Ports","","","")//IID_serial_ports
	//KratosDSET_initaddobject(Dsetobject,509,0,"Serial Port Name","","","")//IID_serial_device_name
	//KratosDSET_initaddobject(Dsetobject,510,0,"Serial Port Baud Rate","","","")//IID_serial_baud_rate
	//KratosDSET_initaddobject(Dsetobject,511,0,"Serial Port Parity","","","")//IID_serial_parity
	//KratosDSET_initaddobject(Dsetobject,512,0,"Serial Port Bits/Char","","","")//IID_serial_bits_per_char
	//KratosDSET_initaddobject(Dsetobject,513,0,"Serial Port Stop Bits","","","")//IID_serial_stop_bits
	//KratosDSET_initaddobject(Dsetobject,514,0,"Serial Port End Timeout","","","")//IID_serial_end_timeout
	//KratosDSET_initaddobject(Dsetobject,515,0,"Serial Port Termination Chars","","","")//IID_serial_termination
	//KratosDSET_initaddobject(Dsetobject,516,0,"Vacuum Controller Type","","","")//IID_vacuum_controller_type
	//KratosDSET_initaddobject(Dsetobject,517,0,"Vacuum System Options","","","")//IID_vacuum_system_options
	//KratosDSET_initaddobject(Dsetobject,518,0,"Magazine Max. Samples","","","")//IID_magazine_max_samples
	//KratosDSET_initaddobject(Dsetobject,519,0,"Scorpion K4 Port Index","","","")//IID_scorpion_k4_port
	//KratosDSET_initaddobject(Dsetobject,520,0,"Manipulator Move Sequences","","","")//IID_move_sequences
	//KratosDSET_initaddobject(Dsetobject,521,0,"Move Sequence Name","","","")//IID_sequence_name
	//KratosDSET_initaddobject(Dsetobject,522,0,"Move Sequence Number","","","")//IID_sequence_number
	//KratosDSET_initaddobject(Dsetobject,523,0,"Move Sequence Positions","","","")//IID_sequence_positions
	//KratosDSET_initaddobject(Dsetobject,524,0,"Pallet Size","","","")//IID_pallet_size
	//KratosDSET_initaddobject(Dsetobject,525,0,"Pallet Type Detection","","","")//IID_pallet_type_detection
	//KratosDSET_initaddobject(Dsetobject,526,0,"Mirror Type Detection","","","")//IID_mirror_detection
	//KratosDSET_initaddobject(Dsetobject,527,0,"X-Ray Shutter Detection","","","")//IID_xray_shutter_detection
	//KratosDSET_initaddobject(Dsetobject,528,0,"# Transfer Angles","","","")//IID_ntransfer_angles
	//KratosDSET_initaddobject(Dsetobject,529,0,"Transfer Angles","","","")//IID_transfer_angles
	//KratosDSET_initaddobject(Dsetobject,530,0,"Fork Type","","","")//IID_fork_type
	//KratosDSET_initaddobject(Dsetobject,531,0,"Fork Number","","","")//IID_fork_number
	//KratosDSET_initaddobject(Dsetobject,532,0,"Fork Code","","","")//IID_fork_code
	//KratosDSET_initaddobject(Dsetobject,533,0,"Fork Card","","","")//IID_fork_card
	//KratosDSET_initaddobject(Dsetobject,534,0,"Fork Exchange Position","","","")//IID_fork_exchange_position
	//KratosDSET_initaddobject(Dsetobject,535,0,"Fork Load Position","","","")//IID_fork_load_position
	//KratosDSET_initaddobject(Dsetobject,536,0,"Fork Minimum Etch Position","","","")//IID_fork_min_etch
	//KratosDSET_initaddobject(Dsetobject,537,0,"Fork Maximum Etch Position","","","")//IID_fork_max_etch
	//KratosDSET_initaddobject(Dsetobject,538,0,"Fork Axes","","","")//IID_fork_axes
	//KratosDSET_initaddobject(Dsetobject,539,0,"Ion Gun X Offset","","","")//IID_ion_gun_xoffset
	//KratosDSET_initaddobject(Dsetobject,540,0,"Ion Gun Y Offset","","","")//IID_ion_gun_yoffset
	//KratosDSET_initaddobject(Dsetobject,541,0,"Ion Gun Theta Offset","","","")//IID_ion_gun_theta_offset
	//KratosDSET_initaddobject(Dsetobject,542,0,"Zalar Rotation Allowed","","","")//IID_axis_zalar_rotation
	//KratosDSET_initaddobject(Dsetobject,543,0,"Seconfs Per Rotation","","","")//IID_axis_zalar_rate
	//KratosDSET_initaddobject(Dsetobject,544,0,"XPS Serial Baud Rate","","","")//IID_xps_serial_comms_speed
	//KratosDSET_initaddobject(Dsetobject,545,0,"SIMS Serial Baud Rate","","","")//IID_sims_serial_comms_speed
	//KratosDSET_initaddobject(Dsetobject,546,0,"Shimadzu ESCA Manipulator Positions","","","")//IID_manipulator_npositions
	//KratosDSET_initaddobject(Dsetobject,547,0,"Shimadzu Anode Currents","","","")//IID_shimadzu_anode_currents
	//KratosDSET_initaddobject(Dsetobject,548,0,"Shimadzu Anode Voltages","","","")//IID_shimadzu_anode_voltages
	//KratosDSET_initaddobject(Dsetobject,549,0,"Shimadzu Ion Gun Currents","","","")//IID_ion_gun_shimadzu_currents
	//KratosDSET_initaddobject(Dsetobject,550,0,"Shimadzu Ion Gun Voltages","","","")//IID_ion_gun_shimadzu_voltages
	//KratosDSET_initaddobject(Dsetobject,551,0,"Analyser Calibration","","","")//IID_calibrate_analyser
	//KratosDSET_initaddobject(Dsetobject,552,0,"Calibration Max. Error","","","")//IID_calibrate_max_error
	//KratosDSET_initaddobject(Dsetobject,553,0,"Analyser Minimum DAC","","","")//IID_analyser_min_dac
	//KratosDSET_initaddobject(Dsetobject,554,0,"Analyser Maximum DAC","","","")//IID_analyser_max_dac
	//KratosDSET_initaddobject(Dsetobject,555,0,"Analyser Minimum Value","","","")//IID_analyser_min_value
	//KratosDSET_initaddobject(Dsetobject,556,0,"Analyser Maximum Value","","","")//IID_analyser_max_value
	//KratosDSET_initaddobject(Dsetobject,557,0,"Aperture Mechanisms","","","")//IID_aperture_mechanisms
	//KratosDSET_initaddobject(Dsetobject,558,0,"Aperture Mechanism Name","","","")//IID_aperture_mechanism_name
	//KratosDSET_initaddobject(Dsetobject,559,0,"Transfer Lens Aperture Index","","","")//IID_analyser_aperture_index
	//KratosDSET_initaddobject(Dsetobject,560,0,"Energy Filter Aperture Index","","","")//IID_mass_analyser_aperture_index
	//KratosDSET_initaddobject(Dsetobject,561,0,"Ion Gun Aperture Index","","","")//IID_ion_gun_aperture_index
	//KratosDSET_initaddobject(Dsetobject,562,0,"Axis Slow Manual Speed","","","")//IID_axis_slow_manual_speed
	//KratosDSET_initaddobject(Dsetobject,563,0,"Axis Fast Manual Speed","","","")//IID_axis_fast_manual_speed
	//KratosDSET_initaddobject(Dsetobject,564,0,"Ion Gun Con-focal","","","")//IID_ion_gun_confocal
	//KratosDSET_initaddobject(Dsetobject,565,0,"Nominal Pass Energies","","","")//IID_nominal_pass_energies
	//KratosDSET_initaddobject(Dsetobject,566,0,"Exact Pass Energies","","","")//IID_exact_pass_energies
	//KratosDSET_initaddobject(Dsetobject,567,0,"Nominal Retard Ratios","","","")//IID_nominal_retard_ratios
	//KratosDSET_initaddobject(Dsetobject,568,0,"Exact Retard Ratios","","","")//IID_exact_retard_ratios
	//KratosDSET_initaddobject(Dsetobject,569,0,"PE gains (25meV step size)","","","")//IID_pe_gains_25
	//KratosDSET_initaddobject(Dsetobject,570,0,"PE offsets (25meV step size)","","","")//IID_pe_offsets_25
	//KratosDSET_initaddobject(Dsetobject,571,0,"RR gains (25meV step size)","","","")//IID_rr_gains_25
	//KratosDSET_initaddobject(Dsetobject,572,0,"RR offsets (25meV step size)","","","")//IID_rr_offsets_25
	//KratosDSET_initaddobject(Dsetobject,573,0,"PE gains (50meV step size)","","","")//IID_pe_gains_50
	//KratosDSET_initaddobject(Dsetobject,574,0,"PE offsets (50meV step size)","","","")//IID_pe_offsets_50
	//KratosDSET_initaddobject(Dsetobject,575,0,"RR gains (50meV step size)","","","")//IID_rr_gains_50
	//KratosDSET_initaddobject(Dsetobject,576,0,"RR offsets (50meV step size)","","","")//IID_rr_offsets_50
	//KratosDSET_initaddobject(Dsetobject,577,0,"PE gains (100meV step size)","","","")//IID_pe_gains_100
	//KratosDSET_initaddobject(Dsetobject,578,0,"PE offsets (100meV step size)","","","")//IID_pe_offsets_100
	//KratosDSET_initaddobject(Dsetobject,579,0,"RR gains (100meV step size)","","","")//IID_rr_gains_100
	//KratosDSET_initaddobject(Dsetobject,580,0,"RR offsets (100meV step size)","","","")//IID_rr_offsets_100
	//KratosDSET_initaddobject(Dsetobject,581,0,"C',27h,'tron power supply fitted","","","")//IID_Ctron_ps_fitted
	//KratosDSET_initaddobject(Dsetobject,582,0,"Backlash","","","")//IID_axis_backlash
	//KratosDSET_initaddobject(Dsetobject,583,0,"Axis may move with others","","","")//IID_axis_simul_movement
	//KratosDSET_initaddobject(Dsetobject,584,0,"Flap valve safe distance","","","")//IID_axis_flap_valve_dist
	//KratosDSET_initaddobject(Dsetobject,585,0,"E Gun Control Mechanism","","","")//IID_eg_computer_controlled
	//KratosDSET_initaddobject(Dsetobject,586,0,"E Gun Serial Port Name","","","")//IID_eg_serial_port_name
	//KratosDSET_initaddobject(Dsetobject,587,0,"Charge Neutraliser Type","","","")//IID_neutraliser_type
	//KratosDSET_initaddobject(Dsetobject,588,0,"Minimum Voltages","","","")//IID_neutraliser_mins
	//KratosDSET_initaddobject(Dsetobject,589,0,"Maximum Voltages","","","")//IID_neutraliser_maxs
	//KratosDSET_initaddobject(Dsetobject,590,0,"Neutraliser DAC bits","","","")//IID_neutraliser_dac_bits
	//KratosDSET_initaddobject(Dsetobject,591,0,"Neutraliser Voltage Limits","","","")//IID_neutraliser_limits
	//KratosDSET_initaddobject(Dsetobject,592,0,"Camera Control Mechanism","","","")//IID_camera_source_controlled
	//KratosDSET_initaddobject(Dsetobject,593,0,"Number of Cameras","","","")//IID_number_of_cameras
	//KratosDSET_initaddobject(Dsetobject,594,0,"Image capture available","","","")//IID_frame_store_available
	//KratosDSET_initaddobject(Dsetobject,595,0,"Scan Correction Mode","","","")//IID_hs_scan_correction_mode
	//KratosDSET_initaddobject(Dsetobject,596,0,"HS Scan Rotation","","","")//IID_hs_scan_rotation
	//KratosDSET_initaddobject(Dsetobject,597,0,"Axis HS scan x-offset","","","")//IID_hs_x_offset_factor
	//KratosDSET_initaddobject(Dsetobject,598,0,"Axis HS scan y-offset","","","")//IID_hs_y_offset_factor
	//KratosDSET_initaddobject(Dsetobject,599,0,"Electron Gun PSU type","","","")//IID_eg_psu_type
	
	//KratosDSET_initaddobject(Dsetobject,600,0,"Process identifier","","","")//PID_process
	//KratosDSET_initaddobject(Dsetobject,601,0,"Gaussian width","","","")//PID_gauss_width
	//KratosDSET_initaddobject(Dsetobject,602,0,"Smooth type","","","")//PID_smooth_type
	//KratosDSET_initaddobject(Dsetobject,603,0,"Derivative","","","")//PID_deriv
	//KratosDSET_initaddobject(Dsetobject,604,0,"No. Points","","","")//PID_npoints
	//KratosDSET_initaddobject(Dsetobject,605,0,"Polynomial Degree","","","")//PID_poly_degree
	//KratosDSET_initaddobject(Dsetobject,606,0,"Direction of Integration","","","")//PID_integrate_direction
	//KratosDSET_initaddobject(Dsetobject,607,0,"Deconvolution width","","","")//PID_deconvolute_width
	//KratosDSET_initaddobject(Dsetobject,608,0,"Maximum iterations","","","")//PID_max_iterations
	//KratosDSET_initaddobject(Dsetobject,609,0,"Tolerance","","","")//PID_tolerance
	//KratosDSET_initaddobject(Dsetobject,610,0,"Deconvolution method","","","")//PID_deconv_method
	//KratosDSET_initaddobject(Dsetobject,611,0,"Kernel size","","","")//PID_kernel_size
	//KratosDSET_initaddobject(Dsetobject,612,0,"Kernel coefficients","","","")//PID_kernel_coeffs
	//KratosDSET_initaddobject(Dsetobject,613,0,"Suppress -ve values","","","")//PID_suppress_negatives
	//KratosDSET_initaddobject(Dsetobject,614,0,"Histogram threshold","","","")//PID_threshold
	//KratosDSET_initaddobject(Dsetobject,615,0,"Histogram mass region","","","")//PID_mass_region
	//KratosDSET_initaddobject(Dsetobject,616,0,"Linear correction factor","","","")//PID_linear_factor
	//KratosDSET_initaddobject(Dsetobject,617,0,"Quadratic correction factor","","","")//PID_square_factor
	//KratosDSET_initaddobject(Dsetobject,618,0,"X-ray correction side","","","")//PID_side
	//KratosDSET_initaddobject(Dsetobject,619,0,"Shift regions with spectrum","","","")//PID_shift_regions
	//KratosDSET_initaddobject(Dsetobject,620,0,"Calculation operator","","","")//PID_operator
	//KratosDSET_initaddobject(Dsetobject,621,0,"Second Operand Type","","","")//PID_operand2_type
	//KratosDSET_initaddobject(Dsetobject,622,0,"Constant operand","","","")//PID_constant_operand
	//KratosDSET_initaddobject(Dsetobject,623,0,"Data operand","","","")//PID_data_operand
	//KratosDSET_initaddobject(Dsetobject,624,0,"Operand 1st Dimension","","","")//PID_operand_dim1
	//KratosDSET_initaddobject(Dsetobject,625,0,"Operand 2nd Dimension","","","")//PID_operand_dim2
	//KratosDSET_initaddobject(Dsetobject,626,0,"Operand Abscissa start","","","")//PID_abscissa_start
	//KratosDSET_initaddobject(Dsetobject,627,0,"Operand Abscissa increment","","","")//PID_abscissa_inc
	//KratosDSET_initaddobject(Dsetobject,628,0,"Overwrite original","","","")//PID_overwrite
	//KratosDSET_initaddobject(Dsetobject,629,0,"Sample Bias","","","")//PID_sample_bias
	//KratosDSET_initaddobject(Dsetobject,630,0,"Sample to Pixel Transform","","","")//PID_image_xy_to_ij
	//KratosDSET_initaddobject(Dsetobject,631,0,"New Object Name","","","")//PID_new_object_name
	//KratosDSET_initaddobject(Dsetobject,632,0,"Direction","","","")//PID_new_direction
	//KratosDSET_initaddobject(Dsetobject,633,0,"Elevation","","","")//PID_new_elevation
	//KratosDSET_initaddobject(Dsetobject,634,0,"Orientation","","","")//PID_new_orientation
	//KratosDSET_initaddobject(Dsetobject,635,0,"Actual Working Distance","","","")//PID_new_actual_wd
	//KratosDSET_initaddobject(Dsetobject,636,0,"Full Scale Deflection","","","")//PID_new_fsd
	//KratosDSET_initaddobject(Dsetobject,637,0,"Abscissa Values","","","")//PID_abscissa_values
	//KratosDSET_initaddobject(Dsetobject,638,0,"Processing Abscissa Shift","","","")//PID_abscissa_shift
	KratosDSET_initaddobject(Dsetobject,2001,3,"???","","","")
	KratosDSET_initaddobject(Dsetobject,2003,5,"???","","","")
	KratosDSET_initaddobject(Dsetobject,2004,3,"???","","","")
	KratosDSET_initaddobject(Dsetobject,2005,3,"???","","","")
	KratosDSET_initaddobject(Dsetobject,2006,3,"???","","","")
	KratosDSET_initaddobject(Dsetobject,2007,3,"???","","","")
	KratosDSET_initaddobject(Dsetobject,2041,3,"Background type for spectra","","1=F_LINEAR;2=F_SHIRLEY","")//PID_background_type
	//KratosDSET_initaddobject(Dsetobject,2042,0,"Background start coordinates","","","")//PID_background_start
	//KratosDSET_initaddobject(Dsetobject,2043,0,"Background end coordinates","","","")//PID_background_end
	//KratosDSET_initaddobject(Dsetobject,2044,0,"Background Limit Option Type","","","")//PID_background_limit
	KratosDSET_initaddobject(Dsetobject,2045,3,"Number of bins to average","","","")//PID_bin_to_average
	//KratosDSET_initaddobject(Dsetobject,2046,0,"Start of the component","","","")//PID_comp_start
	//KratosDSET_initaddobject(Dsetobject,2047,0,"Full Width of the component","","","")//PID_comp_width
	//KratosDSET_initaddobject(Dsetobject,2048,0,"Full Height of the component","","","")//PID_comp_height
	//KratosDSET_initaddobject(Dsetobject,2049,0,"Name of the Model line shape","","","")//PID_comp_model_name
	//KratosDSET_initaddobject(Dsetobject,2050,0,"Component Group parameter flags","","","")//PID_group_param_flags
	//KratosDSET_initaddobject(Dsetobject,2051,0,"Start of the component","","","")//PID_comp_start_lower
	//KratosDSET_initaddobject(Dsetobject,2052,0,"Full Width of the component","","","")//PID_comp_width_lower
	//KratosDSET_initaddobject(Dsetobject,2053,0,"Full Height of the component","","","")//PID_comp_height_lower
	//KratosDSET_initaddobject(Dsetobject,2054,0,"Start of the component","","","")//PID_comp_start_upper
	//KratosDSET_initaddobject(Dsetobject,2055,0,"Full Width of the component","","","")//PID_comp_width_upper
	//KratosDSET_initaddobject(Dsetobject,2056,0,"Full Height of the component","","","")//PID_comp_height_upper
	//KratosDSET_initaddobject(Dsetobject,2057,0,"Optimisation Strategy","","","")//PID_autofit_strategy
	//KratosDSET_initaddobject(Dsetobject,2058,0,"Optimisation termination Tolerace","","","")//PID_autofit_tolerance
	//KratosDSET_initaddobject(Dsetobject,2059,0,"Optimisation number of iterations","","","")//PID_autofit_iterations
	//KratosDSET_initaddobject(Dsetobject,2060,0,"Name of the Synthetic Component","","","")//PID_comp_name
	//KratosDSET_initaddobject(Dsetobject,2061,0,"Name of the Group of Components","","","")//PID_comp_group_name
	//KratosDSET_initaddobject(Dsetobject,2062,0,"Sensitivity Factor","","","")//PID_sensitivity_factor
	//KratosDSET_initaddobject(Dsetobject,2063,0,"Atomic Mass for quantification","","","")//PID_atomic_mass
	//KratosDSET_initaddobject(Dsetobject,2064,0,"Quantifcation start coordinates","","","")//PID_region_start
	//KratosDSET_initaddobject(Dsetobject,2065,0,"Quantifcation end coordinates","","","")//PID_region_end
	//KratosDSET_initaddobject(Dsetobject,2066,0,"Component Model data source","","","")//PID_model_data_source
	//KratosDSET_initaddobject(Dsetobject,2067,0,"Data bin associated with annotation","","","")//PID_annotation_bin
	//KratosDSET_initaddobject(Dsetobject,2068,0,"Annotation x offset from data index","","","")//PID_annotation_x_offset
	//KratosDSET_initaddobject(Dsetobject,2069,0,"Annotation y offset from data index","","","")//PID_annotation_y_offset
	//KratosDSET_initaddobject(Dsetobject,2070,0,"Annotation text string","","","")//PID_annotation_string
	//KratosDSET_initaddobject(Dsetobject,2071,0,"Annotation type","","","")//PID_annotation_type
	//KratosDSET_initaddobject(Dsetobject,2072,0,"Arrow start offset from data bin","","","")//PID_arrow_start
	//KratosDSET_initaddobject(Dsetobject,2073,0,"Arrow end offset from data bin","","","")//PID_arrow_end
	//KratosDSET_initaddobject(Dsetobject,2074,0,"Axis range","","","")//PID_axis_range
	//KratosDSET_initaddobject(Dsetobject,2075,0,"Object List containing annotation","","","")//PID_annotation_list
	//KratosDSET_initaddobject(Dsetobject,2076,0,"Data edit x value","","","")//PID_data_edit_x
	//KratosDSET_initaddobject(Dsetobject,2077,0,"Data edit y value","","","")//PID_data_edit_y
	//KratosDSET_initaddobject(Dsetobject,2078,0,"Dataset comment","","","")//PID_dataset_comment
	//KratosDSET_initaddobject(Dsetobject,2079,0,"Discrete detector flag","","","")//AID_discrete_detector
	KratosDSET_initaddobject(Dsetobject,3001,5,"start x coord","","","")//AID_coord_start_x
	KratosDSET_initaddobject(Dsetobject,3002,5,"start y coord","","","")//AID_coord_start_y
	KratosDSET_initaddobject(Dsetobject,3003,5,"step size x coord","","","")//AID_coord_step_size_x
	KratosDSET_initaddobject(Dsetobject,3004,5,"step size y coord","","","")//AID_coord_step_size_y
	KratosDSET_initaddobject(Dsetobject,3005,5,"Full Scale Deflection X","","","")//AID_coord_fsd_x
	KratosDSET_initaddobject(Dsetobject,3006,5,"Full Scale Deflection Y","","","")//AID_coord_fsd_y
	KratosDSET_initaddobject(Dsetobject,3009,3,"Real time display data index","","","")//AID_acquired_rtd_raw_index
	KratosDSET_initaddobject(Dsetobject,3010,3,"Table Of State Change Objects","","","")//AID_state_change_table
	KratosDSET_initaddobject(Dsetobject,3011,3,"Energy/line scan # steps","","","")//AID_scan_n_steps
	KratosDSET_initaddobject(Dsetobject,3012,3,"# Sweeps required","","","")//AID_n_sweeps_required
	KratosDSET_initaddobject(Dsetobject,3013,33,"Enabled detectors","","","detlist")//AID_en_detector_list
	KratosDSET_initaddobject(Dsetobject,3014,3,"Acquisition spec active","","","")//AID_acq_spec_active
	KratosDSET_initaddobject(Dsetobject,3015,3,"KE/line scan or map spec","","","")//AID_acquisition_specs
	KratosDSET_initaddobject(Dsetobject,3016,3,"Save data flag","","","")//AID_save_data_flag
	KratosDSET_initaddobject(Dsetobject,3017,3,"Sum sweeps flag","","","")//AID_sum_sweeps_flag
	KratosDSET_initaddobject(Dsetobject,3018,0,"Miscellaneous data","","","miscD")//AID_misc_items
	//KratosDSET_initaddobject(Dsetobject,3019,0,"Acquired data","","","")//AID_acquired_data
	KratosDSET_initaddobject(Dsetobject,3020,6,"Destination dataset name","","","")//AID_destination_dataset
	//KratosDSET_initaddobject(Dsetobject,3021,0,"Lens mode","","","")//AID_lens_mode
	//KratosDSET_initaddobject(Dsetobject,3023,0,"Dummy field 3023","","","")//AID_dummy_3023
	KratosDSET_initaddobject(Dsetobject,3024,3,"Acquisition Specification Flag","","","")//AID_acquisition_specification
	KratosDSET_initaddobject(Dsetobject,3025,3,"Flow chart goto start","","","")//AID_goto_start
	//KratosDSET_initaddobject(Dsetobject,3026,0,"Position name","","","")//AID_position_name
	KratosDSET_initaddobject(Dsetobject,3030,3,"Object display type","","0=DISPLAY_TYPE_DATASET_NAME;1=DISPLAY_TYPE_SCAN;2=DISPLAY_TYPE_STATE_CHANGE","")//AID_object_display_type
	//KratosDSET_initaddobject(Dsetobject,3031,0,"Acquired raw data","","","")//AID_acquired_raw_data
	//KratosDSET_initaddobject(Dsetobject,3032,0,"Index into raw data","","","")//AID_acquired_raw_index
	//KratosDSET_initaddobject(Dsetobject,3033,0,"Final Etch time","","","")//AID_final_etch_time
	KratosDSET_initaddobject(Dsetobject,3035,3,"Number of Etch Cycles","","","")//AID_no_etch_cycles
	KratosDSET_initaddobject(Dsetobject,3036,3,"Etch Ramp Enabled","","","")//AID_etch_ramp_enabled
	//KratosDSET_initaddobject(Dsetobject,3037,0,"ESCA 3X00 Xray Anode Type","","","")//AID_esca3X00_xray_gun_anode
	//KratosDSET_initaddobject(Dsetobject,3038,0,"ESCA 3400 Xray Emission","","","")//AID_esca3400_xray_gun_emission
	//KratosDSET_initaddobject(Dsetobject,3039,0,"ESCA 3400 Xray Accel HT","","","")//AID_esca3400_xray_gun_accelHT
	KratosDSET_initaddobject(Dsetobject,3040,3,"On Off State of Hardware","","0=F_SWITCH_OFF;1=F_SWITCH_ON","")//AID_on_off_switch
	//KratosDSET_initaddobject(Dsetobject,3041,0,"ESCA 3X00 Ion Gun Emission","","","")//AID_esca3X00_ion_gun_emission
	//KratosDSET_initaddobject(Dsetobject,3042,0,"ESCA 3X00 Ion Gun Accel HT","","","")//AID_esca3X00_ion_gun_accelHT
	//KratosDSET_initaddobject(Dsetobject,3043,0,"Samples Positions Active","","","")//AID_esca_manipulator_samples_enabled
	//KratosDSET_initaddobject(Dsetobject,3044,0,"Sample Positions Number","","","")//AID_esca_manipulator_position
	KratosDSET_initaddobject(Dsetobject,3045,3,"Type Of Analyser","","0=HEMISPHERICAL;1=Mirror HEMISPHERICAL","")//AID_analyser_type
	KratosDSET_initaddobject(Dsetobject,3046,3,"Analyser Scan Mode","","0=FAT;1=FRR","")//AID_analyser_scan_mode
	KratosDSET_initaddobject(Dsetobject,3047,3,"Analyser Pass Energy","","0=5 eV;1=10 eV;2=20 eV;3=40 eV;4=80 eV;5=160 eV;6=320 eV","")//AID_pass_energy
	//KratosDSET_initaddobject(Dsetobject,3048,0,"Analyser retard_ratio","","","")//AID_retard_ratio
	KratosDSET_initaddobject(Dsetobject,3049,3,"HSA Lens Mode","","0=Hybrid;1=Magenetic;2=Slot-M;3=Electrostatic;4=AES;5=UPS;6=ISS;7=Low Mag;8=Medium Mag;9=High Mag;10=SA XPS","")//AID_hsa_lens_mode
	KratosDSET_initaddobject(Dsetobject,3050,3,"MHSA Lens Mode","","0=F_MHSA_LOW_MAGN;1=F_MHSA_MEDIUM_MAGN","")//AID_mhsa_lens_mode
	//KratosDSET_initaddobject(Dsetobject,3051,0,"Xray Gun current","","","")//AID_manual_xray_gun_current
	//KratosDSET_initaddobject(Dsetobject,3052,0,"Xray Gun voltage","","","")//AID_manual_xray_gun_voltage
	//KratosDSET_initaddobject(Dsetobject,3053,0,"Xray Gun Anode","","","")//AID_manual_xray_gun_anode
	//KratosDSET_initaddobject(Dsetobject,3054,0,"Xray Gun Source","","","")//AID_manual_xray_gun_source
	//KratosDSET_initaddobject(Dsetobject,3055,0,"ESCA Sample name","","","")//AID_esca_manipulator_sample_name
	KratosDSET_initaddobject(Dsetobject,3056,5,"Raster Zoom Factor","","","")//AID_raster_zoom
	//KratosDSET_initaddobject(Dsetobject,3057,0,"Raster X Offset Factor","","","")//AID_raster_x_offset
	//KratosDSET_initaddobject(Dsetobject,3058,0,"Raster Y Offset Factor","","","")//AID_raster_y_offset
	//KratosDSET_initaddobject(Dsetobject,3059,0,"Raster Kinetic Compensation Factor","","","")//AID_raster_ke_factor
	//KratosDSET_initaddobject(Dsetobject,3060,0,"Raster X Scale Factor","","","")//AID_raster_x_scale
	//KratosDSET_initaddobject(Dsetobject,3061,0,"Raster Y Scale Factor","","","")//AID_raster_y_scale
	//KratosDSET_initaddobject(Dsetobject,3062,0,"Raster Rotation Angle","","","")//AID_raster_rotation
	//KratosDSET_initaddobject(Dsetobject,3063,0,"Raster Shear Angle","","","")//AID_raster_shear
	//KratosDSET_initaddobject(Dsetobject,3064,0,"Xray Gun Settle time","","","")//AID_xray_gun_settle_time
	KratosDSET_initaddobject(Dsetobject,3065,5,"Charge Neutraliser Charge Balance","","","")//AID_neutraliser_charge_balance
	KratosDSET_initaddobject(Dsetobject,3066,5,"Charge Neutraliser Filament Current","","","")//AID_neutraliser_filament_current
	KratosDSET_initaddobject(Dsetobject,3067,5,"Charge Neutraliser Filament Bias","","","")//AID_neutraliser_filament_bias
	//KratosDSET_initaddobject(Dsetobject,3068,0,"Magnet Lens Trim Coil","","","")//AID_neutraliser_trim_coil
	//KratosDSET_initaddobject(Dsetobject,3069,0,"Magnet Lens Deguass","","","")//AID_neutraliser_deguass
	KratosDSET_initaddobject(Dsetobject,3070,3,"Neutraliser Switch State","","3=F_NEUTRALISER_MANUAL_SETTINGS","")//AID_neutraliser_state
	KratosDSET_initaddobject(Dsetobject,3071,3,"Hardware Control State","","","")//AID_hardware_control
	//KratosDSET_initaddobject(Dsetobject,3072,0,"Analyser Energy","","","")//AID_analyser_energy
	KratosDSET_initaddobject(Dsetobject,3073,3,"Tuning Mode Flag","","","")//AID_tune_mode_active
	KratosDSET_initaddobject(Dsetobject,3074,5,"Reference Energy","","","")//AID_tune_reference_energy
	KratosDSET_initaddobject(Dsetobject,3075,5,"Max - Min Counts at Reference Energy","","","")//AID_tune_max_to_min_intensity
	KratosDSET_initaddobject(Dsetobject,3076,5,"Half-Width at Reference Energy","","","")//AID_tune_half_width
	KratosDSET_initaddobject(Dsetobject,3077,5,"Peak Area at Reference Energy","","","")//AID_tune_peak_area
	KratosDSET_initaddobject(Dsetobject,3078,5,"Intensity at Reference Energy","","","")//AID_tune_intensity
	//KratosDSET_initaddobject(Dsetobject,3079,0,"Actual Etch Time Performed","","","")//AID_actual_etch_time
	KratosDSET_initaddobject(Dsetobject,3080,3,"Xray Reference Energy","","0=1253.688;1=1486.708;2=0;3=2984.2;4=21.22;5=40.81;6=2042.4;7=4510.8991;8=1486.708","")//AID_xray_energy_reference
	KratosDSET_initaddobject(Dsetobject,3081,3,"OBJECT identification tag","","","")//AID_object_tag
	KratosDSET_initaddobject(Dsetobject,3082,3,"Map acquire sequence","","3=F_DO_1ST_LINE_OF_ALL_MAPS_BEFORE_2ND_LINE_OF_1ST_MAP","")//AID_acquire_sequence
	KratosDSET_initaddobject(Dsetobject,3083,3,"# lines of map completed","","","")//AID_map_lines_completed
	//KratosDSET_initaddobject(Dsetobject,3084,0,"stream info and data","","","")//AID_stream_data
	//KratosDSET_initaddobject(Dsetobject,3085,0,"data stream number","","","")//AID_stream_number
	//KratosDSET_initaddobject(Dsetobject,3086,0,"next line # to be started","","","")//AID_map_prov_next_line
	KratosDSET_initaddobject(Dsetobject,3087,6,"Stage Position Name","","","")//AID_stage_position_name
	KratosDSET_initaddobject(Dsetobject,3088,5,"Stage X Position","m","","")//AID_stage_x_position
	KratosDSET_initaddobject(Dsetobject,3089,5,"Stage Y Position","m","","")//AID_stage_y_position
	KratosDSET_initaddobject(Dsetobject,3090,5,"Stage Z Position","m","","")//AID_stage_z_position
	KratosDSET_initaddobject(Dsetobject,3091,5,"Stage X Rotation","","","")//AID_stage_x_rotation
	KratosDSET_initaddobject(Dsetobject,3092,5,"Stage Y Rotation","","","")//AID_stage_y_rotation
	KratosDSET_initaddobject(Dsetobject,3093,5,"Stage Z Rotation","","","")//AID_stage_z_rotation
	//KratosDSET_initaddobject(Dsetobject,3094,0,"Motor Name","","","")//AID_motor_name
	//KratosDSET_initaddobject(Dsetobject,3095,0,"Motor Position","","","")//AID_motor_position
	KratosDSET_initaddobject(Dsetobject,3096,3,"pixel square per point","","","")//AID_image_point_size
	KratosDSET_initaddobject(Dsetobject,3097,3,"Map type","","0=F_MAP_SCANNED;1=F_MAP_STIGMATIC","")//AID_map_type
	KratosDSET_initaddobject(Dsetobject,3098,3,"Stage Position Table","","","")//AID_stage_position_table
	//KratosDSET_initaddobject(Dsetobject,3099,0,"Stage Manual Button State","","","")//AID_stage_button_state
	//KratosDSET_initaddobject(Dsetobject,3100,0,"Motor Position Name","","","")//AID_motor_position_name
	KratosDSET_initaddobject(Dsetobject,3101,3,"Selected Area Aperture","","0=F_APERTURE_3by12","")//AID_selected_area_aperture
	KratosDSET_initaddobject(Dsetobject,3102,3,"Active Analyser Type","","0=HEMISPHERICAL;1=MIRROR HEMISPHERICAL","")//AID_active_analyser_type
	KratosDSET_initaddobject(Dsetobject,3103,3,"Manually Acquired Data Saved","","","")//AID_iman_current_image_flag
	//KratosDSET_initaddobject(Dsetobject,3104,0,"Detector used to set analyser energy map/linescan","","","")//AID_key_detector_number
	KratosDSET_initaddobject(Dsetobject,3105,5,"Analyser Energy for required energy at key detector","","","")//AID_anaylser_energy
	KratosDSET_initaddobject(Dsetobject,3106,5,"Stigmatic Image Shift X","","","")//AID_stigmatic_image_shift_x
	KratosDSET_initaddobject(Dsetobject,3107,5,"Stigmatic Image Shift Y","","","")//AID_stigmatic_image_shift_y
	//KratosDSET_initaddobject(Dsetobject,3108,0,"Institute name","","","")//AID_institute_name
	//KratosDSET_initaddobject(Dsetobject,3109,0,"Sample Batch name","","","")//AID_sample_batch_name
	//KratosDSET_initaddobject(Dsetobject,3110,0,"Destination report file name","","","")//AID_destination_report
	//KratosDSET_initaddobject(Dsetobject,3111,0,"Run time processing operations","","","")//AID_report_processing
	KratosDSET_initaddobject(Dsetobject,3112,5,"Work function","","","")//AID_work_function
	KratosDSET_initaddobject(Dsetobject,3113,6,"Chemical symbol or formula","","","")//AID_species_label
	KratosDSET_initaddobject(Dsetobject,3114,6,"Transition or charge state","","","")//AID_transition_or_charge_state
	//KratosDSET_initaddobject(Dsetobject,3115,0,"Xray Gun power","","","")//AID_manual_xray_gun_power
	//KratosDSET_initaddobject(Dsetobject,3116,0,"Print at Run time flag","","","")//AID_print_report
	KratosDSET_initaddobject(Dsetobject,3117,3,"XPS Energy Scale","","0=F_BINDING_ENERGY;1=F_KINETIC_ENERGY","")//AID_xps_energy_scale
	//KratosDSET_initaddobject(Dsetobject,3118,0,"Electron Gun Beam Voltage","","","")//AID_electron_gun_beam_voltage
	//KratosDSET_initaddobject(Dsetobject,3119,0,"Electron Gun Filament Current","","","")//AID_electron_gun_filament_current
	//KratosDSET_initaddobject(Dsetobject,3120,0,"Electron Gun Emission Current","","","")//AID_electron_gun_emission_current
	//KratosDSET_initaddobject(Dsetobject,3121,0,"Electron Gun Extractor Voltage","","","")//AID_electron_gun_extractor_voltage
	//KratosDSET_initaddobject(Dsetobject,3122,0,"Electron Gun Suppressor Voltage","","","")//AID_electron_gun_suppressor_voltage
	//KratosDSET_initaddobject(Dsetobject,3123,0,"Electron Gun Spot Size Lens","","","")//AID_electron_gun_spot_size
	//KratosDSET_initaddobject(Dsetobject,3124,0,"Electron Gun Focus Lens","","","")//AID_electron_gun_focus
	//KratosDSET_initaddobject(Dsetobject,3125,0,"Electron Gun X alignment","","","")//AID_electron_gun_align_x
	//KratosDSET_initaddobject(Dsetobject,3126,0,"Electron Gun Y alignment","","","")//AID_electron_gun_align_y
	//KratosDSET_initaddobject(Dsetobject,3127,0,"Electron Gun X Stigmator","","","")//AID_electron_gun_stig_x
	//KratosDSET_initaddobject(Dsetobject,3128,0,"Electron Gun Y Stigmator","","","")//AID_electron_gun_stig_y
	//KratosDSET_initaddobject(Dsetobject,3129,0,"On Off State of Electron Gun","","","")//AID_egun_switch_state
	//KratosDSET_initaddobject(Dsetobject,3130,0,"On Off State of SED","","","")//AID_SED_switch_state
	//KratosDSET_initaddobject(Dsetobject,3131,0,"SED Collector bias","","","")//AID_SED_collector_bias
	//KratosDSET_initaddobject(Dsetobject,3132,0,"SED Multiplier bias","","","")//AID_SED_multiplier_bias
	//KratosDSET_initaddobject(Dsetobject,3133,0,"SED Black Level","","","")//AID_SED_black_level
	//KratosDSET_initaddobject(Dsetobject,3134,0,"Input Channel to framestore","","","")//AID_sem_input_channel
	//KratosDSET_initaddobject(Dsetobject,3135,0,"Output for scan ramps","","","")//AID_sem_ramp_output
	//KratosDSET_initaddobject(Dsetobject,3136,0,"SEM Pixel Dwell-time","","","")//AID_sem_dwell_time
	//KratosDSET_initaddobject(Dsetobject,3137,0,"SEM Raster only flag","","","")//AID_sem_raster_only
	//KratosDSET_initaddobject(Dsetobject,3138,0,"SEM Raster Size","","","")//AID_sem_raster_size
	//KratosDSET_initaddobject(Dsetobject,3139,0,"SEM Raster X offset","","","")//AID_sem_raster_x_offset
	//KratosDSET_initaddobject(Dsetobject,3140,0,"SEM Raster Y offset","","","")//AID_sem_raster_y_offset
	//KratosDSET_initaddobject(Dsetobject,3141,0,"Start Spellman E.Gun Extractor Current Readback","","","")//AID_ss_egun_extractor_current
	//KratosDSET_initaddobject(Dsetobject,3142,0,"Start Spellman X.Gun active anode","","","")//AID_ss_xgun_active_anode
	//KratosDSET_initaddobject(Dsetobject,3143,0,"Start Spellman X.Gun emission","","","")//AID_ss_xgun_emission_current
	//KratosDSET_initaddobject(Dsetobject,3144,0,"Start Spellman X.Gun Anode HT","","","")//AID_ss_xgun_anode_voltage
	//KratosDSET_initaddobject(Dsetobject,3145,0,"Start Spellman U.V. Strike HT","","","")//AID_ss_uv_strike_ht
	//KratosDSET_initaddobject(Dsetobject,3146,0,"Start Spellman U.V. Discharge Current","","","")//AID_ss_uv_discharge_current
	//KratosDSET_initaddobject(Dsetobject,3147,0,"Start Spellman X.Gun Mono Bias","","","")//AID_ss_xgun_mono_bias
	//KratosDSET_initaddobject(Dsetobject,3148,0,"Start Spellman X.Gun filament Limit","","","")//AID_ss_xgun_filament_limit
	//KratosDSET_initaddobject(Dsetobject,3149,0,"Start Spellman X.Gun Energy Reference","","","")//AID_ss_xgun_energy_ref
	//KratosDSET_initaddobject(Dsetobject,3150,0,"X.Gun filament Degas first time","","","")//AID_ss_xgun_degas_first_time
	//KratosDSET_initaddobject(Dsetobject,3151,0,"X.Gun filament Degas second time","","","")//AID_ss_xgun_degas_second_time
	//KratosDSET_initaddobject(Dsetobject,3152,0,"X.Gun filament Degas first current","","","")//AID_ss_xgun_degas_first_current
	//KratosDSET_initaddobject(Dsetobject,3153,0,"X.Gun filament Degas second current","","","")//AID_ss_xgun_degas_second_current
	//KratosDSET_initaddobject(Dsetobject,3154,0,"Electron Gun Scan Parameters","","","")//AID_egun_scan_parameters
	//KratosDSET_initaddobject(Dsetobject,3155,0,"Operating Accel. HT (V)","","","")//AID_egun_op_accel_ht_volts
	//KratosDSET_initaddobject(Dsetobject,3156,0,"Operating Spot Size","","","")//AID_egun_op_spot_size
	//KratosDSET_initaddobject(Dsetobject,3157,0,"Operating Emission Current","","","")//AID_egun_op_emission
	//KratosDSET_initaddobject(Dsetobject,3158,0,"Operating Extactor Current","","","")//AID_egun_op_extractor_current
	//KratosDSET_initaddobject(Dsetobject,3159,0,"Electron Gun Filament Type","","","")//AID_egun_filament_type
	//KratosDSET_initaddobject(Dsetobject,3160,0,"Lens Sweep OBJECT","","","")//AID_lens_sweep_object
	//KratosDSET_initaddobject(Dsetobject,3161,0,"Lens Sweep Option","","","")//AID_lens_sweep_option
	//KratosDSET_initaddobject(Dsetobject,3162,0,"Lens Sweep Row","","","")//AID_lens_sweep_row
	//KratosDSET_initaddobject(Dsetobject,3163,0,"Lens Sweep Row","","","")//AID_lens_sweep_active
	//KratosDSET_initaddobject(Dsetobject,3164,0,"Lens Sweep Counter","","","")//AID_lens_sweep_counter
	//KratosDSET_initaddobject(Dsetobject,3165,0,"Lens Sweep Initialise","","","")//AID_lens_sweep_initialise
	//KratosDSET_initaddobject(Dsetobject,3166,0,"Lens Sweep abscissa","","","")//AID_lens_sweep_abscissa
	KratosDSET_initaddobject(Dsetobject,3167,3,"Selected Area Iris Index","","","")//AID_iris_position_index
	//KratosDSET_initaddobject(Dsetobject,3168,0,"X.Gun Energy Reference","","","")//AID_manual_xgun_energy_ref
	//KratosDSET_initaddobject(Dsetobject,3169,0,"ESCA 3200 Xray Emission","","","")//AID_esca3200_xray_gun_emission
	//KratosDSET_initaddobject(Dsetobject,3170,0,"ESCA 3200 Xray Accel HT","","","")//AID_esca3200_xray_gun_accelHT
	//KratosDSET_initaddobject(Dsetobject,3171,0,"ESCA 3X00 Resolution","","","")//AID_esca3X00_analyser_resolution
	//KratosDSET_initaddobject(Dsetobject,3172,0,"Samples Positions Active","","","")//AID_xsam_carousel_samples_enabled
	//KratosDSET_initaddobject(Dsetobject,3173,0,"Sample Positions Number","","","")//AID_xsam_carousel_position
	//KratosDSET_initaddobject(Dsetobject,3174,0,"XSAM Sample name","","","")//AID_xsam_carousel_sample_name
	//KratosDSET_initaddobject(Dsetobject,3175,0,"Analyser operation suppress flag","","","")//AID_dont_mess_with_analyser
	//KratosDSET_initaddobject(Dsetobject,3176,0,"Samples Position Active","","","")//AID_sample_bar_samples_enabled
	//KratosDSET_initaddobject(Dsetobject,3177,0,"Sample Position Number","","","")//AID_sample_bar_position
	//KratosDSET_initaddobject(Dsetobject,3178,0,"Sample name","","","")//AID_sample_bar_sample_name
	KratosDSET_initaddobject(Dsetobject,3179,5,"Sample Bias","","","")//AID_sample_bias
	//KratosDSET_initaddobject(Dsetobject,3180,0,"Start Spellman X.Gun Source","","","")//AID_ss_xgun_active_source
	//KratosDSET_initaddobject(Dsetobject,3181,0,"Region Comment","","","")//AID_region_comment
	//KratosDSET_initaddobject(Dsetobject,3182,0,"Magnet Scale Factor","","","")//AID_magnet_scale_factor
	//KratosDSET_initaddobject(Dsetobject,3183,0,"Magnet Scale Factor Enabled","","","")//AID_magnet_scale_factor_enabled
	//KratosDSET_initaddobject(Dsetobject,3184,0,"ESCAK1 Aperture name","","","")//AID_escak1_analyser_aperture_name
	//KratosDSET_initaddobject(Dsetobject,3185,0,"ESCAK1 Lens Mode Name","","","")//AID_escak1_analyser_lens_mode_name
	//KratosDSET_initaddobject(Dsetobject,3186,0,"ESCAK1 Lens Mode","","","")//AID_escak1_analyser_lens_mode
	//KratosDSET_initaddobject(Dsetobject,3187,0,"ESCAK1 Aperture","","","")//AID_escak1_analyser_aperture
	KratosDSET_initaddobject(Dsetobject,3188,5,"Stage Gripper","","","")//AID_stage_gripper
	KratosDSET_initaddobject(Dsetobject,3189,5,"Stage Elevator","","","")//AID_stage_elevator
	KratosDSET_initaddobject(Dsetobject,3190,3,"NICPU X-ray Gun Filament","","0=F_NICPU_XRAY_PSU_FILAMENT_MONO_1","")//AID_nicpu_xgun_active_filament
	KratosDSET_initaddobject(Dsetobject,3191,3,"NICPU X-ray Gun Active Anode Material","","2=F_NICPU_XRAY_ANODE_STD_MONO","")//AID_nicpu_xgun_active_anode_material
	KratosDSET_initaddobject(Dsetobject,3192,5,"NICPU X-ray Gun Emission Current","","","")//AID_nicpu_xgun_emission_current
	KratosDSET_initaddobject(Dsetobject,3193,5,"NICPU X-ray Gun Anode HT Voltage","","","")//AID_nicpu_xgun_ht_voltage
	KratosDSET_initaddobject(Dsetobject,3194,5,"NICPU X-ray Gun Focus Voltage","","","")//AID_nicpu_xgun_focus_voltage
	//KratosDSET_initaddobject(Dsetobject,3195,0,"NICPU X-ray Gun Filament Current Limit","","","")//AID_nicpu_xgun_filament_current_limit
	//KratosDSET_initaddobject(Dsetobject,3196,0,"NICPU X-ray gun filament degas first time","","","")//AID_nicpu_xgun_degas_first_time
	//KratosDSET_initaddobject(Dsetobject,3197,0,"NICPU X-ray gun filament degas second time","","","")//AID_nicpu_xgun_degas_second_time
	//KratosDSET_initaddobject(Dsetobject,3198,0,"NICPU X-ray gun filament degas first current","","","")//AID_nicpu_xgun_degas_first_current
	//KratosDSET_initaddobject(Dsetobject,3199,0,"NICPU X-ray gun filament degas second current","","","")//AID_nicpu_xgun_degas_second_current
	//KratosDSET_initaddobject(Dsetobject,3200,0,"Magnet Lens Trim Coil 2","","","")//AID_neutraliser_trim_coil_2
	//KratosDSET_initaddobject(Dsetobject,3201,0,"Magnet Lens Trim Coil 3","","","")//AID_neutraliser_trim_coil_3
	KratosDSET_initaddobject(Dsetobject,3203,5,"NICPU Ion Gun PSU beam_ht","V","","")//AID_nicpu_igun_beam_ht
	//KratosDSET_initaddobject(Dsetobject,3204,0,"NICPU Ion Gun PSU LMIG Beam HT","","","")//AID_nicpu_igun_LMIG_beam_ht
	KratosDSET_initaddobject(Dsetobject,3205,5,"NICPU Ion Gun PSU Float Voltage","V","","")//AID_nicpu_igun_float_voltage
	//KratosDSET_initaddobject(Dsetobject,3206,0,"NICPU Ion Gun PSU LMIG Filament Current","","","")//AID_nicpu_igun_LMIG_filament_current
	//KratosDSET_initaddobject(Dsetobject,3207,0,"NICPU Ion Gun PSU LMIG Beam Current","","","")//AID_nicpu_igun_LMIG_beam_current
	KratosDSET_initaddobject(Dsetobject,3208,5,"NICPU Ion Gun PSU grid_voltage","V","","")//AID_nicpu_igun_grid_voltage
	//KratosDSET_initaddobject(Dsetobject,3209,0,"NICPU Ion Gun PSU Filament Current Limit","","","")//AID_nicpu_igun_filament_current_limit
	KratosDSET_initaddobject(Dsetobject,3210,5,"NICPU Ion Gun PSU Emission Current","A","","")//AID_nicpu_igun_emission_current
	KratosDSET_initaddobject(Dsetobject,3211,5,"NICPU Ion Gun PSU Extractor Voltage","V","","")//AID_nicpu_igun_extractor_voltage
	KratosDSET_initaddobject(Dsetobject,3212,5,"NICPU Ion Gun PSU Extractor Current","A","","")//AID_nicpu_igun_extractor_current
	KratosDSET_initaddobject(Dsetobject,3213,5,"NICPU Ion Gun PSU Alignment X","V","","")//AID_nicpu_igun_alignment_x_voltage
	KratosDSET_initaddobject(Dsetobject,3214,5,"NICPU Ion Gun PSU Alignment Y","V","","")//AID_nicpu_igun_alignment_y_voltage
	KratosDSET_initaddobject(Dsetobject,3215,5,"NICPU Ion Gun PSU Condenser Voltage","V","","")//AID_nicpu_igun_condenser_voltage
	KratosDSET_initaddobject(Dsetobject,3216,5,"NICPU Ion Gun PSU Focus Voltage","V","","")//AID_nicpu_igun_focus_voltage
	KratosDSET_initaddobject(Dsetobject,3217,3,"NICPU Ion Gun PSU filament","","0=F_NICPU_ION_GUN_FILAMENT_1","")//AID_nicpu_igun_filament
	//KratosDSET_initaddobject(Dsetobject,3218,0,"NICPU Ion Gun PSU HT Tracking On","","","")//AID_nicpu_igun_ht_tracking_on
	KratosDSET_initaddobject(Dsetobject,3219,5,"NICPU Ion Gun PSU Raster Offset X","V","","")//AID_nicpu_igun_raster_offset_x_voltage
	KratosDSET_initaddobject(Dsetobject,3220,5,"NICPU Ion Gun PSU Raster Offset Y","V","","")//AID_nicpu_igun_raster_offset_y_voltage
	KratosDSET_initaddobject(Dsetobject,3221,5,"NICPU Ion Gun PSU Raster Scale X","V","","")//AID_nicpu_igun_raster_scale_x_voltage
	KratosDSET_initaddobject(Dsetobject,3222,5,"NICPU Ion Gun PSU Raster Scale Y","V","","")//AID_nicpu_igun_raster_scale_x_voltage
	//KratosDSET_initaddobject(Dsetobject,3223,0,"NICPU Analyser Number Detectors","","","")//AID_nicpu_analyser_number_detectors
	KratosDSET_initaddobject(Dsetobject,3224,3,"NICPU X.Gun Energy Reference","","","")//AID_nicpu_xgun_energy_ref
	//KratosDSET_initaddobject(Dsetobject,3225,0,"NICPU Imager integration time","","","")//AID_image_integration_time
	KratosDSET_initaddobject(Dsetobject,3226,5,"NICPU Ion Gun filament Degas first time","","","")//AID_nicpu_igun_degas_first_time
	KratosDSET_initaddobject(Dsetobject,3227,5,"NICPU Ion Gun filament Degas second time","","","")//AID_nicpu_igun_degas_second_time
	KratosDSET_initaddobject(Dsetobject,3228,5,"NICPU Ion Gun filament Degas first current","","","")//AID_nicpu_igun_degas_first_current
	KratosDSET_initaddobject(Dsetobject,3229,5,"NICPU Ion Gun filament Degas second current","","","")//AID_nicpu_igun_degas_second_current
	KratosDSET_initaddobject(Dsetobject,3230,5,"NICPU Ion Gun PSU Raster Size","mm","","")//AID_nicpu_igun_raster_size
	KratosDSET_initaddobject(Dsetobject,3231,5,"NICPU Ion Gun PSU Beam Current","","","")//AID_nicpu_igun_beam_current
	KratosDSET_initaddobject(Dsetobject,3232,5,"Position of image centre wrt sample holder centre x","","","")//AID_image_centre_wrt_sample_holder_x
	KratosDSET_initaddobject(Dsetobject,3233,5,"Position of image centre wrt sample holder centre y","","","")//AID_image_centre_wrt_sample_holder_y
	KratosDSET_initaddobject(Dsetobject,3234,0,"Scan Sweep OBJECT","","","SWO")//AID_scan_sweep_object
	//KratosDSET_initaddobject(Dsetobject,3235,0,"Scan Sweep Option","","","")//AID_scan_sweep_option
	//KratosDSET_initaddobject(Dsetobject,3236,0,"Scan Sweep Row","","","")//AID_scan_sweep_row
	//KratosDSET_initaddobject(Dsetobject,3237,0,"Scan Sweep Row","","","")//AID_scan_sweep_active
	//KratosDSET_initaddobject(Dsetobject,3238,0,"Scan Sweep Counter","","","")//AID_scan_sweep_counter
	//KratosDSET_initaddobject(Dsetobject,3239,0,"Scan Sweep Initialise","","","")//AID_scan_sweep_initialise
	//KratosDSET_initaddobject(Dsetobject,3240,0,"Lens Sweep abscissa","","","")//AID_scan_sweep_abscissa
	//KratosDSET_initaddobject(Dsetobject,3241,0,"Lens Sweep ordinate acquire","","","")//AID_scan_sweep_ordinate_needed
	//KratosDSET_initaddobject(Dsetobject,3242,0,"Selected ordinate in Profile scan","","","")//AID_scan_sweep_quant_ordinate_type
	KratosDSET_initaddobject(Dsetobject,3244,3,"Origin of platen","","","")//AID_platen_level
	KratosDSET_initaddobject(Dsetobject,3245,3,"Type of platen","","","")//AID_platen_type
	//KratosDSET_initaddobject(Dsetobject,3246,0,"NICPU X-ray Gun Water Flow Rate Limit","","","")//AID_nicpu_xgun_water_flow_rate_limit
	KratosDSET_initaddobject(Dsetobject,3247,5,"NICPU X-ray Gun Suppressor or Bias Voltage","","","")//AID_nicpu_xgun_suppressor_bias_voltage
	//KratosDSET_initaddobject(Dsetobject,3248,0,"NOVA sputter shield control bit (0 for no, 1 for yes)","","","")//AID_enable_sputter_shield
	KratosDSET_initaddobject(Dsetobject,3249,5,"Position of image centre wrt sample holder centre z","","","")//AID_image_centre_wrt_sample_holder_z
	KratosDSET_initaddobject(Dsetobject,3250,3,"Auto Z coordinate","","","")//AID_auto_z_this_coordinate
	KratosDSET_initaddobject(Dsetobject,3251,3,"NICPU Ion Gun Enable Azimuthal Rotation","","","")//AID_nicpu_igun_enable_azimuthal_rotation
	//KratosDSET_initaddobject(Dsetobject,3252,0,"Electron Gun Filament Voltage","","","")//AID_electron_gun_filament_voltage
	//KratosDSET_initaddobject(Dsetobject,3253,0,"Electron Gun Float Voltage","","","")//AID_electron_gun_float_voltage
	KratosDSET_initaddobject(Dsetobject,3254,3,"Auto Z ordinate","","","")//AID_ordinate_choice_for_auto_z
	KratosDSET_initaddobject(Dsetobject,3255,5,"Z Step size (mm) for auto z","","","")//AID_delta_z_auto_z
	KratosDSET_initaddobject(Dsetobject,3256,3,"Number of steps in auto z","","","")//AID_n_delta_z
	//KratosDSET_initaddobject(Dsetobject,3257,0,"Marker to indicate auto z has been performed 1 for yes 0 for no","","","")//AID_auto_z_done
	//KratosDSET_initaddobject(Dsetobject,3258,0,"Marker to request a fine scan after the main scan","","","")//AID_fine_auto_z
	KratosDSET_initaddobject(Dsetobject,3259,5,"Optimum z position","","","")//AID_auto_z_max_position
	KratosDSET_initaddobject(Dsetobject,3260,3,"Ordinate value at optimum z position","","","")//AID_auto_z_max_position_ordinate_value
	KratosDSET_initaddobject(Dsetobject,3261,3,"This an index to a row in either position tables","","","")//AID_position_table_row
	KratosDSET_initaddobject(Dsetobject,3262,3,"This is an index which identifies a position table","","","")//AID_position_table_id
	//KratosDSET_initaddobject(Dsetobject,3263,0,"Index to Scan used for auto z","","","")//AID_auto_z_scan_choice
	KratosDSET_initaddobject(Dsetobject,3264,5,"Width of region in spectra scan","","","")//AID_last_scan_width
	KratosDSET_initaddobject(Dsetobject,3265,3,"Energy/line scan # steps","","","")//AID_last_scan_n_steps
	KratosDSET_initaddobject(Dsetobject,3266,5,"Spectrum scan step size","","","")//AID_last_spectrum_step_size
	KratosDSET_initaddobject(Dsetobject,3267,5,"Dwell/sweep time","","","")//AID_last_dwell_time
	KratosDSET_initaddobject(Dsetobject,3268,5,"Dwell/sweep time","","","")//AID_snapshot_last_dwell_time
	//KratosDSET_initaddobject(Dsetobject,3269,0,"This Id',27h,'s a camera as either SAC or SEC","","","")//AID_Nova_camera_id
	//KratosDSET_initaddobject(Dsetobject,3270,0,"degree of spherical correction","","","")//AID_spherical_correction_value
	KratosDSET_initaddobject(Dsetobject,3273,3,"Ion Gun Gas State","","","")//AID_nicpu_igun_gas_state
	//KratosDSET_initaddobject(Dsetobject,3274,0,"NICPU X-ray Gun Leakage Current Trip High","","","")//AID_nicpu_xgun_leakage_current_trip_high
	//KratosDSET_initaddobject(Dsetobject,3275,0,"NICPU X-ray Gun Leakage Current Trip Low","","","")//AID_nicpu_xgun_leakage_current_trip_low
	//KratosDSET_initaddobject(Dsetobject,3276,0,"NICPU X-ray Gun Deionise Delay","","","")//AID_nicpu_xgun_deionise_delay
	KratosDSET_initaddobject(Dsetobject,3278,5,"NICPU Ion Gun Standby Delay Time","","","")//AID_nicpu_igun_standby_time
	KratosDSET_initaddobject(Dsetobject,3279,5,"State Change Delay Time","","","")//AID_state_change_delay
	KratosDSET_initaddobject(Dsetobject,3280,3,"Index used to id flow chart object originated from","","","")//AID_flow_chart_index
	KratosDSET_initaddobject(Dsetobject,3281,3,"Index used to id object in flow diagram","","","")//AID_object_in_flow_chart_index
	KratosDSET_initaddobject(Dsetobject,3282,6,"Descriptor for aperture size used in acquisition","","","")//AID_aperture_size_name
	KratosDSET_initaddobject(Dsetobject,3283,6,"Descriptor for iris position used in acquisition","","","")//AID_iris_position_name
	//KratosDSET_initaddobject(Dsetobject,3284,0,"Number of images in X direction (image stitching)","","","")//AID_image_count_x
	//KratosDSET_initaddobject(Dsetobject,3285,0,"Number of images in Y direction (image stitching)","","","")//AID_image_count_y
	//KratosDSET_initaddobject(Dsetobject,3286,0,"Sample exchange needed","","","")//AID_external_exchange
	//KratosDSET_initaddobject(Dsetobject,3287,0,"This is an index that denotes the part of vision that created any' given stage position","","","")//AID_position_source
	//KratosDSET_initaddobject(Dsetobject,3288,0,"TIFF file name","","","")//AID_tiff_file_name
	//KratosDSET_initaddobject(Dsetobject,3289,0,"Scan direction","","","")//AID_scan_direction
	KratosDSET_initaddobject(Dsetobject,3290,6,"Vision Software Version","","","")//AID_vision_software_version
	// comment from Neal Fairley:
	//
	// You should be aware of one thing about the dset files which is why I don't convert them ... 
	// the format in not static between releases of Vision and a minor alteration in the dset parameters
	// may move data around within the binary file. I am sure you can just check your conversion code
	// against the version of Vision you are using each time a new upgrade to Vision is released ...
	// MMRC:	5177 b4901 NICPU: 70 296 b296
	// JCAP:	6432 b6303 NICPU: 72 492 b492
	//KratosDSET_initaddobject(Dsetobject,3291,0,"Instrument name","","","")//CID_instrument_name
	//KratosDSET_initaddobject(Dsetobject,3292,0,"Techniques Available","","","")//CID_techniques_available
	//KratosDSET_initaddobject(Dsetobject,3293,0,"Instrument interface type","","","")//CID_intrument_interface
	//KratosDSET_initaddobject(Dsetobject,3294,0,"II processor","","","")//CID_es_processor
	//KratosDSET_initaddobject(Dsetobject,3295,0,"II comms interface","","","")//CID_es_comms_interface
	//KratosDSET_initaddobject(Dsetobject,3296,0,"II port name","","","")//CID_es_port_name
	//KratosDSET_initaddobject(Dsetobject,3297,0,"II serial speed","","","")//CID_es_serial_port_speed
	//KratosDSET_initaddobject(Dsetobject,3298,0,"Excitation sources","","","")//CID_excitation_source_array
	//KratosDSET_initaddobject(Dsetobject,3299,0,"Excitation technique","","","")//CID_excitation_technique
	//KratosDSET_initaddobject(Dsetobject,3300,0,"Xray excitation code","","","")//CID_xray_excitation_code
	//KratosDSET_initaddobject(Dsetobject,3301,0,"Xray photon energy","","","")//CID_xray_photon_energy
	//KratosDSET_initaddobject(Dsetobject,3302,0,"Xray gun voltage control flag","","","")//CID_xray_gun_voltage_control_flag
	//KratosDSET_initaddobject(Dsetobject,3303,0,"Xray gun current control flag","","","")//CID_xray_gun_current_control_flag
	//KratosDSET_initaddobject(Dsetobject,3304,0,"Xray anode type","","","")//CID_xray_anode_type
	//KratosDSET_initaddobject(Dsetobject,3305,0,"Electron Gun excitation code","","","")//CID_egun_excitation_code
	//KratosDSET_initaddobject(Dsetobject,3306,0,"Electron Gun gun voltage control flag","","","")//CID_egun_gun_voltage_control_flag
	//KratosDSET_initaddobject(Dsetobject,3307,0,"Electron Gun gun current control flag","","","")//CID_egun_gun_current_control_flag
	//KratosDSET_initaddobject(Dsetobject,3308,0,"Lens array","","","")//CID_lens_array
	//KratosDSET_initaddobject(Dsetobject,3309,0,"Lens name","","","")//CID_lens_name
	//KratosDSET_initaddobject(Dsetobject,3310,0,"Lens unit number","","","")//CID_lens_unit_number
	//KratosDSET_initaddobject(Dsetobject,3311,0,"Lens polarity","","","")//CID_lens_polarity
	//KratosDSET_initaddobject(Dsetobject,3312,0,"Lens max voltage","","","")//CID_lens_max_voltage
	//KratosDSET_initaddobject(Dsetobject,3313,0,"Lens Information array","","","")//CID_lens_information_array
	//KratosDSET_initaddobject(Dsetobject,3314,0,"Lens Mode array","","","")//CID_lens_mode_array
	//KratosDSET_initaddobject(Dsetobject,3315,0,"Lens Mode","","","")//CID_lens_mode
	//KratosDSET_initaddobject(Dsetobject,3316,0,"Lens Resolution Array","","","")//CID_lens_resolution_array
	//KratosDSET_initaddobject(Dsetobject,3317,0,"Lens Energy offset","","","")//CID_lens_energy_offset
	//KratosDSET_initaddobject(Dsetobject,3318,0,"Lens unit functions","","","")//CID_lens_unit_functions
	//KratosDSET_initaddobject(Dsetobject,3319,0,"Lens Function Analyser Energy","","","")//CID_lens_analyser_energy
	//KratosDSET_initaddobject(Dsetobject,3320,0,"Lens Function Voltage","","","")//CID_lens_voltage
	//KratosDSET_initaddobject(Dsetobject,3321,0,"Analyser Resolutions FAT Flag","","","")//CID_analyser_resolution_fat_flags
	//KratosDSET_initaddobject(Dsetobject,3322,0,"Analyser Resolutions Value","","","")//CID_analyser_resolution_exact_values
	//KratosDSET_initaddobject(Dsetobject,3323,0,"Analyser Resolutions Offset","","","")//CID_analyser_resolution_offsets
	//KratosDSET_initaddobject(Dsetobject,3324,0,"Analyser Resolutions Gain","","","")//CID_analyser_resolution_gains
	//KratosDSET_initaddobject(Dsetobject,3325,0,"Analyser work function","","","")//CID_analyser_work_function
	//KratosDSET_initaddobject(Dsetobject,3326,0,"# detectors","","","")//CID_n_detectors
	//KratosDSET_initaddobject(Dsetobject,3327,0,"Detectors separation ratio","","","")//CID_detector_separation_ratio
	//KratosDSET_initaddobject(Dsetobject,3328,0,"Detectors channeltron voltages","","","")//CID_detector_channeltron_voltages
	//KratosDSET_initaddobject(Dsetobject,3329,0,"Configuration Option Toggle State","","","")//CID_config_option_state
	//KratosDSET_initaddobject(Dsetobject,3330,0,"Configuration VME baud rate","","","")//CID_vme_baud_rate
	//KratosDSET_initaddobject(Dsetobject,3331,0,"Configuration Host Serial Port","","","")//CID_host_serial_port
	//KratosDSET_initaddobject(Dsetobject,3332,0,"Configuration VME hostname","","","")//CID_vme_ethernet_hostname
	//KratosDSET_initaddobject(Dsetobject,3333,0,"Configuration Host/Slave Comms","","","")//CID_config_host_slave
	//KratosDSET_initaddobject(Dsetobject,3334,0,"Configuration Option Name","","","")//CID_option_name
	//KratosDSET_initaddobject(Dsetobject,3335,0,"Configuration Instrument","","","")//CID_config_instrument
	//KratosDSET_initaddobject(Dsetobject,3336,0,"K4 Vacuum Options","","","")//CID_k4_config_options
	//KratosDSET_initaddobject(Dsetobject,3337,0,"K4 Vacuum Fibre OpticSerial Port","","","")//CID_k4_serial_port
	//KratosDSET_initaddobject(Dsetobject,3338,0,"Lens Single PSU Options","","","")//CID_lens_single_psu_array
	//KratosDSET_initaddobject(Dsetobject,3339,0,"Lens first name","","","")//CID_lens_first_name
	//KratosDSET_initaddobject(Dsetobject,3340,0,"Lens PSU unit number","","","")//CID_lens_psu_unit_number
	//KratosDSET_initaddobject(Dsetobject,3341,0,"Lens PSU polarity","","","")//CID_lens_psu_polarity
	//KratosDSET_initaddobject(Dsetobject,3342,0,"Lens PSU range limit","","","")//CID_lens_psu_range_limit
	//KratosDSET_initaddobject(Dsetobject,3343,0,"Lens Magnification Options","","","")//CID_lens_magnifications
	//KratosDSET_initaddobject(Dsetobject,3344,0,"No. Fibre-Optic Timer/Counters","","","")//CID_No_optical_timer_counters
	//KratosDSET_initaddobject(Dsetobject,3345,0,"FAT Pass Energy Options","","","")//CID_fat_pass_energy_options
	//KratosDSET_initaddobject(Dsetobject,3346,0,"Exact Pass Energy","","","")//CID_exact_pass_energy
	//KratosDSET_initaddobject(Dsetobject,3347,0,"Pass Energy 25meV Offset","","","")//CID_pass_energy_25_offset
	//KratosDSET_initaddobject(Dsetobject,3348,0,"Pass Energy 25meV Gain","","","")//CID_pass_energy_25_gain
	//KratosDSET_initaddobject(Dsetobject,3349,0,"Pass Energy 50meV Offset","","","")//CID_pass_energy_50_offset
	//KratosDSET_initaddobject(Dsetobject,3350,0,"Pass Energy 50meV Gain","","","")//CID_pass_energy_50_gain
	//KratosDSET_initaddobject(Dsetobject,3351,0,"Pass Energy 100meV Offset","","","")//CID_pass_energy_100_offset
	//KratosDSET_initaddobject(Dsetobject,3352,0,"Pass Energy 100meV Gain","","","")//CID_pass_energy_100_gain
	//KratosDSET_initaddobject(Dsetobject,3353,0,"Retard Ratio Options","","","")//CID_frr_options
	//KratosDSET_initaddobject(Dsetobject,3354,0,"Exact Retard Ratio","","","")//CID_exact_retard_ratio
	//KratosDSET_initaddobject(Dsetobject,3355,0,"Retard Ratio 25meV Offset","","","")//CID_retard_ratio_25_offset
	//KratosDSET_initaddobject(Dsetobject,3356,0,"Retard Ratio 25meV Gain","","","")//CID_retard_ratio_25_gain
	//KratosDSET_initaddobject(Dsetobject,3357,0,"Retard Ratio 50meV Offset","","","")//CID_retard_ratio_50_offset
	//KratosDSET_initaddobject(Dsetobject,3358,0,"Retard Ratio 50meV Gain","","","")//CID_retard_ratio_50_gain
	//KratosDSET_initaddobject(Dsetobject,3359,0,"Retard Ratio 100meV Offset","","","")//CID_retard_ratio_100_offset
	//KratosDSET_initaddobject(Dsetobject,3360,0,"Retard Ratio 100meV Gain","","","")//CID_retard_ratio_100_gain
	//KratosDSET_initaddobject(Dsetobject,3361,0,"Work function","","","")//CID_work_function
	//KratosDSET_initaddobject(Dsetobject,3362,0,"HSA decrease Slew-rate","","","")//CID_hsa_decrease_slew_rate
	//KratosDSET_initaddobject(Dsetobject,3363,0,"HSA increase Slew-rate","","","")//CID_hsa_increase_slew_rate
	//KratosDSET_initaddobject(Dsetobject,3364,0,"HSA channel Settle-Time","","","")//CID_hsa_channel_settle_time
	//KratosDSET_initaddobject(Dsetobject,3365,0,"HSA 25 meV DAC enabled","","","")//CID_hsa_25meV_steps_enabled
	//KratosDSET_initaddobject(Dsetobject,3366,0,"Channeltrons PSU Options","","","")//CID_channeltron_psu_options
	//KratosDSET_initaddobject(Dsetobject,3367,0,"Channeltron PSU Limit","","","")//CID_channeltron_psu_limit
	//KratosDSET_initaddobject(Dsetobject,3368,0,"Channeltron PSU Values","","","")//CID_channeltron_psu_value
	//KratosDSET_initaddobject(Dsetobject,3369,0,"Manual Xray PSU Options","","","")//CID_manual_xray_psu_options
	//KratosDSET_initaddobject(Dsetobject,3370,0,"Manual PSU Anode","","","")//CID_manual_xray_psu_anode
	//KratosDSET_initaddobject(Dsetobject,3371,0,"Manual Xray PSU Fibre Optic Serial Port","","","")//CID_manual_xray_PSU_serial_port
	//KratosDSET_initaddobject(Dsetobject,3372,0,"Manual Xray PSU Ramp-Time","","","")//CID_manual_xray_PSU_ramp_time
	//KratosDSET_initaddobject(Dsetobject,3373,0,"HSA Detectors separation ratio","","","")//CID_hsa_detector_separation_ratio
	//KratosDSET_initaddobject(Dsetobject,3374,0,"HSA Standby Energy","","","")//CID_hsa_standby_energy
	//KratosDSET_initaddobject(Dsetobject,3375,0,"No. HSA Channeltron Detectors","","","")//CID_number_of_channeltrons
	//KratosDSET_initaddobject(Dsetobject,3376,0,"Channeltron Settle-Time",NaN,"s","","","")//CID_channeltron_settle_time
	//KratosDSET_initaddobject(Dsetobject,3377,0,"Channeltron Standby Voltage","","","")//CID_channeltron_standby_voltage
	//KratosDSET_initaddobject(Dsetobject,3378,0,"Channeltron Dead-Time","","","")//CID_channeltron_dead_time
	//KratosDSET_initaddobject(Dsetobject,3379,0,"ESCA decrease Slew-rate","","","")//CID_esca_decrease_slew_rate
	//KratosDSET_initaddobject(Dsetobject,3380,0,"ESCA increase Slew-rate","","","")//CID_esca_increase_slew_rate
	//KratosDSET_initaddobject(Dsetobject,3381,0,"ESCA channel Settle-Time","","","")//CID_esca_channel_settle_time
	//KratosDSET_initaddobject(Dsetobject,3382,0,"ESCA Standby Energy","","","")//CID_esca_standby_energy
	//KratosDSET_initaddobject(Dsetobject,3383,0,"ESCA Scan DAC Gain","","","")//CID_esca_scan_dac_gain
	//KratosDSET_initaddobject(Dsetobject,3384,0,"ESCA Scan DAC Offset","","","")//CID_esca_scan_dac_offset
	//KratosDSET_initaddobject(Dsetobject,3385,0,"ESCA Xray Anode Option","","","")//CID_esca_xray_anode
	//KratosDSET_initaddobject(Dsetobject,3386,0,"ESCA Manipulator Option","","","")//CID_esca_manipulator_option
	//KratosDSET_initaddobject(Dsetobject,3387,0,"HSA Lens Magnification Options","","","")//CID_hsa_lens_magnifications
	//KratosDSET_initaddobject(Dsetobject,3388,0,"HSA Lens Magnification Options","","","")//CID_hsa_lens_magn_option
	//KratosDSET_initaddobject(Dsetobject,3389,0,"MHSA Lens Magnification Options","","","")//CID_mhsa_lens_magnifications
	//KratosDSET_initaddobject(Dsetobject,3390,0,"MHSA Lens Magnification Options","","","")//CID_mhsa_lens_magnoption
	//KratosDSET_initaddobject(Dsetobject,3391,0,"Lens Magnification Scanning Enabled","","","")//CID_lens_scanning_enabled
	//KratosDSET_initaddobject(Dsetobject,3392,0,"Lens Magnification Full-Scale-Deflection","","","")//CID_lens_magn_fsd
	//KratosDSET_initaddobject(Dsetobject,3393,0,"Analyser Operating State Data","","","")//CID_analyser_operating_states
	//KratosDSET_initaddobject(Dsetobject,3394,0,"Analyser Scan Mode","","","")//CID_analyser_scan_mode
	//KratosDSET_initaddobject(Dsetobject,3395,0,"Acquisition Parameters","","","")//CID_acquisition_parameters
	//KratosDSET_initaddobject(Dsetobject,3396,0,"Lens Double PSU Options","","","")//CID_lens_double_psu_array
	//KratosDSET_initaddobject(Dsetobject,3397,0,"Lens second name","","","")//CID_lens_second_name
	//KratosDSET_initaddobject(Dsetobject,3398,0,"Channeltron Instrument Config","","","")//CID_channeltron_config
	//KratosDSET_initaddobject(Dsetobject,3399,0,"Channel-Plate PSU Limit","","","")//CID_channelplate_psu_limit
	//KratosDSET_initaddobject(Dsetobject,3400,0,"Channel-Plate PSU Values","","","")//CID_channelplate_psu_value
	//KratosDSET_initaddobject(Dsetobject,3401,0,"Channel-Plate PSU Standby","","","")//CID_channelplate_standby
	//KratosDSET_initaddobject(Dsetobject,3402,0,"Channel-Plate PSU Settle-Time","","","")//CID_channelplate_settle_time
	//KratosDSET_initaddobject(Dsetobject,3403,0,"ESCA Xray PSU Settle-Time","","","")//CID_esca_xray_settle_time	
	KratosDSET_initaddobject(Dsetobject,5587,0,"Transmission Function Object (ke,t)","","","TFO")//CID_transmission_function
	//KratosDSET_initaddobject(Dsetobject,5588,0,"Number of Limit Switches","","","")//CID_motor_no_limit_switches
	//KratosDSET_initaddobject(Dsetobject,5589,0,"Number of Calibration Switches","","","")//CID_motor_no_calib_switches
	//KratosDSET_initaddobject(Dsetobject,5590,0,"Negative-Limit Distance from origin","","","")//CID_motor_negative_limit
	//KratosDSET_initaddobject(Dsetobject,5591,0,"Positive-Limit Distancefrom origin","","","")//CID_motor_positive_limit
	//KratosDSET_initaddobject(Dsetobject,5592,0,"Number of Steps Per Unit for Motor Axis","","","")//CID_motor_steps_per_unit
	//KratosDSET_initaddobject(Dsetobject,5593,0,"Motor Set Number","","","")//CID_motor_group_number
	//KratosDSET_initaddobject(Dsetobject,5594,0,"Hardware motor number","","","")//CID_motor_hardware_motor_number
	//KratosDSET_initaddobject(Dsetobject,5595,0,"Motor Reverse Direction Flag","","","")//CID_motor_reverse_direction
	//KratosDSET_initaddobject(Dsetobject,5596,0,"Motor Start Speed","","","")//CID_motor_start_speed
	//KratosDSET_initaddobject(Dsetobject,5597,0,"Motor Final Speed","","","")//CID_motor_final_speed
	//KratosDSET_initaddobject(Dsetobject,5598,0,"Motor Acceleration","","","")//CID_motor_acceleration
	//KratosDSET_initaddobject(Dsetobject,5599,0,"Motor Manual Slow Speed","","","")//CID_motor_manual_slow_speed
	//KratosDSET_initaddobject(Dsetobject,5600,0,"Motor Manual Fast Speed","","","")//CID_motor_manual_fast_speed
	//KratosDSET_initaddobject(Dsetobject,5601,0,"Motor Creep Speed","","","")//CID_motor_creep_speed
	//KratosDSET_initaddobject(Dsetobject,5602,0,"Motor Creep Distance","","","")//CID_motor_creep_distance
	//KratosDSET_initaddobject(Dsetobject,5603,0,"Motor Backlash","","","")//CID_motor_backlash
	//KratosDSET_initaddobject(Dsetobject,5604,0,"Motor Calibration Switch Position","","","")//CID_motor_calib_switch_position
	//KratosDSET_initaddobject(Dsetobject,5605,0,"Motor Calibration Switch Backoff","","","")//CID_motor_calib_switch_backoff
	//KratosDSET_initaddobject(Dsetobject,5606,0,"Motor Move With Motor Set Allowed","","","")//CID_motor_move_with_motor_set_allowed
	//KratosDSET_initaddobject(Dsetobject,5607,0,"Motor Calibration Sequence Number","","","")//CID_motor_calibration_sequence_number
	//KratosDSET_initaddobject(Dsetobject,5608,0,"Stage Axes","","","")//CID_stage_axes
	//KratosDSET_initaddobject(Dsetobject,5609,0,"Aperture Motors","","","")//CID_aperture_motors
	//KratosDSET_initaddobject(Dsetobject,5610,0,"Motor Position Table","","","")//CID_motor_position_table
	//KratosDSET_initaddobject(Dsetobject,5611,0,"MHSA Lens Magnification Full-Scale-Deflection","","","")//CID_lens_mhsa_magn_fsd
	//KratosDSET_initaddobject(Dsetobject,5612,0,"X Shift between scanned and parallel images","","","")//CID_stigmatic_shift_x
	//KratosDSET_initaddobject(Dsetobject,5613,0,"Y Shift between scanned and parallel images","","","")//CID_stigmatic_shift_y
	//KratosDSET_initaddobject(Dsetobject,5614,0,"XPS framestore black-level [0,1]","","","")//CID_iman_framestore_black_level
	KratosDSET_initaddobject(Dsetobject,5615,35,"Transmission Function Kinetic Energy","","","trans_ke")//CID_transmission_ke
	KratosDSET_initaddobject(Dsetobject,5616,35,"Transmission Function Value","","","trans_val")//CID_transmission_value
	//KratosDSET_initaddobject(Dsetobject,5617,0,"ESCA sample information","","","")//CID_esca_sample_info
	//KratosDSET_initaddobject(Dsetobject,5618,0,"XPS Neutraliser Default Settings","","","")//CID_xps_neutraliser_default_settings
	//KratosDSET_initaddobject(Dsetobject,5619,0,"Electron Gun Operating Settings","","","")//CID_electron_gun_operating_settings
	//KratosDSET_initaddobject(Dsetobject,5620,0,"Electron Gun Beam Voltage Limits","","","")//CID_electron_gun_beam_voltage
	//KratosDSET_initaddobject(Dsetobject,5621,0,"Electron Gun Filament Current Limits","","","")//CID_electron_gun_filament_current
	//KratosDSET_initaddobject(Dsetobject,5622,0,"Electron Gun Emission Current Limits","","","")//CID_electron_gun_emission_current
	//KratosDSET_initaddobject(Dsetobject,5623,0,"Electron Gun Extractor Voltage Limits","","","")//CID_electron_gun_extractor_voltage
	//KratosDSET_initaddobject(Dsetobject,5624,0,"Electron Gun Suppressor Voltage Limits","","","")//CID_electron_gun_suppressor_voltage
	//KratosDSET_initaddobject(Dsetobject,5625,0,"Electron Gun Spot Size Lens Limits","","","")//CID_electron_gun_spot_size
	//KratosDSET_initaddobject(Dsetobject,5626,0,"Electron Gun Focus Lens Limits","","","")//CID_electron_gun_focus
	//KratosDSET_initaddobject(Dsetobject,5627,0,"Electron Gun Alignment Limits","","","")//CID_electron_gun_alignment
	//KratosDSET_initaddobject(Dsetobject,5628,0,"Electron Gun Stigmator Limits","","","")//CID_electron_gun_stigmator
	//KratosDSET_initaddobject(Dsetobject,5629,0,"SED Collector bias Limits","","","")//CID_SED_collector_bias
	//KratosDSET_initaddobject(Dsetobject,5630,0,"SED Multiplier bias Limits","","","")//CID_SED_multiplier_bias
	//KratosDSET_initaddobject(Dsetobject,5631,0,"SED Black Level Limits","","","")//CID_SED_black_level
	//KratosDSET_initaddobject(Dsetobject,5632,0,"Electron Gun Type","","","")//CID_electron_gun_type
	//KratosDSET_initaddobject(Dsetobject,5633,0,"SED Operating Modes","","","")//CID_sed_operating_modes
	//KratosDSET_initaddobject(Dsetobject,5634,0,"Slow-scan Geometry List","","","")//CID_slowscan_geometry
	//KratosDSET_initaddobject(Dsetobject,5635,0,"Slow-scan Full scan deflection","","","")//CID_slowscan_fsd
	//KratosDSET_initaddobject(Dsetobject,5636,0,"Accel EGUN PSU Fibre Optic Serial Port","","","")//CID_egun_accel_PSU_serial_port
	//KratosDSET_initaddobject(Dsetobject,5637,0,"Start Spellman Xray PSU Options","","","")//CID_spellman_xray_psu_options
	//KratosDSET_initaddobject(Dsetobject,5638,0,"Start Spellman Xray PSU bias Limit","","","")//CID_spellman_xray_psu_mono_bias_limit
	//KratosDSET_initaddobject(Dsetobject,5639,0,"ISS Bipolar relays enabled","","","")//CID_iss_bipolar_relays_enabled
	//KratosDSET_initaddobject(Dsetobject,5640,0,"Number of VME motor control cards","","","")//CID_no_vme_motor_controllers
	//KratosDSET_initaddobject(Dsetobject,5641,0,"VME motor control card number","","","")//CID_vme_motor_controller
	//KratosDSET_initaddobject(Dsetobject,5642,0,"ESCA Scan DAC Gain","","","")//CID_esca_res_dac_gain
	//KratosDSET_initaddobject(Dsetobject,5643,0,"ESCA Scan DAC Offset","","","")//CID_esca_res_dac_offset
	//KratosDSET_initaddobject(Dsetobject,5644,0,"ESCA Resolution Option","","","")//CID_esca_resolution_option
	//KratosDSET_initaddobject(Dsetobject,5645,0,"ESCA Calibrate Analyser","","","")//CID_esca_calibrate_analyser
	//KratosDSET_initaddobject(Dsetobject,5646,0,"XSAM Carousel Option","","","")//CID_xsam_carousel_option
	//KratosDSET_initaddobject(Dsetobject,5647,0,"Energy offset for mirror analyser","","","")//CID_mhsa_image_energy_offset
	//KratosDSET_initaddobject(Dsetobject,5648,0,"XSAM Carousel sample information","","","")//CID_xsam_carousel_sample_info
	//KratosDSET_initaddobject(Dsetobject,5649,0,"Sample Bar sample information","","","")//CID_sample_bar_sample_info
	//KratosDSET_initaddobject(Dsetobject,5650,0,"Stage Sequences of Moves","","","")//CID_stage_sequences
	//KratosDSET_initaddobject(Dsetobject,5651,0,"Stage Sequence name","","","")//CID_stage_sequence_name
	//KratosDSET_initaddobject(Dsetobject,5652,0,"Stage Sequence enabled","","","")//CID_stage_sequence_enabled
	//KratosDSET_initaddobject(Dsetobject,5653,0,"Motor Valve Interlock Flag","","","")//CID_motor_valve_interlock
	//KratosDSET_initaddobject(Dsetobject,5654,0,"Motor Valve Distance","","","")//CID_motor_valve_distance
	//KratosDSET_initaddobject(Dsetobject,5655,0,"ESCA Xray Max Accel HT","","","")//CID_esca_xray_maxHT_code
	//KratosDSET_initaddobject(Dsetobject,5656,0,"Engineer Mode Password","","","")//CID_engineer_mode_password
	//KratosDSET_initaddobject(Dsetobject,5657,0,"Engineer Mode Password Length","","","")//CID_engineer_mode_password_length
	//KratosDSET_initaddobject(Dsetobject,5658,0,"Sample Bias","","","")//CID_sample_bias
	//KratosDSET_initaddobject(Dsetobject,5659,0,"Sample bias Switch Fitted","","","")//CID_sample_bias_switch_fitted
	//KratosDSET_initaddobject(Dsetobject,5660,0,"Divide by 10 Box Fitted","","","")//CID_divide_by_10_fitted
	//KratosDSET_initaddobject(Dsetobject,5661,0,"Camera FSDs X","","","")//CID_camera_fsd_x
	//KratosDSET_initaddobject(Dsetobject,5662,0,"Not Used (but has been used)","","","")//CID_camera_2_fsd
	//KratosDSET_initaddobject(Dsetobject,5663,0,"Camera options","","","")//CID_camera_options
	//KratosDSET_initaddobject(Dsetobject,5664,0,"Rotation axis for v1","","","")//CID_rotation_axis_v1
	//KratosDSET_initaddobject(Dsetobject,5665,0,"Rotation axis for v2","","","")//CID_rotation_axis_v2
	//KratosDSET_initaddobject(Dsetobject,5666,0,"Registered Users","","","")//CID_user_list
	//KratosDSET_initaddobject(Dsetobject,5667,0,"User Name","","","")//CID_user_name
	//KratosDSET_initaddobject(Dsetobject,5668,0,"User Password","","","")//CID_user_password
	//KratosDSET_initaddobject(Dsetobject,5669,0,"STD Aperture Name for ESCA K1","","","")//CID_escak1_aperture_name_std
	//KratosDSET_initaddobject(Dsetobject,5670,0,"1000um Aperture Name for ESCA K1","","","")//CID_escak1_aperture_name_1000um
	//KratosDSET_initaddobject(Dsetobject,5671,0,"200um Aperture Name for ESCA K1","","","")//CID_escak1_aperture_name_200um
	//KratosDSET_initaddobject(Dsetobject,5672,0,"100um Aperture Name for ESCA K1","","","")//CID_escak1_aperture_name_100um
	//KratosDSET_initaddobject(Dsetobject,5673,0,"Polarity of Hardware Bit 15 SML_OR_MCR","","","")//CID_escak1_control_15
	//KratosDSET_initaddobject(Dsetobject,5674,0,"Polarity of Hardware Bit 16 MIRR_ERR","","","")//CID_escak1_control_16
	//KratosDSET_initaddobject(Dsetobject,5675,0,"Polarity of Hardware Bit 19 HV_OFF","","","")//CID_escak1_control_19
	//KratosDSET_initaddobject(Dsetobject,5676,0,"Delay Line Detector Imaging","","","")//CID_nicpu_detector_imaging
	//KratosDSET_initaddobject(Dsetobject,5677,0,"NICPU Motor Control Unit Option","","","")//CID_nicpu_motor_control_option
	//KratosDSET_initaddobject(Dsetobject,5678,0,"NICPU Analyser FRR Option","","","")//CID_nicpu_analyser_frr
	//KratosDSET_initaddobject(Dsetobject,5679,0,"NICPU Analyser ISS Option","","","")//CID_nicpu_analyser_iss
	//KratosDSET_initaddobject(Dsetobject,5680,0,"NICPU Analyser UPS Option","","","")//CID_nicpu_analyser_ups
	//KratosDSET_initaddobject(Dsetobject,5681,0,"NICPU Analyser TOF Option","","","")//CID_nicpu_analyser_tof
	//KratosDSET_initaddobject(Dsetobject,5682,0,"NICPU Magnet Unit Option","","","")//CID_nicpu_magnet_unit_option
	//KratosDSET_initaddobject(Dsetobject,5683,0,"NICPU Analyser Standby Energy","","","")//CID_nicpu_standby_energy
	//KratosDSET_initaddobject(Dsetobject,5684,0,"NICPU Analyser Maximum Energy","","","")//CID_nicpu_max_energy
	//KratosDSET_initaddobject(Dsetobject,5685,0,"Motor Half Step Flag","","","")//CID_motor_half_step
	//KratosDSET_initaddobject(Dsetobject,5686,0,"Motor Winding Phase Reversed Flag","","","")//CID_motor_winding_phase_reversed
	//KratosDSET_initaddobject(Dsetobject,5687,0,"NICPU Xray PSU Filaments","","","")//CID_nicpu_xray_psu_filaments
	//KratosDSET_initaddobject(Dsetobject,5688,0,"NICPU Xray PSU focus Limit","","","")//CID_nicpu_xray_psu_focus_voltage_limit
	//KratosDSET_initaddobject(Dsetobject,5689,0,"NICPU Xray PSU Anode Material","","","")//CID_nicpu_xray_psu_anode_material
	//KratosDSET_initaddobject(Dsetobject,5690,0,"NICPU Ion Gun PSU Condenser Max","","","")//CID_nicpu_ion_gun_psu_condenser_max
	//KratosDSET_initaddobject(Dsetobject,5691,0,"NICPU Ion Gun PSU Condenser Min","","","")//CID_nicpu_ion_gun_psu_condenser_min
	//KratosDSET_initaddobject(Dsetobject,5692,0,"NICPU Ion Gun PSU Objective Max","","","")//CID_nicpu_ion_gun_psu_objective_max
	//KratosDSET_initaddobject(Dsetobject,5693,0,"NICPU Ion Gun PSU Objective Min","","","")//CID_nicpu_ion_gun_psu_objective_min
	//KratosDSET_initaddobject(Dsetobject,5694,0,"NICPU Ion Gun Type","","","")//CID_nicpu_ion_gun_type
	//KratosDSET_initaddobject(Dsetobject,5695,0,"NICPU Ion Gun PSU Operating Settings","","","")//CID_nicpu_igun_operating_settings
	//KratosDSET_initaddobject(Dsetobject,5696,0,"NICPU XRay Gun PSU Focus Settings","","","")//CID_nicpu_xray_psu_spot_settings
	//KratosDSET_initaddobject(Dsetobject,5697,0,"NICPU Ion Gun PSU Filament Current Limit","","","")//CID_nicpu_igun_filament_current_limit
	//KratosDSET_initaddobject(Dsetobject,5698,0,"NICPU Delay Line Detector Rotation","","","")//CID_nicpu_detector_rotation
	//KratosDSET_initaddobject(Dsetobject,5699,0,"NICPU Delay Line Detector X Shear","","","")//CID_nicpu_detector_x_shear
	//KratosDSET_initaddobject(Dsetobject,5700,0,"NICPU Delay Line Detector Y Shear","","","")//CID_nicpu_detector_y_shear
	//KratosDSET_initaddobject(Dsetobject,5701,0,"NICPU Delay Line Detector X Offset","","","")//CID_nicpu_detector_x_offset
	//KratosDSET_initaddobject(Dsetobject,5702,0,"NICPU Delay Line Detector Y Offset","","","")//CID_nicpu_detector_y_offset
	//KratosDSET_initaddobject(Dsetobject,5703,0,"NICPU Delay Line Detector X Compression","","","")//CID_nicpu_detector_x_compression
	//KratosDSET_initaddobject(Dsetobject,5704,0,"NICPU Delay Line Detector Y Compression","","","")//CID_nicpu_detector_y_compression
	//KratosDSET_initaddobject(Dsetobject,5705,0,"Camera Centre","","","")//CID_camera_centre
	//KratosDSET_initaddobject(Dsetobject,5706,0,"NICPU Vacuum Serial Port","","","")//CID_nicpu_serial_port
	//KratosDSET_initaddobject(Dsetobject,5707,0,"NOVA Platen Control Option","","","")//CID_nova_platen_control
	//KratosDSET_initaddobject(Dsetobject,5708,0,"NOVA Platen Zone Limits","","","")//CID_nova_platen_zone_limits
	//KratosDSET_initaddobject(Dsetobject,5709,0,"NOVA Platen Zone Lower Limit","","","")//CID_nova_platen_zone_lower_limit
	//KratosDSET_initaddobject(Dsetobject,5710,0,"NOVA Platen Zone Upper Limit","","","")//CID_nova_platen_zone_upper_limit
	//KratosDSET_initaddobject(Dsetobject,5711,0,"Nova Platen Reference coordintates","","","")//CID_nova_platen_ref_coordinates
	//KratosDSET_initaddobject(Dsetobject,5712,0,"Delay line detector variant","","","")//CID_dld_detector_PSU_variant
	//KratosDSET_initaddobject(Dsetobject,5713,0,"NOVA Platen SAC Position","","","")//CID_nova_platen_sac_position
	//KratosDSET_initaddobject(Dsetobject,5714,0,"NOVA Platen XPS Position","","","")//CID_nova_platen_xps_position
	//KratosDSET_initaddobject(Dsetobject,5715,0,"NOVA Platen SEC Camera Position","","","")//CID_nova_platen_sec_camera_position
	//KratosDSET_initaddobject(Dsetobject,5716,0,"NICPU number of enabled detectors","","","")//CID_nicpu_number_of_enabled_detectors
	//KratosDSET_initaddobject(Dsetobject,5717,0,"Current Platen Configuration","","","")//CID_nova_platen_current_state
	//KratosDSET_initaddobject(Dsetobject,5718,0,"NICPU Vacuum Options","","","")//CID_nicpu_vacuum_config_options
	//KratosDSET_initaddobject(Dsetobject,5719,0,"NICPU Vacuum Chamber Style","","","")//CID_nicpu_vacuum_chamber_style
	//KratosDSET_initaddobject(Dsetobject,5720,0,"NICPU configuration data (private to NICPU)","","","")//CID_nicpu_private_info
	//KratosDSET_initaddobject(Dsetobject,5721,0,"NICPU Xray psu instrument type","","","")//CID_nicpu_xray_psu_instrument
	//KratosDSET_initaddobject(Dsetobject,5722,0,"Camera Type","","","")//CID_camera_type
	//KratosDSET_initaddobject(Dsetobject,5723,0,"PixeLINK Camera Serial Number","","","")//CID_pixelink_camera_serial_number
	//KratosDSET_initaddobject(Dsetobject,5724,0,"Coarse Image Rotation","","","")//CID_coarse_image_rotation
	//KratosDSET_initaddobject(Dsetobject,5725,0,"Mirror Image","","","")//CID_mirror_image
	//KratosDSET_initaddobject(Dsetobject,5726,0,"Nova gripper unload level","","","")//CID_nova_gripper_unload_level
	//KratosDSET_initaddobject(Dsetobject,5727,0,"Nova elevator level 1 content","","","")//CID_nova_elevator_level_1_content
	//KratosDSET_initaddobject(Dsetobject,5728,0,"Nova elevator level 2 content","","","")//CID_nova_elevator_level_2_content
	//KratosDSET_initaddobject(Dsetobject,5729,0,"Nova elevator level 3 content","","","")//CID_nova_elevator_level_3_content
	//KratosDSET_initaddobject(Dsetobject,5730,0,"Nova gripper content","","","")//CID_nova_gripper_content
	//KratosDSET_initaddobject(Dsetobject,5731,0,"PixeLINK exposure time","","","")//CID_pixelink_exposure_time
	//KratosDSET_initaddobject(Dsetobject,5732,0,"Array of acquisition settings: This should include analyser, Xray' PSU and energy region information","","","")//CID_acquisition_lookup_table
	//KratosDSET_initaddobject(Dsetobject,5733,0,"Analyser HT Decay Time Constant","","","")//CID_hsa_ht_decay_time
	//KratosDSET_initaddobject(Dsetobject,5734,0,"NICPU Motor Step Mode","","","")//CID_nicpu_motor_step_mode
	//KratosDSET_initaddobject(Dsetobject,5735,0,"NICPU Motor Holding Current","","","")//CID_nicpu_motor_holding_current
	//KratosDSET_initaddobject(Dsetobject,5736,0,"NICPU VM1 PLD Number","","","")//CID_nicpu_pld_option
	//KratosDSET_initaddobject(Dsetobject,5737,0,"DLD (NICPU) active","","","")//CID_DLD_signal_conditioning_PCB
	//KratosDSET_initaddobject(Dsetobject,5738,0,"Image stitching","","","")//CID_image_stitching
	//KratosDSET_initaddobject(Dsetobject,5739,0,"VME IP address or hostname","","","")//CID_vme_ethernet_address
	//KratosDSET_initaddobject(Dsetobject,5740,0,"Fine Image Rotation Enabled","","","")//CID_fine_rotation
	//KratosDSET_initaddobject(Dsetobject,5741,0,"Fine Image Rotation Angle","","","")//CID_fine_rotation_angle
	//KratosDSET_initaddobject(Dsetobject,5742,0,"Camera FSDs Y","","","")//CID_camera_fsd_y
	//KratosDSET_initaddobject(Dsetobject,5743,0,"5 Position Manual Zoom Lens Fitted","","","")//CID_5_position_manual_zoom_lens
	//KratosDSET_initaddobject(Dsetobject,5744,0,"Index into Camera FSDs X/Y of FSD currently applicable","","","")//CID_camera_fsd_index
	//KratosDSET_initaddobject(Dsetobject,5745,0,"Trim coil 3 illumination","","","")//CID_trim_coil_3_illumination
	//KratosDSET_initaddobject(Dsetobject,5746,0,"Trim coil 3 max illumination current","","","")//CID_trim_coil_3_max_illumination_current
	//KratosDSET_initaddobject(Dsetobject,5747,0,"NICPU XRay HT Ramp Step Time","","","")//CID_nicpu_xray_ht_ramp_step_time
	//KratosDSET_initaddobject(Dsetobject,5748,0,"PixeLINK gamma","","","")//CID_pixelink_gamma
	//KratosDSET_initaddobject(Dsetobject,5749,0,"Autofocus","","","")//CID_autofocus
	//KratosDSET_initaddobject(Dsetobject,5750,0,"Autofocus range","","","")//CID_autofocus_range
	//KratosDSET_initaddobject(Dsetobject,5751,0,"Autofocus accuracy","","","")//CID_autofocus_accuracy
	//KratosDSET_initaddobject(Dsetobject,5752,0,"Autofocus move x & y with z","","","")//CID_autofocus_move_xy_with_z
	//KratosDSET_initaddobject(Dsetobject,5753,0,"Autofocus dx/dz","","","")//CID_autofocus_xz_gradient
	//KratosDSET_initaddobject(Dsetobject,5754,0,"Autofocus dy/dz","","","")//CID_autofocus_yz_gradient
	//KratosDSET_initaddobject(Dsetobject,5755,0,"Trim coil 2 illumination","","","")//CID_trim_coil_2_illumination
	//KratosDSET_initaddobject(Dsetobject,5756,0,"Trim coil 2 max illumination current","","","")//CID_trim_coil_2_max_illumination_current
	//KratosDSET_initaddobject(Dsetobject,5757,0,"PixeLINK v3 red gain","","","")//CID_pixelink_v3_red_gain
	//KratosDSET_initaddobject(Dsetobject,5758,0,"PixeLINK v3 green gain","","","")//CID_pixelink_v3_green_gain
	//KratosDSET_initaddobject(Dsetobject,5759,0,"PixeLINK v3 blue gain","","","")//CID_pixelink_v3_blue_gain
	//KratosDSET_initaddobject(Dsetobject,5760,0,"NICPU XPS imaging pixel weights","","","")//CID_nicpu_xps_imaging_pixel_weights
	//KratosDSET_initaddobject(Dsetobject,5761,0,"NICPU XPS imaging flat field calibration object","","","")//CID_nicpu_xps_imaging_flat_field_calibration_object
	//KratosDSET_initaddobject(Dsetobject,5762,0,"DLD Detector PSU PCB Option","","","")//CID_dld_detector_psu_pcb_option
	//KratosDSET_initaddobject(Dsetobject,5763,0,"AES down scanning","","","")//CID_aes_down_scanning
	//KratosDSET_initaddobject(Dsetobject,5764,0,"NICPU Xray PSU Version","","","")//CID_nicpu_xray_psu_version
	//KratosDSET_initaddobject(Dsetobject,5765,0,"NICPU XRay HV PSU emission current software limit","","","")//CID_nicpu_xray_emission_current_software_limit
	//KratosDSET_initaddobject(Dsetobject,5766,0,"NICPU Xray Control Unit Version","","","")//CID_nicpu_xray_control_unit_version
	//KratosDSET_initaddobject(Dsetobject,5767,0,"ALIAS","","","")//ALIAS
	//KratosDSET_initaddobject(Dsetobject,5768,0,"ALIAS","","","")//ALIAS
	KratosDSET_initaddobject(Dsetobject,538971360,3,"NICPU Ion Gun PSU PAH Gun Mode","","","")//AID_nicpu_igun_pah_gun_mode
	KratosDSET_initaddobject(Dsetobject,538971367,3,"NICPU Ion Gun PSU PAH Action On Completion","","","")//AID_nicpu_igun_pah_action_on_completion
	//KratosDSET_initaddobject(Dsetobject,538971368,0,"NICPU PAH Ion Gun Manually Differentially Pumped","","","")//CID_nicpu_pah_manually_diff_pumped
	//KratosDSET_initaddobject(Dsetobject,538971369,0,"NICPU Elevator Controlled by Theta Z Buttons","","","")//CID_nicpu_elevator_controlled_by_theta_z
	KratosDSET_initaddobject(Dsetobject,542117083,5,"NICPU Ion Gun PSU PAH Wien Voltage","","","")//AID_nicpu_igun_pah_wien_voltage
	KratosDSET_initaddobject(Dsetobject,542117084,5,"NICPU Ion Gun PSU PAH Beam Bend Voltage","","","")//AID_nicpu_igun_pah_beam_bend_voltage
	//KratosDSET_initaddobject(Dsetobject,542117085,0,"NICPU Ion Gun PSU PAH Oven Temperature","","","")//AID_nicpu_igun_pah_oven_temperature
	//KratosDSET_initaddobject(Dsetobject,542117086,0,"NICPU Ion Gun PSU PAH Oven Ramp Rate","","","")//AID_nicpu_igun_pah_oven_ramp_rate
	//KratosDSET_initaddobject(Dsetobject,542117087,0,"Start Spellman X.Gun Anode HT Voltage Limit","","","")//AID_ss_xgun_anode_ht_voltage_limit
	//KratosDSET_initaddobject(Dsetobject,542117088,0,"NICPU X-Ray Gun Anode HT Voltage Limit","","","")//AID_nicpu_xgun_anode_ht_voltage_limit
	KratosDSET_initaddobject(Dsetobject,542117091,5,"NICPU Ion Gun PSU PAH Beam Monitor Current","","","")//AID_nicpu_igun_pah_beam_monitor_current
	//KratosDSET_initaddobject(Dsetobject,542117092,0,"NICPU Ion Gun PSU PAH Emission Current Hold Time","","","")//AID_nicpu_igun_pah_warm_up_emission_hold_time
	//KratosDSET_initaddobject(Dsetobject,542117093,0,"NICPU Ion Gun PSU PAH Temperature Hold Time","","","")//AID_nicpu_igun_pah_warm_up_temperature_hold_time
	//KratosDSET_initaddobject(Dsetobject,542117094,0,"NICPU Ion Gun PSU PAH Cool Down Time","","","")//AID_nicpu_igun_pah_cool_down_time
	//KratosDSET_initaddobject(Dsetobject,542117095,0,"NICPU PAH Ion Gun Oven Temperature Limit","","","")//CID_nicpu_pah_oven_temp_limit
	//KratosDSET_initaddobject(Dsetobject,542117096,0,"NICPU PAH Ion Gun PSU Argon Mode Operating Settings","","","")//CID_nicpu_pah_igun_pah_mode_operating_settings
end


static function KratosDSET_addnotestr(waves, name, str)
	wave waves
	string name
	string str
	if(strlen(str)>0)
		note waves, name+str
	endif
end


static function KratosDSET_addnotenum(waves, name, num)
	wave waves
	string name
	variable num
	if(numtype(num)==0)
		note waves, name+num2str(num)
	endif
end


static function KratosDSET_setnote(Dsetobject, data)
	struct KratosDsetobject &Dsetobject; wave data
	// creates notes from Dsetobject and saves it to wave "data"
	KratosDSET_addnotestr(data, "", Dsetobject.header)
	variable i=0
	for(i=0;i<dimsize(Dsetobject.IDlist,0);i+=1)
		if(Dsetobject.type[i]>9) // arrays of data and not notes
		elseif(Dsetobject.type[i]==6) // this is a string note
			KratosDSET_addnotestr(data, Dsetobject.name[i]+": ", cleanupname(Dsetobject.strvalue[i],0))
		else // numbers with units
			if(strlen(Dsetobject.strvalue[i])!=0) // number was a flag and its string value is now in strvalue
				if(strlen(Dsetobject.units[i]) !=0) // units exits
					KratosDSET_addnotestr(data, Dsetobject.name[i]+" ["+Dsetobject.units[i]+"]: ", Dsetobject.strvalue[i])
				else
					KratosDSET_addnotestr(data, Dsetobject.name[i]+": ", Dsetobject.strvalue[i])
				endif
			else // number is a real value and not a flag
				if(strlen(Dsetobject.units[i]) !=0) // units exits
					KratosDSET_addnotenum(data, Dsetobject.name[i]+" ["+Dsetobject.units[i]+"]: ", Dsetobject.numvalue[i])
				else
					KratosDSET_addnotenum(data, Dsetobject.name[i]+": ", Dsetobject.numvalue[i])
				endif
			endif
		endif
	endfor
end


static function /S KratosDSET_readstr(file)
	variable file
	variable num
	variable i=0
	string tmps=""
	Fbinread /U/B=2/F=3 file, num 	// how many chars
	for(i=0;i<num;i+=1)
		mybinreadBE(file, 3)			// skip first three chars (empty)
		tmps+= mybinreadBE(file, 1)	// read char
	endfor
	return tmps
end


static function KratosDSET_savewave(wavetosave, namewave, Dsetobject, scaleflag)
	wave wavetosave; string namewave; struct KratosDsetobject &Dsetobject; variable scaleflag
	
	variable i =0, j=0
	string tmps=namewave
	Make /O/R/N=(1)  $tmps /wave=savewave
	duplicate /O wavetosave, savewave
	KratosDSET_setnote(Dsetobject, savewave)
	if(scaleflag==0) // normal spectrum
		if(strsearch(Dsetobject.strvalue[KratosDSET_IDtopnt(Dsetobject, 5)],"Kinetic Energy",0)==0)	
			tmps=Dsetobject.strvalue[KratosDSET_IDtopnt(Dsetobject, 6)]
			if (posbinde == 0)
				SetScale/P  x,-str2num(Dsetobject.strvalue[KratosDSET_IDtopnt(Dsetobject, 3080)])+Dsetobject.numvalue[KratosDSET_IDtopnt(Dsetobject, 3)],Dsetobject.numvalue[KratosDSET_IDtopnt(Dsetobject, 4)], tmps, savewave
			else
				SetScale/P  x,str2num(Dsetobject.strvalue[KratosDSET_IDtopnt(Dsetobject, 3080)])-Dsetobject.numvalue[KratosDSET_IDtopnt(Dsetobject, 3)],-Dsetobject.numvalue[KratosDSET_IDtopnt(Dsetobject, 4)], tmps, savewave
			endif
		else
			//????
			tmps=Dsetobject.strvalue[KratosDSET_IDtopnt(Dsetobject, 6)]
			SetScale/P  x,Dsetobject.numvalue[KratosDSET_IDtopnt(Dsetobject, 3)],Dsetobject.numvalue[KratosDSET_IDtopnt(Dsetobject, 4)], tmps, savewave
		endif
		// normalize countrate
		if(CB_DivScans==1)
			savewave/=(Dsetobject.numvalue[KratosDSET_IDtopnt(Dsetobject, 99)])
		endif
		
		if(CB_DivLifeTime==1)
			savewave/=(Dsetobject.numvalue[KratosDSET_IDtopnt(Dsetobject, 7)])
		endif
	elseif(scaleflag==2) // mapping image
		i = Dsetobject.numvalue[KratosDSET_IDtopnt(Dsetobject, 26)]
		j= Dsetobject.numvalue[KratosDSET_IDtopnt(Dsetobject, 25)]
		tmps = "imagetemp"
		make/O /N=(j,i) $tmps /wave=imagetemp
		for(i=0;i<Dsetobject.numvalue[KratosDSET_IDtopnt(Dsetobject, 26)];i+=1)
			for(j=0;j<Dsetobject.numvalue[KratosDSET_IDtopnt(Dsetobject, 25)];j+=1)
				imagetemp[j][i]=savewave[i*Dsetobject.numvalue[KratosDSET_IDtopnt(Dsetobject, 25)]+j]
			endfor
		endfor
		duplicate /O imagetemp, savewave
		tmps=Dsetobject.strvalue[KratosDSET_IDtopnt(Dsetobject, 6)]
		SetScale/P  x,Dsetobject.numvalue[KratosDSET_IDtopnt(Dsetobject, 3001)], Dsetobject.numvalue[KratosDSET_IDtopnt(Dsetobject, 3003)], tmps, savewave
		SetScale/P  y,Dsetobject.numvalue[KratosDSET_IDtopnt(Dsetobject, 3002)], Dsetobject.numvalue[KratosDSET_IDtopnt(Dsetobject, 3004)], tmps, savewave
		killwaves imagetemp
	endif
end


static function KratosDSET_saveobject(Dsetobject)
	struct KratosDsetobject &Dsetobject
	string tmps=Gtmpwavename+Dsetobject.nameofdatawave[KratosDSET_IDtopnt(Dsetobject, 12)]
	variable len=16	
	Dsetobject.objectname=cleanupname(Dsetobject.objectname,0)
	Debugprintf2("...exporting: "+Dsetobject.objectname,0)
	String savedDataFolder = GetDataFolder(1)
	SetDataFolder directory
	string tmpwavelist = WaveList(Gtmpwavename+"*", ";", "")
	string tmpwave = ""
	variable i=0
	for(i=0;i<ItemsInList(tmpwavelist,";");i+=1)
		tmpwave = StringFromList(i,tmpwavelist,";")
		SetDataFolder directory
		wave twave = $tmpwave
		SetDataFolder savedDataFolder
		if(cmpstr(tmps,tmpwave,1)==0) // detector (12 - ordwave) or something else
			if(Dsetobject.numvalue[KratosDSET_IDtopnt(Dsetobject, 2)]==2) // F_mapping
				KratosDSET_savewave(twave, shortname(Dsetobject.objectname, len)+"_"+num2str(Dsetobject.id)+dsetobject.appendtodetector, Dsetobject, 2)
			else // normal 1D spectra
				KratosDSET_savewave(twave, shortname(Dsetobject.objectname, len)+"_"+num2str(Dsetobject.id)+dsetobject.appendtodetector, Dsetobject, 0)
			endif
		else
			if(justdetector==0)
				KratosDSET_savewave(twave, shortname(Dsetobject.objectname, len)+"_"+num2str(Dsetobject.id)+"_"+ReplaceString(Gtmpwavename,tmpwave,""), Dsetobject, -1)
			endif
			//Debugprintf2("Data wave "+tmpwave+" not known! Just killing it!",0)
		endif
		killwaves twave
	endfor
end


static function KratosDSET_getmarkers(file, markercount, nextlist, blockend,Dsetobject)
	variable file; variable &markercount // counter for the markers, for -1 the end of the object block is reached
	wave nextlist; variable blockend; struct KratosDsetobject &Dsetobject
	// 3 x NULL --> beginning of new object
	// 2 x NULL --> end of object
	Fstatus file
	variable oldposition = V_filePOS
	variable t1=-1, t2=-1, t3=-1, t4=-1, tmp=0
	FindValue /V=(V_filePOS) nextlist
	if((blockend-oldposition)<0) // end of block --> no markers
		return -1
	elseif((blockend-oldposition)==0 || V_logEOF==V_filePOS+1*4)					// only a } possible
		Fbinread /U/B=2/F=3 file, t1
	elseif((blockend-oldposition)==1*4)												 // a { is not possible
		Fbinread /U/B=2/F=3 file, t1
		Fbinread /U/B=2/F=3 file, t2
		//t1=-1 // or not???
	elseif((blockend-oldposition)==2*4 || V_logEOF==V_filePOS+3*4 || V_value != -1) // a }} is possible
		Fbinread /U/B=2/F=3 file, t1
		Fbinread /U/B=2/F=3 file, t2
		Fbinread /U/B=2/F=3 file, t3
	else
		Fbinread /U/B=2/F=3 file, t1
		Fbinread /U/B=2/F=3 file, t2
		Fbinread /U/B=2/F=3 file, t3
		Fbinread /U/B=2/F=3 file, t4
	endif

	if(t1==0 && t2==0 && t3 == 0 && t4 ==0)	//}{
		Debugprintf2("}{ at pos: "+num2str(oldposition-4),1)
		markercount+=0
		Dsetobject.IDchain = RemoveListItem(0, Dsetobject.IDchain)
		Dsetobject.IDchain = AddListItem(Dsetobject.lastID, Dsetobject.IDchain, ";", 0)
		return 1
	elseif(t1==0 && t2==0 && t3 == 0)			// }}
		Fsetpos file, oldposition+12
		Debugprintf2("}} at pos: "+num2str(oldposition-4),1)
		markercount-=2
		Dsetobject.IDchain = RemoveListItem(0, Dsetobject.IDchain)
		Dsetobject.IDchain = RemoveListItem(0, Dsetobject.IDchain)
		return 1
	elseif(t1==0 && t2==0)						// {
		Fsetpos file, oldposition+8
		Debugprintf2("{ at pos: "+num2str(oldposition-4),1)
		markercount+=1
		Dsetobject.IDchain = AddListItem(Dsetobject.lastID, Dsetobject.IDchain, ";", 0)
		return 1
	elseif(t1==0)									// }
		Fsetpos file, oldposition+4
		Debugprintf2("} at pos: "+num2str(oldposition-4),1)
		Dsetobject.IDchain = RemoveListItem(0, Dsetobject.IDchain)
		markercount-=1
		return 1
	else
		Fsetpos file, oldposition
		return -1
	endif
end


static function KratosDSET_read_object_list(file, Dsetobjectlist)
	variable file; struct KratosDsetobjectlist &Dsetobjectlist

	string tmps= ""
	// initialize Dsetobjectlist
	tmpS = directory+":object_offsets" ; Make /O/D/N=(Dsetobjectlist.maxobjects,4) $tmpS ; wave Dsetobjectlist.object_offsets = $tmpS
	tmpS = directory+":object_name" ; Make /O/T/N=(Dsetobjectlist.maxobjects,3) $tmpS ; wave /T Dsetobjectlist.object_name = $tmpS
	tmpS = directory+":object_nextlist" ; Make /O/D/N=(ceil(Dsetobjectlist.maxobjects/64)) $tmpS ; wave Dsetobjectlist.object_nextlist = $tmpS
	Dsetobjectlist.object_offsets = 0
	Dsetobjectlist.object_nextlist = 0
	Dsetobjectlist.object_name = ""
	Dsetobjectlist.loaded = 0

	variable nextoffsetblock = 1
	variable i = 0
	do 
		Fbinread /U/B=2/F=3 file, nextoffsetblock // absolute offset to next offsetblock
		sprintf tmps, "%08.0f", nextoffsetblock ; Debugprintf2("Next offset block at: "+tmps,1)
		if(nextoffsetblock!=0)
			Dsetobjectlist.object_nextlist[i]=nextoffsetblock
		else
			Dsetobjectlist.object_nextlist[i]=-1 // just in case 
		endif
		i+=1
		KratosDSET_read_object_list_s(file, Dsetobjectlist)
		Dsetobjectlist.loaded += 64
		if(nextoffsetblock!=0)
			Fsetpos file, nextoffsetblock
		else
			//???? break
		endif
	while(nextoffsetblock != 0)
end


static function KratosDSET_read_object_list_s(file, Dsetobjectlist)
	variable file; struct KratosDsetobjectlist &Dsetobjectlist

	variable tmp=0, i=0, j=0
	string tmps=""
	i=Dsetobjectlist.loaded
	do
		Fbinread /U/B=2/F=2 file, tmp ;  Dsetobjectlist.object_offsets[i][2]=tmp
		Fbinread /U/B=2/F=2 file, tmp ;  Dsetobjectlist.object_offsets[i][3]=tmp
		tmp = WhichListItem(num2str(Dsetobjectlist.object_offsets[i][2]), offsetsname1_flags)
		if(tmp!=-1)
			Dsetobjectlist.object_name[i][1]=StringFromList(tmp,offsetsname1_value)
		else
			Fstatus file
			Debugprintf2("Unknown offsetparam #1 "+num2str(Dsetobjectlist.object_offsets[i][2])+" at position "+num2str(V_filePOS)+". Please check with kal and add to script! (ID: "+num2str(i+1)+")",1)
			Dsetobjectlist.object_name[i][1]="UNKNOWN"
		endif
		tmp = WhichListItem(num2str(Dsetobjectlist.object_offsets[i][3]), offsetsname2_flags)
		if(tmp!=-1)
			Dsetobjectlist.object_name[i][2]=StringFromList(tmp,offsetsname2_value)
		else
			Fstatus file
			Debugprintf2("Unknown offsetparam #2 "+num2str(Dsetobjectlist.object_offsets[i][2])+" at position "+num2str(V_filePOS)+". Please check with kal and add to script! (ID: "+num2str(i+1)+")",1)
			Dsetobjectlist.object_name[i][2]="UNKNOWN"
		endif
		// now the name of the Block
		tmps=""
		for(j=0;j<4*4;J+=1)
			tmps+=mybinreadBE(file,1) //name of object
		endfor
		Dsetobjectlist.object_name[i][0]=tmps
		Fbinread /U/B=2/F=3 file, tmp ; Dsetobjectlist.object_offsets[i][0]=tmp		// absolute offset of block
		Fbinread /U/B=2/F=3 file, tmp; Dsetobjectlist.object_offsets[i][1]=tmp		// and again
		if(Dsetobjectlist.object_offsets[i][0]!=Dsetobjectlist.object_offsets[i][1])
			Fstatus file
			sprintf tmps, "Position %08.0f ( %08.0f and %08.0f )", V_filePOS, (Dsetobjectlist.object_offsets[i][0]), (Dsetobjectlist.object_offsets[i][1]) ; Debugprintf2("Object "+num2str(i+1)+" is split into two parts: "+Dsetobjectlist.object_name[i][0],0)
		endif
		Debugprintf2(num2str(i+1)+"; "+num2str(Dsetobjectlist.object_offsets[i][0])+" ; "+num2str(Dsetobjectlist.object_offsets[i][1])+" ; "+num2str(Dsetobjectlist.object_offsets[i][2])+" ; "+num2str(Dsetobjectlist.object_offsets[i][3])+" ; "+Dsetobjectlist.object_name[i],1)
		fstatus file
		i+=1
	while (V_logEOF>V_filePOS && i< Dsetobjectlist.loaded +64 && i < Dsetobjectlist.maxobjects)  
end


static function KratosDSET_readblock(file, Dsetobject, Dsetobjectlist)
	variable file; struct KratosDsetobject &Dsetobject; struct KratosDsetobjectlist &Dsetobjectlist
	variable ID = 0, markercount=0, blocklength = 0
	string tmps=""
	Fstatus file
	variable offlast=V_filePOS//variable offlast=offsets[currentobject][0]
	if(Dsetobjectlist.object_offsets[Dsetobjectlist.currentobject][0]!=offlast)
		if(Dsetobjectlist.object_offsets[Dsetobjectlist.currentobject][1]!=offlast)
			print "Error in object offsets!!!!"
			return -1
		endif
	endif
	Debugprintf2("New block begins (ID: "+num2str(Dsetobjectlist.currentobject+1)+")",1)
	// read a 4byte uint which contains an object-ID or the ID of the next object block
	Fbinread /U/B=2/F=3 file, blocklength		// first line contains the length of the block
	Fbinread /U/B=2/F=3 file, Dsetobject.id	// second line of the block contains the block-id
	Dsetobject.objectname = Dsetobjectlist.object_name[Dsetobjectlist.currentobject]
	if(Dsetobject.id !=Dsetobjectlist.currentobject+1)
		Debugprintf2("ID and block number are different: "+num2str(Dsetobjectlist.currentobject+1)+" <> "+num2str(Dsetobject.id),0)
		return -1
	endif
	mybinreadBE(file,2*4) // now two empty words (2*4 bytes) should follow ( somehow a "{" )
	Debugprintf2("Number of next spectrum: "+num2str(Dsetobject.id),1)
	Debugprintf2("Size of next Block in bytes: "+num2str(blocklength),1)
	sprintf tmps, "%08.0f", offlast ; Debugprintf2("Current Pos in bytes: "+tmps,1)
	do
		// read object ID
		Fbinread /U/B=2/F=3 file, ID 
		if(KratosDSET_checkID(file, Dsetobject, ID)!=0)
				// check if this is a marker in case ID==0, otherwise unknown ID or a wrong datatype in one ID
				Fstatus file
				if(ID==0) // maybe a marker
					if(KratosDSET_getmarkers(file, markercount, Dsetobjectlist.object_nextlist, blocklength+offlast,Dsetobject)!=1)
						// found no markers
						sprintf tmps, "%10.0f", (V_filePOS-4) ; Debugprintf2("Unknown value at position1: "+tmps+" ; Value: "+num2str(ID)+" ; ID: "+num2str(Dsetobjectlist.currentobject+1),0)
						break
					else 
						// found markers
					endif
					//print Dsetobject.IDchain
				else
					//printf "%10.0f", ID
					sprintf tmps, "%10.0f", (V_filePOS-4) ; Debugprintf2("Unknown value at position2: "+tmps+" ; Value: "+num2str(ID)+" ; ID: "+num2str(Dsetobjectlist.currentobject+1),0)
				endif
		endif
		Fstatus file
		if(offlast+blocklength<=V_filePOS  && markercount <0)
			// reached end of block
			break
		endif
	while (V_logEOF>V_filePOS)
	return 0
end


static function /S KratosDSET_readcomment(file,endpos)
	variable file; variable endpos
	string comment = ""
	variable tmp = 0
	do
	 	FBinRead/f=1/u file, tmp
	 	if(tmp!=0)
			Fstatus file
			fsetpos file , V_filepos-1
			comment += mybinreadBE(file, 1)
	 	endif
		Fstatus file
	while(V_filepos<endpos)
	return comment
end


static function KratosDSET_cleanup()
	String savedDataFolder = GetDataFolder(1)
	SetDataFolder directory
	string tmpwavelist = WaveList("*", ";", "")
	variable i=0
	for(i=0;i<ItemsInList(tmpwavelist,";");i+=1)
		killwaves $(StringFromList(i,tmpwavelist,";"))
	endfor
	SetDataFolder savedDataFolder
end


static function KratosDSET_read_header(file, Dsetobjectlist)
	variable file; struct KratosDsetobjectlist &Dsetobjectlist

	variable tmp, majorrelease, magicnumber, offsetdynamic0, offsetdynamic1, offsetdynamic0len, offsetcomments
	string tmps = ""
	// reading header
	Fbinread /U/B=2/F=3 file, magicnumber 					// 1st line - magic number (56833)
	Fbinread /U/B=2/F=3 file, majorrelease 					// 2nd line - major release number (2) -  possible the major release number of the Vision software
	Fbinread /U/B=2/F=3 file, offsetcomments					// 3rd line - random number; comments ???
	Fbinread /U/B=2/F=3 file, offsetdynamic0					// 4th line - offset to a dynamic offset for offsetblocks
	Fbinread /U/B=2/F=3 file, Dsetobjectlist.startofobjectlist	// 5th line - offset to a first object list block (1036)
	Fbinread /U/B=2/F=3 file, Dsetobjectlist.maxobjects		// 6th line - number of actual number of blocks (max offsets; how many offsets (objectblocks) do we actually have)

	if(majorrelease!=2 || magicnumber!=56833 || Dsetobjectlist.maxobjects==0)
		//Debugprintf2("Major release 2 expected; got "+num2str(majorrelease),0)
		//Debugprintf2("Wrong magic number!!",0)
		Debugprintf2("No objects to read or wrong header!",0)
		return -1
	endif

	//comments to folllow??? // using offset2 which seems to give evidence of comment chars
	for(tmp=0;tmp<(offsetcomments-(Dsetobjectlist.maxobjects));tmp+=1)
		Debugprintf2("Comment?: "+mybinreadBE(file,1)+"#",1)
	endfor
	// here comes the real comment (does it always start at 360 ???)
	print "Comment: "+ KratosDSET_readcomment(file, offsetdynamic0)
	
	// jump to the very first offsetblock
	Fsetpos file, offsetdynamic0
	Fbinread /U/B=2/F=3 file, offsetdynamic1		// two times the offset where Vision will add new offsets??? + offset4(12)???
	Fbinread /U/B=2/F=3 file, tmp

	if(offsetdynamic1!=tmp)
		Debugprintf2("Offsets differ: "+num2str(offsetdynamic1)+" <> "+num2str(tmp),0)
	elseif(offsetdynamic1!=1024)
		sprintf tmps, "%08.0f", offsetdynamic1 ; Debugprintf2("Check what this offset could be (+12?):  "+tmps,0) // does it somehow correspond to the fileend --> where to add the next offsetsblock???? (12 --> length of 1024 block --> 3*4 bytes --> double offset and length)
	endif
	Fbinread /U/B=2/F=3 file, offsetdynamic0len // offset0+offset4 ==offset = 1024+12==1036
	if(offsetdynamic0+offsetdynamic0len!=Dsetobjectlist.startofobjectlist)
		Debugprintf2("Something is different here: "+num2str(offsetdynamic0)+" + "+num2str(offsetdynamic0len)+" <> "+num2str(Dsetobjectlist.startofobjectlist),0)
	endif

	//print "Take a deeper look!!! This is not yet finsished!!!!" // did I include this somewhere else already????
	//Fsetpos file, offsetdynamic1
	//KratosDSET_read_object_list2nd(file)
end


function KratosDSET_load_data_info(importloader)
	struct importloader &importloader
	importloader.name = "Kratos Vision DSET"
	importloader.filestr = "*.dset"
	importloader.category = "PES"
end

// 4byte unsingned int in big-endian (because of sunos --> Sparc)
function KratosDSET_load_data([optfile])
	variable optfile
	optfile = paramIsDefault(optfile) ? -1 : optfile
	struct importloader importloader
	KratosDSET_load_data_info(importloader)
	if(loaderstart(importloader, optfile=optfile)!=0)
		return -1
	endif
	string header = importloader.header
	variable file = importloader.file

	string tmps = ""

	//print KratosDSET_check_checksum(file)

	struct KratosDsetobject Dsetobject
	struct KratosDsetobjectlist Dsetobjectlist
	KratosDSET_resetDsetobject(Dsetobject)
	Dsetobject.header= header


	Dsetobject.appendtodetector = "_detector"
	if(askforappenddet)
		tmps = Dsetobject.appendtodetector
		prompt tmps, "What string to append to detector spectra?"
		doprompt "Import flags!", tmps
		if(V_flag==1)
			Debugprintf2("Cancel import!",0)
			loaderend(importloader)
			return -1
		endif
		Dsetobject.appendtodetector = tmps
	endif

	// read file header
	if(KratosDSET_read_header(file, Dsetobjectlist)==-1)
		Debugprintf2("No blocks to import!",0)
		loaderend(importloader)
		return -1
	endif	
	
	// jump to first offsetblock and get read offsetblocks
	Fsetpos file, Dsetobjectlist.startofobjectlist // from 5th 4byte block at the beginning of file
	KratosDSET_read_object_list(file, Dsetobjectlist)

	// goto first object block and start reading the objects
	Dsetobjectlist.currentobject = 0
	Fsetpos file, Dsetobjectlist.object_offsets[Dsetobjectlist.currentobject][0]
	do
		// read object block
		if(KratosDSET_readblock(file, Dsetobject, Dsetobjectlist)==-1)
			break
		endif
		// in some cases an object is split into two parts
		if(Dsetobjectlist.object_offsets[Dsetobjectlist.currentobject][0]!=Dsetobjectlist.object_offsets[Dsetobjectlist.currentobject][1])
			Debugprintf2("Reading second part of Object with ID: "+num2str(Dsetobjectlist.currentobject+1),0)
			Fsetpos file, Dsetobjectlist.object_offsets[Dsetobjectlist.currentobject][1]
			if(KratosDSET_readblock(file, Dsetobject, Dsetobjectlist)==-1)
				break
			endif
		endif
		// save the data
		KratosDSET_saveobject(Dsetobject)			// save data and
		KratosDSET_resetDsetobject(Dsetobject)	// clean structure for next block
		// goto next object block position
		if(Dsetobjectlist.currentobject<Dsetobjectlist.maxobjects - 1 && Dsetobjectlist.object_offsets[Dsetobjectlist.currentobject+1][0]!=0)
			// just go to beginning next block
			Dsetobjectlist.currentobject+=1
			fsetpos file, Dsetobjectlist.object_offsets[Dsetobjectlist.currentobject][0]
			// and continue
		else
			// last block was read
			Fstatus file
			sprintf tmps, "%08.0f", V_filePOS ;  Debugprintf2("Reached end of file at position: "+tmps,0)
			break
		endif
		Fstatus file
	while (V_logEOF>V_filePOS)  
	
	// remove temporary waves
	KratosDSET_cleanup()
	// more cleanup
	importloader.success = 1
	loaderend(importloader)
end
