															
cd $ORACLE_HOME															
"cd /app/oracle/product/11.2.0.4
"															
ls															
![1.png](http://upload-images.jianshu.io/upload_images/2787821-bb8e61e2d5397876.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
															
												
su ora112															
移走 Opath															
 mv OPatch OPatch.bak															
![2.png](http://upload-images.jianshu.io/upload_images/2787821-0a796fbf69ef3f10.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
															
												
															
把我们的放进去															
root															
![3.png](http://upload-images.jianshu.io/upload_images/2787821-74ad37d880b5917f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
															
![4.png](http://upload-images.jianshu.io/upload_images/2787821-0086320073b94547.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
														
ora112															
![image.png](http://upload-images.jianshu.io/upload_images/2787821-6670632e668733c6.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
												
root 改变组															
![image.png](http://upload-images.jianshu.io/upload_images/2787821-05286ffae05e52a2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
											
															
ora112															
```
cd OPatch															
./opatch apply /home/package/24006111															
															
./opatch apply /home/db/24006111
y
a@b.c

NONE
NONE
y
```
![image.png](http://upload-images.jianshu.io/upload_images/2787821-612a9bf14f79f28a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
![image.png](http://upload-images.jianshu.io/upload_images/2787821-2f345c3204143339.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)													
………															
![image.png](http://upload-images.jianshu.io/upload_images/2787821-28e72272bd605bcc.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
															
															
															
															
确认：															
./opatch lsinventory															
![image.png](http://upload-images.jianshu.io/upload_images/2787821-b4f277333a1cd640.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
															
					
															
第二个补丁															
 ./opatch apply /home/package/24315821															
															 
``` 
./opatch apply /home/db/24315821
y
a@b.c

NONE
NONE
y
```
															
![image.png](http://upload-images.jianshu.io/upload_images/2787821-10e614e7a10e0637.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
												
……															
![image.png](http://upload-images.jianshu.io/upload_images/2787821-5fa14665039fed17.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
											
															
确认：															
./opatch lsinventory															
															
![image.png](http://upload-images.jianshu.io/upload_images/2787821-a984f10fc0080972.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
												
															
															
第三个 不用				
![image.png](http://upload-images.jianshu.io/upload_images/2787821-8da2c8bd947e2c2f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
											
