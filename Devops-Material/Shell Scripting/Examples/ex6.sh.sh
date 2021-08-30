#!/bin/bash
for i in $(cat serverslist)
do
#timeout 2 ping -c 1 $i
timeout 2 ssh $i "exit 0"
if [[ $? == 0 ]]
then
        echo $i >> workingservers.txt
else
        echo $i >> notworkingservers.txt
fi
done