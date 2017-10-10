/*
SQLyog Ultimate v10.51 
MySQL - 5.7.11-log : Database - application
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

/*Table structure for table `baidu_linba` */

DROP TABLE IF EXISTS `baidu_linba`;

CREATE TABLE `baidu_linba` (
  `md5` varchar(36) DEFAULT NULL COMMENT 'url的md5值',
  `url` varchar(2000) DEFAULT NULL COMMENT 'url地址',
  `数据来源` varchar(50) DEFAULT NULL COMMENT '数据来源',
  `datetime` date DEFAULT NULL COMMENT '采集时间',
  `标题` varchar(255) DEFAULT NULL COMMENT '标题',
  `链接` varchar(255) DEFAULT NULL COMMENT '链接'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `baidu_linba` */

insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'确诊为非霍奇金','http://zhidao.baidu.com/question/744394347726119052.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/430240193.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'最长能活多久','http://zhidao.baidu.com/question/2137635782480888268.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1884635313007914588.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'是怎么引起的','http://zhidao.baidu.com/question/559375539346847924.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'霍奇金','http://zhidao.baidu.com/question/518822477945165485.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://muzhi.baidu.com/question/1637900352855296740.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'能治好吗','http://zhidao.baidu.com/question/579989997.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/918376001216706699.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'之家','http://zhidao.baidu.com/question/552244573106798652.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/556690018767143252.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'4级，严重吗','http://zhidao.baidu.com/question/564038373236291404.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'怎么确定颈部淋巴结会不会是','http://zhidao.baidu.com/question/651105521341467325.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/394943746363438685.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'恶性','http://zhidao.baidu.com/question/942085083377078892.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1498900986137508499.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'需要多少医疗费','http://zhidao.baidu.com/question/524182716269492645.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1642377770956646540.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'已经两个月了是否太晚了','http://zhidao.baidu.com/question/1579704326039029500.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1243582956797266339.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'为什么很多时候发现','http://zhidao.baidu.com/question/716189198589507325.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/923762478752163979.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'时已经是晚期了','http://zhidao.baidu.com/question/749932559161433972.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'颈部淋巴结肿大四五年是','http://zhidao.baidu.com/question/1801860482681684747.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/877801387640717492.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'吗','http://zhidao.baidu.com/question/1244015056832296579.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'有没有','http://zhidao.baidu.com/question/877673323457318852.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1609481064610909907.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'治好的患者，求分享','http://zhidao.baidu.com/question/1371760309789009859.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'医生外周T细胞','http://zhidao.baidu.com/question/941740046182960692.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'什么是','http://zhidao.baidu.com/question/100219494.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/584298912.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'癌，有何预兆？','http://zhidao.baidu.com/question/1451584792298833980.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/1759799375337034188.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'癌晚期还能活多长时间？','http://zhidao.baidu.com/question/454190440.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'该注意什么，还有霍奇金','http://zhidao.baidu.com/question/2207862701838368588.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/434771790.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'治愈后会复发吗','http://zhidao.baidu.com/question/150546167.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'需要做什么检查排除咽喉癌或','http://zhidao.baidu.com/question/1959703106901289540.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/150222734.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1865109695049043947.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'化疗后血小板和血红蛋白一直升不上来是什么原因','http://zhidao.baidu.com/question/25401891.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'中国治','http://zhidao.baidu.com/question/2116557576626905827.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/618838848085881372.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'有那些好的医院?急','http://zhidao.baidu.com/question/424988244.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/239800975688218724.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'癌之骨关节痛是什么性质的?','http://zhidao.baidu.com/question/590277880.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'央视这厢有礼20151013选手中有个','http://muzhi.baidu.com/question/1495595787157801019.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'脖子上','http://baobao.baidu.com/question/1254b62b410e3c90f945bed1c32f3e63.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://baobao.baidu.com/question/70a055389db1b3ffd0e47ffa96a3f1a0.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'癌早期什么症状','http://zhidao.baidu.com/question/497067742018730764.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'恶性','http://zhidao.baidu.com/question/2056158596731527227.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/689219103934900284.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'的症状有哪些？','http://zhidao.baidu.com/question/578296828.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'你好，你说你有治疗','http://zhidao.baidu.com/question/1705629890110208020.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/428935583.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'的偏方？','http://zhidao.baidu.com/question/1924017206639649067.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴病只有','http://baobao.baidu.com/question/bb4f20ed668ac43a66da48d06d480057.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'时已经是晚期了','http://zhidao.baidu.com/question/2207928567334003468.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1963394108985087980.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'可以用艾艾贴吗？','http://zhidao.baidu.com/question/460573151818553725.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'前两天确诊为','http://zhidao.baidu.com/question/588445088537831685.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/2015865730638307148.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'癌，现等活检结果期间要怎么办','http://zhidao.baidu.com/question/652189130834909645.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'骨髓穿刺可以检查恶性','http://zhidao.baidu.com/question/2207545075613687708.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/757689136545491204.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'腺','http://zhidao.baidu.com/question/556109668660478612.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/391801290811295365.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'的治疗','http://www.zybang.com/question/8bb356e351da6077cbd2d864350acc83.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'怎么才算','http://baobao.baidu.com/question/df14b5e2e3edc04e916078275e886193.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/164051093.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'结肿大？','http://zhidao.baidu.com/question/1603805273751481907.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'浆细胞性','http://zhidao.baidu.com/question/572088414.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://www.zybang.com/question/9b8d790ac8010efa0476cd1648964337.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'颈部','http://zhidao.baidu.com/question/100171706.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://www.zybang.com/question/9b98966d44727eb1911ce74a1fac6b83.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'血液病的','http://zhidao.baidu.com/question/1433926132956170419.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/918221020668180819.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1368275722039224259.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'如何诊断？求解','http://zhidao.baidu.com/question/918404832593111219.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/524705586.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'癌前期有哪些症状','http://zhidao.baidu.com/question/1430416367436851659.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/175375412743583924.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'能早期发现吗？','http://zhidao.baidu.com/question/434646401948657444.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://baobao.baidu.com/question/b0880a2ef78655bde9b0c081acb5913b.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'一个月可以长多大','http://zhidao.baidu.com/question/1302090782637475619.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'霍奇金','http://zhidao.baidu.com/question/523384704.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/422079567.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'治愈后怎样保养，该注意什么，还有霍...','http://zhidao.baidu.com/question/578138639.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'治疗','http://zhidao.baidu.com/question/2121988855720993067.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/1987995749894545907.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'结哪个医院最好','http://zhidao.baidu.com/question/183512321.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/533592656.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'那一摸就疼是怎么回事','http://zhidao.baidu.com/question/1963394108985087980.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'脖子右边的','http://zhidao.baidu.com/question/183932520.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'谁有颈部','http://zhidao.baidu.com/question/1737503541395160947.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/139227901692504645.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'结肿大，而且是一直那么大可移动不痛的','http://zhidao.baidu.com/question/570855825.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'北京英博医院能治恶性','http://zhidao.baidu.com/question/652568266185734805.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/488614084690931332.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'吗','http://zhidao.baidu.com/question/499069288.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'我妹妹上个月在北京确诊患上了非霍奇金WHO弥漫性大...','http://zhidao.baidu.com/question/395150549.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'食管侵袭性t细胞','http://zhidao.baidu.com/question/309172361519785804.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/2267241000233975548.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'是不是重疾','http://zhidao.baidu.com/question/460573151818553725.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'可以用艾艾贴吗？','http://zhidao.baidu.com/question/1702719948808121060.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'中国','http://zhidao.baidu.com/question/559690778961128204.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/581586522.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'癌哪家医院好','http://zhidao.baidu.com/question/2010689481247633468.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'诱发','http://zhidao.baidu.com/question/501171334830536364.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/941740046182960692.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'癌的病因具体有哪些','http://zhidao.baidu.com/question/175445723355756844.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'我右耳后长了个包，会不会是','http://zhidao.baidu.com/question/919976226918942659.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/714310097859488205.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/111932963.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'的定义','http://zhidao.baidu.com/question/716189198589507325.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'为什么很多时候发现','http://zhidao.baidu.com/question/578734812.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/2052352460103098987.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'时已经是晚期了','http://zhidao.baidu.com/question/923762478752163979.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'紧急求助：','http://zhidao.baidu.com/question/586709733.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/687825944348003004.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'病理化验结果解读','http://zhidao.baidu.com/question/316489073.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/588058056.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'有点不舒服，有谁知道为什么啊','http://zhidao.baidu.com/question/14948570.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'晚期','http://baobao.baidu.com/question/dcb9e33fdd0d24f227803d6d527d73a8.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/294865718.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'会传染吗？','http://baobao.baidu.com/question/740e869fce8f91fa0c73b61c663f0bc5.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1896672365191588220.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'可发的年龄段？','http://zhidao.baidu.com/question/918521132940298459.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'早期颈部','http://zhidao.baidu.com/question/307706862.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/749932559161433972.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'癌的症状','http://zhidao.baidu.com/question/2266002108254117828.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'与霍奇金','http://zhidao.baidu.com/question/31227154.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1430167418612603459.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'肾旁边的','http://zhidao.baidu.com/question/424988244.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/239800975688218724.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'怎么医治','http://zhidao.baidu.com/question/590277880.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://muzhi.baidu.com/question/1495595787157801019.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'严重吗','http://zhidao.baidu.com/question/689152008433956444.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/754815080640211364.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'已经扩散了，还能活多久？已经切除…了一个肾！...','http://baobao.baidu.com/question/5c3cf4492c05f7e15c26c63c6eda1f08.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'良性','http://zhidao.baidu.com/question/467361903.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'严重吗','http://zhidao.baidu.com/question/590277880.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://muzhi.baidu.com/question/1495595787157801019.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'已经扩散了，还能活多久？已经切除…了一个肾！...','http://zhidao.baidu.com/question/689152008433956444.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'良性','http://baobao.baidu.com/question/5c3cf4492c05f7e15c26c63c6eda1f08.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/754815080640211364.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'早期症状会什么？','http://zhidao.baidu.com/question/467361903.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'您好，我是一名鼻NKT细胞','http://zhidao.baidu.com/question/471411699.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/652189130834909645.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'癌，现等活检结果期间要怎么办','http://zhidao.baidu.com/question/2207545075613687708.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'骨髓穿刺可以检查恶性','http://zhidao.baidu.com/question/757689136545491204.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1609801111701782667.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/693690075156445844.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'时已经是晚期了','http://zhidao.baidu.com/question/1609481064610909907.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'脖子的','http://zhidao.baidu.com/question/2207928567334003468.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'，脂肪瘤，哪个难治','http://zhidao.baidu.com/question/460573151818553725.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/588445088537831685.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'可以用艾艾贴吗？','http://zhidao.baidu.com/question/652189130834909645.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'前两天确诊为','http://zhidao.baidu.com/question/2207545075613687708.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/757689136545491204.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'颈部淋巴结肿大四五年是','http://zhidao.baidu.com/question/693690075156445844.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1801860482681684747.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'吗','http://zhidao.baidu.com/question/877801387640717492.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'有没有','http://zhidao.baidu.com/question/1244015056832296579.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/877673323457318852.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'治好的患者，求分享','http://zhidao.baidu.com/question/1609481064610909907.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'脖子的','http://zhidao.baidu.com/question/1371760309789009859.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'非霍奇金弥漫大B','http://zhidao.baidu.com/question/714310097859488205.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/100219494.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'IV期经过美罗华四期治疗为PR...','http://zhidao.baidu.com/question/584298912.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'什么是','http://zhidao.baidu.com/question/1451584792298833980.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'癌，有何预兆？','http://zhidao.baidu.com/question/454190440.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/2207862701838368588.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'癌晚期还能活多长时间？','http://zhidao.baidu.com/question/434771790.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'该注意什么，还有霍奇金','http://zhidao.baidu.com/question/150546167.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1959703106901289540.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'的治疗','http://zhidao.baidu.com/question/391801290811295365.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'脖子的','http://www.zybang.com/question/8bb356e351da6077cbd2d864350acc83.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://baobao.baidu.com/question/df14b5e2e3edc04e916078275e886193.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'，脂肪瘤，哪个难治','http://zhidao.baidu.com/question/164051093.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'怎么才算','http://zhidao.baidu.com/question/1603805273751481907.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/572088414.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'结肿大？','http://www.zybang.com/question/9b8d790ac8010efa0476cd1648964337.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'浆细胞性','http://zhidao.baidu.com/question/100171706.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'弥漫大b型','http://zhidao.baidu.com/question/150222734.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/523384704.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'霍奇金','http://zhidao.baidu.com/question/422079567.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/578138639.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'治愈后怎样保养，该注意什么，还有霍...','http://zhidao.baidu.com/question/2121988855720993067.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'治疗','http://zhidao.baidu.com/question/1987995749894545907.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/183512321.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'结哪个医院最好','http://zhidao.baidu.com/question/533592656.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/1963394108985087980.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'假性','http://zhidao.baidu.com/question/183932520.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1737503541395160947.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'的诊治方法【假性','http://zhidao.baidu.com/question/139227901692504645.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/570855825.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'】','http://zhidao.baidu.com/question/652568266185734805.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'谁有颈部','http://zhidao.baidu.com/question/488614084690931332.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/499069288.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'结肿大，而且是一直那么大可移动不痛的','http://zhidao.baidu.com/question/395150549.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'北京英博医院能治恶性','http://zhidao.baidu.com/question/309172361519785804.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'间变性大细胞','http://www.zybang.com/question/9b98966d44727eb1911ce74a1fac6b83.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'如何治疗..','http://zhidao.baidu.com/question/1702719948808121060.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/559690778961128204.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'可以用艾艾贴吗？','http://zhidao.baidu.com/question/581586522.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'中国','http://zhidao.baidu.com/question/2010689481247633468.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/501171334830536364.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'癌哪家医院好','http://zhidao.baidu.com/question/941740046182960692.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'诱发','http://zhidao.baidu.com/question/175445723355756844.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/919976226918942659.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'我爷爷生病了 挺严重的 非霍奇金','http://zhidao.baidu.com/question/517676225.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://muzhi.baidu.com/question/1887095058604474068.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'4期了。。...','http://zhidao.baidu.com/question/1382845134964459780.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'请问一下这是属于早期非霍奇金','http://zhidao.baidu.com/question/575486327.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/390835259807095205.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'还是中期？能...','http://zhidao.baidu.com/question/1370246056120883019.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://muzhi.baidu.com/question/304458557391469164.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'','http://zhidao.baidu.com/question/473035441.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1047092621367695019.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'治疗花多少钱','http://zhidao.baidu.com/question/1577371287731497380.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'右下颚','http://zhidao.baidu.com/question/1962475885750691860.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/1366612606971852899.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'结。','http://zhidao.baidu.com/question/615888999670669452.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'北京治疗','http://muzhi.baidu.com/question/1765601820343552740.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/685049912826621772.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'最好的中医医院是哪家','http://zhidao.baidu.com/question/531072624.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/429380961029108012.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'扩散到肺上了还能治吗能活多长时间_','http://zhidao.baidu.com/question/1242318541902919779.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/480495479.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/576732160.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/361221523588391052.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'癌的治愈率是多少？','http://zhidao.baidu.com/question/484823832.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'双侧颈部','http://zhidao.baidu.com/question/1703033153498020220.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/1770535060239288380.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'结肿大','http://zhidao.baidu.com/question/688619653814359924.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'家人被查出是弥漫大B细胞','http://www.zybang.com/question/dc4cfef3707d6ab496121238f86afd72.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/480492328.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'，需要化疗，医生推...','http://zhidao.baidu.com/question/755291304206362564.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'转移的','http://muzhi.baidu.com/question/646569047941167005.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://muzhi.baidu.com/question/1796830116611207747.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'我妈妈有','http://zhidao.baidu.com/question/629686089388837004.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/460377265832761285.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'肿瘤我该怎么办，已经晚期了谁有什么办法','http://zhidao.baidu.com/question/1451584792298833980.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'恶性','http://zhidao.baidu.com/question/1759799375337034188.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/923825773625743899.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'最新的治疗方案是什么？哪个医院治疗的...','http://zhidao.baidu.com/question/2121988855720993067.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'该注意什么，还有霍奇金','http://zhidao.baidu.com/question/1963394108985087980.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/460573151818553725.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'治愈后会复发吗','http://zhidao.baidu.com/question/652568266185734805.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'tcr基因重排检测到单克隆重排','http://zhidao.baidu.com/question/202456832659482405.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'用艾灸怎样治疗颈部','http://zhidao.baidu.com/question/436048746.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/1640522075750614940.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'结肿大','http://zhidao.baidu.com/question/1765772153121760980.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'男友得了非霍奇金','http://zhidao.baidu.com/question/571991786.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/104356487.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'该不该结婚','http://zhidao.baidu.com/question/1701796945942885980.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://muzhi.baidu.com/question/267917685658446165.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'癌早期能活多久','http://muzhi.baidu.com/question/1701615044187022980.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/1705091531157453020.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'宝宝发烧三天吃磷酸奥司他韦出疹子，还需要继续吃...','http://zhidao.baidu.com/question/716765156931713365.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'给我看一下是什么东西引气的全身痒有没有什么办法可以','http://zhidao.baidu.com/question/565240687915648764.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'哪位高手给帮忙看一下，几年前做过化验是非 霍奇金...','http://zhidao.baidu.com/question/330882775043959525.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'放疗化疗后','http://zhidao.baidu.com/question/1370755035756288619.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/459654562822948525.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'结没完全消失，该怎么办','http://zhidao.baidu.com/question/924176926950758739.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'女 23岁 刚做过手术 病理诊断结果是Alk阴性 间变性...','http://zhidao.baidu.com/question/877914007497532092.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'怎么治疗小脑','http://zhidao.baidu.com/question/524722518473058165.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'确诊为非霍奇金','http://zhidao.baidu.com/question/744394347726119052.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/430240193.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'最长能活多久','http://zhidao.baidu.com/question/2137635782480888268.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1884635313007914588.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'是怎么引起的','http://zhidao.baidu.com/question/559375539346847924.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'霍奇金','http://zhidao.baidu.com/question/518822477945165485.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://muzhi.baidu.com/question/1637900352855296740.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'能治好吗','http://zhidao.baidu.com/question/579989997.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/918376001216706699.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'之家','http://zhidao.baidu.com/question/552244573106798652.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'脖子','http://zhidao.baidu.com/question/757556633060502284.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/1801412763286643387.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'的地方长了一个硬的块','http://zhidao.baidu.com/question/693749556682798764.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'脸颊右侧有3.点几的林','http://zhidao.baidu.com/question/1695347487362306468.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/309172361519785804.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'结请问该看什','http://zhidao.baidu.com/question/987888612057139979.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'脖子那摸着有硬块会不会是','http://zhidao.baidu.com/question/268247954558818885.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/716381669030303965.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'结肿大','http://zhidao.baidu.com/question/629236503257504044.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'有没有像我妹这样全身','http://zhidao.baidu.com/question/245300381188389484.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1736840947003240827.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'活检切片结果未见癌是什么意思','http://zhidao.baidu.com/question/1695714908890062868.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1992326152170037707.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'化疗之后，消除了，是不是好了','http://zhidao.baidu.com/question/1386782090625771340.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'很怕，到底是','http://zhidao.baidu.com/question/1515881271855298500.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1515259956072213260.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'（癌），还是荨麻疹','http://zhidao.baidu.com/question/940408051446791932.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'身上全身起皮疹就是','http://zhidao.baidu.com/question/459737967443359685.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/2206904566661808748.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'吗','http://zhidao.baidu.com/question/813378259524678092.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/433565015.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'结肿大危险吗？会有什么样的后果','http://muzhi.baidu.com/question/1509965400771430140.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/371853427.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'为什么痒','http://zhidao.baidu.com/question/495835633620362884.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/134772599.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'癌早期症状','http://zhidao.baidu.com/question/328624503454480685.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'颌下肿块，B超结果“颌下淋巴结”，会是','http://zhidao.baidu.com/question/359003597.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1497144848857589299.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'吗？','http://zhidao.baidu.com/question/1049870426602895499.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'T细胞','http://zhidao.baidu.com/question/396039368233192205.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'腹膜后双侧腹股沟','http://zhidao.baidu.com/question/558061003074650532.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/693172478193650124.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'结肿大有事吗','http://zhidao.baidu.com/question/1865861023619678587.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'mm什么意思','http://zhidao.baidu.com/question/524186213456123805.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'乳房上面骨头疼，腋下','http://zhidao.baidu.com/question/1499696225796474579.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/813933352877330612.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'发炎怎么回事','http://zhidao.baidu.com/question/1179823076884018979.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'帮忙看看乳腺癌免疫组化结果！','http://zhidao.baidu.com/question/1899518397056543220.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'我母亲得了大病，我适合给她发布轻松筹求助信息吗？','http://zhidao.baidu.com/question/1887668223797527228.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'膳魔师tcra系列和kbg系列有什么区别','http://zhidao.baidu.com/question/396697033067752045.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'纵隔多发肿大','http://zhidao.baidu.com/question/588433214.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/251063033.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'结','http://zhidao.baidu.com/question/21105895.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'我们家狗狗4岁，得了','http://zhidao.baidu.com/question/1051584476180982459.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/322450145.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'肿瘤，请问有什么药可以治...','http://zhidao.baidu.com/question/2015865730638307148.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'非霍杰金氏恶性','http://zhidao.baidu.com/question/1451481976018258420.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://baobao.baidu.com/question/0b976dc600e600d9a397c69157aafcc5.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'真的没有彻底治愈的方法吗','http://zhidao.baidu.com/question/64409389.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'脑干','http://zhidao.baidu.com/question/558061003074650532.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/813174573762302332.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'确诊了，再怎么去确诊是哪种类型的','http://zhidao.baidu.com/question/2143883073445388708.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/877990143362199732.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'是单纯的','http://zhidao.baidu.com/question/2270292001134911468.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/2206961194437275708.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'发炎还是','http://zhidao.baidu.com/question/364815605153206852.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/1436131541425755819.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'癌吗','http://zhidao.baidu.com/question/1579192623754352780.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'恶性','http://zhidao.baidu.com/question/1451766420140349380.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1694100196354982588.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/1929474878181122147.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'结肿大和','http://zhidao.baidu.com/question/1737439733343448707.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/2121377614985638347.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'结肿瘤有什么区别','http://zhidao.baidu.com/question/1963609130044733540.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'磁共振查出来符合','http://muzhi.baidu.com/question/588542370643462925.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1835642116888750380.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'什么意思啊？是不是就确定...','http://zhidao.baidu.com/question/2142849768359641228.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'个肉疙瘩，还会游动，会不会是','http://zhidao.baidu.com/question/1673134015825339107.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1545393855904636467.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/1307945184412109259.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://muzhi.baidu.com/question/2074198486778053148.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'会死吗','http://zhidao.baidu.com/question/367466747888707404.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'怎样查出','http://zhidao.baidu.com/question/579350566.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/1768588784639477300.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'癌','http://zhidao.baidu.com/question/308105036.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/981250809773660099.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'结病人会死吗','http://zhidao.baidu.com/question/2201641910007288028.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'非霍奇金氏','http://zhidao.baidu.com/question/171378571.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/367819896023517484.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'发展期是多长时间？非霍奇金氏淋...','http://zhidao.baidu.com/question/585925066351663165.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'请问我姐姐得了鼻息肉，去医院做手术的时候做了病...','http://zhidao.baidu.com/question/158915651.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'弥漫性大B细胞','http://zhidao.baidu.com/question/441820945.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/2206904566661808748.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'注射美罗华后第二周开始发烧是...','http://zhidao.baidu.com/question/1432511148819794379.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'颌下淋巴结鸡蛋大了 是不是','http://zhidao.baidu.com/question/329763679090162085.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/447563637.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/1365836780569057259.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'坏死是什么病？','http://zhidao.baidu.com/question/494870670.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'我父亲得了套细胞','http://zhidao.baidu.com/question/339347690.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴瘤','http://zhidao.baidu.com/question/431984274685467284.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'免疫组化结果:sma:(+++).desmin(+++).s100(-).ki-6...','http://zhidao.baidu.com/question/716381669030303965.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'屁股沟中上方有一硬疙瘩，好像从尾骨缝里长出来的...','http://zhidao.baidu.com/question/2271865549305582348.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'请问这是什么情况 什么病','http://zhidao.baidu.com/question/923892639708662499.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'地塞米松的作用及害处','http://zhidao.baidu.com/question/2121609336712265347.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'骨压痛的原因，骨压痛怎么引起的','http://zhidao.baidu.com/question/924020343269550259.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'那维澜洗发水对头发生长方面有何作用','http://zhidao.baidu.com/question/2143736816437240428.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'3周多孩子感冒好了嗓子内壁有白色大片白东西偶尔...','http://zhidao.baidu.com/question/1737480961635258827.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'肉类食品添加剂有哪些 肉类食品添加剂有什么','http://zhidao.baidu.com/question/437689316276086364.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'右侧颈部','http://zhidao.baidu.com/question/2121412940652474027.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/588445088537831685.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'结肿大，形态失常什么原因','http://zhidao.baidu.com/question/1052146980457625739.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'吃格利卫伊马替尼药对','http://zhidao.baidu.com/question/813996153960804212.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/652189130834909645.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'癌患者合对症吗','http://zhidao.baidu.com/question/1707841118537164580.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'我左侧股骨沟长个','http://zhidao.baidu.com/question/1835457533794847100.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/877930088674496292.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'，什么原因','http://zhidao.baidu.com/question/365866247806697612.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
insert  into `baidu_linba`(`md5`,`url`,`数据来源`,`datetime`,`标题`,`链接`) values (NULL,NULL,NULL,NULL,'淋巴','http://zhidao.baidu.com/question/2271865549305582348.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');

/*Table structure for table `qwetest` */

DROP TABLE IF EXISTS `qwetest`;

CREATE TABLE `qwetest` (
  `md5` varchar(36) DEFAULT NULL,
  `url` varchar(2000) DEFAULT NULL,
  `数据来源` varchar(50) DEFAULT NULL,
  `datetime` date DEFAULT NULL COMMENT '采集时间',
  `书名` varchar(50) DEFAULT NULL,
  `连接` varchar(1000) DEFAULT NULL,
  `图片` varchar(1000) DEFAULT NULL,
  `作者` varchar(50) DEFAULT NULL,
  `分类1` varchar(50) DEFAULT NULL,
  `分类2` varchar(50) DEFAULT NULL,
  `简介` varchar(200) DEFAULT NULL,
  `阅读量` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qwetest` */

insert  into `qwetest`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values (NULL,NULL,NULL,NULL,'圣墟','//book.qidian.com/info/1004608738','//qidian.qpic.cn/qdbimg/349573/1004608738/150','辰东','玄幻','东方玄幻','\r                        在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……\r                    ','220.22万字');
insert  into `qwetest`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values (NULL,NULL,NULL,NULL,'我是至尊','//book.qidian.com/info/1005986994','//qidian.qpic.cn/qdbimg/349573/1005986994/150','风凌天下','玄幻','东方玄幻','\r                        药不成丹只是毒，人不成神终成灰。…………天道有缺，人间不平，红尘世外，魍魉横行；哀尔良善，怒尔不争；规则之外，吾来执行。布武天下，屠尽不平；手中有刀，心中有情；\r                    ','68.96万字');
insert  into `qwetest`(`md5`,`url`,`数据来源`,`datetime`,`书名`,`连接`,`图片`,`作者`,`分类1`,`分类2`,`简介`,`阅读量`) values (NULL,NULL,NULL,NULL,'牧神记','//book.qidian.com/info/1009704712','//qidian.qpic.cn/qdbimg/349573/1009704712/150','宅猪','玄幻','东方玄幻','\r                        大墟的祖训说，天黑，别出门。大墟残老村的老弱病残们从江边捡到了一个婴儿，取名秦牧，含辛茹苦将他养大。这一天夜幕降临，黑暗笼罩大墟，秦牧走出了家门……做个春风中荡漾的反派吧！\r                    ','40.66万字');

/*Table structure for table `score` */

DROP TABLE IF EXISTS `score`;

CREATE TABLE `score` (
  `md5` varchar(36) DEFAULT NULL COMMENT 'url的md5值',
  `url` varchar(2000) DEFAULT NULL COMMENT 'url地址',
  `数据来源` varchar(50) DEFAULT NULL COMMENT '数据来源',
  `datetime` date DEFAULT NULL COMMENT '采集时间',
  `图片` varchar(255) DEFAULT NULL,
  `评分` varchar(255) DEFAULT NULL,
  `书名` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `score` */

insert  into `score`(`md5`,`url`,`数据来源`,`datetime`,`图片`,`评分`,`书名`) values (NULL,NULL,NULL,NULL,'//qidian.qpic.cn/qdbimg/349573/1004608738/180\r','0 . 0','圣墟');

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
  `cols_length` int(11) DEFAULT NULL COMMENT '字段长度',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_column_info` */

insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('039d31e8-07a5-443f-9580-52fa2a0dbb39','C06A7B0878844341823CDBF55F03885C','数据来源','数据来源',NULL,3,'VARCHAR','数据来源',NULL,NULL,NULL,NULL,NULL,50);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('058e0e38-08de-4519-96a2-244a5438a7fc','C06A7B0878844341823CDBF55F03885C','datetime','采集时间',NULL,4,'date','采集时间',NULL,NULL,NULL,NULL,NULL,6);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('0AA61F9E1BF7CDE5A72E98AEF0CFF20B','BCFA39FCA088D151372D563DCB03D27C','连接','连接',NULL,2,'varchar','',NULL,NULL,NULL,NULL,NULL,1000);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('12B2CD0394C54DABA61979B88E707E9F','CF1C0EABDE01F3F762DE286FC64D412A','评分','评分',NULL,NULL,'varchar','',NULL,NULL,NULL,NULL,NULL,255);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('1da6fc6b-f378-460a-a57f-15f3923309b7','BCFA39FCA088D151372D563DCB03D27C','datetime','采集时间',NULL,12,'date','采集时间',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('2306c852-6aff-4794-bb57-042a8d54ac5d','C06A7B0878844341823CDBF55F03885C','md5','url的md5值',NULL,1,'VARCHAR','url的md5值',NULL,NULL,NULL,NULL,NULL,36);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('2947ABD772D975BDA8B8702F3C568650','CF1C0EABDE01F3F762DE286FC64D412A','书名','书名',NULL,NULL,'VARCHAR','',NULL,NULL,NULL,NULL,NULL,255);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('374454a4-877c-4037-9686-442d4ff178da','CF1C0EABDE01F3F762DE286FC64D412A','md5','url的md5值',NULL,1,'VARCHAR','url的md5值',NULL,NULL,NULL,NULL,NULL,36);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('3B72B2E7AB14A0D6D3E8994476BDD483','BCFA39FCA088D151372D563DCB03D27C','分类1','分类1',NULL,5,'varchar','',NULL,NULL,NULL,NULL,NULL,50);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('44bcc610-9931-478c-b300-8648aa9854db','C06A7B0878844341823CDBF55F03885C','url','url地址',NULL,2,'VARCHAR','url地址',NULL,NULL,NULL,NULL,NULL,2000);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('4A0C364540DF5352936295B801557E0B','BCFA39FCA088D151372D563DCB03D27C','书名','书名',NULL,1,'varchar','',NULL,NULL,NULL,NULL,NULL,50);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('4D00E1D1A160FDBE26EB793F6D14A074','C06A7B0878844341823CDBF55F03885C','标题','标题',NULL,5,'varchar',NULL,NULL,NULL,NULL,NULL,NULL,255);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('4D440E9E6EB7A47EB56147AF1FC839C4','C06A7B0878844341823CDBF55F03885C','链接','链接',NULL,4,'varchar',NULL,NULL,NULL,NULL,NULL,NULL,255);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('5c9a5680-17e5-49a3-aca4-974e7a6ccd86','CF1C0EABDE01F3F762DE286FC64D412A','datetime','采集时间',NULL,4,'date','采集时间',NULL,NULL,NULL,NULL,NULL,6);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('6638888A422B99E1017BE443DB44B1A6','BCFA39FCA088D151372D563DCB03D27C','分类2','分类2',NULL,6,'varchar','',NULL,NULL,NULL,NULL,NULL,50);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('7064A18D4C49F696FA41D73FA956346E','BCFA39FCA088D151372D563DCB03D27C','简介','简介',NULL,7,'varchar','',NULL,NULL,NULL,NULL,NULL,200);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('A2DCA6B0D8C9F9EE22A3E3E83BE2C9E4','CF1C0EABDE01F3F762DE286FC64D412A','图片','图片',NULL,1,'varchar','',NULL,NULL,NULL,NULL,NULL,255);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('A4EA276D840EAB487440DAB59C8D966F','BCFA39FCA088D151372D563DCB03D27C','图片','图片',NULL,3,'varchar','',NULL,NULL,NULL,NULL,NULL,1000);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('AD2D41265190C2D53D4B49529B267D1C','BCFA39FCA088D151372D563DCB03D27C','作者','作者',NULL,4,'varchar','',NULL,NULL,NULL,NULL,NULL,50);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('bfb51af2-ebbf-47d5-88cf-3cc7e01985de','CF1C0EABDE01F3F762DE286FC64D412A','数据来源','数据来源',NULL,3,'VARCHAR','数据来源',NULL,NULL,NULL,NULL,NULL,50);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('C6019DDF8FEACC1E5BE8A86B9E574954','BCFA39FCA088D151372D563DCB03D27C','阅读量','阅读量',NULL,7,'varchar','',NULL,NULL,NULL,NULL,NULL,10);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('c89b8d10-36ed-497b-a0fa-0cbd1d87cd33','CF1C0EABDE01F3F762DE286FC64D412A','url','url地址',NULL,2,'VARCHAR','url地址',NULL,NULL,NULL,NULL,NULL,2000);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('cda450c8-d0ae-483d-988d-d8a02fa716c6','BCFA39FCA088D151372D563DCB03D27C','md5','url的md5值',NULL,0,'VARCHAR','url的md5值',NULL,NULL,NULL,NULL,NULL,36);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('ea5c0788-b938-4b30-818b-290e7d33de82','BCFA39FCA088D151372D563DCB03D27C','数据来源','数据来源',NULL,11,'VARCHAR','数据来源',NULL,NULL,NULL,NULL,NULL,50);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('f2b0b860-bb7e-4ab3-9d88-7882dfbe1489','BCFA39FCA088D151372D563DCB03D27C','url','url地址',NULL,10,'VARCHAR','url地址',NULL,NULL,NULL,NULL,NULL,2000);

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

insert  into `sys_database_info`(`uuid`,`address`,`create_time`,`create_user`,`database_name`,`delete_flag`,`discription`,`driver`,`password`,`port`,`type`,`updata_time`,`updata_user`,`username`) values ('C355595ACD2E43CB4A2E337E5A56725D','','2017-09-28 07:21:19',NULL,'',0,'','','','','','2017-09-28 07:21:19','system','');
insert  into `sys_database_info`(`uuid`,`address`,`create_time`,`create_user`,`database_name`,`delete_flag`,`discription`,`driver`,`password`,`port`,`type`,`updata_time`,`updata_user`,`username`) values ('F1027C0339119FF6B60244754A30F8A3','','2017-08-16 08:47:28',NULL,'test',0,'','','','','','2017-08-21 18:13:30',NULL,'');

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
  `type` varchar(50) DEFAULT '菜单' COMMENT '菜单还是方法',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu_info` */

insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('102F0D6B58817A998413C6CA1EEC8CBB',NULL,'0','爬虫管理','fa fa-cloud-download',1,'','爬虫管理','system','2017-07-14 09:44:42','system',NULL,0,'菜单');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('2146130099979805B1DE119DCB3BA551',NULL,'A3621F23A4BC0580D08EEF948C0FD30B','用户角色','fa  fa-sitemap',1,'pages/user/userbase/index.html','项目权限',NULL,NULL,'system',NULL,0,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('24898AE2D779238DC4AA443CE053C6AC',NULL,'4C2700CEB8CDAF0C2E3C3AAD9C849DD6','短息测试','fa fa-mobile-phone',1,'pages/user/sendmail/phone.html','短息测试',NULL,NULL,'system',NULL,0,'菜单');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('36882FDCB61EF181592FEE79B0462BDA',NULL,'102F0D6B58817A998413C6CA1EEC8CBB','结果配置','fa fa-file-code-o',2,'pages/crawler/result.html','代码管理',NULL,NULL,'system',NULL,0,'菜单');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('39FC2A8FCCCBA07F109261B26A5F5E66',NULL,'4C2700CEB8CDAF0C2E3C3AAD9C849DD6','邮箱测试','fa fa-envelope',2,'pages/user/sendmail/mail.html','邮箱测试',NULL,NULL,'system',NULL,0,'菜单');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('4C2700CEB8CDAF0C2E3C3AAD9C849DD6',NULL,'0','系统工具','fa fa-gg',5,'','','system','2017-09-15 12:03:28','system',NULL,0,'菜单');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('4c87efc1-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','0','数据管理','fa  fa-database',2,'pages/error/404.html','#','佘赐雄',NULL,'超级管理员',NULL,0,'菜单');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('4c87fa16-6447-11e7-a272-0025d3a93601',NULL,'102F0D6B58817A998413C6CA1EEC8CBB','种子管理','glyphicon glyphicon-link',0,'pages/crawler/seed.html','爬虫管理',NULL,NULL,'system',NULL,0,'菜单');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('4c87fb94-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','4c8820df-6447-11e7-a272-0025d3a93601','系统菜单','fa  fa-navicon',0,'pages/softm/sysmenu/system_function_ztree.html','系统导航功能',NULL,NULL,NULL,NULL,0,'菜单');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('4c87fd09-6447-11e7-a272-0025d3a93601',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','数据库连接','fa  fa-plug',0,'pages/dbm/addr/index.html','动态链接数据库',NULL,NULL,'超级管理员',NULL,0,'菜单');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('4c87fe75-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','2c90838f57c6e02e0157c729a86b000b','数据库备份','glyphicon glyphicon-paste',0,'pages/error/404.html','数据备份、数据还原',NULL,NULL,'超级管理员',NULL,0,'菜单');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','数据表管理','fa  fa-table',2,'pages/dbm/table/index.html','数据库表结构',NULL,NULL,'超级管理员',NULL,0,'菜单');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('4c881551-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','0','客户管理','fa  fa-sitemap',3,'pages/error/404.html','客户管理',NULL,NULL,NULL,NULL,0,'菜单');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('4c881c82-6447-11e7-a272-0025d3a93601',NULL,'4c8820df-6447-11e7-a272-0025d3a93601','项目信息','fa fa-leaf',2,'pages/softm/system/index.html','#',NULL,NULL,'system',NULL,0,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('4c8820df-6447-11e7-a272-0025d3a93601',NULL,'0','系统管理','fa fa-cog',0,'pages/error/404.html','',NULL,NULL,'',NULL,0,'菜单');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('4c882255-6447-11e7-a272-0025d3a93601',NULL,'4c881551-6447-11e7-a272-0025d3a93601','单位组织','fa  fa-coffee',0,'pages/crm/organization/index.html','单位组织',NULL,NULL,NULL,NULL,0,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('554F7723A796A61F88DAB2BC7A37C26C',NULL,NULL,NULL,NULL,NULL,NULL,'1','system','2017-07-13 15:53:43','system',NULL,0,'菜单');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('5633098C6688C98B87CDCD3158F70932',NULL,'A3621F23A4BC0580D08EEF948C0FD30B','用户权限','fa fa-odnoklassniki',0,'pages/user/userroles/index.html','用户管理',NULL,NULL,'system',NULL,0,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('659B89DACAF330FB8A8DDCD276614A7A',NULL,'4c881551-6447-11e7-a272-0025d3a93601','角色权限','fa fa-gears',4,'pages/crm/jurisdiction/index.html','部门权限',NULL,NULL,'system',NULL,0,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('91257EC58A61079D778D4DD08FB7652B',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','数据库表查看','fa fa-list',3,'pages/dbm/table/show-tables.html','数据库表查看','system','2017-09-15 10:11:14','system',NULL,0,'菜单');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('9419DC15C84351C8F038B2B0E5302FEC',NULL,'4c881551-6447-11e7-a272-0025d3a93601','单位部门','fa fa-map-marker',2,'pages/crm/department/index.html','单位部门',NULL,NULL,'system',NULL,0,NULL);
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('A3621F23A4BC0580D08EEF948C0FD30B',NULL,'0','用户管理','fa fa-users',4,'','用户管理',NULL,NULL,'system',NULL,0,'菜单');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('B1700D742F5F1DFCD14830968A159C4F','99c74ada3a1411e6bdcb10bf48e1d36a','4c8820df-6447-11e7-a272-0025d3a93601','单位项目','fa fa-coffee',3,'pages/error/404.html','单位项目',NULL,NULL,'system',NULL,0,'菜单');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`) values ('D59BB80377132CC30538A0FC69BFAC84',NULL,'4c881551-6447-11e7-a272-0025d3a93601','部门角色','fa fa-map',3,'pages/crm/roles/index.html','部门管理',NULL,NULL,'system',NULL,0,NULL);

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

/*Table structure for table `sys_seed_result_ruler_info` */

DROP TABLE IF EXISTS `sys_seed_result_ruler_info`;

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
  `updata_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `updata_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_seed_result_ruler_info` */

/*Table structure for table `sys_seed_ruler_colum_info` */

DROP TABLE IF EXISTS `sys_seed_ruler_colum_info`;

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
  `updata_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `updata_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_seed_ruler_colum_info` */

insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('1DF9BFACB271FD8520A13425C4C8CB6C','','',0,'评分','2017-08-30 07:46:29',NULL,0,'','//div[@class=\"comment-wrap\"]//h4[@id=\"j_bookScore\"]//text()','10E500DC038ED1258F35F4865D378E93','',0,'l','2017-08-30 08:38:11',NULL);
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('402880905da16202015da178dd370007','','',0,'书名','2017-08-02 13:43:59',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//h4//a//text()','402880905da16202015da17540170006','',0,'l','2017-08-02 13:44:41',NULL);
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('402880905da16202015da1796e200008','','',0,'连接','2017-08-02 13:44:36',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//h4//a//@href','402880905da16202015da17540170006','',0,'l','2017-08-02 13:44:36','system');
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('402880905da16202015da17a6eb10009','','',0,'图片','2017-08-02 13:45:41',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-img-box\']//a//img//@src','402880905da16202015da17540170006','',0,'l','2017-08-02 13:45:41','system');
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('402880905da16202015da17c2ad6000a','','',0,'作者','2017-08-02 13:47:35',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//p[@class=\'author\']//a[@class=\'name\']//text()','402880905da16202015da17540170006','',0,'l','2017-08-02 13:47:35','system');
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('402880905da16202015da17e1cca000b','','',0,'分类1','2017-08-02 13:49:42',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//p[@class=\'author\']//a[@data-eid=\'qd_B60\']//text()','402880905da16202015da17540170006','',0,'l','2017-08-02 13:49:42','system');
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('402880905da16202015da17e83fe000c','','',0,'分类2','2017-08-02 13:50:09',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//p[@class=\'author\']//a[@class=\'go-sub-type\']//text()','402880905da16202015da17540170006','',0,'l','2017-08-02 13:50:09','system');
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('402880905da16202015da17f0c11000d','','',0,'简介','2017-08-02 13:50:44',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//p[@class=\'intro\']//text()','402880905da16202015da17540170006','',0,'l','2017-08-02 13:50:44','system');
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('402880905da16202015da17f888a000e','','',0,'阅读量','2017-08-02 13:51:16',NULL,0,'','//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//p[@class=\'update\']//span//text()','402880905da16202015da17540170006','',0,'l','2017-08-02 13:51:16','system');
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('439D99D940E8062B3E3CA8B482FE160B','','',0,'链接','2017-08-30 21:51:56',NULL,0,'','//div[@class=\"list\"]//dl//dt//a//@href','CB4C9272DF1E25758BEE419B4887995C','',0,'l','2017-08-30 21:52:23',NULL);
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('4CB980202E88B519FA5332EEAE20DEA8','','',0,'图片','2017-08-30 07:44:00',NULL,0,'','//div[@class=\"book-information cf\"]//div[@class=\'book-img\']//img//@src','10E500DC038ED1258F35F4865D378E93','',0,'l','2017-08-30 21:37:53',NULL);
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('CC0F19D1035997D5F7255B2CB7D69820','','',0,'标题','2017-08-30 21:51:42',NULL,0,'','//div[@class=\"list\"]//dl//dt//a//text()','CB4C9272DF1E25758BEE419B4887995C','',0,'l','2017-08-30 21:51:42','system');
insert  into `sys_seed_ruler_colum_info`(`uuid`,`app1`,`app2`,`arr`,`colum_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler`,`ruler_uuid`,`spl1`,`spl2`,`type`,`updata_time`,`updata_user`) values ('EF04BA346AA6FF5761F69305592210C3','','',0,'书名','2017-08-30 20:16:09',NULL,0,'','//div[@class=\"book-info \"]//h1//em//text()','10E500DC038ED1258F35F4865D378E93','',0,'l','2017-08-30 20:16:09','system');

/*Table structure for table `sys_seed_ruler_info` */

DROP TABLE IF EXISTS `sys_seed_ruler_info`;

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
  `updata_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `updata_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_seed_ruler_info` */

insert  into `sys_seed_ruler_info`(`uuid`,`charset`,`content_info`,`create_time`,`create_user`,`delete_flag`,`discription`,`name`,`request_type`,`seed_uuid`,`sub_uri`,`type`,`updata_time`,`updata_user`) values ('10E500DC038ED1258F35F4865D378E93','utf-8',NULL,'2017-08-30 07:34:38',NULL,0,'','书详细','rg','402880905da16202015da170dce20004','http://book.qidian.com/info','detial','2017-08-30 20:25:27',NULL);
insert  into `sys_seed_ruler_info`(`uuid`,`charset`,`content_info`,`create_time`,`create_user`,`delete_flag`,`discription`,`name`,`request_type`,`seed_uuid`,`sub_uri`,`type`,`updata_time`,`updata_user`) values ('402880905da16202015da17540170006','UTF-8',NULL,'2017-08-02 13:40:02',NULL,0,'','全部作品_起点中文网','rg','402880905da16202015da170dce20004','http://a.qidian.com','list','2017-08-16 17:51:15',NULL);
insert  into `sys_seed_ruler_info`(`uuid`,`charset`,`content_info`,`create_time`,`create_user`,`delete_flag`,`discription`,`name`,`request_type`,`seed_uuid`,`sub_uri`,`type`,`updata_time`,`updata_user`) values ('CB4C9272DF1E25758BEE419B4887995C','utf-8',NULL,'2017-08-30 21:49:16',NULL,0,'','百度百科检索','se','5C131F8BBB917576CC37760FCABAB6E6','https://zhidao.baidu.com/search?','list','2017-08-30 22:33:20',NULL);

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
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_seed_url_info` */

insert  into `sys_seed_url_info`(`uuid`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`,`charset`,`request_type`) values ('04d01c124e59a57683027cac13d4021b',-1,NULL,'2017-08-30 22:18:14','system',NULL,NULL,NULL,NULL,'http://v.baidu.com/v?ct=301989888&rn=20&pn=0&db=0&s=22&word=%C1%DC%B0%CD%C1%F6','2017-08-30 22:18:14','system',NULL,NULL,NULL);
insert  into `sys_seed_url_info`(`uuid`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`,`charset`,`request_type`) values ('0d07dfbc25a2b22a2372f167dc808a31',-1,NULL,'2017-08-30 22:18:17','system',NULL,NULL,NULL,NULL,'http://tousu.baidu.com/zhidao','2017-08-30 22:18:17','system',NULL,NULL,NULL);
insert  into `sys_seed_url_info`(`uuid`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`,`charset`,`request_type`) values ('0e5cddc599ccfe14c2d7e2be0026ef86',-1,NULL,'2017-08-30 22:18:14','system',NULL,NULL,NULL,NULL,'http://tieba.baidu.com/f?kw=%C1%DC%B0%CD%C1%F6&t=4','2017-08-30 22:18:14','system',NULL,NULL,NULL);
insert  into `sys_seed_url_info`(`uuid`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`,`charset`,`request_type`) values ('12d46ce4238b10099a0b3cc82791c977',-1,NULL,'2017-08-30 22:18:18','system',NULL,NULL,NULL,NULL,'http://image.baidu.com/search/index?tn=baiduimage&ct=201326592&lm=-1&cl=2&word=%C1%DC%B0%CD%C1%F6&t=3&ie=gbk','2017-08-30 22:18:18','system',NULL,NULL,NULL);
insert  into `sys_seed_url_info`(`uuid`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`,`charset`,`request_type`) values ('13c208702ca3198bc4f4786a326f21bb',-1,NULL,'2017-08-30 22:18:15','system',NULL,NULL,NULL,NULL,'http://news.baidu.com/ns?cl=2&rn=20&tn=news&word=%C1%DC%B0%CD%C1%F6&t=1','2017-08-30 22:18:15','system',NULL,NULL,NULL);
insert  into `sys_seed_url_info`(`uuid`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`,`charset`,`request_type`) values ('1b788296c801b867bf7e991c627ae429',-1,NULL,'2017-08-30 22:18:17','system',NULL,NULL,NULL,NULL,'http://map.baidu.com/m?word=%C1%DC%B0%CD%C1%F6&fr=map007','2017-08-30 22:18:17','system',NULL,NULL,NULL);
insert  into `sys_seed_url_info`(`uuid`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`,`charset`,`request_type`) values ('1fb9d4548dd46edc4974452c023d8b4b',-1,NULL,'2017-08-30 22:01:30','system',NULL,NULL,NULL,NULL,'https://zhidao.baidu.com/search?word=%C1%DC%B0%CD%C1%F6&ie=gbk&site=-1&sites=0&date=0&pn=10','2017-08-30 22:01:30','system',NULL,NULL,NULL);
insert  into `sys_seed_url_info`(`uuid`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`,`charset`,`request_type`) values ('2611930d68848561072c463be574ce93',-1,NULL,'2017-08-30 22:18:18','system',NULL,NULL,NULL,NULL,'http://muzhi.baidu.com/question/1637900352855296740.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk','2017-08-30 22:18:18','system',NULL,NULL,NULL);
insert  into `sys_seed_url_info`(`uuid`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`,`charset`,`request_type`) values ('402880905da16202015da170dce20004',0,'','2017-08-02 13:35:14','system',NULL,'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=397776456,2572651939&fm=58','起点中文网','小说网','qidian.com','2017-08-02 14:31:49',NULL,0,NULL,NULL);
insert  into `sys_seed_url_info`(`uuid`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`,`charset`,`request_type`) values ('5C131F8BBB917576CC37760FCABAB6E6',0,'','2017-08-30 21:47:01','system',NULL,'','百度知道','百科','https://zhidao.baidu.com','2017-08-30 21:52:26',NULL,NULL,NULL,NULL);
insert  into `sys_seed_url_info`(`uuid`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`,`charset`,`request_type`) values ('7b87d5c4474ee9b43a79cd228e99f75b',-1,NULL,'2017-08-30 22:18:14','system',NULL,NULL,NULL,NULL,'http://zhidao.baidu.com/question/918376001216706699.html','2017-08-30 22:18:14','system',NULL,NULL,NULL);
insert  into `sys_seed_url_info`(`uuid`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`,`charset`,`request_type`) values ('a2e4a772d8e1e82570860c1a017c30a6',-1,NULL,'2017-08-30 22:18:17','system',NULL,NULL,NULL,NULL,'http://wenku.baidu.com/search?word=%C1%DC%B0%CD%C1%F6&lm=0&od=0','2017-08-30 22:18:17','system',NULL,NULL,NULL);
insert  into `sys_seed_url_info`(`uuid`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`,`charset`,`request_type`) values ('ad5e686366d897c72188fa20ee46acb7',-1,NULL,'2017-08-30 22:06:59','system',NULL,NULL,NULL,NULL,'http://music.baidu.com/search?fr=zhidao&key=%C1%DC%B0%CD%C1%F6','2017-08-30 22:06:59','system',NULL,NULL,NULL);
insert  into `sys_seed_url_info`(`uuid`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`,`charset`,`request_type`) values ('bfa89e563d9509fbc5c6503dd50faf2e',-1,NULL,'2017-08-30 22:06:59','system',NULL,NULL,NULL,NULL,'http://www.baidu.com/p/suirui163?from=zhidao','2017-08-30 22:06:59','system',NULL,NULL,NULL);
insert  into `sys_seed_url_info`(`uuid`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`,`charset`,`request_type`) values ('c758dc467126278210fb1ed3158fc7f1',-1,NULL,'2017-08-30 22:06:59','system',NULL,NULL,NULL,NULL,'http://help.baidu.com/question?prod_en=zhidao&class=597&id=1001104','2017-08-30 22:06:59','system',NULL,NULL,NULL);
insert  into `sys_seed_url_info`(`uuid`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`,`charset`,`request_type`) values ('df1b9c66610d25acd622f9c1c0392972',-1,NULL,'2017-08-30 22:18:15','system',NULL,NULL,NULL,NULL,'http://passport.baidu.com/v2/?reg&tpl=ik&color=green&u=','2017-08-30 22:18:15','system',NULL,NULL,NULL);

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
  `table_desc` varchar(50) DEFAULT NULL COMMENT '表的含义',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_table_info` */

insert  into `sys_table_info`(`uuid`,`database_uuid`,`TYPE_UUID`,`table_name`,`table_disc`,`TABLE_SPACE`,`TABLE_ORDER`,`TABLE_ROWS`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`table_desc`) values ('BCFA39FCA088D151372D563DCB03D27C','F1027C0339119FF6B60244754A30F8A3','','qwetest',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'');
insert  into `sys_table_info`(`uuid`,`database_uuid`,`TYPE_UUID`,`table_name`,`table_disc`,`TABLE_SPACE`,`TABLE_ORDER`,`TABLE_ROWS`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`table_desc`) values ('C06A7B0878844341823CDBF55F03885C','F1027C0339119FF6B60244754A30F8A3','','baidu_linba',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'');
insert  into `sys_table_info`(`uuid`,`database_uuid`,`TYPE_UUID`,`table_name`,`table_disc`,`TABLE_SPACE`,`TABLE_ORDER`,`TABLE_ROWS`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`table_desc`) values ('CF1C0EABDE01F3F762DE286FC64D412A','F1027C0339119FF6B60244754A30F8A3','','score',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'');

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
  `type_icon` varchar(50) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`uuid`)
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
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `UK_filjsx4kbabuqh2fkxgd72dx5` (`user_name`)
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
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_roles_info` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
