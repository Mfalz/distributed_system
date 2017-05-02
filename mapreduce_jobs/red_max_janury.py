#!/usr/bin/python

import sys

max_value= 0
max_year = 0

for line in sys.stdin:
    line = line.split()

    if line[1] > max_value:
	max_value = line[1]
	max_year = line[0]

print line[0] + " " + max_value
