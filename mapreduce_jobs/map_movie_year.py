#!/usr/bin/python

import sys
import os

for line in sys.stdin:
    val = line.split(',')
    (film_id, film_year, film_title) = (val[0], val[1], val[2])
    if film_year == os.environ["PARAM_OPT"]:
        print film_title
