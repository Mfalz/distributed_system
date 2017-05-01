#!/usr/bin/python
# coming soon..
import sys

count = 0;
avg=0
for line in sys.stdin:
    avg+=int(line)
    count=count+1
print avg/count
