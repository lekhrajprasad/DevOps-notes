#!/usr/bin/python

import boto3

ec2=boto3.resource("ec2")

for i in ec2.instances.all():
    print i.id, i.state['Name']
