插入速度（imp、impdp）：

临时表空间调大
undo表空间调大
redo日志文件的个数、大小

临时表空间：
TEMP

select tablespace_name,contents from dba_tablespaces where contents='TEMPORARY';
![image.png](http://upload-images.jianshu.io/upload_images/2787821-ae7ecb24814c67fd.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
select file_name,bytes from dba_TEMP_files where tablespace_name='TEMP';
![image.png](http://upload-images.jianshu.io/upload_images/2787821-8906eb607c30295e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


show parameter db_create_file_dest
alter system set db_create_file_dest='/home/oradata/orcl/' scope=both;
alter tablespace temp add tempfile;

begin
for i in 1..10 loop
execute immediate ('alter tablespace temp add tempfile');
end loop; 
end;
/

检查：
select file_name,bytes from dba_TEMP_files where tablespace_name='TEMP';


==============
undo
select tablespace_name,contents from dba_tablespaces where contents='UNDO';
alter tablespace UNDOTBS1 add datafile;
begin
for i in 1..10 loop
execute immediate ('alter tablespace UNDOTBS1 add datafile');
end loop; 
end;
/
select file_name,bytes from dba_DATA_files where tablespace_name='UNDOTBS1';

=========================
redo
select * from v$log;
select * from v$logfile;
alter database add logfile group 4 ('/home/oradata/orcl/redo04.log') size 500m;
alter database add logfile group 5 ('/home/oradata/orcl/redo05.log') size 500m;
alter database add logfile group 6 ('/home/oradata/orcl/redo06.log') size 500m;
alter database drop logfile group 1;
select * from v$log;
alter database drop logfile group 2;
alter database drop logfile group 3;
select * from v$log;
alter system switch logfile;
select * from v$log;
alter database drop logfile group 1;
alter system checkpoint;
select * from v$log;
alter database drop logfile group 1;

cd /home/oradata/orcl/ 

mv redo01.log redo01.log.bak
mv redo02.log redo02.log.bak
mv redo03.log redo03.log.bak
alter database add logfile group 1 ('/home/oradata/orcl/redo01.log') size 500m;
alter database add logfile group 2 ('/home/oradata/orcl/redo02.log') size 500m;
alter database add logfile group 3 ('/home/oradata/orcl/redo03.log') size 500m;



--参数修改：
alter system set nls_length_semantics='CHAR' scope=both;
alter system set open_links=100 scope=spfile;
alter system set open_links_per_instance=100 scope=spfile;
alter system set session_cached_cursors=3000 scope=spfile;
alter system set processes=5000 scope=spfile;
alter system set open_cursors=3000 scope=both;
alter system set "_optimizer_use_feedback"=false scope=both;
alter system set "_optimizer_invalidation_period"=1;
alter system set control_file_record_keep_time=30 scope=both;
alter system set db_files=10000 scope=spfile;
alter system set db_securefile='ALWAYS' scope =both;
alter system set RESULT_CACHE_MAX_SIZE=500m scope=both;
alter system set RESULT_CACHE_MAX_RESULT=20 scope=both;
alter system set RESULT_CACHE_REMOTE_EXPIRATION=3600 scope=both;
alter system set "_complex_view_merging"=false scope=both;
