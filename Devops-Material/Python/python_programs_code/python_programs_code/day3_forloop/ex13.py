#!/usr/bin/python

array = [1, 2, 3, 4, 5, 2, 3, 4]

emp=[]

for i in array:
	if i not in emp:
		emp.append(i)

print emp
