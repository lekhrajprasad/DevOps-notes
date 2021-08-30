#!/usr/bin/python

num=raw_input("Please enter your number:")

if num == num[::-1]:
	print "palindrome"
else:
	print "not a palindrome"
