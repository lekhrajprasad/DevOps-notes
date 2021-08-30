Installing a particular version of package.
yum install httpd-2.4.39-1.amzn2.0.1 -y 

[root@shellscripting ~]# cat mycode.sh
#!/bin/bash

#checking which pacakge installed
httpd_version=$(rpm -qi httpd|grep Version|awk '{print $3}')

case $httpd_version in
"2.4.43") echo "httpd is already with latest version";
          exit 0;;
*) echo "Installing Latest package";
   yum update httpd -y;
   exit 0;;
esac