#!/usr/bin/python

string="Hello all how are you doing"

data=string.split(' ')
emp=[]

for i in data:
	emp.append(len(i))

print "your input string is",data
print "Their respective size is",emp
