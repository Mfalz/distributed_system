#!/usr/bin/python

import sys
import os

"""
This script maps every film that have 5 star as mean
Input: movie_film_titles file
"""

for line in sys.stdin: 
    val = line.split(',')
    (film_id, year, title) = (val[0], val[1], val[2])
    seven_digit_id="{%07d}"%int(film_id)
    print seven_digit_id
