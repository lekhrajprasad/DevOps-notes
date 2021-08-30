#!/usr/bin/python
lis=[]
res=""
judge=True
name=raw_input("please provide the name to be searched:")

file=open('data','a+')

for line in file.readlines():
	lis.append(line)

for i in lis:
	if name in i:
		res=i
		res=res.split(" ")
		print "Age and grade of",name,"is",res[1],res[2]
		judge=False
		exit(0)

	elif judge:
		print "your search name",name,"not found please enter below"
		age=raw_input("Please provide age,")
		grade=raw_input("please provide grade,")
		judge=False
mydata=name+" "+age+" "+grade+"\n"
file.writelines(mydata)
file.close()
