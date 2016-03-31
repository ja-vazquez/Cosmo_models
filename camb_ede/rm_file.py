#!/usr/bin/env python
import pylab


with open('try.del') as inf:		
    a=[:]	
    for line in inf:
        parts = line.split() # split line into parts
        #if len(parts) > 1:   # if at least 2 parts/columns
        a.append(parts[0],parts[1])
    print a 
    #print sorted(parts[0], key =float)
	     				
	   
               # print parts[0]   # print column 2
