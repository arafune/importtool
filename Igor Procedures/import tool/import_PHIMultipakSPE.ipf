// Licence: Lesser GNU Public License 2.1 (LGPL)
#pragma rtGlobals=3		// Use modern global access method and strict wave access.

// based on http://www.igorexchange.com/node/5692

static structure phiheader
	variable energy
	variable Ta
	variable Tb

	variable NoSpectralReg
	struct SpectralRegDef SpectralRegDef[100]

	variable NoSpatialArea
	struct SpatialAreaDef  SpatialAreaDef[100]
	struct SpatialAreaDesc SpatialAreaDesc[100]
	struct SpatialHRPhotoCor SpatialHRPhotoCor[100]
endstructure


static structure SpectralRegDef
	variable num1
	variable num2
	string name
	variable PHI_AtomicNumber
	variable points
	variable step
	variable start1
	variable ende1
	variable start2
	variable ende2
	variable dwelltime //collection time
	variable Epass
	string str
	struct spectraheader header
endstructure


static structure SpatialAreaDef

endstructure


static structure SpatialAreaDesc

endstructure


static structure SpatialHRPhotoCor

endstructure


static structure keyval
	string key
	string val
endstructure

static structure spectraheaderall
	struct spectraheader header[100]
endstructure

static structure binheader
	uint32 group //??
	uint32 numspectra
	uint32 datalen2 //length of spectraheader (4*24*numspectra)
	uint32 datalen1 //length of binheader
endstructure

static structure spectraheader
	uint32 spectranum
	uint32 bool1
	uint32 bool2
	uint32 spectranum2
	uint32 bool4
	uint32 points // // compare to SpectralRegDef..points
	uint32 bool5
	uint32 bool6
	char char1[4] // chn
	uint32 num8
	char char2[4] // sar
	uint32 num10
	uint32 num11
	uint32 num12
	uchar yunit[4] // c/s; 
	uint32 num14
	uint32 num15
	uint32 num16
	char datatype[4] //f4 --> float; f8 --> double
	uint32 datalen // points * datatype (bytes)
	uint32 datastart // start of datablock
	uint32 num20
	uint32 num21
	uint32 offset2 // start off additional information
endstructure


static function /S phimultipak_getparams(str, keyval)
	string str
	struct keyval &keyval
	keyval.key = ""
	keyval.val = ""
	str = stripstrfirstlastspaces(str)
	if(strsearch(str,":",0)!=-1)
		keyval.key = 	stripstrfirstlastspaces(str[0,strsearch(str,":",0)-1])
		keyval.val = stripstrfirstlastspaces(str[strsearch(str,":",0)+1, inf])
	elseif(strlen(str)!=0)
		keyval.key = str
	endif
end


function phimultipak_check_file(file)
	variable file
	fsetpos file, 0
	string tmps = mycleanupstr(myreadline(file))
	if(cmpstr(tmps, "SOFH")!=0)
		fsetpos file, 0
		return -1	
	endif
	tmps = mycleanupstr(myreadline(file))
	if(strsearch(tmps, "Platform",0)!=0)
		fsetpos file, 0
		return -1	
	endif
	tmps = mycleanupstr(myreadline(file))
	if(strsearch(tmps, "Technique",0)!=0)
		fsetpos file, 0
		return -1	
	endif
	tmps = mycleanupstr(myreadline(file))
	if(strsearch(tmps, "FileType",0)!=0)
		fsetpos file, 0
		return -1	
	endif
	fsetpos file, 0
	return 1
end


function phimultipak_load_data_info(importloader)
	struct importloader &importloader
	importloader.name = "Multipak files"
	importloader.filestr = "*.spe"
	importloader.category = "PES"
end


Function phimultipak_load_data([optfile])
	variable optfile
	optfile = paramIsDefault(optfile) ? -1 : optfile
	struct importloader importloader
	phimultipak_load_data_info(importloader)
	if(loaderstart(importloader, optfile=optfile)!=0)
		return -1
	endif
	string header = importloader.header
	variable file = importloader.file

	struct phiheader phiheader
	struct keyval keyval
	variable run = 1
	
	// reading the ascii header
	do
		phimultipak_getparams(mycleanupstr(myreadline(file)), keyval)
		strswitch(keyval.key)
			case "Platform":
				header += "\rPlatform: "+keyval.val
				break
			case "Technique":
				header += "\rtechnique: "+keyval.val
				strswitch(keyval.val)
					case "XPS":
						break
					case "AES":
						break
					default:
						Debugprintf2("Technique "+keyval.val+" not supported yet!",0)
						//loaderend(impname,1,file, dfSave)
						//return -1
						break
				endswitch
				break
			case "FileType":
				header += "\rFiletype: "+keyval.val
				break
			case "FileDesc":
				header += "\rFileDesc: "+keyval.val
				break
			case "SoftwareVersion":
				header += "\rSoftwareVersion: "+keyval.val
				break
			case "InstrumentModel":
				header += "\rInstrumentModel: "+keyval.val
				break
			case "Institution":
				header += "\rInstitution: "+keyval.val
				break
			case "FileDate":
				header += "\rFileDate: "+keyval.val
				break
			case "AcqFileDate":
				header += "\rAcqFileDate: "+keyval.val
				break
			case "AcqFilename":
				header += "\rAcqFilename: "+keyval.val
				break
			case "Operator":
				header += "\rOperator: "+keyval.val
				break
			case "ExperimentID":
				header += "\rExperimentID: "+keyval.val
				break
			case "PlatenID":
				header += "\rPlatenID: "+keyval.val
				break
			case "PlatenDesc":
				header += "\rPlatenDesc: "+keyval.val
				break
			case "StagePosition":
				header += "\rStagePosition: "+keyval.val
				break
			case "PhotoFilename":
				header += "\rPhotoFilename: "+keyval.val
				break
			case "ActualPhotoFilename":
				header += "\rActualPhotoFilename: "+keyval.val
				break
			case "SXIFilename":
				header += "\rSXIFilename: "+keyval.val
				break
			case "ActualSXIFilename":
				header += "\rActualSXIFilename: "+keyval.val
				break
			case "XraySource":
				header += "\rXraySource: "+keyval.val
				phiheader.energy = str2num(stringfromlist(1,keyval.val," "))
				Debugprintf2("Energy: "+num2str(phiheader.energy),1)
				break
			case "XrayPower":
				header += "\rXrayPower: "+keyval.val
				break
			case "XrayBeamDiameter":
				header += "\rXrayBeamDiameter: "+keyval.val
				break
			case "NeutralizerEnergy":
				header += "\rNeutralizerEnergy: "+keyval.val
				break
			case "NeutralizerCurrent":
				header += "\rNeutralizerCurrent: "+keyval.val
				break
			case "SourceAnalyserAngle":
				header += "\rSourceAnalyserAngle: "+keyval.val
				break
			case "AnalyserSolidAngle":
				header += "\rAnalyserSolidAngle: "+keyval.val
				break
			case "AnalyserMode":
				header += "\rAnalyserMode: "+keyval.val
				break
			case "AnalyserWorkFcn":
				header += "\rAnalyserWorkFcn: "+keyval.val
				break
			case "IntensityRecal":
				header += "\rIntensityRecal: "+keyval.val
				break
			case "IntensityCalCoeff": // for calculation of transmission function
				// T(E) = Epass*( a^2 / ( a^2+ (E/Epass)^2 ) )^b
				header += "\rIntensityCalCoeff: "+keyval.val // a b
				phiheader.Ta = str2num(stringfromlist(0,keyval.val," "))
				phiheader.Tb = str2num(stringfromlist(1,keyval.val," "))
				Debugprintf2("Ta: "+num2str(phiheader.Ta)+" ; Tb: "+num2str(phiheader.Tb),1)
				break
			case "EnergyRecal":
				header += "\rEnergyRecal: "+keyval.val
				break
			case "SputterIon":
				header += "\rSputterIon: "+keyval.val
				break
			case "SputterEnergy":
				header += "\rSputterEnergy: "+keyval.val
				break
			case "SputterCurrent":
				header += "\rSputterCurrent: "+keyval.val
				break
			case "SputterRaster":
				header += "\rSputterRaster: "+keyval.val
				break
			case "PreAcqSputterTime":
				header += "\rPreAcqSputterTime: "+keyval.val
				break
			case "PreAcqSputterRate":
				header += "\rPreAcqSputterRate: "+keyval.val
				break
			case "Comment":
				header += "\rComment: "+keyval.val
				break
			case "SampleID":
				header += "\rSampleID: "+keyval.val
				break
			case "SampleDesc":
				header += "\rSampleDesc: "+keyval.val
				break
			case "SourceAnalyzerAngle":
				header += "\rSourceAnalyzerAngle: "+keyval.val
				break
			case "AnalyzerSolidAngle":
				header += "\rAnalyzerSolidAngle: "+keyval.val
				break
			case "AnalyzerMode":
				header += "\rAnalyzerMode: "+keyval.val
				break
			case "AnalyzerWorkFcn":
				header += "\rAnalyzerWorkFcn: "+keyval.val
				break
			case "EnergyReference":
				header += "\rEnergyReference: "+keyval.val
				break
			case "SpatialAreaDescription":
				header += "\rSpatialAreaDescription: "+keyval.val
				break
			case "XrayScanIncXY":
				header += "\rXrayScanIncXY: "+keyval.val
				break
			case "EBeamEnergy":
				header += "\rEBeamEnergy: "+keyval.val
				break
			case "EBeamCurrent":
				header += "\rEBeamCurrent: "+keyval.val
				break
			case "EBeamDiameter":
				header += "\rEBeamDiameter: "+keyval.val
				break
			case "EBeamScanIncXY":
				header += "\rEBeamScanIncXY: "+keyval.val
				break
			case "Magnification":
				header += "\rMagnification: "+keyval.val
				break
			case "NoSpectralReg":
				phiheader.NoSpectralReg=str2num(keyval.val)
				break
			case "SpectralRegDef":
				keyval.val = splitintolist(keyval.val, " ")
				//if(str2num(stringfromlist(0,keyval.val,"_")) == str2num(stringfromlist(1,keyval.val,"_")) && ItemsInList(keyval.val,"_")==13)
				if(ItemsInList(keyval.val,"_")==13)
					phiheader.SpectralRegDef[str2num(stringfromlist(0,keyval.val,"_"))-1].num1= str2num(stringfromlist(0,keyval.val,"_"))
					phiheader.SpectralRegDef[str2num(stringfromlist(0,keyval.val,"_"))-1].num2 = str2num(stringfromlist(1,keyval.val,"_"))
					phiheader.SpectralRegDef[str2num(stringfromlist(0,keyval.val,"_"))-1].name = stringfromlist(2,keyval.val,"_")
					phiheader.SpectralRegDef[str2num(stringfromlist(0,keyval.val,"_"))-1].PHI_AtomicNumber = str2num(stringfromlist(3,keyval.val,"_"))
					phiheader.SpectralRegDef[str2num(stringfromlist(0,keyval.val,"_"))-1].points = str2num(stringfromlist(4,keyval.val,"_"))
					phiheader.SpectralRegDef[str2num(stringfromlist(0,keyval.val,"_"))-1].step = str2num(stringfromlist(5,keyval.val,"_"))
					phiheader.SpectralRegDef[str2num(stringfromlist(0,keyval.val,"_"))-1].start1 = str2num(stringfromlist(6,keyval.val,"_"))
					phiheader.SpectralRegDef[str2num(stringfromlist(0,keyval.val,"_"))-1].ende1 = str2num(stringfromlist(7,keyval.val,"_"))
					phiheader.SpectralRegDef[str2num(stringfromlist(0,keyval.val,"_"))-1].start2 = str2num(stringfromlist(8,keyval.val,"_"))
					phiheader.SpectralRegDef[str2num(stringfromlist(0,keyval.val,"_"))-1].ende2 = str2num(stringfromlist(9,keyval.val,"_"))
					phiheader.SpectralRegDef[str2num(stringfromlist(0,keyval.val,"_"))-1].dwelltime = str2num(stringfromlist(10,keyval.val,"_"))
					phiheader.SpectralRegDef[str2num(stringfromlist(0,keyval.val,"_"))-1].Epass = str2num(stringfromlist(11,keyval.val,"_"))
					phiheader.SpectralRegDef[str2num(stringfromlist(0,keyval.val,"_"))-1].str = stringfromlist(12,keyval.val,"_")
				else
					Debugprintf2("Error in SpectralRegDef",0)
				endif
				break
			case "NoSpatialArea":
				phiheader.NoSpatialArea = str2num(keyval.val)
				break
			case "SpatialAreaDef":
				header += "\rSpatialAreaDef: "+keyval.val
				break
			case "SpatialAreaDesc":
				header += "\rSpatialAreaDesc: "+keyval.val
				break
			case "SpatialHRPhotoCor":
				header += "\rSpatialHRPhotoCor: "+keyval.val
				break
			case "LensConstant":
				header += "\rLensConstant: "+keyval.val
				break
			case "EOFH":
				Debugprintf2("end of header",1)
				run = 0
				break
			case "SOFH":
				Debugprintf2("start of header",1)
				break
			case "AnalyserRetardGain":
				header += "\rAnalyserRetardGain: "+keyval.val
				break
			case "ScanDeflectionSpan":
				header += "\rScanDeflectionSpan: "+keyval.val
				break
			case "ScanDeflectionOffset":
				header += "\rScanDeflectionOffset: "+keyval.val
				break
			case "SCAMultiplierVoltage":
				header += "\rSCAMultiplierVoltage: "+keyval.val
				break
			case "NarrowAcceptanceAngle":
				header += "\rNarrowAcceptanceAngle: "+keyval.val
				break
			case "PeakToNoiseRatioState":
				header += "\rPeakToNoiseRatioState: "+keyval.val
				break
			case "DelayBeforeAcquire":
				header += "\rDelayBeforeAcquire: "+keyval.val
				break
			case "C60IonGun":
				header += "\rC60IonGun: "+keyval.val
				break
			case "BiasBoxMode":
				header += "\rBiasBoxMode: "+keyval.val
				break
			case "SemFieldOfView":
				header += "\rSemFieldOfView: "+keyval.val
				break
			case "ImageSizeXY":
				header += "\rImageSizeXY: "+keyval.val
				break
			case "IonGunMode":
				header += "\rIonGunMode: "+keyval.val
				break
			case "SputterRate":
				header += "\rSputterRate: "+keyval.val
				break
			case "FloatVolt":
				header += "\rFloatVolt: "+keyval.val
				break
			case "FloatEnable":
				header += "\rFloatEnable: "+keyval.val
				break
			case "GridVolt":
				header += "\rGridVolt: "+keyval.val
				break
			case "CondensorVolt":
				header += "\rCondensorVolt: "+keyval.val
				break
			case "ObjectiveVolt":
				header += "\rObjectiveVolt: "+keyval.val
				break
			case "BendVolt":
				header += "\rBendVolt: "+keyval.val
				break
			case "SputterRasterOffset":
				header += "\rSputterRasterOffset: "+keyval.val
				break
			case "TargetSputterTime":
				header += "\rTargetSputterTime: "+keyval.val
				break
			case "SputterEmission":
				header += "\rSputterEmission: "+keyval.val
				break
			case "DeflectionBias":
				header += "\rDeflectionBias: "+keyval.val
				break
			case "XpsScanMode":
				header += "\rXpsScanMode: "+keyval.val
				break
			case "SurvNumCycles":
				header += "\rSurvNumCycles: "+keyval.val
				break
			case "SurvTimePerStep":
				header += "\rSurvTimePerStep: "+keyval.val
				break
			case "PhotoZoomMode":
				header += "\rPhotoZoomMode: "+keyval.val
				break
			case "PhotoSizeInPixel":
				header += "\rPhotoSizeInPixel: "+keyval.val
				break
			case "PhotoOffsetInPixel":
				header += "\rPhotoOffsetInPixel: "+keyval.val
				break
			case "PhotoSizeInMm":
				header += "\rPhotoSizeInMm: "+keyval.val
				break
			case "PhotoOffsetInMm":
				header += "\rPhotoOffsetInMm: "+keyval.val
				break
			case "NoSpectralRegFull":
				header += "\rNoSpectralRegFull: "+keyval.val
				break
			case "SpectralRegDefFull":
				header += "\rSpectralRegDefFull: "+keyval.val
				break
			case "SpectralRegDef2Full":
				header += "\rSpectralRegDef2Full: "+keyval.val
				break
			case "SpectralRegBackgroundFull":
				header += "\rSpectralRegBackgroundFull: "+keyval.val
				break
			case "SpectralRegHeroFull":
				header += "\rSpectralRegHeroFull: "+keyval.val
				break
			case "SpectralRegIRFull":
				header += "\rSpectralRegIRFull: "+keyval.val
				break
			case "SpectralRegDef2":
				header += "\rSpectralRegDef2: "+keyval.val
				break
			case "SpectralRegBackground":
				header += "\rSpectralRegBackground: "+keyval.val
				break
			case "SpectralRegHero":
				header += "\rSpectralRegHero: "+keyval.val
				break
			case "SpectralRegIR":
				header += "\rSpectralRegIR: "+keyval.val
				break
			case "XrayAnodePosition":
				header += "\rXrayAnodePosition: "+keyval.val
				break
			case "XRayBeamVoltage":
				header += "\rXRayBeamVoltage: "+keyval.val
				break
			case "XRayCondenserLensVoltage":
				header += "\rXRayCondenserLensVoltage: "+keyval.val
				break
			case "XRayObjectiveCoilCurrent":
				header += "\rXRayObjectiveCoilCurrent: "+keyval.val
				break
			case "XRayBlankingVoltage":
				header += "\rXRayBlankingVoltage: "+keyval.val
				break
			case "XRayFilamentCurrent":
				header += "\rXRayFilamentCurrent: "+keyval.val
				break
			case "XRayStigmator":
				header += "\rXRayStigmator: "+keyval.val
				break
			case "XRayHighPower":
				header += "\rXRayHighPower: "+keyval.val
				break
			case "EgunNeutMode":
				header += "\rEgunNeutMode: "+keyval.val
				break
			case "EgunNeutExtractor":
				header += "\rEgunNeutExtractor: "+keyval.val
				break
			case "EgunNeutXSteering":
				header += "\rEgunNeutXSteering: "+keyval.val
				break
			case "EgunNeutYSteering":
				header += "\rEgunNeutYSteering: "+keyval.val
				break
			case "EgunNeutFilament":
				header += "\rEgunNeutFilament: "+keyval.val
				break
			case "EgunNeutPulseLength":
				header += "\rEgunNeutPulseLength: "+keyval.val
				break
			case "SxiPersistence":
				header += "\rSxiPersistence: "+keyval.val
				break
			case "SxiSecPerDisplay":
				header += "\rSxiSecPerDisplay: "+keyval.val
				break
			case "SxiAutoContrast":
				header += "\rSxiAutoContrast: "+keyval.val
				break
			case "SxiAutoContrastLow":
				header += "\rSxiAutoContrastLow: "+keyval.val
				break
			case "SxiAutoContrastHigh":
				header += "\rSxiAutoContrastHigh: "+keyval.val
				break
			case "SxiBindingEnergy":
				header += "\rSxiBindingEnergy: "+keyval.val
				break
			case "SxiPassEnergy":
				header += "\rSxiPassEnergy: "+keyval.val
				break
			case "SxiLens2":
				header += "\rSxiLens2: "+keyval.val
				break
			case "SxiLens3":
				header += "\rSxiLens3: "+keyval.val
				break
			case "SxiLensBias":
				header += "\rSxiLensBias: "+keyval.val
				break
			case "SxiShutterBias":
				header += "\rSxiShutterBias: "+keyval.val
				break
			case "SxiShutterBiasVoltage":
				header += "\rSxiShutterBiasVoltage: "+keyval.val
				break
			case "SxiDisplayMode":
				header += "\rSxiDisplayMode: "+keyval.val
				break
			case "Detector Acq Time":
				header += "\rDetector Acq Time: "+keyval.val
				break
			case "Number Of Channels":
				header += "\rNumber Of Channels: "+keyval.val
				break
			case "Channel Info":
				header += "\rChannel Info: "+keyval.val
				break
			case "StageCurrentRotationSpeed":
				header += "\rStageCurrentRotationSpeed: "+keyval.val
				break
			case "DefectPosID":
				header += "\rDefectPosID: "+keyval.val
				break
			case "DefectPosComment":
				header += "\rDefectPosComment: "+keyval.val
				break
			case "DefectPosU":
				header += "\rDefectPosU: "+keyval.val
				break
			case "DefectPosV":
				header += "\rDefectPosV: "+keyval.val
				break
			case "DefectPosX":
				header += "\rDefectPosX: "+keyval.val
				break
			case "DefectPosY":
				header += "\rDefectPosY: "+keyval.val
				break
			case "DefectPosZ":
				header += "\rDefectPosZ: "+keyval.val
				break
			case "DefectPosTilt":
				header += "\rDefectPosTilt: "+keyval.val
				break
			case "DefectPosRotation":
				header += "\rDefectPosRotation: "+keyval.val
				break
			case "DefectPosAligment":
				header += "\rDefectPosAligment: "+keyval.val
				break
			case "DefectPosReferenceImage":
				header += "\rDefectPosReferenceImage: "+keyval.val
				break
			case "Deconvolution":
				header += "\rDeconvolution: "+keyval.val
				break
			case "DeconvolutionPassEnergy":
				header += "\rDeconvolutionPassEnergy: "+keyval.val
				break
			case "XRaySetting":
				header += "\rXRaySetting: "+keyval.val
				break
			default:
				Debugprintf2("Unknown key: "+keyval.key,0)
				break
		endswitch
		fstatus file
	while(V_logEOF>V_filePOS && run == 1)


	//Binary headers
	Fstatus file
	variable binstart = V_filePOS // save start of binheader

	//read the binary headers
	struct binheader binheader
	fbinread /B=0 file, binheader
	// for each spectrum 24 * 4bytes to read
	struct spectraheader spectraheaderread
	variable i = 0, tmp=0
	for(i=0; i < phiheader.NoSpectralReg; i += 1 )
		FBinread /B=0 file, spectraheaderread
		//print spectraheaderread
		phiheader.SpectralRegDef[i].header.spectranum = spectraheaderread.spectranum
		phiheader.SpectralRegDef[i].header.points = spectraheaderread.points
		phiheader.SpectralRegDef[i].header.datatype = spectraheaderread.datatype
		phiheader.SpectralRegDef[i].header.datalen = spectraheaderread.datalen
		phiheader.SpectralRegDef[i].header.datastart = spectraheaderread.datastart
		phiheader.SpectralRegDef[i].header.offset2 =spectraheaderread.offset2
		phiheader.SpectralRegDef[i].header.yunit =spectraheaderread.yunit
	endfor
	
	
	variable type = 0
	variable additionalbytes=0

	//load each spectrum into a separate wave
	string tmps = ""
	string sSpectrumWaveName=""
	variable vReadVal
	for( i = 0; i < phiheader.NoSpectralReg; i += 1 )
		// get datatype of spectra
		strswitch(phiheader.SpectralRegDef[i].header.datatype) //switch(phiheader.SpectralRegDef[i].header.datalen/phiheader.SpectralRegDef[i].header.points)
			case "u4":
				type = 3
				break
			case "u8": // works for now
				type = 5
				break
			case "f4":
				type = 4 // float
				break
			case "f8":
				type = 5 //double
				break
			default:
				debugprintf2("Unknown datatype: "+phiheader.SpectralRegDef[i].header.datatype,0)
				return -1
				break	
		endswitch

		// make wave for current spectra
		tmpS = phiheader.SpectralRegDef[i].name+"_"+num2str(i) ; Make /O/D/N=(phiheader.SpectralRegDef[i].header.points) $tmpS ; wave data = $tmpS

		// goto start of spectrum
		fsetpos file, binstart + phiheader.SpectralRegDef[i].header.datastart
		
		//read spectrum
		FBinRead /U/B=0/F=(type) file, data
				
		strswitch(phiheader.SpectralRegDef[i].header.yunit)
			case "c/s":
				if(str2num(get_flags(f_divbytime))!=1)
					data *=phiheader.SpectralRegDef[i].dwelltime
				endif
				break
			default:
				if(str2num(get_flags(f_divbytime))==1)
					data /=phiheader.SpectralRegDef[i].dwelltime
				endif
				break
		endswitch

		// are there bytes at the end of the spectrum? Read them?
		if(phiheader.SpectralRegDef[i].header.offset2 != 0)
			fsetpos file, binstart + phiheader.SpectralRegDef[i].header.offset2
			if(i==phiheader.NoSpectralReg-1) // last spectrum
				additionalbytes = V_logEOF-binstart - phiheader.SpectralRegDef[i].header.offset2
			else
				additionalbytes = phiheader.SpectralRegDef[i+1].header.datastart - phiheader.SpectralRegDef[i].header.offset2
			endif
			//mybinread(file, additionalbytes)		
		endif

#if 0
		// calculating Transmission function
		tmpS = phiheader.SpectralRegDef[i].name+"_"+num2str(i)+"_Trans" ; Make /O/D/N=(phiheader.SpectralRegDef[i].header.points) $tmpS ; wave TF = $tmpS
		// Transmission function depends on kinetic energy
		SetScale/I  x,phiheader.energy-phiheader.SpectralRegDef[i].start1,phiheader.energy-phiheader.SpectralRegDef[i].ende1, "eV", TF
		// http://www.casaxps.com/release/release2312_/CasaXPS.HLP/SpectrumProcessing/FAQ9.htm
		// T(E) = Epass*( a^2 / ( a^2+ (E/Epass)^2 ) )^b
		TF[]=(phiheader.SpectralRegDef[i].Epass*(phiheader.Ta^2+(x/phiheader.SpectralRegDef[i].Epass)^2)^phiheader.Tb)
		// here the calculated TE is somehow different??
#endif

		// set the scale etc.
		// use point scaling as sometimes "points != (ende-start)/step+1"
		if(str2num(get_flags(f_posEbin))==1)
			SetScale/P  x,phiheader.SpectralRegDef[i].start1,phiheader.SpectralRegDef[i].step, "eV", data//, TF
		else
			SetScale/P  x,-phiheader.SpectralRegDef[i].start1,-phiheader.SpectralRegDef[i].step, "eV", data//, TF
		endif
		note data,header
		
		Debugprintf2("... exporting spectra "+num2str(i)+": "+phiheader.SpectralRegDef[i].name,0)
	endfor

	importloader.success = 1
	loaderend(importloader)
End 
