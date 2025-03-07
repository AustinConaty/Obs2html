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

plev = [1013.25 639.36 403.27 254.33 160.09 101.32 63.94 40.33 25.43 16.01 10.13 6.39 4.03 2.54 1.60 1.01 0.64 0.40 0.25 0.16 0.10];


k = k + 1;
s(k).id = 'All data';
s(k).ptstats = false;
s(k).pcoverg = false;
k = k + 1;
s(k).id = 'Nimbus-7 SBUV ozone layers';
s(k).kt = 22;
s(k).kx = 451;
s(k).plev = [1013.25 639.36 403.27 254.33 160.09 101.32 63.94 40.33 25.43 16.01 10.13 6.39 4.03 2.54 1.60 1.01 0.64 0.40 0.25 0.16 0.10];
k = k + 1;
s(k).id = 'Nimbus-7 SBUV total column ozone';
s(k).kt = 21;
s(k).kx = 451;


k = k + 1;
s(k).id = 'NOAA-9 SBUV/2 ozone layers';
s(k).kt = 22;
s(k).kx = 459;
k = k + 1;
s(k).id = 'NOAA-9 SBUV/2 total column ozone';
s(k).kt = 21;
s(k).kx = 459;


k = k + 1;
s(k).id = 'NOAA-11 SBUV/2 ozone layers';
s(k).kt = 22;
s(k).kx = 461;
k = k + 1;
s(k).id = 'NOAA-11 SBUV/2 total column ozone';
s(k).kt = 21;
s(k).kx = 461;

k = k + 1;
s(k).id = 'NOAA-14 SBUV/2 ozone layers';
s(k).kt = 22;
s(k).kx = 464;
s(k).plev = [1013.25 639.36 403.27 254.33 160.09 101.32 63.94 40.33 25.43 16.01 10.13 6.39 4.03 2.54 1.60 1.01 0.64 0.40 0.25 0.16 0.10];
k = k + 1;
s(k).id = 'NOAA-14 SBUV/2 total column ozone';
s(k).kt = 21;
s(k).kx = 464;


k = k + 1;
s(k).id = 'NOAA-16 SBUV/2 ozone layers';
s(k).kt = 22;
s(k).kx = 466;
s(k).plev = [1013.25 639.36 403.27 254.33 160.09 101.32 63.94 40.33 25.43 16.01 10.13 6.39 4.03 2.54 1.60 1.01 0.64 0.40 0.25 0.16 0.10];
k = k + 1;
s(k).id = 'NOAA-16 SBUV/2 total column ozone';
s(k).kt = 21;
s(k).kx = 466;

k = k + 1;
s(k).id = 'NOAA-17 SBUV/2 ozone layers';
s(k).kt = 22;
s(k).kx = 467;
s(k).plev = [1013.25 639.36 403.27 254.33 160.09 101.32 63.94 40.33 25.43 16.01 10.13 6.39 4.03 2.54 1.60 1.01 0.64 0.40 0.25 0.16 0.10];
k = k + 1;
s(k).id = 'NOAA-17 SBUV/2 total column ozone';
s(k).kt = 21;
s(k).kx = 467;

k = k + 1;
s(k).id = 'NOAA-18 SBUV/2 ozone layers';
s(k).kt = 22;
s(k).kx = 468;
s(k).plev = [1013.25 639.36 403.27 254.33 160.09 101.32 63.94 40.33 25.43 16.01 10.13 6.39 4.03 2.54 1.60 1.01 0.64 0.40 0.25 0.16 0.10];
k = k + 1;
s(k).id = 'NOAA-18 SBUV/2 total column ozone';
s(k).kt = 21;
s(k).kx = 468;

k = k + 1;
s(k).id = 'SNNP OMPS Ozone Nadir Profiler';
s(k).kt = [21,22];
s(k).kx = 437;
s(k).plev = [1013.25 639.36 403.27 254.33 160.09 101.32 63.94 40.33 25.43 16.01 10.13 6.39 4.03 2.54 1.60 1.01 0.64 0.40 0.25 0.16 0.10];

k = k + 1;
s(k).id = 'SNPP OMPS Ozone Nadir Mapper';
s(k).kt = 21;
s(k).kx = 427;

k = k + 1;
s(k).id = 'NOAA-19 SBUV/2 ozone layers';
s(k).kt = 22;
s(k).kx = 469;
s(k).plev = [1013.25 639.36 403.27 254.33 160.09 101.32 63.94 40.33 25.43 16.01 10.13 6.39 4.03 2.54 1.60 1.01 0.64 0.40 0.25 0.16 0.10];

k = k + 1;
s(k).id = 'NOAA-19 SBUV/2 total column ozone';
s(k).kt = 21;
s(k).kx = 469;

k = k + 1;
s(k).id = 'AURA OMIEFF total column ozone';
s(k).kt = 21;
s(k).kx = 449;


k = k + 1;
s(k).id = 'AURA MLS55 level ozone';
s(k).kt = 87;
s(k).kx = 330;
s(k).plev = [261.02 215.44 177.83 146.78 121.15 100 82.54 68.13 56.23 46.42 38.31 31.62 26.1 21.54 17.78 14.68 12.12 10 8.25 6.81 5.62 4.64 3.83 3.16 2.61 2.15 1.78 1.47 1.21 1 0.68 0.46 0.32 0.22 0.15 0.1];

k = k + 1;
s(k).id = 'SNPP OMPS LP level ozone';
s(k).kt = 87;
s(k).kx = 337;
s(k).plev = [180.98 155.01 132.72 113.65 97.10 82.60 70.27 59.78 50.93 43.46 37.14 31.78 27.23 23.36 20.06 17.26 14.87 12.82 11.05 9.53 8.24 7.13 6.18 5.36 4.66 4.0   3.54 3.10 2.72 2.38 2.09 1.84 1.62 1.43 1.26 1.12 0.98 0.87 0.77 0.67 0.59 0.52 0.46 0.40];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
