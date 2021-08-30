#!/usr/bin/python

str="shahan"

tes=''

for i in str:
	if i not in tes:
		tes+=i
sep=' '
print "No repeating charecters are",sep.join(tes)

