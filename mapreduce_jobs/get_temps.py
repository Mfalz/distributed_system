#!/usr/bin/python

import sys
import os
i=0
for line in sys.stdin: 
    if i < 30 :
	# first 30 lines
	i=i+1
    else:
        val = line.strip()
        (source_id, year, annual_data_value, winter_half, summer_half, winter_djf, spring_mam,
	summer_jja, autumn_son, janu, febr, marc, apri, may, june, july, augu, sept, octo, nove,
	dece) = (val[0:6], val[7:11], val[12:20], val[20:28], val[28:36], val[36:44],
	val[44:51], val[52:59], float(val[60:67])*0.01, float(val[68:75])*0.01, float(val[76:83])*0.01, float(val[84:91])*0.01,
	float(val[92:99])*0.01,	float(val[100:107])*0.01, float(val[108:115])*0.01, float(val[116:123])*0.01, float(val[124:131])*0.01, float(val[132:139])*0.01, float(val[140:147])*0.01,
	float(val[148:155])*0.01, (float(val[156:163])*0.01))
	
	months = [janu,febr,marc,apri,may,june,july,augu,sept,octo,nove,dece];
	index=0
	for month in months:
	    if month==-9999.99:
		months[index]=0
	    index=index+1
	
	if os.environ["PARAM_OPT"] == year:
	    print year + " " + \
	    str(months[0])+ " " + \
	    str(months[1])+ " " + \
	    str(months[2])+ " " + \
	    str(months[3])+ " " + \
	    str(months[4])+ " " + \
	    str(months[5])+ " " + \
	    str(months[6])+ " " + \
	    str(months[7])+ " " + \
	    str(months[8])+ " " + \
	    str(months[9])+ " " + \
	    str(months[10])+ " " + \
	    str(months[11])+ " "
	
	i=i+1
