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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

k = k + 1;
s(k).id = 'All radiance data';
s(k).kt = 40;
s(k).ptstats = false;
s(k).pcoverg = false;

[SENSORS,KXS] = dconfig('SENSORS','KXS');
for i = 1:length(SENSORS)
   if length(SENSORS(i).chns)<30,
      plev = SENSORS(i).chns;
   else
      [n,p] = hist(SENSORS(i).chns,20);
      plev = round(p);
   end
   for kx = SENSORS(i).kxs,
      k = k + 1;
      s(k).id = [KXS(kx==[KXS.value]).id ' brightness temperatures'];
      s(k).kt = 40;
      s(k).kx = kx;
      s(k).plev = plev;
   end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
