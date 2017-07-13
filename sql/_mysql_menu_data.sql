/*
SQLyog Ultimate v10.51 
MySQL - 5.7.11-log : Database - application
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`application` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `application`;

/*Table structure for table `sys_database_info` */

DROP TABLE IF EXISTS `sys_database_info`;

CREATE TABLE `sys_database_info` (
  `f_module_id` varchar(50) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `database_information` varchar(255) DEFAULT NULL,
  `database_name` varchar(255) DEFAULT NULL,
  `driver` varchar(255) DEFAULT NULL,
  `flag` varchar(2) DEFAULT NULL,
  `insert_datetime` datetime NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `transform_control` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `updata_datetime` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_database_info` */

LOCK TABLES `sys_database_info` WRITE;

UNLOCK TABLES;

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
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_department_info` */

LOCK TABLES `sys_department_info` WRITE;

UNLOCK TABLES;

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
  `updata_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu_info` */

LOCK TABLES `sys_menu_info` WRITE;

insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('14DB3BF18BB57DE41DA7E4E5F9F4EA87','99c74ada3a1411e6bdcb10bf48e1d36a','A3621F23A4BC0580D08EEF948C0FD30B','用户部门','fa fa-life-buoy',2,'pages/error/404.html','用户部门',NULL,NULL,'system',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2146130099979805B1DE119DCB3BA551','99c74ada3a1411e6bdcb10bf48e1d36a','4c8820df-6447-11e7-a272-0025d3a93601','项目权限','fa  fa-sitemap',4,'pages/error/404.html','项目权限',NULL,NULL,'system',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('37C813E9BE60AF6AC03F0AB0C4B07CA8','99c74ada3a1411e6bdcb10bf48e1d36a','4c87efc1-6447-11e7-a272-0025d3a93601','表类型','fa fa-mars',1,'pages/database/table_type.html','表类型','system','2017-07-09 09:47:18','system',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('45E5E12B62D1F7F2CEBD5A3D338C521B',NULL,'4c87eacc-6447-11e7-a272-0025d3a93601','系统消息','glyphicon glyphicon-map-marker',1,'pages/error/404.html','系统消息',NULL,NULL,'system',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c87eacc-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','0','任务管理','glyphicon glyphicon-map-marker',6,'pages/jobs/index.html','任务管理','system','2017-07-09 08:50:09','system',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c87efc1-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','0','数据管理','fa  fa-database',3,'pages/error/404.html','#','佘赐雄',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c87fa16-6447-11e7-a272-0025d3a93601',NULL,'0','爬虫管理','fa fa-chain',1,'pages/crawler/seed.html','爬虫管理',NULL,NULL,'system',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c87fb94-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','4c8820df-6447-11e7-a272-0025d3a93601','系统菜单','fa  fa-navicon',0,'pages/softm/sysmenu/system_function_ztree.html','系统导航功能',NULL,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c87fd09-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','4c87efc1-6447-11e7-a272-0025d3a93601','数据库连接','fa  fa-plug',0,'pages/error/404.html','动态链接数据库','超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c87fe75-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','2c90838f57c6e02e0157c729a86b000b','数据库备份','glyphicon glyphicon-paste',0,'pages/error/404.html','数据备份、数据还原',NULL,NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','4c87efc1-6447-11e7-a272-0025d3a93601','数据表管理','fa  fa-table',2,'pages/error/404.html','数据库表结构','超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c881551-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','0','客户管理','fa  fa-sitemap',4,'pages/error/404.html','客户管理',NULL,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c881c82-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','4c8820df-6447-11e7-a272-0025d3a93601','项目信息','fa fa-leaf',2,'pages/error/404.html','#',NULL,NULL,'system',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c881f70-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','4c8820df-6447-11e7-a272-0025d3a93601','图标样式','glyphicon glyphicon-inbox',1,'pages/sysmanager/system/icons.html','图标样式',NULL,NULL,'1',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c8820df-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','0','系统管理','fa  fa-desktop',0,'pages/error/404.html',NULL,NULL,NULL,'',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4c882255-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','4c881551-6447-11e7-a272-0025d3a93601','单位组织','fa  fa-coffee',0,'pages/usermanager/organization/index.html','单位组织',NULL,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4EEA5D7896EB9540324030C487C18599','99c74ada3a1411e6bdcb10bf48e1d36a','A3621F23A4BC0580D08EEF948C0FD30B','用户权限','fa fa-history',1,'pages/usermanager/userroles/index.html','用户权限',NULL,NULL,'system',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4F85E7606F640493BBAF31ECC089BE61','99c74ada3a1411e6bdcb10bf48e1d36a','4c8820df-6447-11e7-a272-0025d3a93601','权限管理','fa fa-battery-4',3,'pages/error/404.html','权限管理',NULL,NULL,'system',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('554F7723A796A61F88DAB2BC7A37C26C',NULL,NULL,NULL,NULL,NULL,NULL,'1','system','2017-07-13 15:53:43','system',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('5633098C6688C98B87CDCD3158F70932','99c74ada3a1411e6bdcb10bf48e1d36a','A3621F23A4BC0580D08EEF948C0FD30B','用户简历','fa fa-odnoklassniki',0,'pages/usermanager/userbase/index.html','用户管理',NULL,NULL,'system',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('659B89DACAF330FB8A8DDCD276614A7A','99c74ada3a1411e6bdcb10bf48e1d36a','4c881551-6447-11e7-a272-0025d3a93601','部门权限','fa fa-gears',4,'pages/error/404.html','部门权限',NULL,NULL,'system',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('6FA347DC94FAC445C42A3E601218FFBC','99c74ada3a1411e6bdcb10bf48e1d36a','4c87efc1-6447-11e7-a272-0025d3a93601','列管理','fa fa-columns',3,'pages/database/column.html','列管理','system','2017-07-09 09:45:44','system',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('9419DC15C84351C8F038B2B0E5302FEC','99c74ada3a1411e6bdcb10bf48e1d36a','4c881551-6447-11e7-a272-0025d3a93601','单位部门','fa fa-map-marker',2,'pages/error/404.html','单位部门',NULL,NULL,'system',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('A3621F23A4BC0580D08EEF948C0FD30B',NULL,'0','用户管理','fa  fa-desktop',5,'','用户管理','system','2017-07-09 13:59:59','system',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('B1700D742F5F1DFCD14830968A159C4F','99c74ada3a1411e6bdcb10bf48e1d36a','4c881551-6447-11e7-a272-0025d3a93601','单位项目','fa fa-coffee',1,'pages/error/404.html','单位项目',NULL,NULL,'system',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('C2C56FF593013CB988C83B318E668ECF',NULL,'4c87eacc-6447-11e7-a272-0025d3a93601','用户消息','glyphicon glyphicon-map-marker',2,'pages/error/404.html','用户消息','system','2017-07-09 14:08:09','system',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('D59BB80377132CC30538A0FC69BFAC84','99c74ada3a1411e6bdcb10bf48e1d36a','4c881551-6447-11e7-a272-0025d3a93601','部门管理','fa fa-map',3,'pages/usermanager/department/index.html','部门管理',NULL,NULL,'system',NULL,0);

UNLOCK TABLES;

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
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_organization_info` */

LOCK TABLES `sys_organization_info` WRITE;

UNLOCK TABLES;

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
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_roles_info` */

LOCK TABLES `sys_roles_info` WRITE;

UNLOCK TABLES;

/*Table structure for table `sys_roles_jurisdiction_info` */

DROP TABLE IF EXISTS `sys_roles_jurisdiction_info`;

CREATE TABLE `sys_roles_jurisdiction_info` (
  `uuid` varchar(32) NOT NULL,
  `flag` varchar(2) DEFAULT NULL,
  `insert_datetime` datetime NOT NULL,
  `menu_id` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  `updata_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_roles_jurisdiction_info` */

LOCK TABLES `sys_roles_jurisdiction_info` WRITE;

UNLOCK TABLES;

/*Table structure for table `sys_seed_url_info` */

DROP TABLE IF EXISTS `sys_seed_url_info`;

CREATE TABLE `sys_seed_url_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `charset` varchar(10) DEFAULT NULL COMMENT '字符集',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `request_date` varchar(10) DEFAULT NULL COMMENT '请求时间',
  `request_type` varchar(10) DEFAULT NULL COMMENT '请求方式',
  `seed_icon` varchar(1000) DEFAULT NULL COMMENT '网站商标',
  `seed_name` varchar(50) DEFAULT NULL COMMENT '网站名称',
  `seed_type` varchar(36) DEFAULT NULL COMMENT '网站类型',
  `seed_url` varchar(2000) DEFAULT NULL COMMENT '链接地址',
  `updata_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `updata_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `request_proxy` int(11) DEFAULT NULL COMMENT '请求时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_seed_url_info` */

LOCK TABLES `sys_seed_url_info` WRITE;

insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af1d4880000','1',0,'1','2017-07-13 15:55:13','system','1','1',NULL,'1','1','1','2017-07-13 15:55:13','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af7108b0001','2',0,'2','2017-07-13 16:00:56','system','2','2',NULL,'2','2','2','2017-07-13 16:00:56','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af71b900002','2',0,'2','2017-07-13 16:00:59','system','2','2',NULL,'2','2','2','2017-07-13 16:00:59','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af723530003','2',0,'2','2017-07-13 16:01:01','system','2','2',NULL,'2','2','2','2017-07-13 16:01:01','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af729760004','2',0,'2','2017-07-13 16:01:02','system','2','2',NULL,'2','2','2','2017-07-13 16:01:02','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af763f30005','3',0,'3','2017-07-13 16:01:17','system','3','3',NULL,'3','3','3','2017-07-13 16:01:17','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af771eb0006','3',0,'3','2017-07-13 16:01:21','system','3','3',NULL,'3','3','3','2017-07-13 16:01:21','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af8fa9a0007','1',0,'1','2017-07-13 16:03:01','system','1','1',NULL,'1','1','1','2017-07-13 16:03:01','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af9265a0008','1',0,'1','2017-07-13 16:03:13','system','1','1',NULL,'1','1','1','2017-07-13 16:03:13','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af926fd0009','1',0,'1','2017-07-13 16:03:13','system','1','1',NULL,'1','1','1','2017-07-13 16:03:13','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af927ad000a','1',0,'1','2017-07-13 16:03:13','system','1','1',NULL,'1','1','1','2017-07-13 16:03:13','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af92853000b','1',0,'1','2017-07-13 16:03:13','system','1','1',NULL,'1','1','1','2017-07-13 16:03:13','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af928f0000c','1',0,'1','2017-07-13 16:03:13','system','1','1',NULL,'1','1','1','2017-07-13 16:03:13','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af92990000d','1',0,'1','2017-07-13 16:03:13','system','1','1',NULL,'1','1','1','2017-07-13 16:03:13','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af92a2c000e','1',0,'1','2017-07-13 16:03:14','system','1','1',NULL,'1','1','1','2017-07-13 16:03:14','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af92be7000f','1',0,'1','2017-07-13 16:03:14','system','1','1',NULL,'1','1','1','2017-07-13 16:03:14','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af92c9c0010','1',0,'1','2017-07-13 16:03:14','system','1','1',NULL,'1','1','1','2017-07-13 16:03:14','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af92d430011','1',0,'1','2017-07-13 16:03:14','system','1','1',NULL,'1','1','1','2017-07-13 16:03:14','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af92ddd0012','1',0,'1','2017-07-13 16:03:15','system','1','1',NULL,'1','1','1','2017-07-13 16:03:15','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af92e7f0013','1',0,'1','2017-07-13 16:03:15','system','1','1',NULL,'1','1','1','2017-07-13 16:03:15','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af92f230014','1',0,'1','2017-07-13 16:03:15','system','1','1',NULL,'1','1','1','2017-07-13 16:03:15','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af92fc30015','1',0,'1','2017-07-13 16:03:15','system','1','1',NULL,'1','1','1','2017-07-13 16:03:15','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af9307b0016','1',0,'1','2017-07-13 16:03:15','system','1','1',NULL,'1','1','1','2017-07-13 16:03:15','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af931150017','1',0,'1','2017-07-13 16:03:15','system','1','1',NULL,'1','1','1','2017-07-13 16:03:15','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af931b40018','1',0,'1','2017-07-13 16:03:16','system','1','1',NULL,'1','1','1','2017-07-13 16:03:16','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3af932540019','1',0,'1','2017-07-13 16:03:16','system','1','1',NULL,'1','1','1','2017-07-13 16:03:16','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3afa5b11001a','1',0,'1','2017-07-13 16:04:32','system','1','',NULL,'','','1','2017-07-13 16:04:32','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3afaa09e001b','',0,'','2017-07-13 16:04:49','system','1','',NULL,'','','11','2017-07-13 16:04:49','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3afb168f001c','',0,'','2017-07-13 16:05:20','system',NULL,'',NULL,'','','','2017-07-13 16:05:20','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3afb2f14001d','',0,'','2017-07-13 16:05:26','system','113','',NULL,'','','','2017-07-13 16:05:26','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('402880905d3a17b6015d3b0c8711001e','',0,'','2017-07-13 16:24:23','system',NULL,'',NULL,'','','','2017-07-13 16:24:23','system',NULL);
insert  into `sys_seed_url_info`(`uuid`,`charset`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`request_type`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`) values ('s','s',0,'s','2017-07-13 12:57:04','system',NULL,NULL,NULL,NULL,NULL,NULL,'2017-07-13 12:57:04','system',NULL);

UNLOCK TABLES;

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
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_system_info` */

LOCK TABLES `sys_system_info` WRITE;

UNLOCK TABLES;

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
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `UK_filjsx4kbabuqh2fkxgd72dx5` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_base_info` */

LOCK TABLES `sys_user_base_info` WRITE;

UNLOCK TABLES;

/*Table structure for table `sys_user_roles_info` */

DROP TABLE IF EXISTS `sys_user_roles_info`;

CREATE TABLE `sys_user_roles_info` (
  `uuid` varchar(32) NOT NULL,
  `flag` varchar(2) DEFAULT NULL,
  `insert_datetime` datetime NOT NULL,
  `roles_id` varchar(32) NOT NULL,
  `updata_datetime` datetime DEFAULT NULL,
  `user_id` varchar(32) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_roles_info` */

LOCK TABLES `sys_user_roles_info` WRITE;

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
