

database文件：control file,online redo log file,data file
============================================
online redo log file:
查看redo日志组：
select * from v$log;
查看redo日志文件：
select * from v$logfile;

/app/oracle/oradata/orcl/redo01.log
/app/oracle/oradata/orcl/redo02.log
/app/oracle/oradata/orcl/redo03.log

修改：
shutdown immediate
startup mount
mv /app/oracle/oradata/orcl/redo01.log /home/oradata/orcl/redo01.log
mv /app/oracle/oradata/orcl/redo02.log /home/oradata/orcl/redo02.log
mv /app/oracle/oradata/orcl/redo03.log /home/oradata/orcl/redo03.log
alter database rename file '/app/oracle/oradata/orcl/redo01.log' to '/home/oradata/orcl/redo01.log';
alter database rename file '/app/oracle/oradata/orcl/redo02.log' to '/home/oradata/orcl/redo02.log';
alter database rename file '/app/oracle/oradata/orcl/redo03.log' to '/home/oradata/orcl/redo03.log';
alter database open;

验证redo日志文件：
select * from v$logfile;
====================================
data file:
查看
select file_name from dba_data_files;
select file_name from dba_temp_files;

修改：
shutdown immediate
startup mount

mv /app/oracle/oradata/orcl/users01.dbf       
mv /app/oracle/oradata/orcl/undotbs01.dbf  
mv /app/oracle/oradata/orcl/sysaux01.dbf
mv /app/oracle/oradata/orcl/system01.dbf
mv /app/oracle/oradata/orcl/temp01.dbf

alter database rename file '/app/oracle/oradata/orcl/users01.dbf'       to '/home/oradata/orcl/users01.dbf'       ;
alter database rename file '/app/oracle/oradata/orcl/undotbs01.dbf'     to '/home/oradata/orcl/undotbs01.dbf'     ;
alter database rename file '/app/oracle/oradata/orcl/sysaux01.dbf'
alter database rename file '/app/oracle/oradata/orcl/system01.dbf'
alter database rename file '/app/oracle/oradata/orcl/temp01.dbf'

alter database open;

验证：
select file_name from dba_data_files;
select file_name from dba_temp_files;
===========================
control file:
查看：
show parameter control_files

shutdown immediate
create pfile from spfile;
修改initorcl.ora里面的control_files='/home/oradata/control01.ctl'
mv /app/oracle/oradata/orcl/control01.ctl /home/oradata/control01.ctl
rm -f /app/oracle/fast_recovery_area/orcl/control02.ctl

create spfile from pfile;
alter database mount;
alter database open;

验证：
show parameter control_files
