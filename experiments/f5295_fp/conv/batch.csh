#!/bin/csh

obs2html -expid f5295_fp "*diag*202503*z.ods"
obs2html -expid f5295_fp -begdate 2025030100 -enddate 2025033118
/home/aconaty/bin/Obs2html_f5295_fp_conv 2025 03

exit
