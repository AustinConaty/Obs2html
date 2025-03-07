function setupprojection(latlim,lonlim)

%SETUPPROJECTION Set up a map projection.
%
% SETUPPROJECTION([MINLAT MAXLAT],[MINLON MAXLON]) sets up a map axes
%      with a suitable projection, labels, and grid, for the lat-lon
%      region defined by [MINLAT MAXLAT],[MINLON MAXLON] (in degrees).
%      For use with the MATLAB Mapping Toolbox Version 1.2 or later.

% Compute a nice increment for labels and grid.
% Pick a ticksize that gives at least 3 grid lines

maxdiff = max(abs([diff(latlim) diff(lonlim)]));
mindiff = min(abs([diff(latlim) diff(lonlim)]));
ticcandidates = [.1 .5 1 2 2.5 5 10 15 20 30 45 ] ;
[ignored,indx] = min( abs( 3 - (mindiff ./ ticcandidates) ));

ticksize = ticcandidates(indx);
roundat = 0;
if mod(ticksize,1) ~= 0; roundat = -1; end

% Select a projection based on latlim,lonlim.

if isequal(latlim,[-90 90]) & diff(lonlim) >= 360 % entire globe
   projection = 'robinson';
elseif max(abs(latlim)) < 20% straddles equator, but doesn't extend into extreme latitudes
   projection = 'mercator';
elseif abs(diff(latlim)) <= 90 & abs(sum(latlim)) > 20  & max(abs(latlim)) < 90 % doesn't extend to the pole, not stradling equator
   projection = 'eqdconic';
elseif abs(diff(latlim)) < 85  & max(abs(latlim)) < 90 % doesn't extend to the pole, not stradling equator
   projection = 'sinusoid';
elseif max(latlim) == 90 & min(latlim) >= 84
   projection = 'upsnorth';
elseif min(latlim) == -90 & max(latlim) <= -80
   projection = 'upssouth';
elseif max(abs(latlim)) == 90 & abs(diff(lonlim)) < 180
   projection = 'polycon';
elseif max(abs(latlim)) == 90 
   projection = 'eqdazim';
else
   projection = 'miller';
end


% Set up the axes with the selected projection and parameters.
% More than one path because of error messages setting parallels
% when projections don't have any.

if strcmp(projection,'upsnorth') | strcmp(projection,'upssouth')
   
   axesm('MapProjection','ups','Zone',projection(4:end),...
      'Frame','on',...
      'Grid','on',...
      'LabelRotation','on',...
      'MeridianLabel','on',...
      'ParallelLabel','on',...
      'MLabelParallel',0 ...
      )
   
else
   
   mstruct = defaultm(projection);
   
   if strcmp(projection,'eqdazim')
      axesm(...
         'MapProjection',projection,...
         'FLatLimit',[-Inf abs(diff(latlim))],...
         'Origin',[90*sign(latlim(2)) mean(lonlim) 0],...
         'MLabelLoc',ticksize,...
         'MLineLoc',ticksize,...
         'PLabelLoc',ticksize,...
         'PLineLoc',ticksize,...
         'MLabelRound',roundat,...
         'PLabelRound',roundat,...
         'GColor',[.75 .75 .75],... %[0.36471      0.72941      0.79216],... % fog
         'GLineStyle',':',...
         'Frame','on',...
         'Grid','on',...
         'LabelRotation','on',...
         'MeridianLabel','on',...
         'ParallelLabel','on',...
         'MLabelParallel',0 ...
         )
      
   elseif mstruct.nparallels > 0
         
         axesm(...
         'MapProjection',projection,...
         'MapLatLimit',latlim,...
         'MapLonLimit',lonlim,...
         'MapParallels',[],...
         'MLabelLoc',ticksize,...
         'MLineLoc',ticksize,...
         'PLabelLoc',ticksize,...
         'PLineLoc',ticksize,...
         'MLabelRound',roundat,...
         'PLabelRound',roundat,...
         'MLabelPar',0,...
         'GColor',[.75 .75 .75],... %[0.36471      0.72941      0.79216],... % fog
         'GLineStyle',':',...
         'Frame','on',...
         'Grid','on',...
         'LabelRotation','on',...
         'MeridianLabel','on',...
         'ParallelLabel','on'...
         )
   else
      axesm(...
         'MapProjection',projection,...
         'MapLatLimit',latlim,...
         'MapLonLimit',lonlim,...
         'MLabelLoc',ticksize,...
         'MLineLoc',ticksize,...
         'PLabelLoc',ticksize,...
         'PLineLoc',ticksize,...
         'MLabelRound',roundat,...
         'PLabelRound',roundat,...
         'MLabelPar',0,...
         'GColor',[.75 .75 .75],... %[0.36471      0.72941      0.79216],... % fog
         'GLineStyle',':',...
         'Frame','on',...
         'Grid','on',...
         'LabelRotation','on',...
         'MeridianLabel','on',...
         'ParallelLabel','on'...
         )
   end
end

% Leave a little space around non-cylindrical projections to avoid clipping the frame
names = maps('idlist');
pclass = maps('classcodes');
indx = strmatch(projection,names);
thispclass = deblank(pclass(indx,:));

switch thispclass
case 'Cyln'
   tightmap tight
otherwise
   tightmap loose
end

