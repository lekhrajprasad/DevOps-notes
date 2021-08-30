[root@scripting mypgms]# cat myscript.sh
#!/bin/bash
uname -a
df -hT
hostname
ifconfig eth0

[root@scripting mypgms]# cat myfinalscript.sh
#!/bin/bash

for server in $(cat serverslist)
do
  echo "====================================$server===================================="
  ssh $server 'bash -s' <./myscript.sh

done >> /tmp/myoutput.txt
[root@scripting mypgms]# bash myfinalscript.sh

[root@scripting mypgms]# cat /tmp/myoutput.txt
====================================server1====================================
Linux server1 4.14.193-149.317.amzn2.x86_64 #1 SMP Thu Sep 3 19:04:44 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
Filesystem     Type      Size  Used Avail Use% Mounted on
devtmpfs       devtmpfs  474M     0  474M   0% /dev
tmpfs          tmpfs     492M     0  492M   0% /dev/shm
tmpfs          tmpfs     492M  456K  492M   1% /run
tmpfs          tmpfs     492M     0  492M   0% /sys/fs/cgroup
/dev/xvda1     xfs       8.0G  1.4G  6.7G  17% /
tmpfs          tmpfs      99M     0   99M   0% /run/user/1000
tmpfs          tmpfs      99M     0   99M   0% /run/user/0
server1
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 9001
        inet 172.31.26.242  netmask 255.255.240.0  broadcast 172.31.31.255
        inet6 fe80::844:a8ff:fe18:c699  prefixlen 64  scopeid 0x20<link>
        ether 0a:44:a8:18:c6:99  txqueuelen 1000  (Ethernet)
        RX packets 34728  bytes 48381859 (46.1 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 2566  bytes 276679 (270.1 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

====================================server2====================================
Linux server2 4.14.193-149.317.amzn2.x86_64 #1 SMP Thu Sep 3 19:04:44 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
Filesystem     Type      Size  Used Avail Use% Mounted on
devtmpfs       devtmpfs  474M     0  474M   0% /dev
tmpfs          tmpfs     492M     0  492M   0% /dev/shm
tmpfs          tmpfs     492M  456K  492M   1% /run
tmpfs          tmpfs     492M     0  492M   0% /sys/fs/cgroup
/dev/xvda1     xfs       8.0G  1.4G  6.7G  17% /
tmpfs          tmpfs      99M     0   99M   0% /run/user/1000
tmpfs          tmpfs      99M     0   99M   0% /run/user/0
server2
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 9001
        inet 172.31.31.233  netmask 255.255.240.0  broadcast 172.31.31.255
        inet6 fe80::823:83ff:fe13:7a21  prefixlen 64  scopeid 0x20<link>
        ether 0a:23:83:13:7a:21  txqueuelen 1000  (Ethernet)
        RX packets 34703  bytes 48368391 (46.1 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 2965  bytes 286622 (279.9 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0