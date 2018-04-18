系统光盘一张：
挂载光盘	 

      mount -t iso9660 /dev/cdrom  /media/	
	  ls /media/	

![image.png](http://upload-images.jianshu.io/upload_images/2787821-ceb537fb4917244a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

		cd /media/Packages/
cd 到 软件包		

     rpm -ivh tigervnc-server-1.1.0-16.el6.x86_64.rpm 
		
![image.png](http://upload-images.jianshu.io/upload_images/2787821-327c3e3d06fee635.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
		

		
开启远程服务端		vncserver
设置密码		123456
		123456
![image.png](http://upload-images.jianshu.io/upload_images/2787821-b94739f1a8a3d12b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
		

		
修改文件	vim ~/.vnc/xstartup 	
![image.png](http://upload-images.jianshu.io/upload_images/2787821-ce07f5b2960e14db.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
		

重启服务	 vncserver	
		
![image.png](http://upload-images.jianshu.io/upload_images/2787821-b2d4589c0926cedd.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
		
		
杀死服务1	vncserver -kill :1	
		
![image.png](http://upload-images.jianshu.io/upload_images/2787821-317a067eb434ba92.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
		
		
windows上安装客户端 并连接		

![image.png](http://upload-images.jianshu.io/upload_images/2787821-1ab95413e73d889a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

