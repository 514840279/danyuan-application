/*
SQLyog Ultimate v10.51 
MySQL - 5.7.23 : Database - application
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`application` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `application`;

/*Table structure for table `学习资料列表` */

CREATE TABLE `学习资料列表` (
  `md5` varchar(36) DEFAULT NULL COMMENT 'url的md5值',
  `图片地址` varchar(255) DEFAULT NULL,
  `地址` varchar(255) DEFAULT NULL,
  `喜欢` varchar(255) DEFAULT NULL,
  `介绍` varchar(255) DEFAULT NULL,
  `分类` varchar(255) DEFAULT NULL,
  `标题` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `学习资料列表` */

/*Table structure for table `资料库导航` */

CREATE TABLE `资料库导航` (
  `md5` varchar(36) DEFAULT NULL COMMENT 'url的md5值',
  `连接地址` varchar(255) DEFAULT NULL,
  `项目` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `资料库导航` */

insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/kouyv/','英语口语');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yvfa/','英语语法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/xiezuo/','英语写作');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/tingli/','英语听力');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yuedu/','英语阅读');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/cet46/','英语四六级');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/fanyi/','英语翻译');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/cihui/','英语词汇');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/fangfa/','英语方法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yousheng/','英语有声');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/liuxue/','留学英语');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/yingyv/','考研英语复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhengzhi/','考研政治复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/shuxue/','考研数学复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhenti/','考研真题');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhuanye/','考研专业课');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/fudao/','考研辅导');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/os/','操作系统');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/app/','应用软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/net/','网络软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/xitong/','系统工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/duomeiti/','多媒体工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/hangye/','行业软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/kaifa/','编程开发');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/anquan/','安全相关');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jisuanji/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jishu/','工程技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jingji/','经济管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shuli/','数理科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lilun/','理论科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/huanjing/','环境科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/dianzi/','电子技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/huaxue/','化学物理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shehui/','社会科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/anquan/','安全消防');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lishi/','历史地理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/zhexue/','哲学宗教');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shengwu/','生物医学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jiaoyv/','教育学类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/wenxue/','文学艺术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/falv/','政治法律');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/xinli/','心理学书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lizhi/','励志书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/xiaoshuo/','文学小说');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/shipin/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/daxuekecheng/','大学开放视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zkyshipin/','中科院视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qhshipin/','清华大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjshipin/','上海交大视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zsyshipin/','中国石油大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tjshipin/','同济大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','photoshop视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/comjiaocheng/','计算机视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zdshipin/','浙江大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dnshipin/','东南大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jlshipin/','吉林大学视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jisuanji/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jishu/','工程技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jingji/','经济管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shuli/','数理科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lilun/','理论科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/huanjing/','环境科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/dianzi/','电子技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/huaxue/','化学物理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shehui/','社会科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/anquan/','安全消防');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lishi/','历史地理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/zhexue/','哲学宗教');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shengwu/','生物医学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jiaoyv/','教育学类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/wenxue/','文学艺术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/falv/','政治法律');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ziliao/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/sucai/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yousheng/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/zazhi/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocai/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/fanwen/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/shipin/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/daxuekecheng/','大学课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','ps视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/comjiaocheng/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qhshipin/','清华大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjshipin/',' 上海交大');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zdshipin/','浙江大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zsyshipin/','石油大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dnshipin/','东南大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tjshipin/','同济大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jlshipin/','吉林大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zkyshipin/','中科院视频');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yanjiang/','名人演讲');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jisuanji/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jichu/','计算机基础');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/caozuoxitong/','操作系统');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/bangong/','office教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yingjian/','硬件组装');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wangluo/','网络技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/diannao/','电脑杂志');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/renzheng/','IT认证考试');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shujuku/','数据库教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cyvyan/','C语言/C++');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/csharp/','C#教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/asp/','ASP/ASP.NET');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/php/','PHP教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/javascript/','Javascript');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/java/','JAVA教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/hack/','黑客技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/android/','Android教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youxi/','游戏开发');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wangyebiancheng/','网页编程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/flash/','FLASH教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dreamweaver/','Dreamweaver');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wordpress/','WordPress');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/seo/','SEO教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sheji/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/photoshop/','photoshop');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','PS视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/coreldraw/','CoreDRAW');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/illustrator/','Illustrator');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/indesign/','InDesign教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/painter/','Painter教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cad/','CAD教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shejisucai/','平面设计素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/guanggao/','广告设计');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yychuli/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yysucai/','视频素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/aftereffects/','After Effects');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/premiere/','Premiere教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/softimage/','SOFTIMAGE');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dsmax/','3Ds Max教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/maya/','Maya教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/proe/','Pro/ENGINEER');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cinema4d/','Cinema 4D');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/vray/','Vray教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/modo/','Modo教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zbrush/','ZBrush教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/inventor/','Inventor教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/solidworks/','SolidWorks');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lightwave/','LightWave');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dchuli/','3D处理工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dsucai/','3D模型素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jingguan/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiaoshou/','市场营销');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/guanli/','管理学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jingji/','经济学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jinrong/','金融学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gupiao/','股票/基金');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/kuaiji/','会计/财务管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qiyeguanli/','企业管理知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jingji/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jingji/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shenghuo/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yangsheng/','健康养生资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/caipu/','菜谱食谱厨艺');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youyun/','幼儿孕妇护理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yvjia/','瑜伽视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/liyi/','生活礼仪形象');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sheying/','数码摄影教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiaju/','家居装修知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiajiao/','家庭教育知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youer/','幼儿教知识育');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gongcheng/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jianzhu/','建筑工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/huanjing/','环境工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dianzi/','电子通信');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qiche/','汽车修理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shengwu/','生物科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dianqi/','电气工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tumu/','土木工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jixie/','机械工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jishu/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jishu/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shehui/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lizhi/','励志成功');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wushu/','武术武艺教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yvshiwei/','余世维讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zengshiqiang/','曾仕强讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/chenanzhi/','陈安之讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yanjiang/','名人演讲讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/baike/','百科全书资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiangqi/','象棋围棋军旗');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shehui/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shehui/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/waiyv/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/riyv/','日语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/fayv/','法语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/deyv/','德语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/hanguoyv/','韩语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lishidili/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lishi/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lishi/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zglishi/','中国历史');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjlishi/','世界历史');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wenhua/','中国文化');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wenxue/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shufa/','书写书法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wudao/','舞蹈体操');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tiyv/','体育球类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiangsheng/','相声小品');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiju/','戏剧影视');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gangqin/','钢琴/小提琴');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jita/','吉他摇滚教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/huihua/','艺术绘画教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/wenxue/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/wenxue/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiaoyv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/chuzhong/','初中教学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gaozhong/','高中教学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gongwuyuan/','公务员考试');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiajiao/','家庭教育知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youer/','幼儿教育');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jiaoyv/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jiaoyv/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/junshi/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lixue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zhexue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yixue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shengwu/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/falv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/kouyv/','英语口语');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yvfa/','英语语法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/xiezuo/','英语写作');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/tingli/','英语听力');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yuedu/','英语阅读');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/cet46/','英语四六级');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/fanyi/','英语翻译');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/cihui/','英语词汇');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/fangfa/','英语方法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yousheng/','英语有声');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/liuxue/','留学英语');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/yingyv/','考研英语复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhengzhi/','考研政治复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/shuxue/','考研数学复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhenti/','考研真题');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhuanye/','考研专业课');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/fudao/','考研辅导');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/os/','操作系统');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/app/','应用软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/net/','网络软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/xitong/','系统工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/duomeiti/','多媒体工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/hangye/','行业软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/kaifa/','编程开发');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/anquan/','安全相关');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jisuanji/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jishu/','工程技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jingji/','经济管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shuli/','数理科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lilun/','理论科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/huanjing/','环境科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/dianzi/','电子技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/huaxue/','化学物理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shehui/','社会科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/anquan/','安全消防');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lishi/','历史地理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/zhexue/','哲学宗教');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shengwu/','生物医学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jiaoyv/','教育学类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/wenxue/','文学艺术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/falv/','政治法律');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/xinli/','心理学书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lizhi/','励志书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/xiaoshuo/','文学小说');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/shipin/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/daxuekecheng/','大学开放视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zkyshipin/','中科院视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qhshipin/','清华大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjshipin/','上海交大视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zsyshipin/','中国石油大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tjshipin/','同济大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','photoshop视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/comjiaocheng/','计算机视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zdshipin/','浙江大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dnshipin/','东南大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jlshipin/','吉林大学视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jisuanji/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jishu/','工程技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jingji/','经济管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shuli/','数理科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lilun/','理论科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/huanjing/','环境科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/dianzi/','电子技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/huaxue/','化学物理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shehui/','社会科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/anquan/','安全消防');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lishi/','历史地理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/zhexue/','哲学宗教');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shengwu/','生物医学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jiaoyv/','教育学类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/wenxue/','文学艺术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/falv/','政治法律');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ziliao/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/sucai/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yousheng/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/zazhi/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocai/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/fanwen/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/shipin/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/daxuekecheng/','大学课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','ps视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/comjiaocheng/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qhshipin/','清华大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjshipin/',' 上海交大');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zdshipin/','浙江大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zsyshipin/','石油大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dnshipin/','东南大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tjshipin/','同济大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jlshipin/','吉林大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zkyshipin/','中科院视频');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yanjiang/','名人演讲');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jisuanji/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jichu/','计算机基础');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/caozuoxitong/','操作系统');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/bangong/','office教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yingjian/','硬件组装');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wangluo/','网络技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/diannao/','电脑杂志');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/renzheng/','IT认证考试');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shujuku/','数据库教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cyvyan/','C语言/C++');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/csharp/','C#教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/asp/','ASP/ASP.NET');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/php/','PHP教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/javascript/','Javascript');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/java/','JAVA教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/hack/','黑客技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/android/','Android教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youxi/','游戏开发');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wangyebiancheng/','网页编程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/flash/','FLASH教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dreamweaver/','Dreamweaver');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wordpress/','WordPress');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/seo/','SEO教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sheji/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/photoshop/','photoshop');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','PS视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/coreldraw/','CoreDRAW');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/illustrator/','Illustrator');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/indesign/','InDesign教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/painter/','Painter教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cad/','CAD教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shejisucai/','平面设计素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/guanggao/','广告设计');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yychuli/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yysucai/','视频素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/aftereffects/','After Effects');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/premiere/','Premiere教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/softimage/','SOFTIMAGE');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dsmax/','3Ds Max教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/maya/','Maya教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/proe/','Pro/ENGINEER');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cinema4d/','Cinema 4D');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/vray/','Vray教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/modo/','Modo教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zbrush/','ZBrush教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/inventor/','Inventor教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/solidworks/','SolidWorks');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lightwave/','LightWave');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dchuli/','3D处理工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dsucai/','3D模型素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jingguan/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiaoshou/','市场营销');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/guanli/','管理学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jingji/','经济学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jinrong/','金融学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gupiao/','股票/基金');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/kuaiji/','会计/财务管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qiyeguanli/','企业管理知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jingji/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jingji/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shenghuo/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yangsheng/','健康养生资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/caipu/','菜谱食谱厨艺');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youyun/','幼儿孕妇护理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yvjia/','瑜伽视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/liyi/','生活礼仪形象');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sheying/','数码摄影教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiaju/','家居装修知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiajiao/','家庭教育知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youer/','幼儿教知识育');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gongcheng/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jianzhu/','建筑工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/huanjing/','环境工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dianzi/','电子通信');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qiche/','汽车修理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shengwu/','生物科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dianqi/','电气工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tumu/','土木工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jixie/','机械工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jishu/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jishu/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shehui/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lizhi/','励志成功');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wushu/','武术武艺教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yvshiwei/','余世维讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zengshiqiang/','曾仕强讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/chenanzhi/','陈安之讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yanjiang/','名人演讲讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/baike/','百科全书资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiangqi/','象棋围棋军旗');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shehui/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shehui/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/waiyv/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/riyv/','日语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/fayv/','法语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/deyv/','德语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/hanguoyv/','韩语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lishidili/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lishi/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lishi/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zglishi/','中国历史');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjlishi/','世界历史');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wenhua/','中国文化');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wenxue/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shufa/','书写书法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wudao/','舞蹈体操');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tiyv/','体育球类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiangsheng/','相声小品');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiju/','戏剧影视');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gangqin/','钢琴/小提琴');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jita/','吉他摇滚教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/huihua/','艺术绘画教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/wenxue/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/wenxue/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiaoyv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/chuzhong/','初中教学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gaozhong/','高中教学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gongwuyuan/','公务员考试');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiajiao/','家庭教育知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youer/','幼儿教育');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jiaoyv/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jiaoyv/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/junshi/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lixue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zhexue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yixue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shengwu/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/falv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/kouyv/','英语口语');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yvfa/','英语语法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/xiezuo/','英语写作');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/tingli/','英语听力');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yuedu/','英语阅读');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/cet46/','英语四六级');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/fanyi/','英语翻译');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/cihui/','英语词汇');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/fangfa/','英语方法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yousheng/','英语有声');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/liuxue/','留学英语');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/yingyv/','考研英语复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhengzhi/','考研政治复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/shuxue/','考研数学复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhenti/','考研真题');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhuanye/','考研专业课');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/fudao/','考研辅导');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/os/','操作系统');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/app/','应用软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/net/','网络软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/xitong/','系统工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/duomeiti/','多媒体工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/hangye/','行业软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/kaifa/','编程开发');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/anquan/','安全相关');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jisuanji/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jishu/','工程技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jingji/','经济管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shuli/','数理科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lilun/','理论科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/huanjing/','环境科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/dianzi/','电子技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/huaxue/','化学物理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shehui/','社会科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/anquan/','安全消防');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lishi/','历史地理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/zhexue/','哲学宗教');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shengwu/','生物医学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jiaoyv/','教育学类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/wenxue/','文学艺术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/falv/','政治法律');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/xinli/','心理学书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lizhi/','励志书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/xiaoshuo/','文学小说');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/shipin/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/daxuekecheng/','大学开放视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zkyshipin/','中科院视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qhshipin/','清华大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjshipin/','上海交大视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zsyshipin/','中国石油大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tjshipin/','同济大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','photoshop视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/comjiaocheng/','计算机视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zdshipin/','浙江大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dnshipin/','东南大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jlshipin/','吉林大学视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jisuanji/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jishu/','工程技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jingji/','经济管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shuli/','数理科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lilun/','理论科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/huanjing/','环境科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/dianzi/','电子技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/huaxue/','化学物理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shehui/','社会科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/anquan/','安全消防');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lishi/','历史地理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/zhexue/','哲学宗教');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shengwu/','生物医学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jiaoyv/','教育学类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/wenxue/','文学艺术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/falv/','政治法律');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ziliao/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/sucai/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yousheng/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/zazhi/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocai/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/fanwen/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/shipin/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/daxuekecheng/','大学课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','ps视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/comjiaocheng/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qhshipin/','清华大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjshipin/',' 上海交大');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zdshipin/','浙江大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zsyshipin/','石油大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dnshipin/','东南大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tjshipin/','同济大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jlshipin/','吉林大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zkyshipin/','中科院视频');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yanjiang/','名人演讲');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jisuanji/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jichu/','计算机基础');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/caozuoxitong/','操作系统');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/bangong/','office教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yingjian/','硬件组装');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wangluo/','网络技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/diannao/','电脑杂志');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/renzheng/','IT认证考试');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shujuku/','数据库教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cyvyan/','C语言/C++');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/csharp/','C#教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/asp/','ASP/ASP.NET');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/php/','PHP教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/javascript/','Javascript');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/java/','JAVA教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/hack/','黑客技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/android/','Android教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youxi/','游戏开发');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wangyebiancheng/','网页编程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/flash/','FLASH教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dreamweaver/','Dreamweaver');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wordpress/','WordPress');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/seo/','SEO教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sheji/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/photoshop/','photoshop');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','PS视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/coreldraw/','CoreDRAW');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/illustrator/','Illustrator');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/indesign/','InDesign教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/painter/','Painter教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cad/','CAD教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shejisucai/','平面设计素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/guanggao/','广告设计');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yychuli/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yysucai/','视频素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/aftereffects/','After Effects');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/premiere/','Premiere教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/softimage/','SOFTIMAGE');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dsmax/','3Ds Max教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/maya/','Maya教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/proe/','Pro/ENGINEER');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cinema4d/','Cinema 4D');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/vray/','Vray教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/modo/','Modo教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zbrush/','ZBrush教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/inventor/','Inventor教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/solidworks/','SolidWorks');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lightwave/','LightWave');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dchuli/','3D处理工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dsucai/','3D模型素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jingguan/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiaoshou/','市场营销');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/guanli/','管理学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jingji/','经济学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jinrong/','金融学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gupiao/','股票/基金');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/kuaiji/','会计/财务管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qiyeguanli/','企业管理知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jingji/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jingji/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shenghuo/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yangsheng/','健康养生资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/caipu/','菜谱食谱厨艺');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youyun/','幼儿孕妇护理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yvjia/','瑜伽视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/liyi/','生活礼仪形象');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sheying/','数码摄影教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiaju/','家居装修知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiajiao/','家庭教育知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youer/','幼儿教知识育');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gongcheng/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jianzhu/','建筑工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/huanjing/','环境工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dianzi/','电子通信');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qiche/','汽车修理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shengwu/','生物科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dianqi/','电气工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tumu/','土木工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jixie/','机械工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jishu/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jishu/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shehui/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lizhi/','励志成功');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wushu/','武术武艺教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yvshiwei/','余世维讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zengshiqiang/','曾仕强讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/chenanzhi/','陈安之讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yanjiang/','名人演讲讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/baike/','百科全书资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiangqi/','象棋围棋军旗');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shehui/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shehui/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/waiyv/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/riyv/','日语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/fayv/','法语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/deyv/','德语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/hanguoyv/','韩语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lishidili/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lishi/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lishi/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zglishi/','中国历史');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjlishi/','世界历史');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wenhua/','中国文化');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wenxue/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shufa/','书写书法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wudao/','舞蹈体操');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tiyv/','体育球类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiangsheng/','相声小品');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiju/','戏剧影视');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gangqin/','钢琴/小提琴');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jita/','吉他摇滚教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/huihua/','艺术绘画教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/wenxue/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/wenxue/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiaoyv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/chuzhong/','初中教学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gaozhong/','高中教学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gongwuyuan/','公务员考试');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiajiao/','家庭教育知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youer/','幼儿教育');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jiaoyv/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jiaoyv/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/junshi/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lixue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zhexue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yixue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shengwu/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/falv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/kouyv/','英语口语');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yvfa/','英语语法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/xiezuo/','英语写作');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/tingli/','英语听力');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yuedu/','英语阅读');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/cet46/','英语四六级');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/fanyi/','英语翻译');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/cihui/','英语词汇');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/fangfa/','英语方法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yousheng/','英语有声');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/liuxue/','留学英语');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/yingyv/','考研英语复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhengzhi/','考研政治复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/shuxue/','考研数学复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhenti/','考研真题');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhuanye/','考研专业课');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/fudao/','考研辅导');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/os/','操作系统');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/app/','应用软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/net/','网络软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/xitong/','系统工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/duomeiti/','多媒体工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/hangye/','行业软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/kaifa/','编程开发');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/anquan/','安全相关');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jisuanji/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jishu/','工程技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jingji/','经济管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shuli/','数理科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lilun/','理论科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/huanjing/','环境科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/dianzi/','电子技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/huaxue/','化学物理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shehui/','社会科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/anquan/','安全消防');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lishi/','历史地理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/zhexue/','哲学宗教');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shengwu/','生物医学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jiaoyv/','教育学类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/wenxue/','文学艺术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/falv/','政治法律');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/xinli/','心理学书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lizhi/','励志书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/xiaoshuo/','文学小说');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/shipin/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/daxuekecheng/','大学开放视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zkyshipin/','中科院视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qhshipin/','清华大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjshipin/','上海交大视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zsyshipin/','中国石油大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tjshipin/','同济大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','photoshop视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/comjiaocheng/','计算机视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zdshipin/','浙江大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dnshipin/','东南大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jlshipin/','吉林大学视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jisuanji/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jishu/','工程技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jingji/','经济管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shuli/','数理科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lilun/','理论科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/huanjing/','环境科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/dianzi/','电子技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/huaxue/','化学物理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shehui/','社会科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/anquan/','安全消防');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lishi/','历史地理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/zhexue/','哲学宗教');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shengwu/','生物医学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jiaoyv/','教育学类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/wenxue/','文学艺术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/falv/','政治法律');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ziliao/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/sucai/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yousheng/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/zazhi/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocai/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/fanwen/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/shipin/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/daxuekecheng/','大学课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','ps视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/comjiaocheng/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qhshipin/','清华大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjshipin/',' 上海交大');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zdshipin/','浙江大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zsyshipin/','石油大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dnshipin/','东南大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tjshipin/','同济大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jlshipin/','吉林大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zkyshipin/','中科院视频');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yanjiang/','名人演讲');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jisuanji/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jichu/','计算机基础');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/caozuoxitong/','操作系统');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/bangong/','office教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yingjian/','硬件组装');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wangluo/','网络技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/diannao/','电脑杂志');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/renzheng/','IT认证考试');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shujuku/','数据库教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cyvyan/','C语言/C++');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/csharp/','C#教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/asp/','ASP/ASP.NET');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/php/','PHP教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/javascript/','Javascript');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/java/','JAVA教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/hack/','黑客技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/android/','Android教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youxi/','游戏开发');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wangyebiancheng/','网页编程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/flash/','FLASH教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dreamweaver/','Dreamweaver');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wordpress/','WordPress');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/seo/','SEO教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sheji/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/photoshop/','photoshop');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','PS视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/coreldraw/','CoreDRAW');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/illustrator/','Illustrator');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/indesign/','InDesign教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/painter/','Painter教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cad/','CAD教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shejisucai/','平面设计素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/guanggao/','广告设计');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yychuli/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yysucai/','视频素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/aftereffects/','After Effects');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/premiere/','Premiere教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/softimage/','SOFTIMAGE');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dsmax/','3Ds Max教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/maya/','Maya教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/proe/','Pro/ENGINEER');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cinema4d/','Cinema 4D');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/vray/','Vray教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/modo/','Modo教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zbrush/','ZBrush教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/inventor/','Inventor教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/solidworks/','SolidWorks');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lightwave/','LightWave');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dchuli/','3D处理工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dsucai/','3D模型素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jingguan/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiaoshou/','市场营销');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/guanli/','管理学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jingji/','经济学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jinrong/','金融学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gupiao/','股票/基金');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/kuaiji/','会计/财务管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qiyeguanli/','企业管理知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jingji/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jingji/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shenghuo/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yangsheng/','健康养生资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/caipu/','菜谱食谱厨艺');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youyun/','幼儿孕妇护理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yvjia/','瑜伽视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/liyi/','生活礼仪形象');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sheying/','数码摄影教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiaju/','家居装修知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiajiao/','家庭教育知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youer/','幼儿教知识育');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gongcheng/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jianzhu/','建筑工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/huanjing/','环境工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dianzi/','电子通信');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qiche/','汽车修理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shengwu/','生物科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dianqi/','电气工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tumu/','土木工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jixie/','机械工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jishu/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jishu/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shehui/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lizhi/','励志成功');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wushu/','武术武艺教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yvshiwei/','余世维讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zengshiqiang/','曾仕强讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/chenanzhi/','陈安之讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yanjiang/','名人演讲讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/baike/','百科全书资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiangqi/','象棋围棋军旗');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shehui/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shehui/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/waiyv/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/riyv/','日语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/fayv/','法语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/deyv/','德语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/hanguoyv/','韩语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lishidili/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lishi/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lishi/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zglishi/','中国历史');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjlishi/','世界历史');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wenhua/','中国文化');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wenxue/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shufa/','书写书法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wudao/','舞蹈体操');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tiyv/','体育球类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiangsheng/','相声小品');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiju/','戏剧影视');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gangqin/','钢琴/小提琴');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jita/','吉他摇滚教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/huihua/','艺术绘画教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/wenxue/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/wenxue/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiaoyv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/chuzhong/','初中教学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gaozhong/','高中教学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gongwuyuan/','公务员考试');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiajiao/','家庭教育知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youer/','幼儿教育');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jiaoyv/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jiaoyv/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/junshi/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lixue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zhexue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yixue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shengwu/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/falv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/kouyv/','英语口语');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yvfa/','英语语法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/xiezuo/','英语写作');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/tingli/','英语听力');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yuedu/','英语阅读');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/cet46/','英语四六级');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/fanyi/','英语翻译');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/cihui/','英语词汇');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/fangfa/','英语方法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yousheng/','英语有声');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/liuxue/','留学英语');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/yingyv/','考研英语复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhengzhi/','考研政治复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/shuxue/','考研数学复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhenti/','考研真题');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhuanye/','考研专业课');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/fudao/','考研辅导');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/os/','操作系统');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/app/','应用软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/net/','网络软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/xitong/','系统工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/duomeiti/','多媒体工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/hangye/','行业软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/kaifa/','编程开发');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/anquan/','安全相关');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jisuanji/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jishu/','工程技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jingji/','经济管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shuli/','数理科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lilun/','理论科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/huanjing/','环境科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/dianzi/','电子技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/huaxue/','化学物理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shehui/','社会科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/anquan/','安全消防');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lishi/','历史地理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/zhexue/','哲学宗教');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shengwu/','生物医学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jiaoyv/','教育学类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/wenxue/','文学艺术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/falv/','政治法律');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/xinli/','心理学书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lizhi/','励志书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/xiaoshuo/','文学小说');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/shipin/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/daxuekecheng/','大学开放视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zkyshipin/','中科院视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qhshipin/','清华大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjshipin/','上海交大视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zsyshipin/','中国石油大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tjshipin/','同济大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','photoshop视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/comjiaocheng/','计算机视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zdshipin/','浙江大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dnshipin/','东南大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jlshipin/','吉林大学视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jisuanji/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jishu/','工程技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jingji/','经济管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shuli/','数理科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lilun/','理论科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/huanjing/','环境科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/dianzi/','电子技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/huaxue/','化学物理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shehui/','社会科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/anquan/','安全消防');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lishi/','历史地理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/zhexue/','哲学宗教');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shengwu/','生物医学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jiaoyv/','教育学类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/wenxue/','文学艺术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/falv/','政治法律');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ziliao/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/sucai/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yousheng/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/zazhi/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocai/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/fanwen/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/shipin/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/daxuekecheng/','大学课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','ps视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/comjiaocheng/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qhshipin/','清华大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjshipin/',' 上海交大');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zdshipin/','浙江大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zsyshipin/','石油大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dnshipin/','东南大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tjshipin/','同济大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jlshipin/','吉林大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zkyshipin/','中科院视频');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yanjiang/','名人演讲');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jisuanji/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jichu/','计算机基础');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/caozuoxitong/','操作系统');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/bangong/','office教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yingjian/','硬件组装');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wangluo/','网络技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/diannao/','电脑杂志');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/renzheng/','IT认证考试');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shujuku/','数据库教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cyvyan/','C语言/C++');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/csharp/','C#教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/asp/','ASP/ASP.NET');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/php/','PHP教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/javascript/','Javascript');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/java/','JAVA教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/hack/','黑客技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/android/','Android教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youxi/','游戏开发');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wangyebiancheng/','网页编程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/flash/','FLASH教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dreamweaver/','Dreamweaver');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wordpress/','WordPress');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/seo/','SEO教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sheji/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/photoshop/','photoshop');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','PS视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/coreldraw/','CoreDRAW');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/illustrator/','Illustrator');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/indesign/','InDesign教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/painter/','Painter教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cad/','CAD教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shejisucai/','平面设计素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/guanggao/','广告设计');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yychuli/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yysucai/','视频素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/aftereffects/','After Effects');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/premiere/','Premiere教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/softimage/','SOFTIMAGE');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dsmax/','3Ds Max教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/maya/','Maya教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/proe/','Pro/ENGINEER');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cinema4d/','Cinema 4D');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/vray/','Vray教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/modo/','Modo教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zbrush/','ZBrush教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/inventor/','Inventor教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/solidworks/','SolidWorks');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lightwave/','LightWave');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dchuli/','3D处理工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dsucai/','3D模型素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jingguan/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiaoshou/','市场营销');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/guanli/','管理学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jingji/','经济学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jinrong/','金融学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gupiao/','股票/基金');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/kuaiji/','会计/财务管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qiyeguanli/','企业管理知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jingji/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jingji/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shenghuo/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yangsheng/','健康养生资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/caipu/','菜谱食谱厨艺');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youyun/','幼儿孕妇护理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yvjia/','瑜伽视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/liyi/','生活礼仪形象');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sheying/','数码摄影教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiaju/','家居装修知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiajiao/','家庭教育知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youer/','幼儿教知识育');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gongcheng/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jianzhu/','建筑工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/huanjing/','环境工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dianzi/','电子通信');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qiche/','汽车修理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shengwu/','生物科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dianqi/','电气工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tumu/','土木工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jixie/','机械工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jishu/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jishu/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shehui/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lizhi/','励志成功');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wushu/','武术武艺教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yvshiwei/','余世维讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zengshiqiang/','曾仕强讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/chenanzhi/','陈安之讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yanjiang/','名人演讲讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/baike/','百科全书资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiangqi/','象棋围棋军旗');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shehui/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shehui/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/waiyv/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/riyv/','日语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/fayv/','法语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/deyv/','德语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/hanguoyv/','韩语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lishidili/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lishi/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lishi/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zglishi/','中国历史');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjlishi/','世界历史');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wenhua/','中国文化');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wenxue/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shufa/','书写书法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wudao/','舞蹈体操');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tiyv/','体育球类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiangsheng/','相声小品');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiju/','戏剧影视');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gangqin/','钢琴/小提琴');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jita/','吉他摇滚教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/huihua/','艺术绘画教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/wenxue/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/wenxue/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiaoyv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/chuzhong/','初中教学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gaozhong/','高中教学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gongwuyuan/','公务员考试');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiajiao/','家庭教育知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youer/','幼儿教育');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jiaoyv/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jiaoyv/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/junshi/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lixue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zhexue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yixue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shengwu/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/falv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/kouyv/','英语口语');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yvfa/','英语语法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/xiezuo/','英语写作');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/tingli/','英语听力');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yuedu/','英语阅读');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/cet46/','英语四六级');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/fanyi/','英语翻译');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/cihui/','英语词汇');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/fangfa/','英语方法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yousheng/','英语有声');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/liuxue/','留学英语');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/yingyv/','考研英语复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhengzhi/','考研政治复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/shuxue/','考研数学复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhenti/','考研真题');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhuanye/','考研专业课');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/fudao/','考研辅导');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/os/','操作系统');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/app/','应用软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/net/','网络软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/xitong/','系统工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/duomeiti/','多媒体工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/hangye/','行业软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/kaifa/','编程开发');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/anquan/','安全相关');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jisuanji/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jishu/','工程技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jingji/','经济管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shuli/','数理科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lilun/','理论科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/huanjing/','环境科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/dianzi/','电子技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/huaxue/','化学物理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shehui/','社会科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/anquan/','安全消防');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lishi/','历史地理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/zhexue/','哲学宗教');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shengwu/','生物医学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jiaoyv/','教育学类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/wenxue/','文学艺术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/falv/','政治法律');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/xinli/','心理学书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lizhi/','励志书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/xiaoshuo/','文学小说');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/shipin/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/daxuekecheng/','大学开放视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zkyshipin/','中科院视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qhshipin/','清华大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjshipin/','上海交大视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zsyshipin/','中国石油大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tjshipin/','同济大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','photoshop视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/comjiaocheng/','计算机视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zdshipin/','浙江大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dnshipin/','东南大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jlshipin/','吉林大学视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jisuanji/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jishu/','工程技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jingji/','经济管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shuli/','数理科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lilun/','理论科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/huanjing/','环境科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/dianzi/','电子技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/huaxue/','化学物理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shehui/','社会科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/anquan/','安全消防');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lishi/','历史地理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/zhexue/','哲学宗教');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shengwu/','生物医学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jiaoyv/','教育学类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/wenxue/','文学艺术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/falv/','政治法律');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ziliao/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/sucai/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yousheng/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/zazhi/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocai/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/fanwen/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/shipin/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/daxuekecheng/','大学课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','ps视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/comjiaocheng/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qhshipin/','清华大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjshipin/',' 上海交大');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zdshipin/','浙江大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zsyshipin/','石油大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dnshipin/','东南大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tjshipin/','同济大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jlshipin/','吉林大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zkyshipin/','中科院视频');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yanjiang/','名人演讲');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jisuanji/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jichu/','计算机基础');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/caozuoxitong/','操作系统');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/bangong/','office教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yingjian/','硬件组装');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wangluo/','网络技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/diannao/','电脑杂志');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/renzheng/','IT认证考试');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shujuku/','数据库教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cyvyan/','C语言/C++');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/csharp/','C#教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/asp/','ASP/ASP.NET');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/php/','PHP教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/javascript/','Javascript');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/java/','JAVA教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/hack/','黑客技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/android/','Android教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youxi/','游戏开发');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wangyebiancheng/','网页编程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/flash/','FLASH教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dreamweaver/','Dreamweaver');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wordpress/','WordPress');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/seo/','SEO教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sheji/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/photoshop/','photoshop');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','PS视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/coreldraw/','CoreDRAW');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/illustrator/','Illustrator');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/indesign/','InDesign教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/painter/','Painter教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cad/','CAD教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shejisucai/','平面设计素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/guanggao/','广告设计');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yychuli/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yysucai/','视频素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/aftereffects/','After Effects');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/premiere/','Premiere教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/softimage/','SOFTIMAGE');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dsmax/','3Ds Max教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/maya/','Maya教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/proe/','Pro/ENGINEER');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cinema4d/','Cinema 4D');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/vray/','Vray教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/modo/','Modo教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zbrush/','ZBrush教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/inventor/','Inventor教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/solidworks/','SolidWorks');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lightwave/','LightWave');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dchuli/','3D处理工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dsucai/','3D模型素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jingguan/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiaoshou/','市场营销');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/guanli/','管理学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jingji/','经济学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jinrong/','金融学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gupiao/','股票/基金');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/kuaiji/','会计/财务管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qiyeguanli/','企业管理知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jingji/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jingji/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shenghuo/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yangsheng/','健康养生资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/caipu/','菜谱食谱厨艺');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youyun/','幼儿孕妇护理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yvjia/','瑜伽视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/liyi/','生活礼仪形象');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sheying/','数码摄影教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiaju/','家居装修知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiajiao/','家庭教育知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youer/','幼儿教知识育');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gongcheng/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jianzhu/','建筑工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/huanjing/','环境工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dianzi/','电子通信');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qiche/','汽车修理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shengwu/','生物科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dianqi/','电气工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tumu/','土木工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jixie/','机械工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jishu/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jishu/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shehui/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lizhi/','励志成功');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wushu/','武术武艺教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yvshiwei/','余世维讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zengshiqiang/','曾仕强讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/chenanzhi/','陈安之讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yanjiang/','名人演讲讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/baike/','百科全书资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiangqi/','象棋围棋军旗');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shehui/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shehui/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/waiyv/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/riyv/','日语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/fayv/','法语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/deyv/','德语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/hanguoyv/','韩语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lishidili/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lishi/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lishi/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zglishi/','中国历史');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjlishi/','世界历史');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wenhua/','中国文化');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wenxue/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shufa/','书写书法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wudao/','舞蹈体操');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tiyv/','体育球类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiangsheng/','相声小品');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiju/','戏剧影视');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gangqin/','钢琴/小提琴');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jita/','吉他摇滚教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/huihua/','艺术绘画教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/wenxue/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/wenxue/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiaoyv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/chuzhong/','初中教学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gaozhong/','高中教学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gongwuyuan/','公务员考试');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiajiao/','家庭教育知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youer/','幼儿教育');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jiaoyv/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jiaoyv/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/junshi/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lixue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zhexue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yixue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shengwu/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/falv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/kouyv/','英语口语');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yvfa/','英语语法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/xiezuo/','英语写作');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/tingli/','英语听力');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yuedu/','英语阅读');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/cet46/','英语四六级');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/fanyi/','英语翻译');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/cihui/','英语词汇');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/fangfa/','英语方法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yousheng/','英语有声');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/liuxue/','留学英语');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/yingyv/','考研英语复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhengzhi/','考研政治复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/shuxue/','考研数学复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhenti/','考研真题');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhuanye/','考研专业课');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/fudao/','考研辅导');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/os/','操作系统');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/app/','应用软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/net/','网络软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/xitong/','系统工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/duomeiti/','多媒体工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/hangye/','行业软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/kaifa/','编程开发');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/anquan/','安全相关');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jisuanji/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jishu/','工程技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jingji/','经济管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shuli/','数理科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lilun/','理论科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/huanjing/','环境科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/dianzi/','电子技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/huaxue/','化学物理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shehui/','社会科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/anquan/','安全消防');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lishi/','历史地理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/zhexue/','哲学宗教');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shengwu/','生物医学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jiaoyv/','教育学类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/wenxue/','文学艺术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/falv/','政治法律');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/xinli/','心理学书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lizhi/','励志书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/xiaoshuo/','文学小说');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/shipin/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/daxuekecheng/','大学开放视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zkyshipin/','中科院视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qhshipin/','清华大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjshipin/','上海交大视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zsyshipin/','中国石油大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tjshipin/','同济大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','photoshop视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/comjiaocheng/','计算机视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zdshipin/','浙江大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dnshipin/','东南大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jlshipin/','吉林大学视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jisuanji/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jishu/','工程技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jingji/','经济管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shuli/','数理科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lilun/','理论科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/huanjing/','环境科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/dianzi/','电子技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/huaxue/','化学物理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shehui/','社会科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/anquan/','安全消防');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lishi/','历史地理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/zhexue/','哲学宗教');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shengwu/','生物医学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jiaoyv/','教育学类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/wenxue/','文学艺术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/falv/','政治法律');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ziliao/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/sucai/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yousheng/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/zazhi/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocai/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/fanwen/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/shipin/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/daxuekecheng/','大学课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','ps视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/comjiaocheng/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qhshipin/','清华大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjshipin/',' 上海交大');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zdshipin/','浙江大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zsyshipin/','石油大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dnshipin/','东南大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tjshipin/','同济大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jlshipin/','吉林大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zkyshipin/','中科院视频');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yanjiang/','名人演讲');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jisuanji/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jichu/','计算机基础');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/caozuoxitong/','操作系统');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/bangong/','office教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yingjian/','硬件组装');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wangluo/','网络技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/diannao/','电脑杂志');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/renzheng/','IT认证考试');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shujuku/','数据库教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cyvyan/','C语言/C++');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/csharp/','C#教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/asp/','ASP/ASP.NET');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/php/','PHP教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/javascript/','Javascript');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/java/','JAVA教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/hack/','黑客技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/android/','Android教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youxi/','游戏开发');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wangyebiancheng/','网页编程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/flash/','FLASH教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dreamweaver/','Dreamweaver');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wordpress/','WordPress');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/seo/','SEO教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sheji/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/photoshop/','photoshop');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','PS视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/coreldraw/','CoreDRAW');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/illustrator/','Illustrator');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/indesign/','InDesign教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/painter/','Painter教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cad/','CAD教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shejisucai/','平面设计素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/guanggao/','广告设计');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yychuli/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yysucai/','视频素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/aftereffects/','After Effects');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/premiere/','Premiere教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/softimage/','SOFTIMAGE');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dsmax/','3Ds Max教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/maya/','Maya教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/proe/','Pro/ENGINEER');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cinema4d/','Cinema 4D');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/vray/','Vray教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/modo/','Modo教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zbrush/','ZBrush教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/inventor/','Inventor教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/solidworks/','SolidWorks');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lightwave/','LightWave');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dchuli/','3D处理工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dsucai/','3D模型素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jingguan/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiaoshou/','市场营销');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/guanli/','管理学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jingji/','经济学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jinrong/','金融学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gupiao/','股票/基金');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/kuaiji/','会计/财务管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qiyeguanli/','企业管理知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jingji/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jingji/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shenghuo/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yangsheng/','健康养生资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/caipu/','菜谱食谱厨艺');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youyun/','幼儿孕妇护理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yvjia/','瑜伽视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/liyi/','生活礼仪形象');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sheying/','数码摄影教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiaju/','家居装修知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiajiao/','家庭教育知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youer/','幼儿教知识育');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gongcheng/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jianzhu/','建筑工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/huanjing/','环境工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dianzi/','电子通信');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qiche/','汽车修理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shengwu/','生物科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dianqi/','电气工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tumu/','土木工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jixie/','机械工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jishu/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jishu/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shehui/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lizhi/','励志成功');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wushu/','武术武艺教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yvshiwei/','余世维讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zengshiqiang/','曾仕强讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/chenanzhi/','陈安之讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yanjiang/','名人演讲讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/baike/','百科全书资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiangqi/','象棋围棋军旗');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shehui/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shehui/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/waiyv/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/riyv/','日语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/fayv/','法语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/deyv/','德语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/hanguoyv/','韩语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lishidili/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lishi/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lishi/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zglishi/','中国历史');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjlishi/','世界历史');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wenhua/','中国文化');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wenxue/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shufa/','书写书法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wudao/','舞蹈体操');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tiyv/','体育球类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiangsheng/','相声小品');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiju/','戏剧影视');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gangqin/','钢琴/小提琴');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jita/','吉他摇滚教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/huihua/','艺术绘画教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/wenxue/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/wenxue/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiaoyv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/chuzhong/','初中教学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gaozhong/','高中教学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gongwuyuan/','公务员考试');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiajiao/','家庭教育知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youer/','幼儿教育');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jiaoyv/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jiaoyv/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/junshi/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lixue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zhexue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yixue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shengwu/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/falv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/kouyv/','英语口语');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yvfa/','英语语法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/xiezuo/','英语写作');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/tingli/','英语听力');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yuedu/','英语阅读');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/cet46/','英语四六级');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/fanyi/','英语翻译');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/cihui/','英语词汇');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/fangfa/','英语方法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yousheng/','英语有声');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/liuxue/','留学英语');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/yingyv/','考研英语复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhengzhi/','考研政治复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/shuxue/','考研数学复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhenti/','考研真题');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhuanye/','考研专业课');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/fudao/','考研辅导');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/os/','操作系统');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/app/','应用软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/net/','网络软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/xitong/','系统工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/duomeiti/','多媒体工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/hangye/','行业软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/kaifa/','编程开发');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/anquan/','安全相关');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jisuanji/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jishu/','工程技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jingji/','经济管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shuli/','数理科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lilun/','理论科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/huanjing/','环境科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/dianzi/','电子技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/huaxue/','化学物理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shehui/','社会科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/anquan/','安全消防');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lishi/','历史地理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/zhexue/','哲学宗教');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shengwu/','生物医学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jiaoyv/','教育学类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/wenxue/','文学艺术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/falv/','政治法律');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/xinli/','心理学书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lizhi/','励志书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/xiaoshuo/','文学小说');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/shipin/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/daxuekecheng/','大学开放视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zkyshipin/','中科院视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qhshipin/','清华大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjshipin/','上海交大视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zsyshipin/','中国石油大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tjshipin/','同济大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','photoshop视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/comjiaocheng/','计算机视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zdshipin/','浙江大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dnshipin/','东南大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jlshipin/','吉林大学视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jisuanji/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jishu/','工程技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jingji/','经济管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shuli/','数理科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lilun/','理论科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/huanjing/','环境科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/dianzi/','电子技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/huaxue/','化学物理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shehui/','社会科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/anquan/','安全消防');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lishi/','历史地理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/zhexue/','哲学宗教');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shengwu/','生物医学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jiaoyv/','教育学类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/wenxue/','文学艺术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/falv/','政治法律');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ziliao/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/sucai/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yousheng/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/zazhi/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocai/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/fanwen/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/shipin/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/daxuekecheng/','大学课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','ps视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/comjiaocheng/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qhshipin/','清华大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjshipin/',' 上海交大');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zdshipin/','浙江大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zsyshipin/','石油大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dnshipin/','东南大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tjshipin/','同济大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jlshipin/','吉林大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zkyshipin/','中科院视频');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yanjiang/','名人演讲');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jisuanji/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jichu/','计算机基础');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/caozuoxitong/','操作系统');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/bangong/','office教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yingjian/','硬件组装');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wangluo/','网络技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/diannao/','电脑杂志');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/renzheng/','IT认证考试');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shujuku/','数据库教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cyvyan/','C语言/C++');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/csharp/','C#教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/asp/','ASP/ASP.NET');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/php/','PHP教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/javascript/','Javascript');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/java/','JAVA教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/hack/','黑客技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/android/','Android教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youxi/','游戏开发');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wangyebiancheng/','网页编程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/flash/','FLASH教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dreamweaver/','Dreamweaver');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wordpress/','WordPress');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/seo/','SEO教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sheji/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/photoshop/','photoshop');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','PS视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/coreldraw/','CoreDRAW');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/illustrator/','Illustrator');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/indesign/','InDesign教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/painter/','Painter教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cad/','CAD教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shejisucai/','平面设计素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/guanggao/','广告设计');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yychuli/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yysucai/','视频素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/aftereffects/','After Effects');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/premiere/','Premiere教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/softimage/','SOFTIMAGE');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dsmax/','3Ds Max教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/maya/','Maya教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/proe/','Pro/ENGINEER');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cinema4d/','Cinema 4D');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/vray/','Vray教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/modo/','Modo教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zbrush/','ZBrush教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/inventor/','Inventor教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/solidworks/','SolidWorks');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lightwave/','LightWave');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dchuli/','3D处理工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dsucai/','3D模型素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jingguan/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiaoshou/','市场营销');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/guanli/','管理学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jingji/','经济学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jinrong/','金融学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gupiao/','股票/基金');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/kuaiji/','会计/财务管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qiyeguanli/','企业管理知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jingji/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jingji/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shenghuo/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yangsheng/','健康养生资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/caipu/','菜谱食谱厨艺');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youyun/','幼儿孕妇护理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yvjia/','瑜伽视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/liyi/','生活礼仪形象');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sheying/','数码摄影教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiaju/','家居装修知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiajiao/','家庭教育知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youer/','幼儿教知识育');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gongcheng/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jianzhu/','建筑工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/huanjing/','环境工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dianzi/','电子通信');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qiche/','汽车修理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shengwu/','生物科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dianqi/','电气工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tumu/','土木工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jixie/','机械工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jishu/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jishu/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shehui/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lizhi/','励志成功');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wushu/','武术武艺教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yvshiwei/','余世维讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zengshiqiang/','曾仕强讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/chenanzhi/','陈安之讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yanjiang/','名人演讲讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/baike/','百科全书资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiangqi/','象棋围棋军旗');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shehui/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shehui/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/waiyv/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/riyv/','日语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/fayv/','法语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/deyv/','德语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/hanguoyv/','韩语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lishidili/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lishi/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lishi/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zglishi/','中国历史');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjlishi/','世界历史');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wenhua/','中国文化');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wenxue/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shufa/','书写书法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wudao/','舞蹈体操');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tiyv/','体育球类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiangsheng/','相声小品');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiju/','戏剧影视');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gangqin/','钢琴/小提琴');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jita/','吉他摇滚教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/huihua/','艺术绘画教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/wenxue/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/wenxue/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiaoyv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/chuzhong/','初中教学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gaozhong/','高中教学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gongwuyuan/','公务员考试');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiajiao/','家庭教育知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youer/','幼儿教育');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jiaoyv/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jiaoyv/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/junshi/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lixue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zhexue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yixue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shengwu/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/falv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/kouyv/','英语口语');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yvfa/','英语语法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/xiezuo/','英语写作');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/tingli/','英语听力');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yuedu/','英语阅读');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/cet46/','英语四六级');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/fanyi/','英语翻译');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/cihui/','英语词汇');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/fangfa/','英语方法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yousheng/','英语有声');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/liuxue/','留学英语');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/yingyv/','考研英语复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhengzhi/','考研政治复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/shuxue/','考研数学复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhenti/','考研真题');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhuanye/','考研专业课');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/fudao/','考研辅导');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/os/','操作系统');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/app/','应用软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/net/','网络软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/xitong/','系统工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/duomeiti/','多媒体工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/hangye/','行业软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/kaifa/','编程开发');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/anquan/','安全相关');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jisuanji/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jishu/','工程技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jingji/','经济管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shuli/','数理科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lilun/','理论科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/huanjing/','环境科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/dianzi/','电子技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/huaxue/','化学物理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shehui/','社会科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/anquan/','安全消防');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lishi/','历史地理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/zhexue/','哲学宗教');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shengwu/','生物医学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jiaoyv/','教育学类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/wenxue/','文学艺术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/falv/','政治法律');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/xinli/','心理学书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lizhi/','励志书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/xiaoshuo/','文学小说');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/shipin/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/daxuekecheng/','大学开放视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zkyshipin/','中科院视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qhshipin/','清华大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjshipin/','上海交大视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zsyshipin/','中国石油大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tjshipin/','同济大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','photoshop视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/comjiaocheng/','计算机视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zdshipin/','浙江大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dnshipin/','东南大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jlshipin/','吉林大学视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jisuanji/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jishu/','工程技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jingji/','经济管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shuli/','数理科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lilun/','理论科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/huanjing/','环境科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/dianzi/','电子技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/huaxue/','化学物理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shehui/','社会科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/anquan/','安全消防');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lishi/','历史地理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/zhexue/','哲学宗教');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shengwu/','生物医学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jiaoyv/','教育学类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/wenxue/','文学艺术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/falv/','政治法律');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ziliao/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/sucai/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yousheng/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/zazhi/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocai/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/fanwen/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/shipin/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/daxuekecheng/','大学课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','ps视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/comjiaocheng/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qhshipin/','清华大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjshipin/',' 上海交大');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zdshipin/','浙江大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zsyshipin/','石油大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dnshipin/','东南大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tjshipin/','同济大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jlshipin/','吉林大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zkyshipin/','中科院视频');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yanjiang/','名人演讲');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jisuanji/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jichu/','计算机基础');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/caozuoxitong/','操作系统');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/bangong/','office教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yingjian/','硬件组装');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wangluo/','网络技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/diannao/','电脑杂志');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/renzheng/','IT认证考试');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shujuku/','数据库教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cyvyan/','C语言/C++');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/csharp/','C#教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/asp/','ASP/ASP.NET');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/php/','PHP教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/javascript/','Javascript');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/java/','JAVA教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/hack/','黑客技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/android/','Android教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youxi/','游戏开发');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wangyebiancheng/','网页编程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/flash/','FLASH教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dreamweaver/','Dreamweaver');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wordpress/','WordPress');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/seo/','SEO教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sheji/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/photoshop/','photoshop');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','PS视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/coreldraw/','CoreDRAW');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/illustrator/','Illustrator');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/indesign/','InDesign教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/painter/','Painter教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cad/','CAD教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shejisucai/','平面设计素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/guanggao/','广告设计');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yychuli/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yysucai/','视频素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/aftereffects/','After Effects');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/premiere/','Premiere教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/softimage/','SOFTIMAGE');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dsmax/','3Ds Max教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/maya/','Maya教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/proe/','Pro/ENGINEER');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cinema4d/','Cinema 4D');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/vray/','Vray教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/modo/','Modo教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zbrush/','ZBrush教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/inventor/','Inventor教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/solidworks/','SolidWorks');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lightwave/','LightWave');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dchuli/','3D处理工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dsucai/','3D模型素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jingguan/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiaoshou/','市场营销');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/guanli/','管理学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jingji/','经济学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jinrong/','金融学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gupiao/','股票/基金');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/kuaiji/','会计/财务管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qiyeguanli/','企业管理知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jingji/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jingji/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shenghuo/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yangsheng/','健康养生资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/caipu/','菜谱食谱厨艺');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youyun/','幼儿孕妇护理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yvjia/','瑜伽视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/liyi/','生活礼仪形象');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sheying/','数码摄影教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiaju/','家居装修知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiajiao/','家庭教育知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youer/','幼儿教知识育');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gongcheng/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jianzhu/','建筑工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/huanjing/','环境工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dianzi/','电子通信');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qiche/','汽车修理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shengwu/','生物科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dianqi/','电气工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tumu/','土木工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jixie/','机械工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jishu/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jishu/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shehui/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lizhi/','励志成功');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wushu/','武术武艺教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yvshiwei/','余世维讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zengshiqiang/','曾仕强讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/chenanzhi/','陈安之讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yanjiang/','名人演讲讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/baike/','百科全书资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiangqi/','象棋围棋军旗');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shehui/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shehui/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/waiyv/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/riyv/','日语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/fayv/','法语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/deyv/','德语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/hanguoyv/','韩语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lishidili/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lishi/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lishi/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zglishi/','中国历史');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjlishi/','世界历史');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wenhua/','中国文化');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wenxue/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shufa/','书写书法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wudao/','舞蹈体操');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tiyv/','体育球类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiangsheng/','相声小品');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiju/','戏剧影视');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gangqin/','钢琴/小提琴');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jita/','吉他摇滚教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/huihua/','艺术绘画教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/wenxue/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/wenxue/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiaoyv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/chuzhong/','初中教学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gaozhong/','高中教学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gongwuyuan/','公务员考试');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiajiao/','家庭教育知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youer/','幼儿教育');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jiaoyv/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jiaoyv/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/junshi/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lixue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zhexue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yixue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shengwu/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/falv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/kouyv/','英语口语');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yvfa/','英语语法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/xiezuo/','英语写作');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/tingli/','英语听力');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yuedu/','英语阅读');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/cet46/','英语四六级');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/fanyi/','英语翻译');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/cihui/','英语词汇');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/fangfa/','英语方法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/yousheng/','英语有声');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yingyv/liuxue/','留学英语');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/yingyv/','考研英语复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhengzhi/','考研政治复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/shuxue/','考研数学复习资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhenti/','考研真题');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/zhuanye/','考研专业课');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kaoyan/fudao/','考研辅导');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/os/','操作系统');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/app/','应用软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/net/','网络软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/xitong/','系统工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/duomeiti/','多媒体工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/hangye/','行业软件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/kaifa/','编程开发');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ruanjian/anquan/','安全相关');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jisuanji/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jishu/','工程技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jingji/','经济管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shuli/','数理科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lilun/','理论科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/huanjing/','环境科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/dianzi/','电子技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/huaxue/','化学物理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shehui/','社会科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/anquan/','安全消防');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lishi/','历史地理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/zhexue/','哲学宗教');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shengwu/','生物医学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jiaoyv/','教育学类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/wenxue/','文学艺术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/falv/','政治法律');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/xinli/','心理学书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lizhi/','励志书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/xiaoshuo/','文学小说');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/shipin/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/daxuekecheng/','大学开放视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zkyshipin/','中科院视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qhshipin/','清华大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjshipin/','上海交大视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zsyshipin/','中国石油大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tjshipin/','同济大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','photoshop视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/comjiaocheng/','计算机视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zdshipin/','浙江大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dnshipin/','东南大学视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jlshipin/','吉林大学视频课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jisuanji/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jishu/','工程技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jingji/','经济管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shuli/','数理科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lilun/','理论科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/huanjing/','环境科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/dianzi/','电子技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/huaxue/','化学物理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shehui/','社会科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/anquan/','安全消防');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lishi/','历史地理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/zhexue/','哲学宗教');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shengwu/','生物医学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jiaoyv/','教育学类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/wenxue/','文学艺术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/falv/','政治法律');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/ziliao/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/sucai/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/yousheng/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/zazhi/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocai/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/fanwen/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/jiaocheng/shipin/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/daxuekecheng/','大学课程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','ps视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/comjiaocheng/','计算机类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qhshipin/','清华大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjshipin/',' 上海交大');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zdshipin/','浙江大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zsyshipin/','石油大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dnshipin/','东南大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tjshipin/','同济大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jlshipin/','吉林大学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zkyshipin/','中科院视频');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yanjiang/','名人演讲');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jisuanji/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jichu/','计算机基础');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/caozuoxitong/','操作系统');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/bangong/','office教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yingjian/','硬件组装');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wangluo/','网络技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/diannao/','电脑杂志');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/renzheng/','IT认证考试');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shujuku/','数据库教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cyvyan/','C语言/C++');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/csharp/','C#教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/asp/','ASP/ASP.NET');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/php/','PHP教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/javascript/','Javascript');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/java/','JAVA教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/hack/','黑客技术');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/android/','Android教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youxi/','游戏开发');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wangyebiancheng/','网页编程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/flash/','FLASH教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dreamweaver/','Dreamweaver');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wordpress/','WordPress');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/seo/','SEO教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sheji/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/photoshop/','photoshop');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/psjiaocheng/','PS视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/coreldraw/','CoreDRAW');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/illustrator/','Illustrator');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/indesign/','InDesign教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/painter/','Painter教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cad/','CAD教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shejisucai/','平面设计素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/guanggao/','广告设计');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yychuli/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yysucai/','视频素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/aftereffects/','After Effects');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/premiere/','Premiere教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/softimage/','SOFTIMAGE');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dsmax/','3Ds Max教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/maya/','Maya教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/proe/','Pro/ENGINEER');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/cinema4d/','Cinema 4D');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/vray/','Vray教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/modo/','Modo教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zbrush/','ZBrush教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/inventor/','Inventor教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/solidworks/','SolidWorks');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lightwave/','LightWave');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dchuli/','3D处理工具');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/3dsucai/','3D模型素材');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jingguan/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiaoshou/','市场营销');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/guanli/','管理学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jingji/','经济学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jinrong/','金融学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gupiao/','股票/基金');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/kuaiji/','会计/财务管理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qiyeguanli/','企业管理知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jingji/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jingji/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shenghuo/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yangsheng/','健康养生资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/caipu/','菜谱食谱厨艺');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youyun/','幼儿孕妇护理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yvjia/','瑜伽视频教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/liyi/','生活礼仪形象');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sheying/','数码摄影教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiaju/','家居装修知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiajiao/','家庭教育知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youer/','幼儿教知识育');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gongcheng/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jianzhu/','建筑工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/huanjing/','环境工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dianzi/','电子通信');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/qiche/','汽车修理');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shengwu/','生物科学');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/dianqi/','电气工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tumu/','土木工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jixie/','机械工程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jishu/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jishu/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shehui/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lizhi/','励志成功');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wushu/','武术武艺教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yvshiwei/','余世维讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zengshiqiang/','曾仕强讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/chenanzhi/','陈安之讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yanjiang/','名人演讲讲座');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/baike/','百科全书资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiangqi/','象棋围棋军旗');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/shehui/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/shehui/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/waiyv/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/riyv/','日语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/fayv/','法语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/deyv/','德语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/hanguoyv/','韩语资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lishidili/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/lishi/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/lishi/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zglishi/','中国历史');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/sjlishi/','世界历史');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wenhua/','中国文化');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wenxue/','>');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shufa/','书写书法');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/wudao/','舞蹈体操');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/tiyv/','体育球类');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiangsheng/','相声小品');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/xiju/','戏剧影视');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gangqin/','钢琴/小提琴');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jita/','吉他摇滚教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/huihua/','艺术绘画教程');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/wenxue/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/wenxue/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiaoyv/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/chuzhong/','初中教学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gaozhong/','高中教学资料');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/gongwuyuan/','公务员考试');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/jiajiao/','家庭教育知识');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/youer/','幼儿教育');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/book/jiaoyv/','图书书籍');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/kejian/jiaoyv/','学习课件');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/junshi/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/lixue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/zhexue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/yixue/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/shengwu/','');
insert  into `资料库导航`(`md5`,`连接地址`,`项目`) values (NULL,'http://www.xuexic.com/s/falv/','');

/*Table structure for table `起点列表` */

CREATE TABLE `起点列表` (
  `md5` varchar(36) DEFAULT NULL COMMENT 'url的md5值',
  `数据id` varchar(255) DEFAULT NULL,
  `分类1` varchar(255) DEFAULT NULL,
  `小说主页` varchar(255) DEFAULT NULL,
  `分类2` varchar(255) DEFAULT NULL,
  `作者首页` varchar(255) DEFAULT NULL,
  `作者` varchar(255) DEFAULT NULL,
  `发布状态` varchar(255) DEFAULT NULL,
  `书面` varchar(255) DEFAULT NULL,
  `小说简介` varchar(255) DEFAULT NULL,
  `书名` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `起点列表` */

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

insert  into `oauth_client_details`(`client_id`,`resource_ids`,`client_secret`,`scope`,`authorized_grant_types`,`web_server_redirect_uri`,`authorities`,`access_token_validity`,`refresh_token_validity`,`additional_information`,`autoapprove`) values ('wth','wth','{bcrypt}$2a$10$cVSGA2DJHIriCBZR9x0WTOF4QiORuQlrFNEAU/Of4jmqOLAf8AHNu','all','password,refresh_token,authorization_code','http://localhost:82/login,http://localhost:82/,http://192.168.31.87:82/index,http://192.168.31.87:82/,http://175.163.77.229:82/index,http://113.234.169.51:82/index','ROLE_ADMIN',3600,3600,'{\"data\":1}','true');

/*Table structure for table `oauth_code` */

CREATE TABLE `oauth_code` (
  `code` varchar(255) DEFAULT NULL,
  `authentication` varbinary(3000) DEFAULT NULL
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

/*Table structure for table `sys_chart_node` */

CREATE TABLE `sys_chart_node` (
  `uuid` varchar(36) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` varchar(50) DEFAULT 'system',
  `delete_flag` int(11) DEFAULT '0',
  `node_desc` varchar(50) DEFAULT NULL,
  `node_name` varchar(50) DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_chart_node` */

/*Table structure for table `sys_chart_node_cols` */

CREATE TABLE `sys_chart_node_cols` (
  `uuid` varchar(50) NOT NULL,
  `column_name` varchar(50) DEFAULT NULL,
  `column_desc` varchar(50) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` varchar(50) DEFAULT 'system',
  `delete_flag` int(11) DEFAULT '0',
  `node_uuid` varchar(50) DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system',
  `user_index` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_chart_node_cols` */

/*Table structure for table `sys_chart_relationship_type` */

CREATE TABLE `sys_chart_relationship_type` (
  `uuid` varchar(50) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` varchar(50) DEFAULT 'system',
  `delete_flag` int(11) DEFAULT '0',
  `relationship_desc` varchar(50) DEFAULT NULL,
  `relationship_name` varchar(50) DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_chart_relationship_type` */

/*Table structure for table `sys_comn_logs` */

CREATE TABLE `sys_comn_logs` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `args` text COMMENT '请求参数',
  `browser` varchar(1000) DEFAULT NULL COMMENT '浏览器',
  `browser_type` varchar(50) DEFAULT NULL COMMENT '浏览器名称',
  `class_method` varchar(200) DEFAULT NULL COMMENT '方法名',
  `class_name` varchar(500) DEFAULT NULL COMMENT '类名',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `ip` varchar(200) DEFAULT NULL COMMENT 'ip',
  `message` varchar(2000) DEFAULT NULL COMMENT '请求参数',
  `method` varchar(200) DEFAULT NULL COMMENT '请求method',
  `model` varchar(50) DEFAULT NULL COMMENT '手机型号',
  `os` varchar(50) DEFAULT NULL COMMENT '操作系统',
  `param_list` varchar(2000) DEFAULT NULL COMMENT '请求参数',
  `request_long` int(11) DEFAULT NULL COMMENT '请求响应时间',
  `table_name` varchar(100) DEFAULT NULL COMMENT '请求参数',
  `url` varchar(200) DEFAULT NULL COMMENT '地址',
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

insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('1099769BF4B05C80F15033295BF31544','喜欢','E07581EDE4338339DDD292AFC6BE46C1','2018-12-24 23:35:37',NULL,NULL,NULL,'喜欢','47101af9-8094-48a8-af23-1efc7571e1e4','ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51','20939123-6216-47e5-8e0a-1a23707bee23','2018-12-24 23:35:37','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('19726B12E80D077362BBDEE34E2F1C70','小说简介','678C0AADFA38EAF5DB35DC232F1942BD','2018-12-14 23:14:59',NULL,NULL,NULL,'小说简介','d5d90aba-de85-4e1b-9fbb-1b97338fe1c8','0e97cb8d-8a6b-4e00-94c2-4a67594eae55','0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:14:59','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('323CB593A42441987D9CAB096407C9C8','连接地址','97FB850C518F421B468553EA86B41BAB','2018-12-08 18:13:43',NULL,NULL,NULL,'连接地址','f2f24035-ff18-49a3-9082-42aec27285ff','04974933-33bc-47d4-9dd9-903558fc7e60','55f8c977-9ced-4a93-89d8-5afcb56eb36f','2018-12-08 18:13:43','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('37C0D92A2F0E85DA2DEEB2B8C65C94C1','分类2','5A1F59A574CCE6A171FFCA29F30F34DA','2018-12-14 23:14:59',NULL,NULL,NULL,'分类2','3c5b74bb-3009-44da-83aa-1af0d8540b7f','0e97cb8d-8a6b-4e00-94c2-4a67594eae55','0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:14:59','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('3F1485E14EFC2B53E62B5F90DA85D344','地址','D19C4A2ED45EC410E696E50838181E27','2018-12-24 23:35:37',NULL,NULL,NULL,'地址','1ec8b8ae-36a5-44d0-8c05-1f7948ef868b','ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51','20939123-6216-47e5-8e0a-1a23707bee23','2018-12-24 23:35:37','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('467DE2672E3DF292DE8547D73083C766','分类','00E5E75940F92088B5828C5D32E0086F','2018-12-24 23:35:36',NULL,NULL,NULL,'分类','c2c27f3d-58e7-4adc-873e-6f9daed8476c','ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51','20939123-6216-47e5-8e0a-1a23707bee23','2018-12-24 23:35:36','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('4DB02A90837F57A033CF1A4ADA8CB4B2','书面','7929B79EABCC89F75060B9017D1D5D9A','2018-12-14 23:14:58',NULL,NULL,NULL,'书面','cb6aead6-2f7a-4f2f-b742-ac6a002d3934','0e97cb8d-8a6b-4e00-94c2-4a67594eae55','0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:14:58','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('4F9B77C3F84708210BAF2AF6CC0E79FE','图片地址','B5995ACBD453051DFCFD61AE83041700','2018-12-24 23:35:36',NULL,NULL,NULL,'图片地址','029c93c0-d507-4e88-9d8a-564b5fea1565','ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51','20939123-6216-47e5-8e0a-1a23707bee23','2018-12-24 23:35:36','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('640B80273CD5548FFF94C8A17D166F17','书名','1FD675967EF650C487E9C551C789CA6D','2018-12-14 23:14:59',NULL,NULL,NULL,'书名','f3d51f1f-8bd1-4f9e-8c0e-58792da5483b','0e97cb8d-8a6b-4e00-94c2-4a67594eae55','0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:14:59','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('6E567D3B79CE7C3AC1D0C9FDF02288DD','标题','50C63B8B1A9A34254C6B009FF0137468','2018-12-24 23:35:37',NULL,NULL,NULL,'标题','e16f359c-378a-46b4-b935-4ae8366310ad','ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51','20939123-6216-47e5-8e0a-1a23707bee23','2018-12-24 23:35:37','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('9B1B0772577A81812D4BA78141455712','数据id','1B737F538687F3DC75F385CAFA93EC40','2018-12-14 23:14:57',NULL,NULL,NULL,'数据id','0084a468-695e-4d38-8feb-71196f6e4191','0e97cb8d-8a6b-4e00-94c2-4a67594eae55','0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:14:57','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('A475AE56ACFB624AB4E6C0FD069C52F8','小说主页','2E99C80934F9CC675D481C2AFDDB90F2','2018-12-14 23:14:57',NULL,NULL,NULL,'小说主页','378e4b5a-764f-44de-972e-004a8557ce9f','0e97cb8d-8a6b-4e00-94c2-4a67594eae55','0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:14:57','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('A5C1C1314927B2A0BE9DDEEBE8A4DD9D','项目','3A6B92E60972175045D8F935CDAF82A7','2018-12-08 18:13:43',NULL,NULL,NULL,'项目','a5ee9ca0-f40a-4ea0-8e2f-34ed8113f0bf','04974933-33bc-47d4-9dd9-903558fc7e60','55f8c977-9ced-4a93-89d8-5afcb56eb36f','2018-12-08 18:13:43','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('A8CB8AF5A723D4775CF1BF918A38E19B','介绍','493B49A6549EB3DD28A4402F918D95F5','2018-12-24 23:35:36',NULL,NULL,NULL,'介绍','83fa2084-5f4c-4a6f-81af-b1cf1d324526','ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51','20939123-6216-47e5-8e0a-1a23707bee23','2018-12-24 23:35:36','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('CFB32CF6FB2DF0B53B50118C0F8BCAD1','发布状态','84C5C759D6CBC7F797AE7DEBEE45DF5B','2018-12-14 23:14:58',NULL,NULL,NULL,'发布状态','8a2c5468-3236-404b-817a-0345fb5f7f9a','0e97cb8d-8a6b-4e00-94c2-4a67594eae55','0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:14:58','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('D72EBD146728B6050A5F3F38F2A057DA','作者首页','4CA616B9086FF6B03BE496380E0147CE','2018-12-14 23:14:57',NULL,NULL,NULL,'作者首页','4318229f-3130-47ea-baee-6ceb78ef9561','0e97cb8d-8a6b-4e00-94c2-4a67594eae55','0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:14:57','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('E6587FE0BA93DA4D9A967C5404EEB331','作者','ADA7EBC8EFE8BF7A70D55295CBB67BE4','2018-12-14 23:14:58',NULL,NULL,NULL,'作者','77719db3-d3f4-4a30-bd87-27e31c279cea','0e97cb8d-8a6b-4e00-94c2-4a67594eae55','0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:14:58','system');
insert  into `sys_crawler_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`update_time`,`update_user`) values ('F55A41CD80C435FE5AF1BFED18C4B730','分类1','0237C23386FD9AC5F9EA61B95743C478','2018-12-14 23:14:56',NULL,NULL,NULL,'分类1','19318c74-a463-4f8d-84e8-6bf17c289a67','0e97cb8d-8a6b-4e00-94c2-4a67594eae55','0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:14:56','system');

/*Table structure for table `sys_crawler_ruler_colum_info` */

CREATE TABLE `sys_crawler_ruler_colum_info` (
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
  `ruler_uuid` varchar(36) DEFAULT NULL COMMENT '规则id',
  `spl1` varchar(30) DEFAULT NULL COMMENT 'split 1字符串',
  `spl2` int(11) DEFAULT NULL COMMENT '2整型脚标',
  `type` varchar(30) DEFAULT NULL COMMENT '处理方式',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `end` int(11) DEFAULT NULL,
  `param` varchar(500) DEFAULT NULL COMMENT '拼接或替换的字符串',
  `param_new` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `parent_uuid` varchar(36) DEFAULT NULL COMMENT '上一层',
  `md5flag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_crawler_ruler_colum_info` */

insert  into `sys_crawler_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`,`end`,`param`,`param_new`,`start`,`parent_uuid`,`md5flag`) values ('0084a468-695e-4d38-8feb-71196f6e4191',NULL,NULL,NULL,'数据id','2018-12-14 22:48:15',NULL,NULL,NULL,'./div[@class=\"book-img-box\"]/a/@data-bid','0e97cb8d-8a6b-4e00-94c2-4a67594eae55',NULL,NULL,'lxml','2018-12-14 22:48:15','system',NULL,'','',NULL,NULL,NULL);
insert  into `sys_crawler_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`,`end`,`param`,`param_new`,`start`,`parent_uuid`,`md5flag`) values ('029c93c0-d507-4e88-9d8a-564b5fea1565',NULL,NULL,NULL,'图片地址','2018-12-11 23:37:00',NULL,NULL,NULL,'./a/img/@src','ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51',NULL,NULL,'lxml','2018-12-11 23:37:00','system',NULL,'','',NULL,'dddc1b17-a1b4-467b-98a5-03a759a4cfc8',NULL);
insert  into `sys_crawler_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`,`end`,`param`,`param_new`,`start`,`parent_uuid`,`md5flag`) values ('19318c74-a463-4f8d-84e8-6bf17c289a67',NULL,NULL,NULL,'分类1','2018-12-14 22:53:31',NULL,NULL,NULL,'./div[@class=\"book-mid-info\"]/p[@class=\"author\"]/a[@data-eid=\"qd_B60\"]/text()','0e97cb8d-8a6b-4e00-94c2-4a67594eae55',NULL,NULL,'lxml','2018-12-14 22:53:31','system',NULL,'','',NULL,NULL,NULL);
insert  into `sys_crawler_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`,`end`,`param`,`param_new`,`start`,`parent_uuid`,`md5flag`) values ('1ec8b8ae-36a5-44d0-8c05-1f7948ef868b',NULL,NULL,NULL,'地址','2018-12-11 23:36:07',NULL,NULL,NULL,'./h3/a/@href','ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51',NULL,NULL,'lxml','2018-12-11 23:36:07','system',NULL,'','',NULL,'dddc1b17-a1b4-467b-98a5-03a759a4cfc8',NULL);
insert  into `sys_crawler_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`,`end`,`param`,`param_new`,`start`,`parent_uuid`,`md5flag`) values ('378e4b5a-764f-44de-972e-004a8557ce9f',NULL,NULL,NULL,'小说主页','2018-12-14 22:47:05',NULL,NULL,NULL,'./div[@class=\"book-img-box\"]/a/@href','0e97cb8d-8a6b-4e00-94c2-4a67594eae55',NULL,NULL,'strAppendbefor','2018-12-14 22:47:05','system',NULL,'https://','',NULL,NULL,NULL);
insert  into `sys_crawler_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`,`end`,`param`,`param_new`,`start`,`parent_uuid`,`md5flag`) values ('3c5b74bb-3009-44da-83aa-1af0d8540b7f',NULL,NULL,NULL,'分类2','2018-12-14 22:54:10',NULL,NULL,NULL,'./div[@class=\"book-mid-info\"]/p[@class=\"author\"]/a[@data-eid=\"qd_B61\"]/text()','0e97cb8d-8a6b-4e00-94c2-4a67594eae55',NULL,NULL,'lxml','2018-12-14 22:54:10','system',NULL,'','',NULL,NULL,NULL);
insert  into `sys_crawler_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`,`end`,`param`,`param_new`,`start`,`parent_uuid`,`md5flag`) values ('4318229f-3130-47ea-baee-6ceb78ef9561',NULL,NULL,NULL,'作者首页','2018-12-14 22:51:56',NULL,NULL,NULL,'./div[@class=\"book-mid-info\"]/p[@class=\"author\"]/a[@class=\"name\"]/@href','0e97cb8d-8a6b-4e00-94c2-4a67594eae55',NULL,NULL,'strAppendbefor','2018-12-14 22:51:56','system',NULL,'https://','',NULL,NULL,NULL);
insert  into `sys_crawler_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`,`end`,`param`,`param_new`,`start`,`parent_uuid`,`md5flag`) values ('47101af9-8094-48a8-af23-1efc7571e1e4',NULL,NULL,NULL,'喜欢','2018-12-11 23:39:16',NULL,NULL,NULL,'./div[@class=\"jieshao-low\"]/span/text()','ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51',NULL,NULL,'lxml','2018-12-11 23:39:16','system',NULL,'','',NULL,'dddc1b17-a1b4-467b-98a5-03a759a4cfc8',NULL);
insert  into `sys_crawler_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`,`end`,`param`,`param_new`,`start`,`parent_uuid`,`md5flag`) values ('77719db3-d3f4-4a30-bd87-27e31c279cea',NULL,NULL,NULL,'作者','2018-12-14 22:51:02',NULL,NULL,NULL,'./div[@class=\"book-mid-info\"]/p[@class=\"author\"]/a[@class=\"name\"]/text()','0e97cb8d-8a6b-4e00-94c2-4a67594eae55',NULL,NULL,'lxml','2018-12-14 22:51:02','system',NULL,'','',NULL,NULL,NULL);
insert  into `sys_crawler_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`,`end`,`param`,`param_new`,`start`,`parent_uuid`,`md5flag`) values ('83fa2084-5f4c-4a6f-81af-b1cf1d324526',NULL,NULL,NULL,'介绍','2018-12-11 23:37:59',NULL,NULL,NULL,'./div[@class=\"jieshao\"]/text()','ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51',NULL,NULL,'arrayToString','2018-12-11 23:37:59','system',NULL,'','',NULL,'dddc1b17-a1b4-467b-98a5-03a759a4cfc8',NULL);
insert  into `sys_crawler_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`,`end`,`param`,`param_new`,`start`,`parent_uuid`,`md5flag`) values ('8a2c5468-3236-404b-817a-0345fb5f7f9a',NULL,NULL,NULL,'发布状态','2018-12-14 22:55:09',NULL,NULL,NULL,'./div[@class=\"book-mid-info\"]/p[@class=\"author\"]/span/text()','0e97cb8d-8a6b-4e00-94c2-4a67594eae55',NULL,NULL,'lxml','2018-12-14 22:55:09','system',NULL,'','',NULL,NULL,NULL);
insert  into `sys_crawler_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`,`end`,`param`,`param_new`,`start`,`parent_uuid`,`md5flag`) values ('a5ee9ca0-f40a-4ea0-8e2f-34ed8113f0bf',NULL,NULL,NULL,'项目','2018-12-05 22:26:26',NULL,NULL,NULL,'./text()','04974933-33bc-47d4-9dd9-903558fc7e60',NULL,NULL,'lxml','2018-12-05 22:26:26','system',NULL,'','',NULL,NULL,NULL);
insert  into `sys_crawler_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`,`end`,`param`,`param_new`,`start`,`parent_uuid`,`md5flag`) values ('c2c27f3d-58e7-4adc-873e-6f9daed8476c',NULL,NULL,NULL,'分类','2018-12-11 23:39:54',NULL,NULL,NULL,'./div[@class=\"jieshao-low\"]/a/text()','ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51',NULL,NULL,'lxml','2018-12-11 23:39:54','system',NULL,'','',NULL,'dddc1b17-a1b4-467b-98a5-03a759a4cfc8',NULL);
insert  into `sys_crawler_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`,`end`,`param`,`param_new`,`start`,`parent_uuid`,`md5flag`) values ('cb6aead6-2f7a-4f2f-b742-ac6a002d3934',NULL,NULL,NULL,'书面','2018-12-14 22:38:49',NULL,NULL,NULL,'./div[@class=\"book-img-box\"]/a/img/@src','0e97cb8d-8a6b-4e00-94c2-4a67594eae55',NULL,NULL,'strAppendbefor','2018-12-14 22:38:49','system',NULL,'https://','',NULL,NULL,NULL);
insert  into `sys_crawler_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`,`end`,`param`,`param_new`,`start`,`parent_uuid`,`md5flag`) values ('d5d90aba-de85-4e1b-9fbb-1b97338fe1c8',NULL,NULL,NULL,'小说简介','2018-12-14 22:56:31',NULL,NULL,NULL,'./div[@class=\"book-mid-info\"]/p[@class=\"intro\"]/text()','0e97cb8d-8a6b-4e00-94c2-4a67594eae55',NULL,NULL,'lxml','2018-12-14 22:56:31','system',NULL,'','',NULL,NULL,NULL);
insert  into `sys_crawler_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`,`end`,`param`,`param_new`,`start`,`parent_uuid`,`md5flag`) values ('e16f359c-378a-46b4-b935-4ae8366310ad',NULL,NULL,NULL,'标题','2018-12-11 23:35:30',NULL,NULL,NULL,'./h3/a/text()','ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51',NULL,NULL,'lxml','2018-12-11 23:35:30','system',NULL,'','',NULL,'dddc1b17-a1b4-467b-98a5-03a759a4cfc8',NULL);
insert  into `sys_crawler_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`,`end`,`param`,`param_new`,`start`,`parent_uuid`,`md5flag`) values ('f2f24035-ff18-49a3-9082-42aec27285ff',NULL,NULL,NULL,'连接地址','2018-12-05 22:27:07',NULL,NULL,NULL,'./@href','04974933-33bc-47d4-9dd9-903558fc7e60',NULL,NULL,'strAppendbefor','2018-12-05 22:27:07','system',NULL,'http://www.xuexic.com','',NULL,NULL,NULL);
insert  into `sys_crawler_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`update_time`,`update_user`,`end`,`param`,`param_new`,`start`,`parent_uuid`,`md5flag`) values ('f3d51f1f-8bd1-4f9e-8c0e-58792da5483b',NULL,NULL,NULL,'书名','2018-12-14 22:49:09',NULL,NULL,NULL,'./div[@class=\"book-mid-info\"]/h4/a/text()','0e97cb8d-8a6b-4e00-94c2-4a67594eae55',NULL,NULL,'lxml','2018-12-14 22:49:09','system',NULL,'','',NULL,NULL,NULL);

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
  `type` varchar(200) DEFAULT NULL COMMENT ' 规则类别',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `parent_uuid` varchar(36) DEFAULT NULL COMMENT '上一层id',
  `task_uuid` varchar(36) NOT NULL COMMENT '任务id',
  `ruler` varchar(500) DEFAULT NULL COMMENT '规则',
  `items_ruler` varchar(255) DEFAULT NULL,
  `nextpage_ruler` varchar(255) DEFAULT NULL,
  `statue` varchar(255) DEFAULT NULL,
  `parent_dic_params` varchar(255) DEFAULT NULL,
  `parent_dic_uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_crawler_ruler_info` */

insert  into `sys_crawler_ruler_info`(`uuid`,`charset`,`content_info`,`create_time`,`create_user`,`delete_flag`,`discription`,`name`,`type`,`update_time`,`update_user`,`parent_uuid`,`task_uuid`,`ruler`,`items_ruler`,`nextpage_ruler`,`statue`,`parent_dic_params`,`parent_dic_uuid`) values ('04974933-33bc-47d4-9dd9-903558fc7e60',NULL,NULL,'2018-12-05 22:13:31',NULL,NULL,NULL,'导航','navigation_bar','2018-12-05 22:16:38',NULL,'','68103c87-e974-46e2-bf54-a3c1b817ab41','//div[@class=\"site-map\"]/a',NULL,NULL,'完成',NULL,NULL);
insert  into `sys_crawler_ruler_info`(`uuid`,`charset`,`content_info`,`create_time`,`create_user`,`delete_flag`,`discription`,`name`,`type`,`update_time`,`update_user`,`parent_uuid`,`task_uuid`,`ruler`,`items_ruler`,`nextpage_ruler`,`statue`,`parent_dic_params`,`parent_dic_uuid`) values ('0e97cb8d-8a6b-4e00-94c2-4a67594eae55',NULL,NULL,'2018-12-14 22:09:21',NULL,NULL,NULL,'起点列表','listPage','2018-12-17 20:18:21',NULL,NULL,'489b76bb-efd5-4a8f-84a1-f118490536f9','//div[@class=\"wrap\"]/div[@class=\"all-pro-wrap box-center cf\"]/div[@class=\"main-content-wrap fl\"]','//div[@class=\"all-book-list\"]/div[@class=\"book-img-text\"]/ul/li','//div[@class=\"page-box cf\"]//a[@class=\"lbf-pagination-next \"]/@href',NULL,NULL,NULL);
insert  into `sys_crawler_ruler_info`(`uuid`,`charset`,`content_info`,`create_time`,`create_user`,`delete_flag`,`discription`,`name`,`type`,`update_time`,`update_user`,`parent_uuid`,`task_uuid`,`ruler`,`items_ruler`,`nextpage_ruler`,`statue`,`parent_dic_params`,`parent_dic_uuid`) values ('ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51',NULL,NULL,'2018-12-11 20:58:29',NULL,NULL,NULL,'列表','listPage','2018-12-24 23:16:44',NULL,'04974933-33bc-47d4-9dd9-903558fc7e60','68103c87-e974-46e2-bf54-a3c1b817ab41','//div[@class=\"content\"]/div[@class=\"list\"]/div[@class=\"padd w645\"]/div[@class=\"list_left\"]','./div[@class=\"topic-list\"]/ul/li','./div[@class=\"show-page\"]/a[@class=\"next\"]/@href','完成','','f2f24035-ff18-49a3-9082-42aec27285ff');

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

insert  into `sys_crawler_task_info`(`uuid`,`task_name`,`start_time`,`last_excute_time`,`surplus_num`,`success_num`,`task_flag`,`error_num`,`excute_flag`,`excute_batch`,`discription`,`delete_flag`,`create_time`,`create_user`,`update_time`,`update_user`,`charset`,`request_data`,`request_type`,`url`,`url_name`,`url_type`,`web_icon`,`home_statue`) values ('489b76bb-efd5-4a8f-84a1-f118490536f9','起点小说网',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2018-12-14 20:49:47',NULL,'2018-12-14 20:49:47','system','UTF-8','','requestGet','https://www.qidian.com/all',NULL,'小说','http://qidian.gtimg.com/qd/favicon/qd_icon.c443c.ico',NULL);
insert  into `sys_crawler_task_info`(`uuid`,`task_name`,`start_time`,`last_excute_time`,`surplus_num`,`success_num`,`task_flag`,`error_num`,`excute_flag`,`excute_batch`,`discription`,`delete_flag`,`create_time`,`create_user`,`update_time`,`update_user`,`charset`,`request_data`,`request_type`,`url`,`url_name`,`url_type`,`web_icon`,`home_statue`) values ('68103c87-e974-46e2-bf54-a3c1b817ab41','资料库列表分类',NULL,NULL,263,3,0,0,0,NULL,NULL,0,'2018-11-11 12:50:49',NULL,'2018-11-11 12:50:49','system','utf-8','','requestGet','http://www.xuexic.com/about/sitemap.html','学习资料库','资料','https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1989459476,3828863328&fm=58&s=11387193F530499252EC2DFB02001032&bpow=121&bpoh=75','完成');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `cols_width` int(11) DEFAULT '150' COMMENT '每列的宽度',
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

insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('00E5E75940F92088B5828C5D32E0086F',NULL,'分类',255,'分类',8,NULL,'varchar',NULL,NULL,NULL,'2018-12-24 23:34:47',NULL,NULL,NULL,NULL,'20939123-6216-47e5-8e0a-1a23707bee23','2018-12-24 23:34:47',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('0237C23386FD9AC5F9EA61B95743C478',NULL,'分类1',255,'分类1',5,NULL,'varchar',NULL,NULL,NULL,'2018-12-14 23:12:43',NULL,NULL,NULL,NULL,'0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:12:43',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('0417583d-8559-43b2-9664-ff87fb63c887','center','md5值',0,'md5',1,'1','VARCHAR','middle','1',150,'2018-12-05 21:23:25',NULL,0,NULL,1,'55f8c977-9ced-4a93-89d8-5afcb56eb36f','2018-12-05 21:23:25',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('1B737F538687F3DC75F385CAFA93EC40',NULL,'数据id',255,'数据id',4,NULL,'varchar',NULL,NULL,NULL,'2018-12-14 23:12:41',NULL,NULL,NULL,NULL,'0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:12:41',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('1FD675967EF650C487E9C551C789CA6D',NULL,'书名',255,'书名',13,NULL,'varchar',NULL,NULL,NULL,'2018-12-14 23:12:55',NULL,NULL,NULL,NULL,'0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:12:55',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('27560fcb-f749-42f7-82ad-b942836b635c','center','md5值',0,'md5',1,'1','VARCHAR','middle','1',150,'2018-12-14 23:11:43',NULL,0,NULL,1,'0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:11:43',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('2E99C80934F9CC675D481C2AFDDB90F2',NULL,'小说主页',255,'小说主页',6,NULL,'varchar',NULL,NULL,NULL,'2018-12-14 23:12:44',NULL,NULL,NULL,NULL,'0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:12:44',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('3A6B92E60972175045D8F935CDAF82A7',NULL,'项目',255,'项目',5,NULL,'varchar',NULL,NULL,NULL,'2018-12-05 22:27:30',NULL,NULL,NULL,NULL,'55f8c977-9ced-4a93-89d8-5afcb56eb36f','2018-12-05 22:27:30',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('493B49A6549EB3DD28A4402F918D95F5',NULL,'介绍',255,'介绍',7,NULL,'varchar',NULL,NULL,NULL,'2018-12-24 23:34:45',NULL,NULL,NULL,NULL,'20939123-6216-47e5-8e0a-1a23707bee23','2018-12-24 23:34:45',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('4CA616B9086FF6B03BE496380E0147CE',NULL,'作者首页',255,'作者首页',8,NULL,'varchar',NULL,NULL,NULL,'2018-12-14 23:12:47',NULL,NULL,NULL,NULL,'0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:12:47',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('50C63B8B1A9A34254C6B009FF0137468',NULL,'标题',255,'标题',9,NULL,'varchar',NULL,NULL,NULL,'2018-12-24 23:34:48',NULL,NULL,NULL,NULL,'20939123-6216-47e5-8e0a-1a23707bee23','2018-12-24 23:34:48',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('5A1F59A574CCE6A171FFCA29F30F34DA',NULL,'分类2',255,'分类2',7,NULL,'varchar',NULL,NULL,NULL,'2018-12-14 23:12:46',NULL,NULL,NULL,NULL,'0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:12:46',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('678C0AADFA38EAF5DB35DC232F1942BD',NULL,'小说简介',255,'小说简介',12,NULL,'varchar',NULL,NULL,NULL,'2018-12-14 23:12:53',NULL,NULL,NULL,NULL,'0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:12:53',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('7929B79EABCC89F75060B9017D1D5D9A',NULL,'书面',255,'书面',11,NULL,'varchar',NULL,NULL,NULL,'2018-12-14 23:12:52',NULL,NULL,NULL,NULL,'0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:12:52',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('84C5C759D6CBC7F797AE7DEBEE45DF5B',NULL,'发布状态',255,'发布状态',10,NULL,'varchar',NULL,NULL,NULL,'2018-12-14 23:12:50',NULL,NULL,NULL,NULL,'0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:12:50',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('97FB850C518F421B468553EA86B41BAB',NULL,'连接地址',255,'连接地址',4,NULL,'varchar',NULL,NULL,NULL,'2018-12-05 22:27:29',NULL,NULL,NULL,NULL,'55f8c977-9ced-4a93-89d8-5afcb56eb36f','2018-12-05 22:27:29',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('ADA7EBC8EFE8BF7A70D55295CBB67BE4',NULL,'作者',255,'作者',9,NULL,'varchar',NULL,NULL,NULL,'2018-12-14 23:12:49',NULL,NULL,NULL,NULL,'0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:12:49',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('B5995ACBD453051DFCFD61AE83041700',NULL,'图片地址',255,'图片地址',4,NULL,'varchar',NULL,NULL,NULL,'2018-12-24 23:34:41',NULL,NULL,NULL,NULL,'20939123-6216-47e5-8e0a-1a23707bee23','2018-12-24 23:34:41',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('D19C4A2ED45EC410E696E50838181E27',NULL,'地址',255,'地址',5,NULL,'varchar',NULL,NULL,NULL,'2018-12-24 23:34:43',NULL,NULL,NULL,NULL,'20939123-6216-47e5-8e0a-1a23707bee23','2018-12-24 23:34:43',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('E07581EDE4338339DDD292AFC6BE46C1',NULL,'喜欢',255,'喜欢',6,NULL,'varchar',NULL,NULL,NULL,'2018-12-24 23:34:44',NULL,NULL,NULL,NULL,'20939123-6216-47e5-8e0a-1a23707bee23','2018-12-24 23:34:44',NULL,NULL,NULL);
insert  into `sys_dbms_tabs_cols_info`(`uuid`,`cols_align`,`cols_desc`,`cols_length`,`cols_name`,`cols_order`,`cols_switchable`,`cols_type`,`cols_valign`,`cols_visible`,`cols_width`,`create_time`,`create_user`,`delete_flag`,`discription`,`page_list`,`tabs_uuid`,`update_time`,`update_user`,`user_icon`,`user_index`) values ('f341840b-98a1-444b-b4fe-126d9903bfb6','center','md5值',0,'md5',1,'1','VARCHAR','middle','1',150,'2018-12-24 23:33:15',NULL,0,NULL,1,'20939123-6216-47e5-8e0a-1a23707bee23','2018-12-24 23:33:15',NULL,NULL,NULL);

/*Table structure for table `sys_dbms_tabs_info` */

CREATE TABLE `sys_dbms_tabs_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `database_uuid` varchar(36) DEFAULT NULL COMMENT '数据库表id',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `type_uuid` varchar(36) DEFAULT NULL COMMENT '数据库表类型id',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `jdbc_uuid` varchar(36) DEFAULT NULL COMMENT '数据库表id',
  `tabs_desc` varchar(50) DEFAULT NULL COMMENT '表的含义',
  `tabs_name` varchar(60) DEFAULT NULL COMMENT '数据库表名',
  `tabs_order` int(11) DEFAULT NULL COMMENT '数据库表顺序',
  `tabs_rows` int(11) DEFAULT NULL COMMENT '数据库表数据量',
  `tabs_space` int(11) DEFAULT NULL COMMENT '数据库表空间大小',
  `db_type` varchar(50) DEFAULT NULL COMMENT '数据库表空间大小',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_dbms_tabs_info` */

insert  into `sys_dbms_tabs_info`(`uuid`,`create_time`,`create_user`,`database_uuid`,`delete_flag`,`discription`,`type_uuid`,`update_time`,`update_user`,`jdbc_uuid`,`tabs_desc`,`tabs_name`,`tabs_order`,`tabs_rows`,`tabs_space`,`db_type`) values ('0a89e4ec-ee20-48ca-bc4c-d3e5d81e46d0','2018-12-14 23:11:43',NULL,NULL,NULL,NULL,'D1BE1521CF4BBE1222581AA7F625F00E','2018-12-14 23:11:43',NULL,'37bf8ca3-ab55-4b1b-bb6c-15a6ebaeb247','起点列表','起点列表',NULL,NULL,NULL,NULL);
insert  into `sys_dbms_tabs_info`(`uuid`,`create_time`,`create_user`,`database_uuid`,`delete_flag`,`discription`,`type_uuid`,`update_time`,`update_user`,`jdbc_uuid`,`tabs_desc`,`tabs_name`,`tabs_order`,`tabs_rows`,`tabs_space`,`db_type`) values ('20939123-6216-47e5-8e0a-1a23707bee23','2018-12-24 23:33:14',NULL,NULL,NULL,NULL,'9DE11C3661DB7E2FD95A5769E842A84A','2018-12-24 23:33:14',NULL,'37bf8ca3-ab55-4b1b-bb6c-15a6ebaeb247','学习资料列表','学习资料列表',NULL,NULL,NULL,NULL);
insert  into `sys_dbms_tabs_info`(`uuid`,`create_time`,`create_user`,`database_uuid`,`delete_flag`,`discription`,`type_uuid`,`update_time`,`update_user`,`jdbc_uuid`,`tabs_desc`,`tabs_name`,`tabs_order`,`tabs_rows`,`tabs_space`,`db_type`) values ('2488fcc9-ff7a-11e8-a54c-00163e01564d','2018-12-14 16:28:07','admin',NULL,0,NULL,NULL,'2018-12-14 16:28:07','admin','37bf8ca3-ab55-4b1b-bb6c-15a6ebaeb247','书简介','application.baidu',NULL,38,NULL,'mysql');
insert  into `sys_dbms_tabs_info`(`uuid`,`create_time`,`create_user`,`database_uuid`,`delete_flag`,`discription`,`type_uuid`,`update_time`,`update_user`,`jdbc_uuid`,`tabs_desc`,`tabs_name`,`tabs_order`,`tabs_rows`,`tabs_space`,`db_type`) values ('55f8c977-9ced-4a93-89d8-5afcb56eb36f','2018-12-05 21:23:25',NULL,NULL,NULL,NULL,NULL,'2018-12-05 21:23:25',NULL,'37bf8ca3-ab55-4b1b-bb6c-15a6ebaeb247','资料库导航','资料库导航',NULL,NULL,NULL,NULL);
insert  into `sys_dbms_tabs_info`(`uuid`,`create_time`,`create_user`,`database_uuid`,`delete_flag`,`discription`,`type_uuid`,`update_time`,`update_user`,`jdbc_uuid`,`tabs_desc`,`tabs_name`,`tabs_order`,`tabs_rows`,`tabs_space`,`db_type`) values ('9720942a-0677-11e9-a54c-00163e01564d','2018-12-23 13:57:21','user',NULL,0,NULL,NULL,'2018-12-23 13:57:21','user','37bf8ca3-ab55-4b1b-bb6c-15a6ebaeb247','','application.oauth_client_details',NULL,1,NULL,'mysql');

/*Table structure for table `sys_dbms_tabs_jdbc_info` */

CREATE TABLE `sys_dbms_tabs_jdbc_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `database_name` varchar(50) DEFAULT NULL COMMENT '数据库名称',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `driver` varchar(200) DEFAULT NULL COMMENT '数据库驱动类',
  `ip` varchar(100) DEFAULT NULL COMMENT 'ip地址',
  `password` varchar(200) DEFAULT NULL COMMENT '用户密码',
  `port` varchar(10) DEFAULT NULL COMMENT '端口号',
  `type` varchar(200) DEFAULT NULL COMMENT '数据库类型',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名称',
  `db_type` varchar(10) DEFAULT NULL COMMENT '端口号',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_dbms_tabs_jdbc_info` */

insert  into `sys_dbms_tabs_jdbc_info`(`uuid`,`create_time`,`create_user`,`database_name`,`delete_flag`,`discription`,`driver`,`ip`,`password`,`port`,`type`,`update_time`,`update_user`,`username`,`db_type`) values ('37bf8ca3-ab55-4b1b-bb6c-15a6ebaeb247','2018-06-05 21:38:10',NULL,'application',NULL,'应用平台数据库 ',NULL,'localhost','514840279@qq.com','3306','mysql','2018-06-06 21:19:08',NULL,'root',NULL);

/*Table structure for table `sys_dbms_tabs_type_info` */

CREATE TABLE `sys_dbms_tabs_type_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `type_class` varchar(36) DEFAULT NULL COMMENT '类型',
  `type_icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `type_name` varchar(36) DEFAULT NULL COMMENT '类型名',
  `type_order` int(11) DEFAULT NULL COMMENT '类型排序',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_dbms_tabs_type_info` */

insert  into `sys_dbms_tabs_type_info`(`uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`type_class`,`type_icon`,`type_name`,`type_order`,`update_time`,`update_user`) values ('9DE11C3661DB7E2FD95A5769E842A84A','2018-12-05 21:24:03',NULL,1,'资料',NULL,'','资料',1,'2018-12-05 21:24:03',NULL);
insert  into `sys_dbms_tabs_type_info`(`uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`type_class`,`type_icon`,`type_name`,`type_order`,`update_time`,`update_user`) values ('BB840C8E8D27C61B062ECE192C7FD9D5','2018-06-06 21:17:39',NULL,1,'系统使用表',NULL,'fa fa-config','配置',1,'2018-06-06 21:17:39',NULL);
insert  into `sys_dbms_tabs_type_info`(`uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`type_class`,`type_icon`,`type_name`,`type_order`,`update_time`,`update_user`) values ('D1BE1521CF4BBE1222581AA7F625F00E','2018-12-14 20:54:01',NULL,1,'小说',NULL,'','小说',1,'2018-12-14 20:54:01',NULL);

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

insert  into `sys_dbms_user_index_info`(`uuid`,`user_index`,`user_desc`,`user_placeholder`,`chart`,`multeity`,`user_order`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`,`discription`) values ('1','RYXM','姓名','人员姓名',NULL,1,1,'system','2018-03-12 16:51:48',1,'test','2018-06-05 21:00:29',NULL);
insert  into `sys_dbms_user_index_info`(`uuid`,`user_index`,`user_desc`,`user_placeholder`,`chart`,`multeity`,`user_order`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`,`discription`) values ('174A2FED4B67377743EC4A8E418FECA6','DL','单位','单位名称',NULL,1,200,'test','2018-05-09 09:51:50',1,'test','2018-06-04 15:05:57',NULL);
insert  into `sys_dbms_user_index_info`(`uuid`,`user_index`,`user_desc`,`user_placeholder`,`chart`,`multeity`,`user_order`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`,`discription`) values ('2','DHHM','手机','电话号码',NULL,1,2,'system','2018-03-12 16:51:48',1,'test','2018-06-04 15:06:36',NULL);
insert  into `sys_dbms_user_index_info`(`uuid`,`user_index`,`user_desc`,`user_placeholder`,`chart`,`multeity`,`user_order`,`create_user`,`create_time`,`delete_flag`,`update_user`,`update_time`,`discription`) values ('3','SFZH','身份证号','身份证号',NULL,0,3,'system','2018-03-12 16:51:48',1,'test','2018-06-06 06:49:42',NULL);
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
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('1c8b5e55-c4b7-411f-9f2d-46eff9ae87aa','f7d67906-6d24-48d4-ad72-8eea33d0795b','UTF-8',1,'2018-12-05 23:22:34','test',NULL,NULL,'2018-12-05 23:22:34','test','UTF-8');
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
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('60b96a85-b671-4295-afc3-efc2e263026d','60122aa1-9b97-4075-83c6-861382e88f0f','listItem',0,'2018-12-11 22:15:26','test',NULL,NULL,'2018-12-11 23:23:00','test','列表项');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('616a730f-ba2f-4eed-9571-b2b9ef042311','0c3f5728-1fe0-4861-9720-354827069d1d','requestGet',1,'2018-11-10 10:14:32','test',NULL,NULL,'2018-11-11 12:05:51','test','requestGet');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('63d8faa3-884b-42f5-8d0a-bb4d533d43aa','99313fa6-3004-42d5-ab51-5edc8dd25541','安徽',1,'2018-05-22 18:23:13','test',NULL,NULL,'2018-05-22 18:23:13','test','安徽');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('63f374bf-9a18-43d2-a3e6-d3f61a6aa016','99313fa6-3004-42d5-ab51-5edc8dd25541','西藏',28,'2018-05-22 18:26:40','test',NULL,NULL,'2018-05-22 18:26:40','test','西藏');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('645f0c4a-94bb-4fad-9753-66d4a485d5d4','6ae40ad7-5d61-4cec-a93e-77aedda734e8','rompie',3,'2018-05-22 18:47:44','test',NULL,NULL,'2018-05-23 13:39:06','test','环形图');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('6c85d5a2-2180-4225-87cb-1676f6c6abc6','6516a59c-b56e-43c6-a172-55c4784ceec3','infographic',2,'2018-05-22 17:44:30','test',NULL,NULL,'2018-05-22 17:44:37','test','图表');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('74fb9b66-487c-4775-a577-c0e55768a506','6516a59c-b56e-43c6-a172-55c4784ceec3','purple-passion',9,'2018-05-22 17:58:55','test',NULL,NULL,'2018-05-22 17:58:55','test','紫色激情');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('758cf8cc-9d80-4e1a-b7ff-0c088d77645a','99313fa6-3004-42d5-ab51-5edc8dd25541','江西',17,'2018-05-22 18:25:22','test',NULL,NULL,'2018-05-22 18:25:22','test','江西');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('7c7bd195-2f8f-4280-8255-e446d333a4f9','99313fa6-3004-42d5-ab51-5edc8dd25541','山东',21,'2018-05-22 18:25:58','test',NULL,NULL,'2018-05-22 18:25:58','test','山东');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('7d41c4ad-bb00-4858-b5a7-3c2671a87ed5','60122aa1-9b97-4075-83c6-861382e88f0f','nextPage',0,'2018-12-11 23:23:19','test',NULL,NULL,'2018-12-11 23:23:27','test','下一页');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('7d5c1b1b-b6cb-4f58-8e13-604f3f4eea82','99313fa6-3004-42d5-ab51-5edc8dd25541','四川',26,'2018-05-22 18:26:26','test',NULL,NULL,'2018-05-22 18:26:26','test','四川');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('7f506a1b-0d35-4e0d-b067-aa086a7d9096','6ae40ad7-5d61-4cec-a93e-77aedda734e8','nanpie',8,'2018-05-31 11:57:28','test',NULL,NULL,'2018-05-31 11:57:40','test','南丁格尔');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('7faf9a5f-da84-4b26-8d9c-8f35920988f4','230ac982-bdb7-44d9-91fa-8641d25d3cf1','next_a_page',2,'2018-11-28 07:00:27','test',NULL,NULL,'2018-11-28 07:03:53','test','翻页地址');
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('8a727226-5173-4005-832e-4615f83238ae','6516a59c-b56e-43c6-a172-55c4784ceec3','halloween',10,'2018-05-22 17:58:29','test',NULL,NULL,'2018-05-22 18:43:05','test','万圣节');
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
insert  into `sys_dic_key_list`(`uuid`,`name_uuid`,`key_value`,`key_order`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`keyword`) values ('c76ba385-84e5-4bb7-8d9a-70510e7c4514','0c3f5728-1fe0-4861-9720-354827069d1d','BeautifulSoup',0,'2018-12-15 10:56:44','test',NULL,NULL,'2018-12-15 10:56:44','test','BeautifulSoup');
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
insert  into `sys_dic_name`(`uuid`,`name`,`code`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`button_type`) values ('f7d67906-6d24-48d4-ad72-8eea33d0795b','字符集','crawler_charset_type','2018-12-05 23:22:17','test',NULL,NULL,'2018-12-05 23:22:17','test','selected');

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
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('20218BB89AFCD426C8C0C4E9E738E0D2',NULL,'0','关系图管理','fa  fa-desktop',2,'/pages/charts/db/index.html','','system','2018-05-30 06:31:28','system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('2146130099979805B1DE119DCB3BA551',NULL,'4c8820df-6447-11e7-a272-0025d3a93601','用户管理','fa  fa-sitemap',5,'pages/softm/userbase/index.html','项目权限',NULL,NULL,'system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('24898AE2D779238DC4AA443CE053C6AC',NULL,'4C2700CEB8CDAF0C2E3C3AAD9C849DD6','短息测试','fa fa-mobile-phone',0,'pages/user/sendmail/phone.html','短息测试',NULL,NULL,'system',NULL,0,'菜单','fa fa-mobile-phone',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('263A71AB62EFD2B36A5A11BAAC186409',NULL,'102F0D6B58817A998413C6CA1EEC8CBB','用户采集程序管理','fa fa-hand-grab-o',4,'/pages/crawler/code/index.html','','system','2018-11-05 05:40:24','test',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('27F287EF5FED6D51CEB80F4A243AD5C1',NULL,'20218BB89AFCD426C8C0C4E9E738E0D2','节点属性配置','fa fa-gg',2,'/pages/neo4j/nodecols/index.html','','test',NULL,'test',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('2D735A94084C088C781036FE3573FDAE',NULL,'102F0D6B58817A998413C6CA1EEC8CBB','错误日志','fa fa-file-archive-o',3,'/pages/crawler/errmsg/index.html','采集时错误的网页信息','test',NULL,'test',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('36882FDCB61EF181592FEE79B0462BDA',NULL,'102F0D6B58817A998413C6CA1EEC8CBB','结果配置','fa fa-file-code-o',2,'pages/crawler/result/result.html','代码管理','test',NULL,'system',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('39FC2A8FCCCBA07F109261B26A5F5E66',NULL,'4C2700CEB8CDAF0C2E3C3AAD9C849DD6','邮箱测试','fa fa-envelope',1,'pages/user/sendmail/mail.html','邮箱测试',NULL,NULL,'system',NULL,0,'菜单','fa fa-envelope',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('43C35747E9D95AD6576B22547F660150',NULL,'102F0D6B58817A998413C6CA1EEC8CBB','规则管理','fa fa-hourglass-end',1,'/pages/crawler/rule/index.html','','test',NULL,'test',NULL,0,NULL,NULL,NULL,1);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4C2700CEB8CDAF0C2E3C3AAD9C849DD6',NULL,'0','系统工具','fa fa-gg',3,'','','system','2017-09-15 12:03:28','system',NULL,0,'菜单','fa fa-gg',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c87efc1-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','0','数据管理','fa  fa-database',1,'pages/error/404.html','#','佘赐雄',NULL,'超级管理员',NULL,0,'菜单','fa  fa-database',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c87fb94-6447-11e7-a272-0025d3a93601',NULL,'4c8820df-6447-11e7-a272-0025d3a93601','系统配置','fa  fa-navicon',1,'pages/softm/sysmenu/system_function_ztree.html','系统导航功能1',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c87fd09-6447-11e7-a272-0025d3a93601',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','数据库连接','fa  fa-plug',1,'pages/dbms/addr/index.html','动态链接数据库','test',NULL,'超级管理员',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c87fe75-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','2c90838f57c6e02e0157c729a86b000b','数据库备份','glyphicon glyphicon-paste',0,'pages/error/404.html','数据备份、数据还原',NULL,NULL,'超级管理员',NULL,0,'菜单','glyphicon glyphicon-paste',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','数据表管理','fa  fa-table',3,'pages/dbms/table/index.html','数据库表结构','test',NULL,'超级管理员',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c881c82-6447-11e7-a272-0025d3a93601',NULL,'4c8820df-6447-11e7-a272-0025d3a93601','系统管理','fa fa-leaf',0,'pages/softm/system/index.html','#',NULL,NULL,'system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c8820df-6447-11e7-a272-0025d3a93601',NULL,'0','系统管理','fa fa-cog',4,'pages/error/404.html','',NULL,NULL,'',NULL,0,'菜单','fa fa-cog',NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('4c882255-6447-11e7-a272-0025d3a93601',NULL,'4c8820df-6447-11e7-a272-0025d3a93601','机构管理','fa  fa-coffee',2,'pages/softm/organization/index.html','单位组织',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('635056099B80C8F086E581E7B85ED5E2',NULL,'20218BB89AFCD426C8C0C4E9E738E0D2','节点配置','fa fa-map-marker',1,'/pages/neo4j/node/index.html','','system','2019-01-04 13:34:37','test',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('6FB525B0FE6ED405436CEF9B8F0697C5',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','系统数据库维护建议','fa  fa-database',5,'/pages/config/advice/index.html','','system','2018-05-30 06:27:13','system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('8414CF2468DC2CF0365BA00D69363F93',NULL,'20218BB89AFCD426C8C0C4E9E738E0D2','关系配置','fa fa-close',3,'/pages/neo4j/relation/index.html','','test',NULL,'test',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('9419DC15C84351C8F038B2B0E5302FEC',NULL,'4c8820df-6447-11e7-a272-0025d3a93601','角色与权限管理','fa fa-map-marker',3,'pages/softm/department/index.html','单位部门',NULL,NULL,'system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('97514FC17A39AEE6815708CD5B5F7E3E',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','查询关键字类型配置','fa  fa-database',0,'/pages/dbms/userindex/index.html','','test',NULL,'system',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('9BB8634517FB6EF224AA0FC687714CEF',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','多表查询','fa  fa-database',6,'/templates/zhcx/search/index','','test',NULL,'system',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('9F301D22F416F461045596C9786D0C45',NULL,'102F0D6B58817A998413C6CA1EEC8CBB','采集任务','fa fa-cloud-download',0,'/pages/crawler/task/index.html','','test',NULL,'system',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('A554CF49625FE55DA199AAA271F957AD',NULL,'4C2700CEB8CDAF0C2E3C3AAD9C849DD6','字典管理','fa  fa-database',2,'pages/softm/dic/index.html','字典管理',NULL,NULL,'system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('AF7B52BED9BA2A22224EC39FBE0F7C69',NULL,'4C2700CEB8CDAF0C2E3C3AAD9C849DD6','文件导入','fa  fa-database',3,'pages/error/404.html','文件导入','system','2018-02-25 22:09:17','system',NULL,0,NULL,NULL,NULL,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('B0820D770366E897120281EBFDEE276E',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','字段管理','fa fa-opencart',4,'/pages/dbms/column/index.html','','test',NULL,'test',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('BE79315D605E839B40288537CE34EF99',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','图表管理','fa  fa-database',9,'/pages/echarts/chart/index.html','字典管理','test',NULL,'system',NULL,0,NULL,NULL,NULL,0);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`update_user`,`update_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`,`checked`,`home_page`) values ('D62FF237000A6367A489BC398DBA6B02',NULL,'20218BB89AFCD426C8C0C4E9E738E0D2','关系查询','fa fa-dot-circle-o',4,'/pages/neo4j/search/index.html','','system','2019-01-04 13:41:34','test',NULL,0,NULL,NULL,NULL,0);

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
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('0515134492DE20262B4E731F46767A9D','BEB0D81B918DD968D24D6F95AC15A753','2018-05-30 06:24:34',NULL,NULL,NULL,'2019-01-04 13:35:54',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('102F0D6B58817A998413C6CA1EEC8CBB','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:12',NULL,NULL,NULL,'2018-02-12 16:23:12','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('102F0D6B58817A998413C6CA1EEC8CBB','4E83F3C688D1D3E86D02F05F8AC74156','2018-02-23 15:32:25',NULL,NULL,NULL,'2018-02-23 15:32:25','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('102F0D6B58817A998413C6CA1EEC8CBB','54971E77F847C3FC4EE56003A33B35E8','2018-02-12 14:45:27',NULL,NULL,NULL,'2018-02-13 11:12:36',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('102F0D6B58817A998413C6CA1EEC8CBB','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:36',NULL,NULL,NULL,'2018-05-30 06:02:01',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('10960844B57C7A55C9F72C5CED6FD1B8','1A5693C0C9E05009D474899A0CF5F19F','2018-02-23 11:45:12',NULL,NULL,NULL,'2018-02-23 11:45:12','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('10960844B57C7A55C9F72C5CED6FD1B8','4E83F3C688D1D3E86D02F05F8AC74156','2018-03-06 00:02:39',NULL,NULL,NULL,'2018-03-06 00:02:39','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('10960844B57C7A55C9F72C5CED6FD1B8','54971E77F847C3FC4EE56003A33B35E8','2018-02-25 21:56:42',NULL,NULL,NULL,'2018-02-25 21:56:43',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('10960844B57C7A55C9F72C5CED6FD1B8','7EC06172A9CCD45EBF0952A463F4CF95','2018-02-23 11:47:32',NULL,NULL,NULL,'2018-02-23 11:47:32','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('10960844B57C7A55C9F72C5CED6FD1B8','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 11:19:54',NULL,NULL,NULL,'2019-01-04 13:35:51',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('12948BF54A0D7E3481E0043ABBA044DD','BEB0D81B918DD968D24D6F95AC15A753','2018-06-04 15:51:38',NULL,NULL,NULL,'2019-01-04 13:35:54',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('20218BB89AFCD426C8C0C4E9E738E0D2','1A5693C0C9E05009D474899A0CF5F19F','2019-01-04 13:42:26',NULL,NULL,NULL,'2019-01-04 13:42:26','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('20218BB89AFCD426C8C0C4E9E738E0D2','BEB0D81B918DD968D24D6F95AC15A753','2018-05-30 08:03:15',NULL,NULL,NULL,'2019-01-04 13:35:48',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2146130099979805B1DE119DCB3BA551','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:16',NULL,NULL,NULL,'2018-02-12 16:23:16','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2146130099979805B1DE119DCB3BA551','54971E77F847C3FC4EE56003A33B35E8','2018-02-13 11:12:42',NULL,NULL,NULL,'2018-02-25 21:56:45',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2146130099979805B1DE119DCB3BA551','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:37',NULL,NULL,NULL,'2018-02-22 10:59:37','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('2146130099979805B1DE119DCB3BA551','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:26:16',NULL,NULL,NULL,'2018-02-25 21:26:16','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('24898AE2D779238DC4AA443CE053C6AC','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:17',NULL,NULL,NULL,'2018-02-12 16:23:17','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('24898AE2D779238DC4AA443CE053C6AC','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:38',NULL,NULL,NULL,'2019-01-04 13:36:06',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('254DD0B66C981B0100796E1C72C5D677','1A5693C0C9E05009D474899A0CF5F19F','2018-03-05 20:23:04',NULL,NULL,NULL,'2018-03-05 20:23:04','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('254DD0B66C981B0100796E1C72C5D677','81092EBC8FEF970EDA6656EBD1508368','2018-03-06 00:01:21',NULL,NULL,NULL,'2018-03-08 22:13:07',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('254DD0B66C981B0100796E1C72C5D677','BEB0D81B918DD968D24D6F95AC15A753','2018-03-05 20:22:59',NULL,NULL,NULL,'2018-03-11 11:33:07',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('254DD0B66C981B0100796E1C72C5D677','D5DB0E0726FAD166517BC7A49DD75132','2018-03-06 00:01:06',NULL,NULL,NULL,'2018-03-08 22:06:58',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('263A71AB62EFD2B36A5A11BAAC186409','BEB0D81B918DD968D24D6F95AC15A753','2018-11-05 05:40:33',NULL,NULL,NULL,'2018-11-05 05:40:33','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('27F287EF5FED6D51CEB80F4A243AD5C1','1A5693C0C9E05009D474899A0CF5F19F','2019-01-04 13:42:24',NULL,NULL,NULL,'2019-01-04 13:42:24','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('27F287EF5FED6D51CEB80F4A243AD5C1','BEB0D81B918DD968D24D6F95AC15A753','2019-01-04 13:35:47',NULL,NULL,NULL,'2019-01-04 13:35:47','system',1,0);
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
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('39FC2A8FCCCBA07F109261B26A5F5E66','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:38',NULL,NULL,NULL,'2019-01-04 13:36:06',NULL,1,0);
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
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87efc1-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:36',NULL,NULL,NULL,'2019-01-04 13:35:56',NULL,1,0);
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
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87fd09-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:36',NULL,NULL,NULL,'2019-01-04 13:35:51',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:12',NULL,NULL,NULL,'2018-02-12 16:23:12','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601','4E83F3C688D1D3E86D02F05F8AC74156','2018-03-06 00:02:39',NULL,NULL,NULL,'2018-03-06 00:02:39','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8','2018-02-12 16:18:11',NULL,NULL,NULL,'2018-02-25 21:56:43',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601','7EC06172A9CCD45EBF0952A463F4CF95','2018-02-23 11:47:33',NULL,NULL,NULL,'2018-02-23 11:47:33','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:36',NULL,NULL,NULL,'2019-01-04 13:35:52',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881551-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:15',NULL,NULL,NULL,'2018-02-12 16:23:15','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881551-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8','2018-02-12 16:18:16',NULL,NULL,NULL,'2018-02-25 21:56:44',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881551-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:37',NULL,NULL,NULL,'2018-02-22 10:59:37','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881551-6447-11e7-a272-0025d3a93601','D5DB0E0726FAD166517BC7A49DD75132','2018-02-25 21:26:15',NULL,NULL,NULL,'2018-03-08 22:14:20',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881c82-6447-11e7-a272-0025d3a93601','1A5693C0C9E05009D474899A0CF5F19F','2018-02-12 16:23:11',NULL,NULL,NULL,'2018-02-22 11:00:35',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881c82-6447-11e7-a272-0025d3a93601','54971E77F847C3FC4EE56003A33B35E8','2018-02-12 14:47:45',NULL,NULL,NULL,'2018-02-25 21:56:41',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881c82-6447-11e7-a272-0025d3a93601','94CB00CC360FBDE489B42C4FA8E50C60','2018-02-12 15:02:50',NULL,NULL,NULL,'2018-02-25 21:56:17',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('4c881c82-6447-11e7-a272-0025d3a93601','BEB0D81B918DD968D24D6F95AC15A753','2018-02-22 10:59:35',NULL,NULL,NULL,'2019-01-04 13:36:10',NULL,1,0);
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
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('635056099B80C8F086E581E7B85ED5E2','1A5693C0C9E05009D474899A0CF5F19F','2019-01-04 13:42:24',NULL,NULL,NULL,'2019-01-04 13:42:24','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('635056099B80C8F086E581E7B85ED5E2','BEB0D81B918DD968D24D6F95AC15A753','2019-01-04 13:35:46',NULL,NULL,NULL,'2019-01-04 13:35:46','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('65EC730F7B36A4D057F32B81902D1F82','1A5693C0C9E05009D474899A0CF5F19F','2018-03-05 20:23:04',NULL,NULL,NULL,'2018-03-05 20:23:04','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('65EC730F7B36A4D057F32B81902D1F82','81092EBC8FEF970EDA6656EBD1508368','2018-03-06 00:01:21',NULL,NULL,NULL,'2018-03-08 22:13:07',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('65EC730F7B36A4D057F32B81902D1F82','BEB0D81B918DD968D24D6F95AC15A753','2018-03-05 20:22:59',NULL,NULL,NULL,'2018-03-11 11:33:15',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('65EC730F7B36A4D057F32B81902D1F82','D5DB0E0726FAD166517BC7A49DD75132','2018-03-06 00:01:06',NULL,NULL,NULL,'2018-03-08 22:06:58',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('6615A271F099D2FED98ED12E3E1CAAB9','4E83F3C688D1D3E86D02F05F8AC74156','2018-03-06 00:02:56',NULL,NULL,NULL,'2018-03-06 00:02:57',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('6615A271F099D2FED98ED12E3E1CAAB9','BEB0D81B918DD968D24D6F95AC15A753','2018-03-05 20:23:15',NULL,NULL,NULL,'2018-03-05 20:23:15',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('6615A271F099D2FED98ED12E3E1CAAB9','D5DB0E0726FAD166517BC7A49DD75132','2018-03-06 00:01:03',NULL,NULL,NULL,'2018-03-06 00:01:13',NULL,0,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('6615A271F099D2FED98ED12E3E1CAAB9','DAE3AA13AB893DE1065F0E93FE28BDED','2018-03-06 00:01:28',NULL,NULL,NULL,'2018-03-06 00:01:28',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('6FB525B0FE6ED405436CEF9B8F0697C5','BEB0D81B918DD968D24D6F95AC15A753','2018-05-30 06:27:21',NULL,NULL,NULL,'2019-01-04 13:35:53',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('8414CF2468DC2CF0365BA00D69363F93','1A5693C0C9E05009D474899A0CF5F19F','2019-01-04 13:42:25',NULL,NULL,NULL,'2019-01-04 13:42:25','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('8414CF2468DC2CF0365BA00D69363F93','BEB0D81B918DD968D24D6F95AC15A753','2019-01-04 13:35:47',NULL,NULL,NULL,'2019-01-04 13:35:47','system',1,0);
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
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('97514FC17A39AEE6815708CD5B5F7E3E','BEB0D81B918DD968D24D6F95AC15A753','2018-05-30 06:27:20',NULL,NULL,NULL,'2019-01-04 13:35:50',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('9BB8634517FB6EF224AA0FC687714CEF','BEB0D81B918DD968D24D6F95AC15A753','2018-05-30 06:02:00',NULL,NULL,NULL,'2019-01-04 13:35:54',NULL,1,0);
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
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('AF7B52BED9BA2A22224EC39FBE0F7C69','BEB0D81B918DD968D24D6F95AC15A753','2018-02-28 22:03:15',NULL,NULL,NULL,'2019-01-04 13:36:07',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('B0820D770366E897120281EBFDEE276E','BEB0D81B918DD968D24D6F95AC15A753','2018-06-04 16:37:26',NULL,NULL,NULL,'2019-01-04 13:35:52',NULL,1,0);
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
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('BE79315D605E839B40288537CE34EF99','BEB0D81B918DD968D24D6F95AC15A753','2018-02-28 22:03:15',NULL,NULL,NULL,'2019-01-04 13:35:56',NULL,1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('D62FF237000A6367A489BC398DBA6B02','1A5693C0C9E05009D474899A0CF5F19F','2019-01-04 13:42:25',NULL,NULL,NULL,'2019-01-04 13:42:25','system',1,0);
insert  into `sys_roles_jurisdiction_info`(`menu_id`,`role_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`checked`,`ichecked`) values ('D62FF237000A6367A489BC398DBA6B02','BEB0D81B918DD968D24D6F95AC15A753','2019-01-04 13:42:36',NULL,NULL,NULL,'2019-01-04 13:42:36','system',1,0);
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
  `uuid` varchar(32) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `password` varchar(68) NOT NULL,
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
insert  into `sys_user_base_info`(`uuid`,`age`,`password`,`persion_name`,`sex`,`user_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`head_pic`,`email`,`phone`) values ('9988e4e2469e428ab117a1804c5a7b96',NULL,'{bcrypt}$2a$10$ROXROqTPFa/j9JFulB6EP.RJR4A5F9nA46w54rbFj/lAoJMZ./7g.','test','男','test','2018-02-22 10:59:53',NULL,NULL,'','2018-06-04 13:36:25','system',NULL,'4322f21!@EWQ','');
insert  into `sys_user_base_info`(`uuid`,`age`,`password`,`persion_name`,`sex`,`user_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`,`head_pic`,`email`,`phone`) values ('fb48fff75ae24e40b975a9c6ce1a124d',0,'{bcrypt}$2a$10$CNidVdUK3y5ByE0DY8CzHuEJuFiKGAflYFa/or7bRYhrD9r9EDyLO','admin','1','admin','2018-02-12 16:27:07',NULL,NULL,'admin','2018-02-12 16:27:07','system',NULL,'admin','admin');

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
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('1A5693C0C9E05009D474899A0CF5F19F','6ca51a8ac9ea4b80ab4cdcc956d0e311',0,'2018-10-29 21:19:21','11',0,NULL,'2018-10-29 21:19:21','system');
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('1A5693C0C9E05009D474899A0CF5F19F','fb48fff75ae24e40b975a9c6ce1a124d',1,'2018-02-12 18:00:21',NULL,NULL,NULL,'2018-02-12 18:00:21','system');
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('4E83F3C688D1D3E86D02F05F8AC74156','140bd7f6b3b043ac9f70d59749ca3e00',0,'2018-02-23 19:11:17',NULL,NULL,NULL,'2018-02-23 19:11:20',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('4E83F3C688D1D3E86D02F05F8AC74156','461fe0c903244b83a9395233151b0ff9',1,'2018-02-23 15:31:57',NULL,NULL,NULL,'2018-02-23 15:31:57','system');
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('54971E77F847C3FC4EE56003A33B35E8','140bd7f6b3b043ac9f70d59749ca3e00',0,'2018-02-23 19:11:17',NULL,NULL,NULL,'2018-02-23 19:11:20',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('54971E77F847C3FC4EE56003A33B35E8','5b9172560f2f44d69094194b6c96f1c0',0,'2018-02-12 18:01:34',NULL,NULL,NULL,'2018-02-13 11:11:57',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('54971E77F847C3FC4EE56003A33B35E8','99ee69e165d64c10b14e96401484437b',1,'2018-02-13 11:12:55',NULL,NULL,NULL,'2018-02-23 11:48:40',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('54971E77F847C3FC4EE56003A33B35E8','fb48fff75ae24e40b975a9c6ce1a124d',0,'2018-02-12 18:00:21',NULL,NULL,NULL,'2018-02-22 11:00:27',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('7EC06172A9CCD45EBF0952A463F4CF95','0ff36f5ed8f34bd49d1d41b71c49f256',1,'2018-02-23 11:48:38',NULL,NULL,NULL,'2018-02-23 11:48:38','system');
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('7EC06172A9CCD45EBF0952A463F4CF95','140bd7f6b3b043ac9f70d59749ca3e00',0,'2018-02-23 19:11:16',NULL,NULL,NULL,'2018-02-23 19:11:21',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('7EC06172A9CCD45EBF0952A463F4CF95','6ca51a8ac9ea4b80ab4cdcc956d0e311',1,'2018-10-29 21:19:21','11',0,NULL,'2018-10-29 21:19:21','system');
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('7EC06172A9CCD45EBF0952A463F4CF95','770a5ed109b04ababc3a2aece5ca826b',0,'2018-02-23 11:47:59',NULL,NULL,NULL,'2018-02-23 11:48:47',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('7EC06172A9CCD45EBF0952A463F4CF95','99ee69e165d64c10b14e96401484437b',0,'2018-02-23 11:47:55',NULL,NULL,NULL,'2018-02-23 11:48:41',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('81092EBC8FEF970EDA6656EBD1508368','f0cd7117c25947f4bc4e32569e9d6f56',1,'2018-02-25 21:33:49',NULL,NULL,NULL,'2018-02-25 21:33:49','system');
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('94CB00CC360FBDE489B42C4FA8E50C60','5b9172560f2f44d69094194b6c96f1c0',1,'2018-02-12 18:02:25',NULL,NULL,NULL,'2018-02-13 11:14:55',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('94CB00CC360FBDE489B42C4FA8E50C60','99ee69e165d64c10b14e96401484437b',0,'2018-02-13 11:12:59',NULL,NULL,NULL,'2018-02-13 11:18:06',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('94CB00CC360FBDE489B42C4FA8E50C60','fb48fff75ae24e40b975a9c6ce1a124d',0,'2018-02-12 18:00:02',NULL,NULL,NULL,'2018-02-22 11:00:26',NULL);
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('BEB0D81B918DD968D24D6F95AC15A753','6ca51a8ac9ea4b80ab4cdcc956d0e311',0,'2018-10-29 21:19:21','11',0,NULL,'2018-10-29 21:19:21','system');
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('BEB0D81B918DD968D24D6F95AC15A753','9988e4e2469e428ab117a1804c5a7b96',1,'2018-02-22 10:59:58',NULL,NULL,NULL,'2018-02-22 10:59:58','system');
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('D5DB0E0726FAD166517BC7A49DD75132','dc113e1152b845c7a8df8a8a951a9ee7',1,'2018-02-25 21:33:44',NULL,NULL,NULL,'2018-02-25 21:33:44','system');
insert  into `sys_user_roles_info`(`roles_id`,`user_id`,`checked`,`create_time`,`create_user`,`delete_flag`,`discription`,`update_time`,`update_user`) values ('DAE3AA13AB893DE1065F0E93FE28BDED','ed38ac79ccbe4883b74e5dd60f9b00cd',1,'2018-02-25 21:33:54',NULL,NULL,NULL,'2018-02-25 21:33:54','system');

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
