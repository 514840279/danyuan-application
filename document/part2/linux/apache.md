#图片服务器上安装一个http服务
##软件准备：
>apr-1.5.2.tar.gz        httpd-2.4.25.tar.gz     mod_ftp-0.9.6-beta.tar.gz
apr-iconv-1.2.1.tar.gz       pcre-8.40.tar.gz
apr-util-1.5.4.tar.gz   mod_fcgid-2.3.9.tar.gz

解压软件：
>tar -zxf apr-1.5.2.tar.gz
tar -zxf httpd-2.4.25.tar.gz
tar -zxf pcre-8.40.tar.gz
tar -zxf apr-util-1.5.4.tar.gz
tar -zxf mod_ftp-0.9.6-beta.tar.gz
tar -zxf apr-iconv-1.2.1.tar.gz
tar -zxf mod_fcgid-2.3.9.tar.gz

查看：ls
>[root@smqq Apache]# ls
apr-1.5.2               apr-util-1.5.4.tar.gz  mod_fcgid-2.3.9.tar.gz
apr-1.5.2.tar.gz        httpd-2.4.25           mod_ftp-0.9.6
apr-iconv-1.2.1         httpd-2.4.25.tar.gz    mod_ftp-0.9.6-beta.tar.gz
apr-iconv-1.2.1.tar.gz  install                pcre-8.40
apr-util-1.5.4          mod_fcgid-2.3.9        pcre-8.40.tar.gz
[root@smqq Apache]# 

##安装
apr:
> [root@smqq Apache]# cd apr-1.5.2
[root@smqq apr-1.5.2]#./configure --prefix=/home/Apache/install/apr
[root@smqq apr-1.5.2]#make
[root@smqq apr-1.5.2]#make install

apr-util:
> [root@smqq Apache]# cd apr-util-1.5.4
[root@smqq apr-util-1.5.4]#./configure --prefix=/home/Apache/install/apr-util -with-apr=/home/Apache/install/apr/bin/apr-1-config
[root@smqq apr-util-1.5.4]#make
[root@smqq apr-util-1.5.4]#make install

pcre-8.40:
> [root@smqq Apache]# cd pcre-8.40
[root@smqq pcre-8.40]#./configure --prefix=/home/Apache/install/pcre
[root@smqq pcre-8.40]#make
[root@smqq pcre-8.40]#make install

下面是apache 的安装了 可能会出现各种的错误，我们一步步来
httpd-2.4.25 :
> [root@smqq Apache]# cd httpd-2.4.25
[root@smqq httpd-2.4.25]# ./configure --prefix=/home/Apache/install/httpd-2.4.25
checking for chosen layout... Apache
checking for working mkdir -p... yes
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking build system type... x86_64-unknown-linux-gnu
checking host system type... x86_64-unknown-linux-gnu
checking target system type... x86_64-unknown-linux-gnu
configure: 
configure: Configuring Apache Portable Runtime library...
configure: 
checking for APR... no
configure: error: APR not found.  Please read the documentation.
[root@smqq httpd-2.4.25]# 

这里提示说apr 没有找到，我们之前安装过了，为什么？
找下原因：
原来需要添加 with 命令
>[root@smqq httpd-2.4.25]# ./configure --prefix=/home/Apache/install/httpd-2.4.25 --with-apr=/home/Apache/install/apr --with-apr-util=/home/Apache/install/apr-util --with-pcre=/home/Apache/install/pcre
[root@smqq httpd-2.4.25]#make
[root@smqq httpd-2.4.25]#make install

至此安装的步骤已经完成了，下面启动启动测试
•启动Apache：/home/Apache/install/httpd-2.4.25/bin/apachectl start
•停止Apache：/home/Apache/install/httpd-2.4.25/bin/apachectl stop
•重启Apache：/home/Apache/install/httpd-2.4.25/bin/apachectl restart

##启动：
>[root@smqq httpd-2.4.25]# /home/Apache/install/httpd-2.4.25/bin/apachectl start
AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using 127.0.0.1. Set the 'ServerName' directive globally to suppress this message
[root@smqq httpd-2.4.25]# 

他让设置一个服务的名称，我们找到httpd.conf配置一下servername
>[root@smqq conf]# vim  /home/Apache/install/httpd-2.4.25/conf/httpd.conf 
>[root@smqq conf]# 

找到注释的地方 Servername 修改成你的ip，或者127.0.0.1，或者localhost
>ServerName 172.16.3.86:80

再次启动：
>[root@smqq conf]#  /home/Apache/install/httpd-2.4.25/bin/apachectl start
httpd (pid 57862) already running
[root@smqq conf]# 

测试一下浏览器打开：
http://172.16.3.86/
![Paste_Image.png](http://upload-images.jianshu.io/upload_images/2787821-18231e105ecb2e2b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

##映射静态文件
到这里服务器搭建成功了，但是我们需要的是一个能够访问静态文件的服务器，所以还需要将本地文件映射到apache服务器上。
接下来一步步进行映射配置：
找到一个配置，参照这个配置我们从新设置下conf文件
![Paste_Image.png](http://upload-images.jianshu.io/upload_images/2787821-9e733acc17408fa0.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
先停掉服务
>[root@smqq conf]# /home/Apache/install/httpd-2.4.25/bin/apachectl stop
[root@smqq conf]# vim  /home/Apache/install/httpd-2.4.25/conf/httpd.conf 

![Paste_Image.png](http://upload-images.jianshu.io/upload_images/2787821-dac619cefbb4380a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

>[root@smqq conf]#  /home/Apache/install/httpd-2.4.25/bin/apachectl start


![Paste_Image.png](http://upload-images.jianshu.io/upload_images/2787821-c4d75e2045b755c8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

到现在服务的所有配置都已经搞定等待远程访问图片就好了

