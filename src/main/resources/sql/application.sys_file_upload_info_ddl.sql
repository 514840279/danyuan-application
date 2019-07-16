-- 表创建 表创建语句并不完全正确，需要确认后在执行 
create table application.sys_file_upload_info(
 uuid varchar(36) NOT NULL COMMENT '主键' primary key,
 type varchar(255)(500),
 size int(11)(8),
 create_time timestamp COMMENT '录入时间',
 update_user varchar(500) COMMENT '更新人员',
 uuid varchar(500),
 update_time timestamp COMMENT '更新时间',
 create_user varchar(500) COMMENT '录入人员',
 name varchar(500) COMMENT '姓名',
 path varchar(500),
 discription varchar(500),
 delete_flag int(8),
 create_time timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '记录时间',
 update_time timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '更新时间',
 create_user varchar(50) NOT NULL default 'system' COMMENT '记录人',
 update_user varchar(50) NOT NULL default 'system' COMMENT '更新人',
 delete_flag tinyint NOT NULL default 0 COMMENT '应用标识',
 discription varchar(200) COMMENT '数据描述',
);
-- 修改字段非空 
 update application.sys_file_upload_info set uuid = UUID();
 alter table application.sys_file_upload_info add primary key(uuid); 
 alter table application.sys_file_upload_info  MODIFY `create_time` TIMESTAMP  NOT NULL;
 alter table application.sys_file_upload_info  MODIFY `update_time` TIMESTAMP  NOT NULL;
 alter table application.sys_file_upload_info  MODIFY `create_user` varchar(50)  NOT NULL;
 alter table application.sys_file_upload_info  MODIFY `update_user` varchar(50)  NOT NULL;
 alter table application.sys_file_upload_info  MODIFY `delete_flag` int  NOT NULL;

-- 表注释 
 alter table application.sys_file_upload_info comment '文件信息表'; 

-- 修改字段 注释 
 --create_time注释 
  alter table application.sys_file_upload_info  modify column create_time VARCHAR(500) comment '录入时间'; 

 --update_user注释 
  alter table application.sys_file_upload_info  modify column update_user VARCHAR(500) comment '更新人员'; 

 --update_time注释 
  alter table application.sys_file_upload_info  modify column update_time VARCHAR(500) comment '更新时间'; 

 --create_user注释 
  alter table application.sys_file_upload_info  modify column create_user VARCHAR(500) comment '录入人员'; 

 --name注释 
  alter table application.sys_file_upload_info  modify column name VARCHAR(500) comment '姓名'; 


-- 生成索引命令 
 --姓名索引
  alter table application.sys_file_upload_info add index index_Mhz02zhY9zSChMbh (name) ; 



