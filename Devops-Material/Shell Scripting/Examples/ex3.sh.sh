#!/bin/bash

# 3. Write the code which accepts only two arguments source & target buckets it should copy data from source to target bucket.

if [[ $# != 2 ]]
then
echo -e "please make sure you are giving source & destination buckets\nex: bash ex3.sh src-bucket dest-bucket"
fi

#Checking Bucket existance
src=$1
dest=$2

for i in $src $dest
do
bucket=$(aws s3 ls |awk '{print $3}'|grep -w $i)
if [[ $? != 0 ]]
then
echo "$i bucket not exists in the AWS Account"
exit 1
fi
done

#Copying data from src to dest buckets
echo "Copying Data from $src To $dest Bucket"
aws s3 cp --recursive s3://$src/ s3://$dest/
if [[ $? == 0 ]]
then
echo "Data copy is succesfull"
else
echo "Data copy failed"
exit 1
fi