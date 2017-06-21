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

insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('1','99c74ada3a1411e6bdcb10bf48e1d36a','0','数据管理','fa  fa-database',8,'error/404.html',NULL,'佘赐雄',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('10','99c74ada3a1411e6bdcb10bf48e1d36a','yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy','用户管理','fa  fa-user',8,'error/404.html',NULL,'超级管理员',NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('11','99c74ada3a1411e6bdcb10bf48e1d36a','yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy','角色管理','fa  fa-paw',3,'error/404.html',NULL,'超级管理员',NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('12','99c74ada3a1411e6bdcb10bf48e1d36a','yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy','职位管理','fa fa-briefcase',6,'error/404.html','','超级管理员',NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('13','99c74ada3a1411e6bdcb10bf48e1d36a','yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy','岗位管理','fa  fa-graduation-cap',5,'error/404.html',NULL,'超级管理员',NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('14','99c74ada3a1411e6bdcb10bf48e1d36a','yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy','用户组管理','fa  fa-group',7,'http://www.runoob.com/',NULL,'超级管理员',NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('16d4e2d5-d154-455f-94f7-63bf80ab26aa','99c74ada3a1411e6bdcb10bf48e1d36a','4','基础设置','fa fa-book',5,'error/404.html','客户基础资料','超级管理员',NULL,'佘赐雄',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('1c90838f57c6e02e0157c729a95c0043','99c74ada3a1411e6bdcb10bf48e1d36a','E53CC96FE7EF4CFC7BD7E0C786A4DE76','系统功能','fa  fa-navicon',1,'pages/system/system_function_ztree.html','系统导航功能','超级管理员',NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a86b000b','99c74ada3a1411e6bdcb10bf48e1d36a','1','数据库连接','fa  fa-plug',1,'error/404.html','动态链接数据库','超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a871000c','99c74ada3a1411e6bdcb10bf48e1d36a','5','发起流程','fa  fa-edit',1,'error/404.html',NULL,'佘赐雄',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a876000d','99c74ada3a1411e6bdcb10bf48e1d36a','b9f9df92-8ac5-46e2-90ac-68c5c2e034c3','企业号设置','fa  fa-plug',1,'error/404.html',NULL,'超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a87b000e','99c74ada3a1411e6bdcb10bf48e1d36a','458113c6-b0be-4d6f-acce-7524f4bc3e88','表单类别','fa  fa-tags',1,'error/404.html',NULL,'超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8850010','99c74ada3a1411e6bdcb10bf48e1d36a','6','报表管理','fa  fa-cogs',1,'error/404.html','报表模板管理','超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a88a0011','99c74ada3a1411e6bdcb10bf48e1d36a','4','新闻中心','fa  fa-feed',1,'error/404.html',NULL,'超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a88f0012','99c74ada3a1411e6bdcb10bf48e1d36a','16d4e2d5-d154-455f-94f7-63bf80ab26aa','产品信息','fa  fa-shopping-bag',1,'error/404.html','销售产品信息','佘赐雄',NULL,'佘赐雄',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8940013','99c74ada3a1411e6bdcb10bf48e1d36a','b5cb98f6-fb41-4a0f-bc11-469ff117a411','流程监控','fa  fa-eye',2,'error/404.html',NULL,'超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8990014','99c74ada3a1411e6bdcb10bf48e1d36a','4','通知公告','fa  fa-volume-up',2,'error/404.html',NULL,'超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a89d0015','99c74ada3a1411e6bdcb10bf48e1d36a','ad147f6d-613f-4d2d-8c84-b749d0754f3b','商机管理','fa  fa-binoculars',2,'error/404.html','商机管理','超级管理员',NULL,'佘赐雄',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8a10016','99c74ada3a1411e6bdcb10bf48e1d36a','6','采购报表','fa  fa-bar-chart',2,'error/404.html',NULL,'超级管理员',NULL,'佘赐雄',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8a50017','99c74ada3a1411e6bdcb10bf48e1d36a','16d4e2d5-d154-455f-94f7-63bf80ab26aa','客户行业','fa  fa-tag',2,'error/404.html',NULL,'佘赐雄',NULL,'佘赐雄',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8a90018','99c74ada3a1411e6bdcb10bf48e1d36a','b9f9df92-8ac5-46e2-90ac-68c5c2e034c3','企业号部门','fa  fa-sitemap',2,'error/404.html',NULL,'超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8ae0019','99c74ada3a1411e6bdcb10bf48e1d36a','458113c6-b0be-4d6f-acce-7524f4bc3e88','流程类别','fa  fa-tags',2,'error/404.html',NULL,'超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8b2001a','99c74ada3a1411e6bdcb10bf48e1d36a','1','数据库备份','fa  fa-cloud-download',2,'error/404.html','数据备份、数据还原','超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8b6001b','99c74ada3a1411e6bdcb10bf48e1d36a','5','草稿流程','fa  fa-file-text-o',2,'error/404.html',NULL,'陈彬彬',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8c2001e','99c74ada3a1411e6bdcb10bf48e1d36a','zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz','通用字典','fa  fa-book',2,'datacentor/addr/index.html','通用数据字典','超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8ca0020','99c74ada3a1411e6bdcb10bf48e1d36a','zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz','单据编码','fa  fa-barcode',3,'http://www.baidu.com','自动产生号码','超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8d20022','99c74ada3a1411e6bdcb10bf48e1d36a','458113c6-b0be-4d6f-acce-7524f4bc3e88','表单设计','fa  fa-puzzle-piece',3,'error/404.html',NULL,'超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8d60023','99c74ada3a1411e6bdcb10bf48e1d36a','b9f9df92-8ac5-46e2-90ac-68c5c2e034c3','企业号成员','fa  fa-users',3,'error/404.html',NULL,'超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8da0024','99c74ada3a1411e6bdcb10bf48e1d36a','16d4e2d5-d154-455f-94f7-63bf80ab26aa','客户类别','fa  fa-tag',3,'error/404.html',NULL,'佘赐雄',NULL,'佘赐雄',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8de0025','99c74ada3a1411e6bdcb10bf48e1d36a','6','销售报表','fa  fa-line-chart',3,'error/404.html',NULL,'超级管理员',NULL,'佘赐雄',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8e20026','99c74ada3a1411e6bdcb10bf48e1d36a','5','我的流程','fa  fa-file-word-o',3,'error/404.html',NULL,'陈彬彬',NULL,'陈彬彬',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8e60027','99c74ada3a1411e6bdcb10bf48e1d36a','ad147f6d-613f-4d2d-8c84-b749d0754f3b','客户管理','fa  fa-suitcase',3,'error/404.html','客户管理','超级管理员',NULL,'佘赐雄',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8ea0028','99c74ada3a1411e6bdcb10bf48e1d36a','4','文件资料','fa  fa-jsfiddle',3,'error/404.html','文件管理','超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8ee0029','99c74ada3a1411e6bdcb10bf48e1d36a','1','数据表管理','fa  fa-table',3,'error/404.html','数据库表结构','超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8f2002a','99c74ada3a1411e6bdcb10bf48e1d36a','b5cb98f6-fb41-4a0f-bc11-469ff117a411','流程指派','fa  fa-random',3,'error/404.html',NULL,'超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8f6002b','99c74ada3a1411e6bdcb10bf48e1d36a','6','仓存报表','fa  fa-area-chart',4,'error/404.html',NULL,'超级管理员',NULL,'佘赐雄',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8fa002c','99c74ada3a1411e6bdcb10bf48e1d36a','16d4e2d5-d154-455f-94f7-63bf80ab26aa','客户程度','fa  fa-tag',4,'error/404.html',NULL,'超级管理员',NULL,'佘赐雄',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a8ff002d','99c74ada3a1411e6bdcb10bf48e1d36a','ad147f6d-613f-4d2d-8c84-b749d0754f3b','客户开票','fa  fa-coffee',4,'error/404.html','开票管理','超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a903002e','99c74ada3a1411e6bdcb10bf48e1d36a','b9f9df92-8ac5-46e2-90ac-68c5c2e034c3','企业号应用','fa  fa-safari',4,'error/404.html',NULL,'超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a907002f','99c74ada3a1411e6bdcb10bf48e1d36a','458113c6-b0be-4d6f-acce-7524f4bc3e88','流程设计','fa  fa-share-alt',4,'error/404.html',NULL,'超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a90b0030','99c74ada3a1411e6bdcb10bf48e1d36a','5','待办流程','fa  fa-hourglass-half',4,'error/404.html',NULL,'陈彬彬',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a9210035','99c74ada3a1411e6bdcb10bf48e1d36a','5','已办流程','fa  fa-flag',5,'error/404.html',NULL,'超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a9250036','99c74ada3a1411e6bdcb10bf48e1d36a','16d4e2d5-d154-455f-94f7-63bf80ab26aa','客户级别','fa  fa-tag',5,'error/404.html',NULL,'超级管理员',NULL,'佘赐雄',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a9290037','99c74ada3a1411e6bdcb10bf48e1d36a','ad147f6d-613f-4d2d-8c84-b749d0754f3b','客户订单','fa  fa-modx',5,'error/404.html','客户订单管理','超级管理员',NULL,'佘赐雄',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a9310039','99c74ada3a1411e6bdcb10bf48e1d36a','6','对账报表','fa  fa-pie-chart',5,'error/404.html','现金银行报表','超级管理员',NULL,'佘赐雄',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a936003a','99c74ada3a1411e6bdcb10bf48e1d36a','4','邮件中心','fa  fa-send',6,'error/404.html','邮件管理','超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a93a003b','99c74ada3a1411e6bdcb10bf48e1d36a','4','日程管理','fa  fa-calendar',6,'error/404.html','日程管理','超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a942003d','99c74ada3a1411e6bdcb10bf48e1d36a','16d4e2d5-d154-455f-94f7-63bf80ab26aa','商机来源','fa  fa-tag',6,'error/404.html',NULL,'佘赐雄',NULL,'佘赐雄',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a946003e','99c74ada3a1411e6bdcb10bf48e1d36a','ad147f6d-613f-4d2d-8c84-b749d0754f3b','收款管理','fa  fa-money',6,'error/404.html','收款管理','超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a94b003f','99c74ada3a1411e6bdcb10bf48e1d36a','5','工作委托','fa  fa-coffee',6,'error/404.html',NULL,'超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a9540041','99c74ada3a1411e6bdcb10bf48e1d36a','zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz','系统日志','fa  fa-warning',6,'https://www.oschina.net/','登录日志、操作日志。异常日志','超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a9600044','99c74ada3a1411e6bdcb10bf48e1d36a','ad147f6d-613f-4d2d-8c84-b749d0754f3b','收款报表','fa  fa-bar-chart',7,'error/404.html','收款报表','超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a9630045','99c74ada3a1411e6bdcb10bf48e1d36a','16d4e2d5-d154-455f-94f7-63bf80ab26aa','商机阶段','fa  fa-tag',7,'error/404.html',NULL,'佘赐雄',NULL,'佘赐雄',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a96b0047','99c74ada3a1411e6bdcb10bf48e1d36a','zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz','系统表单','fa  fa-paw',8,'error/404.html','系统功能自定义表单','超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a96f0048','99c74ada3a1411e6bdcb10bf48e1d36a','ad147f6d-613f-4d2d-8c84-b749d0754f3b','支出管理','fa  fa-credit-card-alt',8,'error/404.html','支出管理','超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a9730049','99c74ada3a1411e6bdcb10bf48e1d36a','16d4e2d5-d154-455f-94f7-63bf80ab26aa','收支方式','fa  fa-tag',8,'error/404.html',NULL,'超级管理员',NULL,'佘赐雄',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a97b004b','99c74ada3a1411e6bdcb10bf48e1d36a','zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz','快速开发','fa  fa-code',8,'error/404.html','自动生成代码、自动生成功能','超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a982004d','99c74ada3a1411e6bdcb10bf48e1d36a','zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz','移动开发','fa  fa-file-code-o',9,'error/404.html','手机移动端开发','超级管理员',NULL,'陈彬彬',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a986004e','99c74ada3a1411e6bdcb10bf48e1d36a','ad147f6d-613f-4d2d-8c84-b749d0754f3b','现金报表','fa  fa-bar-chart',9,'error/404.html','收支报表','超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a98a004f','99c74ada3a1411e6bdcb10bf48e1d36a','6','销售日报表','fa  fa-pie-chart',9,'error/404.html',NULL,'超级管理员',NULL,'刘晓雷',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a98f0050','99c74ada3a1411e6bdcb10bf48e1d36a','16d4e2d5-d154-455f-94f7-63bf80ab26aa','收支账户','fa  fa-tag',9,'error/404.html',NULL,'超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('2c90838f57c6e02e0157c729a9930051','99c74ada3a1411e6bdcb10bf48e1d36a','16d4e2d5-d154-455f-94f7-63bf80ab26aa','支出种类','fa  fa-tag',10,'error/404.html',NULL,'超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('4','99c74ada3a1411e6bdcb10bf48e1d36a','6','公共信息','fa  fa-globe',6,NULL,NULL,'超级管理员',NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('458113c6-b0be-4d6f-acce-7524f4bc3e88','99c74ada3a1411e6bdcb10bf48e1d36a','0','流程配置','fa  fa-wrench',3,'error/404.html',NULL,'陈彬彬',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('5','99c74ada3a1411e6bdcb10bf48e1d36a','b5cb98f6-fb41-4a0f-bc11-469ff117a411','工作流程','fa  fa-share-alt',2,NULL,NULL,'超级管理员',NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('6','99c74ada3a1411e6bdcb10bf48e1d36a','5','报表中心','fa  fa-area-chart',6,NULL,NULL,'超级管理员',NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('7ae94059-9aa5-48eb-8330-4e2a6565b193','99c74ada3a1411e6bdcb10bf48e1d36a','zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz','行政区域','fa  fa-leaf',1,'default.html','行政区域管理','超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('8','99c74ada3a1411e6bdcb10bf48e1d36a','2','机构管理','fa  fa-sitemap',1,'error/404.html',NULL,'超级管理员',NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('9','99c74ada3a1411e6bdcb10bf48e1d36a','2','部门管理','fa  fa-th-list',2,'error/404.html',NULL,'超级管理员',NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('ad147f6d-613f-4d2d-8c84-b749d0754f3b','99c74ada3a1411e6bdcb10bf48e1d36a','16d4e2d5-d154-455f-94f7-63bf80ab26aa','客户关系','fa  fa-briefcase',10,NULL,'客户关系管理','超级管理员',NULL,'佘赐雄',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('b5cb98f6-fb41-4a0f-bc11-469ff117a411','99c74ada3a1411e6bdcb10bf48e1d36a','0','流程管理','fa  fa-cogs',5,'error/404.html',NULL,'陈彬彬',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('b9f9df92-8ac5-46e2-90ac-68c5c2e034c3','99c74ada3a1411e6bdcb10bf48e1d36a','0','微信管理','fa  fa-weixin',1,'http://www.fenby.com/',NULL,'超级管理员',NULL,'超级管理员',NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('E53CC96FE7EF4CFC7BD7E0C786A4DE76','99c74ada3a1411e6bdcb10bf48e1d36a','0','系统管理','fa  fa-desktop',0,'http://www.baidu.com','外链',NULL,NULL,'',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy','99c74ada3a1411e6bdcb10bf48e1d36a','0','单位组织','fa  fa-coffee',4,NULL,NULL,'佘赐雄',NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`) values ('zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz','99c74ada3a1411e6bdcb10bf48e1d36a','0','系统管理','fa  fa-desktop',2,NULL,NULL,'超级管理员',NULL,NULL,NULL,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
