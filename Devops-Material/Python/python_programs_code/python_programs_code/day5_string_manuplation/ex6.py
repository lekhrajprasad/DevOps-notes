#!/usr/bin/python
n=3

for i in range(3,0,-1):
	print (n-i)*' '+i*'*'

i=i+1

for j in range(i,n+1):
	print (n-j)*' '+j*'*'
