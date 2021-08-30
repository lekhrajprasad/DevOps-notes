#!/usr/bin/python

num=input("Please enter your number:")

if num>1:
	for i in range(2,num):
		if num%i == 0:
			print "num is not not prime",num
			break
	else:
		print "num is prime number:",num

else:
	print " num is not prime number"
