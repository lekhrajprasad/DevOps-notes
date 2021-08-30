#!/usr/bin/python

n=input("Enter the range of the patter:")

if n%2==1:
	odd=n
elif (n-1)%2 ==1:
	odd=n-1
print odd
for i in range(n,0,-1):
	if i%2 ==1:
		print (odd-i)*' '+str(i)*i
