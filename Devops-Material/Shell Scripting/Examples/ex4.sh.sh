[root@ip-172-31-84-102 test]# ssh localhost 'bash -s' < ./commands.sh  > mydata.txt
[root@ip-172-31-84-102 test]# cat mydata.txt
Linux ip-172-31-84-102.ec2.internal 4.14.173-137.229.amzn2.x86_64 #1 SMP Wed Apr 1 18:06:08 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
Filesystem     Type      Size  Used Avail Use% Mounted on
devtmpfs       devtmpfs  475M     0  475M   0% /dev
tmpfs          tmpfs     492M     0  492M   0% /dev/shm
tmpfs          tmpfs     492M  520K  492M   1% /run
tmpfs          tmpfs     492M     0  492M   0% /sys/fs/cgroup
/dev/xvda1     xfs       8.0G  1.3G  6.8G  16% /
tmpfs          tmpfs      99M     0   99M   0% /run/user/1000
tmpfs          tmpfs      99M     0   99M   0% /run/user/0
[root@ip-172-31-84-102 test]# arn:aws:sns:us-east-1:813531627736:myserverdata:33da6980-c8b5-4b62-a0b1-48eba63f503e ^C
[root@ip-172-31-84-102 test]# aws sns publish --topic-arn "arn:aws:sns:us-east-1:813531627736:myserverdata" --message file://mydata.txt
{
    "MessageId": "d850ce2e-ea0e-52c4-af5c-99089d0343e9"
}
