#!/usr/bin/python
import boto3

count=input("Please enter your server count:")
ec2 = boto3.resource('ec2')
instance = ec2.create_instances(
    ImageId='ami-922914f7',
    MinCount=1,
    MaxCount=count,
    KeyName="Ramesh_Keys",
    SecurityGroups=["opentoworld"],
    InstanceType='t2.micro')
print instance[0].id
