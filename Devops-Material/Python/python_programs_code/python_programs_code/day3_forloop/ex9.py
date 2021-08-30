#!/usr/bin/python

print "Prime numbers are"
for num in range(0,50):
	if num>1:
		for i in range(2,num):
			if num%i == 0:
				#print "num is not not prime",num
				break	
		else:
			print num

