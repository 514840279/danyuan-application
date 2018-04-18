2.rman备份：

level0:full                         
level1:Cumulative
level1:Differential

Cumulative-----累积增量每次都是从全备开始为起点一直到目前数据的变化。
Differential------差异增量每次都是从上一次增量备份为起点到目前的数据变化。



0及备份


su ora112
 cd /app/oracle/product/11.2.0.4/
![image.png](http://upload-images.jianshu.io/upload_images/2787821-6295f46239e8ef03.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
mkdir /home/bak/BACKUPSET
![image.png](http://upload-images.jianshu.io/upload_images/2787821-1cd715106f5729e9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
mkdir $ORACLE_HOME/bak
![image.png](http://upload-images.jianshu.io/upload_images/2787821-dbeb38045ec60fff.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
 cd $ORACLE_HOME/bak
![image.png](http://upload-images.jianshu.io/upload_images/2787821-c641a90f91b32473.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
vim bp0.rman
![image.png](http://upload-images.jianshu.io/upload_images/2787821-21521cc17d0fea8f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
```
run{
        allocate channel c1 device type disk MAXPIECESIZE 2000 M;#分配通道（本质是一个连接Oracle的会话）
        allocate channel c2 device type disk MAXPIECESIZE 2000 M;
        allocate channel c3 device type disk MAXPIECESIZE 2000 M;
        allocate channel c4 device type disk MAXPIECESIZE 2000 M;
        allocate channel c5 device type disk MAXPIECESIZE 2000 M;
        configure controlfile autobackup on; #设置自动备份控制文件和参数文件
        #set backup copies 3;#设置生成2个和备份一模一样的副本。（占用空间，慎用）
        CONFIGURE RETENTION POLICY TO REDUNDANCY 2;#保留2次的0级备份（保留策略之一）
        #configure retention policy to recovery window of 3650 days;#最多保留能恢复3650天的备份。（保留策略之一）。
#注意：当前的程序会根据环境变量BACKUP_TOTAL_SIZE的大小（以MB为单位）保证闪回恢复区的文件总大小不超过该大小,远不能触发3650天的保留策略（这是我自己写策略）;若调小最大保留天数
的值，则有可能先触发最大保留天数。
        crosscheck backup; #检测磁盘上的备份并告知控制文件。
        crosscheck copy of archivelog all;#检测磁盘上的归档并告知控制文件
backup  as compressed backupset incremental level=0 database format '/home/bak/BACKUPSET/bak_%T_%U_level0.bak' tag='level0' plus archivelog;
        #sql 'alter system archive log current';
        delete noprompt archivelog all completed before 'sysdate-7'; #删除7天前生成的所有归档。（保留归档是为了能够在这7天的期间做不完全恢复。）
        #delete noprompt expired backup; #删除过期的备份。
        #delete noprompt backup of database completed before 'sysdate - 16'; #删除16天内的备份。
        release channel c1; #释放通道
        release channel c2;
        release channel c3;
        release channel c4;
        release channel c5;
        }
allocate channel for maintenance type disk;
delete obsolete device type disk;#删除超出保存策略的备份和归档。

        exit
```

```
cd $ORACLE_HOME/bak
vim bp0.sh

#!/bin/bash
rman target / @$ORACLE_HOME/bak/bp0.rman log=$ORACLE_HOME/bak/log_level0_`date +%y%m%d`.log
```
![image.png](http://upload-images.jianshu.io/upload_images/2787821-29344fd9d4440a4e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
![image.png](http://upload-images.jianshu.io/upload_images/2787821-050fc3a08f908783.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
修改执行权限
ll
chmod u+x bp0*
ll
![image.png](http://upload-images.jianshu.io/upload_images/2787821-d5f6ba29473da525.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


用root用户检验下面的文件能否执行：
su - ora112 -c /app/oracle/product/11.2.0.4/bak/bp0.sh 
![image.png](http://upload-images.jianshu.io/upload_images/2787821-87fdfef0dd558cb7.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

验证下
cd /home/bak/BACKUPSET/
ll

![image.png](http://upload-images.jianshu.io/upload_images/2787821-503c39b65ee1bc53.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
添加 到系统任务中
crontab -e
0 23 * * 6 su - ora112 -c /app/oracle/product/11.2.0.1/bak/bp0.sh
![image.png](http://upload-images.jianshu.io/upload_images/2787821-b16636d047beeab8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
检查系统任务
crontab -l
![image.png](http://upload-images.jianshu.io/upload_images/2787821-13693a7ae38a5ce1.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
重启系统任务
service crond reload
![image.png](http://upload-images.jianshu.io/upload_images/2787821-51923448cf3a4f9c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


一级备份

vim bp1.rman
![image.png](http://upload-images.jianshu.io/upload_images/2787821-f929079e33c2547f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
```
	run{ 
	allocate channel c1 device type disk; 
	allocate channel c2 device type disk; 
	allocate channel c3 device type disk; 
	allocate channel c4 device type disk; 
	allocate channel c5 device type disk; 
        configure controlfile autobackup on;
        configure retention policy to recovery window of 3650 days;
        crosscheck backup; 
#sql 'alter system archive log current'; 
backup   incremental level=1 cumulative database format '/home/bak/BACKUPSET/bak_%T_%U_cumulative_level1.bak' tag='cumulative' plus archivelog; 
#sql 'alter system archive log current'; 
	delete noprompt  archivelog all completed before 'sysdate-7';  
	crosscheck archivelog all; 
	delete noprompt expired backup; 
	delete noprompt obsolete; 
	delete noprompt backup of database completed before 'sysdate - 16'; 
	release channel c1; 
	release channel c2; 
	release channel c3; 
	release channel c4; 
	release channel c5; 
	} 
	exit 
```
![image.png](http://upload-images.jianshu.io/upload_images/2787821-8140a5de60dadf17.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
编写脚本
```
vim bp1.sh

#!/bin/bash
rman target / @$ORACLE_HOME/bak/bp1.rman log=$ORACLE_HOME/bak/log_cumulative_`date +%y%m%d`.log
```
![image.png](http://upload-images.jianshu.io/upload_images/2787821-e4685983b1d21934.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
修改执行权限
ll
chmod u+x bp1*
ll
![image.png](http://upload-images.jianshu.io/upload_images/2787821-772a985bfebcee74.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
用root用户检验下面的文件能否执行：
su - ora112 -c /app/oracle/product/11.2.0.4/bak/bp1.sh 
![image.png](http://upload-images.jianshu.io/upload_images/2787821-31669d997b83d1c3.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
验证下
cd /home/bak/BACKUPSET/
ll
![image.png](http://upload-images.jianshu.io/upload_images/2787821-bc3d0fc36fec5589.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
添加 到系统任务中
crontab -e
0 23 * * 3 su - ora112 -c /app/oracle/product/11.2.0.1/bak/bp1.sh
![image.png](http://upload-images.jianshu.io/upload_images/2787821-2f4769a05d861b67.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

检查系统任务
crontab -l
![image.png](http://upload-images.jianshu.io/upload_images/2787821-e4d836cb606eec87.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
重启系统任务
service crond reload
![image.png](http://upload-images.jianshu.io/upload_images/2787821-85b16ddd02765610.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

一级备份

su ora112
vim bp2.rman
![image.png](http://upload-images.jianshu.io/upload_images/2787821-548975beffc44adc.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
```

        run{
        allocate channel c1 device type disk;
        allocate channel c2 device type disk;
        allocate channel c3 device type disk;
        allocate channel c4 device type disk;
        allocate channel c5 device type disk;
        configure controlfile autobackup on;
        configure retention policy to recovery window of 3650 days;
        crosscheck backup;
#sql 'alter system archive log current';
backup   incremental level=1 database format '/home/bak/BACKUPSET/bak_%T_%U_differential.bak' tag='differential' plus archivelog; 
#sql 'alter system archive log current';
        delete noprompt archivelog all completed before 'sysdate-7';
        crosscheck archivelog all;
        delete noprompt expired backup;
        delete noprompt obsolete;
        delete noprompt backup of database completed before 'sysdate - 16';
        release channel c1;
        release channel c2;
        release channel c3;
        release channel c4;
        release channel c5;
        }
        exit

```
![image.png](http://upload-images.jianshu.io/upload_images/2787821-7fd8b434616bbc60.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

编写脚本
```
vim bp2.sh

#!/bin/bash
rman target / @$ORACLE_HOME/bak/bp2.rman log=$ORACLE_HOME/bak/log_differential_`date +%y%m%d`.log
```
![image.png](http://upload-images.jianshu.io/upload_images/2787821-97fe3c9db3452aa6.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)![image.png](http://upload-images.jianshu.io/upload_images/2787821-b5153b3193c03f23.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
修改执行权限
ll
chmod u+x bp2*
ll
![image.png](http://upload-images.jianshu.io/upload_images/2787821-6283060be58a74d2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
用root用户检验下面的文件能否执行：
su - ora112 -c /app/oracle/product/11.2.0.4/bak/bp2.sh 
![image.png](http://upload-images.jianshu.io/upload_images/2787821-77429bb4c7eba4b2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

验证下
cd /home/bak/BACKUPSET/
ll
![image.png](http://upload-images.jianshu.io/upload_images/2787821-713b07aebb278065.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
添加 到系统任务中
crontab -e
0 23 * * 3 su - ora112 -c /app/oracle/product/11.2.0.1/bak/bp1.sh
0 23 * * 0,1,2,4,5 su - ora112 -c /app/oracle/product/11.2.0.1/bak/bp2.sh

![image.png](http://upload-images.jianshu.io/upload_images/2787821-f92bb109e4daed8f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
检查系统任务
crontab -l

![image.png](http://upload-images.jianshu.io/upload_images/2787821-1becaa949f48d43a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
重启系统任务
service crond reload
![image.png](http://upload-images.jianshu.io/upload_images/2787821-424dba98d265d803.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
