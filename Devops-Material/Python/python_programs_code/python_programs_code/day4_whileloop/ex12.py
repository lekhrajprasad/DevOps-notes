#!/usr/bin/python

num=input("Please give the number:")

rev=0

while num>0:
	rem=num%10
	rev=(rev*10)+rem
	num=num/10

print "reverse of the number is",rev
