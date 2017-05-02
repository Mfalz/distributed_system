#!/usr/bin/python

import sys

i=0
for line in sys.stdin: 
    if i < 30 :
	# first 30 lines
	i=i+1
    else:
        val = line.strip()

	janury=float(val[68:75])*0.01
	
	if janury==-9999.99:
	    janury=0
	print val[7:11]+" "+str(janury)
        i=i+1
	

