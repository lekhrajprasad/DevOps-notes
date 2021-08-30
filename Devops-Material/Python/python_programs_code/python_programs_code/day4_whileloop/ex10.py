#!/usr/bin/python

num=input("Please give the number:")
sum=0
while num>0:
	rem=num%10
	sum=sum+rem
	num=num/10

print "Sum of all the digits of given number is",sum
