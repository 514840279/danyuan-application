备份文件路径	
/home/bak/BACKUPSET	
挂载硬盘	
cp文件	
	
	
	
开始恢复数据	
	
准备工作	
su ora112	
cd $ORACLE_HOME/dbs	
![image.png](http://upload-images.jianshu.io/upload_images/2787821-ff2fc9efefd9b039.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

echo $ORACLE_BASE
echo $ORACLE_HOME
echo $ORACLE_SID
echo $NLS_LANG
![image.png](http://upload-images.jianshu.io/upload_images/2787821-ee62ecf823b99c38.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

shutdown immediate
```
无条件关闭
 shutdown abort
执行完成后关闭
shutdown immediate
```
![image.png](http://upload-images.jianshu.io/upload_images/2787821-0d71aa66f9a846d6.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

删除文件
rm initorcl.ora initorcl.ora.bak
ls
rm spfileorcl.ora  spfileorcl.ora.bak
ls
```
建议使用 mv 重命名 rm 删除没法 找到了
cd $ORACLE_HOME/dbs
mv initorcl.ora initorcl.ora.bak
mv spfileorcl.ora spfileorcl.ora.bak

```
![image.png](http://upload-images.jianshu.io/upload_images/2787821-d347a66d03f4cb31.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


开始恢复
vim $ORACLE_HOME/dbs/initorcl15.ora
```
compatible='11.2.0.4.0'
db_name=orcl15
db_recovery_file_dest=/home/bak
db_recovery_file_dest_size=10000000g
memory_target=10g


```
![image.png](http://upload-images.jianshu.io/upload_images/2787821-5ca3832892156b87.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![image.png](http://upload-images.jianshu.io/upload_images/2787821-98c755b9515faa61.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


vim /home/ora112/.bash_profile
![image.png](http://upload-images.jianshu.io/upload_images/2787821-55d92718b7df3820.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
使生效
 . /home/ora112/.bash_profile 
![image.png](http://upload-images.jianshu.io/upload_images/2787821-c0cfeb290492e156.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
sqlplus
startup nomount
![image.png](http://upload-images.jianshu.io/upload_images/2787821-3ef7aea520ac0715.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
修改组
chown ora112:oinstall -R /home/bak
![image.png](http://upload-images.jianshu.io/upload_images/2787821-498bea04ee3cea6e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
查看 15  的导出日志 vim log_level0_170105.log 
![image.png](http://upload-images.jianshu.io/upload_images/2787821-223664c5bd9322fd.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
cd $ORACLE_HOME/bin
rman target /
![image.png](http://upload-images.jianshu.io/upload_images/2787821-f02bd892b9d6c722.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
rman 

restore spfile to pfile "/app/oracle/product/11.2.0.1/dbs/initorcl15.ora" from "/home/bak/ORCL15/autobackup/2017_01_05/o1_mf_s_932434581_d6tdnp6z_.bkp";

![image.png](http://upload-images.jianshu.io/upload_images/2787821-7b993b52fb2c67af.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


su ora112
vim /app/oracle/product/11.2.0.1/dbs/initorcl15.ora
删掉之前添加的
![image.png](http://upload-images.jianshu.io/upload_images/2787821-c215bd1cedfe27cc.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

sqlplus
create spfile from pfile;
shutdown abort
startup nomount
![image.png](http://upload-images.jianshu.io/upload_images/2787821-b71ec6a13bcd8a32.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

ora112
mkdir -p /app/oracle/oradata/orcl15
chown -R ora112:oinstall /app/oracle/oradata/orcl15
![image.png](http://upload-images.jianshu.io/upload_images/2787821-da390e731c0db9c4.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

mkdir -p /app/oracle/admin/orcl15/adump
chown -R ora112:oinstall /app/oracle/admin/orcl15/adump

sqlplus
startup nomount;
![image.png](http://upload-images.jianshu.io/upload_images/2787821-fc1ceb348b97c1bb.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

rman
exit
rman target /
restore controlfile from "/home/bak/ORCL15/autobackup/2017_01_05/o1_mf_s_932434581_d6tdnp6z_.bkp";
![image.png](http://upload-images.jianshu.io/upload_images/2787821-185c7f16dd93b227.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

sqlplus
alter database mount;
![image.png](http://upload-images.jianshu.io/upload_images/2787821-2f44a491fbd1850e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

恢复文件位置验证
set linesize 100
set pagesize 9999
select FILE#,name from v$datafile;

![image.png](http://upload-images.jianshu.io/upload_images/2787821-a79b9fa08bf4eeea.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


set linesize 100
set pagesize 9999
select * from v$logfile;

![image.png](http://upload-images.jianshu.io/upload_images/2787821-ebbdd71611390bb4.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

rman
catalog start with '/home/bak';
![image.png](http://upload-images.jianshu.io/upload_images/2787821-de70cfb1a7ace6c2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

监测
crosscheck backup;
![image.png](http://upload-images.jianshu.io/upload_images/2787821-22622e9d345c664b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

sqlplus
--估算文件恢复之后占用的大小：
select sum(blocks)*8/1024/1024 from v$backup_datafile;
![image.png](http://upload-images.jianshu.io/upload_images/2787821-37b5044481fe3462.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

set linesize 500
set pagesize 9999
col a for a400
select replace('set newname for datafile '||FILE#||' to '''||name||''';','+DATA','/home/oradata') a from v$datafile;

![image.png](http://upload-images.jianshu.io/upload_images/2787821-3d86eb14f5d175fa.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

vim test.rman
run {
set newname for datafile 1 to '/app/oracle/oradata/orcl15/system01.dbf';
set newname for datafile 2 to '/app/oracle/oradata/orcl15/sysaux01.dbf';
set newname for datafile 3 to '/app/oracle/oradata/orcl15/undotbs01.dbf';
set newname for datafile 4 to '/app/oracle/oradata/orcl15/users01.dbf';
set newname for datafile 5 to '/app/oracle/oradata/orcl15/zhcx_data001.dbf';
set newname for datafile 6 to '/app/oracle/oradata/orcl15/zhcx_index001.dbf';
restore database;
switch datafile all;
}
![image.png](http://upload-images.jianshu.io/upload_images/2787821-b04c6ba81c4987ed.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

rman target / 
@/test.rman
![image.png](http://upload-images.jianshu.io/upload_images/2787821-0e4bce020d659427.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

recover database;
![image.png](http://upload-images.jianshu.io/upload_images/2787821-bf17cc390af4723d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


alter database open resetlogs;
![image.png](http://upload-images.jianshu.io/upload_images/2787821-9549fa620777f82a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

