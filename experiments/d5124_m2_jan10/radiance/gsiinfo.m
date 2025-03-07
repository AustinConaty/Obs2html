OBSATTRIBUTES.names = {'kx','ks','kt','time','lat','lon','lev',...
    'obs','sigo','omf','oma','qch','qcx','xm'};
OBSATTRIBUTES.descr = {'data source','sounding index','data type',...
    'observation time','latitude','longitude','level/channel',...
    'observed value','observation error',...
    'background departure','analysis departure',...
    'QC history','QC exclusion','metadata'};
OBSATTRIBUTES.discr = [1 1 1 0 0 0 0 0 0 0 0 1 1 0];

% datatype descriptions and units:
% NOTE: data with sigo>msigo are considered excluded; see odsclean
% -------------------------------
KTS(1).value = 44;
KTS(1).id = 'Upper-air virtual temperature';
KTS(1).units = 'Kelvin';
KTS(1).msigo = 10;
KTS(2).value = 33;
KTS(2).id = 'Surface (2m) pressure';
KTS(2).units = 'hPa';
KTS(2).msigo = 12;
KTS(3).value = 4;
KTS(3).id = 'Upper-air zonal wind';
KTS(3).units = 'm/sec';
KTS(3).msigo = 20;
KTS(4).value = 5;
KTS(4).id = 'Upper-air meridional wind';
KTS(4).units = 'm/sec';
KTS(4).msigo = 20;
KTS(5).value = 11;
KTS(5).id = 'Upper-air specific humidity';
KTS(5).units = 'g/kg';
KTS(5).msigo = 20;
KTS(6).value = 12;
KTS(6).id = 'Surface (10m) wind speed';
KTS(6).units = 'm/sec';
KTS(6).msigo = 20;
KTS(7).value = 40;
KTS(7).id = 'Brightness temperature';
KTS(7).units = 'Kelvin';
KTS(7).msigo = 10;
KTS(8).value = 39;
KTS(8).id = 'Sea-surface temperature';
KTS(8).units = 'Kelvin';
KTS(8).msigo = 10;
KTS(9).value = 21;
KTS(9).id = 'Total column ozone';
KTS(9).units = 'Dobson Units';
KTS(9).msigo = 10;
KTS(10).value = 22;
KTS(10).id = 'Layer ozone';
KTS(10).units = 'Dobson Units';
KTS(10).msigo = 10;

% Kovach
% Ocean datatype descriptions and units:
% --------------------------------------
KTS(11).value = 101;
KTS(11).id    = 'Sub-surface temperature';
KTS(11).units = 'C';
KTS(11).msigo = 100;
KTS(12).value = 102;
KTS(12).id    = 'Sub-surface salinity';
KTS(12).units = '';
KTS(12).msigo = 100;
KTS(13).value = 104; % 103 in V5
KTS(13).id    = 'Sub-surface zonal velocity';
KTS(13).units = 'm/s';
KTS(13).msigo = 100;
KTS(14).value = 105; % 104 in V5
KTS(14).id    = 'Sub-surface meridional velocity';
KTS(14).units = 'm/s';
KTS(14).msigo = 100;
KTS(15).value = 103; % 105 in V5
KTS(15).id    = 'Sea-surface height anomaly';
KTS(15).units = 'meters';
KTS(15).msigo = 100;
KTS(16).value = 106;
KTS(16).id    = 'Synthetic Salinity';
KTS(16).units = '';
KTS(16).msigo = 100;

KTS(17).value = 17;
KTS(17).id    = 'Rain Rate';
KTS(17).units = 'mm/hr';
KTS(17).msigo = 100;
KTS(18).value = 18;
KTS(18).id    = 'Total Precipitable Water';
KTS(18).units = '';
KTS(18).msigo = 100;
KTS(19).value = 88;
KTS(19).id    = 'Refractivity';
KTS(19).units = 'N';
KTS(19).msigo = 100;


% pressure-level data ('lev' attribute = pressure):
% -------------------
KTPRS = [4 5 11 21 22 44 88];

% Kovach
% Depth-level data ('lev' attribute = depth);
% ----------------
KTDPH = [101 102 106];

% surface data ('lev' attribute not used):
% ------------
KTSFC = [12 33 39 103 104 105];

% radiance data ('lev' attribute = channel number):
% -------------
KTRAD = [40];

% wind vectors
% ------------
KTWND = {[4 5]};

% data source descriptions  UPDATED 20110503  
% ------------------------------------------
% (from http://www.emc.ncep.noaa.gov/mmb/data_processing/prepbufr.doc/table_2.htm)

KXS(1).value = 111;
KXS(1).id    = 'SYNTHETIC TROPICAL CYCLONE STORM CENTER PSFC, Q';
KXS(2).value = 112;
KXS(2).id    = 'PSEUDO MEAN SEA-LEVEL PRESSURE AT TROPICAL CYCLONE STORM CENTER - Pstn';
KXS(3).value = 120;
KXS(3).id    = 'RAWINSONDE VIRTUAL TEMPERATURE, SPECIFIC HUMIDITY, STATION PRESSURE';
KXS(4).value = 122;
KXS(4).id    = 'CLASS SOUNDING VIRTUAL TEMPERATURE, SPECIFIC HUMIDITY, STATION PRESSURE';
KXS(5).value = 126;
KXS(5).id    = 'RASS [FROM NOAA PROFILER NETWORK (NPN) OR MULTI-AGENCY PROFILER (MAP) NETWORK]  - Tv';
KXS(6).value = 130;
KXS(6).id    = 'AIREP AND PIREP AIRCRAFT SENSIBLE TEMPERATURE';
KXS(7).value = 131;
KXS(7).id    = 'ASDAR AIRCRAFT SENSIBLE TEMPERATURE';
KXS(8).value = 132;
KXS(8).id    = 'FLIGHT-LEVEL RECONNAISSANCE AND PROFILE DROPSONDE VIRTUAL TEMPERATURE, SPECIFIC HUMIDITY, STATION PRESSURE';
KXS(9).value = 133;
KXS(9).id    = 'MDCARS AIRCRAFT SENSIBLE TEMPERATURE (SPECIFIC HUMIDITY FLAGGED FOR NON-USE BY ANALYSIS)';
KXS(10).value = 134;
KXS(10).id    = 'TAMDAR (Mesaba, PenAir, Chautauqua) AIRCRAFT - Ts (SPECIFIC HUMIDITY FLAGGED FOR NON-USE BY ANALYSIS)';
KXS(11).value = 135;
KXS(11).id    = 'CANADIAN AMDAR AIRCRAFT - Ts (SPECIFIC HUMIDITY FLAGGED FOR NON-USE BY ANALYSIS)';
KXS(12).value = 150;
KXS(12).id    = 'SSM/I SUPEROBED (1 DEGREE LAT/LON) FNMOC (OPERATIONAL) RAIN RATE (DMSP) - rr';
KXS(13).value = 151;
KXS(13).id    = 'NESDIS SFOV CLOUD TOP PRESSURE AND TEMPERATURE, CLOUD AMOUNT (GOES)';
KXS(14).value = 152;
KXS(14).id    = 'SSM/I SUPEROBED NEURAL NET 3 TOTAL PRECIPITABLE WATER RETRIEVALS (DMSP)';
KXS(15).value = 153;
KXS(15).id    = 'GPS-INTEGRATED PRECIPITABLE WATER (GPS-IPW) - PWt';
KXS(16).value = 156;
KXS(16).id    = 'NESDIS LAYER PRECIPITABLE WATER RETRIEVALS OVER LAND - CLEAR (GOES)';
KXS(17).value = 157;
KXS(17).id    = 'NESDIS LAYER PRECIPITABLE WATER RETRIEVALS OVER LAND - CLOUD CORRECTED (GOES)';
KXS(18).value = 158;
KXS(18).id    = 'NESDIS LAYER PRECIPITABLE WATER RETRIEVALS OVER OCEAN - CLEAR (GOES)';
KXS(19).value = 159;
KXS(19).id    = 'NESDIS LAYER PRECIPITABLE WATER RETRIEVALS OVER OCEAN - CLOUD CORRECTED (GOES)';
KXS(20).value = 164;
KXS(20).id    = 'NESDIS RADIANCES OVER LAND - CLEAR (GOES)';
KXS(21).value = 165;
KXS(21).id    = 'NESDIS RADIANCES OVER LAND - CLOUD CORRECTED (GOES)';
KXS(22).value = 174;
KXS(22).id    = 'NESDIS RADIANCES OVER OCEAN - CLEAR (GOES)';
KXS(23).value = 175;
KXS(23).id    = 'NESDIS RADIANCES OVER OCEAN - CLOUD CORRECTED (GOES)';
KXS(24).value = 180;
KXS(24).id    = 'SURFACE MARINE (SHIP, BUOY, C-MAN) VIRTUAL TEMPERATURE, SPECIFIC HUMIDITY, STATION PRESSURE (STATION PRESSURE REPORTED)';
KXS(25).value = 181;
KXS(25).id    = 'SURFACE LAND SYNOPTIC AND METAR STATION PRESSURE, SPECIFIC HUMIDITY (TEMPERATURE NOT USED BY ANALYSIS) (STATION PRESSURE REPORTED)';
KXS(26).value = 182;
KXS(26).id    = 'SPLASH LEVEL VIRTUAL TEMPERATURE, SPECIFIC HUMIDITY, STATION PRESSURE (OVER OCEAN ONLY)';
KXS(27).value = 183;
KXS(27).id    = 'SURFACE MARINE (SHIP, BUOY, C-MAN), LAND SYNOPTIC AND METAR VIRTUAL TEMPERATURE, SPECIFIC HUMIDITY, STATION PRESSURE (STATION PRESSURE NOT REPORTED)';
KXS(28).value = 187;
KXS(28).id    = 'SURFACE METAR VIRTUAL TEMPERATURE, SPECIFIC HUMIDITY, STATION PRESSURE (STATION PRESSURE NOT REPORTED)';
KXS(29).value = 190;
KXS(29).id    = 'OPC/NOS POINT MEAN SEA-LEVEL PRESSURE BOGUS';
KXS(30).value = 191;
KXS(30).id    = 'AUSTRALIAN PAOB MEAN SEA-LEVEL PRESSURE BOGUS';
KXS(31).value = 999;
KXS(31).id    = 'SYNTHETIC TROPICAL CYCLONE U, V';
KXS(32).value = 220;
KXS(32).id    = 'RAWINSONDE U, V';
KXS(33).value = 221;
KXS(33).id    = 'PIBAL U, V';
KXS(34).value = 222;
KXS(34).id    = 'CLASS SOUNDING U, V';
KXS(35).value = 223;
KXS(35).id    = 'WIND PROFILER U, V';
KXS(36).value = 224;
KXS(36).id    = 'NEXRAD VERTICAL AZIMUTH DISPLAY (VAD) U, V';
KXS(37).value = 225;
KXS(37).id    = 'NEXRAD RADIAL U, V';
KXS(38).value = 227;
KXS(38).id    = 'MULTI-AGENCY PROFILER (MAP) - u, v, z';
KXS(39).value = 228;
KXS(39).id    = 'Japanese Meterological Agency (JMA) profiler U,V';
KXS(40).value = 229;
KXS(40).id    = 'Wind profiler from PILOT (PIBAL) bulletins U,V';
KXS(41).value = 230;
KXS(41).id    = 'AIREP AND PIREP AIRCRAFT U, V';
KXS(42).value = 231;
KXS(42).id    = 'ASDAR AIRCRAFT U, V';
KXS(43).value = 232;
KXS(43).id    = 'FLIGHT-LEVEL RECONNAISSANCE AND PROFILE DROPSONDE U, V';
KXS(44).value = 233;
KXS(44).id    = 'MDCARS AIRCRAFT U, V';
KXS(45).value = 234;
KXS(45).id    = 'TAMDAR (Mesaba, PenAir, Chautauqua) AIRCRAFT - u, v';
KXS(46).value = 235;
KXS(46).id    = 'CANADIAN AMDAR AIRCRAFT - u, v';
KXS(47).value = 241;
KXS(47).id    = 'INDIA IR AND VISIBLE CLOUD DRIFT U, V (INSAT-2E)';
KXS(48).value = 242;
KXS(48).id    = 'JMA IR AND VISIBLE CLOUD DRIFT U, V AT LEVELS BELOW 850 MB (GMS)';
KXS(49).value = 243;
KXS(49).id    = 'EUMETSAT IR AND VISIBLE CLOUD DRIFT U, V AT LEVELS BELOW 850 MB (METEOSAT)';
KXS(50).value = 245;
KXS(50).id    = 'NESDIS IR CLOUD DRIFT U, V (GOES)';
KXS(51).value = 246;
KXS(51).id    = 'NESDIS IMAGER WATER VAPOR CLOUD U, V AT CLOUD TOP (GOES)';
KXS(52).value = 247;
KXS(52).id    = 'NESDIS IMAGER WATER VAPOR CLOUD U, V - DEEP LAYER (GOES)';
KXS(53).value = 248;
KXS(53).id    = 'NESDIS SOUNDER WATER VAPOR CLOUD U, V AT CLOUD TOP (GOES)';
KXS(54).value = 249;
KXS(54).id    = 'NESDIS SOUNDER WATER VAPOR CLOUD U, V - DEEP LAYER (GOES)';
KXS(55).value = 250;
KXS(55).id    = 'JMA WATER VAPOR CLOUD U, V (GMS)';
KXS(56).value = 251;
KXS(56).id    = 'NESDIS VISIBLE CLOUD DRIFT U, V (GOES)';
KXS(57).value = 252;
KXS(57).id    = 'JMA IR AND VISIBLE CLOUD DRIFT U, V AT LEVELS ABOVE 850 MB (GMS)';
KXS(58).value = 253;
KXS(58).id    = 'EUMETSAT IR AND VISIBLE CLOUD DRIFT U, V AT LEVELS ABOVE 850 MB (METEOSAT)';
KXS(59).value = 254;
KXS(59).id    = 'EUMETSAT WATER VAPOR CLOUD U, V (METEOSAT)';
KXS(60).value = 255;
KXS(60).id    = 'NESDIS PICTURE TRIPLET CLOUD U, V (GOES)';
KXS(61).value = 256;
KXS(61).id    = 'INDIA WATER VAPOR CLOUD U, V (INSAT, KALPANA)';
KXS(62).value = 257;
KXS(62).id    = 'NASA/MODIS POES Aqua/Terra IR cloud drift U,V';
KXS(63).value = 258;
KXS(63).id    = 'NASA/MODIS POES Aqua/Terra Water Vapor cloud top U,V';
KXS(64).value = 259;
KXS(64).id    = 'NASA/MODIS POES Aqua/Terra Water Vapor deep layer U,V';
KXS(65).value = 280;
KXS(65).id    = 'SURFACE MARINE (SHIP, BUOY, C-MAN) U, V (STATION PRESSURE REPORTED)';
KXS(66).value = 281;
KXS(66).id    = 'SURFACE LAND SYNOPTIC AND METAR U, V (STATION PRESSURE REPORTED)';
KXS(67).value = 282;
KXS(67).id    = 'ATLAS BUOY U, V';
KXS(68).value = 283;
KXS(68).id    = 'SSM/I SUPEROBED NEURAL NET 3 WIND SPEED (DIRECTION SET TO ZERO, SPEED ASSIMILATED DIRECTLY) (DMSP-13, DMSP-15)';
KXS(69).value = 284;
KXS(69).id    = 'SURFACE MARINE (SHIP, BUOY, C-MAN), LAND SYNOPTIC AND METAR U, V (STATION PRESSURE NOT REPORTED)';
KXS(70).value = 285;
KXS(70).id    = 'QUIKSCAT SCATTEROMETER WINDS OVER OCEAN U, V';
KXS(71).value = 286;
KXS(71).id    = 'ERS SCATTEROMETER U, V';
KXS(72).value = 287;
KXS(72).id    = 'SURFACE METAR U, V (STATION PRESSURE NOT REPORTED)';
KXS(73).value = 288;
KXS(73).id    = 'SURFACE MESONET - u, v';
KXS(74).value = 289;
KXS(74).id    = 'SUPEROBED (1.0 DEGREE LAT/LON) SCATTEROMETER WINDS OVER OCEAN  (WINDSAT) - u,v';
KXS(75).value = 290;
KXS(75).id    = 'NON-SUPEROBED SCATTEROMETER WINDS OVER OCEAN  (ASCAT) - u,v';
%%%%%% Rain Rate or TPW %%%%%%
KXS(76).value = 264;
KXS(76).id    = 'SSM/I Rain Rate';
KXS(77).value = 152;
KXS(77).id    = 'SSM/I  Precipitable Water';
KXS(78).value = 999;
KXS(78).id    = 'TMI Rain Rate';
%%%%%% HIRS %%%%%%
KXS(79).value  = 5;
KXS(79).id     = 'TIROS-N HIRS';
KXS(80).value  = 6;
KXS(80).id     = 'NOAA-6 HIRS';
KXS(81).value  = 7;
KXS(81).id     = 'NOAA-7 HIRS';
KXS(82).value  = 8;
KXS(82).id     = 'NOAA-8 HIRS';
KXS(83).value  = 9;
KXS(83).id     = 'NOAA-9 HIRS';
KXS(84).value  = 10;
KXS(84).id     = 'NOAA-10 HIRS';
KXS(85).value  = 11;
KXS(85).id     = 'NOAA-11 HIRS';
KXS(86).value  = 12;
KXS(86).id     = 'NOAA-12 HIRS';
KXS(87).value = 14;
KXS(87).id    = 'NOAA-14 HIRS/2';
KXS(88).value = 15;
KXS(88).id    = 'NOAA-15 HIRS/3';
KXS(89).value = 16;
KXS(89).id    = 'NOAA-16 HIRS/3';
KXS(90).value = 17;
KXS(90).id    = 'NOAA-17 HIRS/3';
KXS(91).value = 18;
KXS(91).id    = 'NOAA-18 HIRS/4';
KXS(92).value = 19;
KXS(92).id    = 'NOAA-19 HIRS/4';
KXS(93).value = 25;
KXS(93).id    = 'METOP-A HIRS/4';
KXS(94).value = 26;
KXS(94).id    = 'METOP-B HIRS/4';
%%%%%% GOES Sounder %%%%%%
KXS(95).value = 58;
KXS(95).id    = 'GOES-8 Sounder';
KXS(96).value = 59;
KXS(96).id    = 'GOES-9 Sounder';
KXS(97).value = 60; 
KXS(97).id    = 'GOES-10 Sounder';
KXS(98).value = 61;
KXS(98).id    = 'GOES-11 Sounder';
KXS(99).value = 62;
KXS(99).id    = 'GOES-12 SNDRD1';
KXS(100).value = 72;
KXS(100).id    = 'GOES-12 SNDRD2';
KXS(101).value = 82;
KXS(101).id    = 'GOES-12 SNDRD3';
KXS(102).value = 92;
KXS(102).id    = 'GOES-12 SNDRD4';
KXS(103).value = 63;
KXS(103).id    = 'GOES-13 SNDRD1';
KXS(104).value = 73;
KXS(104).id    = 'GOES-13 SNDRD2';
KXS(105).value = 83;
KXS(105).id    = 'GOES-13 SNDRD3';
KXS(106).value = 93;
KXS(106).id    = 'GOES-13 SNDRD4';
KXS(107).value = 65;
KXS(107).id    = 'GOES-15 SNDRD1';
KXS(108).value = 75;
KXS(108).id    = 'GOES-15 SNDRD2';
KXS(109).value = 85;
KXS(109).id    = 'GOES-15 SNDRD3';
KXS(110).value = 95;
KXS(110).id    = 'GOES-15 SNDRD4';

%%%%%% MSU %%%%%%
KXS(111).value  = 205;
KXS(111).id     = 'TIROS-N MSU';
KXS(112).value  = 206;
KXS(112).id     = 'NOAA-6 MSU';
KXS(113).value  = 207;
KXS(113).id     = 'NOAA-7 MSU';
KXS(114).value  = 208;
KXS(114).id     = 'NOAA-8 MSU';
KXS(115).value  = 209;
KXS(115).id     = 'NOAA-9 MSU';
KXS(116).value  = 210;
KXS(116).id     = 'NOAA-10 MSU';
KXS(117).value  = 211;
KXS(117).id     = 'NOAA-11 MSU';
KXS(118).value  = 212;
KXS(118).id     = 'NOAA-12 MSU';
KXS(119).value = 214;
KXS(119).id    = 'NOAA-14 MSU';
%%%%%% SSU %%%%%%
KXS(120).value  = 399;
KXS(120).id     = 'Placeholder';
KXS(121).value  = 355;
KXS(121).id     = 'TIROS-N SSU';
KXS(122).value  = 356;
KXS(122).id     = 'NOAA-6 SSU';
KXS(123).value  = 357;
KXS(123).id     = 'NOAA-7 SSU';
KXS(124).value  = 358;
KXS(124).id     = 'NOAA-8 SSU';
KXS(125).value  = 359;
KXS(125).id     = 'NOAA-9 SSU';
KXS(126).value  = 360;
KXS(126).id     = 'NOAA-10 SSU';
KXS(127).value  = 361;
KXS(127).id     = 'NOAA-11 SSU';
KXS(128).value  = 362;
KXS(128).id     = 'NOAA-12 SSU';
KXS(129).value  = 364;
KXS(129).id     = 'NOAA-14 SSU';
%%%%%% AMSUA %%%%%%
KXS(130).value =  315;
KXS(130).id    =  'NOAA-15 AMSUA';
KXS(131).value =  317;
KXS(131).id    = 'NOAA-17 AMSUA';
KXS(132).value = 318;
KXS(132).id    = 'NOAA-18 AMSUA';
KXS(133).value = 319;
KXS(133).id    = 'NOAA-19 AMSUA';
KXS(134).value =  300;
KXS(134).id    =  'Aqua AMSUA';
KXS(135).value = 325;
KXS(135).id    = 'METOP-A AMSUA';
KXS(136).value = 326;
KXS(136).id    = 'METOP-B AMSUA';
%%%%%% AMSUB %%%%%%
KXS(137).value = 415;
KXS(137).id    = 'NOAA-15 AMSUB';
KXS(138).value = 416;
KXS(138).id    = 'NOAA-16 AMSUB';
KXS(139).value = 417;
KXS(139).id    = 'NOAA-17 AMSUB';
%%%%%% MHS %%%%%%
KXS(140).value = 818;
KXS(140).id    = 'NOAA-18 MHS';
KXS(141).value = 819;
KXS(141).id    = 'NOAA-19 MHS';
KXS(142).value = 825;
KXS(142).id    = 'METOP-A MHS';
KXS(143).value = 826;
KXS(143).id    = 'METOP-B MHS';
%%%%%% AQUA AMSRE %%%%%%
KXS(144).value = 547;
KXS(144).id    = 'AQUA AMSRE LOW';
KXS(145).value = 548;
KXS(145).id    = 'AQUA AMSRE MID';
KXS(146).value = 549;
KXS(146).id    = 'AQUA AMSRE HIGH';
%%%%%% GPS DATA %%%%%%
KXS(147).value = 740;
KXS(147).id    = 'COSMIC-1 RO';
KXS(148).value = 741;
KXS(148).id    = 'COSMIC-2 RO';
KXS(149).value = 742;
KXS(149).id    = 'COSMIC-3 RO';
KXS(150).value = 743;
KXS(150).id    = 'COSMIC-4 RO';
KXS(151).value = 744;
KXS(151).id    = 'COSMIC-5 RO';
KXS(152).value = 745;
KXS(152).id    = 'COSMIC-6 RO';
KXS(153).value = 722;
KXS(153).id    = 'GRACE-A RO';
KXS(154).value = 723;
KXS(154).id    = 'GRACE-B RO';
KXS(155).value = 4;
KXS(155).id    = 'METOP-A RO';
KXS(156).value = 3;
KXS(156).id    = 'METOP-B RO';
KXS(157).value = 41;
KXS(157).id    = 'CHAMP RO';
KXS(158).value = 42;
KXS(158).id    = 'TerraSAR-X RO';
KXS(159).value = 786;
KXS(159).id    = 'C/NOFS CORISS RO';
KXS(160).value = 820;
KXS(160).id    = 'SAC-C RO';

%%%%%% SBUV DATA %%%%%%
KXS(161).value = 457;
KXS(161).id    = 'Nimbus-7 SBUV';
KXS(162).value = 458;
KXS(162).id    = 'NOAA-8 SBUV/2';
KXS(163).value = 459;
KXS(163).id    = 'NOAA-9 SBUV/2';
KXS(164).value = 460;
KXS(164).id    = 'NOAA-10 SBUV/2';
KXS(165).value = 461;
KXS(165).id    = 'NOAA-11 SBUV/2';
KXS(166).value = 462;
KXS(166).id    = 'NOAA-12 SBUV/2';
KXS(167).value = 464;
KXS(167).id    = 'NOAA-14 SBUV/2';
KXS(168).value = 465;
KXS(168).id    = 'NOAA-15 SBUV/2';
KXS(169).value = 466;
KXS(169).id    = 'NOAA-16 SBUV/2';
KXS(170).value = 467;
KXS(170).id    = 'NOAA-17 SBUV/2';
KXS(171).value = 468;
KXS(171).id    = 'NOAA-18 SBUV/2';
KXS(172).value = 469;
KXS(172).id    = 'NOAA-19 SBUV/2';


%%%%%% DMSP RADIANCES %%%%%%
KXS(173).value  = 708;
KXS(173).id     = 'DMSP F-08 SSM/I';
KXS(174).value  = 710;
KXS(174).id     = 'DMSP F-10 SSM/I';
KXS(175).value  = 711;
KXS(175).id     = 'DMSP F-11 SSM/I';
KXS(176).value  = 713;
KXS(176).id     = 'DMSP F-13 SSM/I';
KXS(177).value  = 714;
KXS(177).id     = 'DMSP F-14 SSM/I';
KXS(178).value  = 715;
KXS(178).id     = 'DMSP F-15 SSM/I';


%%%%%% HYPERSPECTRAL INSTRUMENTS %%%%%%
KXS(179).value = 49;
KXS(179).id    = 'Aqua AIRS';
KXS(180).value = 875;
KXS(180).id    = 'METOP-A IASI';
KXS(181).value = 876;
KXS(181).id    = 'METOP-B IASI';

%%%%%% ATMS ON NPP  %%%%%%
KXS(182).value = 900;
KXS(182).id    = 'NPP ATMS';
KXS(183).value = 950;
KXS(183).id    = 'NPP CrIS';


%%%%%% SEVIRI ON METEOSAT 9 or 10  %%%%%%
KXS(184).value = 989;
KXS(184).id    = 'METEOSAT-9 SEVIRI';
KXS(185).value = 990;
KXS(185).id    = 'METEOSAT-10 SEVIRI';





% sensor information:
% ------------------
SENSORS(1).id  = 'HIRS';
SENSORS(1).kxs = [5 6 7 8 9 10 11 12 14 15 16 17 18 19 25 26];
SENSORS(1).chns = 1:19;
SENSORS(2).id  = 'MSU';
SENSORS(2).kxs = [205 206 207 208 209 210 211 212 214];
SENSORS(2).chns = 1:4;
SENSORS(3).id  = 'SSU';
SENSORS(3).kxs = [355 356 357 358 359 360 361 362 364];
SENSORS(3).chns = [1:3];
SENSORS(4).id  = 'AMSUA';
SENSORS(4).kxs = [300 315 317 318 319 325 326];
SENSORS(4).chns = 1:15;
SENSORS(5).id  = 'AMSUB';
SENSORS(5).kxs = [415 416 417];
SENSORS(5).chns = 1:5;
SENSORS(6).id  = 'MHS';
SENSORS(6).kxs = [818 819 825 826];
SENSORS(6).chns = 1:5;
SENSORS(7).id  = 'SSMI';
SENSORS(7).kxs = [];
SENSORS(7).chns = [];
SENSORS(8).id  = 'AIRS';
SENSORS(8).kxs = [49];
SENSORS(8).chns = 1:281;
SENSORS(9).id  = 'METEOSAT';
SENSORS(9).kxs = [];
SENSORS(9).chns = [];
SENSORS(10).id  = 'GOES SNDRD1';
SENSORS(10).kxs = [ 58 60 62 63 65];
SENSORS(10).chns = 1:18;
SENSORS(11).id  = 'GOES SNDRD2';
SENSORS(11).kxs = [72 73 75];
SENSORS(11).chns = 1:18;
SENSORS(12).id  = 'GOES SNDRD3';
SENSORS(12).kxs = [82 83 85];
SENSORS(12).chns = 1:18;
SENSORS(13).id  = 'GOES SNDRD4';
SENSORS(13).kxs = [92 93 95];
SENSORS(13).chns = 1:18;
SENSORS(14).id  = 'DMSP SSM/I';
SENSORS(14).kxs = [708 710 711 713 714 715];
SENSORS(14).chns = 1:7;
SENSORS(15).id  = 'IASI';
SENSORS(15).kxs = [875 876];
SENSORS(15).chns = 1:616;
SENSORS(16).id  = 'AMSRE HIGH';
SENSORS(16).kxs = [549];
SENSORS(16).chns = 1:12;
SENSORS(17).id  = 'AMSRE MID';
SENSORS(17).kxs = [548];
SENSORS(17).chns = 1:12;
SENSORS(18).id  = 'AMSRE LOW';
SENSORS(18).kxs = [547];
SENSORS(18).chns = 1:12;
SENSORS(19).id  = 'ATMS';
SENSORS(19).kxs = [900];
SENSORS(19).chns = 1:22;
SENSORS(20).id  = 'SEVIRI';
SENSORS(20).kxs = [989 990];
SENSORS(20).chns = 1:8;
SENSORS(21).id  = 'CrIS';
SENSORS(21).kxs = [950];
SENSORS(21).chns = 1:399;
% qc history marks:
% ----------------
QCH_INFLATE = 1.5;
f = 1;
QCHS(1).value = 0;
QCHS(1).id    = 'None';
for k = 2:4
    QCHS(k).value = k-1;
    QCHS(k).id    = ['(' num2str(f,2) ',' num2str(f*QCH_INFLATE,2) '] sigo inflation'];
    f = f*QCH_INFLATE;
end
QCHS(5).value = 4;
QCHS(5).id    = ['(' num2str(f,2) ',' num2str(Inf) '] sigo inflation'];

% qc exclusion marks:
% ------------------
QCXS(1).value = 0;
QCXS(1).id    = 'none' ;
QCXS(2).value = 1;
QCXS(2).id    = 'passive';
QCXS(3).value = 2;
QCXS(3).id    = 'rejected by GSI';
QCXS(4).value = 3;
QCXS(4).id    = 'very large sigo';
QCXS(5).value = 4;
QCXS(5).id    = 'omf/oma undefined';
QCXS(5).value = 7;
QCXS(5).id    = 'passive';

% Magnitudes larger than MAXR are replaced by Infs:
% ------------------------------------------------
MAXR = 1e9; 
