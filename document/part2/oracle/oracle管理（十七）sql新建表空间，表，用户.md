-- 1.创建用户
create user wth identified by "wth";

-- 2 授权 表操作，连接，dba
grant resource ,connect ,dba to wth;

-- 3.1 查看表空间的位置
SELECT tablespace_name, 
file_id, 
file_name, 
round(bytes / (1024 * 1024), 0) total_space 
FROM dba_data_files 
ORDER BY tablespace_name; 

-- 3.2 创建表空间 wth_data
create tablespace wth_data 
logging 
datafile '/app/oracle/oradata/orcl15/wth_data001.dbf' 
size 1024m 
autoextend on 
next 500m maxsize 20480m 
extent management local; 

-- 3.3 创建表空间 wth_index
create tablespace wth_index
logging 
datafile '/app/oracle/oradata/orcl15/wth_index001.dbf' 
size 1024m 
autoextend on 
next 500m maxsize 20480m 
extent management local; 


--3.4 修改用户表空间权限
alter user wth quota unlimited on wth_data;
alter user wth quota unlimited on wth_index;
alter user wth  default tablespace wth_data;


-- 4修改表空间大小，添加表空间的文件
ALTER TABLESPACE wth_data ADD DATAFILE '/app/oracle/oradata/orcl15/wth_data002.dbf'SIZE 1024M AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED;
ALTER TABLESPACE wth_data ADD DATAFILE '/app/oracle/oradata/orcl15/wth_data003.dbf'SIZE 1024M AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED;
ALTER TABLESPACE wth_data ADD DATAFILE '/app/oracle/oradata/orcl15/wth_data004.dbf'SIZE 1024M AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED;
ALTER TABLESPACE wth_data ADD DATAFILE '/app/oracle/oradata/orcl15/wth_data005.dbf'SIZE 1024M AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED;
ALTER TABLESPACE wth_data ADD DATAFILE '/app/oracle/oradata/orcl15/wth_data006.dbf'SIZE 1024M AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED;
ALTER TABLESPACE wth_data ADD DATAFILE '/app/oracle/oradata/orcl15/wth_data007.dbf'SIZE 1024M AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED;
ALTER TABLESPACE wth_data ADD DATAFILE '/app/oracle/oradata/orcl15/wth_data008.dbf'SIZE 1024M AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED;
ALTER TABLESPACE wth_data ADD DATAFILE '/app/oracle/oradata/orcl15/wth_data009.dbf'SIZE 1024M AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED;
ALTER TABLESPACE wth_data ADD DATAFILE '/app/oracle/oradata/orcl15/wth_data010.dbf'SIZE 1024M AUTOEXTEND ON NEXT 500M MAXSIZE UNLIMITED;

-- 5 创建数据桥连接
#NAME?

#NAME?
drop public database link DBLINK_16;

create public database link DBLINK_16
  connect to wth01 identified by "wth01"
  using '(DESCRIPTION =
          (ADDRESS_LIST =
            (ADDRESS = (PROTOCOL = TCP)(HOST = 192.168.0.16)(PORT = 1521))
          )
          (CONNECT_DATA =
            (SERVER = DEDICATED)
            (SERVICE_NAME = orcl16)
          )
        )';


        
--  5.2 测试 连接
select * from user_tables@DBLINK_16 t;

-- 6 查看 表空间大小
Select a.Tablespace_Name, Total, Free, Total - Free Used
  From 　　 (Select Tablespace_Name, Sum(Bytes) / 1024 / 1024 Total
             From Dba_Data_Files 　　group By Tablespace_Name) a,
       　　 (Select Tablespace_Name, Sum(Bytes) / 1024 / 1024 Free
             From Dba_Free_Space 　　group By Tablespace_Name) b 　　where a.Tablespace_Name = b.Tablespace_Name;
