>-- 1.创建用户 密码
create user rxk identified by rxk;
>
-- 2 授权 表操作，连接，dba
-- 一般dba权限不授权的，普通用户有链接和使用的权限就够了
grant resource ,connect ,dba to rxk;
>
-- 3.1 查看表空间的位置
SELECT tablespace_name, 
file_id, 
file_name, 
round(bytes / (1024 * 1024), 0) total_space 
FROM dba_data_files 
ORDER BY tablespace_name; 
-- 我的查出来数据文件存放的位置是下面的
-- E:\DATABASE\ORCL18\HADOOP0.ORA
>
-- 3.2 创建表空间 RXK_DATA 注意修改datafile 位置
create tablespace RXK_DATA 
logging 
datafile 'E:\DATABASE\ORCL18\RXK_DATA001.dbf' 
size 1024m 
autoextend on 
next 500m maxsize unlimited
extent management local; 
>
-- 3.3 创建表空间 RXK_INDEX 注意修改datafile
create tablespace RXK_INDEX
logging 
datafile 'E:\DATABASE\ORCL18\RXK_INDEX002.dbf' 
size 1024m 
autoextend on 
next 500m maxsize unlimited 
extent management local; 
>
--3.4 修改用户表空间权限
alter user rxk quota unlimited on RXK_DATA;
alter user rxk quota unlimited on RXK_INDEX;
alter user rxk default tablespace RXK_DATA;
>
-- 当然当你发现创建错误的时候使用删除语句删除，注意表空间必须保留一个数据文件
--alter tablespace datatransform_index drop datafile 'E:\DATABASE\ORCL18\company_index001.dbf';
>
-- 4修改表空间大小，添加表空间的文件
ALTER TABLESPACE RXK_DATA ADD DATAFILE 'E:\DATABASE\ORCL18\RXK_DATA002.dbf'SIZE 1024M AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED;
ALTER TABLESPACE RXK_DATA ADD DATAFILE 'E:\DATABASE\ORCL18\RXK_DATA003.dbf'SIZE 1024M AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED;
ALTER TABLESPACE RXK_DATA ADD DATAFILE 'E:\DATABASE\ORCL18\RXK_DATA004.dbf'SIZE 1024M AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED;
ALTER TABLESPACE RXK_DATA ADD DATAFILE 'E:\DATABASE\ORCL18\RXK_DATA005.dbf'SIZE 1024M AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED;
ALTER TABLESPACE RXK_DATA ADD DATAFILE 'E:\DATABASE\ORCL18\RXK_DATA006.dbf'SIZE 1024M AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED;
ALTER TABLESPACE RXK_DATA ADD DATAFILE 'E:\DATABASE\ORCL18\RXK_DATA007.dbf'SIZE 1024M AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED;
ALTER TABLESPACE RXK_DATA ADD DATAFILE 'E:\DATABASE\ORCL18\RXK_DATA008.dbf'SIZE 1024M AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED;
ALTER TABLESPACE RXK_DATA ADD DATAFILE 'E:\DATABASE\ORCL18\RXK_DATA009.dbf'SIZE 1024M AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED;
ALTER TABLESPACE RXK_DATA ADD DATAFILE 'E:\DATABASE\ORCL18\RXK_DATA010.dbf'SIZE 1024M AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED;
>
-- 查看服务器用户表空间使用情况
Select a.Tablespace_Name, Total, Free, Total - Free Used
  From 　　 (Select Tablespace_Name, Sum(Bytes) / 1024 / 1024 Total
             From Dba_Data_Files 　　group By Tablespace_Name) a,
       　　 (Select Tablespace_Name, Sum(Bytes) / 1024 / 1024 Free
             From Dba_Free_Space 　　group By Tablespace_Name) b 　　
  where a.Tablespace_Name = b.Tablespace_Name;
