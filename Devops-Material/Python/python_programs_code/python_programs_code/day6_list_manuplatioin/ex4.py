#!/usr/bin/python

l1=[1,2,3,4]

l2=[]
for i in range(len(l1)):
	val=1
	for j in range(len(l1)):
		if j != i:
			val *= l1[j]
	l2.append(val)
print l2
