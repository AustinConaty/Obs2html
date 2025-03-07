#!/bin/csh

obs2html -expid d5124_m2_jan10 "*diag*202502*z.ods"
obs2html -expid d5124_m2_jan10 -begdate 2025020100 -enddate 2025030218
/home/aconaty/bin/Obs2html_d5124_m2_jan10_conv 2025 02

exit
