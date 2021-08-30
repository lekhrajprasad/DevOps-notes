#!/usr/bin/python

string="hello world and practice makes perfect and hello world again"
myinput=string.split(' ')
emp=[]
for i in myinput:
	if i not in emp:
		emp.append(i)

output=sorted(emp)
final=''
for i in output:
	final=final+i+' '

print final
