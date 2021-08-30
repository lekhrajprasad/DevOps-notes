#!/usr/bin/python

inp1=raw_input("Please enter your input:")

dict1={'A':0,'E':0,'I':0,'O':0,'U':0}

for i in inp1:
	if i.upper() in dict1:
		dict1[i.upper()] += 1

print dict1
