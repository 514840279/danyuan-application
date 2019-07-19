# danyuan-application

[![GitHub issues](https://img.shields.io/github/issues/514840279/danyuan-application.svg?style=plastic)](https://github.com/514840279/danyuan-application/issues)[![GitHub forks](https://img.shields.io/github/forks/514840279/danyuan-application.svg?style=plastic)](https://github.com/514840279/danyuan-application/network)[![GitHub stars](https://img.shields.io/github/stars/514840279/danyuan-application.svg?style=plastic)](https://github.com/514840279/danyuan-application/stargazers)[![GitHub license](https://img.shields.io/github/license/514840279/danyuan-application.svg?style=plastic)](https://github.com/514840279/danyuan-application/blob/master/LICENSE)[![Twitter](https://img.shields.io/twitter/url/https/github.com/514840279/danyuan-application.svg?style=social&style=plastic)](https://twitter.com/intent/tweet?text=Wow:&url=https%3A%2F%2Fgithub.com%2F514840279%2Fdanyuan-application)

## 系统采用技术或开源框架：

1. 前端框架：adminLTE-2.3.11
2. 前端技术：bootstrap-3.x,bootstrap-table,juqery-2.2,ajax,ztree,
3. 后端技术：spring-boot-2.x,security,jpa
4. 数据库: mysql-5+,Elastaticsearch ,neo4j,mongodb
5. 其他工具：maven-3.3+

## 项目启动配置:

1. 系统安装jdk1.8，mysql8，maven3.3，neo4j，mongodb
2. 新建数据库:application
3. 导入数据库脚本 sql/All.sql
4. 修改项目配置：src/main/resources/application.yml
	1. 修改数据库链接地址数据库用户名密码 
	2. 修改 server.port=80 # 项目端口号
	3. 修改 neo4j 配置用户密码
	4. 修改 mongodb 配置用户密码
5. 执行mvn clean
6. 执行mvn install
7. 执行mvn spring-boot:run(java -jar target/danyuan.jar)
8. 访问http://localhost # 端口号
9. 输入用户名、密码 test/test

## 演示地址
http://www.danyuan.wang/#

QQ群： <a target="_blank" href="//shang.qq.com/wpa/qunwpa?idkey=ef11d05488cd61e05426a370ee142e9e187fcceaef72a2f83155852e5359d13a">
	  	<img border="0" src="//pub.idqqimg.com/wpa/images/group.png" alt="maven" title="maven">
  	 </a>

## 效果
![登录验证](screen/7.png)
![首页](screen/6.png)
![ztree](screen/5.png)
![种子管理](screen/4.png)
![弹窗1](screen/3.png)
![弹窗1](screen/2.png)
![右键](screen/1.png)



1. markdown 文件在linux上中文名称不支持，或者说linux系统不支持utf-8的中文字导致系统识别乱码最终路径不正确，确保不出现错误使用表格记录名称，文件以uuid为名称。
2. markdown 页面不够响应式，容器大小改变markdown部分变形。
3. 爬虫修改需要进行修改，现在页面对于一个网站的规则进行分解到不同的页面，分不同的组不同的细则，对应表的组和规则，目前看分拆不够容易查看，不容易整理，修改希望是在一个文档中保存一个网站的详细规则，切嵌套多个组多个细则，不用拆分来容易处理。只是没有想好如何处理后重画到页面中。
4. 关系图数据库连接使用 "org.neo4j.driver.v1.Driver" https 的方式，希望改为内嵌的版本，使用blot版。
5. 图表管理，现在设计不够，希望达到效果是在采集回来的表通过数据管理配置好，那些是可统计字段，那些是可进行条件查询的字段，动态生成条件，在页面上可操作选择统计类型，时间，维度，生成简单柱图，饼图，折线图，地图等。
6. 当数据量足够大时能够通过一键查询关键字多的时候，可以考虑使用批量处理的方式将关联的信息组织到关系图数据库中，以便生成关系图使用。
7. 文件分享打算使用爬虫网上收集一些资料，文件，教程，视频，音频等信息，以网友监督，筛选是否是有效合法的分享，同时提供奖励机制比如，积分/用户经验值。
8. 网络简历，本意是在线提供一个html版式的个人或企业的简历页面，支持用户上传自己制作的，支持使用word上传并生成html连接，不过word优化不好，现在打算使用模板，即可以制作多个模板页面供选择，用户操作页面填写一些信息，即可生成对应的连接。


