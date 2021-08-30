#!/usr/bin/python

str="Australia won the world cup 2015 on 29th Mar"
lower_count=0
upper_count=0

for i in str:
	if i.isupper():
		upper_count+=1
	elif i.islower():
		lower_count+=1

print "Number of lower case & upper case elements are",lower_count,upper_count
