#!/usr/bin/python

var1=input("please enter your 1st number:")
var2=input("Please provide your 2nd number:")
var3=input("Please provide your 3rd number:")

if var1>var2 and var1>var3:
	print "var1 is big",var1
elif var2>var3 and var2 >var1:
	print "var2 is big",var2
else:
	print "var3 is big",var3
