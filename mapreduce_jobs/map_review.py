#!/usr/bin/python

"""

This script gets in input a file mv_xxxxxxx.txt, in this file are stored film reviews identified by
the xxxxxxx id.
The purpose of this script is to map each review.

Each line of the file has the following format:
    id_user,num_star,date

"""

import sys

numline=0;
for line in sys.stdin:
    # first line is useless
    user_list = []
    if numline > 0:
        val = line.split(',') 
	(user_id, star_num, date) = (val[0], val[1], val[2])

	if user_id not in user_list:
            print star_num
	    user_list.append(user_id)
    numline=numline+1
