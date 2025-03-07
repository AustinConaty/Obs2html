diary obs2html.log
addpath /ford1/local/obsview -begin
warning off
try
  options.browser =  false    ;
  options.dirname = 'obsmon';
  options.grpfile = 'obsgroups';
  options.grpnums =  []  ;
  options.pcoverg =  true ;
  options.pseries =  true ;
  options.ptstats =  true ;
  options.plotfmt = 'png';
  options.plotdpi = '120';
  obs2html('d5124_m2_jan10','2025020100','2025030221',options);
catch
  str = lasterr; disp(str)
end
quit
