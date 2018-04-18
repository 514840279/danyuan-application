万事开头都是先准备软件
下载地址 http://download.redis.io/redis-stable.tar.gz

下载后上传到linux机器

![上传后软件截图，看到软件大小只有1.5M左右，十分小巧](http://upload-images.jianshu.io/upload_images/2787821-41ec1ccd80ccacd3.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

接下来就是安装make，make install

先来解压吧

    [root@localhost ~]# cd /home/server/
    [root@localhost server]# ls

![查看文件是否存在](http://upload-images.jianshu.io/upload_images/2787821-0206939618997239.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

    [root@localhost server]# tar xzf redis-stable.tar.gz 
    [root@localhost server]# ls
![解压后查看](http://upload-images.jianshu.io/upload_images/2787821-a44835f423e0cb12.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

    [root@localhost server]# cd redis-stable
    [root@localhost redis-stable]# make

![后面好长就不截图了](http://upload-images.jianshu.io/upload_images/2787821-9b929ebd47653fa2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


![最后它还建议去test](http://upload-images.jianshu.io/upload_images/2787821-717899ce39a2ed39.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![结果出现两个错误，不知道有没有影响](http://upload-images.jianshu.io/upload_images/2787821-1b0b4efff059ef4c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

安装试试 make install
![又让我test，不管了](http://upload-images.jianshu.io/upload_images/2787821-bcd38b4d5a819cea.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

启动试试
redis-server


![起来了，而且提示端口6379](http://upload-images.jianshu.io/upload_images/2787821-3296b4f91a0759ce.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

后续配置部分没明白，先这样

