/*
SQLyog Ultimate v10.51 
MySQL - 8.0.12 : Database - application
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`application` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

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

/*Table structure for table `oauth_access_token` */

CREATE TABLE `oauth_access_token` (
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `token_id` varchar(255) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(255) DEFAULT NULL,
  KEY `token_id_index` (`token_id`),
  KEY `authentication_id_index` (`authentication_id`),
  KEY `user_name_index` (`user_name`),
  KEY `client_id_index` (`client_id`),
  KEY `refresh_token_index` (`refresh_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oauth_access_token` */

/*Table structure for table `oauth_client_details` */

CREATE TABLE `oauth_client_details` (
  `client_id` varchar(48) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oauth_client_details` */

insert  into `oauth_client_details`(`client_id`,`resource_ids`,`client_secret`,`scope`,`authorized_grant_types`,`web_server_redirect_uri`,`authorities`,`access_token_validity`,`refresh_token_validity`,`additional_information`,`autoapprove`) values ('wth','wth','wth','all','password,authorization_code,refresh_token','http://localhost/','ROLE_ADMIN',3600,3600,'{result:2}','true');

/*Table structure for table `oauth_code` */

CREATE TABLE `oauth_code` (
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `code` varchar(255) DEFAULT NULL,
  `authentication` blob,
  KEY `code_index` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oauth_code` */

/*Table structure for table `oauth_refresh_token` */

CREATE TABLE `oauth_refresh_token` (
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `token_id` varchar(255) DEFAULT NULL,
  `token` blob,
  `authentication` blob,
  KEY `token_id_index` (`token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oauth_refresh_token` */

/*Table structure for table `score` */

CREATE TABLE `score` (
  `md5` varchar(36) DEFAULT NULL COMMENT 'url的md5值',
  `url` varchar(2000) DEFAULT NULL COMMENT 'url地址',
  `数据来源` varchar(50) DEFAULT NULL COMMENT '数据来源',
  `datetime` date DEFAULT NULL COMMENT '采集时间',
  `图片` varchar(255) DEFAULT NULL,
  `评分` varchar(255) DEFAULT NULL,
  `书名` varchar(255) DEFAULT NULL,
  `项目` varchar(255) DEFAULT NULL,
  `链接` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='书评分';

/*Data for the table `score` */

insert  into `score`(`md5`,`url`,`数据来源`,`datetime`,`图片`,`评分`,`书名`,`项目`,`链接`) values (NULL,NULL,NULL,NULL,'//qidian.qpic.cn/qdbimg/349573/1004608738/180\r','0 . 0','圣墟',NULL,NULL);
insert  into `score`(`md5`,`url`,`数据来源`,`datetime`,`图片`,`评分`,`书名`,`项目`,`链接`) values (NULL,NULL,NULL,NULL,'//qidian.qpic.cn/qdbimg/349573/1004608738/180\r','0 . 0','圣墟',NULL,NULL);

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

/*Table structure for table `sys_crawler_demo` */

CREATE TABLE `sys_crawler_demo` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_crawler_demo` */

insert  into `sys_crawler_demo`(`uuid`,`discription`,`create_time`,`create_user`,`update_time`,`update_user`,`delete_flag`) values ('BB840C8E8D27C61B062ECE192C7FD9D5','系统使用表','2018-06-06 21:17:39',NULL,'2018-06-06 21:17:39',NULL,1);

/*Table structure for table `sys_crawler_result_ruler_info` */

CREATE TABLE `sys_crawler_result_ruler_info` (
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

/*Data for the table `sys_crawler_result_ruler_info` */

insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('0895C3E27BAFBA243151B501E39CA7A0','简介','392BDB33918EAD445DC035392636F52D','2018-01-09 23:32:06',NULL,NULL,NULL,'简介','402880905da16202015da17f0c11000d','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('2AB71F75098D75B3623E8C18233B4FD7','标题','DBC5B0C9008B9AFAE9054D35AA404D9A','2018-01-09 23:25:28',NULL,NULL,NULL,'标题','CC0F19D1035997D5F7255B2CB7D69820','CB4C9272DF1E25758BEE419B4887995C','C06A7B0878844341823CDBF55F03885C','2018-01-09 23:25:28','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('4540457994919CEA112734F7AE005CDB','图片','6811519D0BECB66141985C21718DE32A','2018-01-09 23:26:12',NULL,NULL,NULL,'图片','4CB980202E88B519FA5332EEAE20DEA8','10E500DC038ED1258F35F4865D378E93','CF1C0EABDE01F3F762DE286FC64D412A','2018-01-09 23:26:12','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('7490130216101202F9EC9D0768272C01','链接','B1BCC8EEE9404A15B8D27A6C3D5F5685','2018-01-09 23:25:28',NULL,NULL,NULL,'链接','439D99D940E8062B3E3CA8B482FE160B','CB4C9272DF1E25758BEE419B4887995C','C06A7B0878844341823CDBF55F03885C','2018-01-09 23:25:28','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('807237947541F8B6C760E8B22AD0DB9F','连接','AEA87950A0B9BA85FBE90473122EE86D','2018-01-09 23:32:06',NULL,NULL,NULL,'连接','402880905da16202015da1796e200008','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('81C180C96EF729A8C2818BB503D313F4','评分','5D30C232E695539778C32BA5E8BB44AE','2018-01-09 23:26:12',NULL,NULL,NULL,'评分','1DF9BFACB271FD8520A13425C4C8CB6C','10E500DC038ED1258F35F4865D378E93','CF1C0EABDE01F3F762DE286FC64D412A','2018-01-09 23:26:12','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('86236B862D93966F6FF3223CAF839BD5','阅读量','EFA1D46AB1F80B96FE81A817A0B9AC89','2018-01-09 23:32:06',NULL,NULL,NULL,'阅读量','402880905da16202015da17f888a000e','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('882CF324695A48457187E35CBCF865A0','作者','A40A887F95FB94407A7C6485D046D1C0','2018-01-09 23:32:06',NULL,NULL,NULL,'作者','402880905da16202015da17c2ad6000a','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('8A7E9AA9E190CCEC97873F89FB60B77F','分类1','7F5EBA36428CFE9505B49FB74E358456','2018-01-09 23:32:06',NULL,NULL,NULL,'分类1','402880905da16202015da17e1cca000b','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('B245630059BF80D203D51D9627C02280','书名','EB8F227E6322E013E91D4BCD5B6DDB2B','2018-01-09 23:26:12',NULL,NULL,NULL,'书名','EF04BA346AA6FF5761F69305592210C3','10E500DC038ED1258F35F4865D378E93','CF1C0EABDE01F3F762DE286FC64D412A','2018-01-09 23:26:12','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('C2E9B05F818B8EFE4F3B34569CE607EF','分类2','78E450B093B3F9AF42D0AAAA61682AA1','2018-01-09 23:32:06',NULL,NULL,NULL,'分类2','402880905da16202015da17e83fe000c','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('D7C8E774797C283E6C35775EEDF509B0','书名','B3F9AE1BAD7F86B1D1BD60276820693B','2018-01-09 23:32:06',NULL,NULL,NULL,'书名','402880905da16202015da178dd370007','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('E6408D454A03DCC483A193BAD05319DD','图片','A08F2E055BBF6690EFDA0B14CFD207FB','2018-01-09 23:32:06',NULL,NULL,NULL,'图片','402880905da16202015da17a6eb10009','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');

/*Table structure for table `sys_crawler_ruler_colum_info` */

CREATE TABLE `sys_crawler_ruler_colum_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `colum_name` varchar(30) DEFAULT NULL COMMENT '列名称',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `ruler` varchar(300) DEFAULT NULL COMMENT '取内容规则',
  `ruler_uuid` varchar(36) DEFAULT NULL COMMENT '规则id',
  `type` varchar(30) DEFAULT NULL COMMENT '处理方式',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `end` int(11) DEFAULT NULL,
  `param` varchar(500) DEFAULT NULL COMMENT '拼接或替换的字符串',
  `start` int(11) DEFAULT NULL,
  `param_new` varchar(255) DEFAULT NULL,
  `md5flag` varchar(255) DEFAULT NULL,
  `parent_uuid` varchar(36) DEFAULT NULL COMMENT '上一层',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_crawler_ruler_colum_info` */

insert  into `sys_crawler_ruler_colum_info`(`uuid`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`type`,`update_time`,`update_user`,`end`,`param`,`start`,`param_new`,`md5flag`,`parent_uuid`) values ('20321146-2904-47ac-b2d6-30aa02728f67','链接','2018-12-03 14:15:06',NULL,NULL,NULL,'./@href','92673907-2603-4ab3-9bdb-005d4e040f4d','strAppendbefor','2018-12-03 14:15:06','system',NULL,'http://www.xuexi111.com',NULL,'',NULL,NULL);
insert  into `sys_crawler_ruler_colum_info`(`uuid`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`type`,`update_time`,`update_user`,`end`,`param`,`start`,`param_new`,`md5flag`,`parent_uuid`) values ('f128b37e-8d10-4b90-b55e-228929ed30e5','项目','2018-12-03 14:24:01',NULL,NULL,NULL,'./text()','92673907-2603-4ab3-9bdb-005d4e040f4d','lxml','2018-12-03 14:24:01','system',NULL,'',NULL,'',NULL,NULL);

/*Table structure for table `sys_crawler_ruler_info` */

CREATE TABLE `sys_crawler_ruler_info` (
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
  `parent_uuid` varchar(36) DEFAULT NULL COMMENT '上一层id',
  `task_uuid` varchar(36) NOT NULL COMMENT '任务id',
  `ruler` varchar(500) DEFAULT NULL COMMENT '规则',
  `items_ruler` varchar(255) DEFAULT NULL,
  `nextpage_ruler` varchar(255) DEFAULT NULL,
  `parent_dic_params` varchar(255) DEFAULT NULL,
  `parent_dic_uuid` varchar(255) DEFAULT NULL,
  `statue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_crawler_ruler_info` */

insert  into `sys_crawler_ruler_info`(`uuid`,`charset`,`content_info`,`create_time`,`create_user`,`delete_flag`,`discription`,`name`,`request_type`,`seed_uuid`,`sub_uri`,`type`,`update_time`,`update_user`,`parent_uuid`,`task_uuid`,`ruler`,`items_ruler`,`nextpage_ruler`,`parent_dic_params`,`parent_dic_uuid`,`statue`) values ('92673907-2603-4ab3-9bdb-005d4e040f4d',NULL,NULL,'2018-11-29 07:37:43',NULL,NULL,NULL,'导航',NULL,NULL,NULL,'navigation_bar','2018-11-29 07:37:43','system',NULL,'68103c87-e974-46e2-bf54-a3c1b817ab41','//div[@class=\'site-map\']/a',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `sys_crawler_task_err_info` */

CREATE TABLE `sys_crawler_task_err_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `task_uuid` varchar(36) DEFAULT NULL COMMENT '任务id',
  `url` varchar(2000) DEFAULT NULL COMMENT '错误网址',
  `error_msg` varchar(2000) DEFAULT NULL COMMENT '错误消息',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_crawler_task_err_info` */

insert  into `sys_crawler_task_err_info`(`uuid`,`discription`,`create_time`,`create_user`,`update_time`,`update_user`,`delete_flag`,`task_uuid`,`url`,`error_msg`) values ('BB840C8E8D27C61B062ECE192C7FD9D5','系统使用表','2018-06-06 21:17:39',NULL,'2018-06-06 21:17:39',NULL,1,NULL,NULL,NULL);

/*Table structure for table `sys_crawler_task_info` */

CREATE TABLE `sys_crawler_task_info` (
  `uuid` varchar(36) NOT NULL COMMENT '唯一id',
  `task_name` varchar(50) DEFAULT NULL COMMENT '任务名称',
  `start_time` timestamp NULL DEFAULT NULL COMMENT '任务执行开始时间',
  `last_excute_time` timestamp NULL DEFAULT NULL COMMENT '最近一次执行时间',
  `surplus_num` int(11) DEFAULT '0' COMMENT '预计剩余采集数量',
  `success_num` int(11) DEFAULT '0' COMMENT '完成数量',
  `task_flag` int(11) DEFAULT '0' COMMENT '是通用平台采集，还是执行上传的自定义采集程序,自定义采集程序将不会进入统计信息，需自己添加统计的内容',
  `error_num` int(11) DEFAULT '0' COMMENT '采集出错数量',
  `excute_flag` int(11) DEFAULT '0' COMMENT '执行状态(执行中，已停止)',
  `excute_batch` varchar(500) DEFAULT NULL COMMENT '执行的命令',
  `discription` varchar(200) DEFAULT NULL COMMENT '描述',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `charset` varchar(20) DEFAULT NULL COMMENT '字符集',
  `request_data` varchar(2000) DEFAULT NULL COMMENT '请求时间',
  `request_type` varchar(50) DEFAULT NULL COMMENT '请求方式',
  `url` varchar(2000) DEFAULT NULL COMMENT '链接地址',
  `url_name` varchar(100) DEFAULT NULL COMMENT '网站名称',
  `url_type` varchar(36) DEFAULT NULL COMMENT '网站类型',
  `web_icon` varchar(1000) DEFAULT NULL COMMENT '网站商标',
  `home_statue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_crawler_task_info` */

insert  into `sys_crawler_task_info`(`uuid`,`task_name`,`start_time`,`last_excute_time`,`surplus_num`,`success_num`,`task_flag`,`error_num`,`excute_flag`,`excute_batch`,`discription`,`delete_flag`,`create_time`,`create_user`,`update_time`,`update_user`,`charset`,`request_data`,`request_type`,`url`,`url_name`,`url_type`,`web_icon`,`home_statue`) values ('68103c87-e974-46e2-bf54-a3c1b817ab41','资料库列表分类',NULL,NULL,0,0,0,0,0,NULL,NULL,0,'2018-11-11 12:50:49',NULL,'2018-11-11 12:50:49','system','utf-8','','requestGet','http://www.xuexi111.com/about/sitemap.html','学习资料库','资料','https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1989459476,3828863328&fm=58&s=11387193F530499252EC2DFB02001032&bpow=121&bpoh=75',NULL);

/*Table structure for table `sys_crawler_task_self_code_info` */

CREATE TABLE `sys_crawler_task_self_code_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `task_uuid` varchar(36) DEFAULT NULL COMMENT '任务id',
  `zip_file_name` varchar(2000) DEFAULT NULL COMMENT '文件包名称',
  `file_path` varchar(200) DEFAULT NULL COMMENT '文件地址',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_crawler_task_self_code_info` */

insert  into `sys_crawler_task_self_code_info`(`uuid`,`discription`,`create_time`,`create_user`,`update_time`,`update_user`,`delete_flag`,`task_uuid`,`zip_file_name`,`file_path`) values ('BB840C8E8D27C61B062ECE192C7FD9D5','系统使用表','2018-06-06 21:17:39',NULL,'2018-06-06 21:17:39',NULL,1,NULL,NULL,NULL);

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

/*Table structure for table `sys_dbms_chart_dimension` */

CREATE TABLE `sys_dbms_chart_dimension` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sys_dbms_chart_dimension` */

/*Table structure for table `sys_dbms_chart_dimension_data` */

CREATE TABLE `sys_dbms_chart_dimension_data` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sys_dbms_chart_dimension_data` */

/*Table structure for table `sys_dbms_chart_dimension_group` */

CREATE TABLE `sys_dbms_chart_dimension_group` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sys_dbms_chart_dimension_group` */

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

insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('031511B2464627C357D36192BA688F42',NULL,'项目',255,'项目',4,NULL,'varchar',NULL,NULL,NULL,'2018-12-05 18:08:51',NULL,NULL,NULL,NULL,NULL,'2018-12-05 18:08:51',NULL,NULL,NULL);
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
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('2065149822307CE7FD4D388E026B1E1D',NULL,'项目',255,'项目',4,NULL,'varchar',NULL,NULL,NULL,'2018-12-05 18:09:48',NULL,NULL,NULL,NULL,NULL,'2018-12-05 18:09:48',NULL,NULL,NULL);
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
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('4CCCC6956D57344E8ED2F5DCF334F940',NULL,'链接',255,'链接',5,NULL,'varchar',NULL,NULL,NULL,'2018-12-05 18:21:07',NULL,NULL,NULL,NULL,'a5d0c4b7-6acd-11e8-8728-1c1b0daaaad8','2018-12-05 18:21:07',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('4d43ddb1-a053-44af-9177-311bc500721a','center','更新时间',NULL,'update_user',12,'1','varchar','middle','1','150','2018-06-08 11:45:33','test',0,NULL,NULL,'ba382719-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:33','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('561c097d-6127-4519-b84d-c1323a78135e','center','',NULL,'图片',7,'1','varchar','middle','1','150','2018-06-08 11:45:59','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:59','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('5aa9f967-a7f1-40a2-adaf-cd84d53108f8','center','数据库类型',NULL,'type',5,'1','varchar','middle','1','150','2018-06-08 11:45:37','test',0,NULL,NULL,'ba382719-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:37','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('5cefcaa8-a8bc-4f0e-913e-21f2aa3a70c4','center','',NULL,'分类2',10,'1','varchar','middle','1','150','2018-06-08 11:45:59','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:59','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('60666603-a29b-4a73-8c12-82811876bbae','center','端口号',NULL,'db_type',15,'1','varchar','middle','1','150','2018-06-08 11:45:33','test',0,NULL,NULL,'ba382719-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:33','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('634c79e0-f502-495f-9de0-de1dcc0bae70','center','数据库表类型id',NULL,'type_uuid',12,'1','varchar','middle','1','150','2018-06-08 11:45:29','test',0,NULL,NULL,'ba382713-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:29','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('64a46a3e-ac1a-4754-86f3-c55285f7ecad','center','',NULL,'作者',8,'1','varchar','middle','1','150','2018-06-08 11:45:59','test',0,NULL,NULL,'bf71a277-69f9-11e8-8728-1c1b0daaaad8','2018-06-08 11:48:36','test','','RYMX');
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('69006647-cf73-45e9-bf32-daf023d9e954','center','默认为true显示该列，设为false则隐藏该列',NULL,'cols_visible',10,'1','varchar','middle','1','150','2018-06-08 11:45:20','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:20','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('69A28189A077FF83B373BFA0EFAAD397',NULL,'项目',255,'项目',4,NULL,'varchar',NULL,NULL,NULL,'2018-12-05 18:09:03',NULL,NULL,NULL,NULL,NULL,'2018-12-05 18:09:03',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('6f4c583a-4364-4cee-8e6e-d19181ea6117','center','录入人员',NULL,'create_user',13,'1','varchar','middle','1','150','2018-06-08 11:45:15','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:15','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('6faf1e23-8f80-4f41-a27b-cd9f75aca074','center','主键',NULL,'uuid',1,'1','varchar','middle','1','150','2018-06-08 11:45:49','test',0,NULL,NULL,'ba382725-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:49','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('7227467e-156c-4b9b-8cd3-7f6b44ba5469','center','录入时间',NULL,'create_time',2,'1','timestamp','middle','1','150','2018-06-08 11:45:42','test',0,NULL,NULL,'ba382713-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:42','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('7289e461-21a0-441d-b4b4-49d18c605679','center','端口号',NULL,'port',4,'1','varchar','middle','1','150','2018-06-08 11:45:37','test',0,NULL,NULL,'ba382719-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:37','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('72e5a6ce-a35a-45b2-b519-0b620e94c0a4','center','ip',NULL,'ip',8,'1','varchar','middle','1','150','2018-06-08 11:43:17','test',0,NULL,NULL,'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:43:17','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('73ca09a5-2f87-4982-a0ae-f35c2d69148f','center','对齐方式',NULL,'cols_align',2,'1','varchar','middle','1','150','2018-06-08 11:45:20','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:20','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('749d19c4-7cd6-4b72-9712-8b6fee90dbd0','center','停用标记',NULL,'delete_flag',14,'1','int','middle','1','150','2018-06-08 11:45:15','test',0,NULL,NULL,'ba38270d-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:15','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('75005b93-5cd4-4e42-bbf6-b06d0bb195a6','center','图标',NULL,'type_icon',6,'1','varchar','middle','1','150','2018-06-08 11:48:08','test',0,NULL,NULL,'ba382722-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:48:08','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('7749a70b-9f78-44d4-b01a-b661bd61662d','center','资源功能描述',NULL,'discription',13,'1','varchar','middle','1','150','2018-06-08 11:45:53','test',0,NULL,NULL,'ba382725-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:45:53','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('77DFE8B681CE5335576432512849EB57',NULL,'项目',255,'项目',4,NULL,'varchar',NULL,NULL,NULL,'2018-12-05 18:14:08',NULL,NULL,NULL,NULL,'a5d0c4b7-6acd-11e8-8728-1c1b0daaaad8','2018-12-05 18:14:08',NULL,NULL,NULL);
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
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('9B96F16F2A03F872E2B111E972232B74',NULL,'项目',255,'项目',4,NULL,'varchar',NULL,NULL,NULL,'2018-12-05 18:18:57',NULL,NULL,NULL,NULL,'a5d0c4b7-6acd-11e8-8728-1c1b0daaaad8','2018-12-05 18:18:57',NULL,NULL,NULL);
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
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('BA9233ACDD35313D8953FCB662E7FAD9',NULL,'项目',255,'项目',4,NULL,'varchar',NULL,NULL,NULL,'2018-12-05 18:12:10',NULL,NULL,NULL,NULL,'a5d0c4b7-6acd-11e8-8728-1c1b0daaaad8','2018-12-05 18:12:10',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('bace98a0-537b-419b-8026-627e1c57d333','center','用户名称',NULL,'username',6,'1','varchar','middle','1','150','2018-06-08 11:45:37','test',0,NULL,NULL,'ba382719-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:47:53','test','','RYMX');
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('bead9c76-41ec-4387-9775-519aa70da1f6','center','录入时间',NULL,'create_time',5,'1','timestamp','middle','1','150','2018-06-08 11:43:17','test',0,NULL,NULL,'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8','2018-06-08 11:43:17','test',NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('BFAD0AD61BA8550002CE3BE3D7E779B9',NULL,'项目',255,'项目',4,NULL,'varchar',NULL,NULL,NULL,'2018-12-05 18:21:02',NULL,NULL,NULL,NULL,'a5d0c4b7-6acd-11e8-8728-1c1b0daaaad8','2018-12-05 18:21:02',NULL,NULL,NULL);
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
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('E405D285CA4DD2BB48254D8AF0CA42E2',NULL,'项目',255,'项目',4,NULL,'varchar',NULL,NULL,NULL,'2018-12-05 18:07:33',NULL,NULL,NULL,NULL,NULL,'2018-12-05 18:07:33',NULL,NULL,NULL);
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
insert  into `sys_dbms_user_index_info`(`uuid`,`user_index`,`user_desc`,`user_placeholder`,`chart`,`multeity`,`user_order`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`,`discription`) values ('2','DHHM','手机','电话号码',NULL,0,2,'system','2018-03-12 16:51:48',1,'test','2018-07-26 10:53:43',NULL);
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
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('0416e9a1-fb60-4df1-b32f-2fce7b4963e2','cbe3b397-6149-4e66-a577-69b20ed982a1','listPage',1,'2018-11-28 06:53:43','test',NULL,NULL,'2018-11-28 06:53:43','test','列表页');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('074dfa16-3b2a-4afc-aeb1-730abae1b3f4','99313fa6-3004-42d5-ab51-5edc8dd25541','北京',2,'2018-05-22 18:23:20','test',NULL,NULL,'2018-05-22 18:23:20','test','北京');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('097f1dda-19a2-4c13-86f8-c5968ba2aea7','6516a59c-b56e-43c6-a172-55c4784ceec3','vintage',6,'2018-05-22 17:46:55','test',NULL,NULL,'2018-05-22 17:57:30','test','酿造的');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('0e91078e-d705-4b95-9546-8ab70c21b80f','230ac982-bdb7-44d9-91fa-8641d25d3cf1','a_type',2,'2018-11-28 06:59:40','test',NULL,NULL,'2018-11-28 07:03:37','test','a标签');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('15a69d35-e7ff-44db-9505-ab7c9c82bf44','cbe3b397-6149-4e66-a577-69b20ed982a1','allPage',3,'2018-11-28 06:56:00','test',NULL,NULL,'2018-11-28 06:56:00','test','混合页面');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('15bcbc9e-1df0-4afd-beac-aac2b64380ff','6516a59c-b56e-43c6-a172-55c4784ceec3','westeros',11,'2018-05-22 17:59:55','test',NULL,NULL,'2018-05-22 17:59:55','test','维斯特洛');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('18a52afe-0c18-48d6-880a-221b2ba660d5','99313fa6-3004-42d5-ab51-5edc8dd25541','上海',25,'2018-05-22 18:26:19','test',NULL,NULL,'2018-05-22 18:26:19','test','上海');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('19cb1d1a-d6d1-44c0-b63c-c37d4511b7a5','99313fa6-3004-42d5-ab51-5edc8dd25541','台湾',33,'2018-05-22 18:27:34','test',NULL,NULL,'2018-05-22 18:27:34','test','台湾');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('1a75caf8-f610-44a6-be07-84b84a99367a','99313fa6-3004-42d5-ab51-5edc8dd25541','湖北',12,'2018-05-22 18:24:53','test',NULL,NULL,'2018-05-22 18:24:53','test','湖北');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('1e8eb781-06c6-4e67-8995-d2ef816ed0c8','99313fa6-3004-42d5-ab51-5edc8dd25541','台湾',38,'2018-05-22 18:28:25','test',NULL,NULL,'2018-05-22 18:28:25','test','台湾');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('1f46825f-2ef7-4218-bf44-ed8975bcea17','60122aa1-9b97-4075-83c6-861382e88f0f','dict',3,'2018-11-29 21:54:25','test',NULL,NULL,'2018-11-29 22:04:21','test','字典');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('243e99b8-6012-4fcc-bbd8-699fc0dd96d3','99313fa6-3004-42d5-ab51-5edc8dd25541','重庆',32,'2018-05-22 18:27:09','test',NULL,NULL,'2018-05-22 18:27:09','test','重庆');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('24ab8e4d-deed-4635-af3b-64097e3e0378','60122aa1-9b97-4075-83c6-861382e88f0f','none',1,'2018-11-29 21:47:52','test',NULL,NULL,'2018-11-29 22:18:22','test','原数据返回');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('29649da5-4b20-4e0b-9f59-ce5a735c24b0','99313fa6-3004-42d5-ab51-5edc8dd25541','浙江',31,'2018-05-22 18:27:01','test',NULL,NULL,'2018-05-22 18:27:01','test','浙江');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('2a327d0e-1e85-4c7d-8a0e-f08d4d1e603f','99313fa6-3004-42d5-ab51-5edc8dd25541','江苏',16,'2018-05-22 18:25:14','test',NULL,NULL,'2018-05-22 18:25:14','test','江苏');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('31481a5a-83b5-41d2-a24b-726bdeefd022','60122aa1-9b97-4075-83c6-861382e88f0f','strReplace',7,'2018-11-29 21:59:05','test',NULL,NULL,'2018-11-29 21:59:34','test','替换一段字符串');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('31b17824-9b5d-44c3-981d-1990b8fbc067','0c3f5728-1fe0-4861-9720-354827069d1d','geckodriver',6,'2018-11-10 10:18:50','test',NULL,NULL,'2018-11-10 10:18:50','test','webdriver firefox');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('352a0cda-d69d-49dd-8849-60c4477c6102','99313fa6-3004-42d5-ab51-5edc8dd25541','黑龙江',11,'2018-05-22 18:24:44','test',NULL,NULL,'2018-05-22 18:24:44','test','黑龙江');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('355c5650-2b3c-4340-99ad-bf153a3595ad','6516a59c-b56e-43c6-a172-55c4784ceec3','roma',5,'2018-05-22 17:45:59','test',NULL,NULL,'2018-05-22 17:45:59','test','罗马');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('3a1018a5-5129-4822-9a1d-d169a7acfa46','60122aa1-9b97-4075-83c6-861382e88f0f','rdict',4,'2018-11-29 21:54:46','test',NULL,NULL,'2018-11-29 22:04:01','test','反字典');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('3d894a24-cde0-49b3-9822-5b29e0c8f123','99313fa6-3004-42d5-ab51-5edc8dd25541','天津',27,'2018-05-22 18:26:33','test',NULL,NULL,'2018-05-22 18:26:33','test','天津');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('3e6525d2-53c0-48f6-9496-37c034352645','99313fa6-3004-42d5-ab51-5edc8dd25541','内蒙古',18,'2018-05-22 18:25:37','test',NULL,NULL,'2018-05-22 18:25:37','test','内蒙古');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('3ed832b9-8cc2-4966-8431-832427ca48e7','60122aa1-9b97-4075-83c6-861382e88f0f','arrayToString',9,'2018-11-29 22:10:53','test',NULL,NULL,'2018-11-29 22:11:03','test','数组合并');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('3fa7b5c1-707f-400d-b865-3921df7d9533','cbe3b397-6149-4e66-a577-69b20ed982a1','detialPage',2,'2018-11-28 06:54:10','test',NULL,NULL,'2018-11-28 06:54:10','test','详细信息页面');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('4202cab5-8f8e-4203-a7fe-48103aa0c15e','60122aa1-9b97-4075-83c6-861382e88f0f','strSub',5,'2018-11-29 21:55:19','test',NULL,NULL,'2018-11-29 22:06:00','test','截取字符串');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('43a0dc75-7d20-4fe9-ad9e-3eab4df9bb31','99313fa6-3004-42d5-ab51-5edc8dd25541','福建',3,'2018-05-22 18:23:27','test',NULL,NULL,'2018-05-22 18:23:27','test','福建');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('4c358207-6c47-4388-bead-c0674149d426','6ae40ad7-5d61-4cec-a93e-77aedda734e8','bar',5,'2018-05-21 17:22:22','test',NULL,NULL,'2018-05-24 15:09:15','test','标准柱图');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('4dc9c52b-9628-4174-a84c-dab43f601d4d','99313fa6-3004-42d5-ab51-5edc8dd25541','宁夏',19,'2018-05-22 18:25:44','test',NULL,NULL,'2018-05-22 18:25:44','test','宁夏');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('4ee56f6a-c4d8-49ca-88fa-77ee0bc773f5','60122aa1-9b97-4075-83c6-861382e88f0f','arraySingle',8,'2018-11-29 22:08:59','test',NULL,NULL,'2018-11-29 22:14:02','test','数组中一个');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('51cc95ff-5928-4ba3-b39a-8045d08f8bf5','6516a59c-b56e-43c6-a172-55c4784ceec3','wonderland',13,'2018-05-22 18:00:23','test',NULL,NULL,'2018-05-22 18:00:23','test','仙境');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('5222c66b-bc90-453c-a8f7-e62fbf30974e','6516a59c-b56e-43c6-a172-55c4784ceec3','walden',10,'2018-05-22 17:59:20','test',NULL,NULL,'2018-05-22 17:59:20','test','沃尔登');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('60542398-663b-409e-bc46-ec8f22b5a466','7c9f2411-82b5-4187-81ca-395e5709db52','1',1,'2018-05-17 10:53:54','test',NULL,NULL,'2018-05-17 10:53:54','test','启用');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('616a730f-ba2f-4eed-9571-b2b9ef042311','0c3f5728-1fe0-4861-9720-354827069d1d','requestGet',1,'2018-11-10 10:14:32','test',NULL,NULL,'2018-11-11 12:05:51','test','requestGet');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('63d8faa3-884b-42f5-8d0a-bb4d533d43aa','99313fa6-3004-42d5-ab51-5edc8dd25541','安徽',1,'2018-05-22 18:23:13','test',NULL,NULL,'2018-05-22 18:23:13','test','安徽');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('63f374bf-9a18-43d2-a3e6-d3f61a6aa016','99313fa6-3004-42d5-ab51-5edc8dd25541','西藏',28,'2018-05-22 18:26:40','test',NULL,NULL,'2018-05-22 18:26:40','test','西藏');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('645f0c4a-94bb-4fad-9753-66d4a485d5d4','6ae40ad7-5d61-4cec-a93e-77aedda734e8','rompie',3,'2018-05-22 18:47:44','test',NULL,NULL,'2018-05-23 13:39:06','test','环形图');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('6c85d5a2-2180-4225-87cb-1676f6c6abc6','6516a59c-b56e-43c6-a172-55c4784ceec3','infographic',2,'2018-05-22 17:44:30','test',NULL,NULL,'2018-05-22 17:44:37','test','图表');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('74fb9b66-487c-4775-a577-c0e55768a506','6516a59c-b56e-43c6-a172-55c4784ceec3','purple-passion',9,'2018-05-22 17:58:55','test',NULL,NULL,'2018-05-22 17:58:55','test','紫色激情');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('758cf8cc-9d80-4e1a-b7ff-0c088d77645a','99313fa6-3004-42d5-ab51-5edc8dd25541','江西',17,'2018-05-22 18:25:22','test',NULL,NULL,'2018-05-22 18:25:22','test','江西');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('7c7bd195-2f8f-4280-8255-e446d333a4f9','99313fa6-3004-42d5-ab51-5edc8dd25541','山东',21,'2018-05-22 18:25:58','test',NULL,NULL,'2018-05-22 18:25:58','test','山东');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('7d5c1b1b-b6cb-4f58-8e13-604f3f4eea82','99313fa6-3004-42d5-ab51-5edc8dd25541','四川',26,'2018-05-22 18:26:26','test',NULL,NULL,'2018-05-22 18:26:26','test','四川');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('7f506a1b-0d35-4e0d-b067-aa086a7d9096','6ae40ad7-5d61-4cec-a93e-77aedda734e8','nanpie',8,'2018-05-31 11:57:28','test',NULL,NULL,'2018-05-31 11:57:40','test','南丁格尔');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('7faf9a5f-da84-4b26-8d9c-8f35920988f4','230ac982-bdb7-44d9-91fa-8641d25d3cf1','next_a_page',2,'2018-11-28 07:00:27','test',NULL,NULL,'2018-11-28 07:03:53','test','翻页地址');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('8a727226-5173-4005-832e-4615f83238ae','6516a59c-b56e-43c6-a172-55c4784ceec3','halloween',10,'2018-05-22 17:58:29','test',NULL,NULL,'2018-05-22 18:43:05','test','万圣节');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('8b80341e-e850-463c-a67b-4c1c8253c978','0c3f5728-1fe0-4861-9720-354827069d1d','urllib',7,'2018-12-03 15:42:02','test',NULL,NULL,'2018-12-03 15:42:02','test','urllib');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('8d317e87-4f95-4934-8fbb-431ef5f9b74e','99313fa6-3004-42d5-ab51-5edc8dd25541','广东',5,'2018-05-22 18:23:41','test',NULL,NULL,'2018-05-22 18:23:41','test','广东');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('90e28afd-9879-4b64-bd1b-96820c7abe95','99313fa6-3004-42d5-ab51-5edc8dd25541','广西',6,'2018-05-22 18:23:49','test',NULL,NULL,'2018-05-22 18:23:49','test','广西');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('91c1aee6-fbb6-4b0b-bc65-12ca46c8d530','6ae40ad7-5d61-4cec-a93e-77aedda734e8','pie',1,'2018-05-21 17:22:33','test',NULL,NULL,'2018-05-23 13:51:59','test','标准饼图');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('945efe4a-30bc-4c0c-8960-7e5fd918f684','99313fa6-3004-42d5-ab51-5edc8dd25541','辽宁',18,'2018-05-22 18:25:28','test',NULL,NULL,'2018-05-22 18:25:28','test','辽宁');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('95752378-6266-4f44-a739-aa0321bb17e1','99313fa6-3004-42d5-ab51-5edc8dd25541','海南',8,'2018-05-22 18:24:04','test',NULL,NULL,'2018-05-22 18:24:04','test','海南');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('965316a0-ef8d-4073-94b2-57c3ec6a93b3','230ac982-bdb7-44d9-91fa-8641d25d3cf1','detial_a_type',2,'2018-11-28 07:03:30','test',NULL,NULL,'2018-11-28 07:03:30','test','详细页地址');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('9ab1291f-7813-4c6d-8620-dc080208cbd1','99313fa6-3004-42d5-ab51-5edc8dd25541','河南',10,'2018-05-22 18:24:19','test',NULL,NULL,'2018-05-22 18:24:19','test','河南');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('9bd41307-496b-4960-805d-c8600042668a','99313fa6-3004-42d5-ab51-5edc8dd25541','山西',23,'2018-05-22 18:26:05','test',NULL,NULL,'2018-05-22 18:26:05','test','山西');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('a3241123-b1e4-424f-aa10-1091a77c3faa','6516a59c-b56e-43c6-a172-55c4784ceec3','macarons',3,'2018-05-22 17:45:36','test',NULL,NULL,'2018-05-22 17:45:36','test','通心粉');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('a7b93f75-b092-42fe-a277-f2a5af426dba','6516a59c-b56e-43c6-a172-55c4784ceec3','dark',1,'2018-05-22 17:43:52','test',NULL,NULL,'2018-05-22 17:43:52','test','黑暗的');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('aeb14cde-f221-40fd-bb19-22087e7ffbc6','6ba17c34-8d1c-4c22-a37e-d4388f5efcce','senior',3,'2018-05-17 10:56:52','test',NULL,NULL,'2018-05-17 10:56:52','test','高中');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('aecac7cf-0161-43cd-9e58-b0b37c7dfa88','0c3f5728-1fe0-4861-9720-354827069d1d','ie',3,'2018-11-10 10:15:54','test',NULL,NULL,'2018-11-10 10:15:54','test','webdriver ie');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('af8b1bb2-2b43-4637-b29e-4774ad9dae06','99313fa6-3004-42d5-ab51-5edc8dd25541','青海',20,'2018-05-22 18:25:52','test',NULL,NULL,'2018-05-22 18:25:52','test','青海');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('b1010616-7747-48a5-ba90-51ab2f4fdd68','6ae40ad7-5d61-4cec-a93e-77aedda734e8','tbar',9,'2018-05-31 12:05:30','test',NULL,NULL,'2018-05-31 12:05:30','test','条形图');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('b4ca447b-cdbe-4df9-9c7a-f3fbcd34b51a','99313fa6-3004-42d5-ab51-5edc8dd25541','云南',30,'2018-05-22 18:26:54','test',NULL,NULL,'2018-05-22 18:26:54','test','云南');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('b5252753-f31c-44e1-9992-f969ecf2fee9','7c9f2411-82b5-4187-81ca-395e5709db52','0',2,'2018-05-17 10:54:12','test',NULL,NULL,'2018-05-17 10:54:12','test','停用');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('b62edd8e-4a19-40fc-ac30-67d843721b23','6516a59c-b56e-43c6-a172-55c4784ceec3','essos',8,'2018-05-22 17:58:08','test',NULL,NULL,'2018-05-22 17:58:08','test','厄索斯');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('ba29343a-e603-43f8-9c4e-6f87073d5196','99313fa6-3004-42d5-ab51-5edc8dd25541','新疆',29,'2018-05-22 18:26:47','test',NULL,NULL,'2018-05-22 18:26:47','test','新疆');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('bac0192c-4536-4273-992a-d85149b323d7','230ac982-bdb7-44d9-91fa-8641d25d3cf1','text',1,'2018-11-28 06:59:22','test',NULL,NULL,'2018-11-28 06:59:22','test','项相');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('c3f3aed1-ed16-42c3-8793-5fdca9962379','60122aa1-9b97-4075-83c6-861382e88f0f','lxml',2,'2018-11-29 21:53:03','test',NULL,NULL,'2018-11-29 21:53:03','test','获取后直接返回');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('cbde69e4-83f1-4e90-8fe7-dfd10dcda96e','230ac982-bdb7-44d9-91fa-8641d25d3cf1','img_type',3,'2018-11-28 07:00:04','test',NULL,NULL,'2018-11-28 07:04:02','test','图片');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('cc1cb607-0e90-429e-81dc-aaea80afc056','99313fa6-3004-42d5-ab51-5edc8dd25541','陕西',24,'2018-05-22 18:26:12','test',NULL,NULL,'2018-05-22 18:26:12','test','陕西');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('ce9cb5c6-ffd3-4feb-b98c-b02b5bf63094','99313fa6-3004-42d5-ab51-5edc8dd25541','甘肃',4,'2018-05-22 18:23:34','test',NULL,NULL,'2018-05-22 18:23:34','test','甘肃');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('d3cf7012-140d-435b-88a6-347d0979cc60','99313fa6-3004-42d5-ab51-5edc8dd25541','湖南',14,'2018-05-22 18:25:01','test',NULL,NULL,'2018-05-22 18:25:01','test','湖南');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('d698fccf-8ca2-4846-b73f-2aba6e7f8c2b','53af2bd0-0487-4517-bbb0-ca8dcf3f0a3f','1',1,'2018-05-17 10:46:21','test',NULL,NULL,'2018-05-17 10:51:53','test','男');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('d88768fe-223c-4149-af02-add032714548','60122aa1-9b97-4075-83c6-861382e88f0f','strSplit',5,'2018-11-29 22:16:48','test',NULL,NULL,'2018-11-29 22:16:48','test','字符串切割');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('da9cc549-b778-48aa-910b-fbeafecad935','53af2bd0-0487-4517-bbb0-ca8dcf3f0a3f','2',2,'2018-05-17 10:51:30','test',NULL,NULL,'2018-05-17 10:52:03','test','女');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('db35bf79-2f33-415c-88b4-4bd7cf2850da','60122aa1-9b97-4075-83c6-861382e88f0f','strAppendAfter',6,'2018-11-29 21:56:31','test',NULL,NULL,'2018-11-29 22:14:36','test','后拼接');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('dd5cdf5a-896f-4ce9-b714-25d554a57241','99313fa6-3004-42d5-ab51-5edc8dd25541','贵州',7,'2018-05-22 18:23:56','test',NULL,NULL,'2018-05-22 18:23:56','test','贵州');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('dd7c7cb2-d3dd-4c11-b66b-beec823713fc','6ae40ad7-5d61-4cec-a93e-77aedda734e8','map',2,'2018-05-22 18:20:52','test',NULL,NULL,'2018-05-23 13:52:05','test','地图');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('dee93ef2-049d-454c-98af-2062fe72ddbb','60122aa1-9b97-4075-83c6-861382e88f0f','strAppendbefor',6,'2018-11-29 22:15:04','test',NULL,NULL,'2018-11-29 22:15:35','test','字符串前拼接');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('df9dfc99-c90a-4811-980f-07fea0ec3123','99313fa6-3004-42d5-ab51-5edc8dd25541','香港',36,'2018-05-22 18:27:51','test',NULL,NULL,'2018-05-22 18:27:51','test','香港');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('e6463d2b-8211-4099-8116-d6cd45a0a2fe','99313fa6-3004-42d5-ab51-5edc8dd25541','澳门',37,'2018-05-22 18:28:11','test',NULL,NULL,'2018-05-22 18:28:11','test','澳门');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('e661aa3b-22ab-42e1-a4d3-a60d843d4dfb','6516a59c-b56e-43c6-a172-55c4784ceec3','shine',4,'2018-05-22 17:46:19','test',NULL,NULL,'2018-05-22 17:46:19','test','闪耀');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('e6b8a0ca-76bd-4a7b-b2e2-dd8a9541fc0f','6ae40ad7-5d61-4cec-a93e-77aedda734e8','line',4,'2018-05-21 17:22:46','test',NULL,NULL,'2018-05-24 15:09:10','test','标准折线图');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('e7b7f3a6-f7eb-4d2a-b395-80935d3ea528','6ba17c34-8d1c-4c22-a37e-d4388f5efcce','primary',4,'2018-05-17 11:01:33','test',NULL,NULL,'2018-05-17 11:01:33','test','小学');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('ea9260e6-fe33-4df6-a56c-05087e24cf76','99313fa6-3004-42d5-ab51-5edc8dd25541','南海诸岛',34,'2018-05-22 18:27:43','test',NULL,NULL,'2018-05-22 18:27:43','test','南海诸岛');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('eb0733a0-94e1-4ca2-a33e-35d2e302a00a','6ba17c34-8d1c-4c22-a37e-d4388f5efcce','college',1,'2018-05-17 10:55:34','test',NULL,NULL,'2018-05-17 10:55:34','test','大学');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('ebaccef3-6943-4c90-a2d0-d0a96e4c3582','cbe3b397-6149-4e66-a577-69b20ed982a1','navigation_bar',5,'2018-11-29 07:29:37','test',NULL,NULL,'2018-11-29 07:29:37','test','导航区');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('ecb219c1-a2e3-47e2-a127-40790771a3cb','99313fa6-3004-42d5-ab51-5edc8dd25541','河北',9,'2018-05-22 18:24:11','test',NULL,NULL,'2018-05-22 18:24:32','test','河北');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('f2faa8dc-8022-4ed8-b193-3755916714c4','0c3f5728-1fe0-4861-9720-354827069d1d','phantomjs',5,'2018-11-10 10:17:20','test',NULL,NULL,'2018-11-10 10:17:20','test','webdriver phantomjs');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('f54cfb34-6345-4bfa-9bc2-36022d65d80f','0c3f5728-1fe0-4861-9720-354827069d1d','requestPost',2,'2018-11-10 10:14:43','test',NULL,NULL,'2018-11-11 12:06:02','test','requestPost');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('f565f21e-98b0-4dfa-917b-f4e51cc4e4c2','0c3f5728-1fe0-4861-9720-354827069d1d','chrome',4,'2018-11-10 10:16:23','test',NULL,NULL,'2018-11-10 10:16:23','test','webdriver chrome');
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

insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('0c3f5728-1fe0-4861-9720-354827069d1d','抓数据方式','crawler_request_web_mode','2018-11-10 10:11:10','test',NULL,NULL,'2018-11-10 10:11:56','test','selected');
insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('230ac982-bdb7-44d9-91fa-8641d25d3cf1','规则种类','crawler_ruler_type','2018-11-28 06:58:04','test',NULL,NULL,'2018-11-28 06:58:04','test','selected');
insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('53af2bd0-0487-4517-bbb0-ca8dcf3f0a3f','性别','gen','2018-05-16 16:18:29',NULL,NULL,NULL,'2018-05-17 10:34:17','test','radio');
insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('60122aa1-9b97-4075-83c6-861382e88f0f','采集数据项整理方式','crawler_ruler_cloumn_type','2018-11-29 21:47:04','test',NULL,NULL,'2018-11-29 21:47:04','test','selected');
insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('6516a59c-b56e-43c6-a172-55c4784ceec3','图表主题','chartTheme','2018-05-22 17:43:01','test',NULL,NULL,'2018-05-22 18:15:34','test','selected');
insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('6ae40ad7-5d61-4cec-a93e-77aedda734e8','图表类型','chartType','2018-05-21 17:22:09','test',NULL,NULL,'2018-05-22 18:17:17','test','selected');
insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('6ba17c34-8d1c-4c22-a37e-d4388f5efcce','学历','education','2018-05-17 10:55:09','test',NULL,NULL,'2018-05-22 18:45:09','test','radio');
insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('7c9f2411-82b5-4187-81ca-395e5709db52','状态','statue','2018-05-17 10:53:38','test',NULL,NULL,'2018-05-17 10:53:38','test','radio');
insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('99313fa6-3004-42d5-ab51-5edc8dd25541','省份','province','2018-05-22 18:21:35','test',NULL,NULL,'2018-05-22 18:21:35','test','selected');
insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('cbe3b397-6149-4e66-a577-69b20ed982a1','爬虫组种类','crawler_group_type','2018-11-28 06:51:21','test',NULL,NULL,'2018-11-28 06:51:21','test','selected');

/*Table structure for table `sys_dic_porvince_city` */

CREATE TABLE `sys_dic_porvince_city` (
  `PROVINCE` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_dic_porvince_city` */

insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('安徽','安庆市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('安徽','蚌埠市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('安徽','巢湖市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('安徽','池州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('安徽','滁州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('安徽','阜阳市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('安徽','合肥市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('安徽','淮北市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('安徽','淮南市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('安徽','黄山市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('安徽','六安市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('安徽','马鞍山市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('安徽','宿州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('安徽','铜陵市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('安徽','芜湖市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('安徽','宣城市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('安徽','亳州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('北京','朝阳区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('北京','丰台区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('北京','宣武区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('北京','崇文区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('北京','通州区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('北京','房山区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('北京','大兴区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('北京','门头沟区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('北京','海淀区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('北京','石景山区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('北京','西城区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('北京','东城区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('北京','怀柔区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('北京','延庆县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('北京','密云县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('北京','昌平区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('北京','顺义区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('北京','平谷区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('北京','怀柔区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('福建','福州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('福建','龙岩市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('福建','南平市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('福建','宁德市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('福建','莆田市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('福建','泉州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('福建','三明市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('福建','厦门市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('福建','漳州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('甘肃','白银市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('甘肃','定西市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('甘肃','甘南藏族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('甘肃','嘉峪关市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('甘肃','金昌市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('甘肃','酒泉市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('甘肃','兰州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('甘肃','临夏回族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('甘肃','陇南市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('甘肃','平凉市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('甘肃','庆阳市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('甘肃','天水市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('甘肃','武威市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('甘肃','张掖市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广东','潮州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广东','东莞市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广东','佛山市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广东','广州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广东','河源市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广东','惠州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广东','江门市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广东','揭阳市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广东','茂名市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广东','梅州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广东','清远市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广东','汕头市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广东','汕尾市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广东','韶关市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广东','深圳市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广东','阳江市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广东','云浮市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广东','湛江市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广东','肇庆市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广东','中山市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广东','珠海市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广西','百色市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广西','北海市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广西','崇左市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广西','防城港市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广西','桂林市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广西','贵港市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广西','河池市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广西','贺州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广西','来宾市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广西','柳州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广西','南宁市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广西','钦州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广西','梧州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('广西','玉林市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('贵州','安顺市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('贵州','毕节地区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('贵州','贵阳市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('贵州','六盘水市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('贵州','黔东南苗族侗族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('贵州','黔南布依族苗族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('贵州','黔西南布依族苗族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('贵州','铜仁地区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('贵州','遵义市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('海南','东方市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('海南','海口市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('海南','琼海市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('海南','三亚市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('海南','万宁市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('海南','文昌市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('海南','五指山市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('海南','陵水黎族自治县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('海南','报停黎族苗族自治县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('海南','乐东黎族自治县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('海南','昌江黎族自治县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('海南','白沙黎族自治县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('海南','澄迈县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('海南','定安县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('海南','屯昌县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('海南','儋州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('海南','琼中黎族苗族自治县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河北','保定市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河北','沧州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河北','承德市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河北','邯郸市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河北','衡水市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河北','廊坊市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河北','秦皇岛市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河北','石家庄市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河北','唐山市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河北','邢台市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河北','张家口市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河南','安阳市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河南','鹤壁市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河南','焦作市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河南','开封市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河南','洛阳市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河南','南阳市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河南','平顶山市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河南','三门峡市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河南','商丘市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河南','新乡市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河南','许昌市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河南','郑州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河南','周口市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河南','驻马店市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河南','漯河市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('河南','濮阳市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('黑龙江','大庆市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('黑龙江','大兴安岭地区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('黑龙江','哈尔滨市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('黑龙江','鹤岗市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('黑龙江','黑河市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('黑龙江','鸡西市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('黑龙江','佳木斯市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('黑龙江','牡丹江市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('黑龙江','七台河市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('黑龙江','齐齐哈尔市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('黑龙江','双鸭山市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('黑龙江','绥化市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('黑龙江','伊春市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖北','鄂州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖北','恩施土家族苗族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖北','黄冈市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖北','黄石市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖北','荆门市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖北','荆州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖北','潜江市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖北','神农架林区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖北','十堰市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖北','随州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖北','天门市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖北','武汉市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖北','仙桃市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖北','咸宁市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖北','襄樊市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖北','孝感市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖北','宜昌市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖南','常德市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖南','长沙市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖南','郴州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖南','衡阳市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖南','怀化市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖南','娄底市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖南','邵阳市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖南','湘潭市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖南','湘西土家族苗族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖南','益阳市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖南','永州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖南','岳阳市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖南','张家界市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('湖南','株洲市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('吉林','白城市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('吉林','白山市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('吉林','长春市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('吉林','吉林市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('吉林','辽源市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('吉林','四平市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('吉林','松原市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('吉林','通化市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('吉林','延边朝鲜族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江苏','常州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江苏','淮安市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江苏','连云港市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江苏','南京市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江苏','南通市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江苏','苏州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江苏','宿迁市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江苏','泰州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江苏','无锡市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江苏','徐州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江苏','盐城市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江苏','扬州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江苏','镇江市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江西','抚州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江西','赣州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江西','吉安市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江西','景德镇市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江西','九江市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江西','南昌市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江西','萍乡市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江西','上饶市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江西','新余市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江西','宜春市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('江西','鹰潭市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('辽宁','鞍山市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('辽宁','本溪市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('辽宁','朝阳市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('辽宁','大连市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('辽宁','丹东市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('辽宁','抚顺市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('辽宁','阜新市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('辽宁','葫芦岛市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('辽宁','锦州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('辽宁','辽阳市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('辽宁','盘锦市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('辽宁','沈阳市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('辽宁','铁岭市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('辽宁','营口市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('内蒙古','阿拉善盟');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('内蒙古','巴彦淖尔市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('内蒙古','赤峰市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('内蒙古','鄂尔多斯市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('内蒙古','呼和浩特市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('内蒙古','呼伦贝尔市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('内蒙古','通辽市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('内蒙古','乌海市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('内蒙古','乌兰察布市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('内蒙古','锡林郭勒盟');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('内蒙古','兴安盟');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('内蒙古','包头市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('宁夏','固原市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('宁夏','石嘴山市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('宁夏','吴忠市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('宁夏','银川市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('宁夏','中卫市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('青海','果洛藏族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('青海','海北藏族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('青海','海东地区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('青海','海南藏族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('青海','海西蒙古族藏族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('青海','黄南藏族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('青海','西宁市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('青海','玉树藏族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山东','滨州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山东','德州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山东','东营市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山东','菏泽市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山东','济南市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山东','济宁市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山东','莱芜市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山东','聊城市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山东','临沂市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山东','青岛市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山东','日照市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山东','泰安市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山东','威海市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山东','潍坊市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山东','烟台市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山东','枣庄市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山东','淄博市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山西','长治市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山西','大同市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山西','晋城市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山西','晋中市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山西','临汾市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山西','吕梁市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山西','朔州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山西','太原市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山西','忻州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山西','阳泉市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('山西','运城市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('陕西','安康市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('陕西','宝鸡市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('陕西','汉中市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('陕西','商洛市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('陕西','铜川市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('陕西','渭南市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('陕西','西安市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('陕西','咸阳市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('陕西','延安市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('陕西','榆林市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('上海','崇明县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('上海','宝山区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('上海','嘉定区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('上海','青浦区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('上海','杨浦区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('上海','浦东新区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('上海','闽北区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('上海','普陀区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('上海','静安区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('上海','黄浦区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('上海','长宁区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('上海','卢湾区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('上海','徐汇区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('上海','闵行区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('上海','松江区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('上海','奉贤区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('上海','虹口区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('上海','南汇区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('上海','金山区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('四川','阿坝藏族羌族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('四川','巴中市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('四川','成都市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('四川','达州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('四川','德阳市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('四川','甘孜藏族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('四川','广安市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('四川','广元市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('四川','乐山市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('四川','凉山彝族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('四川','绵阳市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('四川','南充市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('四川','内江市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('四川','攀枝花市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('四川','遂宁市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('四川','雅安市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('四川','宜宾市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('四川','资阳市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('四川','自贡市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('四川','眉山市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('四川','泸州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('天津','宝坻区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('天津','武清区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('天津','宁河县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('天津','北辰区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('天津','汉沽区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('天津','红桥区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('天津','河北区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('天津','河东区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('天津','东丽区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('天津','河西区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('天津','和平区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('天津','南开区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('天津','西青区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('天津','津南区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('天津','塘沽区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('天津','静海县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('天津','大港区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('西藏','阿里地区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('西藏','昌都地区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('西藏','拉萨市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('西藏','林芝地区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('西藏','那曲地区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('西藏','日喀则地区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('西藏','山南地区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('新疆','阿克苏地区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('新疆','阿拉尔市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('新疆','阿勒泰地区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('新疆','巴音郭楞蒙古自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('新疆','博尔塔拉蒙古自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('新疆','昌吉回族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('新疆','哈密地区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('新疆','和田地区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('新疆','喀什地区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('新疆','克拉玛依市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('新疆','克孜勒苏柯尔克孜自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('新疆','石河子市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('新疆','塔城地区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('新疆','吐鲁番地区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('新疆','乌鲁木齐市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('新疆','伊犁哈萨克自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('新疆','五家渠市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('云南','保山市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('云南','楚雄彝族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('云南','大理白族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('云南','德宏傣族景颇族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('云南','迪庆藏族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('云南','红河哈尼族彝族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('云南','昆明市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('云南','丽江市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('云南','临沧市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('云南','怒江傈僳族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('云南','普洱市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('云南','曲靖市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('云南','文山壮族苗族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('云南','西双版纳傣族自治州');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('云南','玉溪市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('云南','昭通市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('浙江','杭州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('浙江','湖州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('浙江','嘉兴市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('浙江','金华市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('浙江','丽水市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('浙江','宁波市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('浙江','绍兴市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('浙江','台州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('浙江','温州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('浙江','舟山市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('浙江','衢州市');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','城口县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','巫溪县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','开县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','云阳县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','奉节县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','巫山县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','万州区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','梁平县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','忠县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','垫江县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','石柱土家族自治县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','潼南县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','合川区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','长寿区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','丰都县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','北碚区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','渝北区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','铜梁县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','大足县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','璧山县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','沙坪坝区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','江北区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','赔陵区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','渝中区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','南岸区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','荣昌县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','双桥区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','九龙坡区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','大渡口区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','南岸区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','巴南区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','永川区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','江津区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','万盛区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','南川区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','武隆县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','彭水苗族土家族自治县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','黔江区');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','酉阳土家族苗族自治县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','秀山土家族苗族自治县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('重庆','綦江县');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('台湾','台湾');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('香港','香港');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('澳门','澳门');
insert  into `sys_dic_porvince_city`(`PROVINCE`,`CITY`) values ('海南','三沙市');

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

insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('0515134492DE20262B4E731F46767A9D',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','单表查询1','fa  fa-database',7,'pages/zhcx/search/more.html','',NULL,NULL,'system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('102F0D6B58817A998413C6CA1EEC8CBB',NULL,'0','爬虫管理','fa fa-cloud-download',0,'','爬虫管理','system','2017-07-14 09:44:42','system',NULL,0,'菜单','fa fa-cloud-download',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('10960844B57C7A55C9F72C5CED6FD1B8',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','数据库表种类','fa fa-cubes',2,'pages/dbms/type/index.html','数据库表种类','test',NULL,'system',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('12948BF54A0D7E3481E0043ABBA044DD',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','单表查询2','fa fa-odnoklassniki-square',8,'、、','','system','2018-06-04 13:44:54','test',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('20218BB89AFCD426C8C0C4E9E738E0D2',NULL,'0','数据分析','fa  fa-desktop',2,'/pages/charts/db/index.html','','system','2018-05-30 06:31:28','system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('2146130099979805B1DE119DCB3BA551',NULL,'4c8820df-6447-11e7-a272-0025d3a93601','用户管理','fa  fa-sitemap',5,'pages/softm/userbase/index.html','项目权限',NULL,NULL,'system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('24898AE2D779238DC4AA443CE053C6AC',NULL,'4C2700CEB8CDAF0C2E3C3AAD9C849DD6','短息测试','fa fa-mobile-phone',0,'pages/user/sendmail/phone.html','短息测试',NULL,NULL,'system',NULL,0,'菜单','fa fa-mobile-phone',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('263A71AB62EFD2B36A5A11BAAC186409',NULL,'102F0D6B58817A998413C6CA1EEC8CBB','用户采集程序管理','fa fa-hand-grab-o',4,'/pages/crawler/code/index.html','','system','2018-11-05 05:40:24','test',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('2D735A94084C088C781036FE3573FDAE',NULL,'102F0D6B58817A998413C6CA1EEC8CBB','错误日志','fa fa-file-archive-o',3,'/pages/crawler/errmsg/index.html','采集时错误的网页信息','test',NULL,'test',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('36882FDCB61EF181592FEE79B0462BDA',NULL,'102F0D6B58817A998413C6CA1EEC8CBB','结果配置','fa fa-file-code-o',2,'pages/crawler/result/result.html','代码管理','test',NULL,'system',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('39FC2A8FCCCBA07F109261B26A5F5E66',NULL,'4C2700CEB8CDAF0C2E3C3AAD9C849DD6','邮箱测试','fa fa-envelope',1,'pages/user/sendmail/mail.html','邮箱测试',NULL,NULL,'system',NULL,0,'菜单','fa fa-envelope',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('43C35747E9D95AD6576B22547F660150',NULL,'102F0D6B58817A998413C6CA1EEC8CBB','规则管理','fa fa-hourglass-end',1,'/pages/crawler/rule/index.html','','system','2018-11-11 20:51:27','test',NULL,0,NULL,NULL,NULL,1);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4C2700CEB8CDAF0C2E3C3AAD9C849DD6',NULL,'0','系统工具','fa fa-gg',3,'','','system','2017-09-15 12:03:28','system',NULL,0,'菜单','fa fa-gg',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c87efc1-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','0','数据管理','fa  fa-database',1,'pages/error/404.html','#','佘赐雄',NULL,'超级管理员',NULL,0,'菜单','fa  fa-database',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c87fb94-6447-11e7-a272-0025d3a93601',NULL,'4c8820df-6447-11e7-a272-0025d3a93601','系统配置','fa  fa-navicon',1,'pages/softm/sysmenu/system_function_ztree.html','系统导航功能1',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c87fd09-6447-11e7-a272-0025d3a93601',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','数据库连接','fa  fa-plug',1,'pages/dbms/addr/index.html','动态链接数据库','test',NULL,'超级管理员',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c87fe75-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','2c90838f57c6e02e0157c729a86b000b','数据库备份','glyphicon glyphicon-paste',0,'pages/error/404.html','数据备份、数据还原',NULL,NULL,'超级管理员',NULL,0,'菜单','glyphicon glyphicon-paste',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','数据表管理','fa  fa-table',3,'pages/dbms/table/index.html','数据库表结构','test',NULL,'超级管理员',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c881c82-6447-11e7-a272-0025d3a93601',NULL,'4c8820df-6447-11e7-a272-0025d3a93601','系统管理','fa fa-leaf',0,'pages/softm/system/index.html','#',NULL,NULL,'system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c8820df-6447-11e7-a272-0025d3a93601',NULL,'0','系统管理','fa fa-cog',4,'pages/error/404.html','',NULL,NULL,'',NULL,0,'菜单','fa fa-cog',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c882255-6447-11e7-a272-0025d3a93601',NULL,'4c8820df-6447-11e7-a272-0025d3a93601','机构管理','fa  fa-coffee',2,'pages/softm/organization/index.html','单位组织',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('6FB525B0FE6ED405436CEF9B8F0697C5',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','系统数据库维护建议','fa  fa-database',5,'/pages/config/advice/index.html','','system','2018-05-30 06:27:13','system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('9419DC15C84351C8F038B2B0E5302FEC',NULL,'4c8820df-6447-11e7-a272-0025d3a93601','角色与权限管理','fa fa-map-marker',3,'pages/softm/department/index.html','单位部门',NULL,NULL,'system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('97514FC17A39AEE6815708CD5B5F7E3E',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','查询关键字类型配置','fa  fa-database',0,'/pages/dbms/userindex/index.html','','test',NULL,'system',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('9BB8634517FB6EF224AA0FC687714CEF',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','多表查询','fa  fa-database',6,'/templates/zhcx/search/index','','test',NULL,'system',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('9F301D22F416F461045596C9786D0C45',NULL,'102F0D6B58817A998413C6CA1EEC8CBB','采集任务','fa fa-cloud-download',0,'/pages/crawler/task/index.html','','test',NULL,'system',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('A554CF49625FE55DA199AAA271F957AD',NULL,'4C2700CEB8CDAF0C2E3C3AAD9C849DD6','字典管理','fa  fa-database',2,'pages/softm/dic/index.html','字典管理',NULL,NULL,'system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('AF7B52BED9BA2A22224EC39FBE0F7C69',NULL,'4C2700CEB8CDAF0C2E3C3AAD9C849DD6','文件导入','fa  fa-database',3,'pages/error/404.html','文件导入','system','2018-02-25 22:09:17','system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('B0820D770366E897120281EBFDEE276E',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','字段管理','fa fa-opencart',4,'/pages/dbms/column/index.html','','test',NULL,'test',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('BE79315D605E839B40288537CE34EF99',NULL,'20218BB89AFCD426C8C0C4E9E738E0D2','ces ','fa  fa-database',0,'pages/error/404.html','字典管理',NULL,NULL,'system',NULL,0,NULL,NULL,NULL,NULL);

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

/*Table structure for table `sys_plant_bind_conf` */

CREATE TABLE `sys_plant_bind_conf` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `according` int(11) DEFAULT '0' COMMENT '是否显示',
  `chaxun` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `cols_desc` varchar(255) DEFAULT NULL,
  `cols_name` varchar(255) DEFAULT NULL,
  `cols_order` int(11) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `dime_flag` int(11) DEFAULT '1' COMMENT '1允许用户统计分析的字段，0不允许的字段',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `param_flag` int(11) DEFAULT '1' COMMENT '1允许用户进行条件筛选的字段，0不允许的字段',
  `relation` varchar(255) DEFAULT NULL,
  `sortable` int(11) DEFAULT NULL COMMENT '支持排序',
  `statue` int(11) DEFAULT '1' COMMENT '1客户手动添加字段没有字段名称，0系统默认字段不允许修该字段名称',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `width` int(11) DEFAULT '0' COMMENT '宽度设置',
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sys_plant_bind_conf` */

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
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('0515134492DE20262B4E731F46767A9D','BEB0D81B918DD968D24D6F95AC15A753','2018-05-30 06:24:34',NULL,NULL,NULL,'2018-11-08 08:15:27',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('102F0D6B58817A998413C6CA1EEC8CBB','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:12',NULL,NULL,NULL,'2018-02-12 16:23:12','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('102F0D6B58817A998413C6CA1EEC8CBB','4E83F3C688D1D3E86D02F05F8AC74156','2018-02-23 15:32:25',NULL,NULL,NULL,'2018-02-23 15:32:25','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('102F0D6B58817A998413C6CA1EEC8CBB','54971E77F847C3FC4EE56003A33B35E8','2018-02-12 14:45:27',NULL,NULL,NULL,'2018-02-13 11:12:36',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('102F0D6B58817A998413C6CA1EEC8CBB','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:36',NULL,NULL,NULL,'2018-05-30 06:02:01',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('10960844B57C7A55C9F72C5CED6FD1B8','1A5693C0C9E05009D474899A0CF5F19F','2018-02-23 11:45:12',NULL,NULL,NULL,'2018-02-23 11:45:12','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('10960844B57C7A55C9F72C5CED6FD1B8','4E83F3C688D1D3E86D02F05F8AC74156','2018-03-06 00:02:39',NULL,NULL,NULL,'2018-03-06 00:02:39','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('10960844B57C7A55C9F72C5CED6FD1B8','54971E77F847C3FC4EE56003A33B35E8','2018-02-25 21:56:42',NULL,NULL,NULL,'2018-02-25 21:56:43',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('10960844B57C7A55C9F72C5CED6FD1B8','7EC06172A9CCD45EBF0952A463F4CF95','2018-02-23 11:47:32',NULL,NULL,NULL,'2018-02-23 11:47:32','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('10960844B57C7A55C9F72C5CED6FD1B8','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 11:19:54',NULL,NULL,NULL,'2018-11-08 08:15:27',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('12948BF54A0D7E3481E0043ABBA044DD','BEB0D81B918DD968D24D6F95AC15A753','2018-06-04 15:51:38',NULL,NULL,NULL,'2018-11-08 08:15:27',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('20218BB89AFCD426C8C0C4E9E738E0D2','BEB0D81B918DD968D24D6F95AC15A753','2018-05-30 08:03:15',NULL,NULL,NULL,'2018-10-31 20:50:49',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2146130099979805B1DE119DCB3BA551','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:16',NULL,NULL,NULL,'2018-02-12 16:23:16','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2146130099979805B1DE119DCB3BA551','54971E77F847C3FC4EE56003A33B35E8','2018-02-13 11:12:42',NULL,NULL,NULL,'2018-02-25 21:56:45',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2146130099979805B1DE119DCB3BA551','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:37',NULL,NULL,NULL,'2018-02-22 10:59:37','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2146130099979805B1DE119DCB3BA551','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:26:16',NULL,NULL,NULL,'2018-02-25 21:26:16','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('24898AE2D779238DC4AA443CE053C6AC','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:17',NULL,NULL,NULL,'2018-02-12 16:23:17','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('24898AE2D779238DC4AA443CE053C6AC','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:38',NULL,NULL,NULL,'2018-10-31 20:50:57',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('254DD0B66C981B0100796E1C72C5D677','1A5693C0C9E05009D474899A0CF5F19F','2018-03-05 20:23:04',NULL,NULL,NULL,'2018-03-05 20:23:04','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('254DD0B66C981B0100796E1C72C5D677','81092EBC8FEF970EDA6656EBD1508368','2018-03-06 00:01:21',NULL,NULL,NULL,'2018-03-08 22:13:07',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('254DD0B66C981B0100796E1C72C5D677','BEB0D81B918DD968D24D6F95AC15A753','2018-03-05 20:22:59',NULL,NULL,NULL,'2018-03-11 11:33:07',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('254DD0B66C981B0100796E1C72C5D677','D5DB0E0726FAD166517BC7A49DD75132','2018-03-06 00:01:06',NULL,NULL,NULL,'2018-03-08 22:06:58',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('263A71AB62EFD2B36A5A11BAAC186409','BEB0D81B918DD968D24D6F95AC15A753','2018-11-05 05:40:33',NULL,NULL,NULL,'2018-11-05 05:40:33','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2CFFD9D78EC73AA9E0F034C890434B04','1A5693C0C9E05009D474899A0CF5F19F','2018-02-28 22:45:02',NULL,NULL,NULL,'2018-03-03 18:06:21',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2CFFD9D78EC73AA9E0F034C890434B04','7EC06172A9CCD45EBF0952A463F4CF95','2018-02-25 21:53:15',NULL,NULL,NULL,'2018-02-25 21:53:15','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2CFFD9D78EC73AA9E0F034C890434B04','81092EBC8FEF970EDA6656EBD1508368','2018-02-25 21:32:25',NULL,NULL,NULL,'2018-03-08 22:13:26',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2CFFD9D78EC73AA9E0F034C890434B04','BEB0D81B918DD968D24D6F95AC15A753','2018-02-25 21:31:47',NULL,NULL,NULL,'2018-03-11 11:33:07',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2CFFD9D78EC73AA9E0F034C890434B04','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:32:33',NULL,NULL,NULL,'2018-03-08 22:06:58',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2CFFD9D78EC73AA9E0F034C890434B04','DAE3AA13AB893DE1065F0E93FE28BDED','2018-02-25 21:32:19',NULL,NULL,NULL,'2018-02-25 21:32:19','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2D735A94084C088C781036FE3573FDAE','BEB0D81B918DD968D24D6F95AC15A753','2018-11-05 05:40:32',NULL,NULL,NULL,'2018-11-05 05:40:32','system',1,0);
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
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('39FC2A8FCCCBA07F109261B26A5F5E66','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:38',NULL,NULL,NULL,'2018-10-31 20:50:58',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('3AE20A44CE6F1787FA3E4E95FBB0B6C5','4E83F3C688D1D3E86D02F05F8AC74156','2018-02-25 21:53:29',NULL,NULL,NULL,'2018-03-06 00:02:57',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('3AE20A44CE6F1787FA3E4E95FBB0B6C5','7EC06172A9CCD45EBF0952A463F4CF95','2018-02-25 21:53:08',NULL,NULL,NULL,'2018-02-25 21:53:08','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('3AE20A44CE6F1787FA3E4E95FBB0B6C5','81092EBC8FEF970EDA6656EBD1508368','2018-02-25 21:51:57',NULL,NULL,NULL,'2018-02-25 21:51:57','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('3AE20A44CE6F1787FA3E4E95FBB0B6C5','BEB0D81B918DD968D24D6F95AC15A753','2018-02-28 22:03:13',NULL,NULL,NULL,'2018-03-05 20:23:15',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('3AE20A44CE6F1787FA3E4E95FBB0B6C5','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:51:51',NULL,NULL,NULL,'2018-03-06 00:01:13',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('3AE20A44CE6F1787FA3E4E95FBB0B6C5','DAE3AA13AB893DE1065F0E93FE28BDED','2018-02-25 21:52:05',NULL,NULL,NULL,'2018-03-06 00:01:28',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('43C35747E9D95AD6576B22547F660150','BEB0D81B918DD968D24D6F95AC15A753','2018-11-11 20:54:37',NULL,NULL,NULL,'2018-11-11 20:54:37','system',1,0);
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
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87efc1-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:36',NULL,NULL,NULL,'2018-11-08 08:15:27',NULL,1,0);
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
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87fd09-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:36',NULL,NULL,NULL,'2018-11-08 08:15:27',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:12',NULL,NULL,NULL,'2018-02-12 16:23:12','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601','4E83F3C688D1D3E86D02F05F8AC74156','2018-03-06 00:02:39',NULL,NULL,NULL,'2018-03-06 00:02:39','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8','2018-02-12 16:18:11',NULL,NULL,NULL,'2018-02-25 21:56:43',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601','7EC06172A9CCD45EBF0952A463F4CF95','2018-02-23 11:47:33',NULL,NULL,NULL,'2018-02-23 11:47:33','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:36',NULL,NULL,NULL,'2018-11-08 08:15:27',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881551-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:15',NULL,NULL,NULL,'2018-02-12 16:23:15','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881551-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8','2018-02-12 16:18:16',NULL,NULL,NULL,'2018-02-25 21:56:44',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881551-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:37',NULL,NULL,NULL,'2018-02-22 10:59:37','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881551-6447-11e7-a272-0025d3a93601','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:26:15',NULL,NULL,NULL,'2018-03-08 22:14:20',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881c82-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:11',NULL,NULL,NULL,'2018-02-22 11:00:35',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881c82-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8','2018-02-12 14:47:45',NULL,NULL,NULL,'2018-02-25 21:56:41',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881c82-6447-11e7-a272-0025d3a93601','94CB00CC360FBDE489B42C4FA8E50C60','2018-02-12 15:02:50',NULL,NULL,NULL,'2018-02-25 21:56:17',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881c82-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:35',NULL,NULL,NULL,'2018-10-31 20:51:04',NULL,0,0);
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
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('6FB525B0FE6ED405436CEF9B8F0697C5','BEB0D81B918DD968D24D6F95AC15A753','2018-05-30 06:27:21',NULL,NULL,NULL,'2018-11-08 08:15:27',NULL,1,0);
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
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('97514FC17A39AEE6815708CD5B5F7E3E','BEB0D81B918DD968D24D6F95AC15A753','2018-05-30 06:27:20',NULL,NULL,NULL,'2018-11-08 08:15:27',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('9BB8634517FB6EF224AA0FC687714CEF','BEB0D81B918DD968D24D6F95AC15A753','2018-05-30 06:02:00',NULL,NULL,NULL,'2018-11-08 08:15:27',NULL,1,0);
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
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('AD7CDFCEA44AF61889B12ECEC006BAE2','1A5693C0C9E05009D474899A0CF5F19F','2018-03-05 20:23:04',NULL,NULL,NULL,'2018-03-05 20:23:04','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('AD7CDFCEA44AF61889B12ECEC006BAE2','81092EBC8FEF970EDA6656EBD1508368','2018-03-06 00:01:21',NULL,NULL,NULL,'2018-03-06 00:01:21','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('AD7CDFCEA44AF61889B12ECEC006BAE2','BEB0D81B918DD968D24D6F95AC15A753','2018-03-05 20:22:59',NULL,NULL,NULL,'2018-03-05 20:22:59','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('AD7CDFCEA44AF61889B12ECEC006BAE2','D5DB0E0726FAD166517BC7A49DD75132','2018-03-06 00:01:06',NULL,NULL,NULL,'2018-03-06 00:01:06','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('ADF008B4C0F1111E4004CA0250AEA4EC','81092EBC8FEF970EDA6656EBD1508368','2018-03-08 22:07:38',NULL,NULL,NULL,'2018-03-08 22:07:38','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('ADF008B4C0F1111E4004CA0250AEA4EC','D5DB0E0726FAD166517BC7A49DD75132','2018-03-08 22:07:02',NULL,NULL,NULL,'2018-03-08 22:07:02','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('ADF008B4C0F1111E4004CA0250AEA4EC','DAE3AA13AB893DE1065F0E93FE28BDED','2018-03-08 22:07:33',NULL,NULL,NULL,'2018-03-08 22:07:33','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('AF7B52BED9BA2A22224EC39FBE0F7C69','BEB0D81B918DD968D24D6F95AC15A753','2018-02-28 22:03:15',NULL,NULL,NULL,'2018-10-31 20:50:59',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('B0820D770366E897120281EBFDEE276E','BEB0D81B918DD968D24D6F95AC15A753','2018-06-04 16:37:26',NULL,NULL,NULL,'2018-11-08 08:15:27',NULL,1,0);
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
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('BE79315D605E839B40288537CE34EF99','BEB0D81B918DD968D24D6F95AC15A753','2018-02-28 22:03:15',NULL,NULL,NULL,'2018-10-31 20:50:49',NULL,0,0);
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
  `uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
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
insert  into `sys_user_base_info`(`uuid`,`age`,`password`,`persion_name`,`sex`,`user_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`head_pic`,`email`,`phone`) values ('9988e4e2469e428ab117a1804c5a7b96',NULL,'$2a$10$0fOSY4xjUtAkHNAXYYEM.OA2MslJTcy8kbVlfuRSQLGCxEkVjyV0.','test','男','test','2018-02-22 10:59:53',NULL,NULL,'','2018-06-04 13:36:25','system',NULL,'4322f21!@EWQ','');
insert  into `sys_user_base_info`(`uuid`,`age`,`password`,`persion_name`,`sex`,`user_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`head_pic`,`email`,`phone`) values ('fb48fff75ae24e40b975a9c6ce1a124d',0,'$2a$10$CNidVdUK3y5ByE0DY8CzHuEJuFiKGAflYFa/or7bRYhrD9r9EDyLO','admin','1','admin','2018-02-12 16:27:07',NULL,NULL,'admin','2018-02-12 16:27:07','system',NULL,'admin','admin');

/*Table structure for table `sys_user_login_base_info` */

CREATE TABLE `sys_user_login_base_info` (
  `username` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `account_non_expired` tinyint(1) NOT NULL DEFAULT '1',
  `account_non_locked` tinyint(1) NOT NULL DEFAULT '1',
  `credentials_non_expired` tinyint(1) NOT NULL DEFAULT '1',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `sys_user_login_base_info` */

insert  into `sys_user_login_base_info`(`username`,`account_non_expired`,`account_non_locked`,`credentials_non_expired`,`enabled`,`password`) values ('111',1,1,1,1,'$2a$10$nEmizaH4euKhYgSiNDcL6.JNDTNaxYtglrgioFc7R42RnvRj75J12');
insert  into `sys_user_login_base_info`(`username`,`account_non_expired`,`account_non_locked`,`credentials_non_expired`,`enabled`,`password`) values ('123123',1,1,1,1,'123');
insert  into `sys_user_login_base_info`(`username`,`account_non_expired`,`account_non_locked`,`credentials_non_expired`,`enabled`,`password`) values ('1',1,1,1,1,'1');
insert  into `sys_user_login_base_info`(`username`,`account_non_expired`,`account_non_locked`,`credentials_non_expired`,`enabled`,`password`) values ('123',1,1,1,1,'$2a$10$lgrBTk7cnaSzrpaQxYMfxeRHdX96lNTWtFVKaLPfAxUkXcLmgiS4C');

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
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('7EC06172A9CCD45EBF0952A463F4CF95','fb48fff75ae24e40b975a9c6ce1a124d',0,'2018-09-24 06:58:48',NULL,NULL,NULL,'2018-09-24 06:58:49',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('81092EBC8FEF970EDA6656EBD1508368','f0cd7117c25947f4bc4e32569e9d6f56',1,'2018-02-25 21:33:49',NULL,NULL,NULL,'2018-02-25 21:33:49','system');
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('94CB00CC360FBDE489B42C4FA8E50C60','5b9172560f2f44d69094194b6c96f1c0',1,'2018-02-12 18:02:25',NULL,NULL,NULL,'2018-02-13 11:14:55',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('94CB00CC360FBDE489B42C4FA8E50C60','99ee69e165d64c10b14e96401484437b',0,'2018-02-13 11:12:59',NULL,NULL,NULL,'2018-02-13 11:18:06',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('94CB00CC360FBDE489B42C4FA8E50C60','fb48fff75ae24e40b975a9c6ce1a124d',0,'2018-02-12 18:00:02',NULL,NULL,NULL,'2018-02-22 11:00:26',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('BEB0D81B918DD968D24D6F95AC15A753','9988e4e2469e428ab117a1804c5a7b96',1,'2018-02-22 10:59:58',NULL,NULL,NULL,'2018-02-22 10:59:58','system');
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('D5DB0E0726FAD166517BC7A49DD75132','dc113e1152b845c7a8df8a8a951a9ee7',1,'2018-02-25 21:33:44',NULL,NULL,NULL,'2018-02-25 21:33:44','system');
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('DAE3AA13AB893DE1065F0E93FE28BDED','ed38ac79ccbe4883b74e5dd60f9b00cd',1,'2018-02-25 21:33:54',NULL,NULL,NULL,'2018-02-25 21:33:54','system');

/*Table structure for table `v_sys_comn_logs` */

DROP TABLE IF EXISTS `v_sys_comn_logs`;

/*!50001 CREATE TABLE  `v_sys_comn_logs`(
 `id` varchar(36) ,
 `create_user` varchar(50) ,
 `ip` varchar(200) ,
 `date1` date ,
 `param_list` varchar(2000) ,
 `num` bigint(21) ,
 `time1` int(2) 
)*/;

/*View structure for view v_sys_comn_logs */

/*!50001 DROP TABLE IF EXISTS `v_sys_comn_logs` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_sys_comn_logs` AS select distinct uuid() AS `id`,`sys_comn_logs`.`create_user` AS `create_user`,`sys_comn_logs`.`ip` AS `ip`,cast(`sys_comn_logs`.`create_time` as date) AS `date1`,`sys_comn_logs`.`param_list` AS `param_list`,count(1) AS `num`,hour(`sys_comn_logs`.`create_time`) AS `time1` from `sys_comn_logs` group by `sys_comn_logs`.`ip`,`sys_comn_logs`.`create_user`,`sys_comn_logs`.`create_time`,`sys_comn_logs`.`param_list` order by `date1` desc */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
