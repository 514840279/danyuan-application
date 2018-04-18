挂载硬盘		
mount sdd1 /mnt		
cd /mnt		
cp pacakge /home		
		
授权		
chmod u+x r*		
 chmod u+x p*		
ll		
![image.png](http://upload-images.jianshu.io/upload_images/2787821-ed76048f79584ec1.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

		
验证文件		cat md5.txt
1616f61789891a56eafd40de79f58f28 *p13390677_112040_Linux-x86-64_1of7.zip		
67ba1e68a4f581b305885114768443d3 *p13390677_112040_Linux-x86-64_2of7.zip		
952458e119946b106e4c8e9e5b25f0a2 *p24006111_112040_Linux-x86-64.zip		
9e0ab832de4a4e87f26210a0df0f7dc6 *p24315821_112040_Linux-x86-64.zip		
195bd01bb97b31eee9ba8b9db478e26b *p24433711_112040_Linux-x86-64.zip		
5059cc598b65a70ce6709e846f8adaa0 *p6880880_112000_Linux-x86-64.zip		
		
卸载硬盘		
umount /mnt		
		
		
 rpm -ivh rlwrap-0.42-1.el6.x86_64.rpm 		
![image.png](http://upload-images.jianshu.io/upload_images/2787821-7a98decb5ae74f18.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
		

		
使用 ora112 用户解压		
一个个解压文件		
unzip p24006111_112040_Linux-x86-64.zip		
unzip p24315821_112040_Linux-x86-64.zip 		
unzip p24433711_112040_Linux-x86-64.zip 		
unzip p13390677_112040_Linux-x86-64_1of7.zip 		
unzip p13390677_112040_Linux-x86-64_2of7.zip 		
unzip p6880880_112000_Linux-x86-64.zip 		
		
![image.png](http://upload-images.jianshu.io/upload_images/2787821-70f6d15915be3487.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

		
使用 ora112 用户解压可以忽略这步		
chown ora112:oinstall -R 24433711		
chown ora112:oinstall -R 24315821		
chown ora112:oinstall -R 24006111		
chown ora112:oinstall -R database		
![image.png](http://upload-images.jianshu.io/upload_images/2787821-1814a4bab43c4539.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
		
	
		
安装 dbms		
xhost +		
su - ora112		
 ./runInstaller		
![image.png](http://upload-images.jianshu.io/upload_images/2787821-6d61cb4acaa03e80.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

