首先安装 jdk 方法，安装方法参照之前的日记 <a href="http://www.jianshu.com/p/ad87b72b6eaf">[linux下tomcat7安装]</a>

第二 步下载maven安装包：
http://maven.apache.org/download.cgi

![选择二进制文件 tar.gz](http://upload-images.jianshu.io/upload_images/2787821-648912f78dc442e8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

上传到服务器上后 解压
tar -zxvf apache-maven-3.5.0-bin.tar.gz 

![解压文件](http://upload-images.jianshu.io/upload_images/2787821-178ce929b9242205.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


![解压后](http://upload-images.jianshu.io/upload_images/2787821-ae50960e3c91f0b6.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

三、配置环境变量
1、 打开配置文件
vim /etc/profile

2
export MAVEN_HOME=/home/server/apache-maven-3.5.0
export PATH=${MAVEN_HOME}/bin:${PATH}

![添加环境变量](http://upload-images.jianshu.io/upload_images/2787821-7db606270f9ff5db.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

3、立即生效配置文件
source /etc/profile

4、验证配置信息
echo $MAVEN_HOME


![验证生效](http://upload-images.jianshu.io/upload_images/2787821-c388dc1b84427c26.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


测试：
java -jar /home/server/ztb.war

![完美](http://upload-images.jianshu.io/upload_images/2787821-96c8ab09d5862a63.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
