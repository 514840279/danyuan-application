 -- （1） 调整错误    Packet for query is too large (1120 > 1024). You can change this value on the server by setting the max_allowed_packet' variable.
 -- 查看
show VARIABLES like '%max_allowed_packet%';
-- 设置
set global max_allowed_packet = 2*1024*1024*10;
-- 重启数据库
quit
service mysql.server restart

-- 再次查看
show VARIABLES like '%max_allowed_packet%';
 
-- 修改密码
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('514840279@qq.com');
  
  
-- mysql调整 以root 登录后执行
SHOW VARIABLES LIKE '%time_zone%';
SET GLOBAL time_zone='+8:00';
  