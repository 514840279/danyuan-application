:1. 安装包准备
mysql 下载地址:
https://dev.mysql.com/downloads/mysql/

![选择linux版本](http://upload-images.jianshu.io/upload_images/2787821-bf8d576f2ad924ff.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![直接下载](http://upload-images.jianshu.io/upload_images/2787821-38e0e40dd0298d97.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

2. 检查环境是否有mysql
```
命令：
rpm -qa | grep mysql
cat /etc/group | grep mysql
```
如果有则删除
```
命令：
find / -name mysql|xargs rm -rf
```
3. 先安装必备库
```
命令：
yum search libaio
yum install libaio
```

```
结果
[root@localhost ~]# yum search libaio
已加载插件：fastestmirror, langpacks
Determining fastest mirrors
 * base: mirrors.btte.net
 * extras: mirrors.nwsuaf.edu.cn
 * updates: mirrors.btte.net
(1/2): base/7/x86_64/primary_db                               | 5.6 MB  00:00:01     
(2/2): updates/7/x86_64/primary_db                            | 7.8 MB  00:00:01     
================================ N/S matched: libaio ================================
libaio.i686 : Linux-native asynchronous I/O access library
libaio.x86_64 : Linux-native asynchronous I/O access library
libaio-devel.i686 : Development files for Linux-native asynchronous I/O access
libaio-devel.x86_64 : Development files for Linux-native asynchronous I/O access

  名称和简介匹配 only，使用“search all”试试。
[root@localhost ~]# yum install libaio
已加载插件：fastestmirror, langpacks
Loading mirror speeds from cached hostfile
 * base: mirrors.btte.net
 * extras: mirrors.nwsuaf.edu.cn
 * updates: mirrors.btte.net
软件包 libaio-0.3.109-13.el7.x86_64 已安装并且是最新版本
无须任何处理
[root@localhost ~]# 
```


4. 检查mysql组和用户是否存在，如无创建
```
命令：
groupadd mysql
useradd  -g mysql mysql
passwd mysql
连续输入两次密码完成用户创建
```
![Paste_Image.png](http://upload-images.jianshu.io/upload_images/2787821-972a5ab6cc5ec086.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

上传软件包

![上传软件](http://upload-images.jianshu.io/upload_images/2787821-2e034c209fd842d9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


5. 解压TAR包，更改所属的组和用户
```
命令：
cd /home/mysql/
tar -zxvf mysql-5.7.19-linux-glibc2.12-x86_64.tar.gz 
mv mysql-5.7.19-linux-glibc2.12-x86_64  /usr/local/mysql
chown -R mysql:mysql /usr/local/mysql
cd /usr/local/mysql/
```

```
结果：
[root@localhost mysql]# mv mysql-5.7.19-linux-glibc2.12-x86_64  /usr/local/mysql
[root@localhost mysql]# chown -R mysql:mysql /usr/local/mysql
[root@localhost mysql]# ls
mysql-5.7.19-linux-glibc2.12-x86_64.tar.gz
[root@localhost mysql]# cd /usr/local/mysql/
[root@localhost mysql]# ls
bin  COPYING  docs  include  lib  man  README  share  support-files
[root@localhost mysql]# ll
总用量 36
drwxr-xr-x.  2 mysql mysql  4096 8月  27 12:18 bin
-rw-r--r--.  1 mysql mysql 17987 6月  22 22:13 COPYING
drwxr-xr-x.  2 mysql mysql    55 8月  27 12:18 docs
drwxr-xr-x.  3 mysql mysql  4096 8月  27 12:18 include
drwxr-xr-x.  5 mysql mysql   229 8月  27 12:18 lib
drwxr-xr-x.  4 mysql mysql    30 8月  27 12:18 man
-rw-r--r--.  1 mysql mysql  2478 6月  22 22:13 README
drwxr-xr-x. 28 mysql mysql  4096 8月  27 12:18 share
drwxr-xr-x.  2 mysql mysql    90 8月  27 12:18 support-files
```
![效果图](http://upload-images.jianshu.io/upload_images/2787821-6b326a3b2b3f164b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

6.  创建目录并授权
```
命令
mkdir data mysql-files
chmod 750 mysql-files
chown -R mysql .
chgrp -R mysql .
```
```
结果：
[root@localhost mysql]# mkdir data mysql-files
[root@localhost mysql]# chmod 750 mysql-files
[root@localhost mysql]# chown -R mysql .
[root@localhost mysql]# chgrp -R mysql .
[root@localhost mysql]# ll
总用量 36
drwxr-xr-x.  2 mysql mysql  4096 8月  27 12:18 bin
-rw-r--r--.  1 mysql mysql 17987 6月  22 22:13 COPYING
drwxr-xr-x.  2 mysql mysql     6 8月  27 12:21 data
drwxr-xr-x.  2 mysql mysql    55 8月  27 12:18 docs
drwxr-xr-x.  3 mysql mysql  4096 8月  27 12:18 include
drwxr-xr-x.  5 mysql mysql   229 8月  27 12:18 lib
drwxr-xr-x.  4 mysql mysql    30 8月  27 12:18 man
drwxr-x---.  2 mysql mysql     6 8月  27 12:21 mysql-files
-rw-r--r--.  1 mysql mysql  2478 6月  22 22:13 README
drwxr-xr-x. 28 mysql mysql  4096 8月  27 12:18 share
drwxr-xr-x.  2 mysql mysql    90 8月  27 12:18 support-files
```

7. 初始化数据库
```
命令
bin/mysqld --initialize --user=mysql
```
```
结果：
[root@localhost mysql]#  bin/mysqld --initialize --user=mysql
2017-08-27T04:25:05.984358Z 0 [Warning] TIMESTAMP with implicit DEFAULT value is deprecated. Please use --explicit_defaults_for_timestamp server option (see documentation for more details).
2017-08-27T04:25:06.293545Z 0 [Warning] InnoDB: New log files created, LSN=45790
2017-08-27T04:25:06.381713Z 0 [Warning] InnoDB: Creating foreign key constraint system tables.
2017-08-27T04:25:06.459091Z 0 [Warning] No existing UUID has been found, so we assume that this is the first time that this server has been started. Generating a new UUID: b4410940-8adf-11e7-b689-080027b199be.
2017-08-27T04:25:06.467223Z 0 [Warning] Gtid table is not ready to be used. Table 'mysql.gtid_executed' cannot be opened.
2017-08-27T04:25:06.469594Z 1 [Note] A temporary password is generated for root@localhost: koYyPqyL2y#t
```
初始化数据库并生成临时密码 ：koYyPqyL2y#t 需要记录下来
![密码位置](http://upload-images.jianshu.io/upload_images/2787821-35ae30630b349bc8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

[注意]root@localhost生成临时密码,也就是root@localhost:后的字符串


8. 生成RSA私钥，可以跳过此步骤 个人建议不用执行
mysql_ssl_rsa_setup
需要openssl
支持，用于启用数据量ssl连接，需要进一步配置。
[参考-MySQL 使用 SSL 连接](https://segmentfault.com/a/1190000007819751)

```
命令
bin/mysql_ssl_rsa_setup
```
```
结果
[root@localhost mysql]#  bin/mysql_ssl_rsa_setup
Generating a 2048 bit RSA private key
..................................................................................+++
..........+++
writing new private key to 'ca-key.pem'
-----
Generating a 2048 bit RSA private key
..........................................+++
......+++
writing new private key to 'server-key.pem'
-----
Generating a 2048 bit RSA private key
.................................................+++
..............+++
writing new private key to 'client-key.pem'
-----
```
9. 授予读写权限
```
命令：
chown -R root .
chown -R mysql data mysql-files
```

```
结果：
[root@localhost mysql]# chown -R root .
[root@localhost mysql]# chown -R mysql data mysql-files
[root@localhost mysql]# ll
总用量 36
drwxr-xr-x.  2 root  mysql  4096 8月  27 12:18 bin
-rw-r--r--.  1 root  mysql 17987 6月  22 22:13 COPYING
drwxr-xr-x.  2 mysql mysql     6 8月  27 12:21 data
drwxr-xr-x.  2 root  mysql    55 8月  27 12:18 docs
drwxr-xr-x.  3 root  mysql  4096 8月  27 12:18 include
drwxr-xr-x.  5 root  mysql   229 8月  27 12:18 lib
drwxr-xr-x.  4 root  mysql    30 8月  27 12:18 man
drwxr-x---.  2 mysql mysql     6 8月  27 12:21 mysql-files
-rw-r--r--.  1 root  mysql  2478 6月  22 22:13 README
drwxr-xr-x. 28 root  mysql  4096 8月  27 12:18 share
drwxr-xr-x.  2 root  mysql    90 8月  27 12:18 support-files
```
10. 添加到MySQL 启动脚本到系统服务
```
命令：
cp support-files/mysql.server /etc/init.d/mysql.server
```
```
结果：
[root@localhost mysql]# cp support-files/mysql.server /etc/init.d/mysql.server
```

11. 启动脚本
```
命令：
 service mysql.server start
```
```
结果：
[root@localhost mysql]# service mysql.server start
Unit mysql.server.service could not be found.
Starting MySQL. SUCCESS! 
```
12. 数据库已经启动，现在登陆使用，这里用到上面的临时密码
```
[root@localhost mysql]# mysql -uroot -p
Enter password: 
ERROR 1862 (HY000): Your password has expired. To log in you must change it using a client that supports expired passwords.
```
出现问题：ERROR 1862 
翻译：
错误1862(HY000):你的密码已经过期。登录必须改变它使用一个客户端,支持过期的密码。

解决方法：
1、 用忽略授权表的方法进入mysql 
  vi /etc/my.cnf
　　    [mysqld]
　　    skip-grant-tables
:wq! #保存退出

![添加命令](http://upload-images.jianshu.io/upload_images/2787821-5d44785a5b6c9dec.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
重启mysql 就可以进入数据库了

![重启](http://upload-images.jianshu.io/upload_images/2787821-5791e1de86e2a93b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

2. 进入mysql，查看root用户的详细信息
```
SQL：
 select * from mysql.user where user='root' \G
```
```
[root@localhost mysql]# mysql -uroot -p
Enter password: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MySQL connection id is 3
Server version: 5.7.19 MySQL Community Server (GPL)

Copyright (c) 2000, 2016, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MySQL [(none)]> select * from mysql.user where user='root' \G
*************************** 1. row ***************************
                  Host: localhost
                  User: root
           Select_priv: Y
           Insert_priv: Y
           Update_priv: Y
           Delete_priv: Y
           Create_priv: Y
             Drop_priv: Y
           Reload_priv: Y
         Shutdown_priv: Y
          Process_priv: Y
             File_priv: Y
            Grant_priv: Y
       References_priv: Y
            Index_priv: Y
            Alter_priv: Y
          Show_db_priv: Y
            Super_priv: Y
 Create_tmp_table_priv: Y
      Lock_tables_priv: Y
          Execute_priv: Y
       Repl_slave_priv: Y
      Repl_client_priv: Y
      Create_view_priv: Y
        Show_view_priv: Y
   Create_routine_priv: Y
    Alter_routine_priv: Y
      Create_user_priv: Y
            Event_priv: Y
          Trigger_priv: Y
Create_tablespace_priv: Y
              ssl_type: 
            ssl_cipher: 
           x509_issuer: 
          x509_subject: 
         max_questions: 0
           max_updates: 0
       max_connections: 0
  max_user_connections: 0
                plugin: mysql_native_password
 authentication_string: *84658F872CACC6CFB61752520A0D5E18BEC41D02
      password_expired: Y
 password_last_changed: 2017-08-27 12:25:07
     password_lifetime: NULL
        account_locked: N
1 row in set (0.01 sec)

MySQL [(none)]> 

```
3、把password_expired 改成不过期
``` 
SQL：
use mysql
update user set password_expired='N' where user='root';
flush privileges;
quit
```
```
结果
MySQL [(none)]> use mysql
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MySQL [mysql]> update user set password_expired='N' where user='root';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MySQL [mysql]> flush privileges;
Query OK, 0 rows affected (0.00 sec)

MySQL [mysql]> quit
Bye
```

![Paste_Image.png](http://upload-images.jianshu.io/upload_images/2787821-6f75aff0f4ace870.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

4、把 /etc/my.cnf 的 skip-grant-tables 这行注释掉

![修改回去](http://upload-images.jianshu.io/upload_images/2787821-1adff73c63841ec7.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

5、重启服务
```
命令
 service mysql.server restart
```

6、再次登陆 mysql 就正常了


![正常登陆了](http://upload-images.jianshu.io/upload_images/2787821-8dbfaf6cdaa44c75.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

13. 接下来 回来继续修改
首先需要重置密码，不然数据库不让进行操作
```
SQL：
use mysql;
ALTER USER 'root'@'localhost' identified by 'root';
或者
set password=password("root");
flush privileges;
exit;
```
```
结果
MySQL [(none)]> use mysql;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MySQL [mysql]> ALTER USER 'root'@'localhost' identified by 'root';
Query OK, 0 rows affected (0.00 sec)

MySQL [mysql]> flush privileges;
Query OK, 0 rows affected (0.00 sec)

MySQL [mysql]> exit;
Bye
[root@localhost mysql]# 
```

14. 最后进行授权
重新登陆使用新密码
```
SQL:
mysql -uroot -proot
``` 
```
结果
[root@localhost mysql]# mysql -uroot -proot
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MySQL connection id is 4
Server version: 5.7.19 MySQL Community Server (GPL)

Copyright (c) 2000, 2016, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MySQL [(none)]> 
```
接下来添加远程连接：
```
SQL:
use mysql;
update user set host = '%' where user ='root';
flush privileges;
```
```
结果
MySQL [(none)]> use mysql;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MySQL [mysql]> update user set host = '%' where user ='root';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MySQL [mysql]> flush privileges;
Query OK, 0 rows affected (0.00 sec)

MySQL [mysql]> 
```

15.到这里所有的操作都完成了，现在在远程机器上使用客户端登陆试试吧，
客户端我选用两款工具，navicat和Sqlyog
首先关闭放火墙
```
命令
systemctl stop firewalld.service
```

![sqlyog](http://upload-images.jianshu.io/upload_images/2787821-e6f25ea8ccc016a6.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![登陆后](http://upload-images.jianshu.io/upload_images/2787821-6b53b1195c8bf74c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

16. 修改配置文件my.cnf
```
命令
vim /etc/my.cnf
# 添加下面数据
[mysql]
default-character-set=utf8
[client]
default-character-set=utf8
[mysqld]
character-set-server=utf8
# 退出重启
:x
service mysql.server restart
```

![character](http://upload-images.jianshu.io/upload_images/2787821-27fd61c736f038b5.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

详细的配置参照 https://blog.linuxeye.cn/379.html
17. 设置环境变量profile
```
vim /etc/profile

MYSQL=/usr/local/mysql
PATH=$MYSQL/bin:$PATH

export MYSQL

# 保存后别忘记使生效
source /etc/profile
```

![增加MYSQL_HOME](http://upload-images.jianshu.io/upload_images/2787821-e275181c830c0189.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

18. 添加开机启动chkconfig
```
命令：
chmod 755 /etc/init.d/mysql
chkconfig --add mysql
chkconfig --level 345 mysql on
```
```
结果：
[root@izj6c06j2vnul9swefj2c4z ~]# chmod 755 etc/init.d/mysql
[root@izj6c06j2vnul9swefj2c4z ~]# chkconfig --add mysql
[root@izj6c06j2vnul9swefj2c4z ~]# chkconfig --level 345 mysql on

```

后记:
在安装的过程中，出现很多的问题， 这里简单记录下可能的出现的问题

1. 路径问题
如果安装的路径不是 /usr/local/mysql 而是 /home/mysql/mysql-5.7.19-linux-glibc2.12-x86_64
或者其他的什么路径是，需要启动数据库前 配置mysql.server
vim support-files/mysql.server
找到文件中配置路径的basedir 和datadir 进行修改成你自己的安装路径
basedir=/home/mysql
datadir=/home/mysql/data

2. 文件执行权限问题：
将第6步修改给mysql所用户组的文件 在第9步修改回来，不然有可能出现问题，

3. 防火墙一定要设置，或者关闭，不然是连不了的。
4. 如果使用的阿里云的，需要设置控制台设备的端口允许IP允许。
