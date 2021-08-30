#!/usr/bin/python

num=input("Please enter the value for which you want factorial:")
fact=1
while num>0:
	fact=fact*num
	num=num-1

print "Factorial is",fact
