# danyuan-application

##系统采用技术或开源框架：

1. 前端框架：adminLTE
2. 前端技术：bootstrap,bootstrap-table,js,juqery,ajax,ztree,
3. 后端技术：spring-boot,security
4. 数据库: mysql
5. 其他工具：maven,

##项目启动配置:

1. 系统安装jdk1.8，mysql5.7，maven3.3
2. 新建数据库:application
3. 导入数据库脚本 sql/_mysql_menu_data.sql
4. 修改项目配置：src/main/resources/application.properties
	1. 修改数据库链接地址数据库用户名密码 
	2. 修改 server.port=9999 # 项目端口号
	3. 修改security.user.name=admin # 项目验证登录用户	       security.user.password=admin # 项目验证登录密码
5. 执行mvn clean
6. 执行mvn install
7. 执行mvn spring-boot:run(java -jar target/danyuan.jar)
8. 访问http://localhost:9999 # 端口号
9. 输入用户名、密码 admin/admin



## 2017/07/14
1. 完善种子管理页面增删改
2. 修改bootstrap-table表格汉化，添加导出文件按钮

## 2017/07/13
1. 网站采集种子配置管理模块添加
2. 修改banner
3. 修改软件图标
4. 修改项目名称定义为：初学者

## 2017/07/12
调整软件模块

## 2017/07/07
1. 修改ztree完善点击选择图标
2. 添加安全框架spring-boot-starter-security
