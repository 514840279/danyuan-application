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

/*Table structure for table `csv4` */

DROP TABLE IF EXISTS `csv4`;

CREATE TABLE `csv4` (
  `问题` varchar(255) DEFAULT NULL,
  `分类` int(10) DEFAULT NULL,
  `F3` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `csv4` */

insert  into `csv4`(`问题`,`分类`,`F3`) values ('眼眶下面有骨瘤，什么医院治疗最好？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('我妈得了子宫癌血瘤晚期做过化疗放疗有五个月了现在在家修养，最近大便带有血丝是不是复发症状呢？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('得了扁桃体高分化鳞状细胞癌该怎么治疗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('想问下膀胱癌是什么？为什么会得膀胱癌？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('喝水对肺癌有没有好处',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('周围性软骨肉瘤得了这病怎么治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('鼻咽癌',NULL,2);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('我爷爷今年9月25日检查出得了直肠癌，且转移于肝，请问用什么好的治疗方法治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('骨肉瘤存活率',4,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('晚期纵膈型肺癌如何治理？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肺部良性肿瘤',NULL,2);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脂肪肉瘤手术后是否必须放疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('鼻咽癌会遗传么？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胆囊癌晚期治愈的案例',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑膜瘤是手术还是做伽马刀好',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('乳腺癌术后胸部的不适',NULL,2);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('结肠粘液腺癌',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('隆突性皮肤纤维肉瘤 如何治疗隆突性皮肤纤维肉瘤？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肝血管瘤是什么？？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('舌癌手术治疗的效果怎么样？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('膀胱癌晚期的治疗方法？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('骨瘤手术切除不切除？？？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('得了外阴道癌怎么办',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('请问血瘤的危害大吗?',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肠癌术后的饮食有什么营养食谱吗？？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肝癌会有移传性吗？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('7年忙碌治疗，高分化脂肪肉瘤，多次手术无效，现已转移到腰椎，肉瘤体积猛增，该如何治疗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('血瘤康1号在哪可以买到？',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('关于纤维腺瘤可否随哺乳而消失的问题',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('我家狗狗屁股后面长了个肿瘤！还连着血管！之前还包在尿道里面现在掉出来了！',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('骨软骨瘤怎么治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('直肠癌术后化疗方案 饮食注意什么问题直肠溃疡型粘液腺癌',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('膀胱癌的灌注护理？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肺腺癌骨转移能活多久',4,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('治疗脂肪瘤的中药有哪些?',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('膝盖骨软骨瘤手术后',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('骨软骨瘤一般手术时间要多久可以出院',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('直肠癌晚期',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('直肠溃疡型粘液腺癌PT3NOMO 2期 Dukes‘B期 什么意思',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('中分化型鳞癌',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('碘131治疗甲状腺癌 甲亢 做完甲状腺碘131检查后多久可以正常接触宝宝',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肾癌的预防方法有哪些',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('血管瘤晚期病人如何止痛',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('中分化胃腺癌手术后用做化疗吗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('华西对于肾癌治疗怎么样？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('膀胱癌晚期症状是什么？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('我朋友肝里有血管瘤',NULL,0);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('食管中分化鳞癌',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('鳞癌是癌细胞的分类？不同于普通癌症么？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肺鳞癌晚期化疗如何?',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑瘤早期的症状有什么表现?',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('骨癌怎么冶',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('最近经常头痛，呕吐，有点患者得了脑胶质瘤，请问专家早期脑胶质瘤的症状有哪些？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肺癌病人可以吃凉的么',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('我的父亲是形态学支持低分化腺癌，请问医生，症状严重吗?',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('血瘤还有没有得治',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('为什么良性肿瘤切除后还会复发？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('血癌的注意事项有哪些',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肺鳞癌早期开刀后',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('乳腺纤维瘤复发',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肺癌吃什么食物有利于治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('经常吃那些蔬菜可以防癌??',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑膜瘤问题',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('阴道癌晚期正在放、化疗，求中药调理',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('食管鳞癌最好的手术室什么',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('一岁半口腔舌底血管肿瘤',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胆囊癌晚期脑转移，手术治疗还适用么？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脂肪瘤要怎么治疗？？？、',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('什么是婴儿成神经细胞瘤',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('黑色素瘤上海哪家医院好些？',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('宫颈鳞状细胞癌是癌症的什么期。？能治好吗。？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑瘤患者吃什么补品',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('你好 请问治疗舌癌的药哪里可以买得到？？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('纵膈肿瘤的病人需注意什么的？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('您好，我是济南的，我父亲得了高分化软骨肉瘤，想向您请教一下治疗方法。15269132777，我姓杜，给我发短信，我给您回过去。谢谢！',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肺癌中有种鳞癌，中晚期还能活多久。',4,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('医生说现在血管瘤太小',NULL,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('骨肉瘤的病因',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肾癌根治术后的护理',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('个人求助，神经细胞瘤晚期',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('右下牙齦鱗狀細胞癌治療預后如何？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肾癌生物治疗费用大概花多少钱',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('有没有治疗胸腺癌的中医院？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('吃什么对骨肉瘤好',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('星形细胞瘤二级是癌吗',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('良性肿瘤会恶化吗',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胃良性肿瘤吃什么好',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('高分化血管肉瘤要怎么治疗？可以..？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑癌有的治吗',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('骨瘤 得了骨瘤应该注意什么',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('甲腺癌甲腺切除后做什么治疗好',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('纤维肉瘤术后疤痕怎样修复',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肺癌吃什么对身体有好处',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('髓母细胞瘤能治愈吗？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肠癌手术后一年，有时感觉有些累属于什么原因，还会长吗',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('小孩脑髓母细胞瘤脑积水喊头痛吃什么药好',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('舌癌晚期能治好吗',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('膀胱癌治的好吗？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('急求贲门癌管状腺癌治疗方案',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('你好得了腺泡壮软组织肉瘤秋季吃什么好',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('乳腺癌术后胸口长啦一个硬块是怎么回事？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('徐州软骨瘤手术大概多少钱',5,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('多发性遗传性骨软骨瘤如何预防',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('正规非霍奇金淋巴瘤医院',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('鼻咽癌形成的原因主要有哪些',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('得了骨癌骨头会疼吗',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('膀胱癌骨转移怎么治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('怎样减少肿瘤带来的疼痛',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('血管瘤有什么危害呢？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('舌癌 有吐血症状！！身体弱 不能手术，还有什么治疗方法！',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肺癌前期有什么明显症状？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('四肢很多地方有软骨瘤',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('如何减少晚期直肠癌患者的痛苦？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肾癌晚期吃什么好？？？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('有关于骨癌~！',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('鼻咽癌放疗后的皮肤护理',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('非霍奇金淋巴瘤之家怎么办呢？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑膜瘤的放射治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('女儿得了神经母细胞瘤痛起来怎么办',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑瘤患者注意什么',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑膜瘤手术后头晕呕吐怎么办？急求！',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('喷门溃疡粘液型腺癌伴底分化腺癌',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('软骨瘤必须手术么',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('纵膈及右侧肺门可见多个肿大淋巴结影是否乳腺癌转移',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('右胫骨内缘骨软骨瘤是什么',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胰腺癌肾转移怎么治疗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('食道癌的主要饮食和治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('切除了腹膜后脂肪肉瘤又复发 无法做手术 肚子胀得好大，在进行热疗 还能存活多久?',4,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肝血管瘤是什么病？要紧吗？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('霍奇金淋巴瘤后期是化疗还是放疗巩固？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('舌癌手术后，要不要化疗呢？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('非霍奇金淋巴瘤的治疗医院',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('食道癌出现气短出汗怎么办',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('骨癌早期有什么症状?',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑瘤病人诊治',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('毛细管血瘤会遗传下一代吗',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('我妈妈做了两次穿刺，结果都是脂肪瘤，但医生说我妈是脂肪肉瘤。难道穿刺做出来的结果不准确吗？怎样判断脂肪瘤与脂肪肉瘤',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('垂体腺瘤需要手术吗',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('血管瘤的发病率是多少',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('食道癌临床症状？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('如果得了急性髓母细胞瘤能活多久',4,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('婴儿为什么会得血管瘤',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('溶骨性肿瘤属于什么',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('鼻咽癌晚期能活多久呢？',4,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('黑色素瘤严重么，黑色素瘤晚期症状有哪些呀',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('什么是脂肪瘤??',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('尺骨远端软骨瘤',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('女37岁 黄历查询2013宜忌 阴道癌患者宜忌吃哪些',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脂肪瘤严重吗?什么颜色的是正常?脂肪瘤会癌变吗?',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('三阴性乳腺癌肺转移术后胸部局部骨质破坏严重吗？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('鳞状细胞癌宫颈癌怎样治疗？因出血住院，并',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肠癌吃什么药好啊',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胃癌病人的饮食规律是什么？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肺癌化疗期饮食应该注意什么',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('男女身上会发出哪些癌症信号？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('请问子宫肌瘤、宫颈纳氏囊肿阴道伴随少许出血怎样医治？会是宫颈癌的症状？？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('膀胱癌患者要不要手术？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('什么叫左乳弱回声结节，就是纤维腺瘤吗',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('舌癌有什么注意事项',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('晚期宫颈癌、阴道癌或宫腔内积脓还有的医吗？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('睾丸肿瘤怎么治疗效果最好会影响生育吗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('纤维肉瘤晚期 54岁男性纤维肉瘤晚期听说有膏药能止疼有没有？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('腺泡状软组织肉瘤复发在同一位置吗？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胰腺癌的晚期症状，急啊！！！！',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('这是膀胱癌吗',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胰腺癌？该如何治疗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('骨肉瘤会死吗?',4,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('5岁男孩，确诊髓母细胞瘤以及脑积水应该如何治疗为佳',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('视网膜母细胞瘤有治吗',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('黑素瘤的痒痛症状',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('色素痣癌变的可能性大吗',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肺癌患者提高免疫力注射用胸腺法新用多长时间好',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('鳞癌晚期脚面腿浮肿怎样办',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('乳腺良性肿瘤腋窝淋巴结会肿大吗?',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肿瘤是怎么形成的？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肝脏查出有血管瘤，此病严重吗，应该怎么治疗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('哈尔滨上颌骨软骨肉瘤，怎么预防？怎么找医生指导一下？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胃粘液腺癌0.05CM大小',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑癌是不是吸烟引发的?',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('乳腺癌多发骨转移并且胸椎压缩性骨折，正在放疗放疗20个疗程，现在不疼了，给他吃中药，那西药还用吃吗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('求关于血癌的 PPT',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('骨瘤好治吗？怎么治？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('鼻咽癌药方',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('预防血管瘤疾病有哪些主要措施',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('李小龙是死于脑癌吗',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('冷水江到底怎么了！博尼尔一个酒店都查出两个得癌症的。',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胆囊癌会传染吗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肠癌与肠炎的症状相同吗',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('恶性肿瘤术后化疗痛苦吗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑膜瘤术后出现积水怎么办？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('食道癌晚期的护理工作要如何进行？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('膀胱癌患者手术前吃什么好？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('乙状结肠巨大溃疡型低分化腺癌癌根治手术后是否适合做放疗治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肝癌是否可治',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('孕妇可以照顾宫颈鳞状细胞癌患者吗？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肺癌的治疗方法',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('济南哪家医院治疗口腔血管瘤病的效果比较好？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胸部管状腺瘤严重吗',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胆囊癌伴肝转移',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('黑色素瘤 确诊需多久',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑癌的症状?',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肝癌手术后过敏是怎么回事',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肠癌采用哪种方式治疗较好？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胃癌如何进行分期治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('舌癌能治愈吗',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('内生性软骨瘤',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('乳腺纤维瘤症状',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('食道癌晚期真的没治了吗？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('骨癌的症状是什么？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('鼻咽癌能不能遗传',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('是不是恶性黑色素瘤？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肠癌做化疗会脱发吗？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('宫颈癌IIa，腺癌',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胸腺癌IB期2 化疗二次因白细胞过低怎么办',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('T淋巴母细胞淋巴瘤四期侵及颈部、纵膈淋巴结、骨髓',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('哪些是妇科良性肿瘤？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脂肪肉瘤病人吃什么食品好?',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑瘤手术后恢复时间',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('食管鳞状细胞癌是什么',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('全国哪个医院医治神经母细胞瘤比较好？我朋友的儿子5岁，确诊了是神经母细胞瘤，目前在广西医科大那里医治，可是这里的技术不怎么好，想问下全国哪个省哪个医院技术比较先进，可以医治这种病的？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑膜瘤术后中医康复治疗有哪些？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('上海有专门看血管瘤的医院吗？我媳妇得了这个病，想找个好医院给她看一下。',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('食道癌食管镜检查该怎么做 详细??',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('民间最有效治肺癌偏方',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('纤维腺瘤在左乳房有指头大要不要马上手术',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('膀胱癌全切疑问',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('49岁男，右肺中央型肺癌伴两肺多发转移，纵膈淋巴结转移，双侧胸腔积液，心包积液',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('前后纵膈有哪些肿瘤',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('什么是纤维腺瘤',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑癌中期有得治吗?',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胰腺癌术后出现消化道出血怎么办？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胰腺癌用什么药治疗比较好？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('膝盖上长血瘤，怎么治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('血管瘤患者应该注意什么？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肝血管肿瘤手术后能彻底根子吗？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('黑色素瘤有撒办法治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('血癌会不会死？该怎么治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('怎样才能根治脂肪瘤？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('宝宝颅部长了骨瘤',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('间充质软骨肉瘤得了这病怎么治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('耳朵后面长了脂肪瘤',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肩部脂肪瘤',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('严重性，骨瘤。他需要帮助啊，',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('右肺下叶中分化鳞状细胞癌伴坏死肺癌',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肺癌患者如何进行科学保健？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('男性垂体微腺瘤适合用什么手术？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('劲普血瘤怎么治疗，现在天天出血怎么办',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('什么是恶性黑色素瘤？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脂肪肉瘤 高强度聚焦超声治疗对脂肪肉瘤全腹腔转移是否有效？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('治癌症的靶向药到底有用吗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('癌症专家：食道癌晚期能活多久',4,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('北京卵巢癌晚期化疗期间想找个好中医',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('黑色素瘤治疗方法',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肿瘤和血瘤有什么区别?',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胆囊癌有哪些症状？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('我有脂肪瘤',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('骨癌化疗后吃什么',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('食道癌怎么治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('膀胱癌患者能服用石上柏？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肾上腺皮质 肾上腺皮质腺瘤 57岁男性患肾上腺皮质腺瘤是否需要手术？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('我左侧肾上腺小腺瘤，',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('乳腺癌患者有肝血管瘤',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('成人口腔血管瘤',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('请问胃腺癌手术后要注意什么？吃什么好？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('低分化肺腺癌高分化腺癌的区别',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胃腺癌能治疗好吗?',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('II期结直肠癌 II期结直肠癌能否治愈？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肺癌有什么症状？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('右肾良性肿瘤？',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('直肠癌晚期能治肿瘤包住血管手术拿不出来肿瘤怎样办',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肾癌最早的临床表现是什么？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑癌的表现有哪些？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('宫颈腺鳞癌患者哪些东西不能吃',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('Lewis肺癌细胞是腺癌还是鳞癌？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('腿关节长了软骨瘤怎么弄',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脂肪瘤怎么治疗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('黑色素瘤传染吗？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('中心型腺癌，右肺3cm肿块，左肺也初见转移。其余，未见转移。此种情况该如何处理？一定要手术吗？谢谢！',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('纵膈肿瘤治疗期间有什么需要注意的？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('鳞癌的症状',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('得了脂肪瘤怎么办？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('膀胱癌患者手术效果好不好？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('女性32岁胸腺瘤已切除之后，又被确诊为胸腺癌，请问',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('复方万年青胶囊对肺癌中的鳞癌有疗效么？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('软骨瘤是怎么回事',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('腺癌并细支气管肺泡癌结构术后还会复发么',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('结节型黑色素瘤',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肺癌分哪几型？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('怎么治疗血管瘤',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('骨瘤烟酒有影响么',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑膜瘤做了三次手术又复发应该怎么治疗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('舌部高分化鳞状细胞癌怎么治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('骨瘤该怎样治疗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脂肪瘤的治疗和影响',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('乳腺癌手术保留胸大肌吗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('鼻咽癌化疗的副作用',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肺腺癌有恶性胸水',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('…急…求网络医生外科（关于纤维肉瘤的说法）',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('鼻咽癌早期症状是什么？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('骨肉瘤吃什么好',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脂肪肉瘤两次手术后又复发还能手术治疗吗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('因宫颈癌子宫及附件做了全切术现有发现阴道病变',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胃癌早期表现有哪些？',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('母细胞胶质瘤术后应在饮食注意些什么',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('你好，我阴道出血20多天了，会不会有宫颈癌倾向，如果真的是宫颈癌，严重吗？可以医治吗',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('非霍奇金淋巴瘤 咨询好大夫_非霍奇金淋巴瘤怎么办',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肺鳞癌中晚期',NULL,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('河南省哪家医院对治疗腹腔后肿瘤效果好，病者女62岁，肿瘤已经与血管粘在一起不能进行手术，但每天痛疼难忍',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('纵膈肿瘤治疗的时候要注意什么？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('恶性胸腺瘤和肺癌有什么区别?',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('黑色素瘤什么季节切除最好',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脚上长骨瘤会不会旷散',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('食道癌晚期治疗方法',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('腿部血管瘤是什么病/怎么治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肠癌还有得治疗吗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('求医生 肝血管肉瘤怎么治 在哪个医院治比较好（最好是湖北省内）',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('多发性软骨瘤请问传染吗',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('霍奇金淋巴瘤3年，现出现全身皮肤瘙痒，怎办',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑癌晚期已扩散怎样维持寿命',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('得了骨瘤会痊愈吗？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胆囊腺癌二级，侵润性是恶性吗？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('宫颈鳞状细胞癌可以治疗好吗?',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肠癌的病人能吃竹荪吗',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('软骨瘤是怎么引起的呢？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('请问中央神经细胞瘤有人听过吗？是什么性质的肿瘤~',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胆囊癌放疗能治愈吗？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脂肪肉瘤术后放疗有效果吗？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('多发性脂肪瘤在哪里有人会治？我朋友是大学生 想把病治好',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('左肺上叶低分化鳞状细胞癌如何治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('骨肉瘤吃什么药',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑瘤是什么症状。',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胃癌手术四天后能出院吗',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肺癌病人吃什么',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('请问我妈妈的病能确定为肾上腺癌吗？有什么好的治疗方案吗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('玩手机是否会得脑癌',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑癌 脑缺氧怎么办',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('鼻咽癌吃什么水果好？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脂肪肉瘤输液管用吗',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肾癌如何预防',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('我能确定是微腺瘤吗',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('什么是阴道癌痒，是癌症么',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肠癌的早期症状',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肾癌有治愈的希望吗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑癌有没有遗传？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑瘤有什么症状？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('广西肿瘤如何解决？广西肿瘤有什么好的治疗方法吗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胆囊癌早期症状是什么？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('治疗骨瘤的方法',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('血管瘤是什麽病',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胰腺癌末期什么症状',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('食道癌2期（鳞癌）的治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('血癌的详细临床表现是什么',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('我的右胳膊肘内有一软骨瘤，可否手术？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肿瘤长在血管上，能切除吗？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('您好闵大夫，我肛周患“软组织巨细胞肿瘤”',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肝癌晚期死前症状',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('髓母细胞瘤用什么中药',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肺鳞癌存活率是多少肺鳞癌存活时间是多长',5,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('舌癌，不想手术，怎样治疗好？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('骨瘤的危险性，恶性机率大吗？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('食道癌放疗后',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑瘤病要注意什么',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('血管瘤算是严重的病吗？？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑膜瘤手术后怎样的调理生活？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('我儿子得了恶性髓母细胞瘤我已经没钱可治所以亲戚朋友都借了，有谁可以救我可怜的儿子',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肾癌引起的主要原因有什么',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('霍奇金淋巴瘤的饮食问题',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑髓母瘤做完手术后切干净需要放疗治疗吗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('有问题来问问血管瘤要吃药吗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脖子上长有血瘤？',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肠癌肝转移推荐化疗方案',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑血管瘤破裂是否为突发性？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脂肪瘤如何去除怎么样呢？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑瘤术后癫痫有啥症状',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('9岁女孩，出诊为脑室内膜瘤，咨询治疗办法',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肾癌不能手术怎么治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('血小板凝固是血癌的症状吗',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('阴道鳞癌是什么？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('求助束腺瘤的治疗方法',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('我16岁，吃了两年槟榔，最近舌头边上有白的点点，和烂了一些皮，和有红点，请问有的舌癌？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胆囊癌患者能治好吗？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑癌引起的视力模糊怎么治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('骨癌能治愈好吗？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('舌癌中医治疗方法',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('咨询宫颈腺癌的化疗方案',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('左胫骨软骨肉瘤，该怎么治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('乳腺纤维瘤的病变几率有多大',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('这是不是脑癌啊、',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脊髓内血瘤中期和晚期甚么症状',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胰腺癌的晚期症状',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胰腺癌能治愈吗？哪个医院治疗胰腺癌最好？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胃癌切除后转移能活多长时间呢？',5,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('髓母细胞瘤手术后？',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胃癌中期该怎么办？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('抗癌的食物有哪些？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('大夫您好，我今年三十岁，男，是一名右侧腺型肺癌，有胸水，诊断是晚期，并且骨转移，现在用顺泊和紫杉醇化疗，外吃靶项药，我想知道吃靶项药的同时可以吃中药吗？还有我想用锻炼身体的方法战胜病魔，有好的锻炼身体的方法吗？谢谢。',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胆囊癌应注意些什么？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('舌癌手术后能活多久',4,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('1P／19Q缺失的少突胶质细胞瘤',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脸上长脂肪瘤会怎样？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('多发性软骨瘤在哪里治疗好',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('左肺下叶中央分化型腺磷癌术后肺转部分淋巴结转移',NULL,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑癌患者能活多久?',4,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('什么是骨肉瘤',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('本人21岁',NULL,0);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('良性腫瘤吃西藥會消掉嗎？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('腺泡状软组织肉瘤得了这病怎么治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('什么样是血管瘤',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('什么是脂肪瘤？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('请问治好血管瘤这个病要花多少钱啊？',5,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('粘液性脂肪肉瘤',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('左肋骨间叶型软骨肉瘤术后会复发吗',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肩部软骨肉瘤怎么治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('黑龙江鼻腔软骨肉瘤',NULL,0);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肾癌术后不化疗行不行',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胆囊癌中晚期怎么治疗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('鼻咽癌早期治疗怎么样？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肝癌的临床表现以及护理是什么？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('遗传性多发性骨软骨瘤治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肾癌的中晚期症状有哪些？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('得了纵膈肿瘤的病中药治疗效果好吗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('黑色素瘤病理几天出结果',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('纖維肉瘤併發症有哪些？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('乳腺脂肪瘤是在一种什么病怎么治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('23年前发病，手脚部位多发性血管瘤，主要集中在右侧手脚及肩部。以前未治疗过，想了解这种病如何治疗效果最好。',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('请问得了淋巴结转移性腺癌该怎么救治?(肠',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胰腺癌的化疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('怀疑自己的了舌癌这种情况是否是舌癌',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('22岁胸部一直软肤色褐色不痛请问是乳腺癌？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('对黑色素瘤（黑素瘤）的确诊可以不开刀吗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('小文轩得的血管瘤疾病具体什么症状啊？新闻上报道治疗不及时，会被截肢啊',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑胶质母细胞瘤4级 帮助看看核磁加强片子，这是什么瘤子？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('神经性母细胞瘤',NULL,0);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('膀胱癌治疗方法？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('骨肉瘤肺转移治疗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胃癌根治术后的治疗方案【胃体小弯侧溃疡型中分化腺癌】',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('直肠癌的饮食',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('宫颈鳞状细胞癌能做手术吗？想挂您的号',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('骨肉瘤属于大病？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('软骨瘤请求回复！！急！',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('膀胱癌的晚期症状有哪些？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('25岁左腿股骨远端皮质旁骨肉瘤',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('吃酱油能防癌吗 ？？？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('膀胱癌有什么好的治疗方法？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('鼻子和口腔经常出血，是不是血癌的前兆？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('右侧颈脂肪状肉瘤',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('您好：请问一下血癌怎么治？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('纵膈脂肪肉瘤还是膈疝？ 确诊胸腔后纵膈的巨大肿',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑癌中期还有多久命？',5,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑癌的早期症状是怎样的？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('为什么染头发会得癌症',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑膜瘤 脑膜瘤这个怎么治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('右胫骨上段骨软骨骨瘤',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('是不是骨瘤',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('食道癌晚期不能吃饭打营养能活多久?',4,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('右肺上叶鳞癌2b期(T3nomo)是什么意思',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑瘤是什么？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑瘤的症状是什么?',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('哪些色素痣容易癌变？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肠癌手术后可以痊愈吗？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肝癌患者吃什么水果好呢？？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胃癌能治好吗',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('血瘤会转成恶性吗？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('粘液型脂肪肉瘤术后化疗几次',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑瘤是否会传染?',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('先天性右桡骨软骨瘤如何治疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肾母细胞瘤 T型淋疤母细胞溜4期',NULL,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('耳朵长血瘤严重吗？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肺癌腺癌用什么方法有效果',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑膜瘤手术后老是胃不哆嗦，吃饭后哆嗦的更狠，是怎么回事啊',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('乳腺癌胸椎转移',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('西安骨肉瘤女孩李娜现在康复了吗',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('结肠腺癌术后饮食',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('宫颈鳞癌适合用什么方法治疗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('少枝胶质细胞瘤 请问林松教授少枝胶质细胞瘤可以手术吗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('血管瘤治疗医院重庆哪家强？要费用合理疗效好的',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('第1个孩子得了髓母细胞瘤第2个孩子1岁需要做哪些检查吗',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('得了胰腺癌，如何减轻痛苦？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑癌？为什么？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('舌癌中晚期如何治疗?',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('在日常生活中，神经纤维瘤患者如何才能提高自己的睡眠？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('血管瘤有什么不能吃的',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肝癌是怎么引起的？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('胸部有硬块，而且一按很疼，会不会是的鲁腺癌阿？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑癌一定会死么？',4,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('请问内生软骨瘤到底是什么??',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('关于骨肉瘤饮食生活护理方面的具休的注意事项。',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('手术治疗骨癌有哪些优势',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('膀胱癌骨转移手术切除后活多久的时间',4,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('头晕是脑瘤吗',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脑癌还是贫血',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('为乳腺癌的病人做脂肪瘤手术时候刺伤手会不会有事？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('直肠腺癌转移几率是多少？',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('软骨母细胞瘤形成的原因及有关知识？详细点，谢谢！',3,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('腺癌有什么可以治',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肺鳞癌早期有什么好的治疗方法能治愈的吗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('骨癌的治疗措施有哪几种',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('纵膈恶性胸腺瘤术后什么情况是癌细胞扩散了',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('大腿根部内侧的脂肪肉瘤能手术切除吗，大小约有10mm左右',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('中心性软骨肉瘤如何预防',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('眼眶非霍奇金淋巴瘤',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('前纵隔高分化脂肪肉瘤放疗有效果吗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肾癌的临床表现有什么',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('肾癌晚期能中医治疗吗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('脂肪肉瘤分化是否要化疗',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('我 今年32岁，还没要宝宝呢，刚做完检查，诊断：良性反应性改变，诊断细分【中度炎症】。补充意见，查见少量非典性细胞，建议HPV检查，我也做HPV检查了，结果一星期以后才会出来，我很害怕，谁能帮帮我？告诉我答案，会不会和癌症有关系？急急急',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('左大腿肿物，病理为富于血窦高度恶性软组织肉瘤，术后是否放化疗',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('患血癌怎么医治？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('膀胱癌的后续治疗？',2,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('血管内细胞肉瘤一级',6,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('膀胱癌的早期症状？是膀胱癌还能活多久？',1,NULL);
insert  into `csv4`(`问题`,`分类`,`F3`) values ('【急】请问脑膜瘤手术及住院费用多少？',5,NULL);

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

insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('392BDB33918EAD445DC035392636F52D','BCFA39FCA088D151372D563DCB03D27C','简介','简介',NULL,10,'varchar',NULL,NULL,NULL,NULL,NULL,NULL,255);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('5D30C232E695539778C32BA5E8BB44AE','CF1C0EABDE01F3F762DE286FC64D412A','评分','评分',NULL,4,'varchar',NULL,NULL,NULL,NULL,NULL,NULL,255);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('6811519D0BECB66141985C21718DE32A','CF1C0EABDE01F3F762DE286FC64D412A','图片','图片',NULL,5,'varchar',NULL,NULL,NULL,NULL,NULL,NULL,255);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('78E450B093B3F9AF42D0AAAA61682AA1','BCFA39FCA088D151372D563DCB03D27C','分类2','分类2',NULL,9,'varchar',NULL,NULL,NULL,NULL,NULL,NULL,255);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('7F5EBA36428CFE9505B49FB74E358456','BCFA39FCA088D151372D563DCB03D27C','分类1','分类1',NULL,8,'varchar',NULL,NULL,NULL,NULL,NULL,NULL,255);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('A08F2E055BBF6690EFDA0B14CFD207FB','BCFA39FCA088D151372D563DCB03D27C','图片','图片',NULL,6,'varchar',NULL,NULL,NULL,NULL,NULL,NULL,255);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('A40A887F95FB94407A7C6485D046D1C0','BCFA39FCA088D151372D563DCB03D27C','作者','作者',NULL,7,'varchar',NULL,NULL,NULL,NULL,NULL,NULL,255);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('AEA87950A0B9BA85FBE90473122EE86D','BCFA39FCA088D151372D563DCB03D27C','连接','连接',NULL,5,'varchar',NULL,NULL,NULL,NULL,NULL,NULL,255);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('B1BCC8EEE9404A15B8D27A6C3D5F5685','C06A7B0878844341823CDBF55F03885C','链接','链接',NULL,4,'varchar',NULL,NULL,NULL,NULL,NULL,NULL,255);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('B3F9AE1BAD7F86B1D1BD60276820693B','BCFA39FCA088D151372D563DCB03D27C','书名','书名',NULL,4,'varchar',NULL,NULL,NULL,NULL,NULL,NULL,255);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('DBC5B0C9008B9AFAE9054D35AA404D9A','C06A7B0878844341823CDBF55F03885C','标题','标题',NULL,5,'varchar',NULL,NULL,NULL,NULL,NULL,NULL,255);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('EB8F227E6322E013E91D4BCD5B6DDB2B','CF1C0EABDE01F3F762DE286FC64D412A','书名','书名',NULL,6,'varchar',NULL,NULL,NULL,NULL,NULL,NULL,255);
insert  into `sys_column_info`(`uuid`,`table_uuid`,`cols_name`,`COLS_DESC`,`COLD_LENGTH`,`COLS_ORDER`,`cols_type`,`discription`,`create_time`,`create_user`,`updata_time`,`updata_user`,`delete_flag`,`cols_length`) values ('EFA1D46AB1F80B96FE81A817A0B9AC89','BCFA39FCA088D151372D563DCB03D27C','阅读量','阅读量',NULL,11,'varchar',NULL,NULL,NULL,NULL,NULL,NULL,255);

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

insert  into `sys_database_info`(`uuid`,`address`,`create_time`,`create_user`,`database_name`,`delete_flag`,`discription`,`driver`,`password`,`port`,`type`,`updata_time`,`updata_user`,`username`) values ('F1027C0339119FF6B60244754A30F8A3','','2017-08-16 08:47:28',NULL,'test',0,'','','','','','2017-08-21 18:13:30',NULL,'');

/*Table structure for table `sys_department_info` */

DROP TABLE IF EXISTS `sys_department_info`;

CREATE TABLE `sys_department_info` (
  `uuid` varchar(32) NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `organization_id` varchar(32) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `updata_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `updata_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_department_info` */

insert  into `sys_department_info`(`uuid`,`department_name`,`organization_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`updata_time`,`updata_user`) values ('621B717B7AA366579A8C4066D0D94B08','软件园分局','11F1CAED7E2021D724C0E9E6BCE60CCF','2017-11-01 18:28:58',NULL,1,'软件园分局','2017-11-01 18:28:58','system');
insert  into `sys_department_info`(`uuid`,`department_name`,`organization_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`updata_time`,`updata_user`) values ('75418090625A1C9F9AB126EB5E8E3853','高新分局','11F1CAED7E2021D724C0E9E6BCE60CCF','2017-11-01 18:28:36',NULL,1,'高新分局','2017-12-14 16:06:51',NULL);
insert  into `sys_department_info`(`uuid`,`department_name`,`organization_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`updata_time`,`updata_user`) values ('D58E6596AAA01A8419FEBE71D7999856','骨关节','58072861DEDB9BA8E6E69CD10228FA05','2017-11-01 18:27:50',NULL,1,'骨关节','2017-11-01 18:27:50','system');
insert  into `sys_department_info`(`uuid`,`department_name`,`organization_id`,`create_time`,`create_user`,`delete_flag`,`discription`,`updata_time`,`updata_user`) values ('EDA51AA8D4359F739E7D3EE9923FEBE8','肛肠科','58072861DEDB9BA8E6E69CD10228FA05','2017-11-01 18:27:20',NULL,1,'肛肠科','2017-11-01 18:27:20','system');

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
  `icon_skin` varchar(50) DEFAULT NULL COMMENT '显示图标样式',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu_info` */

insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`) values ('102F0D6B58817A998413C6CA1EEC8CBB',NULL,'0','爬虫管理','fa fa-cloud-download',1,'','爬虫管理','system','2017-07-14 09:44:42','system',NULL,0,'菜单','fa fa-cloud-download');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`) values ('2146130099979805B1DE119DCB3BA551',NULL,'A3621F23A4BC0580D08EEF948C0FD30B','用户角色','fa  fa-sitemap',1,'pages/user/userbase/index.html','项目权限',NULL,NULL,'system',NULL,0,NULL,'fa  fa-sitemap');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`) values ('24898AE2D779238DC4AA443CE053C6AC',NULL,'4C2700CEB8CDAF0C2E3C3AAD9C849DD6','短息测试','fa fa-mobile-phone',1,'pages/user/sendmail/phone.html','短息测试',NULL,NULL,'system',NULL,0,'菜单','fa fa-mobile-phone');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`) values ('36882FDCB61EF181592FEE79B0462BDA',NULL,'102F0D6B58817A998413C6CA1EEC8CBB','结果配置','fa fa-file-code-o',2,'pages/crawler/result.html','代码管理',NULL,NULL,'system',NULL,0,'菜单','fa fa-file-code-o');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`) values ('39FC2A8FCCCBA07F109261B26A5F5E66',NULL,'4C2700CEB8CDAF0C2E3C3AAD9C849DD6','邮箱测试','fa fa-envelope',2,'pages/user/sendmail/mail.html','邮箱测试',NULL,NULL,'system',NULL,0,'菜单','fa fa-envelope');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`) values ('4C2700CEB8CDAF0C2E3C3AAD9C849DD6',NULL,'0','系统工具','fa fa-gg',5,'','','system','2017-09-15 12:03:28','system',NULL,0,'菜单','fa fa-gg');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`) values ('4c87efc1-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','0','数据管理','fa  fa-database',2,'pages/error/404.html','#','佘赐雄',NULL,'超级管理员',NULL,0,'菜单','fa  fa-database');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`) values ('4c87fa16-6447-11e7-a272-0025d3a93601',NULL,'102F0D6B58817A998413C6CA1EEC8CBB','种子管理','glyphicon glyphicon-link',0,'pages/crawler/seed.html','爬虫管理',NULL,NULL,'system',NULL,0,'菜单','glyphicon glyphicon-link');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`) values ('4c87fb94-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','4c8820df-6447-11e7-a272-0025d3a93601','系统菜单','fa  fa-navicon',1,'pages/softm/sysmenu/system_function_ztree.html','系统导航功能',NULL,NULL,NULL,NULL,0,'菜单','fa  fa-navicon');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`) values ('4c87fd09-6447-11e7-a272-0025d3a93601',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','数据库连接','fa  fa-plug',0,'pages/dbm/addr/index.html','动态链接数据库',NULL,NULL,'超级管理员',NULL,0,'菜单','fa  fa-plug');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`) values ('4c87fe75-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','2c90838f57c6e02e0157c729a86b000b','数据库备份','glyphicon glyphicon-paste',0,'pages/error/404.html','数据备份、数据还原',NULL,NULL,'超级管理员',NULL,0,'菜单','glyphicon glyphicon-paste');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`) values ('4c87ffe1-6447-11e7-a272-0025d3a93601',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','数据表管理','fa  fa-table',2,'pages/dbm/table/index.html','数据库表结构',NULL,NULL,'超级管理员',NULL,0,'菜单','fa  fa-table');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`) values ('4c881551-6447-11e7-a272-0025d3a93601','99c74ada3a1411e6bdcb10bf48e1d36a','0','权限管理','fa  fa-sitemap',3,'pages/error/404.html','客户管理',NULL,NULL,NULL,NULL,0,'菜单','fa  fa-sitemap');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`) values ('4c881c82-6447-11e7-a272-0025d3a93601',NULL,'4c8820df-6447-11e7-a272-0025d3a93601','系统管理','fa fa-leaf',0,'pages/softm/system/index.html','#',NULL,NULL,'system',NULL,0,NULL,'fa fa-leaf');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`) values ('4c8820df-6447-11e7-a272-0025d3a93601',NULL,'0','系统管理','fa fa-cog',0,'pages/error/404.html','',NULL,NULL,'',NULL,0,'菜单','fa fa-cog');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`) values ('4c882255-6447-11e7-a272-0025d3a93601',NULL,'4c881551-6447-11e7-a272-0025d3a93601','单位组织','fa  fa-coffee',0,'pages/crm/organization/index.html','单位组织',NULL,NULL,NULL,NULL,0,NULL,'fa  fa-coffee');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`) values ('91257EC58A61079D778D4DD08FB7652B',NULL,'4c87efc1-6447-11e7-a272-0025d3a93601','数据库表查看','fa fa-list',3,'pages/dbm/table/show-tables.html','数据库表查看','system','2017-09-15 10:11:14','system',NULL,0,'菜单','fa fa-list');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`) values ('9419DC15C84351C8F038B2B0E5302FEC',NULL,'4c881551-6447-11e7-a272-0025d3a93601','单位部门','fa fa-map-marker',2,'pages/crm/department/index.html','单位部门',NULL,NULL,'system',NULL,0,NULL,'fa fa-map-marker');
insert  into `sys_menu_info`(`uuid`,`system_id`,`parents_id`,`name`,`icon`,`sort`,`uri`,`discription`,`updata_user`,`updata_time`,`create_user`,`create_time`,`delete_flag`,`type`,`icon_skin`) values ('A3621F23A4BC0580D08EEF948C0FD30B',NULL,'0','用户角色','fa fa-users',4,'','用户管理',NULL,NULL,'system',NULL,0,'菜单','fa fa-users');

/*Table structure for table `sys_organization_info` */

DROP TABLE IF EXISTS `sys_organization_info`;

CREATE TABLE `sys_organization_info` (
  `uuid` varchar(32) NOT NULL,
  `organization_code` varchar(50) NOT NULL,
  `organization_name` varchar(32) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `updata_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `updata_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_organization_info` */

/*Table structure for table `sys_roles_info` */

DROP TABLE IF EXISTS `sys_roles_info`;

CREATE TABLE `sys_roles_info` (
  `uuid` varchar(32) NOT NULL,
  `department_id` varchar(50) NOT NULL,
  `role_name` varchar(32) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `updata_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `updata_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_roles_info` */

insert  into `sys_roles_info`(`uuid`,`department_id`,`role_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`updata_time`,`updata_user`) values ('019E88116631800A20A027BC04556A63','621B717B7AA366579A8C4066D0D94B08','qqq','2017-11-28 15:08:34',NULL,1,'qqqq','2017-11-28 15:08:34','system');
insert  into `sys_roles_info`(`uuid`,`department_id`,`role_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`updata_time`,`updata_user`) values ('422E8364D11EBC35CC0F6D7FE2613F0D','75418090625A1C9F9AB126EB5E8E3853','123','2017-11-07 11:55:38',NULL,1,'123111','2017-11-07 13:55:43',NULL);
insert  into `sys_roles_info`(`uuid`,`department_id`,`role_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`updata_time`,`updata_user`) values ('6803A43931172D867F03A829C448DCE5','621B717B7AA366579A8C4066D0D94B08','113231','2017-11-07 14:31:48',NULL,1,'3213','2017-11-07 14:31:48',NULL);
insert  into `sys_roles_info`(`uuid`,`department_id`,`role_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`updata_time`,`updata_user`) values ('7145A4E69D78327286B76A64B73A22EC','621B717B7AA366579A8C4066D0D94B08','123','2017-11-07 11:55:26',NULL,1,'123','2017-11-07 11:55:26','system');
insert  into `sys_roles_info`(`uuid`,`department_id`,`role_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`updata_time`,`updata_user`) values ('B6C8910B03B01D3B8F1DA270A0231F5F','D58E6596AAA01A8419FEBE71D7999856','123','2017-11-07 11:56:03',NULL,1,'123','2017-11-07 11:56:03',NULL);
insert  into `sys_roles_info`(`uuid`,`department_id`,`role_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`updata_time`,`updata_user`) values ('F297893E3120C36D71EC38E6E288D686','621B717B7AA366579A8C4066D0D94B08','4564596789','2017-11-07 14:32:47',NULL,1,'5645646','2017-11-07 14:32:47',NULL);
insert  into `sys_roles_info`(`uuid`,`department_id`,`role_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`updata_time`,`updata_user`) values ('FAF603F6EBD247F9E5E12C0BF43F4487','EDA51AA8D4359F739E7D3EE9923FEBE8','123','2017-11-07 11:56:28',NULL,1,'123','2017-11-07 11:56:28',NULL);

/*Table structure for table `sys_roles_jurisdiction_info` */

DROP TABLE IF EXISTS `sys_roles_jurisdiction_info`;

CREATE TABLE `sys_roles_jurisdiction_info` (
  `uuid` varchar(32) NOT NULL,
  `menu_id` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `updata_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `updata_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
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

insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`updata_time`,`updata_user`) values ('0895C3E27BAFBA243151B501E39CA7A0','简介','392BDB33918EAD445DC035392636F52D','2018-01-09 23:32:06',NULL,NULL,NULL,'简介','402880905da16202015da17f0c11000d','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`updata_time`,`updata_user`) values ('2AB71F75098D75B3623E8C18233B4FD7','标题','DBC5B0C9008B9AFAE9054D35AA404D9A','2018-01-09 23:25:28',NULL,NULL,NULL,'标题','CC0F19D1035997D5F7255B2CB7D69820','CB4C9272DF1E25758BEE419B4887995C','C06A7B0878844341823CDBF55F03885C','2018-01-09 23:25:28','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`updata_time`,`updata_user`) values ('4540457994919CEA112734F7AE005CDB','图片','6811519D0BECB66141985C21718DE32A','2018-01-09 23:26:12',NULL,NULL,NULL,'图片','4CB980202E88B519FA5332EEAE20DEA8','10E500DC038ED1258F35F4865D378E93','CF1C0EABDE01F3F762DE286FC64D412A','2018-01-09 23:26:12','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`updata_time`,`updata_user`) values ('7490130216101202F9EC9D0768272C01','链接','B1BCC8EEE9404A15B8D27A6C3D5F5685','2018-01-09 23:25:28',NULL,NULL,NULL,'链接','439D99D940E8062B3E3CA8B482FE160B','CB4C9272DF1E25758BEE419B4887995C','C06A7B0878844341823CDBF55F03885C','2018-01-09 23:25:28','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`updata_time`,`updata_user`) values ('807237947541F8B6C760E8B22AD0DB9F','连接','AEA87950A0B9BA85FBE90473122EE86D','2018-01-09 23:32:06',NULL,NULL,NULL,'连接','402880905da16202015da1796e200008','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`updata_time`,`updata_user`) values ('81C180C96EF729A8C2818BB503D313F4','评分','5D30C232E695539778C32BA5E8BB44AE','2018-01-09 23:26:12',NULL,NULL,NULL,'评分','1DF9BFACB271FD8520A13425C4C8CB6C','10E500DC038ED1258F35F4865D378E93','CF1C0EABDE01F3F762DE286FC64D412A','2018-01-09 23:26:12','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`updata_time`,`updata_user`) values ('86236B862D93966F6FF3223CAF839BD5','阅读量','EFA1D46AB1F80B96FE81A817A0B9AC89','2018-01-09 23:32:06',NULL,NULL,NULL,'阅读量','402880905da16202015da17f888a000e','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`updata_time`,`updata_user`) values ('882CF324695A48457187E35CBCF865A0','作者','A40A887F95FB94407A7C6485D046D1C0','2018-01-09 23:32:06',NULL,NULL,NULL,'作者','402880905da16202015da17c2ad6000a','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`updata_time`,`updata_user`) values ('8A7E9AA9E190CCEC97873F89FB60B77F','分类1','7F5EBA36428CFE9505B49FB74E358456','2018-01-09 23:32:06',NULL,NULL,NULL,'分类1','402880905da16202015da17e1cca000b','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`updata_time`,`updata_user`) values ('B245630059BF80D203D51D9627C02280','书名','EB8F227E6322E013E91D4BCD5B6DDB2B','2018-01-09 23:26:12',NULL,NULL,NULL,'书名','EF04BA346AA6FF5761F69305592210C3','10E500DC038ED1258F35F4865D378E93','CF1C0EABDE01F3F762DE286FC64D412A','2018-01-09 23:26:12','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`updata_time`,`updata_user`) values ('C2E9B05F818B8EFE4F3B34569CE607EF','分类2','78E450B093B3F9AF42D0AAAA61682AA1','2018-01-09 23:32:06',NULL,NULL,NULL,'分类2','402880905da16202015da17e83fe000c','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`updata_time`,`updata_user`) values ('D7C8E774797C283E6C35775EEDF509B0','书名','B3F9AE1BAD7F86B1D1BD60276820693B','2018-01-09 23:32:06',NULL,NULL,NULL,'书名','402880905da16202015da178dd370007','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');
insert  into `sys_seed_result_ruler_info`(`uuid`,`cols_name`,`cols_uuid`,`create_time`,`create_user`,`delete_flag`,`discription`,`ruler_colum_name`,`ruler_colum_uuid`,`ruler_uuid`,`table_uuid`,`updata_time`,`updata_user`) values ('E6408D454A03DCC483A193BAD05319DD','图片','A08F2E055BBF6690EFDA0B14CFD207FB','2018-01-09 23:32:06',NULL,NULL,NULL,'图片','402880905da16202015da17a6eb10009','402880905da16202015da17540170006','BCFA39FCA088D151372D563DCB03D27C','2018-01-09 23:32:06','system');

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

insert  into `sys_seed_url_info`(`uuid`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`,`charset`,`request_type`) values ('402880905da16202015da170dce20004',0,'','2017-08-02 13:35:14','system',NULL,'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=397776456,2572651939&fm=58','起点中文网','小说网','qidian.com','2017-12-28 19:02:51',NULL,0,NULL,NULL);
insert  into `sys_seed_url_info`(`uuid`,`delete_flag`,`discription`,`create_time`,`create_user`,`request_date`,`seed_icon`,`seed_name`,`seed_type`,`seed_url`,`updata_time`,`updata_user`,`request_proxy`,`charset`,`request_type`) values ('5C131F8BBB917576CC37760FCABAB6E6',0,'','2017-08-30 21:47:01','system',NULL,'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1281270396,2268607412&fm=58','百度知道','百科','https://zhidao.baidu.com','2018-01-09 21:40:44',NULL,NULL,NULL,NULL);

/*Table structure for table `sys_system_info` */

DROP TABLE IF EXISTS `sys_system_info`;

CREATE TABLE `sys_system_info` (
  `uuid` varchar(32) NOT NULL,
  `discription` varchar(1024) NOT NULL,
  `system_name` varchar(100) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `updata_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `updata_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
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
  `password` varchar(50) NOT NULL,
  `persion_name` varchar(50) NOT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `user_name` varchar(50) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `updata_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `updata_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `head_pic` varchar(1024) DEFAULT NULL COMMENT '头像',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(18) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `UK_filjsx4kbabuqh2fkxgd72dx5` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_base_info` */

insert  into `sys_user_base_info`(`uuid`,`age`,`password`,`persion_name`,`sex`,`user_name`,`create_time`,`create_user`,`delete_flag`,`discription`,`updata_time`,`updata_user`,`head_pic`,`email`,`phone`) values ('ef1d567653fb487aaa37c91480f50ebb',NULL,'1','1',NULL,'1','2018-01-09 21:06:55',NULL,NULL,NULL,'2018-01-09 21:06:55','system',NULL,'1',NULL);

/*Table structure for table `sys_user_roles_info` */

DROP TABLE IF EXISTS `sys_user_roles_info`;

CREATE TABLE `sys_user_roles_info` (
  `uuid` varchar(32) NOT NULL,
  `roles_id` varchar(32) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `updata_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `updata_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_roles_info` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
