#!/usr/bin/python

l1=[1,2,3,4,5,6,7,8]
l2=[]
l3=[]
for i in l1:
	if i%2 == 0:
		l2.append(i*i)
	else:
		l3.append(i*i)

print l2,"\t",l3
	
