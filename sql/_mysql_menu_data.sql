/*
Navicat MySQL Data Transfer

Source Server         : 47.52.93.94
Source Server Version : 50719
Source Host           : 47.52.93.94:3306
Source Database       : application

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-01-15 11:13:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for baidu_linba
-- ----------------------------
DROP TABLE IF EXISTS `baidu_linba`;
CREATE TABLE `baidu_linba` (
  `md5` varchar(36) DEFAULT NULL COMMENT 'url的md5值',
  `url` varchar(2000) DEFAULT NULL COMMENT 'url地址',
  `数据来源` varchar(50) DEFAULT NULL COMMENT '数据来源',
  `datetime` date DEFAULT NULL COMMENT '采集时间',
  `标题` varchar(255) DEFAULT NULL COMMENT '标题',
  `链接` varchar(255) DEFAULT NULL COMMENT '链接'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baidu_linba
-- ----------------------------
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '确诊为非霍奇金', 'http://zhidao.baidu.com/question/744394347726119052.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/430240193.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '最长能活多久', 'http://zhidao.baidu.com/question/2137635782480888268.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1884635313007914588.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '是怎么引起的', 'http://zhidao.baidu.com/question/559375539346847924.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '霍奇金', 'http://zhidao.baidu.com/question/518822477945165485.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://muzhi.baidu.com/question/1637900352855296740.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '能治好吗', 'http://zhidao.baidu.com/question/579989997.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/918376001216706699.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '之家', 'http://zhidao.baidu.com/question/552244573106798652.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/556690018767143252.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '4级，严重吗', 'http://zhidao.baidu.com/question/564038373236291404.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '怎么确定颈部淋巴结会不会是', 'http://zhidao.baidu.com/question/651105521341467325.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/394943746363438685.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '恶性', 'http://zhidao.baidu.com/question/942085083377078892.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1498900986137508499.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '需要多少医疗费', 'http://zhidao.baidu.com/question/524182716269492645.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1642377770956646540.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '已经两个月了是否太晚了', 'http://zhidao.baidu.com/question/1579704326039029500.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1243582956797266339.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '为什么很多时候发现', 'http://zhidao.baidu.com/question/716189198589507325.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/923762478752163979.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '时已经是晚期了', 'http://zhidao.baidu.com/question/749932559161433972.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '颈部淋巴结肿大四五年是', 'http://zhidao.baidu.com/question/1801860482681684747.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/877801387640717492.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '吗', 'http://zhidao.baidu.com/question/1244015056832296579.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '有没有', 'http://zhidao.baidu.com/question/877673323457318852.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1609481064610909907.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '治好的患者，求分享', 'http://zhidao.baidu.com/question/1371760309789009859.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '医生外周T细胞', 'http://zhidao.baidu.com/question/941740046182960692.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '什么是', 'http://zhidao.baidu.com/question/100219494.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/584298912.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '癌，有何预兆？', 'http://zhidao.baidu.com/question/1451584792298833980.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/1759799375337034188.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '癌晚期还能活多长时间？', 'http://zhidao.baidu.com/question/454190440.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '该注意什么，还有霍奇金', 'http://zhidao.baidu.com/question/2207862701838368588.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/434771790.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '治愈后会复发吗', 'http://zhidao.baidu.com/question/150546167.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '需要做什么检查排除咽喉癌或', 'http://zhidao.baidu.com/question/1959703106901289540.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/150222734.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1865109695049043947.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '化疗后血小板和血红蛋白一直升不上来是什么原因', 'http://zhidao.baidu.com/question/25401891.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '中国治', 'http://zhidao.baidu.com/question/2116557576626905827.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/618838848085881372.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '有那些好的医院?急', 'http://zhidao.baidu.com/question/424988244.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/239800975688218724.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '癌之骨关节痛是什么性质的?', 'http://zhidao.baidu.com/question/590277880.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '央视这厢有礼20151013选手中有个', 'http://muzhi.baidu.com/question/1495595787157801019.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '脖子上', 'http://baobao.baidu.com/question/1254b62b410e3c90f945bed1c32f3e63.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://baobao.baidu.com/question/70a055389db1b3ffd0e47ffa96a3f1a0.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '癌早期什么症状', 'http://zhidao.baidu.com/question/497067742018730764.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '恶性', 'http://zhidao.baidu.com/question/2056158596731527227.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/689219103934900284.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '的症状有哪些？', 'http://zhidao.baidu.com/question/578296828.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '你好，你说你有治疗', 'http://zhidao.baidu.com/question/1705629890110208020.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/428935583.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '的偏方？', 'http://zhidao.baidu.com/question/1924017206639649067.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴病只有', 'http://baobao.baidu.com/question/bb4f20ed668ac43a66da48d06d480057.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '时已经是晚期了', 'http://zhidao.baidu.com/question/2207928567334003468.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1963394108985087980.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '可以用艾艾贴吗？', 'http://zhidao.baidu.com/question/460573151818553725.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '前两天确诊为', 'http://zhidao.baidu.com/question/588445088537831685.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/2015865730638307148.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '癌，现等活检结果期间要怎么办', 'http://zhidao.baidu.com/question/652189130834909645.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '骨髓穿刺可以检查恶性', 'http://zhidao.baidu.com/question/2207545075613687708.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/757689136545491204.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '腺', 'http://zhidao.baidu.com/question/556109668660478612.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/391801290811295365.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '的治疗', 'http://www.zybang.com/question/8bb356e351da6077cbd2d864350acc83.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '怎么才算', 'http://baobao.baidu.com/question/df14b5e2e3edc04e916078275e886193.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/164051093.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '结肿大？', 'http://zhidao.baidu.com/question/1603805273751481907.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '浆细胞性', 'http://zhidao.baidu.com/question/572088414.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://www.zybang.com/question/9b8d790ac8010efa0476cd1648964337.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '颈部', 'http://zhidao.baidu.com/question/100171706.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://www.zybang.com/question/9b98966d44727eb1911ce74a1fac6b83.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '血液病的', 'http://zhidao.baidu.com/question/1433926132956170419.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/918221020668180819.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1368275722039224259.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '如何诊断？求解', 'http://zhidao.baidu.com/question/918404832593111219.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/524705586.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '癌前期有哪些症状', 'http://zhidao.baidu.com/question/1430416367436851659.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/175375412743583924.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '能早期发现吗？', 'http://zhidao.baidu.com/question/434646401948657444.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://baobao.baidu.com/question/b0880a2ef78655bde9b0c081acb5913b.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '一个月可以长多大', 'http://zhidao.baidu.com/question/1302090782637475619.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '霍奇金', 'http://zhidao.baidu.com/question/523384704.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/422079567.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '治愈后怎样保养，该注意什么，还有霍...', 'http://zhidao.baidu.com/question/578138639.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '治疗', 'http://zhidao.baidu.com/question/2121988855720993067.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/1987995749894545907.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '结哪个医院最好', 'http://zhidao.baidu.com/question/183512321.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/533592656.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '那一摸就疼是怎么回事', 'http://zhidao.baidu.com/question/1963394108985087980.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '脖子右边的', 'http://zhidao.baidu.com/question/183932520.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '谁有颈部', 'http://zhidao.baidu.com/question/1737503541395160947.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/139227901692504645.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '结肿大，而且是一直那么大可移动不痛的', 'http://zhidao.baidu.com/question/570855825.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '北京英博医院能治恶性', 'http://zhidao.baidu.com/question/652568266185734805.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/488614084690931332.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '吗', 'http://zhidao.baidu.com/question/499069288.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '我妹妹上个月在北京确诊患上了非霍奇金WHO弥漫性大...', 'http://zhidao.baidu.com/question/395150549.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '食管侵袭性t细胞', 'http://zhidao.baidu.com/question/309172361519785804.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/2267241000233975548.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '是不是重疾', 'http://zhidao.baidu.com/question/460573151818553725.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '可以用艾艾贴吗？', 'http://zhidao.baidu.com/question/1702719948808121060.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '中国', 'http://zhidao.baidu.com/question/559690778961128204.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/581586522.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '癌哪家医院好', 'http://zhidao.baidu.com/question/2010689481247633468.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '诱发', 'http://zhidao.baidu.com/question/501171334830536364.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/941740046182960692.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '癌的病因具体有哪些', 'http://zhidao.baidu.com/question/175445723355756844.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '我右耳后长了个包，会不会是', 'http://zhidao.baidu.com/question/919976226918942659.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/714310097859488205.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/111932963.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '的定义', 'http://zhidao.baidu.com/question/716189198589507325.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '为什么很多时候发现', 'http://zhidao.baidu.com/question/578734812.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/2052352460103098987.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '时已经是晚期了', 'http://zhidao.baidu.com/question/923762478752163979.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '紧急求助：', 'http://zhidao.baidu.com/question/586709733.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/687825944348003004.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '病理化验结果解读', 'http://zhidao.baidu.com/question/316489073.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/588058056.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '有点不舒服，有谁知道为什么啊', 'http://zhidao.baidu.com/question/14948570.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '晚期', 'http://baobao.baidu.com/question/dcb9e33fdd0d24f227803d6d527d73a8.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/294865718.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '会传染吗？', 'http://baobao.baidu.com/question/740e869fce8f91fa0c73b61c663f0bc5.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1896672365191588220.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '可发的年龄段？', 'http://zhidao.baidu.com/question/918521132940298459.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '早期颈部', 'http://zhidao.baidu.com/question/307706862.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/749932559161433972.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '癌的症状', 'http://zhidao.baidu.com/question/2266002108254117828.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '与霍奇金', 'http://zhidao.baidu.com/question/31227154.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1430167418612603459.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '肾旁边的', 'http://zhidao.baidu.com/question/424988244.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/239800975688218724.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '怎么医治', 'http://zhidao.baidu.com/question/590277880.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://muzhi.baidu.com/question/1495595787157801019.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '严重吗', 'http://zhidao.baidu.com/question/689152008433956444.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/754815080640211364.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '已经扩散了，还能活多久？已经切除…了一个肾！...', 'http://baobao.baidu.com/question/5c3cf4492c05f7e15c26c63c6eda1f08.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '良性', 'http://zhidao.baidu.com/question/467361903.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '严重吗', 'http://zhidao.baidu.com/question/590277880.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://muzhi.baidu.com/question/1495595787157801019.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '已经扩散了，还能活多久？已经切除…了一个肾！...', 'http://zhidao.baidu.com/question/689152008433956444.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '良性', 'http://baobao.baidu.com/question/5c3cf4492c05f7e15c26c63c6eda1f08.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/754815080640211364.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '早期症状会什么？', 'http://zhidao.baidu.com/question/467361903.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '您好，我是一名鼻NKT细胞', 'http://zhidao.baidu.com/question/471411699.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/652189130834909645.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '癌，现等活检结果期间要怎么办', 'http://zhidao.baidu.com/question/2207545075613687708.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '骨髓穿刺可以检查恶性', 'http://zhidao.baidu.com/question/757689136545491204.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1609801111701782667.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/693690075156445844.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '时已经是晚期了', 'http://zhidao.baidu.com/question/1609481064610909907.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '脖子的', 'http://zhidao.baidu.com/question/2207928567334003468.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '，脂肪瘤，哪个难治', 'http://zhidao.baidu.com/question/460573151818553725.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/588445088537831685.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '可以用艾艾贴吗？', 'http://zhidao.baidu.com/question/652189130834909645.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '前两天确诊为', 'http://zhidao.baidu.com/question/2207545075613687708.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/757689136545491204.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '颈部淋巴结肿大四五年是', 'http://zhidao.baidu.com/question/693690075156445844.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1801860482681684747.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '吗', 'http://zhidao.baidu.com/question/877801387640717492.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '有没有', 'http://zhidao.baidu.com/question/1244015056832296579.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/877673323457318852.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '治好的患者，求分享', 'http://zhidao.baidu.com/question/1609481064610909907.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '脖子的', 'http://zhidao.baidu.com/question/1371760309789009859.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '非霍奇金弥漫大B', 'http://zhidao.baidu.com/question/714310097859488205.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/100219494.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, 'IV期经过美罗华四期治疗为PR...', 'http://zhidao.baidu.com/question/584298912.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '什么是', 'http://zhidao.baidu.com/question/1451584792298833980.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '癌，有何预兆？', 'http://zhidao.baidu.com/question/454190440.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/2207862701838368588.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '癌晚期还能活多长时间？', 'http://zhidao.baidu.com/question/434771790.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '该注意什么，还有霍奇金', 'http://zhidao.baidu.com/question/150546167.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1959703106901289540.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '的治疗', 'http://zhidao.baidu.com/question/391801290811295365.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '脖子的', 'http://www.zybang.com/question/8bb356e351da6077cbd2d864350acc83.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://baobao.baidu.com/question/df14b5e2e3edc04e916078275e886193.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '，脂肪瘤，哪个难治', 'http://zhidao.baidu.com/question/164051093.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '怎么才算', 'http://zhidao.baidu.com/question/1603805273751481907.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/572088414.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '结肿大？', 'http://www.zybang.com/question/9b8d790ac8010efa0476cd1648964337.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '浆细胞性', 'http://zhidao.baidu.com/question/100171706.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '弥漫大b型', 'http://zhidao.baidu.com/question/150222734.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/523384704.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '霍奇金', 'http://zhidao.baidu.com/question/422079567.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/578138639.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '治愈后怎样保养，该注意什么，还有霍...', 'http://zhidao.baidu.com/question/2121988855720993067.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '治疗', 'http://zhidao.baidu.com/question/1987995749894545907.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/183512321.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '结哪个医院最好', 'http://zhidao.baidu.com/question/533592656.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/1963394108985087980.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '假性', 'http://zhidao.baidu.com/question/183932520.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1737503541395160947.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '的诊治方法【假性', 'http://zhidao.baidu.com/question/139227901692504645.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/570855825.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '】', 'http://zhidao.baidu.com/question/652568266185734805.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '谁有颈部', 'http://zhidao.baidu.com/question/488614084690931332.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/499069288.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '结肿大，而且是一直那么大可移动不痛的', 'http://zhidao.baidu.com/question/395150549.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '北京英博医院能治恶性', 'http://zhidao.baidu.com/question/309172361519785804.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '间变性大细胞', 'http://www.zybang.com/question/9b98966d44727eb1911ce74a1fac6b83.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '如何治疗..', 'http://zhidao.baidu.com/question/1702719948808121060.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/559690778961128204.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '可以用艾艾贴吗？', 'http://zhidao.baidu.com/question/581586522.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '中国', 'http://zhidao.baidu.com/question/2010689481247633468.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/501171334830536364.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '癌哪家医院好', 'http://zhidao.baidu.com/question/941740046182960692.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '诱发', 'http://zhidao.baidu.com/question/175445723355756844.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/919976226918942659.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '我爷爷生病了 挺严重的 非霍奇金', 'http://zhidao.baidu.com/question/517676225.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://muzhi.baidu.com/question/1887095058604474068.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '4期了。。...', 'http://zhidao.baidu.com/question/1382845134964459780.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '请问一下这是属于早期非霍奇金', 'http://zhidao.baidu.com/question/575486327.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/390835259807095205.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '还是中期？能...', 'http://zhidao.baidu.com/question/1370246056120883019.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://muzhi.baidu.com/question/304458557391469164.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '', 'http://zhidao.baidu.com/question/473035441.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1047092621367695019.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '治疗花多少钱', 'http://zhidao.baidu.com/question/1577371287731497380.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '右下颚', 'http://zhidao.baidu.com/question/1962475885750691860.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/1366612606971852899.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '结。', 'http://zhidao.baidu.com/question/615888999670669452.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '北京治疗', 'http://muzhi.baidu.com/question/1765601820343552740.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/685049912826621772.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '最好的中医医院是哪家', 'http://zhidao.baidu.com/question/531072624.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/429380961029108012.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '扩散到肺上了还能治吗能活多长时间_', 'http://zhidao.baidu.com/question/1242318541902919779.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/480495479.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/576732160.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/361221523588391052.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '癌的治愈率是多少？', 'http://zhidao.baidu.com/question/484823832.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '双侧颈部', 'http://zhidao.baidu.com/question/1703033153498020220.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/1770535060239288380.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '结肿大', 'http://zhidao.baidu.com/question/688619653814359924.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '家人被查出是弥漫大B细胞', 'http://www.zybang.com/question/dc4cfef3707d6ab496121238f86afd72.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/480492328.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '，需要化疗，医生推...', 'http://zhidao.baidu.com/question/755291304206362564.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '转移的', 'http://muzhi.baidu.com/question/646569047941167005.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://muzhi.baidu.com/question/1796830116611207747.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '我妈妈有', 'http://zhidao.baidu.com/question/629686089388837004.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/460377265832761285.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '肿瘤我该怎么办，已经晚期了谁有什么办法', 'http://zhidao.baidu.com/question/1451584792298833980.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '恶性', 'http://zhidao.baidu.com/question/1759799375337034188.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/923825773625743899.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '最新的治疗方案是什么？哪个医院治疗的...', 'http://zhidao.baidu.com/question/2121988855720993067.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '该注意什么，还有霍奇金', 'http://zhidao.baidu.com/question/1963394108985087980.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/460573151818553725.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '治愈后会复发吗', 'http://zhidao.baidu.com/question/652568266185734805.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, 'tcr基因重排检测到单克隆重排', 'http://zhidao.baidu.com/question/202456832659482405.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '用艾灸怎样治疗颈部', 'http://zhidao.baidu.com/question/436048746.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/1640522075750614940.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '结肿大', 'http://zhidao.baidu.com/question/1765772153121760980.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '男友得了非霍奇金', 'http://zhidao.baidu.com/question/571991786.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/104356487.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '该不该结婚', 'http://zhidao.baidu.com/question/1701796945942885980.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://muzhi.baidu.com/question/267917685658446165.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '癌早期能活多久', 'http://muzhi.baidu.com/question/1701615044187022980.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/1705091531157453020.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '宝宝发烧三天吃磷酸奥司他韦出疹子，还需要继续吃...', 'http://zhidao.baidu.com/question/716765156931713365.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '给我看一下是什么东西引气的全身痒有没有什么办法可以', 'http://zhidao.baidu.com/question/565240687915648764.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '哪位高手给帮忙看一下，几年前做过化验是非 霍奇金...', 'http://zhidao.baidu.com/question/330882775043959525.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '放疗化疗后', 'http://zhidao.baidu.com/question/1370755035756288619.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/459654562822948525.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '结没完全消失，该怎么办', 'http://zhidao.baidu.com/question/924176926950758739.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '女 23岁 刚做过手术 病理诊断结果是Alk阴性 间变性...', 'http://zhidao.baidu.com/question/877914007497532092.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '怎么治疗小脑', 'http://zhidao.baidu.com/question/524722518473058165.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '确诊为非霍奇金', 'http://zhidao.baidu.com/question/744394347726119052.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/430240193.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '最长能活多久', 'http://zhidao.baidu.com/question/2137635782480888268.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1884635313007914588.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '是怎么引起的', 'http://zhidao.baidu.com/question/559375539346847924.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '霍奇金', 'http://zhidao.baidu.com/question/518822477945165485.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://muzhi.baidu.com/question/1637900352855296740.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '能治好吗', 'http://zhidao.baidu.com/question/579989997.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/918376001216706699.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '之家', 'http://zhidao.baidu.com/question/552244573106798652.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '脖子', 'http://zhidao.baidu.com/question/757556633060502284.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/1801412763286643387.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '的地方长了一个硬的块', 'http://zhidao.baidu.com/question/693749556682798764.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '脸颊右侧有3.点几的林', 'http://zhidao.baidu.com/question/1695347487362306468.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/309172361519785804.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '结请问该看什', 'http://zhidao.baidu.com/question/987888612057139979.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '脖子那摸着有硬块会不会是', 'http://zhidao.baidu.com/question/268247954558818885.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/716381669030303965.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '结肿大', 'http://zhidao.baidu.com/question/629236503257504044.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '有没有像我妹这样全身', 'http://zhidao.baidu.com/question/245300381188389484.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1736840947003240827.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '活检切片结果未见癌是什么意思', 'http://zhidao.baidu.com/question/1695714908890062868.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1992326152170037707.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '化疗之后，消除了，是不是好了', 'http://zhidao.baidu.com/question/1386782090625771340.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '很怕，到底是', 'http://zhidao.baidu.com/question/1515881271855298500.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1515259956072213260.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '（癌），还是荨麻疹', 'http://zhidao.baidu.com/question/940408051446791932.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '身上全身起皮疹就是', 'http://zhidao.baidu.com/question/459737967443359685.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/2206904566661808748.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '吗', 'http://zhidao.baidu.com/question/813378259524678092.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/433565015.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '结肿大危险吗？会有什么样的后果', 'http://muzhi.baidu.com/question/1509965400771430140.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/371853427.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '为什么痒', 'http://zhidao.baidu.com/question/495835633620362884.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/134772599.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '癌早期症状', 'http://zhidao.baidu.com/question/328624503454480685.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '颌下肿块，B超结果“颌下淋巴结”，会是', 'http://zhidao.baidu.com/question/359003597.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1497144848857589299.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '吗？', 'http://zhidao.baidu.com/question/1049870426602895499.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, 'T细胞', 'http://zhidao.baidu.com/question/396039368233192205.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '腹膜后双侧腹股沟', 'http://zhidao.baidu.com/question/558061003074650532.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/693172478193650124.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '结肿大有事吗', 'http://zhidao.baidu.com/question/1865861023619678587.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, 'mm什么意思', 'http://zhidao.baidu.com/question/524186213456123805.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '乳房上面骨头疼，腋下', 'http://zhidao.baidu.com/question/1499696225796474579.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/813933352877330612.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '发炎怎么回事', 'http://zhidao.baidu.com/question/1179823076884018979.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '帮忙看看乳腺癌免疫组化结果！', 'http://zhidao.baidu.com/question/1899518397056543220.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '我母亲得了大病，我适合给她发布轻松筹求助信息吗？', 'http://zhidao.baidu.com/question/1887668223797527228.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '膳魔师tcra系列和kbg系列有什么区别', 'http://zhidao.baidu.com/question/396697033067752045.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '纵隔多发肿大', 'http://zhidao.baidu.com/question/588433214.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/251063033.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '结', 'http://zhidao.baidu.com/question/21105895.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '我们家狗狗4岁，得了', 'http://zhidao.baidu.com/question/1051584476180982459.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/322450145.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '肿瘤，请问有什么药可以治...', 'http://zhidao.baidu.com/question/2015865730638307148.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '非霍杰金氏恶性', 'http://zhidao.baidu.com/question/1451481976018258420.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://baobao.baidu.com/question/0b976dc600e600d9a397c69157aafcc5.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '真的没有彻底治愈的方法吗', 'http://zhidao.baidu.com/question/64409389.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '脑干', 'http://zhidao.baidu.com/question/558061003074650532.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/813174573762302332.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '确诊了，再怎么去确诊是哪种类型的', 'http://zhidao.baidu.com/question/2143883073445388708.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/877990143362199732.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '是单纯的', 'http://zhidao.baidu.com/question/2270292001134911468.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/2206961194437275708.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '发炎还是', 'http://zhidao.baidu.com/question/364815605153206852.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/1436131541425755819.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '癌吗', 'http://zhidao.baidu.com/question/1579192623754352780.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '恶性', 'http://zhidao.baidu.com/question/1451766420140349380.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1694100196354982588.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/1929474878181122147.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '结肿大和', 'http://zhidao.baidu.com/question/1737439733343448707.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/2121377614985638347.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '结肿瘤有什么区别', 'http://zhidao.baidu.com/question/1963609130044733540.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '磁共振查出来符合', 'http://muzhi.baidu.com/question/588542370643462925.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1835642116888750380.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '什么意思啊？是不是就确定...', 'http://zhidao.baidu.com/question/2142849768359641228.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '个肉疙瘩，还会游动，会不会是', 'http://zhidao.baidu.com/question/1673134015825339107.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1545393855904636467.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/1307945184412109259.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://muzhi.baidu.com/question/2074198486778053148.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '会死吗', 'http://zhidao.baidu.com/question/367466747888707404.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '怎样查出', 'http://zhidao.baidu.com/question/579350566.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/1768588784639477300.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '癌', 'http://zhidao.baidu.com/question/308105036.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/981250809773660099.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '结病人会死吗', 'http://zhidao.baidu.com/question/2201641910007288028.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '非霍奇金氏', 'http://zhidao.baidu.com/question/171378571.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/367819896023517484.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '发展期是多长时间？非霍奇金氏淋...', 'http://zhidao.baidu.com/question/585925066351663165.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '请问我姐姐得了鼻息肉，去医院做手术的时候做了病...', 'http://zhidao.baidu.com/question/158915651.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '弥漫性大B细胞', 'http://zhidao.baidu.com/question/441820945.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/2206904566661808748.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '注射美罗华后第二周开始发烧是...', 'http://zhidao.baidu.com/question/1432511148819794379.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '颌下淋巴结鸡蛋大了 是不是', 'http://zhidao.baidu.com/question/329763679090162085.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/447563637.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/1365836780569057259.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '坏死是什么病？', 'http://zhidao.baidu.com/question/494870670.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '我父亲得了套细胞', 'http://zhidao.baidu.com/question/339347690.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴瘤', 'http://zhidao.baidu.com/question/431984274685467284.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '免疫组化结果:sma:(+++).desmin(+++).s100(-).ki-6...', 'http://zhidao.baidu.com/question/716381669030303965.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '屁股沟中上方有一硬疙瘩，好像从尾骨缝里长出来的...', 'http://zhidao.baidu.com/question/2271865549305582348.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '请问这是什么情况 什么病', 'http://zhidao.baidu.com/question/923892639708662499.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '地塞米松的作用及害处', 'http://zhidao.baidu.com/question/2121609336712265347.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '骨压痛的原因，骨压痛怎么引起的', 'http://zhidao.baidu.com/question/924020343269550259.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '那维澜洗发水对头发生长方面有何作用', 'http://zhidao.baidu.com/question/2143736816437240428.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '3周多孩子感冒好了嗓子内壁有白色大片白东西偶尔...', 'http://zhidao.baidu.com/question/1737480961635258827.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '肉类食品添加剂有哪些 肉类食品添加剂有什么', 'http://zhidao.baidu.com/question/437689316276086364.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '右侧颈部', 'http://zhidao.baidu.com/question/2121412940652474027.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/588445088537831685.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '结肿大，形态失常什么原因', 'http://zhidao.baidu.com/question/1052146980457625739.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '吃格利卫伊马替尼药对', 'http://zhidao.baidu.com/question/813996153960804212.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/652189130834909645.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '癌患者合对症吗', 'http://zhidao.baidu.com/question/1707841118537164580.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '我左侧股骨沟长个', 'http://zhidao.baidu.com/question/1835457533794847100.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/877930088674496292.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '，什么原因', 'http://zhidao.baidu.com/question/365866247806697612.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');
INSERT INTO `baidu_linba` VALUES (null, null, null, null, '淋巴', 'http://zhidao.baidu.com/question/2271865549305582348.html?fr=iks&word=%C1%DC%B0%CD%C1%F6&ie=gbk');

-- ----------------------------
-- Table structure for qwetest
-- ----------------------------
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

-- ----------------------------
-- Records of qwetest
-- ----------------------------
INSERT INTO `qwetest` VALUES (null, null, null, null, '圣墟', '//book.qidian.com/info/1004608738', '//qidian.qpic.cn/qdbimg/349573/1004608738/150', '辰东', '玄幻', '东方玄幻', '\r                        在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……\r                    ', '220.22万字');
INSERT INTO `qwetest` VALUES (null, null, null, null, '我是至尊', '//book.qidian.com/info/1005986994', '//qidian.qpic.cn/qdbimg/349573/1005986994/150', '风凌天下', '玄幻', '东方玄幻', '\r                        药不成丹只是毒，人不成神终成灰。…………天道有缺，人间不平，红尘世外，魍魉横行；哀尔良善，怒尔不争；规则之外，吾来执行。布武天下，屠尽不平；手中有刀，心中有情；\r                    ', '68.96万字');
INSERT INTO `qwetest` VALUES (null, null, null, null, '牧神记', '//book.qidian.com/info/1009704712', '//qidian.qpic.cn/qdbimg/349573/1009704712/150', '宅猪', '玄幻', '东方玄幻', '\r                        大墟的祖训说，天黑，别出门。大墟残老村的老弱病残们从江边捡到了一个婴儿，取名秦牧，含辛茹苦将他养大。这一天夜幕降临，黑暗笼罩大墟，秦牧走出了家门……做个春风中荡漾的反派吧！\r                    ', '40.66万字');

-- ----------------------------
-- Table structure for score
-- ----------------------------
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

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (null, null, null, null, '//qidian.qpic.cn/qdbimg/349573/1004608738/180\r', '0 . 0', '圣墟');

-- ----------------------------
-- Table structure for sys_column_info
-- ----------------------------
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
  `update_time` datetime DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `delete_flag` int(11) DEFAULT NULL,
  `cols_length` int(11) DEFAULT NULL COMMENT '字段长度',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_column_info
-- ----------------------------
INSERT INTO `sys_column_info` VALUES ('392BDB33918EAD445DC035392636F52D', 'BCFA39FCA088D151372D563DCB03D27C', '简介', '简介', null, '10', 'varchar', null, null, null, null, null, null, '255');
INSERT INTO `sys_column_info` VALUES ('5D30C232E695539778C32BA5E8BB44AE', 'CF1C0EABDE01F3F762DE286FC64D412A', '评分', '评分', null, '4', 'varchar', null, null, null, null, null, null, '255');
INSERT INTO `sys_column_info` VALUES ('6811519D0BECB66141985C21718DE32A', 'CF1C0EABDE01F3F762DE286FC64D412A', '图片', '图片', null, '5', 'varchar', null, null, null, null, null, null, '255');
INSERT INTO `sys_column_info` VALUES ('78E450B093B3F9AF42D0AAAA61682AA1', 'BCFA39FCA088D151372D563DCB03D27C', '分类2', '分类2', null, '9', 'varchar', null, null, null, null, null, null, '255');
INSERT INTO `sys_column_info` VALUES ('7F5EBA36428CFE9505B49FB74E358456', 'BCFA39FCA088D151372D563DCB03D27C', '分类1', '分类1', null, '8', 'varchar', null, null, null, null, null, null, '255');
INSERT INTO `sys_column_info` VALUES ('A08F2E055BBF6690EFDA0B14CFD207FB', 'BCFA39FCA088D151372D563DCB03D27C', '图片', '图片', null, '6', 'varchar', null, null, null, null, null, null, '255');
INSERT INTO `sys_column_info` VALUES ('A40A887F95FB94407A7C6485D046D1C0', 'BCFA39FCA088D151372D563DCB03D27C', '作者', '作者', null, '7', 'varchar', null, null, null, null, null, null, '255');
INSERT INTO `sys_column_info` VALUES ('AEA87950A0B9BA85FBE90473122EE86D', 'BCFA39FCA088D151372D563DCB03D27C', '连接', '连接', null, '5', 'varchar', null, null, null, null, null, null, '255');
INSERT INTO `sys_column_info` VALUES ('B1BCC8EEE9404A15B8D27A6C3D5F5685', 'C06A7B0878844341823CDBF55F03885C', '链接', '链接', null, '4', 'varchar', null, null, null, null, null, null, '255');
INSERT INTO `sys_column_info` VALUES ('B3F9AE1BAD7F86B1D1BD60276820693B', 'BCFA39FCA088D151372D563DCB03D27C', '书名', '书名', null, '4', 'varchar', null, null, null, null, null, null, '255');
INSERT INTO `sys_column_info` VALUES ('DBC5B0C9008B9AFAE9054D35AA404D9A', 'C06A7B0878844341823CDBF55F03885C', '标题', '标题', null, '5', 'varchar', null, null, null, null, null, null, '255');
INSERT INTO `sys_column_info` VALUES ('EB8F227E6322E013E91D4BCD5B6DDB2B', 'CF1C0EABDE01F3F762DE286FC64D412A', '书名', '书名', null, '6', 'varchar', null, null, null, null, null, null, '255');
INSERT INTO `sys_column_info` VALUES ('EFA1D46AB1F80B96FE81A817A0B9AC89', 'BCFA39FCA088D151372D563DCB03D27C', '阅读量', '阅读量', null, '11', 'varchar', null, null, null, null, null, null, '255');

-- ----------------------------
-- Table structure for sys_database_info
-- ----------------------------
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
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名称',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_database_info
-- ----------------------------
INSERT INTO `sys_database_info` VALUES ('F1027C0339119FF6B60244754A30F8A3', '', '2017-08-16 08:47:28', null, 'test', '0', '', '', '', '', '', '2017-08-21 18:13:30', null, '');

-- ----------------------------
-- Table structure for sys_department_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_department_info`;
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

-- ----------------------------
-- Records of sys_department_info
-- ----------------------------
INSERT INTO `sys_department_info` VALUES ('621B717B7AA366579A8C4066D0D94B08', '软件园分局', '11F1CAED7E2021D724C0E9E6BCE60CCF', '2017-11-01 18:28:58', null, '1', '软件园分局', '2017-11-01 18:28:58', 'system');
INSERT INTO `sys_department_info` VALUES ('75418090625A1C9F9AB126EB5E8E3853', '高新分局', '11F1CAED7E2021D724C0E9E6BCE60CCF', '2017-11-01 18:28:36', null, '1', '高新分局', '2017-12-14 16:06:51', null);
INSERT INTO `sys_department_info` VALUES ('D58E6596AAA01A8419FEBE71D7999856', '骨关节', '58072861DEDB9BA8E6E69CD10228FA05', '2017-11-01 18:27:50', null, '1', '骨关节', '2017-11-01 18:27:50', 'system');
INSERT INTO `sys_department_info` VALUES ('EDA51AA8D4359F739E7D3EE9923FEBE8', '肛肠科', '58072861DEDB9BA8E6E69CD10228FA05', '2017-11-01 18:27:20', null, '1', '肛肠科', '2017-11-01 18:27:20', 'system');

-- ----------------------------
-- Table structure for sys_menu_info
-- ----------------------------
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
  `update_user` varchar(100) DEFAULT 'system' COMMENT '更新人员',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `type` varchar(50) DEFAULT '菜单' COMMENT '菜单还是方法',
  `icon_skin` varchar(50) DEFAULT NULL COMMENT '显示图标样式',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu_info
-- ----------------------------
INSERT INTO `sys_menu_info` VALUES ('102F0D6B58817A998413C6CA1EEC8CBB', null, '0', '爬虫管理', 'fa fa-cloud-download', '1', '', '爬虫管理', 'system', '2017-07-14 09:44:42', 'system', null, '0', '菜单', 'fa fa-cloud-download');
INSERT INTO `sys_menu_info` VALUES ('2146130099979805B1DE119DCB3BA551', null, 'A3621F23A4BC0580D08EEF948C0FD30B', '用户角色', 'fa  fa-sitemap', '1', 'pages/user/userbase/index.html', '项目权限', null, null, 'system', null, '0', null, 'fa  fa-sitemap');
INSERT INTO `sys_menu_info` VALUES ('24898AE2D779238DC4AA443CE053C6AC', null, '4C2700CEB8CDAF0C2E3C3AAD9C849DD6', '短息测试', 'fa fa-mobile-phone', '1', 'pages/user/sendmail/phone.html', '短息测试', null, null, 'system', null, '0', '菜单', 'fa fa-mobile-phone');
INSERT INTO `sys_menu_info` VALUES ('36882FDCB61EF181592FEE79B0462BDA', null, '102F0D6B58817A998413C6CA1EEC8CBB', '结果配置', 'fa fa-file-code-o', '2', 'pages/crawler/result.html', '代码管理', null, null, 'system', null, '0', '菜单', 'fa fa-file-code-o');
INSERT INTO `sys_menu_info` VALUES ('39FC2A8FCCCBA07F109261B26A5F5E66', null, '4C2700CEB8CDAF0C2E3C3AAD9C849DD6', '邮箱测试', 'fa fa-envelope', '2', 'pages/user/sendmail/mail.html', '邮箱测试', null, null, 'system', null, '0', '菜单', 'fa fa-envelope');
INSERT INTO `sys_menu_info` VALUES ('4C2700CEB8CDAF0C2E3C3AAD9C849DD6', null, '0', '系统工具', 'fa fa-gg', '5', '', '', 'system', '2017-09-15 12:03:28', 'system', null, '0', '菜单', 'fa fa-gg');
INSERT INTO `sys_menu_info` VALUES ('4c87efc1-6447-11e7-a272-0025d3a93601', '99c74ada3a1411e6bdcb10bf48e1d36a', '0', '数据管理', 'fa  fa-database', '2', 'pages/error/404.html', '#', '佘赐雄', null, '超级管理员', null, '0', '菜单', 'fa  fa-database');
INSERT INTO `sys_menu_info` VALUES ('4c87fa16-6447-11e7-a272-0025d3a93601', null, '102F0D6B58817A998413C6CA1EEC8CBB', '种子管理', 'glyphicon glyphicon-link', '0', 'pages/crawler/seed.html', '爬虫管理', null, null, 'system', null, '0', '菜单', 'glyphicon glyphicon-link');
INSERT INTO `sys_menu_info` VALUES ('4c87fb94-6447-11e7-a272-0025d3a93601', '99c74ada3a1411e6bdcb10bf48e1d36a', '4c8820df-6447-11e7-a272-0025d3a93601', '系统菜单', 'fa  fa-navicon', '1', 'pages/softm/sysmenu/system_function_ztree.html', '系统导航功能', null, null, null, null, '0', '菜单', 'fa  fa-navicon');
INSERT INTO `sys_menu_info` VALUES ('4c87fd09-6447-11e7-a272-0025d3a93601', null, '4c87efc1-6447-11e7-a272-0025d3a93601', '数据库连接', 'fa  fa-plug', '0', 'pages/dbm/addr/index.html', '动态链接数据库', null, null, '超级管理员', null, '0', '菜单', 'fa  fa-plug');
INSERT INTO `sys_menu_info` VALUES ('4c87fe75-6447-11e7-a272-0025d3a93601', '99c74ada3a1411e6bdcb10bf48e1d36a', '2c90838f57c6e02e0157c729a86b000b', '数据库备份', 'glyphicon glyphicon-paste', '0', 'pages/error/404.html', '数据备份、数据还原', null, null, '超级管理员', null, '0', '菜单', 'glyphicon glyphicon-paste');
INSERT INTO `sys_menu_info` VALUES ('4c87ffe1-6447-11e7-a272-0025d3a93601', null, '4c87efc1-6447-11e7-a272-0025d3a93601', '数据表管理', 'fa  fa-table', '2', 'pages/dbm/table/index.html', '数据库表结构', null, null, '超级管理员', null, '0', '菜单', 'fa  fa-table');
INSERT INTO `sys_menu_info` VALUES ('4c881551-6447-11e7-a272-0025d3a93601', '99c74ada3a1411e6bdcb10bf48e1d36a', '0', '权限管理', 'fa  fa-sitemap', '3', 'pages/error/404.html', '客户管理', null, null, null, null, '0', '菜单', 'fa  fa-sitemap');
INSERT INTO `sys_menu_info` VALUES ('4c881c82-6447-11e7-a272-0025d3a93601', null, '4c8820df-6447-11e7-a272-0025d3a93601', '系统管理', 'fa fa-leaf', '0', 'pages/softm/system/index.html', '#', null, null, 'system', null, '0', null, 'fa fa-leaf');
INSERT INTO `sys_menu_info` VALUES ('4c8820df-6447-11e7-a272-0025d3a93601', null, '0', '系统管理', 'fa fa-cog', '0', 'pages/error/404.html', '', null, null, '', null, '0', '菜单', 'fa fa-cog');
INSERT INTO `sys_menu_info` VALUES ('4c882255-6447-11e7-a272-0025d3a93601', null, '4c881551-6447-11e7-a272-0025d3a93601', '单位组织', 'fa  fa-coffee', '0', 'pages/crm/organization/index.html', '单位组织', null, null, null, null, '0', null, 'fa  fa-coffee');
INSERT INTO `sys_menu_info` VALUES ('91257EC58A61079D778D4DD08FB7652B', null, '4c87efc1-6447-11e7-a272-0025d3a93601', '数据库表查看', 'fa fa-list', '3', 'pages/dbm/table/show-tables.html', '数据库表查看', 'system', '2017-09-15 10:11:14', 'system', null, '0', '菜单', 'fa fa-list');
INSERT INTO `sys_menu_info` VALUES ('9419DC15C84351C8F038B2B0E5302FEC', null, '4c881551-6447-11e7-a272-0025d3a93601', '单位部门', 'fa fa-map-marker', '2', 'pages/crm/department/index.html', '单位部门', null, null, 'system', null, '0', null, 'fa fa-map-marker');
INSERT INTO `sys_menu_info` VALUES ('A3621F23A4BC0580D08EEF948C0FD30B', null, '0', '用户角色', 'fa fa-users', '4', '', '用户管理', null, null, 'system', null, '0', '菜单', 'fa fa-users');

-- ----------------------------
-- Table structure for sys_organization_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_organization_info`;
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

-- ----------------------------
-- Records of sys_organization_info
-- ----------------------------
INSERT INTO `sys_organization_info` VALUES ('6388B0BE2A791F72B3265108DF406F36', '333', '1', '2018-01-10 14:39:23', null, '1', '3123', '2018-01-10 14:39:23', 'system');
INSERT INTO `sys_organization_info` VALUES ('73E5AFC5FABD1C178F2D14A0DB0F8A9D', '1234', '123', '2018-01-10 14:40:12', null, '1', '123', '2018-01-10 14:40:12', 'system');
INSERT INTO `sys_organization_info` VALUES ('E4AAA84F6E6085F1AA37C03252F78549', '123', '123', '2018-01-10 14:39:16', null, '1', '123', '2018-01-10 14:39:16', 'system');

-- ----------------------------
-- Table structure for sys_roles_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_info`;
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
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_roles_info
-- ----------------------------
INSERT INTO `sys_roles_info` VALUES ('019E88116631800A20A027BC04556A63', '621B717B7AA366579A8C4066D0D94B08', 'qqq', '2017-11-28 15:08:34', null, '1', 'qqqq', '2017-11-28 15:08:34', 'system');
INSERT INTO `sys_roles_info` VALUES ('422E8364D11EBC35CC0F6D7FE2613F0D', '75418090625A1C9F9AB126EB5E8E3853', '123', '2017-11-07 11:55:38', null, '1', '123111', '2017-11-07 13:55:43', null);
INSERT INTO `sys_roles_info` VALUES ('6803A43931172D867F03A829C448DCE5', '621B717B7AA366579A8C4066D0D94B08', '113231', '2017-11-07 14:31:48', null, '1', '3213', '2017-11-07 14:31:48', null);
INSERT INTO `sys_roles_info` VALUES ('7145A4E69D78327286B76A64B73A22EC', '621B717B7AA366579A8C4066D0D94B08', '123', '2017-11-07 11:55:26', null, '1', '123', '2017-11-07 11:55:26', 'system');
INSERT INTO `sys_roles_info` VALUES ('B6C8910B03B01D3B8F1DA270A0231F5F', 'D58E6596AAA01A8419FEBE71D7999856', '123', '2017-11-07 11:56:03', null, '1', '123', '2017-11-07 11:56:03', null);
INSERT INTO `sys_roles_info` VALUES ('F297893E3120C36D71EC38E6E288D686', '621B717B7AA366579A8C4066D0D94B08', '4564596789', '2017-11-07 14:32:47', null, '1', '5645646', '2017-11-07 14:32:47', null);
INSERT INTO `sys_roles_info` VALUES ('FAF603F6EBD247F9E5E12C0BF43F4487', 'EDA51AA8D4359F739E7D3EE9923FEBE8', '123', '2017-11-07 11:56:28', null, '1', '123', '2017-11-07 11:56:28', null);

-- ----------------------------
-- Table structure for sys_roles_jurisdiction_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_jurisdiction_info`;
CREATE TABLE `sys_roles_jurisdiction_info` (
  `uuid` varchar(32) NOT NULL,
  `menu_id` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_roles_jurisdiction_info
-- ----------------------------

-- ----------------------------
-- Table structure for sys_seed_result_ruler_info
-- ----------------------------
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
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_seed_result_ruler_info
-- ----------------------------
INSERT INTO `sys_seed_result_ruler_info` VALUES ('0895C3E27BAFBA243151B501E39CA7A0', '简介', '392BDB33918EAD445DC035392636F52D', '2018-01-09 23:32:06', null, null, null, '简介', '402880905da16202015da17f0c11000d', '402880905da16202015da17540170006', 'BCFA39FCA088D151372D563DCB03D27C', '2018-01-09 23:32:06', 'system');
INSERT INTO `sys_seed_result_ruler_info` VALUES ('2AB71F75098D75B3623E8C18233B4FD7', '标题', 'DBC5B0C9008B9AFAE9054D35AA404D9A', '2018-01-09 23:25:28', null, null, null, '标题', 'CC0F19D1035997D5F7255B2CB7D69820', 'CB4C9272DF1E25758BEE419B4887995C', 'C06A7B0878844341823CDBF55F03885C', '2018-01-09 23:25:28', 'system');
INSERT INTO `sys_seed_result_ruler_info` VALUES ('4540457994919CEA112734F7AE005CDB', '图片', '6811519D0BECB66141985C21718DE32A', '2018-01-09 23:26:12', null, null, null, '图片', '4CB980202E88B519FA5332EEAE20DEA8', '10E500DC038ED1258F35F4865D378E93', 'CF1C0EABDE01F3F762DE286FC64D412A', '2018-01-09 23:26:12', 'system');
INSERT INTO `sys_seed_result_ruler_info` VALUES ('7490130216101202F9EC9D0768272C01', '链接', 'B1BCC8EEE9404A15B8D27A6C3D5F5685', '2018-01-09 23:25:28', null, null, null, '链接', '439D99D940E8062B3E3CA8B482FE160B', 'CB4C9272DF1E25758BEE419B4887995C', 'C06A7B0878844341823CDBF55F03885C', '2018-01-09 23:25:28', 'system');
INSERT INTO `sys_seed_result_ruler_info` VALUES ('807237947541F8B6C760E8B22AD0DB9F', '连接', 'AEA87950A0B9BA85FBE90473122EE86D', '2018-01-09 23:32:06', null, null, null, '连接', '402880905da16202015da1796e200008', '402880905da16202015da17540170006', 'BCFA39FCA088D151372D563DCB03D27C', '2018-01-09 23:32:06', 'system');
INSERT INTO `sys_seed_result_ruler_info` VALUES ('81C180C96EF729A8C2818BB503D313F4', '评分', '5D30C232E695539778C32BA5E8BB44AE', '2018-01-09 23:26:12', null, null, null, '评分', '1DF9BFACB271FD8520A13425C4C8CB6C', '10E500DC038ED1258F35F4865D378E93', 'CF1C0EABDE01F3F762DE286FC64D412A', '2018-01-09 23:26:12', 'system');
INSERT INTO `sys_seed_result_ruler_info` VALUES ('86236B862D93966F6FF3223CAF839BD5', '阅读量', 'EFA1D46AB1F80B96FE81A817A0B9AC89', '2018-01-09 23:32:06', null, null, null, '阅读量', '402880905da16202015da17f888a000e', '402880905da16202015da17540170006', 'BCFA39FCA088D151372D563DCB03D27C', '2018-01-09 23:32:06', 'system');
INSERT INTO `sys_seed_result_ruler_info` VALUES ('882CF324695A48457187E35CBCF865A0', '作者', 'A40A887F95FB94407A7C6485D046D1C0', '2018-01-09 23:32:06', null, null, null, '作者', '402880905da16202015da17c2ad6000a', '402880905da16202015da17540170006', 'BCFA39FCA088D151372D563DCB03D27C', '2018-01-09 23:32:06', 'system');
INSERT INTO `sys_seed_result_ruler_info` VALUES ('8A7E9AA9E190CCEC97873F89FB60B77F', '分类1', '7F5EBA36428CFE9505B49FB74E358456', '2018-01-09 23:32:06', null, null, null, '分类1', '402880905da16202015da17e1cca000b', '402880905da16202015da17540170006', 'BCFA39FCA088D151372D563DCB03D27C', '2018-01-09 23:32:06', 'system');
INSERT INTO `sys_seed_result_ruler_info` VALUES ('B245630059BF80D203D51D9627C02280', '书名', 'EB8F227E6322E013E91D4BCD5B6DDB2B', '2018-01-09 23:26:12', null, null, null, '书名', 'EF04BA346AA6FF5761F69305592210C3', '10E500DC038ED1258F35F4865D378E93', 'CF1C0EABDE01F3F762DE286FC64D412A', '2018-01-09 23:26:12', 'system');
INSERT INTO `sys_seed_result_ruler_info` VALUES ('C2E9B05F818B8EFE4F3B34569CE607EF', '分类2', '78E450B093B3F9AF42D0AAAA61682AA1', '2018-01-09 23:32:06', null, null, null, '分类2', '402880905da16202015da17e83fe000c', '402880905da16202015da17540170006', 'BCFA39FCA088D151372D563DCB03D27C', '2018-01-09 23:32:06', 'system');
INSERT INTO `sys_seed_result_ruler_info` VALUES ('D7C8E774797C283E6C35775EEDF509B0', '书名', 'B3F9AE1BAD7F86B1D1BD60276820693B', '2018-01-09 23:32:06', null, null, null, '书名', '402880905da16202015da178dd370007', '402880905da16202015da17540170006', 'BCFA39FCA088D151372D563DCB03D27C', '2018-01-09 23:32:06', 'system');
INSERT INTO `sys_seed_result_ruler_info` VALUES ('E6408D454A03DCC483A193BAD05319DD', '图片', 'A08F2E055BBF6690EFDA0B14CFD207FB', '2018-01-09 23:32:06', null, null, null, '图片', '402880905da16202015da17a6eb10009', '402880905da16202015da17540170006', 'BCFA39FCA088D151372D563DCB03D27C', '2018-01-09 23:32:06', 'system');

-- ----------------------------
-- Table structure for sys_seed_ruler_colum_info
-- ----------------------------
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
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_seed_ruler_colum_info
-- ----------------------------
INSERT INTO `sys_seed_ruler_colum_info` VALUES ('1DF9BFACB271FD8520A13425C4C8CB6C', '', '', '0', '评分', '2017-08-30 07:46:29', null, '0', '', '//div[@class=\"comment-wrap\"]//h4[@id=\"j_bookScore\"]//text()', '10E500DC038ED1258F35F4865D378E93', '', '0', 'l', '2017-08-30 08:38:11', null);
INSERT INTO `sys_seed_ruler_colum_info` VALUES ('402880905da16202015da178dd370007', '', '', '0', '书名', '2017-08-02 13:43:59', null, '0', '', '//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//h4//a//text()', '402880905da16202015da17540170006', '', '0', 'l', '2017-08-02 13:44:41', null);
INSERT INTO `sys_seed_ruler_colum_info` VALUES ('402880905da16202015da1796e200008', '', '', '0', '连接', '2017-08-02 13:44:36', null, '0', '', '//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//h4//a//@href', '402880905da16202015da17540170006', '', '0', 'l', '2017-08-02 13:44:36', 'system');
INSERT INTO `sys_seed_ruler_colum_info` VALUES ('402880905da16202015da17a6eb10009', '', '', '0', '图片', '2017-08-02 13:45:41', null, '0', '', '//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-img-box\']//a//img//@src', '402880905da16202015da17540170006', '', '0', 'l', '2017-08-02 13:45:41', 'system');
INSERT INTO `sys_seed_ruler_colum_info` VALUES ('402880905da16202015da17c2ad6000a', '', '', '0', '作者', '2017-08-02 13:47:35', null, '0', '', '//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//p[@class=\'author\']//a[@class=\'name\']//text()', '402880905da16202015da17540170006', '', '0', 'l', '2017-08-02 13:47:35', 'system');
INSERT INTO `sys_seed_ruler_colum_info` VALUES ('402880905da16202015da17e1cca000b', '', '', '0', '分类1', '2017-08-02 13:49:42', null, '0', '', '//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//p[@class=\'author\']//a[@data-eid=\'qd_B60\']//text()', '402880905da16202015da17540170006', '', '0', 'l', '2017-08-02 13:49:42', 'system');
INSERT INTO `sys_seed_ruler_colum_info` VALUES ('402880905da16202015da17e83fe000c', '', '', '0', '分类2', '2017-08-02 13:50:09', null, '0', '', '//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//p[@class=\'author\']//a[@class=\'go-sub-type\']//text()', '402880905da16202015da17540170006', '', '0', 'l', '2017-08-02 13:50:09', 'system');
INSERT INTO `sys_seed_ruler_colum_info` VALUES ('402880905da16202015da17f0c11000d', '', '', '0', '简介', '2017-08-02 13:50:44', null, '0', '', '//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//p[@class=\'intro\']//text()', '402880905da16202015da17540170006', '', '0', 'l', '2017-08-02 13:50:44', 'system');
INSERT INTO `sys_seed_ruler_colum_info` VALUES ('402880905da16202015da17f888a000e', '', '', '0', '阅读量', '2017-08-02 13:51:16', null, '0', '', '//ul[@class=\'all-img-list cf\']//li//div[@class=\'book-mid-info\']//p[@class=\'update\']//span//text()', '402880905da16202015da17540170006', '', '0', 'l', '2017-08-02 13:51:16', 'system');
INSERT INTO `sys_seed_ruler_colum_info` VALUES ('439D99D940E8062B3E3CA8B482FE160B', '', '', '0', '链接', '2017-08-30 21:51:56', null, '0', '', '//div[@class=\"list\"]//dl//dt//a//@href', 'CB4C9272DF1E25758BEE419B4887995C', '', '0', 'l', '2017-08-30 21:52:23', null);
INSERT INTO `sys_seed_ruler_colum_info` VALUES ('4CB980202E88B519FA5332EEAE20DEA8', '', '', '0', '图片', '2017-08-30 07:44:00', null, '0', '', '//div[@class=\"book-information cf\"]//div[@class=\'book-img\']//img//@src', '10E500DC038ED1258F35F4865D378E93', '', '0', 'l', '2017-08-30 21:37:53', null);
INSERT INTO `sys_seed_ruler_colum_info` VALUES ('CC0F19D1035997D5F7255B2CB7D69820', '', '', '0', '标题', '2017-08-30 21:51:42', null, '0', '', '//div[@class=\"list\"]//dl//dt//a//text()', 'CB4C9272DF1E25758BEE419B4887995C', '', '0', 'l', '2017-08-30 21:51:42', 'system');
INSERT INTO `sys_seed_ruler_colum_info` VALUES ('EF04BA346AA6FF5761F69305592210C3', '', '', '0', '书名', '2017-08-30 20:16:09', null, '0', '', '//div[@class=\"book-info \"]//h1//em//text()', '10E500DC038ED1258F35F4865D378E93', '', '0', 'l', '2017-08-30 20:16:09', 'system');

-- ----------------------------
-- Table structure for sys_seed_ruler_info
-- ----------------------------
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
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_seed_ruler_info
-- ----------------------------
INSERT INTO `sys_seed_ruler_info` VALUES ('10E500DC038ED1258F35F4865D378E93', 'utf-8', null, '2017-08-30 07:34:38', null, '0', '', '书详细', 'rg', '402880905da16202015da170dce20004', 'http://book.qidian.com/info', 'detial', '2017-08-30 20:25:27', null);
INSERT INTO `sys_seed_ruler_info` VALUES ('402880905da16202015da17540170006', 'UTF-8', null, '2017-08-02 13:40:02', null, '0', '', '全部作品_起点中文网', 'rg', '402880905da16202015da170dce20004', 'http://a.qidian.com', 'list', '2017-08-16 17:51:15', null);
INSERT INTO `sys_seed_ruler_info` VALUES ('CB4C9272DF1E25758BEE419B4887995C', 'utf-8', null, '2017-08-30 21:49:16', null, '0', '', '百度百科检索', 'se', '5C131F8BBB917576CC37760FCABAB6E6', 'https://zhidao.baidu.com/search?', 'list', '2017-08-30 22:33:20', null);

-- ----------------------------
-- Table structure for sys_seed_url_info
-- ----------------------------
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
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `request_proxy` int(11) DEFAULT NULL COMMENT '请求时间',
  `charset` varchar(10) DEFAULT NULL COMMENT '字符集',
  `request_type` varchar(10) DEFAULT NULL COMMENT '请求方式',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_seed_url_info
-- ----------------------------
INSERT INTO `sys_seed_url_info` VALUES ('402880905da16202015da170dce20004', '0', '', '2017-08-02 13:35:14', 'system', null, 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=397776456,2572651939&fm=58', '起点中文网', '小说网', 'qidian.com', '2017-12-28 19:02:51', null, '0', null, null);
INSERT INTO `sys_seed_url_info` VALUES ('5C131F8BBB917576CC37760FCABAB6E6', '0', '', '2017-08-30 21:47:01', 'system', null, 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1281270396,2268607412&fm=58', '百度知道', '百科', 'https://zhidao.baidu.com', '2018-01-09 21:40:44', null, null, null, null);

-- ----------------------------
-- Table structure for sys_system_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_system_info`;
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

-- ----------------------------
-- Records of sys_system_info
-- ----------------------------

-- ----------------------------
-- Table structure for sys_table_info
-- ----------------------------
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
  `update_time` datetime DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `delete_flag` int(2) DEFAULT NULL,
  `table_desc` varchar(50) DEFAULT NULL COMMENT '表的含义',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_table_info
-- ----------------------------
INSERT INTO `sys_table_info` VALUES ('BCFA39FCA088D151372D563DCB03D27C', 'F1027C0339119FF6B60244754A30F8A3', '', 'qwetest', null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `sys_table_info` VALUES ('C06A7B0878844341823CDBF55F03885C', 'F1027C0339119FF6B60244754A30F8A3', '', 'baidu_linba', null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `sys_table_info` VALUES ('CF1C0EABDE01F3F762DE286FC64D412A', 'F1027C0339119FF6B60244754A30F8A3', '', 'score', null, null, null, null, null, null, null, null, null, null, '');

-- ----------------------------
-- Table structure for sys_table_type_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_table_type_info`;
CREATE TABLE `sys_table_type_info` (
  `uuid` varchar(36) NOT NULL,
  `TYPE_NAME` varchar(50) DEFAULT NULL,
  `TYPE_CLASS` varchar(50) DEFAULT NULL,
  `TYPE_ORDER` int(11) DEFAULT NULL,
  `discription` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user` varchar(50) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `delete_flag` int(11) DEFAULT NULL,
  `type_icon` varchar(50) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_table_type_info
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_base_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_base_info`;
CREATE TABLE `sys_user_base_info` (
  `uuid` varchar(32) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
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

-- ----------------------------
-- Records of sys_user_base_info
-- ----------------------------
INSERT INTO `sys_user_base_info` VALUES ('564ebf7f365f4f56bfc13f31cb3b7702', '2', '$2a$10$NMvILqvWOhIbHIT9xHfCuuStzQYwHhmfmkahfBPvldVaVRlejo6rG', '2', '2', '2', '2018-01-15 10:49:40', null, null, '2', '2018-01-15 10:49:40', 'system', null, '2', '2');
INSERT INTO `sys_user_base_info` VALUES ('997844955c1a43cabf10a7ea957a8a13', '4', '$2a$10$OcDAob1g7ot0yTJO25MPVujQFLAaRxzpAvPCmaa82.hFa63nJ2Ne2', '4', '4', '4', '2018-01-11 18:04:28', null, null, '', '2018-01-15 10:49:50', 'system', null, '4', '4');
INSERT INTO `sys_user_base_info` VALUES ('99ee69e165d64c10b14e96401484437b', '1', '$2a$10$t41NtNMCn7QK4Cc9aCZzIOSBVghhGAPAwOC4l8wr8Qrlz8I3YeEUG', '1', '1', '1', '2018-01-11 18:05:20', null, null, '1', '2018-01-11 18:05:20', 'system', null, '1', '1');

-- ----------------------------
-- Table structure for sys_user_roles_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_roles_info`;
CREATE TABLE `sys_user_roles_info` (
  `uuid` varchar(32) NOT NULL,
  `roles_id` varchar(32) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_roles_info
-- ----------------------------
