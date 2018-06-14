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

/*Table structure for table `baidu` */

CREATE TABLE `baidu` (
  `md5` varchar(36) DEFAULT NULL,
  `url` varchar(2000) DEFAULT NULL,
  `数据来源` varchar(50) DEFAULT NULL,
  `datetime` date DEFAULT NULL COMMENT '采集时间',
  `书名` varchar(255) DEFAULT NULL,
  `连接` varchar(255) DEFAULT NULL,
  `图片` varchar(255) DEFAULT NULL,
  `作者` varchar(255) DEFAULT NULL,
  `分类1` varchar(50) DEFAULT NULL,
  `分类2` varchar(50) DEFAULT NULL,
  `简介` varchar(255) DEFAULT NULL,
  `阅读量` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='书简介';

/*Data for the table `baidu` */

insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values (NULL,NULL,NULL,NULL,'圣墟','//book.qidian.com/info/1004608738','//qidian.qpic.cn/qdbimg/349573/1004608738/150','辰东','玄幻','东方玄幻','\r                        在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……\r                    ','220.22万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values (NULL,NULL,NULL,NULL,'我是至尊','//book.qidian.com/info/1005986994','//qidian.qpic.cn/qdbimg/349573/1005986994/150','风凌天下','玄幻','东方玄幻','\r                        药不成丹只是毒，人不成神终成灰。…………天道有缺，人间不平，红尘世外，魍魉横行；哀尔良善，怒尔不争；规则之外，吾来执行。布武天下，屠尽不平；手中有刀，心中有情；\r                    ','68.96万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values (NULL,NULL,NULL,NULL,'牧神记','//book.qidian.com/info/1009704712','//qidian.qpic.cn/qdbimg/349573/1009704712/150','宅猪','玄幻','东方玄幻','\r                        大墟的祖训说，天黑，别出门。大墟残老村的老弱病残们从江边捡到了一个婴儿，取名秦牧，含辛茹苦将他养大。这一天夜幕降临，黑暗笼罩大墟，秦牧走出了家门……做个春风中荡漾的反派吧！\r                    ','40.66万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values (NULL,NULL,NULL,NULL,'圣墟','//book.qidian.com/info/1004608738','//qidian.qpic.cn/qdbimg/349573/1004608738/150','辰东','玄幻','东方玄幻','\r                        在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……\r                    ','220.22万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values (NULL,NULL,NULL,NULL,'我是至尊','//book.qidian.com/info/1005986994','//qidian.qpic.cn/qdbimg/349573/1005986994/150','风凌天下','玄幻','东方玄幻','\r                        药不成丹只是毒，人不成神终成灰。…………天道有缺，人间不平，红尘世外，魍魉横行；哀尔良善，怒尔不争；规则之外，吾来执行。布武天下，屠尽不平；手中有刀，心中有情；\r                    ','68.96万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values (NULL,NULL,NULL,NULL,'牧神记','//book.qidian.com/info/1009704712','//qidian.qpic.cn/qdbimg/349573/1009704712/150','宅猪','玄幻','东方玄幻','\r                        大墟的祖训说，天黑，别出门。大墟残老村的老弱病残们从江边捡到了一个婴儿，取名秦牧，含辛茹苦将他养大。这一天夜幕降临，黑暗笼罩大墟，秦牧走出了家门……做个春风中荡漾的反派吧！\r                    ','40.66万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','圣墟','//book.qidian.com/info/1004608738','//qidian.qpic.cn/qdbimg/349573/1004608738/150','辰东','玄幻','东方玄幻','\r                        在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……\r                    ','220.22万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','我是至尊','//book.qidian.com/info/1005986994','//qidian.qpic.cn/qdbimg/349573/1005986994/150','风凌天下','玄幻','东方玄幻','\r                        药不成丹只是毒，人不成神终成灰。…………天道有缺，人间不平，红尘世外，魍魉横行；哀尔良善，怒尔不争；规则之外，吾来执行。布武天下，屠尽不平；手中有刀，心中有情；\r                    ','68.96万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','牧神记','//book.qidian.com/info/1009704712','//qidian.qpic.cn/qdbimg/349573/1009704712/150','宅猪','玄幻','东方玄幻','\r                        大墟的祖训说，天黑，别出门。大墟残老村的老弱病残们从江边捡到了一个婴儿，取名秦牧，含辛茹苦将他养大。这一天夜幕降临，黑暗笼罩大墟，秦牧走出了家门……做个春风中荡漾的反派吧！\r                    ','40.66万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','圣墟','//book.qidian.com/info/1004608738','//qidian.qpic.cn/qdbimg/349573/1004608738/150','辰东','玄幻','东方玄幻','\r                        在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……\r                    ','220.22万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','我是至尊','//book.qidian.com/info/1005986994','//qidian.qpic.cn/qdbimg/349573/1005986994/150','风凌天下','玄幻','东方玄幻','\r                        药不成丹只是毒，人不成神终成灰。…………天道有缺，人间不平，红尘世外，魍魉横行；哀尔良善，怒尔不争；规则之外，吾来执行。布武天下，屠尽不平；手中有刀，心中有情；\r                    ','68.96万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','牧神记','//book.qidian.com/info/1009704712','//qidian.qpic.cn/qdbimg/349573/1009704712/150','宅猪','玄幻','东方玄幻','\r                        大墟的祖训说，天黑，别出门。大墟残老村的老弱病残们从江边捡到了一个婴儿，取名秦牧，含辛茹苦将他养大。这一天夜幕降临，黑暗笼罩大墟，秦牧走出了家门……做个春风中荡漾的反派吧！\r                    ','40.66万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','圣墟','//book.qidian.com/info/1004608738','//qidian.qpic.cn/qdbimg/349573/1004608738/150','辰东','玄幻','东方玄幻','\r                        在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……\r                    ','220.22万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','圣墟','//book.qidian.com/info/1004608738','//qidian.qpic.cn/qdbimg/349573/1004608738/150','辰东','玄幻','东方玄幻','\r                        在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……\r                    ','220.22万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','圣墟','//book.qidian.com/info/1004608738','//qidian.qpic.cn/qdbimg/349573/1004608738/150','辰东','玄幻','东方玄幻','\r                        在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……\r                    ','220.22万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','我是至尊','//book.qidian.com/info/1005986994','//qidian.qpic.cn/qdbimg/349573/1005986994/150','风凌天下','玄幻','东方玄幻','\r                        药不成丹只是毒，人不成神终成灰。…………天道有缺，人间不平，红尘世外，魍魉横行；哀尔良善，怒尔不争；规则之外，吾来执行。布武天下，屠尽不平；手中有刀，心中有情；\r                    ','68.96万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','牧神记','//book.qidian.com/info/1009704712','//qidian.qpic.cn/qdbimg/349573/1009704712/150','宅猪','玄幻','东方玄幻','\r                        大墟的祖训说，天黑，别出门。大墟残老村的老弱病残们从江边捡到了一个婴儿，取名秦牧，含辛茹苦将他养大。这一天夜幕降临，黑暗笼罩大墟，秦牧走出了家门……做个春风中荡漾的反派吧！\r                    ','40.66万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','圣墟','//book.qidian.com/info/1004608738','//qidian.qpic.cn/qdbimg/349573/1004608738/150','辰东','玄幻','东方玄幻','\r                        在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……\r                    ','220.22万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','我是至尊','//book.qidian.com/info/1005986994','//qidian.qpic.cn/qdbimg/349573/1005986994/150','风凌天下','玄幻','东方玄幻','\r                        药不成丹只是毒，人不成神终成灰。…………天道有缺，人间不平，红尘世外，魍魉横行；哀尔良善，怒尔不争；规则之外，吾来执行。布武天下，屠尽不平；手中有刀，心中有情；\r                    ','68.96万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','牧神记','//book.qidian.com/info/1009704712','//qidian.qpic.cn/qdbimg/349573/1009704712/150','宅猪','玄幻','东方玄幻','\r                        大墟的祖训说，天黑，别出门。大墟残老村的老弱病残们从江边捡到了一个婴儿，取名秦牧，含辛茹苦将他养大。这一天夜幕降临，黑暗笼罩大墟，秦牧走出了家门……做个春风中荡漾的反派吧！\r                    ','40.66万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','圣墟','//book.qidian.com/info/1004608738','//qidian.qpic.cn/qdbimg/349573/1004608738/150','辰东','玄幻','东方玄幻','\r                        在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……\r                    ','220.22万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','圣墟','//book.qidian.com/info/1004608738','//qidian.qpic.cn/qdbimg/349573/1004608738/150','辰东','玄幻','东方玄幻','\r                        在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……\r                    ','220.22万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','圣墟','//book.qidian.com/info/1004608738','//qidian.qpic.cn/qdbimg/349573/1004608738/150','辰东','玄幻','东方玄幻','\r                        在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……\r                    ','220.22万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','我是至尊','//book.qidian.com/info/1005986994','//qidian.qpic.cn/qdbimg/349573/1005986994/150','风凌天下','玄幻','东方玄幻','\r                        药不成丹只是毒，人不成神终成灰。…………天道有缺，人间不平，红尘世外，魍魉横行；哀尔良善，怒尔不争；规则之外，吾来执行。布武天下，屠尽不平；手中有刀，心中有情；\r                    ','68.96万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','牧神记','//book.qidian.com/info/1009704712','//qidian.qpic.cn/qdbimg/349573/1009704712/150','宅猪','玄幻','东方玄幻','\r                        大墟的祖训说，天黑，别出门。大墟残老村的老弱病残们从江边捡到了一个婴儿，取名秦牧，含辛茹苦将他养大。这一天夜幕降临，黑暗笼罩大墟，秦牧走出了家门……做个春风中荡漾的反派吧！\r                    ','40.66万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','圣墟','//book.qidian.com/info/1004608738','//qidian.qpic.cn/qdbimg/349573/1004608738/150','辰东','玄幻','东方玄幻','\r                        在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……\r                    ','220.22万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','我是至尊','//book.qidian.com/info/1005986994','//qidian.qpic.cn/qdbimg/349573/1005986994/150','风凌天下','玄幻','东方玄幻','\r                        药不成丹只是毒，人不成神终成灰。…………天道有缺，人间不平，红尘世外，魍魉横行；哀尔良善，怒尔不争；规则之外，吾来执行。布武天下，屠尽不平；手中有刀，心中有情；\r                    ','68.96万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','牧神记','//book.qidian.com/info/1009704712','//qidian.qpic.cn/qdbimg/349573/1009704712/150','宅猪','玄幻','东方玄幻','\r                        大墟的祖训说，天黑，别出门。大墟残老村的老弱病残们从江边捡到了一个婴儿，取名秦牧，含辛茹苦将他养大。这一天夜幕降临，黑暗笼罩大墟，秦牧走出了家门……做个春风中荡漾的反派吧！\r                    ','40.66万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','圣墟','//book.qidian.com/info/1004608738','//qidian.qpic.cn/qdbimg/349573/1004608738/150','辰东','玄幻','东方玄幻','\r                        在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……\r                    ','220.22万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','圣墟','//book.qidian.com/info/1004608738','//qidian.qpic.cn/qdbimg/349573/1004608738/150','辰东','玄幻','东方玄幻','\r                        在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……\r                    ','220.22万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','圣墟','//book.qidian.com/info/1004608738','//qidian.qpic.cn/qdbimg/349573/1004608738/150','辰东','玄幻','东方玄幻','\r                        在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……\r                    ','220.22万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','我是至尊','//book.qidian.com/info/1005986994','//qidian.qpic.cn/qdbimg/349573/1005986994/150','风凌天下','玄幻','东方玄幻','\r                        药不成丹只是毒，人不成神终成灰。…………天道有缺，人间不平，红尘世外，魍魉横行；哀尔良善，怒尔不争；规则之外，吾来执行。布武天下，屠尽不平；手中有刀，心中有情；\r                    ','68.96万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','牧神记','//book.qidian.com/info/1009704712','//qidian.qpic.cn/qdbimg/349573/1009704712/150','宅猪','玄幻','东方玄幻','\r                        大墟的祖训说，天黑，别出门。大墟残老村的老弱病残们从江边捡到了一个婴儿，取名秦牧，含辛茹苦将他养大。这一天夜幕降临，黑暗笼罩大墟，秦牧走出了家门……做个春风中荡漾的反派吧！\r                    ','40.66万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','圣墟','//book.qidian.com/info/1004608738','//qidian.qpic.cn/qdbimg/349573/1004608738/150','辰东','玄幻','东方玄幻','\r                        在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……\r                    ','220.22万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','我是至尊','//book.qidian.com/info/1005986994','//qidian.qpic.cn/qdbimg/349573/1005986994/150','风凌天下','玄幻','东方玄幻','\r                        药不成丹只是毒，人不成神终成灰。…………天道有缺，人间不平，红尘世外，魍魉横行；哀尔良善，怒尔不争；规则之外，吾来执行。布武天下，屠尽不平；手中有刀，心中有情；\r                    ','68.96万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','牧神记','//book.qidian.com/info/1009704712','//qidian.qpic.cn/qdbimg/349573/1009704712/150','宅猪','玄幻','东方玄幻','\r                        大墟的祖训说，天黑，别出门。大墟残老村的老弱病残们从江边捡到了一个婴儿，取名秦牧，含辛茹苦将他养大。这一天夜幕降临，黑暗笼罩大墟，秦牧走出了家门……做个春风中荡漾的反派吧！\r                    ','40.66万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','圣墟','//book.qidian.com/info/1004608738','//qidian.qpic.cn/qdbimg/349573/1004608738/150','辰东','玄幻','东方玄幻','\r                        在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……\r                    ','220.22万字');
insert  into `baidu`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values ('','','','2018-06-07','圣墟','//book.qidian.com/info/1004608738','//qidian.qpic.cn/qdbimg/349573/1004608738/150','辰东','玄幻','东方玄幻','\r                        在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……\r                    ','220.22万字');

/*Table structure for table `score` */

CREATE TABLE `score` (
  `md5` varchar(36) DEFAULT NULL COMMENT 'url的md5值',
  `url` varchar(2000) DEFAULT NULL COMMENT 'url地址',
  `数据来源` varchar(50) DEFAULT NULL COMMENT '数据来源',
  `datetime` date DEFAULT NULL COMMENT '采集时间',
  `图片` varchar(255) DEFAULT NULL,
  `评分` varchar(255) DEFAULT NULL,
  `书名` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='书评分';

/*Data for the table `score` */

insert  into `score`(`md5`,`url`,`数据来源`,`datetime`,`图片`,`评分`,`书名`) values (NULL,NULL,NULL,NULL,'//qidian.qpic.cn/qdbimg/349573/1004608738/180\r','0 . 0','圣墟');
insert  into `score`(`md5`,`url`,`数据来源`,`datetime`,`图片`,`评分`,`书名`) values (NULL,NULL,NULL,NULL,'//qidian.qpic.cn/qdbimg/349573/1004608738/180\r','0 . 0','圣墟');

/*Table structure for table `sys_comn_logs` */

CREATE TABLE `sys_comn_logs` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `args` text COMMENT '请求参数',
  `class_method` varchar(200) DEFAULT NULL COMMENT '方法名',
  `class_name` varchar(500) DEFAULT NULL COMMENT '类名',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `ip` varchar(200) DEFAULT NULL COMMENT 'ip',
  `method` varchar(200) DEFAULT NULL COMMENT '请求method',
  `request_long` int(11) DEFAULT NULL COMMENT '请求响应时间',
  `url` varchar(200) DEFAULT NULL COMMENT '地址',
  `browser` varchar(1000) DEFAULT NULL COMMENT '浏览器',
  `browser_type` varchar(50) DEFAULT NULL COMMENT '浏览器名称',
  `message` varchar(2000) DEFAULT NULL COMMENT '请求参数',
  `model` varchar(50) DEFAULT NULL COMMENT '手机型号',
  `os` varchar(50) DEFAULT NULL COMMENT '操作系统',
  `param_list` varchar(2000) DEFAULT NULL COMMENT '请求参数',
  `table_name` varchar(100) DEFAULT NULL COMMENT '请求参数',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_comn_logs` */

/*Table structure for table `sys_dbms_advi_mess_info` */

CREATE TABLE `sys_dbms_advi_mess_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `execute_sql` varchar(255) DEFAULT NULL,
  `jdbc_uuid` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `table_desc` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_dbms_advi_mess_info` */

/*Table structure for table `sys_dbms_tabs_cols_info` */

CREATE TABLE `sys_dbms_tabs_cols_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `cols_align` varchar(36) DEFAULT 'center' COMMENT '对齐方式',
  `cols_desc` varchar(50) DEFAULT NULL COMMENT '字段含义',
  `cols_length` int(11) DEFAULT NULL COMMENT '字段长度',
  `cols_name` varchar(30) DEFAULT NULL COMMENT '字段名',
  `cols_order` int(11) DEFAULT NULL COMMENT '字段顺序',
  `cols_switchable` varchar(36) DEFAULT '1' COMMENT '默认为true显示该列，设为false则禁用列项目的选项卡。',
  `cols_type` varchar(30) DEFAULT NULL COMMENT '字段类型（varchar,number,text）',
  `cols_valign` varchar(36) DEFAULT 'middle' COMMENT '对齐方式',
  `cols_visible` varchar(36) DEFAULT '1' COMMENT '默认为true显示该列，设为false则隐藏该列',
  `cols_width` varchar(36) DEFAULT '150' COMMENT '每列的宽度',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `page_list` int(11) DEFAULT NULL COMMENT '字段列表展示隐藏',
  `tabs_uuid` varchar(36) DEFAULT NULL COMMENT '表id',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `user_icon` varchar(20) DEFAULT NULL COMMENT '用户查询显示图标',
  `user_index` varchar(10) DEFAULT NULL COMMENT '用户查询列配置',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_dbms_tabs_cols_info` */

insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('04a41220-06bd-43e4-bea5-37cf4ca2742b','center','444',NULL,'简介',11,'1','varchar','middle','1','150','2018-06-07 15:33:18','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-07 15:34:02','test','fa fa-battery-full','RYXM');
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('04b6ff6f-7a99-4248-aab1-f2d50d1a6681','center','',NULL,'连接',6,'1','varchar','middle','1','150','2018-06-07 15:33:18','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-07 15:33:18','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('06275642-636a-4b8c-85cc-3140337b9dfc','center','数据库表空间大小',NULL,'db_type',15,'1','varchar','middle','1','150','2018-06-08 11:45:29','test',0,NULL,NULL,'ba382713-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:29','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('08568da2-b2c7-4c6c-b75b-c9690fd737b7','center','用户查询显示图标',NULL,'user_icon',20,'1','varchar','middle','1','150','2018-06-08 11:45:15','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:15','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('085ae2a1-7d93-4e16-8e7c-f5a257f64f3d','center','数据库名称',NULL,'database_name',2,'1','varchar','middle','1','150','2018-06-08 11:45:37','test',0,NULL,NULL,'ba382719-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:37','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('08ab2c46-fec3-40b8-8cdb-025d49833d5e','center','类型排序',NULL,'type_order',8,'1','int','middle','1','150','2018-06-08 11:48:08','test',0,NULL,NULL,'ba382722-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:48:08','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('093c67ef-e7e1-4346-a7b0-84704fb13364','center','资源功能描述',NULL,'discription',7,'1','varchar','middle','1','150','2018-06-08 11:43:17','test',0,NULL,NULL,'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:43:17','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('0c0791e5-bc14-4e4e-8064-a4b5dfcd7fab','center','表id',NULL,'tabs_uuid',17,'1','varchar','middle','1','150','2018-06-08 11:45:15','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:15','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('0d678956-6ceb-452d-90bd-77a7d600bd99','center','采集时间',NULL,'datetime',4,'1','date','middle','1','150','2018-06-08 11:45:59','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:59','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('0d8359cc-fd05-410f-a60c-187715935161','center','类名',NULL,'class_name',4,'1','varchar','middle','1','150','2018-06-08 11:43:17','test',0,NULL,NULL,'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:47:12','test','','RYMX');
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('0db7f543-5ca4-4659-be58-e016c3958846','center','录入人员',NULL,'create_user',6,'1','varchar','middle','1','150','2018-06-08 11:43:17','test',0,NULL,NULL,'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:43:17','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('0ef219dc-c837-459c-9e47-620f1344080f','center','数据库表空间大小',NULL,'tabs_space',11,'1','int','middle','1','150','2018-06-08 11:45:29','test',0,NULL,NULL,'ba382713-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:29','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('11078550-e713-4388-a291-c759929a2981','center','',NULL,'md5',1,'1','varchar','middle','1','150','2018-06-08 11:45:59','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:59','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('154d7e87-ce9b-4009-9a9e-8e31a1a0ee49','center','采集时间',NULL,'datetime',4,'1','date','middle','1','150','2018-06-08 11:43:11','test',0,NULL,NULL,'a5d0c4b7-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:43:11','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('1aba528e-4d28-4856-90b1-db39af24c2a3','center','默认为true显示该列，设为false则禁用列项目的选项卡。',NULL,'cols_switchable',7,'1','varchar','middle','1','150','2018-06-08 11:45:20','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:20','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('1b7139b8-e0fc-4eeb-a0a3-cd730f976407','center','数据来源',NULL,'数据来源',3,'1','varchar','middle','1','150','2018-06-08 11:43:11','test',0,NULL,NULL,'a5d0c4b7-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:46:45','test','','RYMX');
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('2020123c-2ed9-449d-8ef7-3bb38d797fe4','center','表的含义',NULL,'tabs_desc',7,'1','varchar','middle','1','150','2018-06-08 11:45:42','test',0,NULL,NULL,'ba382713-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:42','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('242aab20-d191-429e-9a77-65703b6fa842','center','',NULL,'user_placeholder',4,'1','varchar','middle','1','150','2018-06-08 11:45:49','test',0,NULL,NULL,'ba382725-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:48:29','test','','RYMX');
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('29ab8070-8bbc-462f-8631-590bd5b5c360','center','',NULL,'user_desc',3,'1','varchar','middle','1','150','2018-06-08 11:45:49','test',0,NULL,NULL,'ba382725-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:49','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('2a97a5fa-becd-408a-904b-d2db28214a69','center','类型',NULL,'type_class',11,'1','varchar','middle','1','150','2018-06-08 11:48:11','test',0,NULL,NULL,'ba382722-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:48:11','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('2e5fbd15-e312-49b1-8d2f-e8c0fb9206ef','center','',NULL,'url',2,'1','varchar','middle','1','150','2018-06-07 15:33:18','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-07 15:33:18','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('3025d4ea-d7f0-4251-b4f7-598f1a04c955','center','',NULL,'图片',7,'1','varchar','middle','1','150','2018-06-07 15:33:18','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-07 15:33:18','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('323f9d84-80c7-41cc-b08f-a80c0230ed83','center','',NULL,'type',11,'1','varchar','middle','1','150','2018-06-08 11:45:09','test',0,NULL,NULL,'ba382707-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:47:20','test','','RYMX');
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('35c69050-22c7-4683-8114-e14c62094b66','center','',NULL,'分类2',10,'1','varchar','middle','1','150','2018-06-07 15:33:18','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-07 15:33:18','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('35feb50f-8338-4ad6-a845-dea946951cb8','center','录入人员',NULL,'create_user',10,'1','varchar','middle','1','150','2018-06-08 11:45:37','test',0,NULL,NULL,'ba382719-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:37','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('37d4cff9-94fb-4d2e-966a-361bfdf2480e','center','字段长度',NULL,'cols_length',4,'1','int','middle','1','150','2018-06-08 11:45:20','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:20','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('37d79f83-fde5-471e-8a71-8a7ec6b9182b','center','',NULL,'delete_flag',10,'1','tinyint','middle','1','150','2018-06-08 11:45:49','test',0,NULL,NULL,'ba382725-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:49','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('396848ee-ebb3-4b75-899f-40a7dbefe06c','center','停用标记',NULL,'delete_flag',4,'1','int','middle','1','150','2018-06-08 11:45:42','test',0,NULL,NULL,'ba382713-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:42','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('3a16aaa2-6e78-4e60-91dc-a8e3c7de2b01','center','录入人员',NULL,'create_user',3,'1','varchar','middle','1','150','2018-06-08 11:48:08','test',0,NULL,NULL,'ba382722-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:48:08','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('3b488ca1-0c96-4023-9a35-18785d5c888d','center','更新人员',NULL,'update_user',19,'1','varchar','middle','1','150','2018-06-08 11:45:15','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:15','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('40c9c012-fd0d-479d-9e92-c9e0111ec4ce','center','',NULL,'图片',5,'1','varchar','middle','1','150','2018-06-08 11:43:11','test',0,NULL,NULL,'a5d0c4b7-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:46:56','test','','RYMX');
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('451064d2-3702-4c96-9c6f-6f33ab483f0b','center','请求响应时间',NULL,'request_long',10,'1','int','middle','1','150','2018-06-08 11:43:17','test',0,NULL,NULL,'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:43:17','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('476f5213-1d00-4253-a657-11c81f9da442','center','',NULL,'书名',7,'1','varchar','middle','1','150','2018-06-08 11:43:11','test',0,NULL,NULL,'a5d0c4b7-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:43:11','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('47e68ed0-f7aa-46b0-af3f-84b115f32249','center','更新时间',NULL,'update_time',12,'1','timestamp','middle','1','150','2018-06-08 11:45:53','test',0,NULL,NULL,'ba382725-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:53','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('4d43ddb1-a053-44af-9177-311bc500721a','center','更新时间',NULL,'update_user',12,'1','varchar','middle','1','150','2018-06-08 11:45:33','test',0,NULL,NULL,'ba382719-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:33','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('561c097d-6127-4519-b84d-c1323a78135e','center','',NULL,'图片',7,'1','varchar','middle','1','150','2018-06-08 11:45:59','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:59','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('5aa9f967-a7f1-40a2-adaf-cd84d53108f8','center','数据库类型',NULL,'type',5,'1','varchar','middle','1','150','2018-06-08 11:45:37','test',0,NULL,NULL,'ba382719-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:37','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('5cefcaa8-a8bc-4f0e-913e-21f2aa3a70c4','center','',NULL,'分类2',10,'1','varchar','middle','1','150','2018-06-08 11:45:59','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:59','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('60666603-a29b-4a73-8c12-82811876bbae','center','端口号',NULL,'db_type',15,'1','varchar','middle','1','150','2018-06-08 11:45:33','test',0,NULL,NULL,'ba382719-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:33','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('634c79e0-f502-495f-9de0-de1dcc0bae70','center','数据库表类型id',NULL,'type_uuid',12,'1','varchar','middle','1','150','2018-06-08 11:45:29','test',0,NULL,NULL,'ba382713-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:29','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('64a46a3e-ac1a-4754-86f3-c55285f7ecad','center','',NULL,'作者',8,'1','varchar','middle','1','150','2018-06-08 11:45:59','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-08 11:48:36','test','','RYMX');
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('69006647-cf73-45e9-bf32-daf023d9e954','center','默认为true显示该列，设为false则隐藏该列',NULL,'cols_visible',10,'1','varchar','middle','1','150','2018-06-08 11:45:20','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:20','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('6f4c583a-4364-4cee-8e6e-d19181ea6117','center','录入人员',NULL,'create_user',13,'1','varchar','middle','1','150','2018-06-08 11:45:15','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:15','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('6faf1e23-8f80-4f41-a27b-cd9f75aca074','center','主键',NULL,'uuid',1,'1','varchar','middle','1','150','2018-06-08 11:45:49','test',0,NULL,NULL,'ba382725-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:49','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('7227467e-156c-4b9b-8cd3-7f6b44ba5469','center','录入时间',NULL,'create_time',2,'1','timestamp','middle','1','150','2018-06-08 11:45:42','test',0,NULL,NULL,'ba382713-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:42','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('7289e461-21a0-441d-b4b4-49d18c605679','center','端口号',NULL,'port',4,'1','varchar','middle','1','150','2018-06-08 11:45:37','test',0,NULL,NULL,'ba382719-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:37','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('72e5a6ce-a35a-45b2-b519-0b620e94c0a4','center','ip',NULL,'ip',8,'1','varchar','middle','1','150','2018-06-08 11:43:17','test',0,NULL,NULL,'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:43:17','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('73ca09a5-2f87-4982-a0ae-f35c2d69148f','center','对齐方式',NULL,'cols_align',2,'1','varchar','middle','1','150','2018-06-08 11:45:20','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:20','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('749d19c4-7cd6-4b72-9712-8b6fee90dbd0','center','停用标记',NULL,'delete_flag',14,'1','int','middle','1','150','2018-06-08 11:45:15','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:15','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('75005b93-5cd4-4e42-bbf6-b06d0bb195a6','center','图标',NULL,'type_icon',6,'1','varchar','middle','1','150','2018-06-08 11:48:08','test',0,NULL,NULL,'ba382722-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:48:08','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('7749a70b-9f78-44d4-b01a-b661bd61662d','center','资源功能描述',NULL,'discription',13,'1','varchar','middle','1','150','2018-06-08 11:45:53','test',0,NULL,NULL,'ba382725-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:53','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('791d44bb-0a1c-454e-ae18-f283d1f57881','center','',NULL,'user_index',2,'1','varchar','middle','1','150','2018-06-08 11:45:49','test',0,NULL,NULL,'ba382725-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:49','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('7b92e4ef-0f60-4cef-a898-f312e0c248e0','center','主键',NULL,'uuid',1,'1','varchar','middle','1','150','2018-06-08 11:45:37','test',0,NULL,NULL,'ba382719-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:37','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('7cbf0f25-a101-46b3-941b-1bb7b595f403','center','',NULL,'评分',6,'1','varchar','middle','1','150','2018-06-08 11:43:11','test',0,NULL,NULL,'a5d0c4b7-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:43:11','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('802a545d-1d3d-47a8-ac9f-5a4cd746c7e6','center','主键',NULL,'uuid',1,'1','varchar','middle','1','150','2018-06-08 11:48:08','test',0,NULL,NULL,'ba382722-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:48:20','test','','RYMX');
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('832c0aa2-b7a1-499c-ba18-5971823a0800','center','资源功能描述',NULL,'discription',9,'1','varchar','middle','1','150','2018-06-08 11:45:37','test',0,NULL,NULL,'ba382719-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:37','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('8521ed8a-5472-460f-929f-1c50eafeb6d1','center','主键',NULL,'uuid',1,'1','varchar','middle','1','150','2018-06-08 11:45:42','test',0,NULL,NULL,'ba382713-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:42','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('87d784e3-7675-4a17-9289-8915a870a9ed','center','',NULL,'user_order',7,'1','int','middle','1','150','2018-06-08 11:45:49','test',0,NULL,NULL,'ba382725-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:49','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('8a0abddb-cbc8-44c1-8481-1854e398f803','center','',NULL,'分类1',9,'1','varchar','middle','1','150','2018-06-07 15:33:18','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-07 15:33:18','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('8c3dd98f-2f46-46dd-b756-1337220508dd','center','每列的宽度',NULL,'cols_width',11,'1','varchar','middle','1','150','2018-06-08 11:45:15','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:15','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('8c838bed-354c-4ad3-ace2-07a81b1d2f37','center','主键',NULL,'uuid',1,'1','varchar','middle','1','150','2018-06-08 11:45:20','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:20','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('8e9a9a65-830d-412d-9e57-7c3bc6928425','center','用户密码',NULL,'password',7,'1','varchar','middle','1','150','2018-06-08 11:45:37','test',0,NULL,NULL,'ba382719-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:37','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('9429a2a4-fefc-450f-9757-936ee3d6f415','center','对齐方式',NULL,'cols_valign',9,'1','varchar','middle','1','150','2018-06-08 11:45:20','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:20','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('97e6a7a4-4c5f-4d56-90bf-098af131cefa','center','',NULL,'阅读量',12,'1','varchar','middle','1','150','2018-06-08 11:46:03','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-08 11:46:03','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('98aceb49-88f9-45cb-a224-019a4ef38d92','center','主键',NULL,'uuid',1,'1','varchar','middle','1','150','2018-06-08 11:43:17','test',0,NULL,NULL,'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:43:17','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('9901b9cd-8e55-4633-ba67-3a0fd64803e8','center','资源功能描述',NULL,'discription',15,'1','varchar','middle','1','150','2018-06-08 11:45:15','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:15','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('99b50b67-c28d-42c2-9028-8b81a73145c5','center','',NULL,'数据来源',3,'1','varchar','middle','1','150','2018-06-08 11:45:59','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:59','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('99b90ebd-c6fb-4c42-90c4-536e82dc25e0','center','录入时间',NULL,'create_time',12,'1','timestamp','middle','1','150','2018-06-08 11:45:15','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:15','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('9b825a70-67d5-41ad-88d1-dc675a0c0a72','center','录入人员',NULL,'create_user',8,'1','varchar','middle','1','150','2018-06-08 11:45:49','test',0,NULL,NULL,'ba382725-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:49','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('9c38ab22-bcb9-4763-888a-39cd7c8c5d63','center','录入时间',NULL,'create_time',11,'1','timestamp','middle','1','150','2018-06-08 11:45:33','test',0,NULL,NULL,'ba382719-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:33','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('9c52e61b-95b3-4e3a-af75-0f191cdf0926','center','数据库表顺序',NULL,'tabs_order',9,'1','int','middle','1','150','2018-06-08 11:45:42','test',0,NULL,NULL,'ba382713-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:42','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('9d1c15f2-0c18-4459-9db7-f7d171647608','center','类型名',NULL,'type_name',7,'1','varchar','middle','1','150','2018-06-08 11:48:08','test',0,NULL,NULL,'ba382722-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:48:08','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('9e05fb98-63ca-42df-95e4-ce7aae297036','center','更新时间',NULL,'update_time',13,'1','timestamp','middle','1','150','2018-06-08 11:45:29','test',0,NULL,NULL,'ba382713-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:29','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('9e3c4bdd-d89a-4c8c-90b9-136d5e4a0cce','center','',NULL,'分类1',9,'1','varchar','middle','1','150','2018-06-08 11:45:59','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:59','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('9e3dcfc8-0d0b-4a76-8342-a76466e108cf','center','数据库表数据量',NULL,'tabs_rows',10,'1','int','middle','1','150','2018-06-08 11:45:42','test',0,NULL,NULL,'ba382713-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:42','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('9ebc228e-b138-4f46-9a1e-cd6e497e5198','center','资源功能描述',NULL,'discription',5,'1','varchar','middle','1','150','2018-06-08 11:45:42','test',0,NULL,NULL,'ba382713-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:42','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('a770888c-b4ac-4771-8825-c8f27e074cf2','center','',NULL,'md5',1,'1','varchar','middle','1','150','2018-06-07 15:33:18','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-07 15:33:18','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('a9f69d4b-4cc5-492d-b047-a8147de3d788','center','字段含义',NULL,'cols_desc',3,'1','varchar','middle','1','150','2018-06-08 11:45:20','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:20','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('acd160c9-5fe7-4ffb-b3e9-ba193a3e913a','center','更新人员',NULL,'update_user',14,'1','varchar','middle','1','150','2018-06-08 11:45:29','test',0,NULL,NULL,'ba382713-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:29','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('b3026ea0-0b1d-4dbc-8719-f2ba58b496b1','center','方法名',NULL,'class_method',3,'1','varchar','middle','1','150','2018-06-08 11:43:17','test',0,NULL,NULL,'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:43:17','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('b3092f79-160f-41c9-8711-3c3c0c4bd048','center','采集时间',NULL,'datetime',4,'1','date','middle','1','150','2018-06-07 15:33:18','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-07 15:33:18','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('b336ef40-02c1-404a-8479-8f4b7ddd52a4','center','字段列表展示隐藏',NULL,'page_list',16,'1','int','middle','1','150','2018-06-08 11:45:15','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:15','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('b3c4e0ea-044a-4bc0-bd57-286e400fa191','center','数据库表名',NULL,'tabs_name',8,'1','varchar','middle','1','150','2018-06-08 11:45:42','test',0,NULL,NULL,'ba382713-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:47:41','test','','RYMX');
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('b75809bc-99d3-4282-9a57-a041048d76ea','center','更新时间',NULL,'update_time',18,'1','timestamp','middle','1','150','2018-06-08 11:45:15','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:15','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('b9c0ad50-43c6-4a05-857c-f6f01e2a18de','center','数据库驱动类',NULL,'driver',8,'1','varchar','middle','1','150','2018-06-08 11:45:37','test',0,NULL,NULL,'ba382719-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:37','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('bace98a0-537b-419b-8026-627e1c57d333','center','用户名称',NULL,'username',6,'1','varchar','middle','1','150','2018-06-08 11:45:37','test',0,NULL,NULL,'ba382719-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:47:53','test','','RYMX');
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('bead9c76-41ec-4387-9775-519aa70da1f6','center','录入时间',NULL,'create_time',5,'1','timestamp','middle','1','150','2018-06-08 11:43:17','test',0,NULL,NULL,'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:43:17','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('c2a29e71-65ca-4486-9a95-aca27a331edf','center','',NULL,'简介',11,'1','varchar','middle','1','150','2018-06-08 11:46:03','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-08 11:46:03','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('c561fd23-a590-4086-8102-dad22ba74701','center','',NULL,'chart',5,'1','int','middle','1','150','2018-06-08 11:45:49','test',0,NULL,NULL,'ba382725-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:49','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('c65aea70-57d7-4ba9-8200-84e8f50b235f','center','字段顺序',NULL,'cols_order',6,'1','int','middle','1','150','2018-06-08 11:45:20','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:20','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('cee695a3-d9e9-4c3a-948c-1e475992765a','center','',NULL,'书名',5,'1','varchar','middle','1','150','2018-06-08 11:45:59','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:59','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('cfade491-c036-4698-9334-8d02ae3e347f','center','更新人员',NULL,'update_time',13,'1','timestamp','middle','1','150','2018-06-08 11:45:33','test',0,NULL,NULL,'ba382719-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:33','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('d57458ef-4871-43f5-a58a-09c0ac0306ab','center','停用标记',NULL,'delete_flag',4,'1','int','middle','1','150','2018-06-08 11:48:08','test',0,NULL,NULL,'ba382722-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:48:08','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('d64de967-c896-4d42-904e-62cd05e3edf9','center','',NULL,'书名',5,'1','varchar','middle','1','150','2018-06-07 15:33:18','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-07 15:33:18','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('d6bd1a59-48ab-4b40-bd08-42dc58a86594','center','字段类型（varchar,number,text）',NULL,'cols_type',8,'1','varchar','middle','1','150','2018-06-08 11:45:20','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:20','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('d8e21a2f-ca0e-4563-a371-1922ec316535','center','',NULL,'连接',6,'1','varchar','middle','1','150','2018-06-08 11:45:59','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:59','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('d918fdb2-fc4f-4641-b270-173f20d797b6','center','',NULL,'url',2,'1','varchar','middle','1','150','2018-06-08 11:45:59','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:59','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('dc9f9322-cd8f-4e60-9c48-70d9b981322a','center','ip地址',NULL,'ip',3,'1','varchar','middle','1','150','2018-06-08 11:45:37','test',0,NULL,NULL,'ba382719-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:37','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('dda44ff3-8547-462f-9a3b-2fd17494c456','center','更新人员',NULL,'update_user',11,'1','varchar','middle','1','150','2018-06-08 11:45:53','test',0,NULL,NULL,'ba382725-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:53','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('ddd981db-40ef-4e1d-a523-ab4c3def694f','center','数据库表id',NULL,'jdbc_uuid',6,'1','varchar','middle','1','150','2018-06-08 11:45:42','test',0,NULL,NULL,'ba382713-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:42','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('dde496c1-778d-4988-9907-c87de81fc0c0','center','',NULL,'multeity',6,'1','int','middle','1','150','2018-06-08 11:45:49','test',0,NULL,NULL,'ba382725-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:49','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('dee23da6-62fc-44ac-9710-a878114dbcd5','center','录入人员',NULL,'create_user',3,'1','varchar','middle','1','150','2018-06-08 11:45:42','test',0,NULL,NULL,'ba382713-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:42','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('df8f6de4-af2d-4392-94ec-a45e512e217a','center','更新人员',NULL,'update_time',9,'1','timestamp','middle','1','150','2018-06-08 11:48:08','test',0,NULL,NULL,'ba382722-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:48:08','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('e4e25442-9605-4663-bc4b-3f32573bc6d0','center','',NULL,'阅读量',12,'1','varchar','middle','1','150','2018-06-07 15:33:18','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-07 15:33:18','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('e6ad9fff-ca5e-4216-a74a-d6a1ae074bf6','center','',NULL,'数据来源',3,'1','varchar','middle','1','150','2018-06-07 15:33:18','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-07 15:33:18','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('e78f5c06-271f-4141-9e83-b76aa251d989','center','录入时间',NULL,'create_time',9,'1','timestamp','middle','1','150','2018-06-08 11:45:49','test',0,NULL,NULL,'ba382725-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:49','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('ead01fa8-9e36-4834-b573-5df8e71ace41','center','停用标记',NULL,'delete_flag',14,'1','int','middle','1','150','2018-06-08 11:45:33','test',0,NULL,NULL,'ba382719-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:33','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('ec09f969-4eae-4361-85db-97c436d02b1d','center','url地址',NULL,'url',2,'1','varchar','middle','1','150','2018-06-08 11:43:11','test',0,NULL,NULL,'a5d0c4b7-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:43:11','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('ec31c2f2-c103-47c1-98df-1e7a0897f44e','center','用户查询列配置',NULL,'user_index',21,'1','varchar','middle','1','150','2018-06-08 11:45:24','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:47:26','test','','RYMX');
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('ed299ba4-8183-4dad-b560-80758d70af51','center','',NULL,'作者',8,'1','varchar','middle','1','150','2018-06-07 15:33:18','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-07 15:33:18','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('efaa9b81-cd6f-40f3-a0cb-5071c904be6a','center','录入时间',NULL,'create_time',2,'1','timestamp','middle','1','150','2018-06-08 11:48:08','test',0,NULL,NULL,'ba382722-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:48:08','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('f7f2039f-ee0b-42e4-85c2-1601c6cba8e0','center','请求参数',NULL,'args',2,'1','text','middle','1','150','2018-06-08 11:43:17','test',0,NULL,NULL,'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:43:17','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('f81d586b-819a-4a17-9e69-0625ef7e303d','center','请求method',NULL,'method',9,'1','varchar','middle','1','150','2018-06-08 11:43:17','test',0,NULL,NULL,'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:43:17','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('fa0c3684-4d5a-4ffa-91f1-0c4a9f0bd128','center','更新时间',NULL,'update_user',10,'1','varchar','middle','1','150','2018-06-08 11:48:08','test',0,NULL,NULL,'ba382722-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:48:08','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('fd7979ee-f900-4643-8d61-d481a5348a66','center','url的md5值',NULL,'md5',1,'1','varchar','middle','1','150','2018-06-08 11:43:11','test',0,NULL,NULL,'a5d0c4b7-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:43:11','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('fda521a4-475c-45ad-8941-6ee7446024f2','center','字段名',NULL,'cols_name',5,'1','varchar','middle','1','150','2018-06-08 11:45:20','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:20','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('feb86245-85fe-42c9-9d30-ca49a1aa6b08','center','资源功能描述',NULL,'discription',5,'1','varchar','middle','1','150','2018-06-08 11:48:08','test',0,NULL,NULL,'ba382722-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:48:08','test',NULL,NULL);

/*Table structure for table `sys_dbms_tabs_info` */

CREATE TABLE `sys_dbms_tabs_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `jdbc_uuid` varchar(36) DEFAULT NULL COMMENT '数据库表id',
  `tabs_desc` varchar(50) DEFAULT NULL COMMENT '表的含义',
  `tabs_name` varchar(100) DEFAULT NULL COMMENT '数据库表名',
  `tabs_order` int(11) DEFAULT NULL COMMENT '数据库表顺序',
  `tabs_rows` int(11) DEFAULT NULL COMMENT '数据库表数据量',
  `tabs_space` int(11) DEFAULT NULL COMMENT '数据库表空间大小',
  `type_uuid` varchar(36) DEFAULT NULL COMMENT '数据库表类型id',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `db_type` varchar(50) DEFAULT NULL COMMENT '数据库表空间大小',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_dbms_tabs_info` */

insert  into `sys_dbms_tabs_info`(`uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`jdbc_uuid`,`tabs_desc`,`tabs_name`,`tabs_order`,`tabs_rows`,`tabs_space`,`type_uuid`,`update_time`,`update_user`,`db_type`) values ('a5d0c4b7-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:40:48','test',0,NULL,'F1027C0339119FF6B60244754A30F8A3','书评分','application.score',NULL,2,NULL,NULL,'2018-06-08 11:40:48','test','mysql');
insert  into `sys_dbms_tabs_info`(`uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`jdbc_uuid`,`tabs_desc`,`tabs_name`,`tabs_order`,`tabs_rows`,`tabs_space`,`type_uuid`,`update_time`,`update_user`,`db_type`) values ('a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:40:48','test',NULL,NULL,'F1027C0339119FF6B60244754A30F8A3','','application.sys_comn_logs',NULL,NULL,NULL,'E6DB186F94ADEF68BB8FD3AF0A860520','2018-06-08 11:50:43',NULL,'mysql');
insert  into `sys_dbms_tabs_info`(`uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`jdbc_uuid`,`tabs_desc`,`tabs_name`,`tabs_order`,`tabs_rows`,`tabs_space`,`type_uuid`,`update_time`,`update_user`,`db_type`) values ('ba382707-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:42:46','test',NULL,NULL,'F1027C0339119FF6B60244754A30F8A3','','application.sys_dbms_advi_mess_info',NULL,NULL,NULL,'E6DB186F94ADEF68BB8FD3AF0A860520','2018-06-08 11:49:14',NULL,'mysql');
insert  into `sys_dbms_tabs_info`(`uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`jdbc_uuid`,`tabs_desc`,`tabs_name`,`tabs_order`,`tabs_rows`,`tabs_space`,`type_uuid`,`update_time`,`update_user`,`db_type`) values ('ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:42:46','test',NULL,NULL,'F1027C0339119FF6B60244754A30F8A3','','application.sys_dbms_tabs_cols_info',NULL,NULL,NULL,'E6DB186F94ADEF68BB8FD3AF0A860520','2018-06-08 11:49:20',NULL,'mysql');
insert  into `sys_dbms_tabs_info`(`uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`jdbc_uuid`,`tabs_desc`,`tabs_name`,`tabs_order`,`tabs_rows`,`tabs_space`,`type_uuid`,`update_time`,`update_user`,`db_type`) values ('ba382713-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:42:46','test',NULL,NULL,'F1027C0339119FF6B60244754A30F8A3','','application.sys_dbms_tabs_info',NULL,NULL,NULL,'E6DB186F94ADEF68BB8FD3AF0A860520','2018-06-08 11:49:25',NULL,'mysql');
insert  into `sys_dbms_tabs_info`(`uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`jdbc_uuid`,`tabs_desc`,`tabs_name`,`tabs_order`,`tabs_rows`,`tabs_space`,`type_uuid`,`update_time`,`update_user`,`db_type`) values ('ba382719-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:42:46','test',NULL,NULL,'F1027C0339119FF6B60244754A30F8A3','','application.sys_dbms_tabs_jdbc_info',NULL,NULL,NULL,'E6DB186F94ADEF68BB8FD3AF0A860520','2018-06-08 11:49:30',NULL,'mysql');
insert  into `sys_dbms_tabs_info`(`uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`jdbc_uuid`,`tabs_desc`,`tabs_name`,`tabs_order`,`tabs_rows`,`tabs_space`,`type_uuid`,`update_time`,`update_user`,`db_type`) values ('ba382722-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:42:46','test',NULL,NULL,'F1027C0339119FF6B60244754A30F8A3','','application.sys_dbms_tabs_type_info',NULL,NULL,NULL,'E6DB186F94ADEF68BB8FD3AF0A860520','2018-06-08 11:50:31',NULL,'mysql');
insert  into `sys_dbms_tabs_info`(`uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`jdbc_uuid`,`tabs_desc`,`tabs_name`,`tabs_order`,`tabs_rows`,`tabs_space`,`type_uuid`,`update_time`,`update_user`,`db_type`) values ('ba382725-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:42:46','test',NULL,NULL,'F1027C0339119FF6B60244754A30F8A3','','application.sys_dbms_user_index_info',NULL,NULL,NULL,'E6DB186F94ADEF68BB8FD3AF0A860520','2018-06-08 11:50:37',NULL,'mysql');
insert  into `sys_dbms_tabs_info`(`uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`jdbc_uuid`,`tabs_desc`,`tabs_name`,`tabs_order`,`tabs_rows`,`tabs_space`,`type_uuid`,`update_time`,`update_user`,`db_type`) values ('bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-07 10:23:50','test',NULL,NULL,'F1027C0339119FF6B60244754A30F8A3','书简介','application.baidu',NULL,NULL,NULL,'E6DB186F94ADEF68BB8FD3AF0A860520','2018-06-08 11:50:48',NULL,'mysql');

/*Table structure for table `sys_dbms_tabs_jdbc_info` */

CREATE TABLE `sys_dbms_tabs_jdbc_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `database_name` varchar(50) DEFAULT NULL COMMENT '数据库名称',
  `ip` varchar(100) DEFAULT NULL COMMENT 'ip地址',
  `port` varchar(10) DEFAULT NULL COMMENT '端口号',
  `type` varchar(200) DEFAULT NULL COMMENT '数据库类型',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名称',
  `password` varchar(200) DEFAULT NULL COMMENT '用户密码',
  `driver` varchar(200) DEFAULT NULL COMMENT '数据库驱动类',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `db_type` varchar(10) DEFAULT NULL COMMENT '端口号',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_dbms_tabs_jdbc_info` */

insert  into `sys_dbms_tabs_jdbc_info`(`uuid`,`database_name`,`ip`,`port`,`type`,`username`,`password`,`driver`,`discription`,`create_user`,`create_time`,`update_user`,`update_time`,`delete_flag`,`db_type`) values ('F1027C0339119FF6B60244754A30F8A3','application','localhost','3306','mysql','root','514840279@qq.com',NULL,'应用平台',NULL,'2017-08-16 08:47:28',NULL,'2018-06-06 14:41:27',NULL,NULL);

/*Table structure for table `sys_dbms_tabs_type_info` */

CREATE TABLE `sys_dbms_tabs_type_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `type_icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `type_name` varchar(36) DEFAULT NULL COMMENT '类型名',
  `type_order` int(11) DEFAULT NULL COMMENT '类型排序',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `type_class` varchar(36) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_dbms_tabs_type_info` */

insert  into `sys_dbms_tabs_type_info`(`uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`type_icon`,`type_name`,`type_order`,`update_time`,`update_user`,`type_class`) values ('E6DB186F94ADEF68BB8FD3AF0A860520','2018-06-06 08:47:36',NULL,1,'1','1','测试',1222,'2018-06-07 17:31:37',NULL,NULL);

/*Table structure for table `sys_dbms_user_index_info` */

CREATE TABLE `sys_dbms_user_index_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `user_index` varchar(200) NOT NULL,
  `user_desc` varchar(255) DEFAULT NULL,
  `user_placeholder` varchar(255) DEFAULT NULL,
  `chart` int(11) DEFAULT NULL,
  `multeity` int(11) DEFAULT NULL,
  `user_order` int(11) NOT NULL,
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `delete_flag` tinyint(1) DEFAULT '1',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_dbms_user_index_info` */

insert  into `sys_dbms_user_index_info`(`uuid`,`user_index`,`user_desc`,`user_placeholder`,`chart`,`multeity`,`user_order`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`,`discription`) values ('1','RYXM','姓名','人员姓名',NULL,1,2,'system','2018-03-12 16:51:48',1,'test','2018-06-04 15:07:44',NULL);
insert  into `sys_dbms_user_index_info`(`uuid`,`user_index`,`user_desc`,`user_placeholder`,`chart`,`multeity`,`user_order`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`,`discription`) values ('174A2FED4B67377743EC4A8E418FECA6','DL','单位','单位名称',NULL,1,200,'test','2018-05-09 09:51:50',1,'test','2018-06-04 15:05:57',NULL);
insert  into `sys_dbms_user_index_info`(`uuid`,`user_index`,`user_desc`,`user_placeholder`,`chart`,`multeity`,`user_order`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`,`discription`) values ('2','DHHM','手机','电话号码',NULL,1,2,'system','2018-03-12 16:51:48',1,'test','2018-06-04 15:06:36',NULL);
insert  into `sys_dbms_user_index_info`(`uuid`,`user_index`,`user_desc`,`user_placeholder`,`chart`,`multeity`,`user_order`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`,`discription`) values ('3','SFZH','身份证号','身份证号',NULL,NULL,3,'system','2018-03-12 16:51:48',1,'test','2018-06-04 15:06:11',NULL);
insert  into `sys_dbms_user_index_info`(`uuid`,`user_index`,`user_desc`,`user_placeholder`,`chart`,`multeity`,`user_order`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`,`discription`) values ('4','QQHM','QQ号码','QQ号码',NULL,1,4,'system','2018-03-12 16:51:48',1,'test','2018-06-04 15:07:53',NULL);
insert  into `sys_dbms_user_index_info`(`uuid`,`user_index`,`user_desc`,`user_placeholder`,`chart`,`multeity`,`user_order`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`,`discription`) values ('5','GSMC','公司名称','单位名称',NULL,1,5,'system','2018-03-12 16:51:48',1,'test','2018-06-04 15:07:59',NULL);
insert  into `sys_dbms_user_index_info`(`uuid`,`user_index`,`user_desc`,`user_placeholder`,`chart`,`multeity`,`user_order`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`,`discription`) values ('6','DZYX','邮箱','电子邮箱',NULL,1,6,'system','2018-03-12 16:51:48',1,'test','2018-06-04 15:08:03',NULL);
insert  into `sys_dbms_user_index_info`(`uuid`,`user_index`,`user_desc`,`user_placeholder`,`chart`,`multeity`,`user_order`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`,`discription`) values ('7','DZ','地址','地址',NULL,1,7,'system','2018-03-12 16:51:48',1,'test','2018-06-04 15:08:08',NULL);

/*Table structure for table `sys_department_info` */

CREATE TABLE `sys_department_info` (
  `uuid` varchar(32) NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `organization_id` varchar(32) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_department_info` */

insert  into `sys_department_info`(`uuid`,`department_name`,`organization_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('214F6F1048626F0C6792E19BF57C1F07','user','3CE6C80F33B624C1BB1B016A79083694','2018-02-23 11:47:11',NULL,NULL,'user','2018-02-23 11:47:11','system');
insert  into `sys_department_info`(`uuid`,`department_name`,`organization_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('2476DC8ED9FE9483FB956C2EFEB8E39E','test','3CE6C80F33B624C1BB1B016A79083694','2018-02-22 10:59:21',NULL,NULL,'test','2018-02-22 10:59:21','system');
insert  into `sys_department_info`(`uuid`,`department_name`,`organization_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('BD174B512EB1A0B87FF6E6CE6B171393','admin','3CE6C80F33B624C1BB1B016A79083694','2018-02-12 16:23:00',NULL,NULL,'admin','2018-02-12 16:23:00','system');

/*Table structure for table `sys_dic_key_list` */

CREATE TABLE `sys_dic_key_list` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `name_uuid` varchar(36) NOT NULL COMMENT '外键',
  `key_value` varchar(50) DEFAULT NULL COMMENT '列表value',
  `key_order` int(11) NOT NULL COMMENT '排序',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_dic_key_list` */

insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('01660cf9-ff94-433a-9b49-95853374e20b','6516a59c-b56e-43c6-a172-55c4784ceec3','chalk',7,'2018-05-22 17:57:15','test',NULL,NULL,'2018-05-22 17:57:15','test','粉笔');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('02bfe0ee-e634-4a7e-bec1-e9a692eb5dae','99313fa6-3004-42d5-ab51-5edc8dd25541','吉林',15,'2018-05-22 18:25:08','test',NULL,NULL,'2018-05-22 18:25:08','test','吉林');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('074dfa16-3b2a-4afc-aeb1-730abae1b3f4','99313fa6-3004-42d5-ab51-5edc8dd25541','北京',2,'2018-05-22 18:23:20','test',NULL,NULL,'2018-05-22 18:23:20','test','北京');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('097f1dda-19a2-4c13-86f8-c5968ba2aea7','6516a59c-b56e-43c6-a172-55c4784ceec3','vintage',6,'2018-05-22 17:46:55','test',NULL,NULL,'2018-05-22 17:57:30','test','酿造的');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('15bcbc9e-1df0-4afd-beac-aac2b64380ff','6516a59c-b56e-43c6-a172-55c4784ceec3','westeros',11,'2018-05-22 17:59:55','test',NULL,NULL,'2018-05-22 17:59:55','test','维斯特洛');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('18a52afe-0c18-48d6-880a-221b2ba660d5','99313fa6-3004-42d5-ab51-5edc8dd25541','上海',25,'2018-05-22 18:26:19','test',NULL,NULL,'2018-05-22 18:26:19','test','上海');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('19cb1d1a-d6d1-44c0-b63c-c37d4511b7a5','99313fa6-3004-42d5-ab51-5edc8dd25541','台湾',33,'2018-05-22 18:27:34','test',NULL,NULL,'2018-05-22 18:27:34','test','台湾');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('1a75caf8-f610-44a6-be07-84b84a99367a','99313fa6-3004-42d5-ab51-5edc8dd25541','湖北',12,'2018-05-22 18:24:53','test',NULL,NULL,'2018-05-22 18:24:53','test','湖北');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('1e8eb781-06c6-4e67-8995-d2ef816ed0c8','99313fa6-3004-42d5-ab51-5edc8dd25541','台湾',38,'2018-05-22 18:28:25','test',NULL,NULL,'2018-05-22 18:28:25','test','台湾');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('243e99b8-6012-4fcc-bbd8-699fc0dd96d3','99313fa6-3004-42d5-ab51-5edc8dd25541','重庆',32,'2018-05-22 18:27:09','test',NULL,NULL,'2018-05-22 18:27:09','test','重庆');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('29649da5-4b20-4e0b-9f59-ce5a735c24b0','99313fa6-3004-42d5-ab51-5edc8dd25541','浙江',31,'2018-05-22 18:27:01','test',NULL,NULL,'2018-05-22 18:27:01','test','浙江');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('2a327d0e-1e85-4c7d-8a0e-f08d4d1e603f','99313fa6-3004-42d5-ab51-5edc8dd25541','江苏',16,'2018-05-22 18:25:14','test',NULL,NULL,'2018-05-22 18:25:14','test','江苏');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('352a0cda-d69d-49dd-8849-60c4477c6102','99313fa6-3004-42d5-ab51-5edc8dd25541','黑龙江',11,'2018-05-22 18:24:44','test',NULL,NULL,'2018-05-22 18:24:44','test','黑龙江');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('355c5650-2b3c-4340-99ad-bf153a3595ad','6516a59c-b56e-43c6-a172-55c4784ceec3','roma',5,'2018-05-22 17:45:59','test',NULL,NULL,'2018-05-22 17:45:59','test','罗马');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('3d894a24-cde0-49b3-9822-5b29e0c8f123','99313fa6-3004-42d5-ab51-5edc8dd25541','天津',27,'2018-05-22 18:26:33','test',NULL,NULL,'2018-05-22 18:26:33','test','天津');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('3e6525d2-53c0-48f6-9496-37c034352645','99313fa6-3004-42d5-ab51-5edc8dd25541','内蒙古',18,'2018-05-22 18:25:37','test',NULL,NULL,'2018-05-22 18:25:37','test','内蒙古');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('43a0dc75-7d20-4fe9-ad9e-3eab4df9bb31','99313fa6-3004-42d5-ab51-5edc8dd25541','福建',3,'2018-05-22 18:23:27','test',NULL,NULL,'2018-05-22 18:23:27','test','福建');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('4c358207-6c47-4388-bead-c0674149d426','6ae40ad7-5d61-4cec-a93e-77aedda734e8','bar',5,'2018-05-21 17:22:22','test',NULL,NULL,'2018-05-24 15:09:15','test','标准柱图');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('4dc9c52b-9628-4174-a84c-dab43f601d4d','99313fa6-3004-42d5-ab51-5edc8dd25541','宁夏',19,'2018-05-22 18:25:44','test',NULL,NULL,'2018-05-22 18:25:44','test','宁夏');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('502d9776-290d-44ae-aa6c-fbac79b6488d','3fd39f88-847f-4355-a49f-9ecac439d16d','sarr',4,'2018-06-11 15:14:52','test',NULL,NULL,'2018-06-11 15:14:52','test','sarr');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('51cc95ff-5928-4ba3-b39a-8045d08f8bf5','6516a59c-b56e-43c6-a172-55c4784ceec3','wonderland',13,'2018-05-22 18:00:23','test',NULL,NULL,'2018-05-22 18:00:23','test','仙境');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('5222c66b-bc90-453c-a8f7-e62fbf30974e','6516a59c-b56e-43c6-a172-55c4784ceec3','walden',10,'2018-05-22 17:59:20','test',NULL,NULL,'2018-05-22 17:59:20','test','沃尔登');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('60542398-663b-409e-bc46-ec8f22b5a466','7c9f2411-82b5-4187-81ca-395e5709db52','1',1,'2018-05-17 10:53:54','test',NULL,NULL,'2018-05-17 10:53:54','test','启用');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('60fdf51b-b44f-4743-9d87-4aeb4ddd0e1a','3fd39f88-847f-4355-a49f-9ecac439d16d','app',6,'2018-06-11 15:15:33','test',NULL,NULL,'2018-06-11 15:15:33','test','app');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('63d8faa3-884b-42f5-8d0a-bb4d533d43aa','99313fa6-3004-42d5-ab51-5edc8dd25541','安徽',1,'2018-05-22 18:23:13','test',NULL,NULL,'2018-05-22 18:23:13','test','安徽');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('63f374bf-9a18-43d2-a3e6-d3f61a6aa016','99313fa6-3004-42d5-ab51-5edc8dd25541','西藏',28,'2018-05-22 18:26:40','test',NULL,NULL,'2018-05-22 18:26:40','test','西藏');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('645f0c4a-94bb-4fad-9753-66d4a485d5d4','6ae40ad7-5d61-4cec-a93e-77aedda734e8','rompie',3,'2018-05-22 18:47:44','test',NULL,NULL,'2018-05-23 13:39:06','test','环形图');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('6c85d5a2-2180-4225-87cb-1676f6c6abc6','6516a59c-b56e-43c6-a172-55c4784ceec3','infographic',2,'2018-05-22 17:44:30','test',NULL,NULL,'2018-05-22 17:44:37','test','图表');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('6d1bfebf-b567-4dc7-8bf3-7291a2faa671','3fd39f88-847f-4355-a49f-9ecac439d16d','rep',8,'2018-06-11 15:15:59','test',NULL,NULL,'2018-06-11 15:15:59','test','rep');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('7316a7f2-a5c4-4827-a1a4-fae6af97b81c','3fd39f88-847f-4355-a49f-9ecac439d16d','l',2,'2018-06-11 15:14:28','test',NULL,NULL,'2018-06-11 15:14:28','test','l');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('74fb9b66-487c-4775-a577-c0e55768a506','6516a59c-b56e-43c6-a172-55c4784ceec3','purple-passion',9,'2018-05-22 17:58:55','test',NULL,NULL,'2018-05-22 17:58:55','test','紫色激情');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('75249056-09ec-4d6c-9668-372f193a25bc','3fd39f88-847f-4355-a49f-9ecac439d16d','sarra',5,'2018-06-11 15:15:06','test',NULL,NULL,'2018-06-11 15:15:06','test','sarra');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('758cf8cc-9d80-4e1a-b7ff-0c088d77645a','99313fa6-3004-42d5-ab51-5edc8dd25541','江西',17,'2018-05-22 18:25:22','test',NULL,NULL,'2018-05-22 18:25:22','test','江西');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('7c7bd195-2f8f-4280-8255-e446d333a4f9','99313fa6-3004-42d5-ab51-5edc8dd25541','山东',21,'2018-05-22 18:25:58','test',NULL,NULL,'2018-05-22 18:25:58','test','山东');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('7d5c1b1b-b6cb-4f58-8e13-604f3f4eea82','99313fa6-3004-42d5-ab51-5edc8dd25541','四川',26,'2018-05-22 18:26:26','test',NULL,NULL,'2018-05-22 18:26:26','test','四川');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('7f506a1b-0d35-4e0d-b067-aa086a7d9096','6ae40ad7-5d61-4cec-a93e-77aedda734e8','nanpie',8,'2018-05-31 11:57:28','test',NULL,NULL,'2018-05-31 11:57:40','test','南丁格尔');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('85c1a13e-ff2d-40f1-81cc-adfba36708ab','3fd39f88-847f-4355-a49f-9ecac439d16d','sp',6,'2018-06-11 15:15:20','test',NULL,NULL,'2018-06-11 15:15:20','test','sp');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('8a727226-5173-4005-832e-4615f83238ae','6516a59c-b56e-43c6-a172-55c4784ceec3','halloween',10,'2018-05-22 17:58:29','test',NULL,NULL,'2018-05-22 18:43:05','test','万圣节');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('8d317e87-4f95-4934-8fbb-431ef5f9b74e','99313fa6-3004-42d5-ab51-5edc8dd25541','广东',5,'2018-05-22 18:23:41','test',NULL,NULL,'2018-05-22 18:23:41','test','广东');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('90e28afd-9879-4b64-bd1b-96820c7abe95','99313fa6-3004-42d5-ab51-5edc8dd25541','广西',6,'2018-05-22 18:23:49','test',NULL,NULL,'2018-05-22 18:23:49','test','广西');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('91c1aee6-fbb6-4b0b-bc65-12ca46c8d530','6ae40ad7-5d61-4cec-a93e-77aedda734e8','pie',1,'2018-05-21 17:22:33','test',NULL,NULL,'2018-05-23 13:51:59','test','标准饼图');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('945efe4a-30bc-4c0c-8960-7e5fd918f684','99313fa6-3004-42d5-ab51-5edc8dd25541','辽宁',18,'2018-05-22 18:25:28','test',NULL,NULL,'2018-05-22 18:25:28','test','辽宁');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('95752378-6266-4f44-a739-aa0321bb17e1','99313fa6-3004-42d5-ab51-5edc8dd25541','海南',8,'2018-05-22 18:24:04','test',NULL,NULL,'2018-05-22 18:24:04','test','海南');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('9ab1291f-7813-4c6d-8620-dc080208cbd1','99313fa6-3004-42d5-ab51-5edc8dd25541','河南',10,'2018-05-22 18:24:19','test',NULL,NULL,'2018-05-22 18:24:19','test','河南');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('9bd41307-496b-4960-805d-c8600042668a','99313fa6-3004-42d5-ab51-5edc8dd25541','山西',23,'2018-05-22 18:26:05','test',NULL,NULL,'2018-05-22 18:26:05','test','山西');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('a23fc075-5eeb-40e5-8781-0503df48b256','3fd39f88-847f-4355-a49f-9ecac439d16d','sr',11,'2018-06-11 15:17:48','test',NULL,NULL,'2018-06-11 15:17:48','test','sr');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('a3241123-b1e4-424f-aa10-1091a77c3faa','6516a59c-b56e-43c6-a172-55c4784ceec3','macarons',3,'2018-05-22 17:45:36','test',NULL,NULL,'2018-05-22 17:45:36','test','通心粉');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('a5f3fba8-48f0-4fe8-ae43-766b205be422','3fd39f88-847f-4355-a49f-9ecac439d16d','nsp',10,'2018-06-11 15:16:30','test',NULL,NULL,'2018-06-11 15:16:30','test','nsp');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('a7b93f75-b092-42fe-a277-f2a5af426dba','6516a59c-b56e-43c6-a172-55c4784ceec3','dark',1,'2018-05-22 17:43:52','test',NULL,NULL,'2018-05-22 17:43:52','test','黑暗的');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('abaa3b4e-a4a8-4a04-b7a8-f10d171e1040','3fd39f88-847f-4355-a49f-9ecac439d16d','spa',9,'2018-06-11 15:16:13','test',NULL,NULL,'2018-06-11 15:16:13','test','spa');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('aeb14cde-f221-40fd-bb19-22087e7ffbc6','6ba17c34-8d1c-4c22-a37e-d4388f5efcce','senior',3,'2018-05-17 10:56:52','test',NULL,NULL,'2018-05-17 10:56:52','test','高中');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('af8b1bb2-2b43-4637-b29e-4774ad9dae06','99313fa6-3004-42d5-ab51-5edc8dd25541','青海',20,'2018-05-22 18:25:52','test',NULL,NULL,'2018-05-22 18:25:52','test','青海');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('b1010616-7747-48a5-ba90-51ab2f4fdd68','6ae40ad7-5d61-4cec-a93e-77aedda734e8','tbar',9,'2018-05-31 12:05:30','test',NULL,NULL,'2018-05-31 12:05:30','test','条形图');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('b4ca447b-cdbe-4df9-9c7a-f3fbcd34b51a','99313fa6-3004-42d5-ab51-5edc8dd25541','云南',30,'2018-05-22 18:26:54','test',NULL,NULL,'2018-05-22 18:26:54','test','云南');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('b5252753-f31c-44e1-9992-f969ecf2fee9','7c9f2411-82b5-4187-81ca-395e5709db52','0',2,'2018-05-17 10:54:12','test',NULL,NULL,'2018-05-17 10:54:12','test','停用');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('b62edd8e-4a19-40fc-ac30-67d843721b23','6516a59c-b56e-43c6-a172-55c4784ceec3','essos',8,'2018-05-22 17:58:08','test',NULL,NULL,'2018-05-22 17:58:08','test','厄索斯');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('ba29343a-e603-43f8-9c4e-6f87073d5196','99313fa6-3004-42d5-ab51-5edc8dd25541','新疆',29,'2018-05-22 18:26:47','test',NULL,NULL,'2018-05-22 18:26:47','test','新疆');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('c6513d61-ee34-4be5-a5de-54846af6655f','3fd39f88-847f-4355-a49f-9ecac439d16d','arr',3,'2018-06-11 15:14:40','test',NULL,NULL,'2018-06-11 15:14:40','test','arr');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('ca3a9662-8f25-4256-8043-52e48a2f857d','3fd39f88-847f-4355-a49f-9ecac439d16d','str',7,'2018-06-11 15:15:48','test',NULL,NULL,'2018-06-11 15:15:48','test','str');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('cc1cb607-0e90-429e-81dc-aaea80afc056','99313fa6-3004-42d5-ab51-5edc8dd25541','陕西',24,'2018-05-22 18:26:12','test',NULL,NULL,'2018-05-22 18:26:12','test','陕西');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('ce9cb5c6-ffd3-4feb-b98c-b02b5bf63094','99313fa6-3004-42d5-ab51-5edc8dd25541','甘肃',4,'2018-05-22 18:23:34','test',NULL,NULL,'2018-05-22 18:23:34','test','甘肃');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('d3cf7012-140d-435b-88a6-347d0979cc60','99313fa6-3004-42d5-ab51-5edc8dd25541','湖南',14,'2018-05-22 18:25:01','test',NULL,NULL,'2018-05-22 18:25:01','test','湖南');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('d698fccf-8ca2-4846-b73f-2aba6e7f8c2b','53af2bd0-0487-4517-bbb0-ca8dcf3f0a3f','1',1,'2018-05-17 10:46:21','test',NULL,NULL,'2018-05-17 10:51:53','test','男');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('da9cc549-b778-48aa-910b-fbeafecad935','53af2bd0-0487-4517-bbb0-ca8dcf3f0a3f','2',2,'2018-05-17 10:51:30','test',NULL,NULL,'2018-05-17 10:52:03','test','女');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('dd5cdf5a-896f-4ce9-b714-25d554a57241','99313fa6-3004-42d5-ab51-5edc8dd25541','贵州',7,'2018-05-22 18:23:56','test',NULL,NULL,'2018-05-22 18:23:56','test','贵州');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('dd7c7cb2-d3dd-4c11-b66b-beec823713fc','6ae40ad7-5d61-4cec-a93e-77aedda734e8','map',2,'2018-05-22 18:20:52','test',NULL,NULL,'2018-05-23 13:52:05','test','地图');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('df9dfc99-c90a-4811-980f-07fea0ec3123','99313fa6-3004-42d5-ab51-5edc8dd25541','香港',36,'2018-05-22 18:27:51','test',NULL,NULL,'2018-05-22 18:27:51','test','香港');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('e6463d2b-8211-4099-8116-d6cd45a0a2fe','99313fa6-3004-42d5-ab51-5edc8dd25541','澳门',37,'2018-05-22 18:28:11','test',NULL,NULL,'2018-05-22 18:28:11','test','澳门');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('e661aa3b-22ab-42e1-a4d3-a60d843d4dfb','6516a59c-b56e-43c6-a172-55c4784ceec3','shine',4,'2018-05-22 17:46:19','test',NULL,NULL,'2018-05-22 17:46:19','test','闪耀');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('e6b8a0ca-76bd-4a7b-b2e2-dd8a9541fc0f','6ae40ad7-5d61-4cec-a93e-77aedda734e8','line',4,'2018-05-21 17:22:46','test',NULL,NULL,'2018-05-24 15:09:10','test','标准折线图');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('e7b7f3a6-f7eb-4d2a-b395-80935d3ea528','6ba17c34-8d1c-4c22-a37e-d4388f5efcce','primary',4,'2018-05-17 11:01:33','test',NULL,NULL,'2018-05-17 11:01:33','test','小学');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('ea9260e6-fe33-4df6-a56c-05087e24cf76','99313fa6-3004-42d5-ab51-5edc8dd25541','南海诸岛',34,'2018-05-22 18:27:43','test',NULL,NULL,'2018-05-22 18:27:43','test','南海诸岛');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('eb0733a0-94e1-4ca2-a33e-35d2e302a00a','6ba17c34-8d1c-4c22-a37e-d4388f5efcce','college',1,'2018-05-17 10:55:34','test',NULL,NULL,'2018-05-17 10:55:34','test','大学');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('ecb219c1-a2e3-47e2-a127-40790771a3cb','99313fa6-3004-42d5-ab51-5edc8dd25541','河北',9,'2018-05-22 18:24:11','test',NULL,NULL,'2018-05-22 18:24:32','test','河北');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('f8fbcc87-31a9-437e-a538-ae57dbaeefc0','3fd39f88-847f-4355-a49f-9ecac439d16d','n',1,'2018-06-11 15:14:23','test',NULL,NULL,'2018-06-11 15:14:23','test','n');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('fb006f0e-2604-4449-93e1-53092a2fef21','6ba17c34-8d1c-4c22-a37e-d4388f5efcce','training',2,'2018-05-17 10:56:27','test',NULL,NULL,'2018-05-17 10:56:27','test','专科');

/*Table structure for table `sys_dic_name` */

CREATE TABLE `sys_dic_name` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '显示名称',
  `code` varchar(100) DEFAULT NULL COMMENT '调用代码',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `button_type` varchar(20) DEFAULT '0' COMMENT '按钮类型',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_dic_name` */

insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('3fd39f88-847f-4355-a49f-9ecac439d16d','爬虫规则','crawlerR','2018-06-11 15:13:38','test',NULL,NULL,'2018-06-11 15:13:38','test','selected');
insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('53af2bd0-0487-4517-bbb0-ca8dcf3f0a3f','性别','gen','2018-05-16 16:18:29',NULL,NULL,NULL,'2018-05-17 10:34:17','test','radio');
insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('6516a59c-b56e-43c6-a172-55c4784ceec3','图表主题','chartTheme','2018-05-22 17:43:01','test',NULL,NULL,'2018-05-22 18:15:34','test','selected');
insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('6ae40ad7-5d61-4cec-a93e-77aedda734e8','图表类型','chartType','2018-05-21 17:22:09','test',NULL,NULL,'2018-05-22 18:17:17','test','selected');
insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('6ba17c34-8d1c-4c22-a37e-d4388f5efcce','学历','education','2018-05-17 10:55:09','test',NULL,NULL,'2018-05-22 18:45:09','test','radio');
insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('7c9f2411-82b5-4187-81ca-395e5709db52','状态','statue','2018-05-17 10:53:38','test',NULL,NULL,'2018-05-17 10:53:38','test','radio');
insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('99313fa6-3004-42d5-ab51-5edc8dd25541','省份','province','2018-05-22 18:21:35','test',NULL,NULL,'2018-05-22 18:21:35','test','selected');

/*Table structure for table `sys_file_upload_info` */

CREATE TABLE `sys_file_upload_info` (
  `uuid` varchar(255) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT NULL,
  `discription` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_file_upload_info` */

insert  into `sys_file_upload_info`(`uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`name`,`path`,`size`,`type`,`update_time`,`update_user`) values ('b020bbed-4a19-476b-b6af-9c3ebeabd804','2018-03-11 11:33:33','test',NULL,NULL,'spring文档剽窃.xlsx','./uploadfile/spring文档剽窃.xlsx',32167,'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','2018-03-11 11:33:33','system');

/*Table structure for table `sys_menu_info` */

CREATE TABLE `sys_menu_info` (
  `uuid` varchar(50) NOT NULL COMMENT '主键',
  `system_id` varchar(36) DEFAULT '99c74ada3a1411e6bdcb10bf48e1d36a' COMMENT '系统id',
  `parents_id` varchar(36) DEFAULT NULL COMMENT '父id',
  `name` varchar(50) DEFAULT NULL COMMENT '地址名称',
  `icon` varchar(40) DEFAULT NULL COMMENT '显示图标样式',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `uri` varchar(2000) DEFAULT NULL COMMENT '地址资源',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_user` varchar(100) DEFAULT 'system' COMMENT '更新人员',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `type` varchar(50) DEFAULT '菜单' COMMENT '菜单还是方法',
  `icon_skin` varchar(50) DEFAULT NULL COMMENT '显示图标样式',
  `checked` tinyint(1) DEFAULT NULL COMMENT '显示图标样式',
  `home_page` tinyint(1) DEFAULT NULL COMMENT '首页',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu_info` */

insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('0515134492DE20262B4E731F46767A9D',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','单表查询1','fa  fa-database',7,'pages/zhcx/search/more.html','','test',NULL,'system',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('102F0D6B58817A998413C6CA1EEC8CBB',NULL,'0','爬虫管理','fa fa-cloud-download',0,'','爬虫管理','system','2017-07-14 09:44:42','system',NULL,0,'菜单','fa fa-cloud-download',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('10960844B57C7A55C9F72C5CED6FD1B8',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','数据库表种类','fa fa-cubes',2,'pages/dbms/type/index.html','数据库表种类','test',NULL,'system',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('20218BB89AFCD426C8C0C4E9E738E0D2',NULL,'0','数据分析','fa  fa-desktop',2,'/pages/charts/db/index.html','','system','2018-05-30 06:31:28','system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('2146130099979805B1DE119DCB3BA551',NULL,'4c8820df-6447-11e7-a272-0025d3a93601','用户管理','fa  fa-sitemap',5,'pages/softm/userbase/index.html','项目权限',NULL,NULL,'system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('24898AE2D779238DC4AA443CE053C6AC',NULL,'4C2700CEB8CDAF0C2E3C3AAD9C849DD6','短息测试','fa fa-mobile-phone',0,'pages/user/sendmail/phone.html','短息测试',NULL,NULL,'system',NULL,0,'菜单','fa fa-mobile-phone',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('36882FDCB61EF181592FEE79B0462BDA',NULL,'102F0D6B58817A998413C6CA1EEC8CBB','结果配置','fa fa-file-code-o',2,'pages/crawler/result.html','代码管理',NULL,NULL,'system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('39FC2A8FCCCBA07F109261B26A5F5E66',NULL,'4C2700CEB8CDAF0C2E3C3AAD9C849DD6','邮箱测试','fa fa-envelope',1,'pages/user/sendmail/mail.html','邮箱测试',NULL,NULL,'system',NULL,0,'菜单','fa fa-envelope',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4C2700CEB8CDAF0C2E3C3AAD9C849DD6',NULL,'0','系统工具','fa fa-gg',3,'','','system','2017-09-15 12:03:28','system',NULL,0,'菜单','fa fa-gg',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c87efc1-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','0','数据管理','fa  fa-database',1,'pages/error/404.html','#','佘赐雄',NULL,'超级管理员',NULL,0,'菜单','fa  fa-database',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c87fa16-6447-11e7-a272-0025d3a93601',NULL,'102F0D6B58817A998413C6CA1EEC8CBB','Bt管理','glyphicon glyphicon-link',0,'pages/crawler/seed.html','爬虫管理',NULL,NULL,'system',NULL,0,'菜单','glyphicon glyphicon-link',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c87fb94-6447-11e7-a272-0025d3a93601',NULL,'4c8820df-6447-11e7-a272-0025d3a93601','系统配置','fa  fa-navicon',1,'pages/softm/sysmenu/system_function_ztree.html','系统导航功能1',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c87fd09-6447-11e7-a272-0025d3a93601',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','数据库连接','fa  fa-plug',1,'pages/dbms/addr/index.html','动态链接数据库','test',NULL,'超级管理员',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c87fe75-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','2c90838f57c6e02e0157c729a86b000b','数据库备份','glyphicon glyphicon-paste',0,'pages/error/404.html','数据备份、数据还原',NULL,NULL,'超级管理员',NULL,0,'菜单','glyphicon glyphicon-paste',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','数据库表管理','fa  fa-table',3,'pages/dbms/table/index.html','数据库表结构','test',NULL,'超级管理员',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c881c82-6447-11e7-a272-0025d3a93601',NULL,'4c8820df-6447-11e7-a272-0025d3a93601','系统管理','fa fa-leaf',0,'pages/softm/system/index.html','#',NULL,NULL,'system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c8820df-6447-11e7-a272-0025d3a93601',NULL,'0','系统管理','fa fa-cog',4,'pages/error/404.html','',NULL,NULL,'',NULL,0,'菜单','fa fa-cog',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c882255-6447-11e7-a272-0025d3a93601',NULL,'4c8820df-6447-11e7-a272-0025d3a93601','机构管理','fa  fa-coffee',2,'pages/softm/organization/index.html','单位组织',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('6A742EBB2E4B3F070B8947F2FEE753A7',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','数据库维护建议','fa fa-genderless ',5,'/pages/dbms/advince/index.html','','system','2018-06-05 12:55:52','test',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('745E25DFE267FA72EF35FB2A77591F8E',NULL,'4C2700CEB8CDAF0C2E3C3AAD9C849DD6','邮件信息','fa fa-i-cursor ',7,'pages/mailbox/compose.html','','test',NULL,'test',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('9419DC15C84351C8F038B2B0E5302FEC',NULL,'4c8820df-6447-11e7-a272-0025d3a93601','角色与权限管理','fa fa-map-marker',3,'pages/softm/department/index.html','单位部门',NULL,NULL,'system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('97514FC17A39AEE6815708CD5B5F7E3E',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','查询关键字类型配置','fa  fa-database',0,'/pages/dbms/userindex/index.html','','test',NULL,'system',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('9BB8634517FB6EF224AA0FC687714CEF',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','多表查询','fa  fa-database',6,'/templates/zhcx/search/index','','test',NULL,'system',NULL,0,NULL,NULL,NULL,1);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('9F301D22F416F461045596C9786D0C45',NULL,'102F0D6B58817A998413C6CA1EEC8CBB','任务','fa fa-cloud-download',3,'/pages/crawler/task/index.html','','system','2018-05-30 05:59:30','system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('A554CF49625FE55DA199AAA271F957AD',NULL,'4C2700CEB8CDAF0C2E3C3AAD9C849DD6','字典管理','fa  fa-database',2,'pages/softm/dic/index.html','字典管理',NULL,NULL,'system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('AA370A6F6BF7F1370428A9BC6E22A3E9',NULL,'4C2700CEB8CDAF0C2E3C3AAD9C849DD6','邮件信息','fa fa-mouse-pointer ',6,'pages/mailbox/read-mail.html','','system','2018-06-08 16:10:24','test',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('AF7B52BED9BA2A22224EC39FBE0F7C69',NULL,'4C2700CEB8CDAF0C2E3C3AAD9C849DD6','文件导入','fa  fa-database',3,'pages/error/404.html','文件导入','system','2018-02-25 22:09:17','system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('B0820D770366E897120281EBFDEE276E',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','数据库字段管理','fa fa-opencart',4,'/pages/dbms/column/index.html','','test',NULL,'test',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('BE79315D605E839B40288537CE34EF99',NULL,'20218BB89AFCD426C8C0C4E9E738E0D2','ces ','fa  fa-database',0,'pages/error/404.html','字典管理',NULL,NULL,'system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('FD651CAEC3E87281B81C93D05394CB45',NULL,'4C2700CEB8CDAF0C2E3C3AAD9C849DD6','邮件信息','fa fa-genderless ',5,'/pages/mailbox/mailbox.html','','system','2018-06-08 16:04:40','test',NULL,0,NULL,NULL,NULL,0);

/*Table structure for table `sys_organization_info` */

CREATE TABLE `sys_organization_info` (
  `uuid` varchar(32) NOT NULL,
  `organization_code` varchar(50) NOT NULL,
  `organization_name` varchar(32) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_organization_info` */

insert  into `sys_organization_info`(`uuid`,`organization_code`,`organization_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('3CE6C80F33B624C1BB1B016A79083694','admin','admin','2018-02-12 16:22:42',NULL,1,'admin','2018-02-12 16:22:42','system');

/*Table structure for table `sys_plant_chart_dimension` */

CREATE TABLE `sys_plant_chart_dimension` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `chart_type` varchar(255) DEFAULT NULL,
  `count_type` varchar(255) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `dime_order` int(11) DEFAULT NULL,
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `end_num` int(11) DEFAULT NULL,
  `group_uuid` varchar(255) DEFAULT NULL,
  `heigth` varchar(255) DEFAULT NULL,
  `lable_uuid` varchar(255) DEFAULT NULL,
  `lable_uuid2` varchar(255) DEFAULT NULL,
  `lable_uuid3` varchar(255) DEFAULT NULL,
  `lable_uuid4` varchar(255) DEFAULT NULL,
  `start_num` int(11) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `width` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_plant_chart_dimension` */

/*Table structure for table `sys_plant_chart_dimension_data` */

CREATE TABLE `sys_plant_chart_dimension_data` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `cols_desc` varchar(255) DEFAULT NULL,
  `cols_uuid` varchar(255) DEFAULT NULL,
  `conditions` varchar(255) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `dime_uuid` varchar(255) DEFAULT NULL,
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `symbol` varchar(255) DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_plant_chart_dimension_data` */

/*Table structure for table `sys_plant_chart_dimension_group` */

CREATE TABLE `sys_plant_chart_dimension_group` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `group_order` int(11) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_plant_chart_dimension_group` */

/*Table structure for table `sys_roles_info` */

CREATE TABLE `sys_roles_info` (
  `uuid` varchar(32) NOT NULL,
  `department_id` varchar(50) NOT NULL,
  `role_name` varchar(32) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `checked` tinyint(1) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_roles_info` */

insert  into `sys_roles_info`(`uuid`,`department_id`,`role_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`) values ('1A5693C0C9E05009D474899A0CF5F19F','BD174B512EB1A0B87FF6E6CE6B171393','admin','2018-02-12 16:23:06',NULL,1,'admin','2018-02-12 16:23:06','system',NULL);
insert  into `sys_roles_info`(`uuid`,`department_id`,`role_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`) values ('7EC06172A9CCD45EBF0952A463F4CF95','214F6F1048626F0C6792E19BF57C1F07','user','2018-02-23 11:47:25',NULL,1,'user','2018-02-23 11:47:25',NULL,NULL);
insert  into `sys_roles_info`(`uuid`,`department_id`,`role_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`) values ('BEB0D81B918DD968D24D6F95AC15A753','2476DC8ED9FE9483FB956C2EFEB8E39E','test','2018-02-22 10:59:31',NULL,1,'test','2018-02-22 10:59:31','system',NULL);

/*Table structure for table `sys_roles_jurisdiction_info` */

CREATE TABLE `sys_roles_jurisdiction_info` (
  `menu_id` varchar(36) NOT NULL COMMENT '菜单id',
  `role_id` varchar(36) NOT NULL COMMENT '角色id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `checked` int(11) DEFAULT '0' COMMENT '资源功能描述',
  `ichecked` int(11) DEFAULT '0' COMMENT '选中',
  PRIMARY KEY (`menu_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_roles_jurisdiction_info` */

insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('00F3A8901FD0EF0451CF3CFAD4506D01','81092EBC8FEF970EDA6656EBD1508368','2018-03-08 22:13:07',NULL,NULL,NULL,'2018-03-08 22:13:26',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('00F3A8901FD0EF0451CF3CFAD4506D01','BEB0D81B918DD968D24D6F95AC15A753','2018-03-11 11:33:07',NULL,NULL,NULL,'2018-03-11 11:33:09',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('00F3A8901FD0EF0451CF3CFAD4506D01','D5DB0E0726FAD166517BC7A49DD75132','2018-03-08 22:06:58',NULL,NULL,NULL,'2018-03-08 22:06:58','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('0515134492DE20262B4E731F46767A9D','BEB0D81B918DD968D24D6F95AC15A753','2018-05-30 06:24:34',NULL,NULL,NULL,'2018-06-06 09:04:48',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('102F0D6B58817A998413C6CA1EEC8CBB','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:12',NULL,NULL,NULL,'2018-02-12 16:23:12','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('102F0D6B58817A998413C6CA1EEC8CBB','4E83F3C688D1D3E86D02F05F8AC74156','2018-02-23 15:32:25',NULL,NULL,NULL,'2018-02-23 15:32:25','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('102F0D6B58817A998413C6CA1EEC8CBB','54971E77F847C3FC4EE56003A33B35E8','2018-02-12 14:45:27',NULL,NULL,NULL,'2018-02-13 11:12:36',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('102F0D6B58817A998413C6CA1EEC8CBB','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:36',NULL,NULL,NULL,'2018-05-30 06:02:01',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('10960844B57C7A55C9F72C5CED6FD1B8','1A5693C0C9E05009D474899A0CF5F19F','2018-02-23 11:45:12',NULL,NULL,NULL,'2018-02-23 11:45:12','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('10960844B57C7A55C9F72C5CED6FD1B8','4E83F3C688D1D3E86D02F05F8AC74156','2018-03-06 00:02:39',NULL,NULL,NULL,'2018-03-06 00:02:39','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('10960844B57C7A55C9F72C5CED6FD1B8','54971E77F847C3FC4EE56003A33B35E8','2018-02-25 21:56:42',NULL,NULL,NULL,'2018-02-25 21:56:43',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('10960844B57C7A55C9F72C5CED6FD1B8','7EC06172A9CCD45EBF0952A463F4CF95','2018-02-23 11:47:32',NULL,NULL,NULL,'2018-02-23 11:47:32','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('10960844B57C7A55C9F72C5CED6FD1B8','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 11:19:54',NULL,NULL,NULL,'2018-06-06 09:04:48',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('12948BF54A0D7E3481E0043ABBA044DD','BEB0D81B918DD968D24D6F95AC15A753','2018-06-04 15:51:38',NULL,NULL,NULL,'2018-06-06 09:04:48',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('20218BB89AFCD426C8C0C4E9E738E0D2','BEB0D81B918DD968D24D6F95AC15A753','2018-05-30 08:03:15',NULL,NULL,NULL,'2018-05-30 08:03:15','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2146130099979805B1DE119DCB3BA551','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:16',NULL,NULL,NULL,'2018-02-12 16:23:16','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2146130099979805B1DE119DCB3BA551','54971E77F847C3FC4EE56003A33B35E8','2018-02-13 11:12:42',NULL,NULL,NULL,'2018-02-25 21:56:45',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2146130099979805B1DE119DCB3BA551','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:37',NULL,NULL,NULL,'2018-02-22 10:59:37','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2146130099979805B1DE119DCB3BA551','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:26:16',NULL,NULL,NULL,'2018-02-25 21:26:16','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('24898AE2D779238DC4AA443CE053C6AC','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:17',NULL,NULL,NULL,'2018-02-12 16:23:17','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('24898AE2D779238DC4AA443CE053C6AC','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:38',NULL,NULL,NULL,'2018-02-22 10:59:38','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('254DD0B66C981B0100796E1C72C5D677','1A5693C0C9E05009D474899A0CF5F19F','2018-03-05 20:23:04',NULL,NULL,NULL,'2018-03-05 20:23:04','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('254DD0B66C981B0100796E1C72C5D677','81092EBC8FEF970EDA6656EBD1508368','2018-03-06 00:01:21',NULL,NULL,NULL,'2018-03-08 22:13:07',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('254DD0B66C981B0100796E1C72C5D677','BEB0D81B918DD968D24D6F95AC15A753','2018-03-05 20:22:59',NULL,NULL,NULL,'2018-03-11 11:33:07',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('254DD0B66C981B0100796E1C72C5D677','D5DB0E0726FAD166517BC7A49DD75132','2018-03-06 00:01:06',NULL,NULL,NULL,'2018-03-08 22:06:58',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2CFFD9D78EC73AA9E0F034C890434B04','1A5693C0C9E05009D474899A0CF5F19F','2018-02-28 22:45:02',NULL,NULL,NULL,'2018-03-03 18:06:21',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2CFFD9D78EC73AA9E0F034C890434B04','7EC06172A9CCD45EBF0952A463F4CF95','2018-02-25 21:53:15',NULL,NULL,NULL,'2018-02-25 21:53:15','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2CFFD9D78EC73AA9E0F034C890434B04','81092EBC8FEF970EDA6656EBD1508368','2018-02-25 21:32:25',NULL,NULL,NULL,'2018-03-08 22:13:26',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2CFFD9D78EC73AA9E0F034C890434B04','BEB0D81B918DD968D24D6F95AC15A753','2018-02-25 21:31:47',NULL,NULL,NULL,'2018-03-11 11:33:07',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2CFFD9D78EC73AA9E0F034C890434B04','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:32:33',NULL,NULL,NULL,'2018-03-08 22:06:58',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2CFFD9D78EC73AA9E0F034C890434B04','DAE3AA13AB893DE1065F0E93FE28BDED','2018-02-25 21:32:19',NULL,NULL,NULL,'2018-02-25 21:32:19','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('31964624594EC568E6C63571BC28E461','1A5693C0C9E05009D474899A0CF5F19F','2018-02-23 13:30:31',NULL,NULL,NULL,'2018-02-23 13:30:31','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('31964624594EC568E6C63571BC28E461','4E83F3C688D1D3E86D02F05F8AC74156','2018-03-06 00:02:39',NULL,NULL,NULL,'2018-03-06 00:02:39','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('31964624594EC568E6C63571BC28E461','54971E77F847C3FC4EE56003A33B35E8','2018-02-25 21:56:42',NULL,NULL,NULL,'2018-02-25 21:56:43',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('31964624594EC568E6C63571BC28E461','7EC06172A9CCD45EBF0952A463F4CF95','2018-02-23 13:30:40',NULL,NULL,NULL,'2018-02-23 13:30:40','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('31964624594EC568E6C63571BC28E461','BEB0D81B918DD968D24D6F95AC15A753','2018-02-23 13:27:07',NULL,NULL,NULL,'2018-02-23 13:27:07','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('331823F9994901FDC64F9536B56992A8','81092EBC8FEF970EDA6656EBD1508368','2018-03-08 22:07:38',NULL,NULL,NULL,'2018-03-08 22:07:38','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('331823F9994901FDC64F9536B56992A8','D5DB0E0726FAD166517BC7A49DD75132','2018-03-08 22:07:02',NULL,NULL,NULL,'2018-03-08 22:07:02','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('331823F9994901FDC64F9536B56992A8','DAE3AA13AB893DE1065F0E93FE28BDED','2018-03-08 22:07:33',NULL,NULL,NULL,'2018-03-08 22:07:33','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('36882FDCB61EF181592FEE79B0462BDA','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:12',NULL,NULL,NULL,'2018-02-12 16:23:12','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('36882FDCB61EF181592FEE79B0462BDA','4E83F3C688D1D3E86D02F05F8AC74156','2018-02-23 15:32:25',NULL,NULL,NULL,'2018-02-23 15:32:25','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('36882FDCB61EF181592FEE79B0462BDA','54971E77F847C3FC4EE56003A33B35E8','2018-02-12 14:45:27',NULL,NULL,NULL,'2018-02-13 11:12:36',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('36882FDCB61EF181592FEE79B0462BDA','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:36',NULL,NULL,NULL,'2018-02-22 10:59:36','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('39FC2A8FCCCBA07F109261B26A5F5E66','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:17',NULL,NULL,NULL,'2018-02-12 16:23:17','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('39FC2A8FCCCBA07F109261B26A5F5E66','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:38',NULL,NULL,NULL,'2018-02-22 10:59:38','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('3AE20A44CE6F1787FA3E4E95FBB0B6C5','4E83F3C688D1D3E86D02F05F8AC74156','2018-02-25 21:53:29',NULL,NULL,NULL,'2018-03-06 00:02:57',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('3AE20A44CE6F1787FA3E4E95FBB0B6C5','7EC06172A9CCD45EBF0952A463F4CF95','2018-02-25 21:53:08',NULL,NULL,NULL,'2018-02-25 21:53:08','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('3AE20A44CE6F1787FA3E4E95FBB0B6C5','81092EBC8FEF970EDA6656EBD1508368','2018-02-25 21:51:57',NULL,NULL,NULL,'2018-02-25 21:51:57','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('3AE20A44CE6F1787FA3E4E95FBB0B6C5','BEB0D81B918DD968D24D6F95AC15A753','2018-02-28 22:03:13',NULL,NULL,NULL,'2018-03-05 20:23:15',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('3AE20A44CE6F1787FA3E4E95FBB0B6C5','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:51:51',NULL,NULL,NULL,'2018-03-06 00:01:13',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('3AE20A44CE6F1787FA3E4E95FBB0B6C5','DAE3AA13AB893DE1065F0E93FE28BDED','2018-02-25 21:52:05',NULL,NULL,NULL,'2018-03-06 00:01:28',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('47D31B12F4FFBA3A63FA33592B0B1C41','1A5693C0C9E05009D474899A0CF5F19F','2018-02-23 13:30:28',NULL,NULL,NULL,'2018-02-23 13:30:28','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('47D31B12F4FFBA3A63FA33592B0B1C41','7EC06172A9CCD45EBF0952A463F4CF95','2018-02-23 13:30:42',NULL,NULL,NULL,'2018-02-23 13:30:42','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('47D31B12F4FFBA3A63FA33592B0B1C41','81092EBC8FEF970EDA6656EBD1508368','2018-02-25 21:26:39',NULL,NULL,NULL,'2018-02-25 21:26:39','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('47D31B12F4FFBA3A63FA33592B0B1C41','BEB0D81B918DD968D24D6F95AC15A753','2018-02-23 13:30:21',NULL,NULL,NULL,'2018-02-23 13:30:22',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('47D31B12F4FFBA3A63FA33592B0B1C41','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:26:14',NULL,NULL,NULL,'2018-02-25 21:26:14','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4C2700CEB8CDAF0C2E3C3AAD9C849DD6','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:17',NULL,NULL,NULL,'2018-02-12 16:23:17','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4C2700CEB8CDAF0C2E3C3AAD9C849DD6','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:38',NULL,NULL,NULL,'2018-02-22 10:59:38','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87efc1-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:12',NULL,NULL,NULL,'2018-02-23 13:30:31',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87efc1-6447-11e7-a272-0025d3a93601','4E83F3C688D1D3E86D02F05F8AC74156','2018-03-06 00:02:39',NULL,NULL,NULL,'2018-03-06 00:02:59',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87efc1-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8','2018-02-12 16:18:11',NULL,NULL,NULL,'2018-02-25 21:56:43',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87efc1-6447-11e7-a272-0025d3a93601','7EC06172A9CCD45EBF0952A463F4CF95','2018-02-23 11:47:32',NULL,NULL,NULL,'2018-02-23 13:30:40',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87efc1-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:36',NULL,NULL,NULL,'2018-06-06 09:04:48',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87fa16-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:12',NULL,NULL,NULL,'2018-02-12 16:23:12','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87fa16-6447-11e7-a272-0025d3a93601','4E83F3C688D1D3E86D02F05F8AC74156','2018-02-23 15:32:25',NULL,NULL,NULL,'2018-02-23 15:32:25','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87fa16-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8','2018-02-12 14:45:27',NULL,NULL,NULL,'2018-02-13 11:12:36',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87fa16-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:36',NULL,NULL,NULL,'2018-02-22 10:59:36','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87fb94-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:11',NULL,NULL,NULL,'2018-03-05 23:59:44',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87fb94-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8','2018-02-12 14:47:45',NULL,NULL,NULL,'2018-02-25 21:56:41',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87fb94-6447-11e7-a272-0025d3a93601','94CB00CC360FBDE489B42C4FA8E50C60','2018-02-12 15:02:50',NULL,NULL,NULL,'2018-02-25 21:56:17',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87fb94-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:35',NULL,NULL,NULL,'2018-02-22 10:59:35','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87fb94-6447-11e7-a272-0025d3a93601','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:26:11',NULL,NULL,NULL,'2018-03-08 22:12:43',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87fd09-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:12',NULL,NULL,NULL,'2018-02-22 10:25:19',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87fd09-6447-11e7-a272-0025d3a93601','4E83F3C688D1D3E86D02F05F8AC74156','2018-03-06 00:02:39',NULL,NULL,NULL,'2018-03-06 00:02:59',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87fd09-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8','2018-02-12 16:18:11',NULL,NULL,NULL,'2018-02-25 21:56:43',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87fd09-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:36',NULL,NULL,NULL,'2018-06-06 09:04:48',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:12',NULL,NULL,NULL,'2018-02-12 16:23:12','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601','4E83F3C688D1D3E86D02F05F8AC74156','2018-03-06 00:02:39',NULL,NULL,NULL,'2018-03-06 00:02:39','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8','2018-02-12 16:18:11',NULL,NULL,NULL,'2018-02-25 21:56:43',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601','7EC06172A9CCD45EBF0952A463F4CF95','2018-02-23 11:47:33',NULL,NULL,NULL,'2018-02-23 11:47:33','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:36',NULL,NULL,NULL,'2018-06-06 09:04:48',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881551-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:15',NULL,NULL,NULL,'2018-02-12 16:23:15','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881551-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8','2018-02-12 16:18:16',NULL,NULL,NULL,'2018-02-25 21:56:44',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881551-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:37',NULL,NULL,NULL,'2018-02-22 10:59:37','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881551-6447-11e7-a272-0025d3a93601','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:26:15',NULL,NULL,NULL,'2018-03-08 22:14:20',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881c82-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:11',NULL,NULL,NULL,'2018-02-22 11:00:35',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881c82-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8','2018-02-12 14:47:45',NULL,NULL,NULL,'2018-02-25 21:56:41',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881c82-6447-11e7-a272-0025d3a93601','94CB00CC360FBDE489B42C4FA8E50C60','2018-02-12 15:02:50',NULL,NULL,NULL,'2018-02-25 21:56:17',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881c82-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:35',NULL,NULL,NULL,'2018-02-22 10:59:35','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881c82-6447-11e7-a272-0025d3a93601','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:26:11',NULL,NULL,NULL,'2018-03-06 00:01:49',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c8820df-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:11',NULL,NULL,NULL,'2018-03-05 23:59:44',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c8820df-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8','2018-02-12 14:47:45',NULL,NULL,NULL,'2018-02-25 21:56:41',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c8820df-6447-11e7-a272-0025d3a93601','94CB00CC360FBDE489B42C4FA8E50C60','2018-02-12 15:02:50',NULL,NULL,NULL,'2018-02-25 21:56:17',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c8820df-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:35',NULL,NULL,NULL,'2018-02-22 10:59:35','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c8820df-6447-11e7-a272-0025d3a93601','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:26:11',NULL,NULL,NULL,'2018-03-08 22:12:43',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c882255-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:15',NULL,NULL,NULL,'2018-02-12 16:23:15','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c882255-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8','2018-02-12 16:18:16',NULL,NULL,NULL,'2018-02-25 21:56:44',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c882255-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:37',NULL,NULL,NULL,'2018-02-22 10:59:37','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c882255-6447-11e7-a272-0025d3a93601','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:26:15',NULL,NULL,NULL,'2018-02-25 21:26:15','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('50991CCE485F09DAD65A53852D4D8252','81092EBC8FEF970EDA6656EBD1508368','2018-03-08 22:07:38',NULL,NULL,NULL,'2018-03-08 22:07:38','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('50991CCE485F09DAD65A53852D4D8252','D5DB0E0726FAD166517BC7A49DD75132','2018-03-08 22:07:02',NULL,NULL,NULL,'2018-03-08 22:07:02','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('50991CCE485F09DAD65A53852D4D8252','DAE3AA13AB893DE1065F0E93FE28BDED','2018-03-08 22:07:33',NULL,NULL,NULL,'2018-03-08 22:07:33','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('65EC730F7B36A4D057F32B81902D1F82','1A5693C0C9E05009D474899A0CF5F19F','2018-03-05 20:23:04',NULL,NULL,NULL,'2018-03-05 20:23:04','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('65EC730F7B36A4D057F32B81902D1F82','81092EBC8FEF970EDA6656EBD1508368','2018-03-06 00:01:21',NULL,NULL,NULL,'2018-03-08 22:13:07',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('65EC730F7B36A4D057F32B81902D1F82','BEB0D81B918DD968D24D6F95AC15A753','2018-03-05 20:22:59',NULL,NULL,NULL,'2018-03-11 11:33:15',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('65EC730F7B36A4D057F32B81902D1F82','D5DB0E0726FAD166517BC7A49DD75132','2018-03-06 00:01:06',NULL,NULL,NULL,'2018-03-08 22:06:58',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('6615A271F099D2FED98ED12E3E1CAAB9','4E83F3C688D1D3E86D02F05F8AC74156','2018-03-06 00:02:56',NULL,NULL,NULL,'2018-03-06 00:02:57',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('6615A271F099D2FED98ED12E3E1CAAB9','BEB0D81B918DD968D24D6F95AC15A753','2018-03-05 20:23:15',NULL,NULL,NULL,'2018-03-05 20:23:15',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('6615A271F099D2FED98ED12E3E1CAAB9','D5DB0E0726FAD166517BC7A49DD75132','2018-03-06 00:01:03',NULL,NULL,NULL,'2018-03-06 00:01:13',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('6615A271F099D2FED98ED12E3E1CAAB9','DAE3AA13AB893DE1065F0E93FE28BDED','2018-03-06 00:01:28',NULL,NULL,NULL,'2018-03-06 00:01:28',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('6A742EBB2E4B3F070B8947F2FEE753A7','BEB0D81B918DD968D24D6F95AC15A753','2018-06-05 13:00:41',NULL,NULL,NULL,'2018-06-07 17:32:27',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('6FB525B0FE6ED405436CEF9B8F0697C5','BEB0D81B918DD968D24D6F95AC15A753','2018-05-30 06:27:21',NULL,NULL,NULL,'2018-06-05 13:00:41',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('745E25DFE267FA72EF35FB2A77591F8E','BEB0D81B918DD968D24D6F95AC15A753','2018-06-08 16:10:58',NULL,NULL,NULL,'2018-06-08 16:10:58','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('91257EC58A61079D778D4DD08FB7652B','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:12',NULL,NULL,NULL,'2018-02-12 16:23:12','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('91257EC58A61079D778D4DD08FB7652B','4E83F3C688D1D3E86D02F05F8AC74156','2018-03-06 00:02:39',NULL,NULL,NULL,'2018-03-06 00:02:39','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('91257EC58A61079D778D4DD08FB7652B','54971E77F847C3FC4EE56003A33B35E8','2018-02-12 16:18:11',NULL,NULL,NULL,'2018-02-25 21:56:43',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('91257EC58A61079D778D4DD08FB7652B','7EC06172A9CCD45EBF0952A463F4CF95','2018-02-23 11:47:33',NULL,NULL,NULL,'2018-02-23 11:47:33','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('91257EC58A61079D778D4DD08FB7652B','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:36',NULL,NULL,NULL,'2018-02-22 10:59:36','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('928759095B55540F52242E3E54DCE432','1A5693C0C9E05009D474899A0CF5F19F','2018-02-23 13:30:28',NULL,NULL,NULL,'2018-02-23 13:30:28','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('928759095B55540F52242E3E54DCE432','7EC06172A9CCD45EBF0952A463F4CF95','2018-02-23 11:47:34',NULL,NULL,NULL,'2018-02-23 13:30:42',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('928759095B55540F52242E3E54DCE432','81092EBC8FEF970EDA6656EBD1508368','2018-02-25 21:26:39',NULL,NULL,NULL,'2018-02-25 21:26:39','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('928759095B55540F52242E3E54DCE432','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 16:58:44',NULL,NULL,NULL,'2018-02-23 13:30:22',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('928759095B55540F52242E3E54DCE432','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:26:14',NULL,NULL,NULL,'2018-02-25 21:26:14','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('9419DC15C84351C8F038B2B0E5302FEC','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:15',NULL,NULL,NULL,'2018-02-12 16:23:15','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('9419DC15C84351C8F038B2B0E5302FEC','54971E77F847C3FC4EE56003A33B35E8','2018-02-12 16:18:16',NULL,NULL,NULL,'2018-02-25 21:56:44',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('9419DC15C84351C8F038B2B0E5302FEC','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:37',NULL,NULL,NULL,'2018-02-22 10:59:37','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('9419DC15C84351C8F038B2B0E5302FEC','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:26:15',NULL,NULL,NULL,'2018-02-25 21:26:15','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('97514FC17A39AEE6815708CD5B5F7E3E','BEB0D81B918DD968D24D6F95AC15A753','2018-05-30 06:27:20',NULL,NULL,NULL,'2018-06-06 09:04:48',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('9BB8634517FB6EF224AA0FC687714CEF','BEB0D81B918DD968D24D6F95AC15A753','2018-05-30 06:02:00',NULL,NULL,NULL,'2018-06-06 09:04:48',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('9CDA4C7124F3F0BF4FDB9A3500777C5B','1A5693C0C9E05009D474899A0CF5F19F','2018-02-28 22:45:02',NULL,NULL,NULL,'2018-03-03 18:06:21',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('9CDA4C7124F3F0BF4FDB9A3500777C5B','7EC06172A9CCD45EBF0952A463F4CF95','2018-02-25 21:53:15',NULL,NULL,NULL,'2018-02-25 21:53:15','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('9CDA4C7124F3F0BF4FDB9A3500777C5B','81092EBC8FEF970EDA6656EBD1508368','2018-02-25 21:32:25',NULL,NULL,NULL,'2018-03-08 22:13:30',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('9CDA4C7124F3F0BF4FDB9A3500777C5B','BEB0D81B918DD968D24D6F95AC15A753','2018-02-25 21:31:47',NULL,NULL,NULL,'2018-03-11 11:33:17',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('9CDA4C7124F3F0BF4FDB9A3500777C5B','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:32:33',NULL,NULL,NULL,'2018-03-08 22:06:59',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('9CDA4C7124F3F0BF4FDB9A3500777C5B','DAE3AA13AB893DE1065F0E93FE28BDED','2018-02-25 21:32:19',NULL,NULL,NULL,'2018-02-25 21:32:19','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('9F301D22F416F461045596C9786D0C45','BEB0D81B918DD968D24D6F95AC15A753','2018-05-30 06:02:01',NULL,NULL,NULL,'2018-05-30 06:02:01','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('A3621F23A4BC0580D08EEF948C0FD30B','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:16',NULL,NULL,NULL,'2018-02-12 16:23:16','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('A3621F23A4BC0580D08EEF948C0FD30B','54971E77F847C3FC4EE56003A33B35E8','2018-02-13 11:12:42',NULL,NULL,NULL,'2018-02-25 21:56:45',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('A3621F23A4BC0580D08EEF948C0FD30B','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:37',NULL,NULL,NULL,'2018-02-22 10:59:37','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('A3621F23A4BC0580D08EEF948C0FD30B','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:26:16',NULL,NULL,NULL,'2018-03-08 22:14:21',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('A554CF49625FE55DA199AAA271F957AD','BEB0D81B918DD968D24D6F95AC15A753','2018-02-28 22:03:15',NULL,NULL,NULL,'2018-02-28 22:03:15','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('AA370A6F6BF7F1370428A9BC6E22A3E9','BEB0D81B918DD968D24D6F95AC15A753','2018-06-08 16:10:57',NULL,NULL,NULL,'2018-06-08 16:10:57','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('AD7CDFCEA44AF61889B12ECEC006BAE2','1A5693C0C9E05009D474899A0CF5F19F','2018-03-05 20:23:04',NULL,NULL,NULL,'2018-03-05 20:23:04','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('AD7CDFCEA44AF61889B12ECEC006BAE2','81092EBC8FEF970EDA6656EBD1508368','2018-03-06 00:01:21',NULL,NULL,NULL,'2018-03-06 00:01:21','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('AD7CDFCEA44AF61889B12ECEC006BAE2','BEB0D81B918DD968D24D6F95AC15A753','2018-03-05 20:22:59',NULL,NULL,NULL,'2018-03-05 20:22:59','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('AD7CDFCEA44AF61889B12ECEC006BAE2','D5DB0E0726FAD166517BC7A49DD75132','2018-03-06 00:01:06',NULL,NULL,NULL,'2018-03-06 00:01:06','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('ADF008B4C0F1111E4004CA0250AEA4EC','81092EBC8FEF970EDA6656EBD1508368','2018-03-08 22:07:38',NULL,NULL,NULL,'2018-03-08 22:07:38','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('ADF008B4C0F1111E4004CA0250AEA4EC','D5DB0E0726FAD166517BC7A49DD75132','2018-03-08 22:07:02',NULL,NULL,NULL,'2018-03-08 22:07:02','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('ADF008B4C0F1111E4004CA0250AEA4EC','DAE3AA13AB893DE1065F0E93FE28BDED','2018-03-08 22:07:33',NULL,NULL,NULL,'2018-03-08 22:07:33','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('AF7B52BED9BA2A22224EC39FBE0F7C69','BEB0D81B918DD968D24D6F95AC15A753','2018-02-28 22:03:15',NULL,NULL,NULL,'2018-02-28 22:03:15','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('B0820D770366E897120281EBFDEE276E','BEB0D81B918DD968D24D6F95AC15A753','2018-06-04 16:37:26',NULL,NULL,NULL,'2018-06-06 09:04:48',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('B3122FB92A5F556AA2D61BBA3F2245A6','1A5693C0C9E05009D474899A0CF5F19F','2018-03-05 20:23:04',NULL,NULL,NULL,'2018-03-05 20:23:04','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('B3122FB92A5F556AA2D61BBA3F2245A6','81092EBC8FEF970EDA6656EBD1508368','2018-03-06 00:01:21',NULL,NULL,NULL,'2018-03-08 22:13:06',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('B3122FB92A5F556AA2D61BBA3F2245A6','BEB0D81B918DD968D24D6F95AC15A753','2018-03-05 20:22:59',NULL,NULL,NULL,'2018-03-11 11:33:17',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('B3122FB92A5F556AA2D61BBA3F2245A6','D5DB0E0726FAD166517BC7A49DD75132','2018-03-06 00:01:06',NULL,NULL,NULL,'2018-03-08 22:06:59',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('B82BC1E7CD6B64D883EEC1711B5BF9F6','1A5693C0C9E05009D474899A0CF5F19F','2018-02-28 22:45:02',NULL,NULL,NULL,'2018-03-03 18:06:21',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('B82BC1E7CD6B64D883EEC1711B5BF9F6','7EC06172A9CCD45EBF0952A463F4CF95','2018-02-25 21:53:15',NULL,NULL,NULL,'2018-02-25 21:53:15','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('B82BC1E7CD6B64D883EEC1711B5BF9F6','81092EBC8FEF970EDA6656EBD1508368','2018-02-25 21:32:25',NULL,NULL,NULL,'2018-03-06 00:01:20',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('B82BC1E7CD6B64D883EEC1711B5BF9F6','BEB0D81B918DD968D24D6F95AC15A753','2018-02-25 21:28:07',NULL,NULL,NULL,'2018-02-25 21:31:49',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('B82BC1E7CD6B64D883EEC1711B5BF9F6','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:32:33',NULL,NULL,NULL,'2018-03-06 00:04:03',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('B82BC1E7CD6B64D883EEC1711B5BF9F6','DAE3AA13AB893DE1065F0E93FE28BDED','2018-02-25 21:32:19',NULL,NULL,NULL,'2018-02-25 21:32:19','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('BE79315D605E839B40288537CE34EF99','BEB0D81B918DD968D24D6F95AC15A753','2018-02-28 22:03:15',NULL,NULL,NULL,'2018-05-30 08:03:15',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('C31A639726053C0691BE789AC2E06552','BEB0D81B918DD968D24D6F95AC15A753','2018-06-06 09:04:47',NULL,NULL,NULL,'2018-06-06 09:04:48',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('E34F2EDB810C28DE8812F61F136BC3EF','81092EBC8FEF970EDA6656EBD1508368','2018-03-08 22:07:38',NULL,NULL,NULL,'2018-03-08 22:07:38','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('E34F2EDB810C28DE8812F61F136BC3EF','D5DB0E0726FAD166517BC7A49DD75132','2018-03-08 22:07:02',NULL,NULL,NULL,'2018-03-08 22:07:02','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('E34F2EDB810C28DE8812F61F136BC3EF','DAE3AA13AB893DE1065F0E93FE28BDED','2018-03-08 22:07:33',NULL,NULL,NULL,'2018-03-08 22:07:33','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('E79EBF5311CEF25AA15F08F773C7799F','1A5693C0C9E05009D474899A0CF5F19F','2018-02-28 22:45:02',NULL,NULL,NULL,'2018-03-03 18:06:21',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('E79EBF5311CEF25AA15F08F773C7799F','7EC06172A9CCD45EBF0952A463F4CF95','2018-02-25 21:53:15',NULL,NULL,NULL,'2018-02-25 21:53:15','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('E79EBF5311CEF25AA15F08F773C7799F','81092EBC8FEF970EDA6656EBD1508368','2018-02-25 21:32:25',NULL,NULL,NULL,'2018-03-08 22:13:28',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('E79EBF5311CEF25AA15F08F773C7799F','BEB0D81B918DD968D24D6F95AC15A753','2018-02-25 21:31:47',NULL,NULL,NULL,'2018-03-11 11:33:14',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('E79EBF5311CEF25AA15F08F773C7799F','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:32:33',NULL,NULL,NULL,'2018-03-08 22:06:58',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('E79EBF5311CEF25AA15F08F773C7799F','DAE3AA13AB893DE1065F0E93FE28BDED','2018-02-25 21:32:19',NULL,NULL,NULL,'2018-02-25 21:32:19','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('E88B1980A745986971B6F9ECDB886804','81092EBC8FEF970EDA6656EBD1508368','2018-03-08 22:13:06',NULL,NULL,NULL,'2018-03-08 22:13:30',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('E88B1980A745986971B6F9ECDB886804','BEB0D81B918DD968D24D6F95AC15A753','2018-03-11 11:33:17',NULL,NULL,NULL,'2018-03-11 11:33:17','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('E88B1980A745986971B6F9ECDB886804','D5DB0E0726FAD166517BC7A49DD75132','2018-03-08 22:06:59',NULL,NULL,NULL,'2018-03-08 22:06:59','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('EEFC380A3B3D4B51695A0C6C7F6A9D96','81092EBC8FEF970EDA6656EBD1508368','2018-03-08 22:13:07',NULL,NULL,NULL,'2018-03-08 22:13:28',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('EEFC380A3B3D4B51695A0C6C7F6A9D96','BEB0D81B918DD968D24D6F95AC15A753','2018-03-11 11:33:15',NULL,NULL,NULL,'2018-03-11 11:33:15','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('EEFC380A3B3D4B51695A0C6C7F6A9D96','D5DB0E0726FAD166517BC7A49DD75132','2018-03-08 22:06:58',NULL,NULL,NULL,'2018-03-08 22:06:58','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('EFF56658C76EAB6EE4E62419E9FB47C6','1A5693C0C9E05009D474899A0CF5F19F','2018-02-23 13:30:28',NULL,NULL,NULL,'2018-02-23 13:30:28','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('EFF56658C76EAB6EE4E62419E9FB47C6','7EC06172A9CCD45EBF0952A463F4CF95','2018-02-23 13:30:42',NULL,NULL,NULL,'2018-02-23 13:30:42','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('EFF56658C76EAB6EE4E62419E9FB47C6','81092EBC8FEF970EDA6656EBD1508368','2018-02-25 21:26:39',NULL,NULL,NULL,'2018-03-08 22:13:07',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('EFF56658C76EAB6EE4E62419E9FB47C6','BEB0D81B918DD968D24D6F95AC15A753','2018-02-23 13:30:21',NULL,NULL,NULL,'2018-03-11 11:33:09',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('EFF56658C76EAB6EE4E62419E9FB47C6','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:26:14',NULL,NULL,NULL,'2018-03-08 22:06:58',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('FD651CAEC3E87281B81C93D05394CB45','BEB0D81B918DD968D24D6F95AC15A753','2018-06-08 16:04:49',NULL,NULL,NULL,'2018-06-08 16:04:49','system',1,0);

/*Table structure for table `sys_seed_result_ruler_info` */

CREATE TABLE `sys_seed_result_ruler_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `cols_name` varchar(30) DEFAULT NULL COMMENT '表字段名',
  `cols_uuid` varchar(36) DEFAULT NULL COMMENT '表字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `ruler_colum_name` varchar(30) DEFAULT NULL COMMENT '规则字段名',
  `ruler_colum_uuid` varchar(36) DEFAULT NULL COMMENT '规则字段id',
  `ruler_uuid` varchar(36) DEFAULT NULL COMMENT '规则id',
  `table_uuid` varchar(36) DEFAULT NULL COMMENT '表id',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_seed_result_ruler_info` */

insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('0895C3E27BAFBA243151B501E39CA7A0','简介','392BDB33918EAD445DC035392636F52D','2018-01-09 23:32:06',NULL,NULL,NULL,'简介','402880905da16202015da17f0c11000d','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('2AB71F75098D75B3623E8C18233B4FD7','标题','DBC5B0C9008B9AFAE9054D35AA404D9A','2018-01-09 23:25:28',NULL,NULL,NULL,'标题','CC0F19D1035997D5F7255B2CB7D69820','CB4C9272DF1E25758BEE419B4887995C','C06A7B0878844341823CDBF55F03885C','2018-01-09 23:25:28','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('4540457994919CEA112734F7AE005CDB','图片','6811519D0BECB66141985C21718DE32A','2018-01-09 23:26:12',NULL,NULL,NULL,'图片','4CB980202E88B519FA5332EEAE20DEA8','10E500DC038ED1258F35F4865D378E93','CF1C0EABDE01F3F762DE286FC64D412A','2018-01-09 23:26:12','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('7490130216101202F9EC9D0768272C01','链接','B1BCC8EEE9404A15B8D27A6C3D5F5685','2018-01-09 23:25:28',NULL,NULL,NULL,'链接','439D99D940E8062B3E3CA8B482FE160B','CB4C9272DF1E25758BEE419B4887995C','C06A7B0878844341823CDBF55F03885C','2018-01-09 23:25:28','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('807237947541F8B6C760E8B22AD0DB9F','连接','AEA87950A0B9BA85FBE90473122EE86D','2018-01-09 23:32:06',NULL,NULL,NULL,'连接','402880905da16202015da1796e200008','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('81C180C96EF729A8C2818BB503D313F4','评分','5D30C232E695539778C32BA5E8BB44AE','2018-01-09 23:26:12',NULL,NULL,NULL,'评分','1DF9BFACB271FD8520A13425C4C8CB6C','10E500DC038ED1258F35F4865D378E93','CF1C0EABDE01F3F762DE286FC64D412A','2018-01-09 23:26:12','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('86236B862D93966F6FF3223CAF839BD5','阅读量','EFA1D46AB1F80B96FE81A817A0B9AC89','2018-01-09 23:32:06',NULL,NULL,NULL,'阅读量','402880905da16202015da17f888a000e','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('882CF324695A48457187E35CBCF865A0','作者','A40A887F95FB94407A7C6485D046D1C0','2018-01-09 23:32:06',NULL,NULL,NULL,'作者','402880905da16202015da17c2ad6000a','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('8A7E9AA9E190CCEC97873F89FB60B77F','分类1','7F5EBA36428CFE9505B49FB74E358456','2018-01-09 23:32:06',NULL,NULL,NULL,'分类1','402880905da16202015da17e1cca000b','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('B245630059BF80D203D51D9627C02280','书名','EB8F227E6322E013E91D4BCD5B6DDB2B','2018-01-09 23:26:12',NULL,NULL,NULL,'书名','EF04BA346AA6FF5761F69305592210C3','10E500DC038ED1258F35F4865D378E93','CF1C0EABDE01F3F762DE286FC64D412A','2018-01-09 23:26:12','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('C2E9B05F818B8EFE4F3B34569CE607EF','分类2','78E450B093B3F9AF42D0AAAA61682AA1','2018-01-09 23:32:06',NULL,NULL,NULL,'分类2','402880905da16202015da17e83fe000c','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('D7C8E774797C283E6C35775EEDF509B0','书名','B3F9AE1BAD7F86B1D1BD60276820693B','2018-01-09 23:32:06',NULL,NULL,NULL,'书名','402880905da16202015da178dd370007','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('E6408D454A03DCC483A193BAD05319DD','图片','A08F2E055BBF6690EFDA0B14CFD207FB','2018-01-09 23:32:06',NULL,NULL,NULL,'图片','402880905da16202015da17a6eb10009','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');

/*Table structure for table `sys_seed_ruler_colum_info` */

CREATE TABLE `sys_seed_ruler_colum_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `app1` varchar(30) DEFAULT NULL COMMENT 'apand 方式 字符',
  `app2` varchar(30) DEFAULT NULL COMMENT 'apand 字符',
  `arr` int(11) DEFAULT NULL COMMENT '取一个 整型',
  `colum_name` varchar(30) DEFAULT NULL COMMENT '列名称',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `ruler` varchar(300) DEFAULT NULL COMMENT '取内容规则',
  `ruler_uuid` varchar(32) DEFAULT NULL COMMENT '规则id',
  `spl1` varchar(30) DEFAULT NULL COMMENT 'split 1字符串',
  `spl2` int(11) DEFAULT NULL COMMENT '2整型脚标',
  `type` varchar(30) DEFAULT NULL COMMENT '处理方式',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_seed_ruler_colum_info` */

insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`) values ('1DF9BFACB271FD8520A13425C4C8CB6C','','',0,'评分','2017-08-30 07:46:29',NULL,0,'','//div[@class=\"comment-wrap\"]//h4[@id=\"j_bookScore\"]//text()','10E500DC038ED1258F35F4865D378E93','',0,'l','2017-08-30 08:38:11',NULL);
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`) values ('402880905da16202015da178dd370007','','',0,'书名','2017-08-02 13:43:59',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//h4//a//text()','402880905da16202015da17540170006','',0,'l','2017-08-02 13:44:41',NULL);
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`) values ('402880905da16202015da1796e200008','','',0,'连接','2017-08-02 13:44:36',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//h4//a//@href','402880905da16202015da17540170006','',0,'l','2017-08-02 13:44:36','system');
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`) values ('402880905da16202015da17a6eb10009','','',0,'图片','2017-08-02 13:45:41',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-img-box\']//a//img//@src','402880905da16202015da17540170006','',0,'l','2017-08-02 13:45:41','system');
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`) values ('402880905da16202015da17c2ad6000a','','',0,'作者','2017-08-02 13:47:35',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//p[@class=\'author\']//a[@class=\'name\']//text()','402880905da16202015da17540170006','',0,'l','2017-08-02 13:47:35','system');
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`) values ('402880905da16202015da17e1cca000b','','',0,'分类1','2017-08-02 13:49:42',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//p[@class=\'author\']//a[@data-eid=\'qd_B60\']//text()','402880905da16202015da17540170006','',0,'l','2017-08-02 13:49:42','system');
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`) values ('402880905da16202015da17e83fe000c','','',0,'分类2','2017-08-02 13:50:09',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//p[@class=\'author\']//a[@class=\'go-sub-type\']//text()','402880905da16202015da17540170006','',0,'l','2017-08-02 13:50:09','system');
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`) values ('402880905da16202015da17f0c11000d','','',0,'简介','2017-08-02 13:50:44',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//p[@class=\'intro\']//text()','402880905da16202015da17540170006','',0,'l','2017-08-02 13:50:44','system');
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`) values ('402880905da16202015da17f888a000e','','',0,'阅读量','2017-08-02 13:51:16',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//p[@class=\'update\']//span//text()','402880905da16202015da17540170006','',0,'l','2017-08-02 13:51:16','system');
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`) values ('439D99D940E8062B3E3CA8B482FE160B','','',0,'链接','2017-08-30 21:51:56',NULL,0,'','//div[@class=\"list\"]//dl//dt//a//@href','CB4C9272DF1E25758BEE419B4887995C','',0,'l','2017-08-30 21:52:23',NULL);
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`) values ('4CB980202E88B519FA5332EEAE20DEA8','','',0,'图片','2017-08-30 07:44:00',NULL,0,'','//div[@class=\"book-information cf\"]//div[@class=\'book-img\']//img//@src','10E500DC038ED1258F35F4865D378E93','',0,'l','2017-08-30 21:37:53',NULL);
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`) values ('CC0F19D1035997D5F7255B2CB7D69820','','',0,'标题','2017-08-30 21:51:42',NULL,0,'','//div[@class=\"list\"]//dl//dt//a//text()','CB4C9272DF1E25758BEE419B4887995C','',0,'l','2017-08-30 21:51:42','system');
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`) values ('EF04BA346AA6FF5761F69305592210C3','','',0,'书名','2017-08-30 20:16:09',NULL,0,'','//div[@class=\"book-info \"]//h1//em//text()','10E500DC038ED1258F35F4865D378E93','',0,'l','2017-08-30 20:16:09','system');

/*Table structure for table `sys_seed_ruler_info` */

CREATE TABLE `sys_seed_ruler_info` (
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
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_seed_ruler_info` */

insert  into `sys_seed_ruler_info`(`uuid`,`charset`,`content_info`,`create_time`,`create_user`,`delete_flag`,`discription`,`name`,`request_type`,`seed_uuid`,`sub_uri`,`type`,`update_time`,`update_user`) values ('10E500DC038ED1258F35F4865D378E93','utf-8',NULL,'2017-08-30 07:34:38',NULL,0,'','书详细','rg','402880905da16202015da170dce20004','http://book.qidian.com/info','detial','2017-08-30 20:25:27',NULL);
insert  into `sys_seed_ruler_info`(`uuid`,`charset`,`content_info`,`create_time`,`create_user`,`delete_flag`,`discription`,`name`,`request_type`,`seed_uuid`,`sub_uri`,`type`,`update_time`,`update_user`) values ('402880905da16202015da17540170006','UTF-8',NULL,'2017-08-02 13:40:02',NULL,0,'','全部作品_起点中文网','rg','402880905da16202015da170dce20004','http://a.qidian.com','list','2017-08-16 17:51:15',NULL);
insert  into `sys_seed_ruler_info`(`uuid`,`charset`,`content_info`,`create_time`,`create_user`,`delete_flag`,`discription`,`name`,`request_type`,`seed_uuid`,`sub_uri`,`type`,`update_time`,`update_user`) values ('CB4C9272DF1E25758BEE419B4887995C','utf-8',NULL,'2017-08-30 21:49:16',NULL,0,'','百度百科检索','se','5C131F8BBB917576CC37760FCABAB6E6','https://zhidao.baidu.com/search?','list','2017-08-30 22:33:20',NULL);

/*Table structure for table `sys_seed_url_info` */

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
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `request_proxy` int(11) DEFAULT NULL COMMENT '请求时间',
  `charset` varchar(10) DEFAULT NULL COMMENT '字符集',
  `request_type` varchar(10) DEFAULT NULL COMMENT '请求方式',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_seed_url_info` */

insert  into `sys_seed_url_info`(`uuid`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`update_time`,`update_user`,`request_proxy`,`charset`,`request_type`) values ('402880905da16202015da170dce20004',0,'','2017-08-02 13:35:14','system',NULL,'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=397776456,2572651939&fm=58','起点中文网','小说网','qidian.com','2017-12-28 19:02:51',NULL,0,NULL,NULL);
insert  into `sys_seed_url_info`(`uuid`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`update_time`,`update_user`,`request_proxy`,`charset`,`request_type`) values ('5C131F8BBB917576CC37760FCABAB6E6',0,'','2017-08-30 21:47:01','system',NULL,'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1281270396,2268607412&fm=58','百度知道','百科','https://zhidao.baidu.com','2018-01-09 21:40:44',NULL,NULL,NULL,NULL);

/*Table structure for table `sys_system_info` */

CREATE TABLE `sys_system_info` (
  `uuid` varchar(32) NOT NULL,
  `discription` varchar(1024) NOT NULL,
  `system_name` varchar(100) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_system_info` */

/*Table structure for table `sys_user_base_info` */

CREATE TABLE `sys_user_base_info` (
  `uuid` varchar(32) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `password` varchar(60) NOT NULL,
  `persion_name` varchar(50) NOT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `user_name` varchar(50) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `head_pic` varchar(1024) DEFAULT NULL COMMENT '头像',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(18) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `UK_filjsx4kbabuqh2fkxgd72dx5` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_base_info` */

insert  into `sys_user_base_info`(`uuid`,`age`,`password`,`persion_name`,`sex`,`user_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`head_pic`,`email`,`phone`) values ('0ff36f5ed8f34bd49d1d41b71c49f256',NULL,'$2a$10$Sf68/HWJoOK2sXwKlRbRgeKJz69BvUKqsDA4VROkJ.p.Muedzp0Ai','user','男','user','2018-02-23 11:48:35',NULL,NULL,'user','2018-06-04 13:36:10','system',NULL,'111#@11','');
insert  into `sys_user_base_info`(`uuid`,`age`,`password`,`persion_name`,`sex`,`user_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`head_pic`,`email`,`phone`) values ('9988e4e2469e428ab117a1804c5a7b96',NULL,'$2a$10$Mofzaw4JvuUe2gl/GITTX.nJxKxEqax.wHMOkSH4L32yeoR21IH5O','test','男','test','2018-02-22 10:59:53',NULL,NULL,'','2018-06-04 13:36:25','system',NULL,'4322f21!@EWQ','');
insert  into `sys_user_base_info`(`uuid`,`age`,`password`,`persion_name`,`sex`,`user_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`head_pic`,`email`,`phone`) values ('fb48fff75ae24e40b975a9c6ce1a124d',0,'$2a$10$CNidVdUK3y5ByE0DY8CzHuEJuFiKGAflYFa/or7bRYhrD9r9EDyLO','admin','1','admin','2018-02-12 16:27:07',NULL,NULL,'admin','2018-02-12 16:27:07','system',NULL,'admin','admin');

/*Table structure for table `sys_user_roles_info` */

CREATE TABLE `sys_user_roles_info` (
  `roles_id` varchar(36) NOT NULL COMMENT '角色id',
  `user_id` varchar(36) NOT NULL COMMENT '用户id',
  `checked` tinyint(1) DEFAULT NULL COMMENT '选中',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  PRIMARY KEY (`roles_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_roles_info` */

insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('1A5693C0C9E05009D474899A0CF5F19F','140bd7f6b3b043ac9f70d59749ca3e00',0,'2018-02-23 19:11:17',NULL,NULL,NULL,'2018-02-23 19:11:19',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('1A5693C0C9E05009D474899A0CF5F19F','fb48fff75ae24e40b975a9c6ce1a124d',1,'2018-02-12 18:00:21',NULL,NULL,NULL,'2018-02-12 18:00:21','system');
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('4E83F3C688D1D3E86D02F05F8AC74156','140bd7f6b3b043ac9f70d59749ca3e00',0,'2018-02-23 19:11:17',NULL,NULL,NULL,'2018-02-23 19:11:20',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('4E83F3C688D1D3E86D02F05F8AC74156','461fe0c903244b83a9395233151b0ff9',1,'2018-02-23 15:31:57',NULL,NULL,NULL,'2018-02-23 15:31:57','system');
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('54971E77F847C3FC4EE56003A33B35E8','140bd7f6b3b043ac9f70d59749ca3e00',0,'2018-02-23 19:11:17',NULL,NULL,NULL,'2018-02-23 19:11:20',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('54971E77F847C3FC4EE56003A33B35E8','5b9172560f2f44d69094194b6c96f1c0',0,'2018-02-12 18:01:34',NULL,NULL,NULL,'2018-02-13 11:11:57',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('54971E77F847C3FC4EE56003A33B35E8','99ee69e165d64c10b14e96401484437b',1,'2018-02-13 11:12:55',NULL,NULL,NULL,'2018-02-23 11:48:40',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('54971E77F847C3FC4EE56003A33B35E8','fb48fff75ae24e40b975a9c6ce1a124d',0,'2018-02-12 18:00:21',NULL,NULL,NULL,'2018-02-22 11:00:27',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('7EC06172A9CCD45EBF0952A463F4CF95','0ff36f5ed8f34bd49d1d41b71c49f256',1,'2018-02-23 11:48:38',NULL,NULL,NULL,'2018-02-23 11:48:38','system');
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('7EC06172A9CCD45EBF0952A463F4CF95','140bd7f6b3b043ac9f70d59749ca3e00',0,'2018-02-23 19:11:16',NULL,NULL,NULL,'2018-02-23 19:11:21',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('7EC06172A9CCD45EBF0952A463F4CF95','770a5ed109b04ababc3a2aece5ca826b',0,'2018-02-23 11:47:59',NULL,NULL,NULL,'2018-02-23 11:48:47',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('7EC06172A9CCD45EBF0952A463F4CF95','99ee69e165d64c10b14e96401484437b',0,'2018-02-23 11:47:55',NULL,NULL,NULL,'2018-02-23 11:48:41',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('81092EBC8FEF970EDA6656EBD1508368','f0cd7117c25947f4bc4e32569e9d6f56',1,'2018-02-25 21:33:49',NULL,NULL,NULL,'2018-02-25 21:33:49','system');
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('94CB00CC360FBDE489B42C4FA8E50C60','5b9172560f2f44d69094194b6c96f1c0',1,'2018-02-12 18:02:25',NULL,NULL,NULL,'2018-02-13 11:14:55',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('94CB00CC360FBDE489B42C4FA8E50C60','99ee69e165d64c10b14e96401484437b',0,'2018-02-13 11:12:59',NULL,NULL,NULL,'2018-02-13 11:18:06',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('94CB00CC360FBDE489B42C4FA8E50C60','fb48fff75ae24e40b975a9c6ce1a124d',0,'2018-02-12 18:00:02',NULL,NULL,NULL,'2018-02-22 11:00:26',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('BEB0D81B918DD968D24D6F95AC15A753','9988e4e2469e428ab117a1804c5a7b96',1,'2018-02-22 10:59:58',NULL,NULL,NULL,'2018-02-22 10:59:58','system');
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('D5DB0E0726FAD166517BC7A49DD75132','dc113e1152b845c7a8df8a8a951a9ee7',1,'2018-02-25 21:33:44',NULL,NULL,NULL,'2018-02-25 21:33:44','system');
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('DAE3AA13AB893DE1065F0E93FE28BDED','ed38ac79ccbe4883b74e5dd60f9b00cd',1,'2018-02-25 21:33:54',NULL,NULL,NULL,'2018-02-25 21:33:54','system');

/*Table structure for table `task` */

CREATE TABLE `task` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `appendix_status` int(11) DEFAULT NULL,
  `character_set` varchar(12) DEFAULT 'utf-8' COMMENT '字符集',
  `comfurm_task` int(11) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `err_task` int(11) DEFAULT NULL,
  `execute_last_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次执行时间',
  `execute_time` varchar(255) DEFAULT NULL,
  `execute_type` varchar(255) DEFAULT NULL,
  `head` longtext,
  `last_task` int(11) DEFAULT NULL,
  `post_data` varchar(255) DEFAULT NULL,
  `post_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `thread_number` int(11) DEFAULT NULL,
  `timing_start` int(11) DEFAULT '0' COMMENT '是否定时启动',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `url` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `task` */

/*Table structure for table `task_rule` */

CREATE TABLE `task_rule` (
  `id` varchar(255) NOT NULL,
  `rule_id` varchar(255) NOT NULL,
  `context` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `task_rule` */

/*Table structure for table `v_sys_comn_logs` */

DROP TABLE IF EXISTS `v_sys_comn_logs`;

/*!50001 CREATE TABLE  `v_sys_comn_logs`(
 `create_user` varchar(50) ,
 `ip` varchar(200) ,
 `param_list` varchar(2000) ,
 `date1` varchar(10) ,
 `time1` varchar(5) ,
 `num` bigint(21) ,
 `id` varchar(36) 
)*/;

/*View structure for view v_sys_comn_logs */

/*!50001 DROP TABLE IF EXISTS `v_sys_comn_logs` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_sys_comn_logs` AS (select `t`.`create_user` AS `create_user`,`t`.`ip` AS `ip`,`t`.`param_list` AS `param_list`,date_format(`t`.`create_time`,'%Y-%c-%d') AS `date1`,date_format(`t`.`create_time`,'%h:%i') AS `time1`,count(1) AS `num`,`t`.`uuid` AS `id` from `sys_comn_logs` `t` where (`t`.`class_method` = 'findAllTableRow') group by `t`.`create_user`,`t`.`ip`,`t`.`param_list`,date_format(`t`.`create_time`,'%Y-%c-%d'),date_format(`t`.`create_time`,'%h:%i') order by date_format(`t`.`create_time`,'%Y-%c-%d') desc,date_format(`t`.`create_time`,'%h:%i') desc) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
