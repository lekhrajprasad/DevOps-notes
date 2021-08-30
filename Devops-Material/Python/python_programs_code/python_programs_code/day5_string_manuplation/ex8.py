#!/usr/bin/python

string=raw_input("Please enter your string:")
result=''
for i in string:
	if i.isupper():
		result+=i.lower()
	else:
		result+=i.upper()

print "Your inputs string",string,"is changed to",result	
