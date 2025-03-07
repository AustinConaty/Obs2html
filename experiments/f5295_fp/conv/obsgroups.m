function s = obsgroups

% updated 20080505 Austin Conaty for MERRA
%
% updated 20110503 to include MERRA observing system and
%    latest observing system as of GEOSadas-5.7.1
%    no ocean updates included.
%
% OBSGROUPS Defines observation groups.

% Edit at will. Supported fields are:
%
% s(k).id:   description
% s(k).kx:   data source indices  (enumeration)
% s(k).kt:   data type indices    (enumeration)
% s(k).lev:  levels               (range)
% s(k).lat:  latitudes            (range)
% s(k).lon:  longitudes           (range)
% s(k).qcx:  qc exclusion marks   (enumeration)
% s(k).qch:  qc history marks     (enumeration)
%
% A missing or empty field means no selection on this attribute.

k = 0;

plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5];


k = k + 1;
s(k).id = 'All temperature data';
s(k).kt = [39 44];
s(k).ptstats = false;
s(k).pcoverg = false;
k = k + 1;
s(k).id = 'Radiosonde temperatures';
s(k).kt = 44;
s(k).kx = 120;
s(k).plev = plev;
k = k + 1;
s(k).id = 'MLS temperatures';
s(k).kt = 44;
s(k).kx = 304;
k = k + 1;
s(k).id = 'Aircraft temperatures (AIREP, PIREP)';
s(k).kt = 44;
s(k).kx = 130;
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Aircraft temperatures (ASDAR)';
s(k).kt = 44;
s(k).kx = 131;
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Dropsonde temperatures';
s(k).kt = 44;
s(k).kx = 132;
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Aircraft temperatures (MDCARS)';
s(k).kt = 44;
s(k).kx = 133;
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Aircraft temperatures (TAMDAR)';
s(k).kt = 44;
s(k).kx = 134;
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Aircraft temperatures (Canadian AMDAR)';
s(k).kt = 44;
s(k).kx = 135;
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Surface marine temperatures';
s(k).kt = 44;
s(k).kx = 180;
k = k + 1;
s(k).id = 'Drifting Buoy temperatures';
s(k).kt = 44;
s(k).kx = 199;
k = k + 1;
s(k).id = 'Splash level temperatures';
s(k).kt = 44;
s(k).kx = 182;
k = k + 1;
s(k).id = 'Sea-surface temperature data';
s(k).kt = 39;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
k = k + 1;
s(k).id = 'All surface pressure data';
s(k).kt = 33;
s(k).ptstats = false;
s(k).pcoverg = false;
k = k + 1;
s(k).id = 'Pseudo SLP at Trop Cyc Center';
s(k).kt = 33;
s(k).kx = 112;
k = k + 1;
s(k).id = 'Radiosonde station surface pressures';
s(k).kt = 33;
s(k).kx = 120;
k = k + 1;
s(k).id = 'Dropsonde station surface pressures';
s(k).kt = 33;
s(k).kx = 132;
k = k + 1;
s(k).id = 'Marine surface pressures';
s(k).kt = 33;
s(k).kx = 180;
k = k + 1;
s(k).id = 'Land station surface pressures';
s(k).kt = 33;
s(k).kx = 181;
k = k + 1;
s(k).id = 'Splash level surface pressures';
s(k).kt = 33;
s(k).kx = 182;
k = k + 1;
s(k).id = 'Surface Marine (NO SLP)';
s(k).kt = 33;
s(k).kx = 183;
k = k + 1;
s(k).id = 'Metar surface pressures';
s(k).kt = 33;
s(k).kx = 187;
k = k + 1;
s(k).id = 'AUSTRALIAN PAOB MEAN SEA-LEVEL PRESSURE BOGUS';
s(k).kt = 33;
s(k).kx = 191;
k = k + 1;
s(k).id = 'Drifting Buoy surface pressures';
s(k).kt = 33;
s(k).kx = 199;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
k = k + 1;
s(k).id = 'All wind data';
s(k).kt = [4 5 12];
s(k).ptstats = false;
s(k).pcoverg = false;
k = k + 1;
s(k).id = 'Radiosonde wind vectors';
s(k).kt = [4 5];
s(k).kx = 220;
s(k).plev = plev;
k = k + 1;
s(k).id = 'Pibal wind vectors';
s(k).kt = [4 5];
s(k).kx = 221;
s(k).plev = plev;
k = k + 1;
s(k).id = 'Wind profiler wind vectors';
s(k).kt = [4 5];
s(k).kx = 223;
s(k).plev = plev;
k = k + 1;
s(k).id = 'NEXRAD wind vectors';
s(k).kt = [4 5];
s(k).kx = 224;
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Japanese profiler wind vectors';
s(k).kt = [4 5];
s(k).kx = 228;
s(k).plev = plev;
k = k + 1;
s(k).id = 'PILOT wind vectors';
s(k).kt = [4 5];
s(k).kx = 229;
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Aircraft wind vectors (AIREP, PIREP)';
s(k).kt = [4 5];
s(k).kx = 230;
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Aircraft wind vectors (ASDAR)';
s(k).kt = [4 5];
s(k).kx = 231;
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Dropsonde wind vectors';
s(k).kt = [4 5];
s(k).kx = 232;
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Aircraft wind vectors (MDCARS)';
s(k).kt = [4 5];
s(k).kx = 233;
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Aircraft wind vectors (TAMDAR)';
s(k).kt = [4 5];
s(k).kx = 234;
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Aircraft wind vectors (Canadian AMDAR)';
s(k).kt = [4 5];
s(k).kx = 235;
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Cloud drift wind vectors (NESDIS Visible)';
s(k).kt = [4 5];
s(k).kx = [251];
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Cloud drift wind vectors (METEOSAT Visible)';
s(k).kt = [4 5];
s(k).kx = [243];
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Cloud drift wind vectors (GMS Visible)';
s(k).kt = [4 5];
s(k).kx = [242];
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Cloud drift wind vectors (METEOSAT IR)';
s(k).kt = [4 5];
s(k).kx = [253];
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Cloud drift wind vectors (GMS IR)';
s(k).kt = [4 5];
s(k).kx = [252];
s(k).plev = plev(plev>=200);k = k + 1;
s(k).id = 'Cloud drift wind vectors (GOES-EAST IR, GOES-WEST IR)';
s(k).kt = [4 5];
s(k).kx = 245;
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Cloud drift wind vectors (METEOSAT WV)';
s(k).kt = [4 5];
s(k).kx = 254;
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Cloud drift wind vectors (GMS WV)';
s(k).kt = [4 5];
s(k).kx = 250;
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Cloud drift wind vectors (GOES-EAST WV, GOES-WEST WV)';
s(k).kt = [4 5];
s(k).kx = 246;
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Cloud drift wind vectors deep layer (GOES-EAST WV, GOES-WEST WV)';
s(k).kt = [4 5];
s(k).kx = 247;
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Cloud drift wind vectors (AVHRR)';
s(k).kt = [4 5];
s(k).kx = [244];
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Cloud drift wind vectors (NESDIS IR SW)';
s(k).kt = [4 5];
s(k).kx = [240];
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Cloud drift wind vectors (VIIRS)';
s(k).kt = [4 5];
s(k).kx = [260];
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'IR cloud drift U,V (NASA/MODIS POES Aqua/Terra)';
s(k).kt = [4 5];
s(k).kx = [257];
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Water vapor cloud top U,V (NASA/MODIS POES Aqua/Terra)';
s(k).kt = [4 5];
s(k).kx = [258];
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Water vapor deep layer U,V (NASA/MODIS POES Aqua/Terra)';
s(k).kt = [4 5];
s(k).kx = [259];
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Synthetic wind data';
%insert 999 to fix a titling problem ie conflict with the other 210, MSU on NOAA-10...
s(k).kt = [4 5];
s(k).kx = [210];
s(k).plev = plev(plev>=200);
k = k + 1;
s(k).id = 'Surface marine wind vectors';
s(k).kt = [4 5];
s(k).kx = 280;
k = k + 1;
s(k).id = 'Drifting Buoy wind vectors';
s(k).kt = [4 5];
s(k).kx = 299;
k = k + 1;
s(k).id = 'ATLAS buoy wind vectors';
s(k).kt = [4 5];
s(k).kx = 282;
k = k + 1;
s(k).id = 'SSM/I wind speeds';
s(k).kt = 12;
s(k).kx = 283;
k = k + 1;
s(k).id = 'RapidSCAT wind vectors';
s(k).kt = [4 5];
s(k).kx = 285;
k = k + 1;
s(k).id = 'ERS Scatterometer wind vectors';
s(k).kt = [4 5];
s(k).kx = 286;
k = k + 1;
s(k).id = 'WINDSAT wind vectors';
s(k).kt = [4 5];
s(k).kx = 289;
k = k + 1;
s(k).id = 'ASCAT Scatterometer wind vectors';
s(k).kt = [4 5];
s(k).kx = 290;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
k = k + 1;
s(k).id = 'All moisture data';
s(k).kt = 11;
s(k).ptstats = false;
s(k).pcoverg = false;

k = k + 1;
s(k).id = 'Radiosonde specific humidities';
s(k).kt = 11;
s(k).kx = 120;
s(k).plev = plev(plev>=300);

k = k + 1;
s(k).id = 'Dropsonde humidity';
s(k).kt = 11;
s(k).kx = 132;
s(k).plev = plev(plev>=300);

k = k + 1;
s(k).id = 'MDCARS AIRCRAFT';
s(k).kt = 11;
s(k).kx = 133;

k = k + 1;
s(k).id = 'Surface marine specific humidities';
s(k).kt = 11;
s(k).kx = 180;

k = k + 1;
s(k).id = 'Surface Land specific humidities';
s(k).kt = 11;
s(k).kx = 181;

k = k + 1;
s(k).id = 'Splash level specific humidities';
s(k).kt = 11;
s(k).kx = 182;

k = k + 1;
s(k).id = 'Surface Marine humidities';
s(k).kt = 11;
s(k).kx = 183;

k = k + 1;
s(k).id = 'Surface METAR (no slp)';
s(k).kt = 11;
s(k).kx = 187;

k = k + 1;
s(k).id = 'Drifting Buoy specific humidities';
s(k).kt = 11;
s(k).kx = 199;

k = k + 1;
s(k).id = 'SSM/I  Total Precipitable Water Retrievals ';
s(k).kt = 18;
s(k).kx = 152;

k = k + 1;
s(k).id = 'TMI Rain Rate';
%s(k).kt = 86;               <--KT VALUE WAS 86 IN MERRA SYSTEM
s(k).kt = 17;
s(k).kx = 211;

k = k + 1;
s(k).id = 'SSM/I Rain Rate [log(1+rain rate)]';
s(k).kt = 86;
s(k).kx = 264;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
k = k + 1;
s(k).id = 'All GNSS RO data';
s(k).kt = 89;
s(k).ptstats = false;
s(k).pcoverg = false;

k = k + 1;
s(k).id = 'SAC-C GNSS RO';
s(k).kt = 89;
s(k).kx = 820;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];

k = k + 1;
s(k).id = 'GRACE-A GNSS RO';
s(k).kt = 89;
s(k).kx = 722;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];

k = k + 1;
s(k).id = 'GRACE-B GNSS RO';
s(k).kt = 89;
s(k).kx = 723;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];

k = k + 1;
s(k).id = 'CHAMP GNSS RO';
s(k).kt = 89;
s(k).kx = 41;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];

k = k + 1;
s(k).id = 'TerraSAR-X  (CHAMP-type GNSS) GNSS RO';
s(k).kt = 89;
s(k).kx = 42;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];

k = k + 1;
s(k).id = 'TANDEM-X  (CHAMP-type GNSS) GNSS RO';
s(k).kt = 89;
s(k).kx = 43;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];

k = k + 1;
s(k).id = 'METOP-A GNSS RO';
s(k).kt = 89;
s(k).kx = 4;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];

k = k + 1;
s(k).id = 'METOP-B GNSS RO';
s(k).kt = 89;
s(k).kx = 3;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];

k = k + 1;
s(k).id = 'METOP-C GNSS RO';
s(k).kt = 89;
s(k).kx = 5;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];

k = k + 1;
s(k).id = 'COSMIC-1 GNSS RO';
s(k).kt = 89;
s(k).kx = 740;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];
k = k + 1;
s(k).id = 'COSMIC-2 GNSS RO';
s(k).kt = 89;
s(k).kx = 741;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];
k = k + 1;
s(k).id = 'COSMIC-3 GNSS RO';
s(k).kt = 89;
s(k).kx = 742;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];
k = k + 1;
s(k).id = 'COSMIC-4 GNSS RO';
s(k).kt = 89;
s(k).kx =743;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];
k = k + 1;
s(k).id = 'COSMIC-5 GNSS RO';
s(k).kt = 89;
s(k).kx = 744;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];
k = k + 1;
s(k).id = 'COSMIC-6 GNSS RO';
s(k).kt = 89;
s(k).kx = 745;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];

k = k + 1;
s(k).id = 'C/NOFS CORISS GNSS RO';
s(k).kt = 89;
s(k).kx = 786;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];

k = k + 1;
s(k).id = 'All COSMIC-2 GNSS RO data';
s(k).kt = 89;
s(k).ptstats = false;
s(k).kx = [750 751 752 753 754 755];
s(k).pcoverg = false;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];

k = k + 1;
s(k).id = 'COSMIC-2 E1 GNSS RO';
s(k).kt = 89;
s(k).kx = 750;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];
k = k + 1;
s(k).id = 'COSMIC-2 E2 GNSS RO';
s(k).kt = 89;
s(k).kx = 751;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];
k = k + 1;
s(k).id = 'COSMIC-2 E3 GNSS RO';
s(k).kt = 89;
s(k).kx = 752;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];
k = k + 1;
s(k).id = 'COSMIC-2 E4 GNSS RO';
s(k).kt = 89;
s(k).kx =753;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];
k = k + 1;
s(k).id = 'COSMIC-2 E5 GNSS RO';
s(k).kt = 89;
s(k).kx = 754;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];
k = k + 1;
s(k).id = 'COSMIC-2 E6 GNSS RO';
s(k).kt = 89;
s(k).kx = 755;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];
k = k + 1;
s(k).id = 'KOMPSAT-5 GNSS RO';
s(k).kt = 89;
s(k).kx = 825;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];

k = k + 1;
s(k).id = 'PAZ GNSS RO';
s(k).kt = 89;
s(k).kx = 44;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];

k = k + 1;
s(k).id = 'GeoOptics GNSS RO';
s(k).kt = 89;
s(k).kx = 265;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];

k = k + 1;
s(k).id = 'Spire GNSS RO';
s(k).kt = 89;
s(k).kx = 269;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];


k = k + 1;
s(k).id = 'PlanetIQ GNSS RO';
s(k).kt = 89;
s(k).kx = 267;
s(k).plev = [1000 925 850 700 500 400 300 250 200 150 100 70 50 30 20 10 7 5 4.0 2.0 1.0 0.50 0.24];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
k = k + 1;
s(k).id = 'Synthetic Surface Pressure data';
%insert 999 to fix a titling problem ie conflict with the other 210, MSU on NOAA-10...
s(k).kx = [111 112];
%s(k).kx = [997];
s(k).kt = [33];



