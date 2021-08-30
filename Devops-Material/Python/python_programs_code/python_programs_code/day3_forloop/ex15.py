#!/usr/bin/python

str1=raw_input("Please enter your string:")
dict1={}
for i in str1:
	dict1[i] = str1.count(i)

for i in dict1:
	if dict1[i] == 1:
		print i
