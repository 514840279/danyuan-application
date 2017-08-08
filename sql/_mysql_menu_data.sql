/*
SQLyog Ultimate v10.51 
MySQL - 5.7.13-log : Database - application
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`application` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `application`;

/*Table structure for table `sys_column_info` */

DROP TABLE IF EXISTS `sys_column_info`;

CREATE TABLE `sys_column_info` (
  `uuid` varchar(36) NOT NULL,
  `table_uuid` varchar(36) DEFAULT NULL,
  `cols_name` varchar(30) DEFAULT NULL,
  `COLS_DESC` varchar(100) DEFAULT NULL,
  `COLD_LENGTH` int(5) DEFAULT NULL,
  `COLS_ORDER` int(11) DEFAULT NULL,
  `cols_type` varchar(10) DEFAULT NULL,
  `discription` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user` varchar(50) DEFAULT NULL,
  `updata_time` datetime DEFAULT NULL,
  `updata_user` varchar(50) DEFAULT NULL,
  `delete_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_column_info` */

/*Table structure for table `sys_column_info_copy1` */

DROP TABLE IF EXISTS `sys_column_info_copy1`;

CREATE TABLE `sys_column_info_copy1` (
  `uuid` varchar(36) NOT NULL,
  `table_uuid` varchar(36) DEFAULT NULL,
  `cols_name` varchar(30) DEFAULT NULL,
  `COLS_DESC` varchar(100) DEFAULT NULL,
  `COLD_LENGTH` int(5) DEFAULT NULL,
  `COLS_ORDER` int(11) DEFAULT NULL,
  `cols_type` varchar(10) DEFAULT NULL,
  `discription` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user` varchar(50) DEFAULT NULL,
  `updata_time` datetime DEFAULT NULL,
  `updata_user` varchar(50) DEFAULT NULL,
  `delete_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_column_info_copy1` */

/*Table structure for table `sys_database_info` */

DROP TABLE IF EXISTS `sys_database_info`;

CREATE TABLE `sys_database_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `address` varchar(100) DEFAULT NULL COMMENT 'ip地址',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `database_name` varchar(50) DEFAULT NULL COMMENT '数据库名称',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `driver` varchar(200) DEFAULT NULL COMMENT '数据库驱动类',
  `password` varchar(200) DEFAULT NULL COMMENT '用户密码',
  `port` varchar(10) DEFAULT NULL COMMENT '端口号',
  `type` varchar(200) DEFAULT NULL COMMENT '数据库类型',
  `updata_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `updata_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名称',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_database_info` */

insert  into `sys_database_info`(`uuid`,`address`,`create_time`,`create_user`,`database_name`,`delete_flag`,`discription`,`driver`,`password`,`port`,`type`,`updata_time`,`updata_user`,`username`) values ('','','2017-08-07 10:35:50',NULL,'',0,'','','','','','2017-08-07 18:57:43',NULL,'');

/*Table structure for table `sys_department_info` */

DROP TABLE IF EXISTS `sys_department_info`;

CREATE TABLE `sys_department_info` (
  `uuid` varchar(32) NOT NULL,
  `department_discription` varchar(1024) NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `flag` varchar(2) DEFAULT NULL,
  `insert_datetime` datetime NOT NULL,
  `organization_id` varchar(32) NOT NULL,
  `updata_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_department_info` */

/*Table structure for table `sys_menu_info` */

DROP TABLE IF EXISTS `sys_menu_info`;

CREATE TABLE `sys_menu_info` (
  `uuid` varchar(50) NOT NULL COMMENT '主键',
  `system_id` varchar(36) DEFAULT '99c74ada3a1411e6bdcb10bf48e1d36a' COMMENT '系统id',
  `parents_id` varchar(36) DEFAULT NULL COMMENT '父id',
  `name` varchar(50) DEFAULT NULL COMMENT '地址名称',
  `icon` varchar(40) DEFAULT NULL COMMENT '显示图标样式',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `uri` varchar(2000) DEFAULT NULL COMMENT '地址资源',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `updata_user` varchar(100) DEFAULT 'system' COMMENT '更新人员',
  `updata_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu_info` */

insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('',NULL,'','1231','fa fa-cog',1,'1231','1231',NULL,'2017-08-08 08:26:51','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('0EB48E2A838DC72BA0A62760E1B7E284',NULL,'42D0BF4CBAECF5F0DBFF06803CDBF3D3','github登录','fa fa-github',3,'','github登录',NULL,'2017-08-08 08:26:51','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('102F0D6B58817A998413C6CA1EEC8CBB',NULL,'0','爬虫管理','fa fa-cloud-download',1,'','爬虫管理','system','2017-07-14 09:44:42','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('19490FC09CABB3DC5919ADCBCA7A763F',NULL,'B0837A308D473BAFF9A80175045B8481','python','fa  fa-desktop',3,'python','python','system','2017-08-07 20:24:27','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2146130099979805B1DE119DCB3BA551','99c74ada3a1411e6bdcb10bf48e1d36a','A3621F23A4BC0580D08EEF948C0FD30B','用户角色','fa  fa-sitemap',1,'pages/error/404.html','项目权限',NULL,'2017-08-08 08:26:51','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('34DF550FEDF2A477587583AAC6CBA677',NULL,'42D0BF4CBAECF5F0DBFF06803CDBF3D3','微博登录','fa fa-weibo',4,'','微博登录','system','2017-07-14 10:06:39','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('36882FDCB61EF181592FEE79B0462BDA',NULL,'102F0D6B58817A998413C6CA1EEC8CBB','代码管理','fa fa-file-code-o',2,'pages/crawler/code.html','代码管理','system','2017-07-14 09:46:30','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('42D0BF4CBAECF5F0DBFF06803CDBF3D3',NULL,'0','接口管理','fa fa-hand-lizard-o',6,'','接口','system','2017-07-14 10:03:46','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('45E5E12B62D1F7F2CEBD5A3D338C521B',NULL,'4c87eacc-6447-11e7-a272-0025d3a93601','系统消息','fa fa-comments',1,'pages/error/404.html','系统消息',NULL,'2017-08-08 08:26:51','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c87eacc-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','0','任务管理','glyphicon glyphicon-map-marker',5,'pages/jobs/index.html','任务管理','system','2017-07-09 08:50:09','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c87efc1-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','0','数据管理','fa  fa-database',2,'pages/error/404.html','#','佘赐雄','2017-08-08 08:26:51','超级管理员','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c87fa16-6447-11e7-a272-0025d3a93601',NULL,'102F0D6B58817A998413C6CA1EEC8CBB','种子管理','glyphicon glyphicon-link',0,'pages/crawler/seed.html','爬虫管理',NULL,'2017-08-08 08:26:51','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c87fb94-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','4c8820df-6447-11e7-a272-0025d3a93601','系统菜单','fa  fa-navicon',0,'pages/softm/sysmenu/system_function_ztree.html','系统导航功能',NULL,'2017-08-08 08:26:51',NULL,'2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c87fd09-6447-11e7-a272-0025d3a93601',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','数据库连接','fa  fa-plug',0,'pages/dbm/addr/index.html','动态链接数据库',NULL,'2017-08-08 08:26:51','超级管理员','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c87fe75-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','2c90838f57c6e02e0157c729a86b000b','数据库备份','glyphicon glyphicon-paste',0,'pages/error/404.html','数据备份、数据还原',NULL,'2017-08-08 08:26:51','超级管理员','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','4c87efc1-6447-11e7-a272-0025d3a93601','数据表管理','fa  fa-table',2,'pages/error/404.html','数据库表结构','超级管理员','2017-08-08 08:26:51','超级管理员','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c881551-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','0','客户管理','fa  fa-sitemap',3,'pages/error/404.html','客户管理',NULL,'2017-08-08 08:26:51',NULL,'2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c881c82-6447-11e7-a272-0025d3a93601',NULL,'4c8820df-6447-11e7-a272-0025d3a93601','项目信息','fa fa-leaf',2,'pages/error/404.html','#',NULL,'2017-08-08 08:26:51','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c8820df-6447-11e7-a272-0025d3a93601',NULL,'0','系统管理','fa fa-cog',0,'pages/error/404.html','',NULL,'2017-08-08 08:26:51','','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c882255-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','4c881551-6447-11e7-a272-0025d3a93601','单位组织','fa  fa-coffee',0,'pages/usermanager/organization/index.html','单位组织',NULL,'2017-08-08 08:26:51',NULL,'2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('51281D6F38FFD5420D3778F60A813223',NULL,'B0837A308D473BAFF9A80175045B8481','使用帮助','fa  fa-desktop',1,'使用帮助','使用帮助','system','2017-08-07 20:23:48','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('554F7723A796A61F88DAB2BC7A37C26C',NULL,NULL,NULL,NULL,NULL,NULL,'1','system','2017-07-13 15:53:43','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('5633098C6688C98B87CDCD3158F70932','99c74ada3a1411e6bdcb10bf48e1d36a','A3621F23A4BC0580D08EEF948C0FD30B','用户简历','fa fa-odnoklassniki',0,'pages/usermanager/userbase/index.html','用户管理',NULL,'2017-08-08 08:26:51','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('59C0FA8D6F78EA9334A24C8256BA8202',NULL,'42D0BF4CBAECF5F0DBFF06803CDBF3D3','微信登录','fa fa-wechat',1,'','微信登录',NULL,'2017-08-08 08:26:51','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('659B89DACAF330FB8A8DDCD276614A7A','99c74ada3a1411e6bdcb10bf48e1d36a','4c881551-6447-11e7-a272-0025d3a93601','角色权限','fa fa-gears',4,'pages/error/404.html','部门权限',NULL,'2017-08-08 08:26:51','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('6FA347DC94FAC445C42A3E601218FFBC','99c74ada3a1411e6bdcb10bf48e1d36a','4c87efc1-6447-11e7-a272-0025d3a93601','列管理','fa fa-columns',3,'pages/database/column.html','列管理','system','2017-07-09 09:45:44','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('9419DC15C84351C8F038B2B0E5302FEC','99c74ada3a1411e6bdcb10bf48e1d36a','4c881551-6447-11e7-a272-0025d3a93601','单位部门','fa fa-map-marker',2,'pages/error/404.html','单位部门',NULL,'2017-08-08 08:26:51','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('A3621F23A4BC0580D08EEF948C0FD30B',NULL,'0','用户管理','fa fa-users',4,'','用户管理',NULL,'2017-08-08 08:26:51','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('B0837A308D473BAFF9A80175045B8481',NULL,'0','文档','fa  fa-desktop',8,'文档','文档','system','2017-08-07 20:23:06','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('B1700D742F5F1DFCD14830968A159C4F','99c74ada3a1411e6bdcb10bf48e1d36a','4c8820df-6447-11e7-a272-0025d3a93601','单位项目','fa fa-coffee',3,'pages/error/404.html','单位项目',NULL,'2017-08-08 08:26:51','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('C2C56FF593013CB988C83B318E668ECF',NULL,'4c87eacc-6447-11e7-a272-0025d3a93601','用户消息','fa fa-commenting-o',2,'pages/error/404.html','用户消息',NULL,'2017-08-08 08:26:51','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('D59BB80377132CC30538A0FC69BFAC84','99c74ada3a1411e6bdcb10bf48e1d36a','4c881551-6447-11e7-a272-0025d3a93601','部门角色','fa fa-map',3,'pages/usermanager/department/index.html','部门管理',NULL,'2017-08-08 08:26:51','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('DFC7A78851EE1120A9DFCD7D05A0376C',NULL,'42D0BF4CBAECF5F0DBFF06803CDBF3D3','qq登录','fa fa-qq',2,'','qq登录',NULL,'2017-08-08 08:26:51','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('E35819719FBAD4D7037919D890C799E0',NULL,'F6C9A670CF8699F5D375B3CCDFF1D691','配置','fa  fa-desktop',1,'配置','配置','system','2017-08-07 20:27:14','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('EAFB1F5F76BDE45FA695DBBA88817070',NULL,'B0837A308D473BAFF9A80175045B8481','linux','fa  fa-desktop',2,'linux','linux','system','2017-08-07 20:24:15','system','2017-08-08 08:26:51',0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('F6C9A670CF8699F5D375B3CCDFF1D691',NULL,'0','投票','fa  fa-desktop',7,'投票','投票','system','2017-08-07 20:26:26','system','2017-08-08 08:26:51',0);

/*Table structure for table `sys_organization_info` */

DROP TABLE IF EXISTS `sys_organization_info`;

CREATE TABLE `sys_organization_info` (
  `uuid` varchar(32) NOT NULL,
  `flag` varchar(2) DEFAULT NULL,
  `insert_datetime` datetime NOT NULL,
  `organization_code` varchar(50) NOT NULL,
  `organization_discription` varchar(1024) NOT NULL,
  `organization_name` varchar(32) NOT NULL,
  `updata_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_organization_info` */

/*Table structure for table `sys_roler_info` */

DROP TABLE IF EXISTS `sys_roler_info`;

CREATE TABLE `sys_roler_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `charset` varchar(20) DEFAULT NULL COMMENT '字符集',
  `content_info` varchar(20) DEFAULT NULL COMMENT '规则信息',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `request_type` varchar(20) DEFAULT NULL COMMENT '请求操作',
  `seed_uuid` varchar(200) DEFAULT NULL COMMENT ' 种子id',
  `sub_uri` varchar(200) DEFAULT NULL COMMENT '配对网址段',
  `type` varchar(200) DEFAULT NULL COMMENT ' 规则类别',
  `updata_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `updata_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_roler_info` */

/*Table structure for table `sys_roles_info` */

DROP TABLE IF EXISTS `sys_roles_info`;

CREATE TABLE `sys_roles_info` (
  `uuid` varchar(32) NOT NULL,
  `department_id` varchar(50) NOT NULL,
  `flag` varchar(2) DEFAULT NULL,
  `insert_datetime` datetime NOT NULL,
  `role_discription` varchar(500) DEFAULT NULL,
  `role_name` varchar(32) NOT NULL,
  `updata_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_roles_info` */

/*Table structure for table `sys_roles_jurisdiction_info` */

DROP TABLE IF EXISTS `sys_roles_jurisdiction_info`;

CREATE TABLE `sys_roles_jurisdiction_info` (
  `uuid` varchar(32) NOT NULL,
  `flag` varchar(2) DEFAULT NULL,
  `insert_datetime` datetime NOT NULL,
  `menu_id` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  `updata_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_roles_jurisdiction_info` */

/*Table structure for table `sys_seed_roler_colum_info` */

DROP TABLE IF EXISTS `sys_seed_roler_colum_info`;

CREATE TABLE `sys_seed_roler_colum_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `app1` varchar(30) DEFAULT NULL COMMENT 'apand 方式 字符',
  `app2` varchar(30) DEFAULT NULL COMMENT 'apand 字符',
  `arr` int(11) DEFAULT NULL COMMENT '取一个 整型',
  `colum_name` varchar(30) DEFAULT NULL COMMENT '列名称',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `roler` varchar(300) DEFAULT NULL COMMENT '取内容规则',
  `roler_uuid` varchar(32) DEFAULT NULL COMMENT '规则id',
  `spl1` varchar(30) DEFAULT NULL COMMENT 'split 1字符串',
  `spl2` int(11) DEFAULT NULL COMMENT '2整型脚标',
  `type` varchar(30) DEFAULT NULL COMMENT '处理方式',
  `updata_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `updata_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_seed_roler_colum_info` */

insert  into `sys_seed_roler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`roler`,`roler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('402880905da16202015da16cb0cb0002','','',0,'企鹅委屈','2017-08-02 13:30:41',NULL,0,'','','','',0,'','2017-08-02 13:30:41','system');
insert  into `sys_seed_roler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`roler`,`roler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('402880905da16202015da178dd370007','','',0,'书名','2017-08-02 13:43:59',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//h4//a//text()','402880905da16202015da17540170006','',0,'l','2017-08-02 13:44:41',NULL);
insert  into `sys_seed_roler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`roler`,`roler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('402880905da16202015da1796e200008','','',0,'连接','2017-08-02 13:44:36',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//h4//a//@href','402880905da16202015da17540170006','',0,'l','2017-08-02 13:44:36','system');
insert  into `sys_seed_roler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`roler`,`roler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('402880905da16202015da17a6eb10009','','',0,'图片','2017-08-02 13:45:41',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-img-box\']//a//img//@src','402880905da16202015da17540170006','',0,'l','2017-08-02 13:45:41','system');
insert  into `sys_seed_roler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`roler`,`roler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('402880905da16202015da17c2ad6000a','','',0,'作者','2017-08-02 13:47:35',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//p[@class=\'author\']//a[@class=\'name\']//text()','402880905da16202015da17540170006','',0,'l','2017-08-02 13:47:35','system');
insert  into `sys_seed_roler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`roler`,`roler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('402880905da16202015da17e1cca000b','','',0,'分类1','2017-08-02 13:49:42',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//p[@class=\'author\']//a[@data-eid=\'qd_B60\']//text()','402880905da16202015da17540170006','',0,'l','2017-08-02 13:49:42','system');
insert  into `sys_seed_roler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`roler`,`roler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('402880905da16202015da17e83fe000c','','',0,'分类2','2017-08-02 13:50:09',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//p[@class=\'author\']//a[@class=\'go-sub-type\']//text()','402880905da16202015da17540170006','',0,'l','2017-08-02 13:50:09','system');
insert  into `sys_seed_roler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`roler`,`roler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('402880905da16202015da17f0c11000d','','',0,'简介','2017-08-02 13:50:44',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//p[@class=\'intro\']//text()','402880905da16202015da17540170006','',0,'l','2017-08-02 13:50:44','system');
insert  into `sys_seed_roler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`roler`,`roler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('402880905da16202015da17f888a000e','','',0,'阅读量','2017-08-02 13:51:16',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//p[@class=\'update\']//span//text()','402880905da16202015da17540170006','',0,'l','2017-08-02 13:51:16','system');

/*Table structure for table `sys_seed_roler_info` */

DROP TABLE IF EXISTS `sys_seed_roler_info`;

CREATE TABLE `sys_seed_roler_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `charset` varchar(20) DEFAULT NULL COMMENT '字符集',
  `content_info` varchar(20) DEFAULT NULL COMMENT '规则信息',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `request_type` varchar(20) DEFAULT NULL COMMENT '请求操作',
  `seed_uuid` varchar(200) DEFAULT NULL COMMENT ' 种子id',
  `sub_uri` varchar(200) DEFAULT NULL COMMENT '配对网址段',
  `type` varchar(200) DEFAULT NULL COMMENT ' 规则类别',
  `updata_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `updata_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_seed_roler_info` */

insert  into `sys_seed_roler_info`(`uuid`,`charset`,`content_info`,`create_time`,`create_user`,`delete_flag`,`discription`,`name`,`request_type`,`seed_uuid`,`sub_uri`,`type`,`updata_time`,`updata_user`) values ('402880905da16202015da17540170006','UTF-8',NULL,'2017-08-02 13:40:02',NULL,0,'','全部作品_起点中文网','rg','402880905da16202015da170dce20004','http://a.qidian.com/','1','2017-08-02 14:33:03',NULL);

/*Table structure for table `sys_seed_url_info` */

DROP TABLE IF EXISTS `sys_seed_url_info`;

CREATE TABLE `sys_seed_url_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `request_date` varchar(10) DEFAULT NULL COMMENT '请求时间',
  `seed_icon` varchar(1000) DEFAULT NULL COMMENT '网站商标',
  `seed_name` varchar(50) DEFAULT NULL COMMENT '网站名称',
  `seed_type` varchar(36) DEFAULT NULL COMMENT '网站类型',
  `seed_url` varchar(2000) DEFAULT NULL COMMENT '链接地址',
  `updata_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `updata_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `request_proxy` int(11) DEFAULT NULL COMMENT '请求时间',
  `charset` varchar(10) DEFAULT NULL COMMENT '字符集',
  `request_type` varchar(10) DEFAULT NULL COMMENT '请求方式',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_seed_url_info` */

insert  into `sys_seed_url_info`(`uuid`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`,`charset`,`request_type`) values ('402880905da16202015da170dce20004',0,'','2017-08-02 13:35:14','system',NULL,'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=397776456,2572651939&fm=58','起点中文网','小说网','qidian.com','2017-08-02 14:31:49',NULL,0,NULL,NULL);

/*Table structure for table `sys_system_info` */

DROP TABLE IF EXISTS `sys_system_info`;

CREATE TABLE `sys_system_info` (
  `uuid` varchar(32) NOT NULL,
  `developer` varchar(50) NOT NULL,
  `discription` varchar(1024) NOT NULL,
  `flag` varchar(30) DEFAULT NULL,
  `insert_datetime` date NOT NULL,
  `system_name` varchar(100) NOT NULL,
  `updata_datetime` date DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_system_info` */

/*Table structure for table `sys_table_info` */

DROP TABLE IF EXISTS `sys_table_info`;

CREATE TABLE `sys_table_info` (
  `uuid` varchar(36) NOT NULL,
  `database_uuid` varchar(36) DEFAULT NULL,
  `TYPE_UUID` varchar(36) DEFAULT NULL,
  `table_name` varchar(30) DEFAULT NULL,
  `table_disc` varchar(200) DEFAULT NULL,
  `TABLE_SPACE` varchar(50) DEFAULT NULL,
  `TABLE_ORDER` int(11) DEFAULT NULL,
  `TABLE_ROWS` int(11) DEFAULT NULL,
  `discription` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user` varchar(50) DEFAULT NULL,
  `updata_time` datetime DEFAULT NULL,
  `updata_user` varchar(50) DEFAULT NULL,
  `delete_flag` int(2) DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_table_info` */

/*Table structure for table `sys_table_type_info` */

DROP TABLE IF EXISTS `sys_table_type_info`;

CREATE TABLE `sys_table_type_info` (
  `uuid` varchar(36) NOT NULL,
  `TYPE_NAME` varchar(50) DEFAULT NULL,
  `TYPE_CLASS` varchar(50) DEFAULT NULL,
  `TYPE_ORDER` int(11) DEFAULT NULL,
  `discription` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user` varchar(50) DEFAULT NULL,
  `updata_time` datetime DEFAULT NULL,
  `updata_user` varchar(50) DEFAULT NULL,
  `delete_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_table_type_info` */

/*Table structure for table `sys_user_base_info` */

DROP TABLE IF EXISTS `sys_user_base_info`;

CREATE TABLE `sys_user_base_info` (
  `uuid` varchar(32) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `flag` varchar(2) DEFAULT NULL,
  `insert_datetime` datetime NOT NULL,
  `password` varchar(50) NOT NULL,
  `persion_name` varchar(50) NOT NULL,
  `seniority` float DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `updata_datetime` datetime DEFAULT NULL,
  `user_name` varchar(50) NOT NULL,
  PRIMARY KEY (`uuid`) USING BTREE,
  UNIQUE KEY `UK_filjsx4kbabuqh2fkxgd72dx5` (`user_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_base_info` */

/*Table structure for table `sys_user_roles_info` */

DROP TABLE IF EXISTS `sys_user_roles_info`;

CREATE TABLE `sys_user_roles_info` (
  `uuid` varchar(32) NOT NULL,
  `flag` varchar(2) DEFAULT NULL,
  `insert_datetime` datetime NOT NULL,
  `roles_id` varchar(32) NOT NULL,
  `updata_datetime` datetime DEFAULT NULL,
  `user_id` varchar(32) NOT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_roles_info` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
