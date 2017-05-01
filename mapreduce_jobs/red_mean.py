#!/usr/bin/python

import sys

i=0
value=[0,0,0,0,0,0,0,0,0,0,0,0,0]

total=0

for line in sys.stdin: 
    line=line.split()
    value[0]=int(line[0])

    for i in range (1,13):
	value[i]=value[i]+float(line[i])
    total=total+1

if total != 0:
    for j in range (1,13):
	value[j]=value[j]/total
    print value
