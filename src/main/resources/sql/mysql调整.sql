-- 查看当前mysql默认字符集命令：
show variables like 'character_set%';

-- 输入下列命令进行一个一个修改即可。
set character_set_client=utf8;
set character_set_connection=utf8;
set character_set_database=utf8;
set character_set_results=utf8;
set character_set_server=utf8;






Linux平台上推荐使用RPM包来安装Mysql,MySQL 提供了以下RPM包的下载地址：
MySQL-MySQL服务器。你需要该选项，除非你只想连接运行在另一台机器上的MySQL服务器。
MySQL-client - MySQL 客户端程序，用于连接并操作Mysql服务器。
MySQL-devel - 库和包含文件，如果你想要编译其它MySQL客户端，例如Perl模块，则需要安装该RPM包。
MySQL-shared - 该软件包包含某些语言和应用程序需要动态装载的共享库(libmysqlclient.so*)，使用MySQL。
MySQL-bench - MySQL数据库服务器的基准和性能测试工具。
安装过程中可能发生的错误在文章底部都有说明和解决步骤：
安装前，我们可以检测系统是否自带安装 MySQL:


systemctl is-enabled firewalld
systemctl stop firewalld
systemctl disable firewalld


rpm -qa | grep mysql

如果你系统有安装，那可以选择进行卸载:

// 普通删除模式
rpm -e mysql
// 强力删除模式，如果使用上面命令删除时，提示有依赖的其它文件，则用该命令可以对其进行强力删除
rpm -e --nodeps mysql

安装 MySQL： 
接下来我们在 Centos7 系统下使用 yum 命令安装 MySQL，需要注意的是 CentOS 7 版本中 MySQL数据库已从默认的程序列表中移除，所以在安装前我们需要先去官网下载 Yum 资源包，下载地址：https://dev.mysql.com/downloads/repo/yum/ 

这里我们选择使用wget下载：

wget https://repo.mysql.com//mysql80-community-release-el7-1.noarch.rpm

安装：

rpm -ivh mysql80-community-release-el7-1.noarch.rpm
yum install mysql-server

安装过程中会需要提示下载依赖，按y确认下载即可： 

初始化MySQL：
mysqld --initialize

启动 MySQL：
chown -R mysql:mysql /var/lib/mysql
service mysqld start


修改密码第一步修改 granttables制空 ，第二部修改
use mysql;
update user set authentication_string = '' where user = 'root';

ALTER USER 'root'@'localhost'  IDENTIFIED WITH mysql_native_password  BY '514840279@qq.com';
--UPDATE user SET authentication_string='514840279@qq.com' WHERE user='root';
修改 远程连接
update user set host='%' where user='root';
FLUSH PRIVILEGES;

