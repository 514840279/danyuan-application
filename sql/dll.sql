CREATE DATABASE  IF NOT EXISTS `application` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `application`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: application
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `oauth_access_token`
--

DROP TABLE IF EXISTS `oauth_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oauth_client_details`
--

DROP TABLE IF EXISTS `oauth_client_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(48) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int DEFAULT NULL,
  `refresh_token_validity` int DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oauth_code`
--

DROP TABLE IF EXISTS `oauth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_code` (
  `code` varchar(255) DEFAULT NULL,
  `authentication` varbinary(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oauth_refresh_token`
--

DROP TABLE IF EXISTS `oauth_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_token` (
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `token_id` varchar(255) DEFAULT NULL,
  `token` blob,
  `authentication` blob,
  KEY `token_id_index` (`token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_chart_node`
--

DROP TABLE IF EXISTS `sys_chart_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_chart_node` (
  `uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system',
  `delete_flag` int DEFAULT '0',
  `node_desc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `node_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system',
  `fill_color` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '节点颜色填充',
  `stroke_color` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '节点边框颜色填充',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_chart_node_cols`
--

DROP TABLE IF EXISTS `sys_chart_node_cols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_chart_node_cols` (
  `uuid` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `column_desc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system',
  `delete_flag` int DEFAULT '0',
  `node_uuid` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system',
  `user_index` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `column_order` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序',
  `column_type` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '属性类型',
  `column_title` int DEFAULT NULL COMMENT '作为标题展示',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_chart_relationship_type`
--

DROP TABLE IF EXISTS `sys_chart_relationship_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_chart_relationship_type` (
  `uuid` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system',
  `delete_flag` int DEFAULT '0',
  `relationship_desc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `relationship_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_comn_logs`
--

DROP TABLE IF EXISTS `sys_comn_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
  `request_long` int DEFAULT NULL COMMENT '请求响应时间',
  `table_name` varchar(100) DEFAULT NULL COMMENT '请求参数',
  `url` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_crawler_demo`
--

DROP TABLE IF EXISTS `sys_crawler_demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_crawler_demo` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_crawler_result_ruler_info`
--

DROP TABLE IF EXISTS `sys_crawler_result_ruler_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_crawler_result_ruler_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `cols_name` varchar(30) DEFAULT NULL COMMENT '表字段名',
  `cols_uuid` varchar(36) DEFAULT NULL COMMENT '表字段id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `ruler_colum_name` varchar(30) DEFAULT NULL COMMENT '规则字段名',
  `ruler_colum_uuid` varchar(36) DEFAULT NULL COMMENT '规则字段id',
  `ruler_uuid` varchar(36) DEFAULT NULL COMMENT '规则id',
  `table_uuid` varchar(36) DEFAULT NULL COMMENT '表id',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_crawler_ruler_colum_info`
--

DROP TABLE IF EXISTS `sys_crawler_ruler_colum_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_crawler_ruler_colum_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `app1` varchar(30) DEFAULT NULL COMMENT 'apand 方式 字符',
  `app2` varchar(30) DEFAULT NULL COMMENT 'apand 字符',
  `arr` int DEFAULT NULL COMMENT '取一个 整型',
  `colum_name` varchar(30) DEFAULT NULL COMMENT '列名称',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `ruler` varchar(300) DEFAULT NULL COMMENT '取内容规则',
  `ruler_uuid` varchar(36) DEFAULT NULL COMMENT '规则id',
  `spl1` varchar(30) DEFAULT NULL COMMENT 'split 1字符串',
  `spl2` int DEFAULT NULL COMMENT '2整型脚标',
  `type` varchar(30) DEFAULT NULL COMMENT '处理方式',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `end` int DEFAULT NULL,
  `param` varchar(500) DEFAULT NULL COMMENT '拼接或替换的字符串',
  `param_new` varchar(255) DEFAULT NULL,
  `start` int DEFAULT NULL,
  `parent_uuid` varchar(36) DEFAULT NULL COMMENT '上一层',
  `md5flag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_crawler_ruler_info`
--

DROP TABLE IF EXISTS `sys_crawler_ruler_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_crawler_ruler_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `charset` varchar(20) DEFAULT NULL COMMENT '字符集',
  `content_info` varchar(20) DEFAULT NULL COMMENT '规则信息',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `type` varchar(200) DEFAULT NULL COMMENT ' 规则类别',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `parent_uuid` varchar(36) DEFAULT NULL COMMENT '上一层id',
  `task_uuid` varchar(36) NOT NULL COMMENT '任务id',
  `ruler` varchar(500) DEFAULT NULL COMMENT '规则',
  `items_ruler` varchar(255) DEFAULT NULL,
  `nextpage_ruler` varchar(255) DEFAULT NULL,
  `statue` varchar(255) DEFAULT NULL,
  `parent_dic_params` varchar(255) DEFAULT NULL,
  `parent_dic_uuid` varchar(255) DEFAULT NULL,
  `content_json_info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_crawler_task_err_info`
--

DROP TABLE IF EXISTS `sys_crawler_task_err_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_crawler_task_err_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `task_uuid` varchar(36) DEFAULT NULL COMMENT '任务id',
  `url` varchar(2000) DEFAULT NULL COMMENT '错误网址',
  `error_msg` varchar(2000) DEFAULT NULL COMMENT '错误消息',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_crawler_task_info`
--

DROP TABLE IF EXISTS `sys_crawler_task_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_crawler_task_info` (
  `uuid` varchar(36) NOT NULL COMMENT '唯一id',
  `task_name` varchar(50) DEFAULT NULL COMMENT '任务名称',
  `start_time` timestamp NULL DEFAULT NULL COMMENT '任务执行开始时间',
  `last_excute_time` timestamp NULL DEFAULT NULL COMMENT '最近一次执行时间',
  `surplus_num` int DEFAULT '0' COMMENT '预计剩余采集数量',
  `success_num` int DEFAULT '0' COMMENT '完成数量',
  `task_flag` int DEFAULT '0' COMMENT '是通用平台采集，还是执行上传的自定义采集程序,自定义采集程序将不会进入统计信息，需自己添加统计的内容',
  `error_num` int DEFAULT '0' COMMENT '采集出错数量',
  `excute_flag` int DEFAULT '0' COMMENT '执行状态(执行中，已停止)',
  `discription` varchar(200) DEFAULT NULL COMMENT '描述',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `charset` varchar(20) DEFAULT NULL COMMENT '字符集',
  `url` varchar(2000) DEFAULT NULL COMMENT '链接地址',
  `url_type` varchar(36) DEFAULT NULL COMMENT '网站类型',
  `web_icon` varchar(1000) DEFAULT NULL COMMENT '网站商标',
  `home_statue` varchar(255) DEFAULT NULL,
  `detail_conf` text COMMENT '详细信息配置',
  `dict_conf` text COMMENT '字典或列表配置',
  `list_conf` text COMMENT '列表配置',
  `excute_batch` varchar(255) DEFAULT NULL,
  `request_data` varchar(255) DEFAULT NULL,
  `request_type` varchar(255) DEFAULT NULL,
  `url_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_crawler_task_self_code_info`
--

DROP TABLE IF EXISTS `sys_crawler_task_self_code_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_crawler_task_self_code_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `task_uuid` varchar(36) DEFAULT NULL COMMENT '任务id',
  `zip_file_name` varchar(2000) DEFAULT NULL COMMENT '文件包名称',
  `file_path` varchar(200) DEFAULT NULL COMMENT '文件地址',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_dbms_advi_mess_info`
--

DROP TABLE IF EXISTS `sys_dbms_advi_mess_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dbms_advi_mess_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `execute_sql` varchar(255) DEFAULT NULL,
  `jdbc_uuid` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `table_desc` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `数据id` varchar(255) DEFAULT NULL,
  `小说主页` varchar(255) DEFAULT NULL,
  `分类2` varchar(255) DEFAULT NULL,
  `作者首页` varchar(255) DEFAULT NULL,
  `作者` varchar(255) DEFAULT NULL,
  `发布状态` varchar(255) DEFAULT NULL,
  `书面` varchar(255) DEFAULT NULL,
  `小说简介` varchar(255) DEFAULT NULL,
  `书名` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_dbms_chart_dimension`
--

DROP TABLE IF EXISTS `sys_dbms_chart_dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dbms_chart_dimension` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `chart_type` varchar(255) DEFAULT NULL,
  `count_type` varchar(255) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `dime_order` int DEFAULT NULL,
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `end_num` int DEFAULT NULL,
  `group_uuid` varchar(255) DEFAULT NULL,
  `heigth` varchar(255) DEFAULT NULL,
  `lable_uuid` varchar(255) DEFAULT NULL,
  `lable_uuid2` varchar(255) DEFAULT NULL,
  `lable_uuid3` varchar(255) DEFAULT NULL,
  `lable_uuid4` varchar(255) DEFAULT NULL,
  `start_num` int DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `width` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `db_uuid` varchar(255) DEFAULT NULL,
  `table_type_uuid` varchar(255) DEFAULT NULL,
  `table_uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_dbms_chart_dimension_data`
--

DROP TABLE IF EXISTS `sys_dbms_chart_dimension_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dbms_chart_dimension_data` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `cols_desc` varchar(255) DEFAULT NULL,
  `cols_uuid` varchar(255) DEFAULT NULL,
  `conditions` varchar(255) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `dime_uuid` varchar(255) DEFAULT NULL,
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `symbol` varchar(255) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_dbms_chart_dimension_group`
--

DROP TABLE IF EXISTS `sys_dbms_chart_dimension_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dbms_chart_dimension_group` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `group_order` int DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_dbms_generate_code_info`
--

DROP TABLE IF EXISTS `sys_dbms_generate_code_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dbms_generate_code_info` (
  `uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `jdbc_uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '表数据库id',
  `class_path` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '生成类的包路径',
  `class_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '类名称',
  `generate_entity` tinyint(1) NOT NULL DEFAULT '1' COMMENT '生成实体类标识',
  `generate_dao` tinyint(1) NOT NULL DEFAULT '1' COMMENT '生成dao层标识',
  `generate_service` tinyint(1) NOT NULL DEFAULT '1' COMMENT '生成业务处理层标识',
  `generate_controller` tinyint(1) NOT NULL DEFAULT '1' COMMENT '生成控制层标识',
  `generate_html` tinyint(1) NOT NULL DEFAULT '1' COMMENT '生成html标识',
  `generate_js` tinyint(1) NOT NULL DEFAULT '1' COMMENT '生成js标识',
  `generate_sql` tinyint(1) NOT NULL DEFAULT '1' COMMENT '生成sql标识',
  `discription` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资源功能描述',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'system' COMMENT '录入人员',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'system' COMMENT '更新时间',
  `delete_flag` int NOT NULL DEFAULT '0' COMMENT '停用标记',
  `type_uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '数据种类id',
  `generate_detail` int DEFAULT NULL COMMENT '生成js标识',
  `generate_doc` int DEFAULT NULL COMMENT '生成sql文档',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_dbms_tabs_cols_info`
--

DROP TABLE IF EXISTS `sys_dbms_tabs_cols_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dbms_tabs_cols_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `cols_align` varchar(36) DEFAULT 'center' COMMENT '对齐方式',
  `cols_desc` varchar(50) DEFAULT NULL COMMENT '字段含义',
  `cols_length` int DEFAULT NULL COMMENT '字段长度',
  `cols_name` varchar(30) DEFAULT NULL COMMENT '字段名',
  `cols_order` int DEFAULT NULL COMMENT '字段顺序',
  `cols_switchable` varchar(36) DEFAULT '1' COMMENT '默认为true显示该列，设为false则禁用列项目的选项卡。',
  `cols_type` varchar(30) DEFAULT NULL COMMENT '字段类型（varchar,number,text）',
  `cols_valign` varchar(36) DEFAULT 'middle' COMMENT '对齐方式',
  `cols_visible` varchar(36) DEFAULT '1' COMMENT '默认为true显示该列，设为false则隐藏该列',
  `cols_width` varchar(36) DEFAULT '150' COMMENT '每列的宽度',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `page_list` int DEFAULT NULL COMMENT '字段列表展示隐藏',
  `tabs_uuid` varchar(36) DEFAULT NULL COMMENT '表id',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `user_icon` varchar(20) DEFAULT NULL COMMENT '用户查询显示图标',
  `user_index` varchar(10) DEFAULT NULL COMMENT '用户查询列配置',
  `cols_sort` varchar(4) DEFAULT NULL COMMENT '数据排序 ',
  `dime_flag` tinyint DEFAULT '0' COMMENT '默认为true显示该列，设为false则禁用列项目的选项卡。',
  `useful` int DEFAULT '0' COMMENT '停用标记',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_dbms_tabs_info`
--

DROP TABLE IF EXISTS `sys_dbms_tabs_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dbms_tabs_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `jdbc_uuid` varchar(36) DEFAULT NULL COMMENT '数据库表id',
  `tabs_desc` varchar(50) DEFAULT NULL COMMENT '表的含义',
  `tabs_name` varchar(100) DEFAULT NULL COMMENT '数据库表名',
  `tabs_order` int DEFAULT NULL COMMENT '数据库表顺序',
  `tabs_rows` int DEFAULT NULL COMMENT '数据库表数据量',
  `tabs_space` int DEFAULT NULL COMMENT '数据库表空间大小',
  `type_uuid` varchar(36) DEFAULT NULL COMMENT '数据库表类型id',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `db_type` varchar(50) DEFAULT NULL COMMENT '数据库表空间大小',
  `dissql` int DEFAULT '0' COMMENT '数据库表空间大小',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_dbms_tabs_jdbc_info`
--

DROP TABLE IF EXISTS `sys_dbms_tabs_jdbc_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `db_type` varchar(10) DEFAULT NULL COMMENT '端口号',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_dbms_tabs_merge_info`
--

DROP TABLE IF EXISTS `sys_dbms_tabs_merge_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dbms_tabs_merge_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `cols_desc_1` varchar(50) DEFAULT NULL COMMENT '表1列含义',
  `cols_desc_2` varchar(50) DEFAULT NULL COMMENT '表2列含义',
  `cols_name_1` varchar(30) DEFAULT NULL COMMENT '表一列名',
  `cols_name_2` varchar(30) DEFAULT NULL COMMENT '表2列名',
  `cols_uuid_1` varchar(36) DEFAULT NULL COMMENT '表1列id',
  `cols_uuid_2` varchar(36) DEFAULT NULL COMMENT '表2列id',
  `table_uuid_1` varchar(36) DEFAULT NULL COMMENT '表1id',
  `table_uuid_2` varchar(36) DEFAULT NULL COMMENT '表二id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_dbms_tabs_type_info`
--

DROP TABLE IF EXISTS `sys_dbms_tabs_type_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dbms_tabs_type_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `type_icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `type_name` varchar(36) DEFAULT NULL COMMENT '类型名',
  `type_order` int DEFAULT NULL COMMENT '类型排序',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `type_class` varchar(36) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_dbms_user_index_info`
--

DROP TABLE IF EXISTS `sys_dbms_user_index_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dbms_user_index_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `user_index` varchar(200) NOT NULL,
  `user_desc` varchar(255) DEFAULT NULL,
  `user_placeholder` varchar(255) DEFAULT NULL,
  `chart` int DEFAULT NULL,
  `multeity` int DEFAULT NULL,
  `user_order` int NOT NULL,
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `delete_flag` tinyint(1) DEFAULT '1',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_department_info`
--

DROP TABLE IF EXISTS `sys_department_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_department_info` (
  `uuid` varchar(32) NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `organization_id` varchar(32) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_dic_key_list`
--

DROP TABLE IF EXISTS `sys_dic_key_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dic_key_list` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `name_uuid` varchar(36) NOT NULL COMMENT '外键',
  `key_value` varchar(50) DEFAULT NULL COMMENT '列表value',
  `key_order` int NOT NULL COMMENT '排序',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_dic_name`
--

DROP TABLE IF EXISTS `sys_dic_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dic_name` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '显示名称',
  `code` varchar(100) DEFAULT NULL COMMENT '调用代码',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `button_type` varchar(20) DEFAULT '0' COMMENT '按钮类型',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典名称表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_dic_porvince_city`
--

DROP TABLE IF EXISTS `sys_dic_porvince_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dic_porvince_city` (
  `PROVINCE` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_file_upload_info`
--

DROP TABLE IF EXISTS `sys_file_upload_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_upload_info` (
  `uuid` varchar(255) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT NULL,
  `discription` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_menu_info`
--

DROP TABLE IF EXISTS `sys_menu_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu_info` (
  `uuid` varchar(50) NOT NULL COMMENT '主键',
  `system_id` varchar(36) DEFAULT '99c74ada3a1411e6bdcb10bf48e1d36a' COMMENT '系统id',
  `parents_id` varchar(36) DEFAULT NULL COMMENT '父id',
  `name` varchar(50) DEFAULT NULL COMMENT '地址名称',
  `icon` varchar(40) DEFAULT NULL COMMENT '显示图标样式',
  `sort` int DEFAULT NULL COMMENT '排序',
  `uri` varchar(2000) DEFAULT NULL COMMENT '地址资源',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_user` varchar(100) DEFAULT 'system' COMMENT '更新人员',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `type` varchar(50) DEFAULT '菜单' COMMENT '菜单还是方法',
  `icon_skin` varchar(50) DEFAULT NULL COMMENT '显示图标样式',
  `checked` tinyint(1) DEFAULT NULL COMMENT '显示图标样式',
  `home_page` tinyint(1) DEFAULT NULL COMMENT '首页',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_modal_info`
--

DROP TABLE IF EXISTS `sys_modal_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_modal_info` (
  `uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_paht` varchar(1200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `major` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '更新人员'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_organization_info`
--

DROP TABLE IF EXISTS `sys_organization_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_organization_info` (
  `uuid` varchar(32) NOT NULL,
  `organization_code` varchar(50) NOT NULL,
  `organization_name` varchar(32) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_roles_info`
--

DROP TABLE IF EXISTS `sys_roles_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_roles_info` (
  `uuid` varchar(32) NOT NULL,
  `department_id` varchar(50) NOT NULL,
  `role_name` varchar(32) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `checked` tinyint(1) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_roles_jurisdiction_info`
--

DROP TABLE IF EXISTS `sys_roles_jurisdiction_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_roles_jurisdiction_info` (
  `menu_id` varchar(36) NOT NULL COMMENT '菜单id',
  `role_id` varchar(36) NOT NULL COMMENT '角色id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `checked` int DEFAULT '0' COMMENT '资源功能描述',
  PRIMARY KEY (`menu_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_roles_tabs_info`
--

DROP TABLE IF EXISTS `sys_roles_tabs_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_roles_tabs_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `role_id` varchar(36) DEFAULT NULL COMMENT '角色id',
  `tabs_id` varchar(36) DEFAULT NULL COMMENT '表id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_share_file_info`
--

DROP TABLE IF EXISTS `sys_share_file_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_share_file_info` (
  `uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '唯一主键',
  `file_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件名',
  `file_img` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '截图地址、封面图地址',
  `file_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件类型',
  `file_size` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件大小',
  `file_instru` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '内容详细介绍',
  `publish_date` date DEFAULT NULL COMMENT '发行时间',
  `version` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '版次',
  `publish_org` varchar(140) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发行单位',
  `author` varchar(140) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '作者',
  `generate_type` varchar(140) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资料大分类',
  `generate_type2` varchar(140) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资料细分领域',
  `language` varchar(140) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资料语言',
  `view_times` int DEFAULT NULL COMMENT '浏览',
  `from_web` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源网站',
  `from_path` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源网址',
  `discription` varchar(140) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '插入时间',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '插入人',
  `delete_flag` int DEFAULT NULL COMMENT '标记',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '更新人员',
  `file_detial` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='资料信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_share_file_path_info`
--

DROP TABLE IF EXISTS `sys_share_file_path_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_share_file_path_info` (
  `uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '唯一主键',
  `share_uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '关联主键',
  `path` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '路径',
  `path_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类别',
  `password` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网盘密码',
  `file_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件名',
  `file_size` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '大小',
  `md5` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'md5',
  `sha1` varchar(140) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'sha1',
  `sha256` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'sha256',
  `sha512` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'sha512',
  `discription` varchar(140) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '插入时间',
  `create_user` varchar(140) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '插入人',
  `delete_flag` int DEFAULT NULL COMMENT '标记',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '更新人员',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='文件位置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_system_info`
--

DROP TABLE IF EXISTS `sys_system_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_system_info` (
  `uuid` varchar(32) NOT NULL,
  `discription` varchar(1024) NOT NULL,
  `system_name` varchar(100) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_user_base_info`
--

DROP TABLE IF EXISTS `sys_user_base_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_base_info` (
  `uuid` varchar(36) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(68) NOT NULL,
  `ancestral_address` varchar(140) DEFAULT NULL,
  `addr` varchar(140) DEFAULT NULL,
  `major` varchar(140) DEFAULT NULL,
  `university` varchar(140) DEFAULT NULL,
  `education` varchar(140) DEFAULT NULL,
  `persion_name` varchar(50) NOT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `phone` varchar(18) DEFAULT NULL COMMENT '电话',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `qq` varchar(14) DEFAULT NULL,
  `head_pic` varchar(1024) DEFAULT NULL COMMENT '头像',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新时间',
  `position` varchar(50) DEFAULT NULL,
  `work_nature` varchar(50) DEFAULT NULL,
  `expected_salary` varchar(60) DEFAULT NULL,
  `expected_place` varchar(120) DEFAULT NULL,
  `statue` varchar(20) DEFAULT NULL,
  `resume_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `UK_filjsx4kbabuqh2fkxgd72dx5` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_user_credentials`
--

DROP TABLE IF EXISTS `sys_user_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_credentials` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `user_uuid` varchar(255) DEFAULT NULL,
  `credentials` varchar(255) DEFAULT NULL,
  `gdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_user_education`
--

DROP TABLE IF EXISTS `sys_user_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_education` (
  `uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` varchar(140) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `graduation_school` varchar(140) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `major` varchar(140) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `graduation_time` date DEFAULT NULL,
  `length_of_schooling` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '更新人员',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_user_evaluate`
--

DROP TABLE IF EXISTS `sys_user_evaluate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_evaluate` (
  `user_uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '更新人员'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_user_language`
--

DROP TABLE IF EXISTS `sys_user_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_language` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `language` varchar(255) DEFAULT NULL,
  `user_uuid` varchar(255) DEFAULT NULL,
  `hearing` varchar(255) DEFAULT NULL,
  `read_write` varchar(45) DEFAULT NULL COMMENT '读写',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_user_modal`
--

DROP TABLE IF EXISTS `sys_user_modal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_modal` (
  `uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `modal_uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `use` int DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '更新人员'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_user_project`
--

DROP TABLE IF EXISTS `sys_user_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_project` (
  `uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `project_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '更新人员',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_user_roles_info`
--

DROP TABLE IF EXISTS `sys_user_roles_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_roles_info` (
  `roles_id` varchar(36) NOT NULL COMMENT '角色id',
  `user_id` varchar(36) NOT NULL COMMENT '用户id',
  `checked` tinyint(1) DEFAULT NULL COMMENT '选中',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  PRIMARY KEY (`roles_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_user_skill`
--

DROP TABLE IF EXISTS `sys_user_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_skill` (
  `user_uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `skill` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `proficiency` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `month` int DEFAULT NULL,
  `uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '更新人员'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_user_work_expreience`
--

DROP TABLE IF EXISTS `sys_user_work_expreience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_work_expreience` (
  `user_uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `working_life` float(4,2) DEFAULT NULL,
  `uuid` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '更新人员'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-22 11:25:26
