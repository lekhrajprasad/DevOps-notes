#!/usr/bin/python

num=input("Please give the number:")
mynum=num
rev=0

while num>0:
	rem=num%10
	rev=(rev*10)+rem
	num=num/10
if rev == mynum:
	print "Your entered value",mynum,"is a palindrome"
else:
	print "Your entered value",mynum,"is not a palindrome"
