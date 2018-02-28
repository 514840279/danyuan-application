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

/*Table structure for table `kjcg_jbxx_info` */

DROP TABLE IF EXISTS `kjcg_jbxx_info`;

CREATE TABLE `kjcg_jbxx_info` (
  `result_id` varchar(50) NOT NULL,
  `project_id` varchar(50) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `result_type` varchar(100) NOT NULL,
  `result_title` varchar(100) NOT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `result_abstract` varchar(2000) DEFAULT NULL,
  `result_links` varchar(2000) DEFAULT NULL,
  `completedby` varchar(100) NOT NULL,
  `completed_organization` varchar(200) NOT NULL,
  `completed_date` varchar(20) NOT NULL,
  `awards` varchar(200) DEFAULT NULL,
  `cdc` varchar(100) DEFAULT NULL,
  `discipline` varchar(100) DEFAULT NULL,
  `industry` varchar(100) DEFAULT NULL,
  `other_code` varchar(100) DEFAULT NULL,
  `UUID` varchar(36) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_user` varbinary(50) NOT NULL,
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `kjcg_jbxx_info` */

/*Table structure for table `kjry_gzll_info` */

DROP TABLE IF EXISTS `kjry_gzll_info`;

CREATE TABLE `kjry_gzll_info` (
  `country` varchar(30) DEFAULT NULL,
  `organization` varchar(100) DEFAULT NULL,
  `organization_code` varchar(20) DEFAULT NULL,
  `unified_social_credit_code` varchar(20) DEFAULT NULL,
  `position_title` varchar(50) DEFAULT NULL,
  `position_level` varchar(30) DEFAULT NULL,
  `professional_title` varchar(30) DEFAULT NULL,
  `start_time` varchar(10) DEFAULT NULL,
  `end_time` varchar(10) DEFAULT NULL,
  `research_direction` varchar(100) DEFAULT NULL,
  `research_content` varchar(500) DEFAULT NULL,
  `research_type` varchar(10) DEFAULT NULL,
  `UUID` varchar(36) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_user` varchar(50) NOT NULL,
  `ryxx_uuid` varchar(36) NOT NULL,
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `kjry_gzll_info` */

/*Table structure for table `kjry_jbxx_info` */

DROP TABLE IF EXISTS `kjry_jbxx_info`;

CREATE TABLE `kjry_jbxx_info` (
  `person_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `former_name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `birthdate` varchar(10) NOT NULL,
  `birthplace` varchar(20) DEFAULT NULL,
  `nationality` varchar(30) DEFAULT NULL,
  `native_place` varchar(20) DEFAULT NULL,
  `ethnic_group` varchar(20) DEFAULT NULL,
  `organization` varchar(100) DEFAULT NULL,
  `organization_property` varchar(10) DEFAULT NULL,
  `organization_province` varchar(20) DEFAULT NULL,
  `organization_city` varchar(50) DEFAULT NULL,
  `postal_address` varchar(100) DEFAULT NULL,
  `postcode` varchar(6) DEFAULT NULL,
  `position_title` varchar(50) DEFAULT NULL,
  `position_level` varchar(30) DEFAULT NULL,
  `porfessional_title` varchar(30) DEFAULT NULL,
  `research_type` varchar(10) DEFAULT NULL,
  `education` varchar(10) DEFAULT NULL,
  `degree` varchar(10) DEFAULT NULL,
  `mobile_telephone` varchar(50) DEFAULT NULL,
  `office_telephone` varchar(50) DEFAULT NULL,
  `home_telephone` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `person_urls` varchar(30) DEFAULT NULL,
  `microblog` varchar(40) DEFAULT NULL,
  `id_type` varchar(10) NOT NULL,
  `id_number` varchar(50) NOT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `bank_account` varchar(50) DEFAULT NULL,
  `emergency_contact` varchar(30) DEFAULT NULL,
  `emergency_number` varchar(50) DEFAULT NULL,
  `cdc` varchar(100) DEFAULT NULL,
  `discipline` varchar(100) DEFAULT NULL,
  `industry` varchar(100) DEFAULT NULL,
  `other_code` varchar(100) DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `research_direction` varchar(100) DEFAULT NULL,
  `photo_url` varchar(200) DEFAULT NULL,
  `introduce` varchar(10000) DEFAULT NULL,
  `political_status` varchar(50) DEFAULT NULL,
  `honorary` varchar(500) DEFAULT NULL,
  `vocational_qualifications` varchar(500) DEFAULT NULL,
  `UUID` varchar(36) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` varchar(50) NOT NULL,
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `kjry_jbxx_info` */

/*Table structure for table `kjry_jyxx_info` */

DROP TABLE IF EXISTS `kjry_jyxx_info`;

CREATE TABLE `kjry_jyxx_info` (
  `country` varchar(30) DEFAULT NULL,
  `school_name` varchar(50) DEFAULT NULL,
  `university_code` varchar(20) DEFAULT NULL,
  `university_uscc` varchar(20) DEFAULT NULL,
  `major` varchar(20) DEFAULT NULL,
  `education` varchar(10) DEFAULT NULL,
  `degree` varchar(10) DEFAULT NULL,
  `training` varchar(20) DEFAULT NULL,
  `start_time` varchar(10) DEFAULT NULL,
  `end_time` varchar(10) DEFAULT NULL,
  `teacher` varchar(50) DEFAULT NULL,
  `UUID` varchar(36) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` varchar(50) NOT NULL,
  `ryxx_uuid` varchar(36) NOT NULL,
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `kjry_jyxx_info` */

/*Table structure for table `kjry_xsjz_info` */

DROP TABLE IF EXISTS `kjry_xsjz_info`;

CREATE TABLE `kjry_xsjz_info` (
  `part_time_organization` varchar(100) DEFAULT NULL,
  `position_title` varchar(50) DEFAULT NULL,
  `start_time` varchar(10) DEFAULT NULL,
  `end_time` varchar(10) DEFAULT NULL,
  `session` varchar(10) DEFAULT NULL,
  `UUID` varchar(36) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_user` varchar(50) NOT NULL,
  `ryxx_uuid` varchar(36) NOT NULL,
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `kjry_xsjz_info` */

/*Table structure for table `kjry_xsps_info` */

DROP TABLE IF EXISTS `kjry_xsps_info`;

CREATE TABLE `kjry_xsps_info` (
  `review_content` varchar(200) DEFAULT NULL,
  `start_time` varchar(10) DEFAULT NULL,
  `end_time` varchar(10) DEFAULT NULL,
  `consignor` varchar(50) DEFAULT NULL,
  `UUID` varchar(36) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_user` varchar(50) NOT NULL,
  `ryxx_uuid` varchar(36) NOT NULL,
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `kjry_xsps_info` */

/*Table structure for table `kjxm_dwxx_info` */

DROP TABLE IF EXISTS `kjxm_dwxx_info`;

CREATE TABLE `kjxm_dwxx_info` (
  `main_organization` varchar(100) NOT NULL,
  `main_organization_code` varchar(20) DEFAULT NULL,
  `main_organization_uscc` varchar(20) DEFAULT NULL,
  `main_impersonal_entity` varchar(100) DEFAULT NULL,
  `main_organization_administration` varchar(100) DEFAULT NULL,
  `main_organization_recommend_unit` varchar(100) DEFAULT NULL,
  `main_organization_property` varchar(10) DEFAULT NULL,
  `main_organization_location` varchar(20) DEFAULT NULL,
  `main_organization_address` varchar(100) DEFAULT NULL,
  `main_organization_postcode` varchar(6) DEFAULT NULL,
  `main_organization_telephone` varchar(50) DEFAULT NULL,
  `main_organization_fax` varchar(50) DEFAULT NULL,
  `main_organization_email` varchar(50) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `bank_account` varchar(50) DEFAULT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `coop_organization` varchar(100) DEFAULT NULL,
  `coop_organization_code` varchar(20) DEFAULT NULL,
  `coop_organization_uscc` varchar(20) DEFAULT NULL,
  `coop_organization_property` int(10) DEFAULT NULL,
  `coop_organization_telephone` varchar(50) DEFAULT NULL,
  `coop_organization_fax` varchar(50) DEFAULT NULL,
  `coop_organization_id` varchar(3) DEFAULT NULL,
  `uuid` varchar(36) NOT NULL,
  `xmjb_uuid` varchar(36) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` varchar(50) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `kjxm_dwxx_info` */

/*Table structure for table `kjxm_jbxx_info` */

DROP TABLE IF EXISTS `kjxm_jbxx_info`;

CREATE TABLE `kjxm_jbxx_info` (
  `region` varchar(20) NOT NULL COMMENT '省市地区',
  `plan_id` varchar(50) NOT NULL COMMENT '科技计划编码 科技计划编码',
  `plan_name` varchar(100) NOT NULL COMMENT '科技计划名称',
  `plan_abstract` varchar(3000) DEFAULT NULL,
  `plan_url` varchar(200) DEFAULT NULL,
  `project_type` varchar(100) DEFAULT NULL,
  `project_id` varchar(50) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `competent_department` varchar(100) DEFAULT NULL,
  `project_domain_id` varchar(100) DEFAULT NULL,
  `project_domain` varchar(100) DEFAULT NULL,
  `approval_year` varchar(4) NOT NULL,
  `project_plan_start_time` varchar(10) NOT NULL,
  `project_actual_start_time` varchar(10) DEFAULT NULL,
  `project_plan_endtime` varchar(10) NOT NULL,
  `project_actual_endtime` varchar(10) DEFAULT NULL,
  `project_phase` varchar(10) DEFAULT NULL,
  `research_target` varchar(3000) DEFAULT NULL,
  `research-content` text,
  `project_abstract` text,
  `expected_index` varchar(1000) DEFAULT NULL,
  `cdc` varchar(100) DEFAULT NULL,
  `discipline` varchar(100) DEFAULT NULL,
  `industry` varchar(100) DEFAULT NULL,
  `other_code` varchar(100) DEFAULT NULL,
  `cn_keyword` varchar(200) DEFAULT NULL,
  `en_keyword` varchar(200) DEFAULT NULL,
  `total_fund` int(30) DEFAULT NULL,
  `govemment_fund` int(30) DEFAULT NULL,
  `provincial_fund` int(30) DEFAULT NULL,
  `local_fund` int(30) DEFAULT NULL,
  `self_fund` int(30) DEFAULT NULL,
  `other_fund` int(30) DEFAULT NULL,
  `porject_links` varchar(2000) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `UUID` varchar(36) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` varchar(50) NOT NULL,
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `kjxm_jbxx_info` */

/*Table structure for table `kjxm_ryxx_info` */

DROP TABLE IF EXISTS `kjxm_ryxx_info`;

CREATE TABLE `kjxm_ryxx_info` (
  `head_name` varchar(50) NOT NULL,
  `head_gender` varchar(10) DEFAULT NULL,
  `head_birthdate` varchar(10) DEFAULT NULL,
  `head_ethnic_group` varchar(20) DEFAULT NULL,
  `head_political_status` varchar(50) DEFAULT NULL,
  `head_id_type` varchar(10) DEFAULT NULL,
  `head_id_number` varchar(50) DEFAULT NULL,
  `head_professional_title` varchar(30) DEFAULT NULL,
  `head_education` varchar(30) DEFAULT NULL,
  `head_degree` varchar(10) DEFAULT NULL,
  `head_school_name` varchar(50) DEFAULT NULL,
  `head_major` varchar(20) DEFAULT NULL,
  `head_research_direction` varchar(100) DEFAULT NULL,
  `head_organization` varchar(100) DEFAULT NULL,
  `head_position_title` varchar(50) DEFAULT NULL,
  `head_position_level` varchar(30) DEFAULT NULL,
  `head_honorary` varchar(500) DEFAULT NULL,
  `head_telephone` varchar(50) DEFAULT NULL,
  `head_mobile_telephone` varchar(50) DEFAULT NULL,
  `head_email` varchar(50) DEFAULT NULL,
  `participant_name` varchar(50) DEFAULT NULL,
  `participant_gender` varchar(10) DEFAULT NULL,
  `participant_birthday` varchar(10) DEFAULT NULL,
  `participant_id_type` varchar(10) DEFAULT NULL,
  `participant_id_number` varchar(50) DEFAULT NULL,
  `participant_profession_title` varchar(30) DEFAULT NULL,
  `participant_education` varchar(10) DEFAULT NULL,
  `participant_degree` varchar(10) DEFAULT NULL,
  `participant_major` varchar(20) DEFAULT NULL,
  `participant_research_direction` varchar(100) DEFAULT NULL,
  `participant_organization` varchar(100) DEFAULT NULL,
  `participant_title` varchar(50) DEFAULT NULL,
  `participant_position_level` varchar(30) DEFAULT NULL,
  `task` varchar(100) DEFAULT NULL,
  `participant_working_time` int(20) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `participant_work_rank` varchar(30) DEFAULT NULL,
  `uuid` varchar(36) NOT NULL,
  `xmjb_uuid` varchar(36) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` varchar(50) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `kjxm_ryxx_info` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
