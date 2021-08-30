#!/usr/bin/env python
import sys
import boto3
#s3 = boto3.resource("s3",region_name="us-east-2")
s3 = boto3.resource("s3")
for bucket_name in sys.argv[1:]:
    try:
        #response = s3.create_bucket(Bucket=bucket_name,CreateBucketConfiguration={'LocationConstraint': 'us-east-2'})
		response = s3.create_bucket(Bucket=bucket_name)
        print response
    except Exception as error:
        print error
