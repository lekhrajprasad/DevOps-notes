[root@ip-172-31-84-102 test]# cat /tmp/test/s3copy.sh
aws s3 cp --recursive /tmp/test/logs/ s3://dest-dvs/
[root@ip-172-31-84-102 test]# crontab -l
25 19 * * * /bin/bash /tmp/test/s3copy.sh 2>&1 /dev/null
[root@ip-172-31-84-102 test]# ls -l /tmp/test/logs/
total 0
-rw-r--r-- 1 root root 0 May  1 19:14 mydata1
-rw-r--r-- 1 root root 0 May  1 19:14 mydata10
-rw-r--r-- 1 root root 0 May  1 19:14 mydata2
-rw-r--r-- 1 root root 0 May  1 19:14 mydata3
-rw-r--r-- 1 root root 0 May  1 19:14 mydata4
-rw-r--r-- 1 root root 0 May  1 19:14 mydata5
-rw-r--r-- 1 root root 0 May  1 19:14 mydata6
-rw-r--r-- 1 root root 0 May  1 19:14 mydata7
-rw-r--r-- 1 root root 0 May  1 19:14 mydata8
-rw-r--r-- 1 root root 0 May  1 19:14 mydata9
[root@ip-172-31-84-102 test]# aws s3 ls s3://dest-dvs/
2020-05-01 19:25:02          0 mydata1
2020-05-01 19:25:02          0 mydata10
2020-05-01 19:25:02          0 mydata2
2020-05-01 19:25:02          0 mydata3
2020-05-01 19:25:02          0 mydata4
2020-05-01 19:25:02          0 mydata5
2020-05-01 19:25:02          0 mydata6
2020-05-01 19:25:02          0 mydata7
2020-05-01 19:25:02          0 mydata8
2020-05-01 19:25:02          0 mydata9
[root@ip-172-31-84-102 test]#
