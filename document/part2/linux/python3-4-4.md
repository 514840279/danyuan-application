## 准备：
  linux系统，python3.4.4 安装包

## 启动系统

![启动系统就可以了](http://upload-images.jianshu.io/upload_images/2787821-44913d4f6136edbf.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

由于我们并不需要用到界面，所以就不用登录了
使用xshell 远程连接 linux

           
![登录到虚拟机](http://upload-images.jianshu.io/upload_images/2787821-aa2230c93950161f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

由于需要用到python 安装包 可以在 linux中用界面下载好或者wget  https://www.python.org/ftp/python/3.4.4/Python-3.4.4.tgz
或者真机上下载在上传到linux中
[下载地址 ](https://www.python.org/ftp/python/3.4.4/Python-3.4.4.tgz)：https://www.python.org/ftp/python/3.4.4/Python-3.4.4.tgz

我习惯 用第三种，当然第二种更方便，
下载成功后通过xftp上传到linux中 xftp 是和xshell 一家的软件在xshell 中有直接登录按钮
若没有安装会跳转到下载软件页面，安装完软件在点一次就登录了。
![点击直接登录](http://upload-images.jianshu.io/upload_images/2787821-40d166f5518673cc.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


![登录后](http://upload-images.jianshu.io/upload_images/2787821-32d8be6451698902.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


![点击进入根目录](http://upload-images.jianshu.io/upload_images/2787821-948d776adeb6c270.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


![新建python目录并上传文件](http://upload-images.jianshu.io/upload_images/2787821-a42f19793a2e5e6a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

接下来就是借鉴 别人的方法安装就可以了
例如这篇文章：http://www.cnblogs.com/Guido-admirers/p/6259410.html
二、然后，解压缩文件》

tar -xvf Python-3.6.0.tgz

三、创建安装文件的路径。

mkdir /usr/local/python3

四、编译。

./configure --prefix=/usr/local/python3

五、安装。

1、make

2、make install

3、完毕

六、创建新版本的软连接。个人经验软连接可以不用

1、修改旧版本

mv /usr/bin/python /usr/bin/python_bak

2、创建新的软连接

ln -s /usr/local/python3/bin/python3 /usr/bin/python

3、检查python的版本

python -V

python-3.6.0

软连接创建成功

七、配置成功后，pip3用不了，需进一步配置。


2、PATH=$PATH:$HOME/bin:/usr/local/python3/bin

3、完成

这时pip3就可以使用了。

输入python3 可以看到python3已经工作了
![image.png](http://upload-images.jianshu.io/upload_images/2787821-088de932d581dde5.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


使用pycharm 用linux 社区版的也有linux 版的， 下载解压就可以使用了


![下载](http://upload-images.jianshu.io/upload_images/2787821-d4b8b16d4ca9089d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
