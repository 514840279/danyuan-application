-- ================application.sys_file_upload_info(文件信息表)配置开始======================= 
-- 菜单配置 
 INSERT INTO application.sys_menu_info (`uuid`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`, `create_user`, `create_time`, `delete_flag`, `home_page`) VALUES ('8080df96f25144ab99d538ad0a1b0cf2','0','文件信息表','fa fa-checked','1','/pages/file/upload/sysfileuploadinfo.html','文件信息表','system',CURRENT_TIMESTAMP,'system',CURRENT_TIMESTAMP,0,0); 
 INSERT INTO application.sys_roles_jurisdiction_info(checked, create_time, create_user, delete_flag, discription, menu_id, role_id) VALUES (1,CURRENT_TIMESTAMP, 'system', 0, '生成语句', '8080df96f25144ab99d538ad0a1b0cf2', 'BEB0D81B918DD968D24D6F95AC15A753'); 

-- ================application.sys_file_upload_info(文件信息表)配置结束======================= 

