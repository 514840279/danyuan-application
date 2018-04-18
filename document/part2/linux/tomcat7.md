## jdk 1.8安装
安装tomcat前需要确认jdk 安装了没有
检查安装：

    [root@single ~]# java -version
    java version "1.7.0_65"
    OpenJDK Runtime Environment (rhel-2.5.1.2.0.1.el6_5-x86_64 u65-b17)
    OpenJDK 64-Bit Server VM (build 24.65-b04, mixed mode)
    [root@single ~]# rpm -qa | grep java
    tzdata-java-2014g-1.el6.noarch
    java-1.7.0-openjdk-1.7.0.65-2.5.1.2.0.1.el6_5.x86_64
    java-1.6.0-openjdk-1.6.0.0-11.1.13.4.el6.x86_64
    [root@single ~]# 

如果发现有安装好的OpenJDK以及安装包的话那么首先依次执行卸载。 
卸载命令：

    [root@single ~]# rpm -e java-1.7.0-openjdk-1.7.0.65-2.5.1.2.0.1.el6_5.x86_64
    [root@single ~]# rpm -qa | grep java
    tzdata-java-2014g-1.el6.noarch
    java-1.6.0-openjdk-1.6.0.0-11.1.13.4.el6.x86_64
    [root@single ~]# rpm -e java-1.6.0-openjdk-1.6.0.0-11.1.13.4.el6.x86_64
    [root@single ~]# rpm -qa | grep java
    tzdata-java-2014g-1.el6.noarch
    [root@single ~]# 

下载jdk进行安装
下载地址：
1.7 版：http://pan.baidu.com/s/1eR16I6e
1.8以后去官网 ：http://www.oracle.com/technetwork/java/javase/downloads/index.html

准备tomcat：
下载：
http://tomcat.apache.org/download-70.cgi


![下载二进制的版本](http://upload-images.jianshu.io/upload_images/2787821-6a88cc308dc88754.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


jdk 上传到 usr/src/下

    [root@single /]# ls usr/local/src/
    apache-tomcat-7.0.77.tar.gz  jdk-8u131-linux-x64.rpm
    [root@single /]#

执行安装

    [root@single /]# rpm -ivh /usr/local/src/jdk-8u131-linux-x64.rpm
    Preparing...                 ########################################### [100%]
       1:jdk1.8.0_131            ########################################### [100%]
    Unpacking JAR files...
    	tools.jar...
    	plugin.jar...
    	javaws.jar...
    	deploy.jar...
    	rt.jar...
    	jsse.jar...
    	charsets.jar...
    	localedata.jar...
    [root@single /]# rpm -qa|grep jdk
     jdk1.8.0_131-1.8.0_131-fcs.x86_64
    [root@single /]#

三、配置环境变量
1、 打开配置文件
vim /etc/profile
 
2、添加配置信息
JAVA_HOME=/usr/java/jdk1.8.0_131
TOMCAT_HOME=/home/tomcat/apache-tomcat-7.0.77
PATH=$JAVA_HOME/bin:$PATH
CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export JAVA_HOME
export TOMCAT_HOME
export PATH
export CLASSPATH


![注意java_home的路径](http://upload-images.jianshu.io/upload_images/2787821-a34b676c7fb40311.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

3、立即生效配置文件
source /etc/profile
 
4、验证配置信息
echo $JAVA_HOME
echo $PATH
echo $CLASSPATH

![安装JDK完成](http://upload-images.jianshu.io/upload_images/2787821-38f741e06477634a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

#安装tomcat
    [root@single src]# ls
    apache-tomcat-7.0.77.tar.gz  jdk-8u131-linux-x64.rpm
    [root@single src]# tar zxvf apache-tomcat-7.0.77.tar.gz 

    [root@single src]# cd apache-tomcat-7.0.77
    [root@single apache-tomcat-7.0.77]# ls
    bin  conf  lib  LICENSE  logs  NOTICE  RELEASE-NOTES  RUNNING.txt     temp  webapps  work
    [root@single apache-tomcat-7.0.77]# cd conf/
    [root@single conf]# vim server.xml 


![修改端口](http://upload-images.jianshu.io/upload_images/2787821-28efe7ce43f79a4d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

修改管理用户，添加管理员：

  <role rolename="tomcat"/>
  <role rolename="role1"/>
  <role rolename="manager-gui"/>
  <user username="tomcat" password="tomcat" roles="tomcat,rolel,manager-gui"/>


![添加manager-gui就可以](http://upload-images.jianshu.io/upload_images/2787821-a5ae6c2f127deea2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


复制一份tomcat到 /home/tomcat

    [root@single src]# cp -Rf apache-tomcat-7.0.77 /home/tomcat
   [root@single src]# 

启动tomcat：


![测试没问题](http://upload-images.jianshu.io/upload_images/2787821-5c0a3001c4daf0b8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)



![manager也可以管理了](http://upload-images.jianshu.io/upload_images/2787821-5c2e037e9d44a3ea.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

===========================================================

#tomcat 开启最高权限

  <role rolename="tomcat"/>
  <role rolename="role1"/>
  <role rolename="manager-gui"/>
  <role rolename="admin-gui"/>
  <role rolename="admin-script"/>
  <user username="tomcat" password="tomcat" roles="tomcat,rolel,manager-gui,admin-gui,admin-script"/>
