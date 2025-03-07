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
  obs2html('f5295_fp','2025030100','2025033121',options);
catch
  str = lasterr; disp(str)
end
quit
