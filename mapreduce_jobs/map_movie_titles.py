#!/usr/bin/python

import re
import sys

for line in sys.stdin:
	val = line.split(',')
	(film_id, film_year, film_title) = (val[0], val[1], val[2])
	print film_id+"-"+film_title
