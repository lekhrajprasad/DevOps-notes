#!/usr/bin/python

array = [1, 2, 3, 4, 5, 2, 3, 4]

emp=[]

dict1={}

for i in array:
	if i not in emp:
		emp.append(i)
for x in emp:
	dict1[x]=0
for j in array:
	if j in dict1:
		dict1[j]+=1      

print dict1
