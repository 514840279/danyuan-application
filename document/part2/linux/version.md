###uname -a ：
输入"uname -a ",可显示电脑以及操作系统的相关信息。
>[root@smqq ~]# uname -a
>Linux smqq 2.6.32-504.el6.x86_64 #1 SMP Tue Oct 14 01:47:47 PDT 2014 >x86_64 x86_64 x86_64 GNU/Linux
>[root@smqq ~]# 


###cat /proc/version：
输入"cat /proc/version",说明正在运行的内核版本。
>[root@smqq ~]# cat /proc/version
>Linux version 2.6.32-504.el6.x86_64 (mockbuild@139.185.51.103) (gcc >version 4.4.7 20120313 (Red Hat 4.4.7-9) (GCC) ) #1 SMP Tue Oct 14 >01:47:47 PDT 2014
>[root@smqq ~]# 

###cat /etc/issue：
输入"cat /etc/issue", 显示的是发行版本信息
>[root@smqq ~]# cat /etc/issue
>Oracle Linux Server release 6.6
>Kernel \r on an \m
>
>[root@smqq ~]# 

###lsb_release -a：
lsb_release -a (适用于所有的linux，包括Redhat、SuSE、Debian等发行版，但是在debian下要安装lsb)
>[root@smqq ~]# lsb_release -a
LSB Version:	:base-4.0-amd64:base-4.0-noarch:core-4.0-amd64:core-4.0-noarch:graphics-4.0-amd64:graphics-4.0-noarch:printing-4.0-amd64:printing-4.0-noarch
Distributor ID:	OracleServer
Description:	Oracle Linux Server release 6.6
Release:	6.6
Codename:	n/a
[root@smqq ~]#
