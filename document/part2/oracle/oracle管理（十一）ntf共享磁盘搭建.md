备份服务器：
mkdir -p /home/test
chown -R ora112:oinstall /home/test

![image.png](http://upload-images.jianshu.io/upload_images/2787821-2fe83511bd6d2d7f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


vim /etc/exports
/home/test 192.168.1.11(rw,sync,no_root_squash)
![image.png](http://upload-images.jianshu.io/upload_images/2787821-626114b3d41fd792.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
![image.png](http://upload-images.jianshu.io/upload_images/2787821-3f5471d30065484a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

service rpcbind start
service nfs start

![image.png](http://upload-images.jianshu.io/upload_images/2787821-2f0155ac35e45900.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

----------------
数据库服务器：
mkdir -p /home/abc
chown -R ora112:oinstall /home/abc
![image.png](http://upload-images.jianshu.io/upload_images/2787821-fd7c560961ab055c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

mount -t nfs 172.16.3.15:/home/test /home/abc
![image.png](http://upload-images.jianshu.io/upload_images/2787821-5489b654b2ceac7c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

说明成功启动（注意：在centos 6.x之后的版本showmount -e 后面一定要指定ip，否则会卡在那，也没输出，5.x的版本可以不指定）
