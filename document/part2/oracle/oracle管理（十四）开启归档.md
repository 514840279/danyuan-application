root
mkdir  /home/bak

chown ora112:oinstall -R /home/bak

 
1.开启归档
set linesize 300
show parameter db_recovery_file_dest
alter system set db_recovery_file_dest='/home/bak' scope=both;
alter system set db_recovery_file_dest_size=10000000g scope=both;
show parameter db_recovery_file_dest
![image.png](http://upload-images.jianshu.io/upload_images/2787821-8c2effb73da88c4d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
archive log list;
shutdown immediate;
startup mount;
alter database archivelog;
alter database open;
![image.png](http://upload-images.jianshu.io/upload_images/2787821-9e55b71f50b840f4.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
验证：
archive log list
![image.png](http://upload-images.jianshu.io/upload_images/2787821-310d35af24e1b2c3.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
ll /home/bak
![image.png](http://upload-images.jianshu.io/upload_images/2787821-5764cd0aa883a190.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
alter system archive log current;
![image.png](http://upload-images.jianshu.io/upload_images/2787821-bebe71480f5bc130.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

ll /home/bak![image.png](http://upload-images.jianshu.io/upload_images/2787821-a65c56192518f8f6.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
ll /home/bak/ORCL/archivelog/2016_12_28
![image.png](http://upload-images.jianshu.io/upload_images/2787821-6e9961cf67d26b40.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


```
失败情况下 先查看文件组 再尝试切换日志，
3、解决办法：
清除非归档的日志。
select group#,sequence#,archived,status from v$log;
该结果会显示哪些日志没有归档，结果显示第3组日志还没有归档。这有可能就是脏日志。我们可以清除掉这组日志。
4、清除
alter database clear unarchived logfile group 3;
5、执行完以上操作后尝试切换日志组
alter system switch logfile;



--------删除归档日志

rman target /   -----进入rman工具窗口
crosscheck archivelog all;  --运行这个命令可以把无效的expired的archivelog标出来。
delete noprompt archivelog until time "sysdate -3";  -- -即删除3天前的归档日志
```
