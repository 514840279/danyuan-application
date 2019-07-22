/*
Navicat MySQL Data Transfer

Source Server         : 47.52.93.94
Source Server Version : 50724
Source Host           : 47.52.93.94:3306
Source Database       : application

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-07-22 09:04:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for oauth_access_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
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

-- ----------------------------
-- Records of oauth_access_token
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
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

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
INSERT INTO `oauth_client_details` VALUES ('wth', 'wth', '{bcrypt}$2a$10$cVSGA2DJHIriCBZR9x0WTOF4QiORuQlrFNEAU/Of4jmqOLAf8AHNu', 'all', 'password,refresh_token,authorization_code', 'http://localhost:82/login,http://localhost:82/,http://192.168.31.87:82/index,http://192.168.31.87:82/,http://175.163.77.229:82/index,http://113.234.169.51:82/index,http://192.168.31.41:82/index', 'ROLE_ADMIN', '3600', '3600', '{\"data\":1}', 'true');

-- ----------------------------
-- Table structure for oauth_code
-- ----------------------------
DROP TABLE IF EXISTS `oauth_code`;
CREATE TABLE `oauth_code` (
  `code` varchar(255) DEFAULT NULL,
  `authentication` varbinary(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_code
-- ----------------------------
INSERT INTO `oauth_code` VALUES ('rPJNoH', 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001F40200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B7870740004746573747871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E00147870740003777468737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000067708000000080000000474000D726573706F6E73655F74797065740004636F646574000C72656469726563745F757269740019687474703A2F2F6C6F63616C686F73743A38322F696E6465787400057374617465740006714B6E694857740009636C69656E745F696471007E001778737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F40000000000001740003616C6C78017371007E0026770C000000103F400000000000017371007E000D74000A524F4C455F41444D494E787371007E001A3F40000000000000770800000010000000007871007E001F707371007E0026770C000000103F40000000000001740003777468787371007E0026770C000000103F4000000000000171007E001D787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001F40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E0033737200486F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E61757468656E7469636174696F6E2E57656241757468656E7469636174696F6E44657461696C7300000000000001F40200024C000D72656D6F74654164647265737371007E000E4C000973657373696F6E496471007E000E787074000F303A303A303A303A303A303A303A31740020374241363142323335443942323541363030383641444141443932323832394670737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001F40200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00144C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0023737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001F4020000787077040000000171007E000F787074000474657374);

-- ----------------------------
-- Table structure for oauth_refresh_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_token`;
CREATE TABLE `oauth_refresh_token` (
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `token_id` varchar(255) DEFAULT NULL,
  `token` blob,
  `authentication` blob,
  KEY `token_id_index` (`token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_refresh_token
-- ----------------------------

-- ----------------------------
-- Table structure for sys_chart_node
-- ----------------------------
DROP TABLE IF EXISTS `sys_chart_node`;
CREATE TABLE `sys_chart_node` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system',
  `delete_flag` int(11) DEFAULT '0',
  `node_desc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `node_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system',
  `fill_color` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '节点颜色填充',
  `stroke_color` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '节点边框颜色填充',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_chart_node
-- ----------------------------
INSERT INTO `sys_chart_node` VALUES ('2c40ec3e-0c94-497c-ac7c-5eb1056be808', '2019-01-22 15:09:23', 'test', '0', '电影', 'Movie', '2019-01-22 15:20:23', 'test', '#6DCE9E', '#60B58B');
INSERT INTO `sys_chart_node` VALUES ('2fe7fe6a-0d15-452e-9acd-c7db3a932d3c', '2019-01-21 15:00:09', 'test', '0', '', 'Category', '2019-01-22 15:20:38', 'test', '#68BDF6', '#5CA8DB');
INSERT INTO `sys_chart_node` VALUES ('4187c90f-fd1c-43e3-9d0b-0b50084fbfaa', '2019-01-21 15:00:09', 'test', '0', '顾客', 'Customer', '2019-01-22 15:20:57', 'test', '#FF756E', '#E06760');
INSERT INTO `sys_chart_node` VALUES ('52884d02-cfae-413a-93b0-705db4957c78', '2019-01-21 15:00:09', 'test', '0', '人员信息', 'Person', '2019-01-22 15:21:16', 'test', '#FFD86E', '#EDBA39');
INSERT INTO `sys_chart_node` VALUES ('9a9627bd-8ac1-4918-b5ef-54669ed93c22', '2019-01-21 15:00:09', 'test', '0', '订单信息', 'Order', '2019-01-22 15:21:35', 'test', '#FB95AF', '#E0849B');
INSERT INTO `sys_chart_node` VALUES ('fe6d84e9-aa6b-4f5d-80a7-4328060a7806', '2019-01-21 15:00:09', 'test', '0', '', 'Supplier', '2019-01-22 15:21:50', 'test', '#DE9BF9', '#BF85D6');
INSERT INTO `sys_chart_node` VALUES ('ff5b7e37-24b9-4773-9b1d-3fd2d3a6540a', '2019-01-21 15:00:09', 'test', '0', '产品信息', 'Product', '2019-01-22 15:22:13', 'test', '#A5ABB6', '#9AA1AC');

-- ----------------------------
-- Table structure for sys_chart_node_cols
-- ----------------------------
DROP TABLE IF EXISTS `sys_chart_node_cols`;
CREATE TABLE `sys_chart_node_cols` (
  `uuid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `column_desc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system',
  `delete_flag` int(11) DEFAULT '0',
  `node_uuid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system',
  `user_index` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `column_order` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序',
  `column_type` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '属性类型',
  `column_title` int(11) DEFAULT NULL COMMENT '作为标题展示',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_chart_node_cols
-- ----------------------------
INSERT INTO `sys_chart_node_cols` VALUES ('08d9cbd8-341f-42cc-8fbe-5524f3140b4a', 'homePage', null, '2019-01-21 15:16:42', 'test', '0', 'fe6d84e9-aa6b-4f5d-80a7-4328060a7806', '2019-01-21 15:16:42', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('0bea3153-3ea8-4965-8a3c-d37da9df6011', 'shipAddress', null, '2019-01-21 15:16:33', 'test', '0', '9a9627bd-8ac1-4918-b5ef-54669ed93c22', '2019-01-21 15:16:33', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('0c303553-a79c-40c2-be1c-1df3e807fa91', 'orderDate', null, '2019-01-21 15:16:33', 'test', '0', '9a9627bd-8ac1-4918-b5ef-54669ed93c22', '2019-01-21 15:16:33', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('126827a7-8a6a-4c3b-9999-3d696e799fa9', 'categoryID', null, '2019-01-21 15:16:51', 'test', '0', 'ff5b7e37-24b9-4773-9b1d-3fd2d3a6540a', '2019-01-21 15:16:51', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('14ed4895-c992-42a5-a0ed-b5d8525c0985', 'unitPrice', '', '2019-01-21 15:16:51', 'test', '0', 'ff5b7e37-24b9-4773-9b1d-3fd2d3a6540a', '2019-01-23 12:04:37', 'test', '', null, 'double', null);
INSERT INTO `sys_chart_node_cols` VALUES ('16f7f388-02d8-4cd2-89ed-c99fa3ff8464', 'shipCity', null, '2019-01-21 15:16:33', 'test', '0', '9a9627bd-8ac1-4918-b5ef-54669ed93c22', '2019-01-21 15:16:33', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('1d713ae2-b10d-42b1-9bce-22b43ba51b69', 'region', null, '2019-01-21 15:16:43', 'test', '0', 'fe6d84e9-aa6b-4f5d-80a7-4328060a7806', '2019-01-21 15:16:43', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('1e968d67-0112-457e-bdf7-3a6c016b8ff4', 'categoryName', '', '2019-01-21 15:16:10', 'test', '0', '2fe7fe6a-0d15-452e-9acd-c7db3a932d3c', '2019-01-23 11:41:28', 'test', '', null, '', '1');
INSERT INTO `sys_chart_node_cols` VALUES ('21ff1358-387b-4e88-9d0a-2d160f44ad1f', 'address', null, '2019-01-21 15:16:42', 'test', '0', 'fe6d84e9-aa6b-4f5d-80a7-4328060a7806', '2019-01-21 15:16:42', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('29251f32-ec28-42e5-bc96-c2812bbd55db', 'name', '人名', '2019-01-21 15:16:26', 'test', '0', '52884d02-cfae-413a-93b0-705db4957c78', '2019-01-23 11:41:19', 'test', 'RYXM', null, '', '1');
INSERT INTO `sys_chart_node_cols` VALUES ('2de83597-0e5d-4901-8446-94ae651d2eb3', 'address', '', '2019-01-21 15:16:18', 'test', '0', '4187c90f-fd1c-43e3-9d0b-0b50084fbfaa', '2019-01-22 18:27:34', 'test', 'DZ', null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('351be96c-de29-44ee-b0c5-96619a67e120', 'contactName', '', '2019-01-21 15:16:18', 'test', '0', '4187c90f-fd1c-43e3-9d0b-0b50084fbfaa', '2019-01-23 14:17:57', 'test', '', null, '', '1');
INSERT INTO `sys_chart_node_cols` VALUES ('398f7ce5-6bcc-43ed-9e39-a288d9c37e1d', 'supplierID', null, '2019-01-21 15:16:42', 'test', '0', 'fe6d84e9-aa6b-4f5d-80a7-4328060a7806', '2019-01-21 15:16:42', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('406b8e0d-8cfc-4882-9f36-926ff4a90d68', 'postalCode', null, '2019-01-21 15:16:42', 'test', '0', 'fe6d84e9-aa6b-4f5d-80a7-4328060a7806', '2019-01-21 15:16:42', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('42df6342-19b3-495c-9dbb-d768bde0465c', 'requiredDate', null, '2019-01-21 15:16:33', 'test', '0', '9a9627bd-8ac1-4918-b5ef-54669ed93c22', '2019-01-21 15:16:33', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('46d41df0-caa0-41f4-a6e9-44f7846c3022', 'tagline', null, '2019-01-21 15:15:52', 'test', '0', '045eecaa-bb8a-42dd-a5db-f9eb287c6097', '2019-01-21 15:15:52', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('49e5ae1d-36cb-42c0-b76c-9556b62ca245', 'supplierID', null, '2019-01-21 15:16:51', 'test', '0', 'ff5b7e37-24b9-4773-9b1d-3fd2d3a6540a', '2019-01-21 15:16:51', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('4e6be313-e16b-4d68-88f9-163cc002d3e9', 'shipVia', null, '2019-01-21 15:16:33', 'test', '0', '9a9627bd-8ac1-4918-b5ef-54669ed93c22', '2019-01-21 15:16:33', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('500ed8c2-838f-4d24-bdda-ca1b0167dad8', 'productID', null, '2019-01-21 15:16:51', 'test', '0', 'ff5b7e37-24b9-4773-9b1d-3fd2d3a6540a', '2019-01-21 15:16:51', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('52976b47-01bc-4c78-acd2-9189ba991ec3', 'fax', null, '2019-01-21 15:16:43', 'test', '0', 'fe6d84e9-aa6b-4f5d-80a7-4328060a7806', '2019-01-21 15:16:43', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('52b4d4ad-b402-48b8-bbab-e03fb57bdd1c', 'shipCountry', null, '2019-01-21 15:16:33', 'test', '0', '9a9627bd-8ac1-4918-b5ef-54669ed93c22', '2019-01-21 15:16:33', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('5af633dd-f463-4fab-833a-9fc25962e173', 'shipRegion', null, '2019-01-21 15:16:33', 'test', '0', '9a9627bd-8ac1-4918-b5ef-54669ed93c22', '2019-01-21 15:16:33', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('5f866c68-f22a-4a6e-8800-a5971c9b72a3', 'discontinued', '', '2019-01-21 15:16:51', 'test', '0', 'ff5b7e37-24b9-4773-9b1d-3fd2d3a6540a', '2019-01-23 11:42:20', 'test', '', null, 'boolean', null);
INSERT INTO `sys_chart_node_cols` VALUES ('60209750-2d8f-4543-9ec4-0b78b3cdd8d1', 'picture', null, '2019-01-21 15:16:10', 'test', '0', '2fe7fe6a-0d15-452e-9acd-c7db3a932d3c', '2019-01-21 15:16:10', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('61d1c942-3bb3-451d-a0c8-187b42b9b1f1', 'postalCode', null, '2019-01-21 15:16:18', 'test', '0', '4187c90f-fd1c-43e3-9d0b-0b50084fbfaa', '2019-01-21 15:16:18', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('637f4737-b59c-48f3-808f-73182f45b040', 'freight', null, '2019-01-21 15:16:33', 'test', '0', '9a9627bd-8ac1-4918-b5ef-54669ed93c22', '2019-01-21 15:16:33', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('6406d5e5-ccb2-421a-84e9-19d56f9fe388', 'unitsOnOrder', '', '2019-01-21 15:16:51', 'test', '0', 'ff5b7e37-24b9-4773-9b1d-3fd2d3a6540a', '2019-01-23 12:06:00', 'test', '', null, 'int', null);
INSERT INTO `sys_chart_node_cols` VALUES ('665e5269-8900-49fe-9a47-a611ec733aae', 'phone', null, '2019-01-21 15:16:43', 'test', '0', 'fe6d84e9-aa6b-4f5d-80a7-4328060a7806', '2019-01-21 15:16:43', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('6878a2c3-41d0-44f1-90b3-a81934e053e2', 'shipName', '', '2019-01-21 15:16:33', 'test', '0', '9a9627bd-8ac1-4918-b5ef-54669ed93c22', '2019-01-23 11:41:52', 'test', '', null, '', '1');
INSERT INTO `sys_chart_node_cols` VALUES ('72349192-e9ef-4a50-8f2c-d83efc2c2414', 'city', null, '2019-01-21 15:16:42', 'test', '0', 'fe6d84e9-aa6b-4f5d-80a7-4328060a7806', '2019-01-21 15:16:42', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('781ff514-be81-4fea-a2cf-4dee59c611a7', 'released', null, '2019-01-21 15:15:52', 'test', '0', '045eecaa-bb8a-42dd-a5db-f9eb287c6097', '2019-01-21 15:15:52', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('794b27f6-3511-4cc7-bf68-5cb4344f232f', 'tagline', null, '2019-01-22 15:09:32', 'test', '0', '2c40ec3e-0c94-497c-ac7c-5eb1056be808', '2019-01-22 15:09:32', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('81b5b661-765b-4a6f-89f2-cbdda41466bf', 'customerID', null, '2019-01-21 15:16:18', 'test', '0', '4187c90f-fd1c-43e3-9d0b-0b50084fbfaa', '2019-01-21 15:16:18', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('853d0297-168b-417b-84a9-f9f62afd634e', 'fax', null, '2019-01-21 15:16:18', 'test', '0', '4187c90f-fd1c-43e3-9d0b-0b50084fbfaa', '2019-01-21 15:16:18', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('8a76a0be-0f7e-4da6-9b41-9ac413250ab1', 'employeeID', null, '2019-01-21 15:16:33', 'test', '0', '9a9627bd-8ac1-4918-b5ef-54669ed93c22', '2019-01-21 15:16:33', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('8d270d42-024e-4fc3-9449-13fcb04b13ef', 'phone', '', '2019-01-21 15:16:18', 'test', '0', '4187c90f-fd1c-43e3-9d0b-0b50084fbfaa', '2019-01-21 15:18:02', 'test', 'DHHM', null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('8d33c7b6-ff64-416c-8afc-1cf7e2f07422', 'companyName', '', '2019-01-21 15:16:42', 'test', '0', 'fe6d84e9-aa6b-4f5d-80a7-4328060a7806', '2019-01-23 11:02:46', 'test', 'GSMC', null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('8e906e56-9840-4a20-8a23-dea0dd7739cd', 'born', '', '2019-01-21 15:16:26', 'test', '0', '52884d02-cfae-413a-93b0-705db4957c78', '2019-01-23 13:38:05', 'test', '', null, 'int', null);
INSERT INTO `sys_chart_node_cols` VALUES ('94368c43-951d-49a5-ab9f-4fdf195c1799', 'contactTitle', null, '2019-01-21 15:16:43', 'test', '0', 'fe6d84e9-aa6b-4f5d-80a7-4328060a7806', '2019-01-21 15:16:43', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('9922d372-5d46-493b-a37d-9ef851f5b591', 'categoryID', null, '2019-01-21 15:16:10', 'test', '0', '2fe7fe6a-0d15-452e-9acd-c7db3a932d3c', '2019-01-21 15:16:10', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('9d4d815d-2c83-40b3-8e7e-b1141ccd1312', 'city', null, '2019-01-21 15:16:18', 'test', '0', '4187c90f-fd1c-43e3-9d0b-0b50084fbfaa', '2019-01-21 15:16:18', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('9e3c76da-03d4-43cf-9be6-90641653dff5', 'productName', '', '2019-01-21 15:16:51', 'test', '0', 'ff5b7e37-24b9-4773-9b1d-3fd2d3a6540a', '2019-01-23 11:42:31', 'test', '', null, '', '1');
INSERT INTO `sys_chart_node_cols` VALUES ('a668a0c8-aaea-41c7-af1b-97365d84fe5e', 'title', '', '2019-01-22 15:09:32', 'test', '0', '2c40ec3e-0c94-497c-ac7c-5eb1056be808', '2019-01-23 11:40:09', 'test', 'TITLE', '1', 'string', '1');
INSERT INTO `sys_chart_node_cols` VALUES ('aa4b9595-fba0-4a20-bcf4-d2644c243918', 'customerID', null, '2019-01-21 15:16:33', 'test', '0', '9a9627bd-8ac1-4918-b5ef-54669ed93c22', '2019-01-21 15:16:33', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('bc29be22-a0f7-4913-8801-8a781577f9fb', 'shipPostalCode', null, '2019-01-21 15:16:33', 'test', '0', '9a9627bd-8ac1-4918-b5ef-54669ed93c22', '2019-01-21 15:16:33', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('c48eafcd-f233-4cc0-a304-d7a5616c5acf', 'companyName', '', '2019-01-21 15:16:18', 'test', '0', '4187c90f-fd1c-43e3-9d0b-0b50084fbfaa', '2019-01-23 11:41:36', 'test', 'GSMC', null, '', '1');
INSERT INTO `sys_chart_node_cols` VALUES ('c4a4937e-3e97-4bd4-b4ae-07a8e7cc7076', 'contactName', '', '2019-01-21 15:16:42', 'test', '0', 'fe6d84e9-aa6b-4f5d-80a7-4328060a7806', '2019-01-23 14:21:30', 'test', '', null, '', '1');
INSERT INTO `sys_chart_node_cols` VALUES ('c6dbb88d-1a18-41d9-ac20-07e955ce126c', 'quantityPerUnit', null, '2019-01-21 15:16:51', 'test', '0', 'ff5b7e37-24b9-4773-9b1d-3fd2d3a6540a', '2019-01-21 15:16:51', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('d14c888e-1479-4f52-bee1-8d95f8659bbc', 'released', '', '2019-01-22 15:09:32', 'test', '0', '2c40ec3e-0c94-497c-ac7c-5eb1056be808', '2019-01-23 13:39:16', 'test', '', null, 'int', null);
INSERT INTO `sys_chart_node_cols` VALUES ('d28765fd-794b-46e6-af66-b1596859549b', 'reorderLevel', '', '2019-01-21 15:16:51', 'test', '0', 'ff5b7e37-24b9-4773-9b1d-3fd2d3a6540a', '2019-01-23 12:06:56', 'test', '', null, 'int', null);
INSERT INTO `sys_chart_node_cols` VALUES ('d5e9b8a6-9814-4dab-89fb-0792de09ee0a', 'unitsInStock', '', '2019-01-21 15:16:50', 'test', '0', 'ff5b7e37-24b9-4773-9b1d-3fd2d3a6540a', '2019-01-23 12:07:48', 'test', '', null, 'int', null);
INSERT INTO `sys_chart_node_cols` VALUES ('d76ff21f-317e-4215-9a33-cff45b5041d9', 'title', '', '2019-01-21 15:15:52', 'test', '0', '045eecaa-bb8a-42dd-a5db-f9eb287c6097', '2019-01-21 15:17:43', 'test', 'TITLE', null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('da2e01e4-6555-4169-9346-aa404410ff62', 'orderID', null, '2019-01-21 15:16:33', 'test', '0', '9a9627bd-8ac1-4918-b5ef-54669ed93c22', '2019-01-21 15:16:33', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('dcf5d4b8-97d6-4762-a2ea-f88919ac4925', 'contactTitle', null, '2019-01-21 15:16:18', 'test', '0', '4187c90f-fd1c-43e3-9d0b-0b50084fbfaa', '2019-01-21 15:16:18', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('e085715c-8963-4739-8b3f-a042aa9c1ce2', 'country', '', '2019-01-21 15:16:42', 'test', '0', 'fe6d84e9-aa6b-4f5d-80a7-4328060a7806', '2019-01-23 11:58:56', 'test', '', null, '', null);
INSERT INTO `sys_chart_node_cols` VALUES ('e18b82fa-6837-449d-9461-4a00de0173d9', 'country', null, '2019-01-21 15:16:18', 'test', '0', '4187c90f-fd1c-43e3-9d0b-0b50084fbfaa', '2019-01-21 15:16:18', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('ea665179-998e-43d3-920c-8660c7d80414', 'description', null, '2019-01-21 15:16:10', 'test', '0', '2fe7fe6a-0d15-452e-9acd-c7db3a932d3c', '2019-01-21 15:16:10', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('ece7863b-a19c-42dd-bc3a-4eb1690a142c', 'shippedDate', null, '2019-01-21 15:16:33', 'test', '0', '9a9627bd-8ac1-4918-b5ef-54669ed93c22', '2019-01-21 15:16:33', 'test', null, null, null, null);
INSERT INTO `sys_chart_node_cols` VALUES ('f64773bb-3bc7-45ed-8ad6-3a335698d596', 'region', null, '2019-01-21 15:16:18', 'test', '0', '4187c90f-fd1c-43e3-9d0b-0b50084fbfaa', '2019-01-21 15:16:18', 'test', null, null, null, null);

-- ----------------------------
-- Table structure for sys_chart_relationship_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_chart_relationship_type`;
CREATE TABLE `sys_chart_relationship_type` (
  `uuid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system',
  `delete_flag` int(11) DEFAULT '0',
  `relationship_desc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relationship_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_chart_relationship_type
-- ----------------------------
INSERT INTO `sys_chart_relationship_type` VALUES ('151250e7-235e-41f0-a3c3-c91bf95608fc', '2019-01-21 15:19:30', 'test', '0', null, 'REVIEWED', '2019-01-21 15:19:30', 'test');
INSERT INTO `sys_chart_relationship_type` VALUES ('1884121f-c1aa-4080-9c8e-942b8e363115', '2019-01-21 15:19:30', 'test', '0', null, 'PRODUCED', '2019-01-21 15:19:30', 'test');
INSERT INTO `sys_chart_relationship_type` VALUES ('24cb14fe-45b1-437f-8058-658ed7b9e1e3', '2019-01-21 15:19:30', 'test', '0', null, 'WROTE', '2019-01-21 15:19:30', 'test');
INSERT INTO `sys_chart_relationship_type` VALUES ('8598e037-9ead-43d1-8a70-53c3bae3f539', '2019-01-21 15:19:30', 'test', '0', null, 'SUPPLIES', '2019-01-21 15:19:30', 'test');
INSERT INTO `sys_chart_relationship_type` VALUES ('978a4b13-0528-4bc8-aa93-3686c346c37e', '2019-01-21 15:19:29', 'test', '0', null, 'ACTED_IN', '2019-01-21 15:19:29', 'test');
INSERT INTO `sys_chart_relationship_type` VALUES ('a0d9d5ce-8e3b-44b9-985b-b333011232f2', '2019-01-21 15:19:30', 'test', '0', null, 'FOLLOWS', '2019-01-21 15:19:30', 'test');
INSERT INTO `sys_chart_relationship_type` VALUES ('a2cb087b-743d-4e26-90f2-359958ea579d', '2019-01-21 15:19:30', 'test', '0', null, 'PURCHASED', '2019-01-21 15:19:30', 'test');
INSERT INTO `sys_chart_relationship_type` VALUES ('aa597488-9261-43ad-9a1e-b0bcf19018e0', '2019-01-21 15:19:29', 'test', '0', null, 'DIRECTED', '2019-01-21 15:19:29', 'test');
INSERT INTO `sys_chart_relationship_type` VALUES ('b2ceec41-38ce-44e9-8776-2f2e10130f03', '2019-01-21 15:19:30', 'test', '0', null, 'PART_OF', '2019-01-21 15:19:30', 'test');
INSERT INTO `sys_chart_relationship_type` VALUES ('ca3436d8-7beb-4eaf-90c5-0042aca82673', '2019-01-21 15:19:30', 'test', '0', null, 'ORDERS', '2019-01-21 15:19:30', 'test');

-- ----------------------------
-- Table structure for sys_comn_logs
-- ----------------------------
DROP TABLE IF EXISTS `sys_comn_logs`;
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

-- ----------------------------
-- Records of sys_comn_logs
-- ----------------------------

-- ----------------------------
-- Table structure for sys_crawler_demo
-- ----------------------------
DROP TABLE IF EXISTS `sys_crawler_demo`;
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

-- ----------------------------
-- Records of sys_crawler_demo
-- ----------------------------
INSERT INTO `sys_crawler_demo` VALUES ('BB840C8E8D27C61B062ECE192C7FD9D5', '系统使用表', '2018-06-06 21:17:39', null, '2018-06-06 21:17:39', null, '1');

-- ----------------------------
-- Table structure for sys_crawler_result_ruler_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_crawler_result_ruler_info`;
CREATE TABLE `sys_crawler_result_ruler_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `cols_name` varchar(30) DEFAULT NULL COMMENT '表字段名',
  `cols_uuid` varchar(36) DEFAULT NULL COMMENT '表字段id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
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
-- Records of sys_crawler_result_ruler_info
-- ----------------------------
INSERT INTO `sys_crawler_result_ruler_info` VALUES ('1F8B7AD69C8836B0F472C06DF1581562', '发布状态', '2c467763-6ee2-4548-b985-cadb5206a1a7', null, null, null, null, '发布状态', '8a2c5468-3236-404b-817a-0345fb5f7f9a', '0e97cb8d-8a6b-4e00-94c2-4a67594eae55', 'e418410f-17b0-11e9-9800-1c1b0daaaad8', '2019-07-19 06:13:53', 'system');
INSERT INTO `sys_crawler_result_ruler_info` VALUES ('1FEA429B2D687D7FACBB1B5C24F51BD0', '图片地址', 'f05bbe10-772e-4f6c-b3c3-fb91f1f30a46', null, null, null, null, '图片地址', '029c93c0-d507-4e88-9d8a-564b5fea1565', 'ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51', 'e4171b19-17b0-11e9-9800-1c1b0daaaad8', '2019-07-19 06:11:35', 'system');
INSERT INTO `sys_crawler_result_ruler_info` VALUES ('24F85457E25F7554B1506EED773560D0', '项目', '93cc7e6c-f502-4009-893c-8feb09b6d933', null, null, null, null, '项目', 'a5ee9ca0-f40a-4ea0-8e2f-34ed8113f0bf', '04974933-33bc-47d4-9dd9-903558fc7e60', 'e417c3db-17b0-11e9-9800-1c1b0daaaad8', '2019-07-19 06:13:02', 'system');
INSERT INTO `sys_crawler_result_ruler_info` VALUES ('2F7BD7508034A0E5244827CE6F74685D', '分类', '17c7c569-3dac-480d-9e88-97cf5dc76239', null, null, null, null, '分类', 'c2c27f3d-58e7-4adc-873e-6f9daed8476c', 'ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51', 'e4171b19-17b0-11e9-9800-1c1b0daaaad8', '2019-07-19 06:11:35', 'system');
INSERT INTO `sys_crawler_result_ruler_info` VALUES ('3426E0E2876FC0975896C484FB92289B', '小说简介', '224258cf-35f4-45be-9157-dc0111e3a787', null, null, null, null, '小说简介', 'd5d90aba-de85-4e1b-9fbb-1b97338fe1c8', '0e97cb8d-8a6b-4e00-94c2-4a67594eae55', 'e418410f-17b0-11e9-9800-1c1b0daaaad8', '2019-07-19 06:13:53', 'system');
INSERT INTO `sys_crawler_result_ruler_info` VALUES ('40D3A4AE15A0F2560D3FBB66E4612EB8', '书名', '7ff16821-07db-423a-9654-cff2a537d0be', null, null, null, null, '书名', 'f3d51f1f-8bd1-4f9e-8c0e-58792da5483b', '0e97cb8d-8a6b-4e00-94c2-4a67594eae55', 'e418410f-17b0-11e9-9800-1c1b0daaaad8', '2019-07-19 06:13:53', 'system');
INSERT INTO `sys_crawler_result_ruler_info` VALUES ('435F6DA930BBC28F0059F51124A0B0CC', '数据id', '56A15A13A63138F1ACB76C2694846904', null, null, null, null, '数据id', '0084a468-695e-4d38-8feb-71196f6e4191', '0e97cb8d-8a6b-4e00-94c2-4a67594eae55', 'e418410f-17b0-11e9-9800-1c1b0daaaad8', '2019-07-19 06:13:52', 'system');
INSERT INTO `sys_crawler_result_ruler_info` VALUES ('4856A2D68E76F73EF8CC2D7378A283E4', '介绍', '046c087d-aaef-40c6-8155-441692322c0d', null, null, null, null, '介绍', '83fa2084-5f4c-4a6f-81af-b1cf1d324526', 'ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51', 'e4171b19-17b0-11e9-9800-1c1b0daaaad8', '2019-07-19 06:11:35', 'system');
INSERT INTO `sys_crawler_result_ruler_info` VALUES ('5DE8FC076049B9F3A0A5C9501DF0E281', '地址', '81bae4ce-9ec1-4a99-ad4b-91b0f90aa84a', null, null, null, null, '地址', '1ec8b8ae-36a5-44d0-8c05-1f7948ef868b', 'ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51', 'e4171b19-17b0-11e9-9800-1c1b0daaaad8', '2019-07-19 06:11:35', 'system');
INSERT INTO `sys_crawler_result_ruler_info` VALUES ('767AECCEAC9732EBE60B126455289CE3', '连接地址', '3c8f87fc-3228-4f53-9715-3a6b47671f05', null, null, null, null, '连接地址', 'f2f24035-ff18-49a3-9082-42aec27285ff', '04974933-33bc-47d4-9dd9-903558fc7e60', 'e417c3db-17b0-11e9-9800-1c1b0daaaad8', '2019-07-19 06:13:02', 'system');
INSERT INTO `sys_crawler_result_ruler_info` VALUES ('85C1198FBAD45EDAE5B00B577DCE373E', '标题', '93c98d2e-66ca-42bd-a1b5-df77c860eec0', null, null, null, null, '标题', 'e16f359c-378a-46b4-b935-4ae8366310ad', 'ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51', 'e4171b19-17b0-11e9-9800-1c1b0daaaad8', '2019-07-19 06:11:35', 'system');
INSERT INTO `sys_crawler_result_ruler_info` VALUES ('8D5FE598C01722FB6DEF2CF10D419348', '分类1', '3e6b1313-547e-4a34-8e44-dddff609257c', null, null, null, null, '分类1', '19318c74-a463-4f8d-84e8-6bf17c289a67', '0e97cb8d-8a6b-4e00-94c2-4a67594eae55', 'e418410f-17b0-11e9-9800-1c1b0daaaad8', '2019-07-19 06:13:52', 'system');
INSERT INTO `sys_crawler_result_ruler_info` VALUES ('906AC22C7A4768B01E6EBDF1BF3D881F', '作者首页', '1ed2ddc0-0dda-4b2c-81b6-462dbd7284a2', null, null, null, null, '作者首页', '4318229f-3130-47ea-baee-6ceb78ef9561', '0e97cb8d-8a6b-4e00-94c2-4a67594eae55', 'e418410f-17b0-11e9-9800-1c1b0daaaad8', '2019-07-19 06:13:53', 'system');
INSERT INTO `sys_crawler_result_ruler_info` VALUES ('BA13C8EACA39E1F106962614636B5292', '书面', 'a76818af-d353-4cb7-9579-8c9895b6a92d', null, null, null, null, '书面', 'cb6aead6-2f7a-4f2f-b742-ac6a002d3934', '0e97cb8d-8a6b-4e00-94c2-4a67594eae55', 'e418410f-17b0-11e9-9800-1c1b0daaaad8', '2019-07-19 06:13:53', 'system');
INSERT INTO `sys_crawler_result_ruler_info` VALUES ('C626A2CEC02722A9448DCDE2B9670C6B', '喜欢', '46f4cfed-e077-484b-bb69-c5a5079f69b0', null, null, null, null, '喜欢', '47101af9-8094-48a8-af23-1efc7571e1e4', 'ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51', 'e4171b19-17b0-11e9-9800-1c1b0daaaad8', '2019-07-19 06:11:35', 'system');
INSERT INTO `sys_crawler_result_ruler_info` VALUES ('D2F145F7A0A72875CF0711AF92D3F71C', '作者', '5e6003ea-0c8b-4cfe-96b7-c0e6ee981daa', null, null, null, null, '作者', '77719db3-d3f4-4a30-bd87-27e31c279cea', '0e97cb8d-8a6b-4e00-94c2-4a67594eae55', 'e418410f-17b0-11e9-9800-1c1b0daaaad8', '2019-07-19 06:13:53', 'system');
INSERT INTO `sys_crawler_result_ruler_info` VALUES ('E565A079B8AB0203034AFAF62C67996A', '小说主页', '7d543e9c-8e41-40aa-bb70-a7636a46db8a', null, null, null, null, '小说主页', '378e4b5a-764f-44de-972e-004a8557ce9f', '0e97cb8d-8a6b-4e00-94c2-4a67594eae55', 'e418410f-17b0-11e9-9800-1c1b0daaaad8', '2019-07-19 06:13:52', 'system');
INSERT INTO `sys_crawler_result_ruler_info` VALUES ('F662E12C70E0EDB64308B376592A27BF', '分类2', 'fc597445-2503-4fea-8818-e9042d653b85', null, null, null, null, '分类2', '3c5b74bb-3009-44da-83aa-1af0d8540b7f', '0e97cb8d-8a6b-4e00-94c2-4a67594eae55', 'e418410f-17b0-11e9-9800-1c1b0daaaad8', '2019-07-19 06:13:53', 'system');

-- ----------------------------
-- Table structure for sys_crawler_ruler_colum_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_crawler_ruler_colum_info`;
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

-- ----------------------------
-- Records of sys_crawler_ruler_colum_info
-- ----------------------------
INSERT INTO `sys_crawler_ruler_colum_info` VALUES ('0084a468-695e-4d38-8feb-71196f6e4191', null, null, null, '数据id', '2018-12-14 22:48:15', null, null, null, './div[@class=\"book-img-box\"]/a/@data-bid', '0e97cb8d-8a6b-4e00-94c2-4a67594eae55', null, null, 'lxml', '2018-12-14 22:48:15', 'system', null, '', '', null, null, null);
INSERT INTO `sys_crawler_ruler_colum_info` VALUES ('029c93c0-d507-4e88-9d8a-564b5fea1565', null, null, null, '图片地址', '2018-12-11 23:37:00', null, null, null, './a/img/@src', 'ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51', null, null, 'lxml', '2018-12-11 23:37:00', 'system', null, '', '', null, 'dddc1b17-a1b4-467b-98a5-03a759a4cfc8', null);
INSERT INTO `sys_crawler_ruler_colum_info` VALUES ('19318c74-a463-4f8d-84e8-6bf17c289a67', null, null, null, '分类1', '2018-12-14 22:53:31', null, null, null, './div[@class=\"book-mid-info\"]/p[@class=\"author\"]/a[@data-eid=\"qd_B60\"]/text()', '0e97cb8d-8a6b-4e00-94c2-4a67594eae55', null, null, 'lxml', '2018-12-14 22:53:31', 'system', null, '', '', null, null, null);
INSERT INTO `sys_crawler_ruler_colum_info` VALUES ('1ec8b8ae-36a5-44d0-8c05-1f7948ef868b', null, null, null, '地址', '2018-12-11 23:36:07', null, null, null, './h3/a/@href', 'ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51', null, null, 'lxml', '2018-12-11 23:36:07', 'system', null, '', '', null, 'dddc1b17-a1b4-467b-98a5-03a759a4cfc8', null);
INSERT INTO `sys_crawler_ruler_colum_info` VALUES ('378e4b5a-764f-44de-972e-004a8557ce9f', null, null, null, '小说主页', '2018-12-14 22:47:05', null, null, null, './div[@class=\"book-img-box\"]/a/@href', '0e97cb8d-8a6b-4e00-94c2-4a67594eae55', null, null, 'strAppendbefor', '2019-01-23 08:04:34', null, null, 'https://', '', null, null, '是');
INSERT INTO `sys_crawler_ruler_colum_info` VALUES ('3c5b74bb-3009-44da-83aa-1af0d8540b7f', null, null, null, '分类2', '2018-12-14 22:54:10', null, null, null, './div[@class=\"book-mid-info\"]/p[@class=\"author\"]/a[@data-eid=\"qd_B61\"]/text()', '0e97cb8d-8a6b-4e00-94c2-4a67594eae55', null, null, 'lxml', '2018-12-14 22:54:10', 'system', null, '', '', null, null, null);
INSERT INTO `sys_crawler_ruler_colum_info` VALUES ('4318229f-3130-47ea-baee-6ceb78ef9561', null, null, null, '作者首页', '2018-12-14 22:51:56', null, null, null, './div[@class=\"book-mid-info\"]/p[@class=\"author\"]/a[@class=\"name\"]/@href', '0e97cb8d-8a6b-4e00-94c2-4a67594eae55', null, null, 'strAppendbefor', '2018-12-14 22:51:56', 'system', null, 'https://', '', null, null, null);
INSERT INTO `sys_crawler_ruler_colum_info` VALUES ('47101af9-8094-48a8-af23-1efc7571e1e4', null, null, null, '喜欢', '2018-12-11 23:39:16', null, null, null, './div[@class=\"jieshao-low\"]/span/text()', 'ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51', null, null, 'lxml', '2018-12-11 23:39:16', 'system', null, '', '', null, 'dddc1b17-a1b4-467b-98a5-03a759a4cfc8', null);
INSERT INTO `sys_crawler_ruler_colum_info` VALUES ('77719db3-d3f4-4a30-bd87-27e31c279cea', null, null, null, '作者', '2018-12-14 22:51:02', null, null, null, './div[@class=\"book-mid-info\"]/p[@class=\"author\"]/a[@class=\"name\"]/text()', '0e97cb8d-8a6b-4e00-94c2-4a67594eae55', null, null, 'lxml', '2018-12-14 22:51:02', 'system', null, '', '', null, null, null);
INSERT INTO `sys_crawler_ruler_colum_info` VALUES ('83fa2084-5f4c-4a6f-81af-b1cf1d324526', null, null, null, '介绍', '2018-12-11 23:37:59', null, null, null, './div[@class=\"jieshao\"]/text()', 'ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51', null, null, 'arrayToString', '2018-12-11 23:37:59', 'system', null, '', '', null, 'dddc1b17-a1b4-467b-98a5-03a759a4cfc8', null);
INSERT INTO `sys_crawler_ruler_colum_info` VALUES ('8a2c5468-3236-404b-817a-0345fb5f7f9a', null, null, null, '发布状态', '2018-12-14 22:55:09', null, null, null, './div[@class=\"book-mid-info\"]/p[@class=\"author\"]/span/text()', '0e97cb8d-8a6b-4e00-94c2-4a67594eae55', null, null, 'lxml', '2018-12-14 22:55:09', 'system', null, '', '', null, null, null);
INSERT INTO `sys_crawler_ruler_colum_info` VALUES ('a5ee9ca0-f40a-4ea0-8e2f-34ed8113f0bf', null, null, null, '项目', '2018-12-05 22:26:26', null, null, null, './text()', '04974933-33bc-47d4-9dd9-903558fc7e60', null, null, 'lxml', '2018-12-05 22:26:26', 'system', null, '', '', null, null, null);
INSERT INTO `sys_crawler_ruler_colum_info` VALUES ('c2c27f3d-58e7-4adc-873e-6f9daed8476c', null, null, null, '分类', '2018-12-11 23:39:54', null, null, null, './div[@class=\"jieshao-low\"]/a/text()', 'ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51', null, null, 'lxml', '2018-12-11 23:39:54', 'system', null, '', '', null, 'dddc1b17-a1b4-467b-98a5-03a759a4cfc8', null);
INSERT INTO `sys_crawler_ruler_colum_info` VALUES ('cb6aead6-2f7a-4f2f-b742-ac6a002d3934', null, null, null, '书面', '2018-12-14 22:38:49', null, null, null, './div[@class=\"book-img-box\"]/a/img/@src', '0e97cb8d-8a6b-4e00-94c2-4a67594eae55', null, null, 'strAppendbefor', '2018-12-14 22:38:49', 'system', null, 'https://', '', null, null, null);
INSERT INTO `sys_crawler_ruler_colum_info` VALUES ('d5d90aba-de85-4e1b-9fbb-1b97338fe1c8', null, null, null, '小说简介', '2018-12-14 22:56:31', null, null, null, './div[@class=\"book-mid-info\"]/p[@class=\"intro\"]/text()', '0e97cb8d-8a6b-4e00-94c2-4a67594eae55', null, null, 'lxml', '2018-12-14 22:56:31', 'system', null, '', '', null, null, null);
INSERT INTO `sys_crawler_ruler_colum_info` VALUES ('e16f359c-378a-46b4-b935-4ae8366310ad', null, null, null, '标题', '2018-12-11 23:35:30', null, null, null, './h3/a/text()', 'ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51', null, null, 'lxml', '2018-12-11 23:35:30', 'system', null, '', '', null, 'dddc1b17-a1b4-467b-98a5-03a759a4cfc8', null);
INSERT INTO `sys_crawler_ruler_colum_info` VALUES ('f2f24035-ff18-49a3-9082-42aec27285ff', null, null, null, '连接地址', '2018-12-05 22:27:07', null, null, null, './@href', '04974933-33bc-47d4-9dd9-903558fc7e60', null, null, 'strAppendbefor', '2019-01-23 08:04:10', null, null, 'http://www.xuexic.com', '', null, null, '是');
INSERT INTO `sys_crawler_ruler_colum_info` VALUES ('f3d51f1f-8bd1-4f9e-8c0e-58792da5483b', null, null, null, '书名', '2018-12-14 22:49:09', null, null, null, './div[@class=\"book-mid-info\"]/h4/a/text()', '0e97cb8d-8a6b-4e00-94c2-4a67594eae55', null, null, 'lxml', '2018-12-14 22:49:09', 'system', null, '', '', null, null, null);

-- ----------------------------
-- Table structure for sys_crawler_ruler_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_crawler_ruler_info`;
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

-- ----------------------------
-- Records of sys_crawler_ruler_info
-- ----------------------------
INSERT INTO `sys_crawler_ruler_info` VALUES ('04974933-33bc-47d4-9dd9-903558fc7e60', null, null, '2018-12-05 22:13:31', null, null, null, '导航', 'navigation_bar', '2018-12-05 22:16:38', null, '', '68103c87-e974-46e2-bf54-a3c1b817ab41', '//div[@class=\"site-map\"]/a', null, null, '完成', null, null);
INSERT INTO `sys_crawler_ruler_info` VALUES ('0e97cb8d-8a6b-4e00-94c2-4a67594eae55', null, null, '2018-12-14 22:09:21', null, null, null, '起点列表', 'listPage', '2018-12-17 20:18:21', null, null, '489b76bb-efd5-4a8f-84a1-f118490536f9', '//div[@class=\"wrap\"]/div[@class=\"all-pro-wrap box-center cf\"]/div[@class=\"main-content-wrap fl\"]', '//div[@class=\"all-book-list\"]/div[@class=\"book-img-text\"]/ul/li', '//div[@class=\"page-box cf\"]//a[@class=\"lbf-pagination-next \"]/@href', '完成', null, null);
INSERT INTO `sys_crawler_ruler_info` VALUES ('ab7a4ba9-ab19-4a26-8663-4e38f3dc5b51', null, null, '2018-12-11 20:58:29', null, null, null, '列表', 'listPage', '2018-12-24 23:16:44', null, '04974933-33bc-47d4-9dd9-903558fc7e60', '68103c87-e974-46e2-bf54-a3c1b817ab41', '//div[@class=\"content\"]/div[@class=\"list\"]/div[@class=\"padd w645\"]/div[@class=\"list_left\"]', './div[@class=\"topic-list\"]/ul/li', './div[@class=\"show-page\"]/a[@class=\"next\"]/@href', '完成', '', 'f2f24035-ff18-49a3-9082-42aec27285ff');

-- ----------------------------
-- Table structure for sys_crawler_task_err_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_crawler_task_err_info`;
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

-- ----------------------------
-- Records of sys_crawler_task_err_info
-- ----------------------------
INSERT INTO `sys_crawler_task_err_info` VALUES ('BB840C8E8D27C61B062ECE192C7FD9D5', '系统使用表', '2018-06-06 21:17:39', null, '2018-06-06 21:17:39', null, '1', null, null, null);

-- ----------------------------
-- Table structure for sys_crawler_task_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_crawler_task_info`;
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

-- ----------------------------
-- Records of sys_crawler_task_info
-- ----------------------------
INSERT INTO `sys_crawler_task_info` VALUES ('489b76bb-efd5-4a8f-84a1-f118490536f9', '起点小说网', null, null, null, null, null, null, null, null, null, '0', '2018-12-14 20:49:47', null, '2018-12-14 20:49:47', 'system', 'UTF-8', '', 'requestGet', 'https://www.qidian.com/all', null, '小说', 'http://qidian.gtimg.com/qd/favicon/qd_icon.c443c.ico', '完成');
INSERT INTO `sys_crawler_task_info` VALUES ('68103c87-e974-46e2-bf54-a3c1b817ab41', '资料库列表分类', null, null, '2122', '90', '0', '0', '0', null, null, '0', '2018-11-11 12:50:49', null, '2018-11-11 12:50:49', 'system', 'utf-8', '', 'requestGet', 'http://www.xuexi111.org/about/sitemap.html', '学习资料库', '资料', 'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1989459476,3828863328&fm=58&s=11387193F530499252EC2DFB02001032&bpow=121&bpoh=75', '完成');

-- ----------------------------
-- Table structure for sys_crawler_task_self_code_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_crawler_task_self_code_info`;
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

-- ----------------------------
-- Records of sys_crawler_task_self_code_info
-- ----------------------------
INSERT INTO `sys_crawler_task_self_code_info` VALUES ('BB840C8E8D27C61B062ECE192C7FD9D5', '系统使用表', '2018-06-06 21:17:39', null, '2018-06-06 21:17:39', null, '1', null, null, null);

-- ----------------------------
-- Table structure for sys_dbms_advi_mess_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_dbms_advi_mess_info`;
CREATE TABLE `sys_dbms_advi_mess_info` (
  `uuid` varchar(36) NOT NULL COMMENT '主键',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
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

-- ----------------------------
-- Records of sys_dbms_advi_mess_info
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dbms_chart_dimension
-- ----------------------------
DROP TABLE IF EXISTS `sys_dbms_chart_dimension`;
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
  `height` varchar(255) DEFAULT NULL,
  `heigth` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dbms_chart_dimension
-- ----------------------------
INSERT INTO `sys_dbms_chart_dimension` VALUES ('1066c3e7-4c85-4de1-927f-ce513e98cb70', null, null, '2019-07-16 01:17:14', null, null, null, null, null, '448dbe99-8e72-4f28-baec-dad0a94f8cda', null, null, null, null, null, null, null, '2019-07-16 01:17:14', null, null, null, null);
INSERT INTO `sys_dbms_chart_dimension` VALUES ('29ebc642-3ffc-4e4d-9436-354a6463617a', null, null, '2019-02-22 14:42:11', null, null, null, null, null, '19d2e1dd-a108-45ae-bb8e-1c737f738976', null, null, null, null, null, null, null, '2019-02-22 14:42:11', null, null, null, null);
INSERT INTO `sys_dbms_chart_dimension` VALUES ('4e859cf4-8719-4b4b-a637-14e3cee50288', 'map', null, '2019-06-14 02:09:21', null, '1', null, null, '10', 'ef6efe37-9359-49e3-aefe-10aab1beed44', null, null, null, null, '0', null, '1', '2019-06-14 02:09:49', 'test', '3', '2', null);
INSERT INTO `sys_dbms_chart_dimension` VALUES ('56de8aaf-171f-488d-b159-c3851a10a86d', null, null, '2019-03-03 11:09:08', null, null, null, null, null, 'ef6efe37-9359-49e3-aefe-10aab1beed44', null, null, null, null, null, null, null, '2019-03-03 11:09:08', null, null, null, null);
INSERT INTO `sys_dbms_chart_dimension` VALUES ('5aa21ff6-a71c-44aa-bd04-70a1f2739677', null, null, '2019-02-22 14:42:12', null, null, null, null, null, '19d2e1dd-a108-45ae-bb8e-1c737f738976', null, null, null, null, null, null, null, '2019-02-22 14:42:12', null, null, null, null);
INSERT INTO `sys_dbms_chart_dimension` VALUES ('74e0cb54-e5d9-4bdd-b8e3-8abc9f9c2303', null, null, '2019-03-06 10:29:45', null, null, null, null, null, 'ef6efe37-9359-49e3-aefe-10aab1beed44', null, null, null, null, null, null, null, '2019-03-06 10:29:45', null, null, null, null);
INSERT INTO `sys_dbms_chart_dimension` VALUES ('a6d1df91-9e93-4185-93e4-6b076f089932', null, null, '2019-07-11 08:42:48', null, null, null, null, null, 'ef6efe37-9359-49e3-aefe-10aab1beed44', null, null, null, null, null, null, null, '2019-07-11 08:42:48', null, null, null, null);
INSERT INTO `sys_dbms_chart_dimension` VALUES ('cec63185-09cb-4803-9456-6232bb2dfafb', null, null, '2019-06-27 08:30:32', null, null, null, null, null, 'ef6efe37-9359-49e3-aefe-10aab1beed44', null, null, null, null, null, null, null, '2019-06-27 08:30:32', null, null, null, null);
INSERT INTO `sys_dbms_chart_dimension` VALUES ('e1bb092a-bf79-4d18-befe-7f0fae1bfa1f', null, null, '2019-07-16 01:17:16', null, null, null, null, null, '448dbe99-8e72-4f28-baec-dad0a94f8cda', null, null, null, null, null, null, null, '2019-07-16 01:17:16', null, null, null, null);
INSERT INTO `sys_dbms_chart_dimension` VALUES ('e3bf1d18-59f8-4bc1-9d94-81cc04dd4e11', null, null, '2019-07-16 01:17:15', null, null, null, null, null, '448dbe99-8e72-4f28-baec-dad0a94f8cda', null, null, null, null, null, null, null, '2019-07-16 01:17:15', null, null, null, null);
INSERT INTO `sys_dbms_chart_dimension` VALUES ('ee585f4c-60fe-47e3-aca3-111776760a36', null, null, '2019-03-06 10:29:48', null, null, null, null, null, 'ef6efe37-9359-49e3-aefe-10aab1beed44', null, null, null, null, null, null, null, '2019-03-06 10:29:48', null, null, null, null);
INSERT INTO `sys_dbms_chart_dimension` VALUES ('f229bf97-c9c8-4ce1-9673-474501d2969b', null, null, '2019-02-22 14:42:24', null, null, null, null, null, 'ef6efe37-9359-49e3-aefe-10aab1beed44', null, null, null, null, null, null, null, '2019-02-22 14:42:24', null, null, null, null);

-- ----------------------------
-- Table structure for sys_dbms_chart_dimension_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dbms_chart_dimension_data`;
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

-- ----------------------------
-- Records of sys_dbms_chart_dimension_data
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dbms_chart_dimension_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_dbms_chart_dimension_group`;
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

-- ----------------------------
-- Records of sys_dbms_chart_dimension_group
-- ----------------------------
INSERT INTO `sys_dbms_chart_dimension_group` VALUES ('ef6efe37-9359-49e3-aefe-10aab1beed44', '2019-01-26 09:38:41', 'test', null, null, null, null, 'a', '2019-01-26 09:38:41', 'test');

-- ----------------------------
-- Table structure for sys_dbms_generate_code_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_dbms_generate_code_info`;
CREATE TABLE `sys_dbms_generate_code_info` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `jdbc_uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '表数据库id',
  `class_path` varchar(250) COLLATE utf8_unicode_ci NOT NULL COMMENT '生成类的包路径',
  `class_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL COMMENT '类名称',
  `generate_entity` tinyint(1) NOT NULL DEFAULT '1' COMMENT '生成实体类标识',
  `generate_dao` tinyint(1) NOT NULL DEFAULT '1' COMMENT '生成dao层标识',
  `generate_service` tinyint(1) NOT NULL DEFAULT '1' COMMENT '生成业务处理层标识',
  `generate_controller` tinyint(1) NOT NULL DEFAULT '1' COMMENT '生成控制层标识',
  `generate_html` tinyint(1) NOT NULL DEFAULT '1' COMMENT '生成html标识',
  `generate_js` tinyint(1) NOT NULL DEFAULT '1' COMMENT '生成js标识',
  `generate_sql` tinyint(1) NOT NULL DEFAULT '1' COMMENT '生成sql标识',
  `discription` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '资源功能描述',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) CHARACTER SET utf8 DEFAULT 'system' COMMENT '录入人员',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
  `update_user` varchar(50) CHARACTER SET utf8 DEFAULT 'system' COMMENT '更新时间',
  `delete_flag` int(11) NOT NULL DEFAULT '0' COMMENT '停用标记',
  `type_uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '数据种类id',
  `generate_detail` int(6) DEFAULT NULL COMMENT '生成js标识',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_dbms_generate_code_info
-- ----------------------------
INSERT INTO `sys_dbms_generate_code_info` VALUES ('45ba8581-3b3b-11e9-bc6a-00163e01564d', 'F1027C0339119FF6B60244754A30F8A3', 'org.danyuan.application.resume.modal', 'SysModalInfo', '1', '1', '1', '1', '1', '1', '1', null, '2019-02-28 17:41:03', 'test', '2019-07-05 12:10:16', 'test', '1', 'B2A35E6180E22CAC0BEC9BA4617335BA', '1');
INSERT INTO `sys_dbms_generate_code_info` VALUES ('45ba85b5-3b3b-11e9-bc6a-00163e01564d', 'F1027C0339119FF6B60244754A30F8A3', 'org.danyuan.application.resume.user', 'SysUserEducation', '1', '1', '1', '1', '1', '1', '1', null, '2019-02-28 17:41:36', 'test', '2019-07-05 12:10:20', 'test', '1', 'B2A35E6180E22CAC0BEC9BA4617335BA', '1');
INSERT INTO `sys_dbms_generate_code_info` VALUES ('45ba85c5-3b3b-11e9-bc6a-00163e01564d', 'F1027C0339119FF6B60244754A30F8A3', 'org.danyuan.application.resume.user', 'SysUserEvaluate', '1', '1', '1', '1', '1', '1', '1', null, '2019-02-28 17:41:43', 'test', '2019-07-05 12:10:23', 'test', '1', 'B2A35E6180E22CAC0BEC9BA4617335BA', '1');
INSERT INTO `sys_dbms_generate_code_info` VALUES ('45ba85d5-3b3b-11e9-bc6a-00163e01564d', 'F1027C0339119FF6B60244754A30F8A3', 'org.danyuan.application.resume.user', 'SysUserModal', '1', '1', '1', '1', '1', '1', '1', null, '2019-02-28 17:41:53', 'test', '2019-07-05 12:10:27', 'test', '1', 'B2A35E6180E22CAC0BEC9BA4617335BA', '1');
INSERT INTO `sys_dbms_generate_code_info` VALUES ('45ba85e6-3b3b-11e9-bc6a-00163e01564d', 'F1027C0339119FF6B60244754A30F8A3', 'org.danyuan.application.resume.user', 'SysUserSkill', '1', '1', '1', '1', '1', '1', '1', null, '2019-02-28 17:42:01', 'test', '2019-07-05 12:10:30', 'test', '1', 'B2A35E6180E22CAC0BEC9BA4617335BA', '1');
INSERT INTO `sys_dbms_generate_code_info` VALUES ('45ba85f5-3b3b-11e9-bc6a-00163e01564d', 'F1027C0339119FF6B60244754A30F8A3', 'org.danyuan.application.resume.user', 'SysUserWorkExpreience', '1', '1', '1', '1', '1', '1', '1', null, '2019-02-28 17:42:09', 'test', '2019-07-05 12:10:33', 'test', '1', 'B2A35E6180E22CAC0BEC9BA4617335BA', '1');
INSERT INTO `sys_dbms_generate_code_info` VALUES ('5bcdec44-3e4a-11e9-bc6a-00163e01564d', 'F1027C0339119FF6B60244754A30F8A3', 'org.danyuan.application.resume.user', 'SysUserBaseInfo', '1', '1', '1', '1', '1', '1', '1', null, '2019-03-04 14:55:32', 'test', '2019-07-05 12:10:36', 'test', '1', 'B2A35E6180E22CAC0BEC9BA4617335BA', '1');
INSERT INTO `sys_dbms_generate_code_info` VALUES ('cea40cf6-17a8-11e9-9800-1c1b0daaaad8', 'F1027C0339119FF6B60244754A30F8A3', 'org.danyuan.application.dic.addr', 'SysDicName', '1', '1', '1', '1', '1', '1', '1', null, '2019-03-04 10:05:56', 'test', '2019-07-05 23:35:04', 'test', '1', 'B2A35E6180E22CAC0BEC9BA4617335BA', '1');
INSERT INTO `sys_dbms_generate_code_info` VALUES ('cea40dc8-17a8-11e9-9800-1c1b0daaaad8', 'F1027C0339119FF6B60244754A30F8A3', 'org.danyuan.application.dic.addr', 'SysDicPorvinceCity', '1', '1', '1', '1', '1', '1', '1', null, '2019-01-18 16:37:34', 'test', '2019-07-05 12:10:47', 'test', '1', 'B2A35E6180E22CAC0BEC9BA4617335BA', '1');
INSERT INTO `sys_dbms_generate_code_info` VALUES ('d02fe98e-3e2a-11e9-bc6a-00163e01564d', 'F1027C0339119FF6B60244754A30F8A3', 'org.danyuan.application.resume.user', 'SysUserProject', '1', '1', '1', '1', '1', '1', '1', null, '2019-03-04 11:09:31', 'test', '2019-07-05 12:10:51', 'test', '1', 'B2A35E6180E22CAC0BEC9BA4617335BA', '1');
INSERT INTO `sys_dbms_generate_code_info` VALUES ('e418410f-17b0-11e9-9800-1c1b0daaaad8', 'F1027C0339119FF6B60244754A30F8A3', 'org.danyuan.application.xiaoshuo.book', 'BookList', '1', '1', '1', '1', '1', '1', '1', null, '2019-01-18 09:49:43', 'test', '2019-07-05 12:10:58', 'test', '1', '0BD6B707F440EB854D85253D2ED1EB9E', '1');

-- ----------------------------
-- Table structure for sys_dbms_tabs_cols_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_dbms_tabs_cols_info`;
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
  `cols_sort` varchar(4) DEFAULT NULL COMMENT '数据排序 ',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dbms_tabs_cols_info
-- ----------------------------
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('00e305f6-adfa-4a9e-a770-aeb90cc876d1', 'left', '停用标记', null, 'delete_flag', '13', '1', 'int(11)', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40f28-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('01ff0d5b-7994-4f5f-b894-9d7eae59c09a', 'left', '规则字段名', null, 'ruler_colum_name', '8', '1', 'varchar(30)', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3ff8f-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:08:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('02c52bba-7020-43bc-a785-b275fd22af2a', 'left', '资源功能描述', null, 'discription', '2', '1', 'varchar(200)', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fed5-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:08:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('02d68f06-2306-4910-b57a-3a41aebc05a1', 'left', '任务id', null, 'task_uuid', '8', '1', 'varchar(36)', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea4030b-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('02dfb370-782e-4684-a648-930b844431cc', 'left', '录入人员', null, 'create_user', '5', '1', 'varchar(50)', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('02e46bf1-dd38-4a9b-8831-9419bf2c19a3', 'left', '是通用平台采集，还是执行上传的自定义采集程序,自定义采集程序将不会进入统计信息，需自己添加统计的内容', null, 'task_flag', '7', '1', 'int(11)', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('02ff0443-e44d-4bae-8231-741791e8fa7b', 'left', '停用标记', null, 'delete_flag', '12', '1', 'int', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('031511B2464627C357D36192BA688F42', null, '项目', '255', '项目', '4', null, 'varchar', null, null, null, '2018-12-05 18:08:51', null, null, null, null, null, '2018-12-05 18:08:51', null, null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('0330ac27-5be4-4c83-ac0e-a448c365ff45', 'left', '', null, 'parent_dic_params', '20', '1', 'varchar(255)', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea400f7-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:08:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('03515c90-ce8c-4c98-ac69-de9d217827d3', 'left', '', null, 'authorized_grant_types', '5', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fb76-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('05b4f19a-54ee-407f-826f-fff597ea051b', 'left', '', null, 'chart_type', '2', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('06275642-636a-4b8c-85cc-3140337b9dfc', 'center', '数据库表空间大小', null, 'db_type', '15', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:29', 'test', '0', null, null, 'ba382713-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:29', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('0631aa82-52ec-411e-a335-647f3b50777f', 'left', '资源功能描述', null, 'discription', '7', '1', 'varchar(200)', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea400f7-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:08:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('06d984b1-767a-404c-b635-6456b0a449f7', 'left', '录入时间', null, 'create_time', '3', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea4030b-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('06e357c0-0f0a-46da-8b65-64da95adb92d', 'left', '', null, 'scope', '4', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fb76-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('08568da2-b2c7-4c6c-b75b-c9690fd737b7', 'center', '用户查询显示图标', null, 'user_icon', '20', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:15', 'test', '0', null, null, 'ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:15', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('085ae2a1-7d93-4e16-8e7c-f5a257f64f3d', 'center', '数据库名称', null, 'database_name', '2', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:37', 'test', '0', null, null, 'ba382719-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:37', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('08ab2c46-fec3-40b8-8cdb-025d49833d5e', 'center', '类型排序', null, 'type_order', '8', '1', 'int', 'middle', '1', '150', '2018-06-08 11:48:08', 'test', '0', null, null, 'ba382722-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:48:08', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('08e50bf2-4d26-494b-b716-b3f3bc29c0a1', 'left', '', null, 'end_num', '9', '1', 'int', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('093c67ef-e7e1-4346-a7b0-84704fb13364', 'center', '资源功能描述', null, 'discription', '7', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:43:17', 'test', '0', null, null, 'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:43:17', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('09604e2f-f04e-4857-8d34-2eef8ccc2f1d', 'left', '更新时间', null, 'update_time', '11', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea404ad-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('0ace48c0-d493-459e-8311-e3589773d66e', 'left', '请求时间', null, 'request_data', '18', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('0c0791e5-bc14-4e4e-8064-a4b5dfcd7fab', 'center', '表id', null, 'tabs_uuid', '17', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:15', 'test', '0', null, null, 'ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:15', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('0c3e1d71-8322-4d36-a06c-4558720bd800', 'left', '录入时间', null, 'create_time', '5', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40b2d-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('0d8359cc-fd05-410f-a60c-187715935161', 'center', '类名', null, 'class_name', '4', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:43:17', 'test', '0', null, null, 'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:47:12', 'test', '', 'RYMX', null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('0db7f543-5ca4-4659-be58-e016c3958846', 'center', '录入人员', null, 'create_user', '6', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:43:17', 'test', '0', null, null, 'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:43:17', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('0ef219dc-c837-459c-9e47-620f1344080f', 'center', '数据库表空间大小', null, 'tabs_space', '11', '1', 'int', 'middle', '1', '150', '2018-06-08 11:45:29', 'test', '0', null, null, 'ba382713-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:29', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('0f46d606-ad42-465d-b0b2-dc7ee8318cf3', 'left', '', null, 'heigth', '11', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('0f7a1c30-af2b-41e0-8523-047c40dbee4b', 'left', '', null, 'cols_uuid', '3', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea404ad-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('10dcf305-a00b-46a0-af7a-f77bd050f7c6', 'left', '资源功能描述', null, 'discription', '8', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40b2d-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('14e426ee-c82e-46ce-9e26-f7421bd53da8', 'left', '资源功能描述', null, 'discription', '7', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3ff8f-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('16487d74-4ad6-41ea-88c4-42a652528dd0', 'left', '主键', null, 'uuid', '1', '1', 'varchar(36)', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea40043-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:08:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('169c40e1-d673-440b-a052-e58d6d202667', 'left', '停用标记', null, 'delete_flag', '7', '1', 'int(11)', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea401a9-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:08:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('1771d84f-a0ab-4bce-984c-37220ee6dc50', 'left', '更新时间', null, 'update_user', '6', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea401a9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('17d4991e-f0dd-4240-bc0d-e51ef2f4229c', 'left', '资源功能描述', null, 'discription', '2', '1', 'varchar(200)', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea4030b-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('183a352d-ea46-4e37-b52c-30def5f78acf', 'left', '录入人员', null, 'create_user', '11', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40f28-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('188b08b9-ee24-4902-8613-0ea84302a57b', 'left', '1客户手动添加字段没有字段名称，0系统默认字段不允许修该字段名称', null, 'statue', '15', '1', 'int(11)', 'middle', null, null, '2019-01-14 11:03:07', 'user', '0', null, '1', 'cea41081-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('1890d32e-69c2-4222-9e38-a9a29fa65cf3', 'left', '停用标记', null, 'delete_flag', '4', '1', 'int(11)', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea406e2-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('18a48178-a129-4872-ab66-6ade3f212f63', 'left', '更新时间', null, 'update_user', '13', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3ff8f-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('191b8578-61fe-4858-a198-2968730dc17d', 'left', '更新人员', null, 'update_time', '13', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea400f7-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('191e2330-2a8d-436e-adb4-03f6d60a8847', 'left', '更新时间', null, 'update_user', '8', '1', 'varchar(50)', 'middle', null, null, '2019-01-14 11:03:09', 'user', '0', null, '1', 'cea41551-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('1aba528e-4d28-4856-90b1-db39af24c2a3', 'center', '默认为true显示该列，设为false则禁用列项目的选项卡。', null, 'cols_switchable', '7', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:20', 'test', '0', null, null, 'ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:20', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('1c2b54d0-eee1-4a3f-a1cc-b71db5815410', 'left', '规则', null, 'ruler', '17', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea400f7-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('1c932662-5dfe-4213-a578-87a280468c4f', 'left', '', null, 'organization_code', '2', '1', 'varchar(50)', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40fd3-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('1fd2fd03-fe51-4b23-bd55-9d9c85f40c52', 'left', '', null, 'system_name', '3', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:08', 'user', '0', null, '1', 'cea41551-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:08', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('2020123c-2ed9-449d-8ef7-3bb38d797fe4', 'center', '表的含义', null, 'tabs_desc', '7', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:42', 'test', '0', null, null, 'ba382713-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:42', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('2065149822307CE7FD4D388E026B1E1D', null, '项目', '255', '项目', '4', null, 'varchar', null, null, null, '2018-12-05 18:09:48', null, null, null, null, null, '2018-12-05 18:09:48', null, null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('20a75128-4c1a-4425-9eb9-cb063d290e09', 'left', '宽度设置', null, 'width', '18', '1', 'int', 'middle', null, null, '2019-01-14 11:03:07', 'user', '0', null, '1', 'cea41081-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:07', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('2190c057-3d23-41c5-950c-6d1b5a455874', 'left', '取内容规则', null, 'ruler', '7', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea40043-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('22956D5015885DE6230BC9598DA66CCE', null, '作者首页', '255', '作者首页', '7', null, 'varchar', null, null, null, '2019-01-25 16:29:44', null, null, null, null, 'ba382707-6acd-11e8-8728-1c1b0daaaad8', '2019-01-25 16:29:44', null, null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('22eb6242-ec82-4c0c-9549-ca08fb7f0ab2', 'left', '录入时间', null, 'create_time', '2', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea406e2-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('242aab20-d191-429e-9a77-65703b6fa842', 'center', '', null, 'user_placeholder', '4', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:49', 'test', '0', null, null, 'ba382725-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:48:29', 'test', '', 'RYMX', null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('252dfede-096b-41f7-992f-79a9f2fe186a', 'left', '请求方式', null, 'request_type', '19', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('2627001f-b03a-4b9c-b15e-bb946c6e7e90', 'left', '资源功能描述', null, 'chaxun', '3', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea41081-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('279f5813-5829-4c73-b74a-46b3f47c2c8a', 'left', '最近一次执行时间', null, 'last_excute_time', '4', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('289c95cb-a951-4c2f-ba0b-696608ce0626', 'left', '录入时间', null, 'create_time', '4', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea400f7-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('29ab8070-8bbc-462f-8631-590bd5b5c360', 'center', '', null, 'user_desc', '3', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:49', 'test', '0', null, null, 'ba382725-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:49', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('2a25c8a0-eefd-4227-8c16-6f3443c63dde', 'left', '', null, 'type', '9', '1', 'varchar(255)', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40e7a-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('2a97a5fa-becd-408a-904b-d2db28214a69', 'center', '类型', null, 'type_class', '11', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:48:11', 'test', '0', null, null, 'ba382722-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:48:11', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('2be5100b-9e42-4d41-a93b-a9169fe7884c', 'left', '外键', null, 'name_uuid', '2', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40b2d-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('2eb8bb21-451a-449c-ae3b-578028cda7db', 'left', '', null, 'token', '3', '1', 'blob', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fdab-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('2f011a7f-f4d0-4591-abdc-4e59e9a550ab', 'left', '录入时间', null, 'create_time', '3', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea401a9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('306c5e64-f371-40d8-9662-709d56279eed', 'left', '更新人员', null, 'update_time', '5', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fed5-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('309eae85-0a76-480a-b4c4-004b6558c474', 'left', '', null, 'uuid', '1', '1', 'varchar(32)', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea409fe-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('30f04e54-7695-45d4-a4ab-f11ac5b4d33b', 'left', '资源功能描述', null, 'discription', '8', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40f28-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('31664bed-aec4-489e-ad4d-12dd91451b4b', 'left', '按钮类型', null, 'button_type', '10', '1', 'varchar(20)', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40cf6-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('323f9d84-80c7-41cc-b08f-a80c0230ed83', 'center', '', null, 'type', '11', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:09', 'test', '0', null, null, 'ba382707-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:47:20', 'test', '', 'RYMX', null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('326892df-3ece-4468-8731-30ce28adc650', 'left', '', null, 'authentication', '4', '1', 'blob', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fdab-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('326a6da9-f513-4f47-b983-29bed82f28c9', 'left', '列名称', null, 'colum_name', '2', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea40043-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('32a12fc5-35dc-49b6-af9f-a1ee7a4900c8', 'left', '', null, 'md5flag', '16', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea40043-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('335a1f76-5d00-4b74-8d71-5f724d8bdd16', 'left', '更新时间', null, 'update_user', '6', '1', 'varchar(50)', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea4030b-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('337714f5-7eb5-4d85-b018-447f8c594476', 'left', '停用标记', null, 'delete_flag', '6', '1', 'int', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea400f7-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('355cc118-094e-4fda-bf02-b1ade30e12e2', 'left', '显示图标样式', null, 'checked', '16', '1', 'tinyint', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40f28-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('357f18c0-c123-4df3-903e-76f447715606', 'left', '更新人员', null, 'update_user', '20', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('35feb50f-8338-4ad6-a845-dea946951cb8', 'center', '录入人员', null, 'create_user', '10', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:37', 'test', '0', null, null, 'ba382719-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:37', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('37d4cff9-94fb-4d2e-966a-361bfdf2480e', 'center', '字段长度', null, 'cols_length', '4', '1', 'int', 'middle', '1', '150', '2018-06-08 11:45:20', 'test', '0', null, null, 'ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:20', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('37d79f83-fde5-471e-8a71-8a7ec6b9182b', 'center', '', null, 'delete_flag', '10', '1', 'tinyint', 'middle', '1', '150', '2018-06-08 11:45:49', 'test', '0', null, null, 'ba382725-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:49', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('382c969d-890c-45dd-826f-6bc17b70e050', 'left', ' 规则类别', null, 'type', '12', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea400f7-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('385335c0-5318-4e41-98f8-d67c0b84afd2', 'left', '', null, 'refresh_token_validity', '9', '1', 'int', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fb76-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('3882be6b-ad5b-4d4a-a6fa-693dd6bf9792', 'left', '预计剩余采集数量', null, 'surplus_num', '5', '1', 'int', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('38afa8a7-62ea-4c4d-8d06-918a5b494f6e', 'left', '资源功能描述', null, 'discription', '7', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40cf6-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('396848ee-ebb3-4b75-899f-40a7dbefe06c', 'center', '停用标记', null, 'delete_flag', '4', '1', 'int', 'middle', '1', '150', '2018-06-08 11:45:42', 'test', '0', null, null, 'ba382713-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:42', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('399e87de-eeda-4ad4-83e2-5482e7298f9e', 'left', '录入人员', null, 'create_user', '6', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea404ad-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('3a16aaa2-6e78-4e60-91dc-a8e3c7de2b01', 'center', '录入人员', null, 'create_user', '3', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:48:08', 'test', '0', null, null, 'ba382722-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:48:08', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('3af6e915-39a9-4906-9ebf-b854c4068594', 'left', '地址资源', null, 'uri', '7', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40f28-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('3b488ca1-0c96-4023-9a35-18785d5c888d', 'center', '更新人员', null, 'update_user', '19', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:15', 'test', '0', null, null, 'ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:15', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('3be94509-6b6d-40e6-98fe-795d2e414467', 'left', '更新人员', null, 'update_time', '8', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea409fe-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('3d8ee955-8a92-4d16-9566-9021970c452c', 'left', '停用标记', null, 'delete_flag', '7', '1', 'int', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fed5-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('40ea8671-8d03-4776-882c-e9e7782e88b0', 'left', '录入时间', null, 'create_time', '4', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea409fe-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('41262671-3575-4a02-b665-4bc6e4a3dce9', 'left', '', null, 'size', '8', '1', 'int(11)', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40e7a-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('41f7b056-f118-4bea-802e-37a365726915', 'left', '停用标记', null, 'delete_flag', '6', '1', 'int', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3ff8f-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('4214a4e5-473b-4706-b086-573dc6ec4445', 'left', '', null, 'title', '8', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea406e2-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('4287f955-f8a7-4c19-9934-48c09ba1fd1f', 'left', '资源功能描述', null, 'discription', '6', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea40043-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('42dab36b-30b4-447f-9d42-b4dfd4b02835', 'left', '', null, 'home_statue', '24', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('442f2dd4-d16c-4522-9265-0942a890170e', 'left', '规则信息', null, 'content_info', '3', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea400f7-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('44eff2c9-e0fb-4c8d-9bd7-ae09573fe77d', 'left', '', null, 'theme', '17', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('451064d2-3702-4c96-9c6f-6f33ab483f0b', 'center', '请求响应时间', null, 'request_long', '10', '1', 'int', 'middle', '1', '150', '2018-06-08 11:43:17', 'test', '0', null, null, 'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:43:17', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('460f35ed-cba4-4f44-b50f-ab5d7f81c799', 'left', '系统id', null, 'system_id', '2', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40f28-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('46614581-c041-455f-b6c6-efb02108fe1c', 'left', '', null, 'authorities', '7', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fb76-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('47343a43-6e52-4e66-838f-b73cba96ca61', 'left', '', null, 'cols_desc', '2', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea404ad-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('47e68ed0-f7aa-46b0-af3f-84b115f32249', 'center', '更新时间', null, 'update_time', '12', '1', 'timestamp', 'middle', '1', '150', '2018-06-08 11:45:53', 'test', '0', null, null, 'ba382725-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:53', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('48a80780-7784-4ed1-9e59-8c13d5196403', 'left', '录入人员', null, 'create_user', '5', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40cf6-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('4b99b505-f41f-47e8-bcb5-41f58ff03f53', 'left', '', null, 'token_id', '2', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fdab-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('4c3ba747-2130-4ff9-ab15-553b7b8182a7', 'left', '', null, 'CITY', '2', '1', 'varchar(255)', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40dc8-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('4cac844a-c879-4533-addf-afd4c23a71b5', 'left', '录入时间', null, 'create_time', '2', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40e7a-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('4d43ddb1-a053-44af-9177-311bc500721a', 'center', '更新时间', null, 'update_user', '12', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:33', 'test', '0', null, null, 'ba382719-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:33', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('4d6f4276-6ef8-4c95-8558-21325224857b', 'left', '', null, 'create_time', '1', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fdab-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('4de99551-0334-4bb9-a2f9-002735bce7e6', 'left', '录入时间', null, 'create_time', '7', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea41081-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('4e5bd35c-0f08-4806-808b-d60c96174ea9', 'left', '录入时间', null, 'create_time', '4', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3ff8f-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('4FC0F36D29154E4A487D5B7B19A6C946', null, '小说简介', '255', '小说简介', '11', null, 'varchar', null, null, null, '2019-01-25 16:29:44', null, null, null, null, 'ba382707-6acd-11e8-8728-1c1b0daaaad8', '2019-01-25 16:29:44', null, null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('5295038b-b92c-4b31-b4ee-412ba5721249', 'left', '停用标记', null, 'delete_flag', '6', '1', 'int', 'middle', null, null, '2019-01-14 11:03:08', 'user', '0', null, '1', 'cea41551-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:08', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('52d25405-f50f-432e-836b-0e345fbbeac3', 'left', '主键', null, 'uuid', '1', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea406e2-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('53733723-c499-4a21-bd9b-a91ba6b65077', 'left', '', null, 'parent_dic_uuid', '21', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea400f7-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('53dd0eb2-a853-4263-be81-0b09e9b7e6a5', 'left', '', null, 'create_time', '1', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fceb-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('540f3ac8-0c69-4be0-a3e0-0457c5bdfad1', 'left', '', null, 'user_name', '5', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3f61c-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('5444c9a7-0eb5-49c8-8369-14fc481466ac', 'left', '', null, 'uuid', '1', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:08', 'user', '0', null, '1', 'cea41551-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:08', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('547d43a4-6581-48ac-a4c0-819e4149e021', 'left', '', null, 'access_token_validity', '8', '1', 'int', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fb76-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('54e9a90b-c381-4acf-9f74-d6b2a9384e89', 'left', '更新时间', null, 'update_time', '16', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:07', 'user', '0', null, '1', 'cea41081-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:07', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('55a504c8-c555-423c-aebb-d6cf5845046b', 'left', '错误网址', null, 'url', '9', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea401a9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('5608052f-8f56-4156-96fe-322a02602e59', 'left', '更新时间', null, 'update_user', '6', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fed5-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('561747d5-5526-46d6-b8c4-a19e561818e7', 'left', '录入人员', null, 'create_user', '14', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('56e340fe-3adb-4f8f-b69b-6944d5f48738', 'left', '录入人员', null, 'create_user', '3', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea406e2-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('5799B335A19B5BE6512BE95398A0DD68', null, '发布状态', '255', '发布状态', '9', null, 'varchar', null, null, null, '2019-01-25 16:29:44', null, null, null, null, 'ba382707-6acd-11e8-8728-1c1b0daaaad8', '2019-01-25 16:29:44', null, null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('58d9b4b4-ab46-457c-8252-04bd001199a3', 'left', '主键', null, 'uuid', '1', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3ff8f-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('5aa9f967-a7f1-40a2-adaf-cd84d53108f8', 'center', '数据库类型', null, 'type', '5', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:37', 'test', '0', null, null, 'ba382719-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:37', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('5ac8a4ed-1f6b-4f55-8014-72ec01bf4ccf', 'left', '', null, 'dime_uuid', '8', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea404ad-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('5bac1427-6f02-4c9e-a070-4063199ad687', 'left', '1允许用户统计分析的字段，0不允许的字段', null, 'dime_flag', '10', '1', 'int', 'middle', null, null, '2019-01-14 11:03:07', 'user', '0', null, '1', 'cea41081-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:07', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('5bf60eac-d38c-4940-9193-6ef54c3df57d', 'left', '', null, 'end', '12', '1', 'int', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea40043-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('5d02988d-1f49-40f4-9e2b-8b6cf9ac8275', 'left', '停用标记', null, 'delete_flag', '5', '1', 'int', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea40043-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('5d11e565-eb3a-4293-bf4f-b3675253f103', 'left', '更新时间', null, 'update_time', '10', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40f28-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('5d142e1a-1913-4827-bb73-213c5720c549', 'left', '', null, 'start_num', '16', '1', 'int', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('5dfc5f3a-d158-41ec-b54a-d988ce674af6', 'left', '', null, 'uuid', '1', '1', 'varchar(32)', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40fd3-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('5f7377cb-1069-4683-a0f9-718867663142', 'left', '录入人员', null, 'create_user', '8', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea41081-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('5f8d0ced-ebf7-4e69-a2b8-b8b721f7e97c', 'left', '任务执行开始时间', null, 'start_time', '3', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('5fd83cb4-bde9-4bb7-96e8-446559f3a9ae', 'left', '更新时间', null, 'update_user', '9', '1', 'varchar(50)', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40fd3-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('60666603-a29b-4a73-8c12-82811876bbae', 'center', '端口号', null, 'db_type', '15', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:33', 'test', '0', null, null, 'ba382719-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:33', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('612e5626-dedc-4c86-a108-59153b7888a7', 'left', '', null, 'dime_order', '7', '1', 'int', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('6310ae33-afb3-4485-909c-28b8477deae1', 'left', '规则id', null, 'ruler_uuid', '8', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea40043-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('634c79e0-f502-495f-9de0-de1dcc0bae70', 'center', '数据库表类型id', null, 'type_uuid', '12', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:29', 'test', '0', null, null, 'ba382713-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:29', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('6583fa65-4440-49d1-ab63-d31df08d927c', 'left', '更新时间', null, 'update_time', '9', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40b2d-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('671f9c61-3817-46f3-b716-fc0c02f5519e', 'left', '', null, 'items_ruler', '18', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea400f7-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('675bc02d-2bf2-4df8-b576-7ebdcb5bb014', 'left', '', null, 'code', '2', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fceb-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('69006647-cf73-45e9-bf32-daf023d9e954', 'center', '默认为true显示该列，设为false则隐藏该列', null, 'cols_visible', '10', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:20', 'test', '0', null, null, 'ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:20', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('69A28189A077FF83B373BFA0EFAAD397', null, '项目', '255', '项目', '4', null, 'varchar', null, null, null, '2018-12-05 18:09:03', null, null, null, null, null, '2018-12-05 18:09:03', null, null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('6a07645c-66d8-4a6d-8a55-6a6d5e4e8a10', 'left', '', null, 'authentication_id', '4', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3f61c-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('6c05258a-6389-41bd-8975-0b043e56c0d9', 'left', '更新人员', null, 'update_time', '12', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3ff8f-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('6c18af6b-2882-4653-89b1-9e57c6d0db86', 'left', '任务名称', null, 'task_name', '2', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('6c3c8acd-5904-477b-9cbc-df84f70f9c34', 'left', '网站名称', null, 'url_name', '21', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('6ca4c951-5acf-408d-9218-13917f9d6353', 'left', '资源功能描述', null, 'discription', '11', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:07', 'user', '0', null, '1', 'cea41081-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:07', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('6f4c583a-4364-4cee-8e6e-d19181ea6117', 'center', '录入人员', null, 'create_user', '13', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:15', 'test', '0', null, null, 'ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:15', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('6f72e3ca-b731-4ecd-9a2d-f2481e855f08', 'left', '', null, 'client_secret', '3', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fb76-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('6fab1689-22ec-43cf-a151-842404aaf4fe', 'left', '更新人员', null, 'update_time', '7', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:08', 'user', '0', null, '1', 'cea41551-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:08', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('6faf1e23-8f80-4f41-a27b-cd9f75aca074', 'center', '主键', null, 'uuid', '1', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:49', 'test', '0', null, null, 'ba382725-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:49', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('7227467e-156c-4b9b-8cd3-7f6b44ba5469', 'center', '录入时间', null, 'create_time', '2', '1', 'timestamp', 'middle', '1', '150', '2018-06-08 11:45:42', 'test', '0', null, null, 'ba382713-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:42', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('7289e461-21a0-441d-b4b4-49d18c605679', 'center', '端口号', null, 'port', '4', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:37', 'test', '0', null, null, 'ba382719-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:37', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('72e5a6ce-a35a-45b2-b519-0b620e94c0a4', 'center', 'ip', null, 'ip', '8', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:43:17', 'test', '0', null, null, 'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:43:17', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('72fc37f6-63c7-4fd7-b2de-72f974edae3f', 'left', '资源功能描述', null, 'discription', '5', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea406e2-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('73ca09a5-2f87-4982-a0ae-f35c2d69148f', 'center', '对齐方式', null, 'cols_align', '2', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:20', 'test', '0', null, null, 'ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:20', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('749d19c4-7cd6-4b72-9712-8b6fee90dbd0', 'center', '停用标记', null, 'delete_flag', '14', '1', 'int', 'middle', '1', '150', '2018-06-08 11:45:15', 'test', '0', null, null, 'ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:15', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('74dcd20d-e6d5-42a3-b5ae-5a29c532b2fa', 'left', '列表value', null, 'key_value', '3', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40b2d-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('75005b93-5cd4-4e42-bbf6-b06d0bb195a6', 'center', '图标', null, 'type_icon', '6', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:48:08', 'test', '0', null, null, 'ba382722-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:48:08', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('75a8bd7b-0e2b-44fd-8bdb-711b87eaff67', 'left', '主键', null, 'uuid', '1', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea400f7-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('75f65522-1240-4745-9d64-7c5cacdf0b50', 'left', '录入时间', null, 'create_time', '4', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:08', 'user', '0', null, '1', 'cea41551-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:08', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('7749a70b-9f78-44d4-b01a-b661bd61662d', 'center', '资源功能描述', null, 'discription', '13', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:53', 'test', '0', null, null, 'ba382725-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:53', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('77f5e36f-cafd-425f-a7fb-2d7c3b6238be', 'left', '主键', null, 'uuid', '1', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('78020fbb-f887-4b05-bd5d-871ae3955361', 'left', '录入时间', null, 'create_time', '4', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40fd3-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('788ba415-8bb4-4101-a79e-36e2490b177a', 'left', '停用标记', null, 'delete_flag', '7', '1', 'int', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea404ad-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('791d44bb-0a1c-454e-ae18-f283d1f57881', 'center', '', null, 'user_index', '2', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:49', 'test', '0', null, null, 'ba382725-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:49', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('7921860d-6602-4909-9ded-337bb78a299f', 'left', '字符集', null, 'charset', '17', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('79c6aa46-f051-4005-be0c-0c4c68f041c9', 'left', '主键', null, 'uuid', '1', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40cf6-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('7a1ce5ce-5414-4f1f-a7cf-05d19344f8b1', 'left', '文件地址', null, 'file_path', '10', '1', 'varchar(200)', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea4030b-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('7b31b204-0c3c-4ac6-902e-92fd0f962f49', 'left', '更新人员', null, 'update_user', '11', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40e7a-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('7b92e4ef-0f60-4cef-a898-f312e0c248e0', 'center', '主键', null, 'uuid', '1', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:37', 'test', '0', null, null, 'ba382719-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:37', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('7D3E93B630D92BB72E3FD3F1BBCF506D', null, '书名', '255', '书名', '12', null, 'varchar', null, null, null, '2019-01-25 16:29:44', null, null, null, null, 'ba382707-6acd-11e8-8728-1c1b0daaaad8', '2019-01-25 16:29:44', null, null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('7d60ec5d-563a-408c-95b6-44a73abd0982', 'left', '表字段名', null, 'cols_name', '2', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3ff8f-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('802a545d-1d3d-47a8-ac9f-5a4cd746c7e6', 'center', '主键', null, 'uuid', '1', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:48:08', 'test', '0', null, null, 'ba382722-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:48:20', 'test', '', 'RYMX', null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('80702df9-255c-4e97-81ca-af79c93e069e', 'left', '', null, 'autoapprove', '11', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fb76-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('82553986-e58b-4d14-87a0-5e0f802d488a', 'left', '', null, 'statue', '22', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea400f7-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('82da2a7c-22e4-4224-981b-9afafb906193', 'left', '录入时间', null, 'create_time', '3', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fed5-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('832c0aa2-b7a1-499c-ba18-5971823a0800', 'center', '资源功能描述', null, 'discription', '9', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:37', 'test', '0', null, null, 'ba382719-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:37', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('8363de65-9d48-4d5e-b53c-27430b8bcb80', 'left', '', null, 'authentication', '3', '1', 'blob', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fceb-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('8521ed8a-5472-460f-929f-1c50eafeb6d1', 'center', '主键', null, 'uuid', '1', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:42', 'test', '0', null, null, 'ba382713-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:42', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('85dd546c-22bd-414c-a193-bfd7228d3a6d', 'left', '完成数量', null, 'success_num', '6', '1', 'int', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('875b8f4f-2313-40bc-8bca-d8287db4fc46', 'left', '', null, 'cols_order', '6', '1', 'int', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea41081-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('876fd953-fd58-4946-89a9-90a81387651d', 'left', '', null, 'symbol', '10', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea404ad-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('87ab4427-7bf3-4b78-832e-a77b9ca79033', 'left', '停用标记', null, 'delete_flag', '7', '1', 'int', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40b2d-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('87d784e3-7675-4a17-9289-8915a870a9ed', 'center', '', null, 'user_order', '7', '1', 'int', 'middle', '1', '150', '2018-06-08 11:45:49', 'test', '0', null, null, 'ba382725-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:49', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('8934ABAE4913275C9CEBF082EE1E3CAE', null, '作者', '255', '作者', '8', null, 'varchar', null, null, null, '2019-01-25 16:29:44', null, null, null, null, 'ba382707-6acd-11e8-8728-1c1b0daaaad8', '2019-01-25 16:29:44', null, null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('8ae26644-e498-43a7-a20f-a09b32aa8365', 'left', '录入人员', null, 'create_user', '5', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40fd3-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('8b0884c0-a0e4-46c5-80dc-4863a7a09f28', 'left', '', null, 'web_server_redirect_uri', '6', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fb76-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('8b32f6fd-a68e-4194-b431-5ee3d3bc5156', 'left', '规则字段id', null, 'ruler_colum_uuid', '9', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3ff8f-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('8b9a7a79-def3-48ff-acaa-1684adb61894', 'left', '采集出错数量', null, 'error_num', '8', '1', 'int', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('8bde6c33-a521-460b-81cf-49155d50d70f', 'left', '', null, 'cols_desc', '4', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea41081-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('8c3dd98f-2f46-46dd-b756-1337220508dd', 'center', '每列的宽度', null, 'cols_width', '11', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:15', 'test', '0', null, null, 'ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:15', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('8c838bed-354c-4ad3-ace2-07a81b1d2f37', 'center', '主键', null, 'uuid', '1', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:20', 'test', '0', null, null, 'ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:20', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('8ca5d158-9afe-4c42-b95f-b04798914cca', 'left', '任务id', null, 'task_uuid', '16', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea400f7-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('8d492ccb-65b0-40c8-83da-cad90690f3bf', 'left', '是否显示', null, 'according', '2', '1', 'int', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea41081-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('8e339536-37a6-4541-b00f-7d03f9d1ea43', 'left', '处理方式', null, 'type', '9', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea40043-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('8e9a9a65-830d-412d-9e57-7c3bc6928425', 'center', '用户密码', null, 'password', '7', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:37', 'test', '0', null, null, 'ba382719-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:37', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('8f0b219a-f3d1-45a5-962f-6a386e3c7763', 'left', '', null, 'PROVINCE', '1', '1', 'varchar(255)', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40dc8-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('8f25db49-858e-43cf-844c-be30f5e3b7cb', 'left', '主键', null, 'uuid', '1', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea41081-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('90f27989-1837-488f-ae00-232cf2177315', 'left', '录入人员', null, 'create_user', '5', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea409fe-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('93390e46-ac71-4c55-b7a5-081d20dc1d24', 'left', '', null, 'organization_name', '3', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40fd3-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('936bc542-dcac-4fa1-930a-b5a10ce98018', 'left', '资源功能描述', null, 'discription', '2', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea401a9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('93d42697-caf9-4dea-8352-cb085b837568', 'left', '', null, 'theme', '7', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea406e2-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('9429a2a4-fefc-450f-9757-936ee3d6f415', 'center', '对齐方式', null, 'cols_valign', '9', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:20', 'test', '0', null, null, 'ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:20', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('947e4abe-d8ba-44ba-a4df-71ac94324138', 'left', '', null, 'resource_ids', '2', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fb76-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('9753f6dd-fa9f-4c10-80a9-9680f4c36106', 'left', '', null, 'group_uuid', '10', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('975f021b-8e6b-49bc-bc20-5259bc745977', 'left', '资源功能描述', null, 'discription', '7', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40fd3-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('979b5be8-c66b-4fc1-a11b-9a48a83e44db', 'left', '主键', null, 'uuid', '1', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea401a9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('9802831e-7940-4a9b-9756-c4770f0e7b28', 'left', '菜单还是方法', null, 'type', '14', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40f28-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('98393f85-0ef4-4eea-99fe-1c3186fc9cdd', 'left', '录入时间', null, 'create_time', '4', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40cf6-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('98aceb49-88f9-45cb-a224-019a4ef38d92', 'center', '主键', null, 'uuid', '1', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:43:17', 'test', '0', null, null, 'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:43:17', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('9901b9cd-8e55-4633-ba67-3a0fd64803e8', 'center', '资源功能描述', null, 'discription', '15', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:15', 'test', '0', null, null, 'ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:15', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('997ab33b-2ba6-4ffe-9bca-2b9116b60754', 'left', '表id', null, 'table_uuid', '11', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3ff8f-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('99850c1e-5bdf-4d35-8b9a-d82df7d1549e', 'left', '', null, 'create_time', '1', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:01', 'user', '0', null, '1', 'cea3f61c-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:01', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('99a76500-e687-4bf5-8118-db5e119e35cb', 'left', '', null, 'department_name', '2', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea409fe-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('99b90ebd-c6fb-4c42-90c4-536e82dc25e0', 'center', '录入时间', null, 'create_time', '12', '1', 'timestamp', 'middle', '1', '150', '2018-06-08 11:45:15', 'test', '0', null, null, 'ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:15', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('9a6dd4b5-909a-4e54-a8c2-f3a5c9bc2213', 'left', '支持排序', null, 'sortable', '14', '1', 'int', 'middle', null, null, '2019-01-14 11:03:07', 'user', '0', null, '1', 'cea41081-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:07', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('9a9bed49-38d6-4eb8-9cbc-8a297fdb0e38', 'left', '录入人员', null, 'create_user', '4', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fed5-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('9b825a70-67d5-41ad-88d1-dc675a0c0a72', 'center', '录入人员', null, 'create_user', '8', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:49', 'test', '0', null, null, 'ba382725-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:49', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('9bf6ab83-0252-455b-8e77-21907399d450', 'left', '上一层id', null, 'parent_uuid', '15', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea400f7-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('9c38ab22-bcb9-4763-888a-39cd7c8c5d63', 'center', '录入时间', null, 'create_time', '11', '1', 'timestamp', 'middle', '1', '150', '2018-06-08 11:45:33', 'test', '0', null, null, 'ba382719-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:33', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('9c52e61b-95b3-4e3a-af75-0f191cdf0926', 'center', '数据库表顺序', null, 'tabs_order', '9', '1', 'int', 'middle', '1', '150', '2018-06-08 11:45:42', 'test', '0', null, null, 'ba382713-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:42', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('9d1c15f2-0c18-4459-9db7-f7d171647608', 'center', '类型名', null, 'type_name', '7', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:48:08', 'test', '0', null, null, 'ba382722-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:48:08', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('9de5a3de-842d-4c5f-975d-343252069816', 'left', '主键', null, 'uuid', '1', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fed5-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('9e05fb98-63ca-42df-95e4-ce7aae297036', 'center', '更新时间', null, 'update_time', '13', '1', 'timestamp', 'middle', '1', '150', '2018-06-08 11:45:29', 'test', '0', null, null, 'ba382713-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:29', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('9e3dcfc8-0d0b-4a76-8342-a76466e108cf', 'center', '数据库表数据量', null, 'tabs_rows', '10', '1', 'int', 'middle', '1', '150', '2018-06-08 11:45:42', 'test', '0', null, null, 'ba382713-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:42', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('9E4A5BE7F670E1F6B97F75EDD4A4FAE3', null, '数据id', '255', '数据id', '4', null, 'varchar', null, null, null, '2019-01-25 16:29:43', null, null, null, null, 'ba382707-6acd-11e8-8728-1c1b0daaaad8', '2019-01-25 16:29:43', null, null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('9e82593b-cad9-4c82-9f67-1a35c365db19', 'left', '更新人员', null, 'update_time', '5', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea4030b-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('9e956781-3a79-462a-8911-a1d775c49cd1', 'left', '更新人员', null, 'update_time', '5', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea401a9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('9ebc228e-b138-4f46-9a1e-cd6e497e5198', 'center', '资源功能描述', null, 'discription', '5', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:42', 'test', '0', null, null, 'ba382713-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:42', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('9f4fb9ba-bf9c-41ac-81ec-d781ce169c03', 'left', '显示图标样式', null, 'icon_skin', '15', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40f28-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('a063050c-1948-4186-a649-c1927bc88ce5', 'left', '', null, 'uuid', '1', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40e7a-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('a501f793-cc9e-4fab-8195-a9eb24549f40', 'left', '链接地址', null, 'url', '20', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('a54fa02b-3e81-4d57-b4dd-c469eb482c65', 'left', '', null, 'param_new', '15', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea40043-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('a5ed3d10-532c-4f28-ab24-6b658deb1389', 'left', '名称', null, 'name', '8', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea400f7-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, 'RYXM', null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('a62bc07f-dfa2-4e46-991c-e3085e2d3056', 'left', '显示名称', null, 'name', '2', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40cf6-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, 'RYXM', null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('a734f552-4c47-4fc8-921f-3e573ab61ac9', 'left', '更新时间', null, 'update_time', '10', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40e7a-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('a75542aa-fbd4-4301-9792-6a1222d42b7c', 'left', '更新人员', null, 'update_user', '9', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40cf6-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('a793fe80-6e60-43e2-ad9f-0ca5a31eb062', 'left', '更新人员', null, 'update_user', '9', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40f28-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('a7d6e6dc-5ff3-4238-a0d2-6431aeb25c86', 'left', '录入人员', null, 'create_user', '4', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea40043-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('a88a7f33-52a3-4f82-b948-e264dc0cef9c', 'left', '资源功能描述', null, 'discription', '9', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea404ad-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('a970e3fc-3339-4c72-ab13-58b7cd04ae39', 'left', '错误消息', null, 'error_msg', '10', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea401a9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('a9c8b2a8-8c2e-4d19-be3c-1d3179773389', 'left', '更新时间', null, 'update_time', '15', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('a9f69d4b-4cc5-492d-b047-a8147de3d788', 'center', '字段含义', null, 'cols_desc', '3', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:20', 'test', '0', null, null, 'ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:20', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('ab0765c9-42e9-45a1-b89b-3fe6cdba1867', 'left', '', null, 'width', '21', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('ab825734-ae86-4ab0-a41f-67de0684d63c', 'left', '停用标记', null, 'delete_flag', '9', '1', 'int', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea41081-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('abcf4484-6ea3-4283-817d-bc26a49c1e48', 'left', '更新时间', null, 'update_user', '14', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea400f7-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('abef9310-b31d-430d-935c-0bed3a715845', 'left', '', null, 'nextpage_ruler', '19', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea400f7-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('acd160c9-5fe7-4ffb-b3e9-ba193a3e913a', 'center', '更新人员', null, 'update_user', '14', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:29', 'test', '0', null, null, 'ba382713-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:29', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('ae2af4bc-cb06-4644-b78a-e2bc3b3cfb4c', 'left', '更新人员', null, 'update_time', '10', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea40043-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('ae354fcd-ec41-4ede-861b-4f5e493b7b76', 'left', '', null, 'lable_uuid2', '13', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('af0c2f27-650f-4622-9b46-7224b34729c3', 'left', '主键', null, 'uuid', '1', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40f28-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('B2A733C0C766992F216003064E6A1EB3', null, '书面', '255', '书面', '10', null, 'varchar', null, null, null, '2019-01-25 16:29:44', null, null, null, null, 'ba382707-6acd-11e8-8728-1c1b0daaaad8', '2019-01-25 16:29:44', null, null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('b3026ea0-0b1d-4dbc-8719-f2ba58b496b1', 'center', '方法名', null, 'class_method', '3', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:43:17', 'test', '0', null, null, 'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:43:17', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('b302872f-cb6b-4356-a6cb-33bffa33145f', 'left', '更新人员', null, 'update_user', '10', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea406e2-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('b336ef40-02c1-404a-8479-8f4b7ddd52a4', 'center', '字段列表展示隐藏', null, 'page_list', '16', '1', 'int', 'middle', '1', '150', '2018-06-08 11:45:15', 'test', '0', null, null, 'ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:15', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('b3c4e0ea-044a-4bc0-bd57-286e400fa191', 'center', '数据库表名', null, 'tabs_name', '8', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:42', 'test', '0', null, null, 'ba382713-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:47:41', 'test', '', 'RYMX', null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('b3d665a2-a774-49a7-9795-7e6c5c9bce25', 'left', '', null, 'cols_name', '5', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea41081-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('b3ee55bc-4be1-41dd-a398-5fd61abd3363', 'left', '拼接或替换的字符串', null, 'param', '13', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea40043-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('b46dc92e-9525-40c0-b7ab-9ef1144a237b', 'left', '显示图标样式', null, 'icon', '5', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40f28-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('b5ccabc0-c79a-43e7-ab36-c03bc0d351ee', 'left', '停用标记', null, 'delete_flag', '6', '1', 'int', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40cf6-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('b75809bc-99d3-4282-9a57-a041048d76ea', 'center', '更新时间', null, 'update_time', '18', '1', 'timestamp', 'middle', '1', '150', '2018-06-08 11:45:15', 'test', '0', null, null, 'ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:15', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('b818e91a-9f61-4498-9bf6-c954e06341f9', 'left', '停用标记', null, 'delete_flag', '6', '1', 'int', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40fd3-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('b8e5800d-7b2b-4aae-954b-1c4623fb78cb', 'left', '调用代码', null, 'code', '3', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40cf6-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('b9c0ad50-43c6-4a05-857c-f6f01e2a18de', 'center', '数据库驱动类', null, 'driver', '8', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:37', 'test', '0', null, null, 'ba382719-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:37', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('bace98a0-537b-419b-8026-627e1c57d333', 'center', '用户名称', null, 'username', '6', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:37', 'test', '0', null, null, 'ba382719-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:47:53', 'test', '', 'RYMX', null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('bc6c4e6a-33ee-46a8-91dd-55904c83e469', 'left', '更新人员', null, 'update_user', '17', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:07', 'user', '0', null, '1', 'cea41081-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:07', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('bcd25017-290b-4fb2-8a50-27b966c63d08', 'left', '录入人员', null, 'create_user', '4', '1', 'varchar(50)', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea4030b-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('bd1307ae-c2a1-4a44-b009-64c850fca984', 'left', '更新人员', null, 'update_user', '12', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea404ad-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('bde6b1ba-0fc9-40ef-b97e-a5fb273a6550', 'left', '录入时间', null, 'create_time', '4', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('bdfc683d-a53d-41f5-9bc3-fac069134ca3', 'left', '录入人员', null, 'create_user', '3', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40e7a-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('bdffba52-dfd5-4baf-b33f-ae800aa768c9', 'left', '', null, 'keyword', '11', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40b2d-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('bead9c76-41ec-4387-9775-519aa70da1f6', 'center', '录入时间', null, 'create_time', '5', '1', 'timestamp', 'middle', '1', '150', '2018-06-08 11:43:17', 'test', '0', null, null, 'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:43:17', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('bee6bf78-4113-4264-bffb-039c49ade4bf', 'left', '描述', null, 'discription', '11', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('bf3c79db-96e1-4bbd-8fe3-923a51ff7cc8', 'left', '主键', null, 'uuid', '1', '1', 'varchar(36)', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea4030b-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('bf548929-8b95-41c8-aa53-8c01091230ab', 'left', '唯一id', null, 'uuid', '1', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('c1e6ffa2-fc6d-469b-ad2d-a18ad071c661', 'left', '', null, 'discription', '2', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:08', 'user', '0', null, '1', 'cea41551-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:08', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('c378a736-ad4d-473d-ade7-de1e9db42fd0', 'left', '', null, 'lable_uuid3', '14', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('c38991ad-959c-4b64-aadf-fd537332593f', 'left', '录入时间', null, 'create_time', '13', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('c3a1c8f5-9c46-456e-8266-d1573802f07f', 'left', '', null, 'lable_uuid4', '15', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('c400efab-7fae-4422-b716-38dd3aff1f30', 'left', '姓名', null, 'name', '6', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40e7a-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, 'RYXM', null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('c561fd23-a590-4086-8102-dad22ba74701', 'center', '', null, 'chart', '5', '1', 'int', 'middle', '1', '150', '2018-06-08 11:45:49', 'test', '0', null, null, 'ba382725-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:49', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('c65aea70-57d7-4ba9-8200-84e8f50b235f', 'center', '字段顺序', null, 'cols_order', '6', '1', 'int', 'middle', '1', '150', '2018-06-08 11:45:20', 'test', '0', null, null, 'ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:20', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('c701750a-810e-4b77-8589-42bb78699415', 'left', '录入人员', null, 'create_user', '5', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea400f7-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('c7b8456d-b6a4-4ec4-a9c8-abeb2094ff23', 'left', '', null, 'token', '3', '1', 'blob', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3f61c-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('C91DD3DDFD007EAC802CF124B535DB3A', null, '小说主页', '255', '小说主页', '5', null, 'varchar', null, null, null, '2019-01-25 16:29:43', null, null, null, null, 'ba382707-6acd-11e8-8728-1c1b0daaaad8', '2019-01-25 16:29:43', null, null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('c9721542-4412-43ee-ac89-8b484e614dcb', 'left', '', null, 'count_type', '3', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('c9e2c231-12e2-4be0-bc52-8006339822d5', 'left', '资源功能描述', null, 'discription', '8', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('cb0fdd06-7e5b-443b-8948-00bf2c0a3348', 'left', '更新人员', null, 'update_user', '10', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40b2d-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('cba260de-7c22-4476-9320-e56032b6ba06', 'left', '排序', null, 'key_order', '4', '1', 'int', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40b2d-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('cd3634ff-1e8c-4656-a562-c03a540b5976', 'left', '', null, 'refresh_token', '8', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3f61c-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('cec5b84d-d54d-4b40-97e0-9a7149c865d8', 'left', '任务id', null, 'task_uuid', '8', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea401a9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('cfade491-c036-4698-9334-8d02ae3e347f', 'center', '更新人员', null, 'update_time', '13', '1', 'timestamp', 'middle', '1', '150', '2018-06-08 11:45:33', 'test', '0', null, null, 'ba382719-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:33', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('D109AEE0F39F08C4848D55CCF1634998', null, '分类2', '255', '分类2', '6', null, 'varchar', null, null, null, '2019-01-25 16:29:43', null, null, null, null, 'ba382707-6acd-11e8-8728-1c1b0daaaad8', '2019-01-25 16:29:43', null, null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('d10c2583-5174-4984-80f0-2bd5d25834b7', 'left', '录入人员', null, 'create_user', '4', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea401a9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('d1598ed4-727e-49a6-a491-739b2632d99b', 'left', '', null, 'conditions', '4', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea404ad-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('d17fd50b-0243-4740-b2a5-9c84f718d438', 'left', '录入人员', null, 'create_user', '6', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40b2d-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('d3d06a0d-603f-4afb-858b-66f42465ce38', 'left', '', null, 'client_id', '1', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fb76-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('d3d3c1b0-6457-48c3-9db1-e4c5cb5583ff', 'left', '规则id', null, 'ruler_uuid', '10', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3ff8f-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('d4421f80-75ec-4a6a-a4ed-7fccd4242141', 'left', '首页', null, 'home_page', '17', '1', 'tinyint', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40f28-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('d57458ef-4871-43f5-a58a-09c0ac0306ab', 'center', '停用标记', null, 'delete_flag', '4', '1', 'int', 'middle', '1', '150', '2018-06-08 11:48:08', 'test', '0', null, null, 'ba382722-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:48:08', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('d6ac72c4-c6a7-4872-aa60-c3ca9be5491e', 'left', '更新人员', null, 'update_user', '16', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('d6bd1a59-48ab-4b40-bd08-42dc58a86594', 'center', '字段类型（varchar,number,text）', null, 'cols_type', '8', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:20', 'test', '0', null, null, 'ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:20', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('d94a0efa-d848-4829-9795-8db6bfc3154a', 'left', '', null, 'path', '7', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40e7a-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('daecb4b4-e5b1-4f3f-ab39-cbf5bcb6cac8', 'left', '更新人员', null, 'update_time', '8', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40fd3-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('db3f9030-7791-4a84-b783-7ac73bd07108', 'left', '', null, 'title', '18', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('dc9f9322-cd8f-4e60-9c48-70d9b981322a', 'center', 'ip地址', null, 'ip', '3', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:37', 'test', '0', null, null, 'ba382719-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:37', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('dcc84c44-a98a-4055-88b5-a21a1f70dc72', 'left', '网站商标', null, 'web_icon', '23', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('dda1aeb5-1529-48f2-81e7-ecceed75b153', 'left', '父id', null, 'parents_id', '3', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40f28-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('dda44ff3-8547-462f-9a3b-2fd17494c456', 'center', '更新人员', null, 'update_user', '11', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:53', 'test', '0', null, null, 'ba382725-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:53', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('ddd981db-40ef-4e1d-a523-ab4c3def694f', 'center', '数据库表id', null, 'jdbc_uuid', '6', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:42', 'test', '0', null, null, 'ba382713-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:42', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('dde496c1-778d-4988-9907-c87de81fc0c0', 'center', '', null, 'multeity', '6', '1', 'int', 'middle', '1', '150', '2018-06-08 11:45:49', 'test', '0', null, null, 'ba382725-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:49', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('de420131-2418-462c-844b-e1073efd8031', 'left', '网站类型', null, 'url_type', '22', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('de7a888e-4bc6-41d6-a5f2-f9e9661630ec', 'left', '1允许用户进行条件筛选的字段，0不允许的字段', null, 'param_flag', '12', '1', 'int', 'middle', null, null, '2019-01-14 11:03:07', 'user', '0', null, '1', 'cea41081-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:07', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('dee23da6-62fc-44ac-9710-a878114dbcd5', 'center', '录入人员', null, 'create_user', '3', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:42', 'test', '0', null, null, 'ba382713-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:42', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('df042b1d-07b8-4e4c-a6c2-07764fdcf85d', 'left', '更新时间', null, 'update_time', '9', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea406e2-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('df0bfb51-ecd1-42f1-ba19-49e53c757731', 'left', '', null, 'discription', '5', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40e7a-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('df7a2922-1547-4ed4-8803-b71f51a271a8', 'left', '录入人员', null, 'create_user', '5', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3ff8f-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('df8f6de4-af2d-4392-94ec-a45e512e217a', 'center', '更新人员', null, 'update_time', '9', '1', 'timestamp', 'middle', '1', '150', '2018-06-08 11:48:08', 'test', '0', null, null, 'ba382722-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:48:08', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('dff86d9e-7135-4e13-bfa0-4ffdffbee1da', 'left', '', null, 'start', '14', '1', 'int', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea40043-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('e09fd38d-8092-4071-abfe-45b7334d6f70', 'left', '地址名称', null, 'name', '4', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40f28-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, 'RYXM', null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('e1cb4c57-52be-458a-a96f-cb87ec050fe6', 'left', '停用标记', null, 'delete_flag', '6', '1', 'int', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('e2fa4fb9-c95a-49b3-9ef7-3b3f55d5efe2', 'left', '录入人员', null, 'create_user', '5', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:08', 'user', '0', null, '1', 'cea41551-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:08', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('e379862e-52bf-486d-9647-1cedba5deb15', 'left', '录入时间', null, 'create_time', '12', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40f28-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('E405D285CA4DD2BB48254D8AF0CA42E2', null, '项目', '255', '项目', '4', null, 'varchar', null, null, null, '2018-12-05 18:07:33', null, null, null, null, null, '2018-12-05 18:07:33', null, null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('e483ac42-fe10-4a42-8e17-648398e1b0b5', 'left', '资源功能描述', null, 'discription', '7', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea409fe-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('e6df403f-d292-42c3-ba1a-306477ca5a72', 'left', '更新时间', null, 'update_user', '11', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea40043-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('e78f5c06-271f-4141-9e83-b76aa251d989', 'center', '录入时间', null, 'create_time', '9', '1', 'timestamp', 'middle', '1', '150', '2018-06-08 11:45:49', 'test', '0', null, null, 'ba382725-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:49', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('e7cd4c56-2b9a-4c0a-a445-cb75ec64a73f', 'left', '主键', null, 'uuid', '1', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40b2d-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('e815a24c-8d74-4efc-bd19-92638089bbec', 'left', '更新时间', null, 'update_user', '9', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea409fe-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('e95cd237-77e2-4362-8658-48c82b26f88c', 'left', '', null, 'client_id', '6', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3f61c-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('e9a7890e-833f-4168-a0c7-e3580d21e895', 'left', '执行状态(执行中，已停止)', null, 'excute_flag', '9', '1', 'int', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('ea5c36c4-efcc-42df-8c85-3a9f1b7fdc3d', 'left', '', null, 'authentication', '7', '1', 'blob', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3f61c-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('ead01fa8-9e36-4834-b573-5df8e71ace41', 'center', '停用标记', null, 'delete_flag', '14', '1', 'int', 'middle', '1', '150', '2018-06-08 11:45:33', 'test', '0', null, null, 'ba382719-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:33', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('ebe633a4-988a-4400-95cc-6d9ef047526e', 'left', '文件包名称', null, 'zip_file_name', '9', '1', 'varchar(2000)', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea4030b-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('ec31c2f2-c103-47c1-98df-1e7a0897f44e', 'center', '用户查询列配置', null, 'user_index', '21', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:24', 'test', '0', null, null, 'ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:47:26', 'test', '', 'RYMX', null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('ec7f434a-6554-4855-af25-0ce9239610ed', 'left', '排序', null, 'sort', '6', '1', 'int', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40f28-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('ed74008a-08ef-4409-89bc-84df08de8717', 'left', '字符集', null, 'charset', '2', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea400f7-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('edd599d2-908b-4da3-854b-c569f929231c', 'left', '更新时间', null, 'update_time', '19', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('ee886a58-c933-4e40-a0f8-9340a5691f42', 'left', '停用标记', null, 'delete_flag', '6', '1', 'int', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea409fe-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('eeeb3d6b-0079-46f4-b35f-248bb1f0c7ba', 'left', '', null, 'organization_id', '3', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea409fe-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('ef1bc637-a2c8-48fb-bbb9-9486a4fb0b55', 'left', '', null, 'token_id', '2', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3f61c-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('efaa9b81-cd6f-40f3-a0cb-5071c904be6a', 'center', '录入时间', null, 'create_time', '2', '1', 'timestamp', 'middle', '1', '150', '2018-06-08 11:48:08', 'test', '0', null, null, 'ba382722-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:48:08', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('f1870f2a-1dea-44aa-9fe2-a22b58fad590', 'left', '', null, 'delete_flag', '4', '1', 'int', 'middle', null, null, '2019-01-14 11:03:06', 'user', '0', null, '1', 'cea40e7a-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('f1eba651-108b-42ef-99fd-968f143c3eb9', 'left', '', null, 'relation', '13', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:07', 'user', '0', null, '1', 'cea41081-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:07', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('f449fc75-b5f6-4146-9dae-fb3feb964b77', 'left', '上一层', null, 'parent_uuid', '17', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40043-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('f4a94cc3-eeb4-4a32-924a-a7fb64447e39', 'left', '执行的命令', null, 'excute_batch', '10', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:03', 'user', '0', null, '1', 'cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('f50dc157-f9d5-4b32-be84-0e60a74fb5b9', 'left', '', null, 'group_order', '6', '1', 'int', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea406e2-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('f7795575-655b-48c2-885b-d5edf70acc0a', 'left', '录入时间', null, 'create_time', '3', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea40043-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('f799e6f0-2585-419d-bc62-ae5a7593f9fe', 'left', '表字段id', null, 'cols_uuid', '3', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3ff8f-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('f7f2039f-ee0b-42e4-85c2-1601c6cba8e0', 'center', '请求参数', null, 'args', '2', '1', 'text', 'middle', '1', '150', '2018-06-08 11:43:17', 'test', '0', null, null, 'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:43:17', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('f81c43c6-520f-486c-86f1-2d98cc95ce0f', 'left', '录入时间', null, 'create_time', '5', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea404ad-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('f81d586b-819a-4a17-9e69-0625ef7e303d', 'center', '请求method', null, 'method', '9', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:43:17', 'test', '0', null, null, 'a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:43:17', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('fa0c3684-4d5a-4ffa-91f1-0c4a9f0bd128', 'center', '更新时间', null, 'update_user', '10', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:48:08', 'test', '0', null, null, 'ba382722-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:48:08', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('fa1dd79d-1d65-4379-b0be-f8612d2c5737', 'left', '更新时间', null, 'update_time', '8', '1', 'timestamp', 'middle', null, null, '2019-01-14 11:03:05', 'user', '0', null, '1', 'cea40cf6-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('fa28a154-b871-4af0-877b-90755f976136', 'left', '主键', null, 'uuid', '1', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea404ad-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('fa788b47-a43b-41d8-9f48-17403c27e323', 'left', '', null, 'additional_information', '10', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:02', 'user', '0', null, '1', 'cea3fb76-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('fb5bda80-df2b-4650-8a95-6e1a28ff676c', 'left', '', null, 'lable_uuid', '12', '1', 'varchar', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('fda521a4-475c-45ad-8941-6ee7446024f2', 'center', '字段名', null, 'cols_name', '5', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:45:20', 'test', '0', null, null, 'ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:45:20', 'test', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('fe108d93-0c43-47ed-9ce2-ccb05336ed17', 'left', '停用标记', null, 'delete_flag', '7', '1', 'int(11)', 'middle', null, null, '2019-01-14 11:03:04', 'user', '0', null, '1', 'cea4030b-17a8-11e9-9800-1c1b0daaaad8', '2019-07-20 19:09:00', 'user', null, null, null);
INSERT INTO `sys_dbms_tabs_cols_info` VALUES ('feb86245-85fe-42c9-9d30-ca49a1aa6b08', 'center', '资源功能描述', null, 'discription', '5', '1', 'varchar', 'middle', '1', '150', '2018-06-08 11:48:08', 'test', '0', null, null, 'ba382722-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:48:08', 'test', null, null, null);

-- ----------------------------
-- Table structure for sys_dbms_tabs_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_dbms_tabs_info`;
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

-- ----------------------------
-- Records of sys_dbms_tabs_info
-- ----------------------------
INSERT INTO `sys_dbms_tabs_info` VALUES ('a5d0c4c3-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:40:48', 'test', null, null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '日志表', 'application.sys_comn_logs', null, null, null, 'E6DB186F94ADEF68BB8FD3AF0A860520', '2019-07-06 07:57:27', 'test', null);
INSERT INTO `sys_dbms_tabs_info` VALUES ('ba382707-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:42:46', 'test', null, null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '数据库维护建议信息', 'application.sys_dbms_advi_mess_info', null, null, null, '725E94DCC37568A970282C6E3F253404', '2019-07-06 08:05:04', 'test', null);
INSERT INTO `sys_dbms_tabs_info` VALUES ('ba38270d-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:42:46', 'test', null, null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '列配置', 'application.sys_dbms_tabs_cols_info', null, null, null, '725E94DCC37568A970282C6E3F253404', '2019-07-06 08:05:11', 'test', null);
INSERT INTO `sys_dbms_tabs_info` VALUES ('ba382713-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:42:46', 'test', null, null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '表信息配置', 'application.sys_dbms_tabs_info', null, null, null, '725E94DCC37568A970282C6E3F253404', '2019-07-06 08:05:18', 'test', null);
INSERT INTO `sys_dbms_tabs_info` VALUES ('ba382719-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:42:46', 'test', null, null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '数据库连接配置', 'application.sys_dbms_tabs_jdbc_info', null, null, null, '725E94DCC37568A970282C6E3F253404', '2019-07-06 08:05:26', 'test', null);
INSERT INTO `sys_dbms_tabs_info` VALUES ('ba382722-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:42:46', 'test', null, null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '数据类型配置', 'application.sys_dbms_tabs_type_info', null, null, null, '725E94DCC37568A970282C6E3F253404', '2019-07-06 08:05:35', 'test', null);
INSERT INTO `sys_dbms_tabs_info` VALUES ('ba382725-6acd-11e8-8728-1c1b0daaaad8', '2018-06-08 11:42:46', 'test', null, null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '用户索引类型配置', 'application.sys_dbms_user_index_info', null, null, null, '725E94DCC37568A970282C6E3F253404', '2019-07-06 08:04:10', 'test', null);
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea3f61c-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:01', 'user', null, null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '权限连接信息表', 'application.oauth_access_token', null, null, null, 'B2A35E6180E22CAC0BEC9BA4617335BA', '2019-07-06 08:01:49', 'test', null);
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea3fb76-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '权限信息表', 'application.oauth_client_details', null, null, null, 'B2A35E6180E22CAC0BEC9BA4617335BA', '2019-07-06 08:01:01', 'test', null);
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea3fceb-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '权限代码', 'application.oauth_code', null, null, null, 'B2A35E6180E22CAC0BEC9BA4617335BA', '2019-07-06 08:01:06', 'test', null);
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea3fdab-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', null, null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '权限token表', 'application.oauth_refresh_token', null, null, null, 'B2A35E6180E22CAC0BEC9BA4617335BA', '2019-07-06 08:01:21', 'test', null);
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea3fed5-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', '0', null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', 'demo', 'application.sys_crawler_demo', null, '0', null, '43A0BBD7CBDBB0300C3E436D2E0E10B7', '2019-07-20 19:08:00', 'test', 'mysql');
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea3ff8f-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', '0', null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '爬虫属性映射表', 'application.sys_crawler_result_ruler_info', null, '18', null, '43A0BBD7CBDBB0300C3E436D2E0E10B7', '2019-07-20 19:08:00', 'test', 'mysql');
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea40043-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:02', 'user', '0', null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '爬虫采集属性表', 'application.sys_crawler_ruler_colum_info', null, '18', null, '43A0BBD7CBDBB0300C3E436D2E0E10B7', '2019-07-20 19:08:00', 'test', 'mysql');
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea400f7-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', '0', null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '爬虫规则表', 'application.sys_crawler_ruler_info', null, '3', null, '43A0BBD7CBDBB0300C3E436D2E0E10B7', '2019-07-20 19:08:00', 'test', 'mysql');
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea401a9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', '0', null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '爬虫错误信息记录表', 'application.sys_crawler_task_err_info', null, '0', null, '43A0BBD7CBDBB0300C3E436D2E0E10B7', '2019-07-20 19:08:00', 'test', 'mysql');
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea40257-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:03', 'user', '0', null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '爬虫信息表', 'application.sys_crawler_task_info', null, '2', null, '43A0BBD7CBDBB0300C3E436D2E0E10B7', '2019-07-20 19:09:00', 'test', 'mysql');
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea4030b-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', '0', null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '', 'application.sys_crawler_task_self_code_info', null, '0', null, '43A0BBD7CBDBB0300C3E436D2E0E10B7', '2019-07-20 19:09:00', 'test', 'mysql');
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea403f9-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', '0', null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '图表定义表', 'application.sys_dbms_chart_dimension', null, '11', null, '725E94DCC37568A970282C6E3F253404', '2019-07-20 19:09:00', 'test', 'mysql');
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea404ad-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', '0', null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '图表定义参数数据', 'application.sys_dbms_chart_dimension_data', null, '0', null, '725E94DCC37568A970282C6E3F253404', '2019-07-20 19:09:00', 'test', 'mysql');
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea406e2-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:04', 'user', '0', null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '图表定义组表', 'application.sys_dbms_chart_dimension_group', null, '1', null, '725E94DCC37568A970282C6E3F253404', '2019-07-20 19:09:00', 'test', 'mysql');
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea409fe-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', '0', null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '部门表', 'application.sys_department_info', null, '3', null, 'B2A35E6180E22CAC0BEC9BA4617335BA', '2019-07-20 19:09:00', 'test', 'mysql');
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea40b2d-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', '0', null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '字典表', 'application.sys_dic_key_list', null, '94', null, 'B2A35E6180E22CAC0BEC9BA4617335BA', '2019-07-20 19:09:00', 'test', 'mysql');
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea40cf6-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', '0', null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '字典名称表', 'application.sys_dic_name', null, '11', null, 'B2A35E6180E22CAC0BEC9BA4617335BA', '2019-07-20 19:09:00', 'test', 'mysql');
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea40dc8-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', '0', null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '省份字典表', 'application.sys_dic_porvince_city', null, '454', null, 'B2A35E6180E22CAC0BEC9BA4617335BA', '2019-07-20 19:09:00', 'test', 'mysql');
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea40e7a-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:05', 'user', '0', null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '文件信息表', 'application.sys_file_upload_info', null, '0', null, 'B2A35E6180E22CAC0BEC9BA4617335BA', '2019-07-20 19:09:00', 'test', 'mysql');
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea40f28-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', '0', null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '系统菜单表', 'application.sys_menu_info', null, '43', null, 'B2A35E6180E22CAC0BEC9BA4617335BA', '2019-07-20 19:09:00', 'test', 'mysql');
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea40fd3-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', '0', null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '组织机构表', 'application.sys_organization_info', null, '0', null, 'B2A35E6180E22CAC0BEC9BA4617335BA', '2019-07-20 19:09:00', 'test', 'mysql');
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea41081-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:06', 'user', '0', null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '平台配置表', 'application.sys_plant_bind_conf', null, '0', null, 'B2A35E6180E22CAC0BEC9BA4617335BA', '2019-07-20 19:09:00', 'test', 'mysql');
INSERT INTO `sys_dbms_tabs_info` VALUES ('cea41551-17a8-11e9-9800-1c1b0daaaad8', '2019-01-14 11:03:08', 'user', '0', null, '6a1a5131-320e-4e9f-80c5-ee1c497780bd', '系统信息表', 'application.sys_system_info', null, '0', null, 'B2A35E6180E22CAC0BEC9BA4617335BA', '2019-07-20 19:09:00', 'test', 'mysql');

-- ----------------------------
-- Table structure for sys_dbms_tabs_jdbc_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_dbms_tabs_jdbc_info`;
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

-- ----------------------------
-- Records of sys_dbms_tabs_jdbc_info
-- ----------------------------
INSERT INTO `sys_dbms_tabs_jdbc_info` VALUES ('6a1a5131-320e-4e9f-80c5-ee1c497780bd', 'application', 'localhost', '3306', 'mysql', 'root', '514840279@qq.com', null, 'localhost', null, '2019-06-21 05:37:16', null, '2019-07-11 07:27:00', null, null);

-- ----------------------------
-- Table structure for sys_dbms_tabs_type_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_dbms_tabs_type_info`;
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

-- ----------------------------
-- Records of sys_dbms_tabs_type_info
-- ----------------------------
INSERT INTO `sys_dbms_tabs_type_info` VALUES ('0BD6B707F440EB854D85253D2ED1EB9E', '2019-01-14 11:16:34', null, '1', '采集表', '2', '采集表', '2', '2019-07-06 00:03:02', null, null);
INSERT INTO `sys_dbms_tabs_type_info` VALUES ('43A0BBD7CBDBB0300C3E436D2E0E10B7', '2019-02-25 17:27:52', null, '1', '爬虫表', '11', '爬虫表', '1', '2019-07-06 00:02:51', null, null);
INSERT INTO `sys_dbms_tabs_type_info` VALUES ('725E94DCC37568A970282C6E3F253404', '2019-07-06 00:03:37', null, '1', '数据管理', '3', '数据管理', '3', '2019-07-06 00:03:37', null, null);
INSERT INTO `sys_dbms_tabs_type_info` VALUES ('B2A35E6180E22CAC0BEC9BA4617335BA', '2019-01-14 11:16:47', null, '1', '业务表', '3', '业务表', '3', '2019-07-06 00:03:07', null, null);

-- ----------------------------
-- Table structure for sys_dbms_user_index_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_dbms_user_index_info`;
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

-- ----------------------------
-- Records of sys_dbms_user_index_info
-- ----------------------------
INSERT INTO `sys_dbms_user_index_info` VALUES ('1', 'RYXM', '姓名', '人员姓名', '1', '1', '2', 'system', '2018-03-12 16:51:48', '1', 'test', '2019-07-11 08:20:13', null);
INSERT INTO `sys_dbms_user_index_info` VALUES ('2', 'DHHM', '手机', '电话号码', '0', '0', '2', 'system', '2018-03-12 16:51:48', '0', 'user', '2019-01-14 12:05:38', null);
INSERT INTO `sys_dbms_user_index_info` VALUES ('3', 'SFZH', '身份证号', '身份证号', '0', '0', '3', 'system', '2018-03-12 16:51:48', '0', 'user', '2019-01-14 12:05:47', null);
INSERT INTO `sys_dbms_user_index_info` VALUES ('4', 'QQHM', 'QQ号码', 'QQ号码', '0', '0', '4', 'system', '2018-03-12 16:51:48', '0', 'user', '2019-01-14 12:05:53', null);
INSERT INTO `sys_dbms_user_index_info` VALUES ('454063D22A1447F4ED1C2E85C30511E1', 'MD5', 'MD5', 'MD5', '0', '0', '4', 'user', '2019-01-14 13:48:29', '1', 'user', '2019-01-14 13:48:29', null);
INSERT INTO `sys_dbms_user_index_info` VALUES ('4E637DBBD5676F18743CAF1A2CFC5DB8', 'BOOKNAME', '书名', '书名', '0', '0', '2', 'user', '2019-01-14 12:13:19', '1', 'user', '2019-01-14 12:13:19', null);
INSERT INTO `sys_dbms_user_index_info` VALUES ('5', 'GSMC', '公司名称', '单位名称', '1', '1', '5', 'system', '2018-03-12 16:51:48', '1', 'test', '2019-07-11 08:20:19', null);
INSERT INTO `sys_dbms_user_index_info` VALUES ('6', 'DZYX', '邮箱', '电子邮箱', '0', '0', '6', 'system', '2018-03-12 16:51:48', '0', 'user', '2019-01-14 12:05:59', null);
INSERT INTO `sys_dbms_user_index_info` VALUES ('7', 'DZ', '地址', '地址', null, '1', '7', 'system', '2018-03-12 16:51:48', '1', 'test', '2018-06-04 15:08:08', null);
INSERT INTO `sys_dbms_user_index_info` VALUES ('7195924FB763D2A18B44DA44E1C41DD2', 'UUID', '主键', '主键', '0', '0', '3', 'user', '2019-01-14 13:48:00', '1', 'user', '2019-01-14 13:48:00', null);
INSERT INTO `sys_dbms_user_index_info` VALUES ('C1EC559D275DBB1E2E5F54B27842A5DB', 'TITLE', '标题', '标题', '0', '1', '1', 'user', '2019-01-14 12:06:28', '1', 'user', '2019-01-14 12:07:20', null);

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
INSERT INTO `sys_department_info` VALUES ('214F6F1048626F0C6792E19BF57C1F07', 'user', '3CE6C80F33B624C1BB1B016A79083694', '2018-02-23 11:47:11', null, null, 'user', '2018-02-23 11:47:11', 'system');
INSERT INTO `sys_department_info` VALUES ('2476DC8ED9FE9483FB956C2EFEB8E39E', 'test', '3CE6C80F33B624C1BB1B016A79083694', '2018-02-22 10:59:21', null, null, 'test', '2018-02-22 10:59:21', 'system');
INSERT INTO `sys_department_info` VALUES ('BD174B512EB1A0B87FF6E6CE6B171393', 'admin', '3CE6C80F33B624C1BB1B016A79083694', '2018-02-12 16:23:00', null, null, 'admin', '2018-02-12 16:23:00', 'system');

-- ----------------------------
-- Table structure for sys_dic_key_list
-- ----------------------------
DROP TABLE IF EXISTS `sys_dic_key_list`;
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

-- ----------------------------
-- Records of sys_dic_key_list
-- ----------------------------
INSERT INTO `sys_dic_key_list` VALUES ('01660cf9-ff94-433a-9b49-95853374e20b', '6516a59c-b56e-43c6-a172-55c4784ceec3', 'chalk', '7', '2018-05-22 17:57:15', 'test', null, null, '2018-05-22 17:57:15', 'test', '粉笔');
INSERT INTO `sys_dic_key_list` VALUES ('02bfe0ee-e634-4a7e-bec1-e9a692eb5dae', '99313fa6-3004-42d5-ab51-5edc8dd25541', '吉林', '15', '2018-05-22 18:25:08', 'test', null, null, '2018-05-22 18:25:08', 'test', '吉林');
INSERT INTO `sys_dic_key_list` VALUES ('0416e9a1-fb60-4df1-b32f-2fce7b4963e2', 'cbe3b397-6149-4e66-a577-69b20ed982a1', 'listPage', '1', '2018-11-28 06:53:43', 'test', null, null, '2018-11-28 06:53:43', 'test', '列表页');
INSERT INTO `sys_dic_key_list` VALUES ('074dfa16-3b2a-4afc-aeb1-730abae1b3f4', '99313fa6-3004-42d5-ab51-5edc8dd25541', '北京', '2', '2018-05-22 18:23:20', 'test', null, null, '2018-05-22 18:23:20', 'test', '北京');
INSERT INTO `sys_dic_key_list` VALUES ('097f1dda-19a2-4c13-86f8-c5968ba2aea7', '6516a59c-b56e-43c6-a172-55c4784ceec3', 'vintage', '6', '2018-05-22 17:46:55', 'test', null, null, '2018-05-22 17:57:30', 'test', '酿造的');
INSERT INTO `sys_dic_key_list` VALUES ('0e91078e-d705-4b95-9546-8ab70c21b80f', '230ac982-bdb7-44d9-91fa-8641d25d3cf1', 'a_type', '2', '2018-11-28 06:59:40', 'test', null, null, '2018-11-28 07:03:37', 'test', 'a标签');
INSERT INTO `sys_dic_key_list` VALUES ('15a69d35-e7ff-44db-9505-ab7c9c82bf44', 'cbe3b397-6149-4e66-a577-69b20ed982a1', 'allPage', '3', '2018-11-28 06:56:00', 'test', null, null, '2018-11-28 06:56:00', 'test', '混合页面');
INSERT INTO `sys_dic_key_list` VALUES ('15bcbc9e-1df0-4afd-beac-aac2b64380ff', '6516a59c-b56e-43c6-a172-55c4784ceec3', 'westeros', '11', '2018-05-22 17:59:55', 'test', null, null, '2018-05-22 17:59:55', 'test', '维斯特洛');
INSERT INTO `sys_dic_key_list` VALUES ('18a52afe-0c18-48d6-880a-221b2ba660d5', '99313fa6-3004-42d5-ab51-5edc8dd25541', '上海', '25', '2018-05-22 18:26:19', 'test', null, null, '2018-05-22 18:26:19', 'test', '上海');
INSERT INTO `sys_dic_key_list` VALUES ('19cb1d1a-d6d1-44c0-b63c-c37d4511b7a5', '99313fa6-3004-42d5-ab51-5edc8dd25541', '台湾', '33', '2018-05-22 18:27:34', 'test', null, null, '2018-05-22 18:27:34', 'test', '台湾');
INSERT INTO `sys_dic_key_list` VALUES ('1a75caf8-f610-44a6-be07-84b84a99367a', '99313fa6-3004-42d5-ab51-5edc8dd25541', '湖北', '12', '2018-05-22 18:24:53', 'test', null, null, '2018-05-22 18:24:53', 'test', '湖北');
INSERT INTO `sys_dic_key_list` VALUES ('1c8b5e55-c4b7-411f-9f2d-46eff9ae87aa', 'f7d67906-6d24-48d4-ad72-8eea33d0795b', 'UTF-8', '1', '2018-12-05 23:22:34', 'test', null, null, '2018-12-05 23:22:34', 'test', 'UTF-8');
INSERT INTO `sys_dic_key_list` VALUES ('1e8eb781-06c6-4e67-8995-d2ef816ed0c8', '99313fa6-3004-42d5-ab51-5edc8dd25541', '台湾', '38', '2018-05-22 18:28:25', 'test', null, null, '2018-05-22 18:28:25', 'test', '台湾');
INSERT INTO `sys_dic_key_list` VALUES ('1f46825f-2ef7-4218-bf44-ed8975bcea17', '60122aa1-9b97-4075-83c6-861382e88f0f', 'dict', '3', '2018-11-29 21:54:25', 'test', null, null, '2018-11-29 22:04:21', 'test', '字典');
INSERT INTO `sys_dic_key_list` VALUES ('243e99b8-6012-4fcc-bbd8-699fc0dd96d3', '99313fa6-3004-42d5-ab51-5edc8dd25541', '重庆', '32', '2018-05-22 18:27:09', 'test', null, null, '2018-05-22 18:27:09', 'test', '重庆');
INSERT INTO `sys_dic_key_list` VALUES ('24ab8e4d-deed-4635-af3b-64097e3e0378', '60122aa1-9b97-4075-83c6-861382e88f0f', 'none', '1', '2018-11-29 21:47:52', 'test', null, null, '2018-11-29 22:18:22', 'test', '原数据返回');
INSERT INTO `sys_dic_key_list` VALUES ('29649da5-4b20-4e0b-9f59-ce5a735c24b0', '99313fa6-3004-42d5-ab51-5edc8dd25541', '浙江', '31', '2018-05-22 18:27:01', 'test', null, null, '2018-05-22 18:27:01', 'test', '浙江');
INSERT INTO `sys_dic_key_list` VALUES ('2a327d0e-1e85-4c7d-8a0e-f08d4d1e603f', '99313fa6-3004-42d5-ab51-5edc8dd25541', '江苏', '16', '2018-05-22 18:25:14', 'test', null, null, '2018-05-22 18:25:14', 'test', '江苏');
INSERT INTO `sys_dic_key_list` VALUES ('31481a5a-83b5-41d2-a24b-726bdeefd022', '60122aa1-9b97-4075-83c6-861382e88f0f', 'strReplace', '7', '2018-11-29 21:59:05', 'test', null, null, '2018-11-29 21:59:34', 'test', '替换一段字符串');
INSERT INTO `sys_dic_key_list` VALUES ('31b17824-9b5d-44c3-981d-1990b8fbc067', '0c3f5728-1fe0-4861-9720-354827069d1d', 'geckodriver', '6', '2018-11-10 10:18:50', 'test', null, null, '2018-11-10 10:18:50', 'test', 'webdriver firefox');
INSERT INTO `sys_dic_key_list` VALUES ('352a0cda-d69d-49dd-8849-60c4477c6102', '99313fa6-3004-42d5-ab51-5edc8dd25541', '黑龙江', '11', '2018-05-22 18:24:44', 'test', null, null, '2018-05-22 18:24:44', 'test', '黑龙江');
INSERT INTO `sys_dic_key_list` VALUES ('355c5650-2b3c-4340-99ad-bf153a3595ad', '6516a59c-b56e-43c6-a172-55c4784ceec3', 'roma', '5', '2018-05-22 17:45:59', 'test', null, null, '2018-05-22 17:45:59', 'test', '罗马');
INSERT INTO `sys_dic_key_list` VALUES ('3a1018a5-5129-4822-9a1d-d169a7acfa46', '60122aa1-9b97-4075-83c6-861382e88f0f', 'rdict', '4', '2018-11-29 21:54:46', 'test', null, null, '2018-11-29 22:04:01', 'test', '反字典');
INSERT INTO `sys_dic_key_list` VALUES ('3d894a24-cde0-49b3-9822-5b29e0c8f123', '99313fa6-3004-42d5-ab51-5edc8dd25541', '天津', '27', '2018-05-22 18:26:33', 'test', null, null, '2018-05-22 18:26:33', 'test', '天津');
INSERT INTO `sys_dic_key_list` VALUES ('3e6525d2-53c0-48f6-9496-37c034352645', '99313fa6-3004-42d5-ab51-5edc8dd25541', '内蒙古', '18', '2018-05-22 18:25:37', 'test', null, null, '2018-05-22 18:25:37', 'test', '内蒙古');
INSERT INTO `sys_dic_key_list` VALUES ('3ed832b9-8cc2-4966-8431-832427ca48e7', '60122aa1-9b97-4075-83c6-861382e88f0f', 'arrayToString', '9', '2018-11-29 22:10:53', 'test', null, null, '2018-11-29 22:11:03', 'test', '数组合并');
INSERT INTO `sys_dic_key_list` VALUES ('3fa7b5c1-707f-400d-b865-3921df7d9533', 'cbe3b397-6149-4e66-a577-69b20ed982a1', 'detialPage', '2', '2018-11-28 06:54:10', 'test', null, null, '2018-11-28 06:54:10', 'test', '详细信息页面');
INSERT INTO `sys_dic_key_list` VALUES ('4202cab5-8f8e-4203-a7fe-48103aa0c15e', '60122aa1-9b97-4075-83c6-861382e88f0f', 'strSub', '5', '2018-11-29 21:55:19', 'test', null, null, '2018-11-29 22:06:00', 'test', '截取字符串');
INSERT INTO `sys_dic_key_list` VALUES ('43a0dc75-7d20-4fe9-ad9e-3eab4df9bb31', '99313fa6-3004-42d5-ab51-5edc8dd25541', '福建', '3', '2018-05-22 18:23:27', 'test', null, null, '2018-05-22 18:23:27', 'test', '福建');
INSERT INTO `sys_dic_key_list` VALUES ('4c358207-6c47-4388-bead-c0674149d426', '6ae40ad7-5d61-4cec-a93e-77aedda734e8', 'bar', '5', '2018-05-21 17:22:22', 'test', null, null, '2018-05-24 15:09:15', 'test', '标准柱图');
INSERT INTO `sys_dic_key_list` VALUES ('4dc9c52b-9628-4174-a84c-dab43f601d4d', '99313fa6-3004-42d5-ab51-5edc8dd25541', '宁夏', '19', '2018-05-22 18:25:44', 'test', null, null, '2018-05-22 18:25:44', 'test', '宁夏');
INSERT INTO `sys_dic_key_list` VALUES ('4ee56f6a-c4d8-49ca-88fa-77ee0bc773f5', '60122aa1-9b97-4075-83c6-861382e88f0f', 'arraySingle', '8', '2018-11-29 22:08:59', 'test', null, null, '2018-11-29 22:14:02', 'test', '数组中一个');
INSERT INTO `sys_dic_key_list` VALUES ('51cc95ff-5928-4ba3-b39a-8045d08f8bf5', '6516a59c-b56e-43c6-a172-55c4784ceec3', 'wonderland', '13', '2018-05-22 18:00:23', 'test', null, null, '2018-05-22 18:00:23', 'test', '仙境');
INSERT INTO `sys_dic_key_list` VALUES ('5222c66b-bc90-453c-a8f7-e62fbf30974e', '6516a59c-b56e-43c6-a172-55c4784ceec3', 'walden', '10', '2018-05-22 17:59:20', 'test', null, null, '2018-05-22 17:59:20', 'test', '沃尔登');
INSERT INTO `sys_dic_key_list` VALUES ('60542398-663b-409e-bc46-ec8f22b5a466', '7c9f2411-82b5-4187-81ca-395e5709db52', '1', '1', '2018-05-17 10:53:54', 'test', null, null, '2018-05-17 10:53:54', 'test', '启用');
INSERT INTO `sys_dic_key_list` VALUES ('60b96a85-b671-4295-afc3-efc2e263026d', '60122aa1-9b97-4075-83c6-861382e88f0f', 'listItem', '0', '2018-12-11 22:15:26', 'test', null, null, '2018-12-11 23:23:00', 'test', '列表项');
INSERT INTO `sys_dic_key_list` VALUES ('616a730f-ba2f-4eed-9571-b2b9ef042311', '0c3f5728-1fe0-4861-9720-354827069d1d', 'requestGet', '1', '2018-11-10 10:14:32', 'test', null, null, '2018-11-11 12:05:51', 'test', 'requestGet');
INSERT INTO `sys_dic_key_list` VALUES ('63d8faa3-884b-42f5-8d0a-bb4d533d43aa', '99313fa6-3004-42d5-ab51-5edc8dd25541', '安徽', '1', '2018-05-22 18:23:13', 'test', null, null, '2018-05-22 18:23:13', 'test', '安徽');
INSERT INTO `sys_dic_key_list` VALUES ('63f374bf-9a18-43d2-a3e6-d3f61a6aa016', '99313fa6-3004-42d5-ab51-5edc8dd25541', '西藏', '28', '2018-05-22 18:26:40', 'test', null, null, '2018-05-22 18:26:40', 'test', '西藏');
INSERT INTO `sys_dic_key_list` VALUES ('645f0c4a-94bb-4fad-9753-66d4a485d5d4', '6ae40ad7-5d61-4cec-a93e-77aedda734e8', 'rompie', '3', '2018-05-22 18:47:44', 'test', null, null, '2018-05-23 13:39:06', 'test', '环形图');
INSERT INTO `sys_dic_key_list` VALUES ('6c85d5a2-2180-4225-87cb-1676f6c6abc6', '6516a59c-b56e-43c6-a172-55c4784ceec3', 'infographic', '2', '2018-05-22 17:44:30', 'test', null, null, '2018-05-22 17:44:37', 'test', '图表');
INSERT INTO `sys_dic_key_list` VALUES ('74fb9b66-487c-4775-a577-c0e55768a506', '6516a59c-b56e-43c6-a172-55c4784ceec3', 'purple-passion', '9', '2018-05-22 17:58:55', 'test', null, null, '2018-05-22 17:58:55', 'test', '紫色激情');
INSERT INTO `sys_dic_key_list` VALUES ('758cf8cc-9d80-4e1a-b7ff-0c088d77645a', '99313fa6-3004-42d5-ab51-5edc8dd25541', '江西', '17', '2018-05-22 18:25:22', 'test', null, null, '2018-05-22 18:25:22', 'test', '江西');
INSERT INTO `sys_dic_key_list` VALUES ('7c7bd195-2f8f-4280-8255-e446d333a4f9', '99313fa6-3004-42d5-ab51-5edc8dd25541', '山东', '21', '2018-05-22 18:25:58', 'test', null, null, '2018-05-22 18:25:58', 'test', '山东');
INSERT INTO `sys_dic_key_list` VALUES ('7d41c4ad-bb00-4858-b5a7-3c2671a87ed5', '60122aa1-9b97-4075-83c6-861382e88f0f', 'nextPage', '0', '2018-12-11 23:23:19', 'test', null, null, '2018-12-11 23:23:27', 'test', '下一页');
INSERT INTO `sys_dic_key_list` VALUES ('7d5c1b1b-b6cb-4f58-8e13-604f3f4eea82', '99313fa6-3004-42d5-ab51-5edc8dd25541', '四川', '26', '2018-05-22 18:26:26', 'test', null, null, '2018-05-22 18:26:26', 'test', '四川');
INSERT INTO `sys_dic_key_list` VALUES ('7f506a1b-0d35-4e0d-b067-aa086a7d9096', '6ae40ad7-5d61-4cec-a93e-77aedda734e8', 'nanpie', '8', '2018-05-31 11:57:28', 'test', null, null, '2018-05-31 11:57:40', 'test', '南丁格尔');
INSERT INTO `sys_dic_key_list` VALUES ('7faf9a5f-da84-4b26-8d9c-8f35920988f4', '230ac982-bdb7-44d9-91fa-8641d25d3cf1', 'next_a_page', '2', '2018-11-28 07:00:27', 'test', null, null, '2018-11-28 07:03:53', 'test', '翻页地址');
INSERT INTO `sys_dic_key_list` VALUES ('8a727226-5173-4005-832e-4615f83238ae', '6516a59c-b56e-43c6-a172-55c4784ceec3', 'halloween', '10', '2018-05-22 17:58:29', 'test', null, null, '2018-05-22 18:43:05', 'test', '万圣节');
INSERT INTO `sys_dic_key_list` VALUES ('8d317e87-4f95-4934-8fbb-431ef5f9b74e', '99313fa6-3004-42d5-ab51-5edc8dd25541', '广东', '5', '2018-05-22 18:23:41', 'test', null, null, '2018-05-22 18:23:41', 'test', '广东');
INSERT INTO `sys_dic_key_list` VALUES ('90e28afd-9879-4b64-bd1b-96820c7abe95', '99313fa6-3004-42d5-ab51-5edc8dd25541', '广西', '6', '2018-05-22 18:23:49', 'test', null, null, '2018-05-22 18:23:49', 'test', '广西');
INSERT INTO `sys_dic_key_list` VALUES ('91c1aee6-fbb6-4b0b-bc65-12ca46c8d530', '6ae40ad7-5d61-4cec-a93e-77aedda734e8', 'pie', '1', '2018-05-21 17:22:33', 'test', null, null, '2018-05-23 13:51:59', 'test', '标准饼图');
INSERT INTO `sys_dic_key_list` VALUES ('945efe4a-30bc-4c0c-8960-7e5fd918f684', '99313fa6-3004-42d5-ab51-5edc8dd25541', '辽宁', '18', '2018-05-22 18:25:28', 'test', null, null, '2018-05-22 18:25:28', 'test', '辽宁');
INSERT INTO `sys_dic_key_list` VALUES ('95752378-6266-4f44-a739-aa0321bb17e1', '99313fa6-3004-42d5-ab51-5edc8dd25541', '海南', '8', '2018-05-22 18:24:04', 'test', null, null, '2018-05-22 18:24:04', 'test', '海南');
INSERT INTO `sys_dic_key_list` VALUES ('965316a0-ef8d-4073-94b2-57c3ec6a93b3', '230ac982-bdb7-44d9-91fa-8641d25d3cf1', 'detial_a_type', '2', '2018-11-28 07:03:30', 'test', null, null, '2018-11-28 07:03:30', 'test', '详细页地址');
INSERT INTO `sys_dic_key_list` VALUES ('9ab1291f-7813-4c6d-8620-dc080208cbd1', '99313fa6-3004-42d5-ab51-5edc8dd25541', '河南', '10', '2018-05-22 18:24:19', 'test', null, null, '2018-05-22 18:24:19', 'test', '河南');
INSERT INTO `sys_dic_key_list` VALUES ('9bd41307-496b-4960-805d-c8600042668a', '99313fa6-3004-42d5-ab51-5edc8dd25541', '山西', '23', '2018-05-22 18:26:05', 'test', null, null, '2018-05-22 18:26:05', 'test', '山西');
INSERT INTO `sys_dic_key_list` VALUES ('a3241123-b1e4-424f-aa10-1091a77c3faa', '6516a59c-b56e-43c6-a172-55c4784ceec3', 'macarons', '3', '2018-05-22 17:45:36', 'test', null, null, '2018-05-22 17:45:36', 'test', '通心粉');
INSERT INTO `sys_dic_key_list` VALUES ('a7b93f75-b092-42fe-a277-f2a5af426dba', '6516a59c-b56e-43c6-a172-55c4784ceec3', 'dark', '1', '2018-05-22 17:43:52', 'test', null, null, '2018-05-22 17:43:52', 'test', '黑暗的');
INSERT INTO `sys_dic_key_list` VALUES ('aeb14cde-f221-40fd-bb19-22087e7ffbc6', '6ba17c34-8d1c-4c22-a37e-d4388f5efcce', 'senior', '3', '2018-05-17 10:56:52', 'test', null, null, '2018-05-17 10:56:52', 'test', '高中');
INSERT INTO `sys_dic_key_list` VALUES ('aecac7cf-0161-43cd-9e58-b0b37c7dfa88', '0c3f5728-1fe0-4861-9720-354827069d1d', 'ie', '3', '2018-11-10 10:15:54', 'test', null, null, '2018-11-10 10:15:54', 'test', 'webdriver ie');
INSERT INTO `sys_dic_key_list` VALUES ('af8b1bb2-2b43-4637-b29e-4774ad9dae06', '99313fa6-3004-42d5-ab51-5edc8dd25541', '青海', '20', '2018-05-22 18:25:52', 'test', null, null, '2018-05-22 18:25:52', 'test', '青海');
INSERT INTO `sys_dic_key_list` VALUES ('b1010616-7747-48a5-ba90-51ab2f4fdd68', '6ae40ad7-5d61-4cec-a93e-77aedda734e8', 'tbar', '9', '2018-05-31 12:05:30', 'test', null, null, '2018-05-31 12:05:30', 'test', '条形图');
INSERT INTO `sys_dic_key_list` VALUES ('b4ca447b-cdbe-4df9-9c7a-f3fbcd34b51a', '99313fa6-3004-42d5-ab51-5edc8dd25541', '云南', '30', '2018-05-22 18:26:54', 'test', null, null, '2018-05-22 18:26:54', 'test', '云南');
INSERT INTO `sys_dic_key_list` VALUES ('b5252753-f31c-44e1-9992-f969ecf2fee9', '7c9f2411-82b5-4187-81ca-395e5709db52', '0', '2', '2018-05-17 10:54:12', 'test', null, null, '2018-05-17 10:54:12', 'test', '停用');
INSERT INTO `sys_dic_key_list` VALUES ('b62edd8e-4a19-40fc-ac30-67d843721b23', '6516a59c-b56e-43c6-a172-55c4784ceec3', 'essos', '8', '2018-05-22 17:58:08', 'test', null, null, '2018-05-22 17:58:08', 'test', '厄索斯');
INSERT INTO `sys_dic_key_list` VALUES ('ba29343a-e603-43f8-9c4e-6f87073d5196', '99313fa6-3004-42d5-ab51-5edc8dd25541', '新疆', '29', '2018-05-22 18:26:47', 'test', null, null, '2018-05-22 18:26:47', 'test', '新疆');
INSERT INTO `sys_dic_key_list` VALUES ('bac0192c-4536-4273-992a-d85149b323d7', '230ac982-bdb7-44d9-91fa-8641d25d3cf1', 'text', '1', '2018-11-28 06:59:22', 'test', null, null, '2018-11-28 06:59:22', 'test', '项相');
INSERT INTO `sys_dic_key_list` VALUES ('c3f3aed1-ed16-42c3-8793-5fdca9962379', '60122aa1-9b97-4075-83c6-861382e88f0f', 'lxml', '2', '2018-11-29 21:53:03', 'test', null, null, '2018-11-29 21:53:03', 'test', '获取后直接返回');
INSERT INTO `sys_dic_key_list` VALUES ('c76ba385-84e5-4bb7-8d9a-70510e7c4514', '0c3f5728-1fe0-4861-9720-354827069d1d', 'BeautifulSoup', '0', '2018-12-15 10:56:44', 'test', null, null, '2018-12-15 10:56:44', 'test', 'BeautifulSoup');
INSERT INTO `sys_dic_key_list` VALUES ('cbde69e4-83f1-4e90-8fe7-dfd10dcda96e', '230ac982-bdb7-44d9-91fa-8641d25d3cf1', 'img_type', '3', '2018-11-28 07:00:04', 'test', null, null, '2018-11-28 07:04:02', 'test', '图片');
INSERT INTO `sys_dic_key_list` VALUES ('cc1cb607-0e90-429e-81dc-aaea80afc056', '99313fa6-3004-42d5-ab51-5edc8dd25541', '陕西', '24', '2018-05-22 18:26:12', 'test', null, null, '2018-05-22 18:26:12', 'test', '陕西');
INSERT INTO `sys_dic_key_list` VALUES ('ce9cb5c6-ffd3-4feb-b98c-b02b5bf63094', '99313fa6-3004-42d5-ab51-5edc8dd25541', '甘肃', '4', '2018-05-22 18:23:34', 'test', null, null, '2018-05-22 18:23:34', 'test', '甘肃');
INSERT INTO `sys_dic_key_list` VALUES ('d3cf7012-140d-435b-88a6-347d0979cc60', '99313fa6-3004-42d5-ab51-5edc8dd25541', '湖南', '14', '2018-05-22 18:25:01', 'test', null, null, '2018-05-22 18:25:01', 'test', '湖南');
INSERT INTO `sys_dic_key_list` VALUES ('d698fccf-8ca2-4846-b73f-2aba6e7f8c2b', '53af2bd0-0487-4517-bbb0-ca8dcf3f0a3f', '男', '1', '2018-05-17 10:46:21', 'test', null, null, '2019-07-10 08:00:15', 'test', '男');
INSERT INTO `sys_dic_key_list` VALUES ('d88768fe-223c-4149-af02-add032714548', '60122aa1-9b97-4075-83c6-861382e88f0f', 'strSplit', '5', '2018-11-29 22:16:48', 'test', null, null, '2018-11-29 22:16:48', 'test', '字符串切割');
INSERT INTO `sys_dic_key_list` VALUES ('da9cc549-b778-48aa-910b-fbeafecad935', '53af2bd0-0487-4517-bbb0-ca8dcf3f0a3f', '女', '2', '2018-05-17 10:51:30', 'test', null, null, '2019-07-10 08:00:23', 'test', '女');
INSERT INTO `sys_dic_key_list` VALUES ('db35bf79-2f33-415c-88b4-4bd7cf2850da', '60122aa1-9b97-4075-83c6-861382e88f0f', 'strAppendAfter', '6', '2018-11-29 21:56:31', 'test', null, null, '2018-11-29 22:14:36', 'test', '后拼接');
INSERT INTO `sys_dic_key_list` VALUES ('dd5cdf5a-896f-4ce9-b714-25d554a57241', '99313fa6-3004-42d5-ab51-5edc8dd25541', '贵州', '7', '2018-05-22 18:23:56', 'test', null, null, '2018-05-22 18:23:56', 'test', '贵州');
INSERT INTO `sys_dic_key_list` VALUES ('dd7c7cb2-d3dd-4c11-b66b-beec823713fc', '6ae40ad7-5d61-4cec-a93e-77aedda734e8', 'map', '2', '2018-05-22 18:20:52', 'test', null, null, '2018-05-23 13:52:05', 'test', '地图');
INSERT INTO `sys_dic_key_list` VALUES ('dee93ef2-049d-454c-98af-2062fe72ddbb', '60122aa1-9b97-4075-83c6-861382e88f0f', 'strAppendbefor', '6', '2018-11-29 22:15:04', 'test', null, null, '2018-11-29 22:15:35', 'test', '字符串前拼接');
INSERT INTO `sys_dic_key_list` VALUES ('df9dfc99-c90a-4811-980f-07fea0ec3123', '99313fa6-3004-42d5-ab51-5edc8dd25541', '香港', '36', '2018-05-22 18:27:51', 'test', null, null, '2018-05-22 18:27:51', 'test', '香港');
INSERT INTO `sys_dic_key_list` VALUES ('e6463d2b-8211-4099-8116-d6cd45a0a2fe', '99313fa6-3004-42d5-ab51-5edc8dd25541', '澳门', '37', '2018-05-22 18:28:11', 'test', null, null, '2018-05-22 18:28:11', 'test', '澳门');
INSERT INTO `sys_dic_key_list` VALUES ('e661aa3b-22ab-42e1-a4d3-a60d843d4dfb', '6516a59c-b56e-43c6-a172-55c4784ceec3', 'shine', '4', '2018-05-22 17:46:19', 'test', null, null, '2018-05-22 17:46:19', 'test', '闪耀');
INSERT INTO `sys_dic_key_list` VALUES ('e6b8a0ca-76bd-4a7b-b2e2-dd8a9541fc0f', '6ae40ad7-5d61-4cec-a93e-77aedda734e8', 'line', '4', '2018-05-21 17:22:46', 'test', null, null, '2018-05-24 15:09:10', 'test', '标准折线图');
INSERT INTO `sys_dic_key_list` VALUES ('e7b7f3a6-f7eb-4d2a-b395-80935d3ea528', '6ba17c34-8d1c-4c22-a37e-d4388f5efcce', 'primary', '4', '2018-05-17 11:01:33', 'test', null, null, '2018-05-17 11:01:33', 'test', '小学');
INSERT INTO `sys_dic_key_list` VALUES ('e9ea9bf9-0e48-4d67-be03-dd7f7c966a79', '53af2bd0-0487-4517-bbb0-ca8dcf3f0a3f', '-', '3', '2019-07-10 08:00:01', 'test', null, null, '2019-07-10 08:00:29', 'test', '未知');
INSERT INTO `sys_dic_key_list` VALUES ('ea9260e6-fe33-4df6-a56c-05087e24cf76', '99313fa6-3004-42d5-ab51-5edc8dd25541', '南海诸岛', '34', '2018-05-22 18:27:43', 'test', null, null, '2018-05-22 18:27:43', 'test', '南海诸岛');
INSERT INTO `sys_dic_key_list` VALUES ('eb0733a0-94e1-4ca2-a33e-35d2e302a00a', '6ba17c34-8d1c-4c22-a37e-d4388f5efcce', 'college', '1', '2018-05-17 10:55:34', 'test', null, null, '2018-05-17 10:55:34', 'test', '大学');
INSERT INTO `sys_dic_key_list` VALUES ('ebaccef3-6943-4c90-a2d0-d0a96e4c3582', 'cbe3b397-6149-4e66-a577-69b20ed982a1', 'navigation_bar', '5', '2018-11-29 07:29:37', 'test', null, null, '2018-11-29 07:29:37', 'test', '导航区');
INSERT INTO `sys_dic_key_list` VALUES ('ecb219c1-a2e3-47e2-a127-40790771a3cb', '99313fa6-3004-42d5-ab51-5edc8dd25541', '河北', '9', '2018-05-22 18:24:11', 'test', null, null, '2018-05-22 18:24:32', 'test', '河北');
INSERT INTO `sys_dic_key_list` VALUES ('f2faa8dc-8022-4ed8-b193-3755916714c4', '0c3f5728-1fe0-4861-9720-354827069d1d', 'phantomjs', '5', '2018-11-10 10:17:20', 'test', null, null, '2018-11-10 10:17:20', 'test', 'webdriver phantomjs');
INSERT INTO `sys_dic_key_list` VALUES ('f54cfb34-6345-4bfa-9bc2-36022d65d80f', '0c3f5728-1fe0-4861-9720-354827069d1d', 'requestPost', '2', '2018-11-10 10:14:43', 'test', null, null, '2018-11-11 12:06:02', 'test', 'requestPost');
INSERT INTO `sys_dic_key_list` VALUES ('f565f21e-98b0-4dfa-917b-f4e51cc4e4c2', '0c3f5728-1fe0-4861-9720-354827069d1d', 'chrome', '4', '2018-11-10 10:16:23', 'test', null, null, '2018-11-10 10:16:23', 'test', 'webdriver chrome');
INSERT INTO `sys_dic_key_list` VALUES ('fb006f0e-2604-4449-93e1-53092a2fef21', '6ba17c34-8d1c-4c22-a37e-d4388f5efcce', 'training', '2', '2018-05-17 10:56:27', 'test', null, null, '2018-05-17 10:56:27', 'test', '专科');

-- ----------------------------
-- Table structure for sys_dic_name
-- ----------------------------
DROP TABLE IF EXISTS `sys_dic_name`;
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

-- ----------------------------
-- Records of sys_dic_name
-- ----------------------------
INSERT INTO `sys_dic_name` VALUES ('0c3f5728-1fe0-4861-9720-354827069d1d', '抓数据方式', 'crawler_request_web_mode', '2018-11-10 10:11:10', 'test', null, null, '2018-11-10 10:11:56', 'test', 'selected');
INSERT INTO `sys_dic_name` VALUES ('230ac982-bdb7-44d9-91fa-8641d25d3cf1', '规则种类', 'crawler_ruler_type', '2018-11-28 06:58:04', 'test', null, null, '2018-11-28 06:58:04', 'test', 'selected');
INSERT INTO `sys_dic_name` VALUES ('53af2bd0-0487-4517-bbb0-ca8dcf3f0a3f', '性别', 'gen', '2018-05-16 16:18:29', null, null, null, '2018-05-17 10:34:17', 'test', 'radio');
INSERT INTO `sys_dic_name` VALUES ('60122aa1-9b97-4075-83c6-861382e88f0f', '采集数据项整理方式', 'crawler_ruler_cloumn_type', '2018-11-29 21:47:04', 'test', null, null, '2018-11-29 21:47:04', 'test', 'selected');
INSERT INTO `sys_dic_name` VALUES ('6516a59c-b56e-43c6-a172-55c4784ceec3', '图表主题', 'chartTheme', '2018-05-22 17:43:01', 'test', null, null, '2018-05-22 18:15:34', 'test', 'selected');
INSERT INTO `sys_dic_name` VALUES ('6ae40ad7-5d61-4cec-a93e-77aedda734e8', '图表类型', 'chartType', '2018-05-21 17:22:09', 'test', null, null, '2018-05-22 18:17:17', 'test', 'selected');
INSERT INTO `sys_dic_name` VALUES ('6ba17c34-8d1c-4c22-a37e-d4388f5efcce', '学历', 'education', '2018-05-17 10:55:09', 'test', null, null, '2018-05-22 18:45:09', 'test', 'radio');
INSERT INTO `sys_dic_name` VALUES ('7c9f2411-82b5-4187-81ca-395e5709db52', '状态', 'statue', '2018-05-17 10:53:38', 'test', null, null, '2018-05-17 10:53:38', 'test', 'radio');
INSERT INTO `sys_dic_name` VALUES ('99313fa6-3004-42d5-ab51-5edc8dd25541', '省份', 'province', '2018-05-22 18:21:35', 'test', null, null, '2018-05-22 18:21:35', 'test', 'selected');
INSERT INTO `sys_dic_name` VALUES ('cbe3b397-6149-4e66-a577-69b20ed982a1', '爬虫组种类', 'crawler_group_type', '2018-11-28 06:51:21', 'test', null, null, '2018-11-28 06:51:21', 'test', 'selected');
INSERT INTO `sys_dic_name` VALUES ('f7d67906-6d24-48d4-ad72-8eea33d0795b', '字符集', 'crawler_charset_type', '2018-12-05 23:22:17', 'test', null, null, '2018-12-05 23:22:17', 'test', 'selected');

-- ----------------------------
-- Table structure for sys_dic_porvince_city
-- ----------------------------
DROP TABLE IF EXISTS `sys_dic_porvince_city`;
CREATE TABLE `sys_dic_porvince_city` (
  `PROVINCE` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dic_porvince_city
-- ----------------------------
INSERT INTO `sys_dic_porvince_city` VALUES ('安徽', '安庆市');
INSERT INTO `sys_dic_porvince_city` VALUES ('安徽', '蚌埠市');
INSERT INTO `sys_dic_porvince_city` VALUES ('安徽', '巢湖市');
INSERT INTO `sys_dic_porvince_city` VALUES ('安徽', '池州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('安徽', '滁州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('安徽', '阜阳市');
INSERT INTO `sys_dic_porvince_city` VALUES ('安徽', '合肥市');
INSERT INTO `sys_dic_porvince_city` VALUES ('安徽', '淮北市');
INSERT INTO `sys_dic_porvince_city` VALUES ('安徽', '淮南市');
INSERT INTO `sys_dic_porvince_city` VALUES ('安徽', '黄山市');
INSERT INTO `sys_dic_porvince_city` VALUES ('安徽', '六安市');
INSERT INTO `sys_dic_porvince_city` VALUES ('安徽', '马鞍山市');
INSERT INTO `sys_dic_porvince_city` VALUES ('安徽', '宿州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('安徽', '铜陵市');
INSERT INTO `sys_dic_porvince_city` VALUES ('安徽', '芜湖市');
INSERT INTO `sys_dic_porvince_city` VALUES ('安徽', '宣城市');
INSERT INTO `sys_dic_porvince_city` VALUES ('安徽', '亳州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('北京', '朝阳区');
INSERT INTO `sys_dic_porvince_city` VALUES ('北京', '丰台区');
INSERT INTO `sys_dic_porvince_city` VALUES ('北京', '宣武区');
INSERT INTO `sys_dic_porvince_city` VALUES ('北京', '崇文区');
INSERT INTO `sys_dic_porvince_city` VALUES ('北京', '通州区');
INSERT INTO `sys_dic_porvince_city` VALUES ('北京', '房山区');
INSERT INTO `sys_dic_porvince_city` VALUES ('北京', '大兴区');
INSERT INTO `sys_dic_porvince_city` VALUES ('北京', '门头沟区');
INSERT INTO `sys_dic_porvince_city` VALUES ('北京', '海淀区');
INSERT INTO `sys_dic_porvince_city` VALUES ('北京', '石景山区');
INSERT INTO `sys_dic_porvince_city` VALUES ('北京', '西城区');
INSERT INTO `sys_dic_porvince_city` VALUES ('北京', '东城区');
INSERT INTO `sys_dic_porvince_city` VALUES ('北京', '怀柔区');
INSERT INTO `sys_dic_porvince_city` VALUES ('北京', '延庆县');
INSERT INTO `sys_dic_porvince_city` VALUES ('北京', '密云县');
INSERT INTO `sys_dic_porvince_city` VALUES ('北京', '昌平区');
INSERT INTO `sys_dic_porvince_city` VALUES ('北京', '顺义区');
INSERT INTO `sys_dic_porvince_city` VALUES ('北京', '平谷区');
INSERT INTO `sys_dic_porvince_city` VALUES ('北京', '怀柔区');
INSERT INTO `sys_dic_porvince_city` VALUES ('福建', '福州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('福建', '龙岩市');
INSERT INTO `sys_dic_porvince_city` VALUES ('福建', '南平市');
INSERT INTO `sys_dic_porvince_city` VALUES ('福建', '宁德市');
INSERT INTO `sys_dic_porvince_city` VALUES ('福建', '莆田市');
INSERT INTO `sys_dic_porvince_city` VALUES ('福建', '泉州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('福建', '三明市');
INSERT INTO `sys_dic_porvince_city` VALUES ('福建', '厦门市');
INSERT INTO `sys_dic_porvince_city` VALUES ('福建', '漳州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('甘肃', '白银市');
INSERT INTO `sys_dic_porvince_city` VALUES ('甘肃', '定西市');
INSERT INTO `sys_dic_porvince_city` VALUES ('甘肃', '甘南藏族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('甘肃', '嘉峪关市');
INSERT INTO `sys_dic_porvince_city` VALUES ('甘肃', '金昌市');
INSERT INTO `sys_dic_porvince_city` VALUES ('甘肃', '酒泉市');
INSERT INTO `sys_dic_porvince_city` VALUES ('甘肃', '兰州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('甘肃', '临夏回族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('甘肃', '陇南市');
INSERT INTO `sys_dic_porvince_city` VALUES ('甘肃', '平凉市');
INSERT INTO `sys_dic_porvince_city` VALUES ('甘肃', '庆阳市');
INSERT INTO `sys_dic_porvince_city` VALUES ('甘肃', '天水市');
INSERT INTO `sys_dic_porvince_city` VALUES ('甘肃', '武威市');
INSERT INTO `sys_dic_porvince_city` VALUES ('甘肃', '张掖市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广东', '潮州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广东', '东莞市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广东', '佛山市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广东', '广州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广东', '河源市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广东', '惠州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广东', '江门市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广东', '揭阳市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广东', '茂名市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广东', '梅州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广东', '清远市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广东', '汕头市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广东', '汕尾市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广东', '韶关市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广东', '深圳市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广东', '阳江市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广东', '云浮市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广东', '湛江市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广东', '肇庆市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广东', '中山市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广东', '珠海市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广西', '百色市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广西', '北海市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广西', '崇左市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广西', '防城港市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广西', '桂林市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广西', '贵港市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广西', '河池市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广西', '贺州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广西', '来宾市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广西', '柳州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广西', '南宁市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广西', '钦州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广西', '梧州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('广西', '玉林市');
INSERT INTO `sys_dic_porvince_city` VALUES ('贵州', '安顺市');
INSERT INTO `sys_dic_porvince_city` VALUES ('贵州', '毕节地区');
INSERT INTO `sys_dic_porvince_city` VALUES ('贵州', '贵阳市');
INSERT INTO `sys_dic_porvince_city` VALUES ('贵州', '六盘水市');
INSERT INTO `sys_dic_porvince_city` VALUES ('贵州', '黔东南苗族侗族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('贵州', '黔南布依族苗族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('贵州', '黔西南布依族苗族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('贵州', '铜仁地区');
INSERT INTO `sys_dic_porvince_city` VALUES ('贵州', '遵义市');
INSERT INTO `sys_dic_porvince_city` VALUES ('海南', '东方市');
INSERT INTO `sys_dic_porvince_city` VALUES ('海南', '海口市');
INSERT INTO `sys_dic_porvince_city` VALUES ('海南', '琼海市');
INSERT INTO `sys_dic_porvince_city` VALUES ('海南', '三亚市');
INSERT INTO `sys_dic_porvince_city` VALUES ('海南', '万宁市');
INSERT INTO `sys_dic_porvince_city` VALUES ('海南', '文昌市');
INSERT INTO `sys_dic_porvince_city` VALUES ('海南', '五指山市');
INSERT INTO `sys_dic_porvince_city` VALUES ('海南', '陵水黎族自治县');
INSERT INTO `sys_dic_porvince_city` VALUES ('海南', '报停黎族苗族自治县');
INSERT INTO `sys_dic_porvince_city` VALUES ('海南', '乐东黎族自治县');
INSERT INTO `sys_dic_porvince_city` VALUES ('海南', '昌江黎族自治县');
INSERT INTO `sys_dic_porvince_city` VALUES ('海南', '白沙黎族自治县');
INSERT INTO `sys_dic_porvince_city` VALUES ('海南', '澄迈县');
INSERT INTO `sys_dic_porvince_city` VALUES ('海南', '定安县');
INSERT INTO `sys_dic_porvince_city` VALUES ('海南', '屯昌县');
INSERT INTO `sys_dic_porvince_city` VALUES ('海南', '儋州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('海南', '琼中黎族苗族自治县');
INSERT INTO `sys_dic_porvince_city` VALUES ('河北', '保定市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河北', '沧州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河北', '承德市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河北', '邯郸市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河北', '衡水市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河北', '廊坊市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河北', '秦皇岛市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河北', '石家庄市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河北', '唐山市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河北', '邢台市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河北', '张家口市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河南', '安阳市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河南', '鹤壁市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河南', '焦作市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河南', '开封市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河南', '洛阳市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河南', '南阳市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河南', '平顶山市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河南', '三门峡市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河南', '商丘市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河南', '新乡市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河南', '许昌市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河南', '郑州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河南', '周口市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河南', '驻马店市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河南', '漯河市');
INSERT INTO `sys_dic_porvince_city` VALUES ('河南', '濮阳市');
INSERT INTO `sys_dic_porvince_city` VALUES ('黑龙江', '大庆市');
INSERT INTO `sys_dic_porvince_city` VALUES ('黑龙江', '大兴安岭地区');
INSERT INTO `sys_dic_porvince_city` VALUES ('黑龙江', '哈尔滨市');
INSERT INTO `sys_dic_porvince_city` VALUES ('黑龙江', '鹤岗市');
INSERT INTO `sys_dic_porvince_city` VALUES ('黑龙江', '黑河市');
INSERT INTO `sys_dic_porvince_city` VALUES ('黑龙江', '鸡西市');
INSERT INTO `sys_dic_porvince_city` VALUES ('黑龙江', '佳木斯市');
INSERT INTO `sys_dic_porvince_city` VALUES ('黑龙江', '牡丹江市');
INSERT INTO `sys_dic_porvince_city` VALUES ('黑龙江', '七台河市');
INSERT INTO `sys_dic_porvince_city` VALUES ('黑龙江', '齐齐哈尔市');
INSERT INTO `sys_dic_porvince_city` VALUES ('黑龙江', '双鸭山市');
INSERT INTO `sys_dic_porvince_city` VALUES ('黑龙江', '绥化市');
INSERT INTO `sys_dic_porvince_city` VALUES ('黑龙江', '伊春市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖北', '鄂州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖北', '恩施土家族苗族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖北', '黄冈市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖北', '黄石市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖北', '荆门市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖北', '荆州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖北', '潜江市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖北', '神农架林区');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖北', '十堰市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖北', '随州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖北', '天门市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖北', '武汉市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖北', '仙桃市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖北', '咸宁市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖北', '襄樊市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖北', '孝感市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖北', '宜昌市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖南', '常德市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖南', '长沙市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖南', '郴州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖南', '衡阳市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖南', '怀化市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖南', '娄底市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖南', '邵阳市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖南', '湘潭市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖南', '湘西土家族苗族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖南', '益阳市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖南', '永州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖南', '岳阳市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖南', '张家界市');
INSERT INTO `sys_dic_porvince_city` VALUES ('湖南', '株洲市');
INSERT INTO `sys_dic_porvince_city` VALUES ('吉林', '白城市');
INSERT INTO `sys_dic_porvince_city` VALUES ('吉林', '白山市');
INSERT INTO `sys_dic_porvince_city` VALUES ('吉林', '长春市');
INSERT INTO `sys_dic_porvince_city` VALUES ('吉林', '吉林市');
INSERT INTO `sys_dic_porvince_city` VALUES ('吉林', '辽源市');
INSERT INTO `sys_dic_porvince_city` VALUES ('吉林', '四平市');
INSERT INTO `sys_dic_porvince_city` VALUES ('吉林', '松原市');
INSERT INTO `sys_dic_porvince_city` VALUES ('吉林', '通化市');
INSERT INTO `sys_dic_porvince_city` VALUES ('吉林', '延边朝鲜族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('江苏', '常州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江苏', '淮安市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江苏', '连云港市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江苏', '南京市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江苏', '南通市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江苏', '苏州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江苏', '宿迁市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江苏', '泰州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江苏', '无锡市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江苏', '徐州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江苏', '盐城市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江苏', '扬州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江苏', '镇江市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江西', '抚州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江西', '赣州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江西', '吉安市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江西', '景德镇市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江西', '九江市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江西', '南昌市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江西', '萍乡市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江西', '上饶市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江西', '新余市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江西', '宜春市');
INSERT INTO `sys_dic_porvince_city` VALUES ('江西', '鹰潭市');
INSERT INTO `sys_dic_porvince_city` VALUES ('辽宁', '鞍山市');
INSERT INTO `sys_dic_porvince_city` VALUES ('辽宁', '本溪市');
INSERT INTO `sys_dic_porvince_city` VALUES ('辽宁', '朝阳市');
INSERT INTO `sys_dic_porvince_city` VALUES ('辽宁', '大连市');
INSERT INTO `sys_dic_porvince_city` VALUES ('辽宁', '丹东市');
INSERT INTO `sys_dic_porvince_city` VALUES ('辽宁', '抚顺市');
INSERT INTO `sys_dic_porvince_city` VALUES ('辽宁', '阜新市');
INSERT INTO `sys_dic_porvince_city` VALUES ('辽宁', '葫芦岛市');
INSERT INTO `sys_dic_porvince_city` VALUES ('辽宁', '锦州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('辽宁', '辽阳市');
INSERT INTO `sys_dic_porvince_city` VALUES ('辽宁', '盘锦市');
INSERT INTO `sys_dic_porvince_city` VALUES ('辽宁', '沈阳市');
INSERT INTO `sys_dic_porvince_city` VALUES ('辽宁', '铁岭市');
INSERT INTO `sys_dic_porvince_city` VALUES ('辽宁', '营口市');
INSERT INTO `sys_dic_porvince_city` VALUES ('内蒙古', '阿拉善盟');
INSERT INTO `sys_dic_porvince_city` VALUES ('内蒙古', '巴彦淖尔市');
INSERT INTO `sys_dic_porvince_city` VALUES ('内蒙古', '赤峰市');
INSERT INTO `sys_dic_porvince_city` VALUES ('内蒙古', '鄂尔多斯市');
INSERT INTO `sys_dic_porvince_city` VALUES ('内蒙古', '呼和浩特市');
INSERT INTO `sys_dic_porvince_city` VALUES ('内蒙古', '呼伦贝尔市');
INSERT INTO `sys_dic_porvince_city` VALUES ('内蒙古', '通辽市');
INSERT INTO `sys_dic_porvince_city` VALUES ('内蒙古', '乌海市');
INSERT INTO `sys_dic_porvince_city` VALUES ('内蒙古', '乌兰察布市');
INSERT INTO `sys_dic_porvince_city` VALUES ('内蒙古', '锡林郭勒盟');
INSERT INTO `sys_dic_porvince_city` VALUES ('内蒙古', '兴安盟');
INSERT INTO `sys_dic_porvince_city` VALUES ('内蒙古', '包头市');
INSERT INTO `sys_dic_porvince_city` VALUES ('宁夏', '固原市');
INSERT INTO `sys_dic_porvince_city` VALUES ('宁夏', '石嘴山市');
INSERT INTO `sys_dic_porvince_city` VALUES ('宁夏', '吴忠市');
INSERT INTO `sys_dic_porvince_city` VALUES ('宁夏', '银川市');
INSERT INTO `sys_dic_porvince_city` VALUES ('宁夏', '中卫市');
INSERT INTO `sys_dic_porvince_city` VALUES ('青海', '果洛藏族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('青海', '海北藏族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('青海', '海东地区');
INSERT INTO `sys_dic_porvince_city` VALUES ('青海', '海南藏族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('青海', '海西蒙古族藏族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('青海', '黄南藏族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('青海', '西宁市');
INSERT INTO `sys_dic_porvince_city` VALUES ('青海', '玉树藏族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('山东', '滨州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山东', '德州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山东', '东营市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山东', '菏泽市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山东', '济南市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山东', '济宁市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山东', '莱芜市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山东', '聊城市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山东', '临沂市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山东', '青岛市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山东', '日照市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山东', '泰安市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山东', '威海市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山东', '潍坊市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山东', '烟台市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山东', '枣庄市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山东', '淄博市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山西', '长治市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山西', '大同市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山西', '晋城市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山西', '晋中市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山西', '临汾市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山西', '吕梁市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山西', '朔州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山西', '太原市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山西', '忻州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山西', '阳泉市');
INSERT INTO `sys_dic_porvince_city` VALUES ('山西', '运城市');
INSERT INTO `sys_dic_porvince_city` VALUES ('陕西', '安康市');
INSERT INTO `sys_dic_porvince_city` VALUES ('陕西', '宝鸡市');
INSERT INTO `sys_dic_porvince_city` VALUES ('陕西', '汉中市');
INSERT INTO `sys_dic_porvince_city` VALUES ('陕西', '商洛市');
INSERT INTO `sys_dic_porvince_city` VALUES ('陕西', '铜川市');
INSERT INTO `sys_dic_porvince_city` VALUES ('陕西', '渭南市');
INSERT INTO `sys_dic_porvince_city` VALUES ('陕西', '西安市');
INSERT INTO `sys_dic_porvince_city` VALUES ('陕西', '咸阳市');
INSERT INTO `sys_dic_porvince_city` VALUES ('陕西', '延安市');
INSERT INTO `sys_dic_porvince_city` VALUES ('陕西', '榆林市');
INSERT INTO `sys_dic_porvince_city` VALUES ('上海', '崇明县');
INSERT INTO `sys_dic_porvince_city` VALUES ('上海', '宝山区');
INSERT INTO `sys_dic_porvince_city` VALUES ('上海', '嘉定区');
INSERT INTO `sys_dic_porvince_city` VALUES ('上海', '青浦区');
INSERT INTO `sys_dic_porvince_city` VALUES ('上海', '杨浦区');
INSERT INTO `sys_dic_porvince_city` VALUES ('上海', '浦东新区');
INSERT INTO `sys_dic_porvince_city` VALUES ('上海', '闽北区');
INSERT INTO `sys_dic_porvince_city` VALUES ('上海', '普陀区');
INSERT INTO `sys_dic_porvince_city` VALUES ('上海', '静安区');
INSERT INTO `sys_dic_porvince_city` VALUES ('上海', '黄浦区');
INSERT INTO `sys_dic_porvince_city` VALUES ('上海', '长宁区');
INSERT INTO `sys_dic_porvince_city` VALUES ('上海', '卢湾区');
INSERT INTO `sys_dic_porvince_city` VALUES ('上海', '徐汇区');
INSERT INTO `sys_dic_porvince_city` VALUES ('上海', '闵行区');
INSERT INTO `sys_dic_porvince_city` VALUES ('上海', '松江区');
INSERT INTO `sys_dic_porvince_city` VALUES ('上海', '奉贤区');
INSERT INTO `sys_dic_porvince_city` VALUES ('上海', '虹口区');
INSERT INTO `sys_dic_porvince_city` VALUES ('上海', '南汇区');
INSERT INTO `sys_dic_porvince_city` VALUES ('上海', '金山区');
INSERT INTO `sys_dic_porvince_city` VALUES ('四川', '阿坝藏族羌族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('四川', '巴中市');
INSERT INTO `sys_dic_porvince_city` VALUES ('四川', '成都市');
INSERT INTO `sys_dic_porvince_city` VALUES ('四川', '达州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('四川', '德阳市');
INSERT INTO `sys_dic_porvince_city` VALUES ('四川', '甘孜藏族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('四川', '广安市');
INSERT INTO `sys_dic_porvince_city` VALUES ('四川', '广元市');
INSERT INTO `sys_dic_porvince_city` VALUES ('四川', '乐山市');
INSERT INTO `sys_dic_porvince_city` VALUES ('四川', '凉山彝族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('四川', '绵阳市');
INSERT INTO `sys_dic_porvince_city` VALUES ('四川', '南充市');
INSERT INTO `sys_dic_porvince_city` VALUES ('四川', '内江市');
INSERT INTO `sys_dic_porvince_city` VALUES ('四川', '攀枝花市');
INSERT INTO `sys_dic_porvince_city` VALUES ('四川', '遂宁市');
INSERT INTO `sys_dic_porvince_city` VALUES ('四川', '雅安市');
INSERT INTO `sys_dic_porvince_city` VALUES ('四川', '宜宾市');
INSERT INTO `sys_dic_porvince_city` VALUES ('四川', '资阳市');
INSERT INTO `sys_dic_porvince_city` VALUES ('四川', '自贡市');
INSERT INTO `sys_dic_porvince_city` VALUES ('四川', '眉山市');
INSERT INTO `sys_dic_porvince_city` VALUES ('四川', '泸州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('天津', '宝坻区');
INSERT INTO `sys_dic_porvince_city` VALUES ('天津', '武清区');
INSERT INTO `sys_dic_porvince_city` VALUES ('天津', '宁河县');
INSERT INTO `sys_dic_porvince_city` VALUES ('天津', '北辰区');
INSERT INTO `sys_dic_porvince_city` VALUES ('天津', '汉沽区');
INSERT INTO `sys_dic_porvince_city` VALUES ('天津', '红桥区');
INSERT INTO `sys_dic_porvince_city` VALUES ('天津', '河北区');
INSERT INTO `sys_dic_porvince_city` VALUES ('天津', '河东区');
INSERT INTO `sys_dic_porvince_city` VALUES ('天津', '东丽区');
INSERT INTO `sys_dic_porvince_city` VALUES ('天津', '河西区');
INSERT INTO `sys_dic_porvince_city` VALUES ('天津', '和平区');
INSERT INTO `sys_dic_porvince_city` VALUES ('天津', '南开区');
INSERT INTO `sys_dic_porvince_city` VALUES ('天津', '西青区');
INSERT INTO `sys_dic_porvince_city` VALUES ('天津', '津南区');
INSERT INTO `sys_dic_porvince_city` VALUES ('天津', '塘沽区');
INSERT INTO `sys_dic_porvince_city` VALUES ('天津', '静海县');
INSERT INTO `sys_dic_porvince_city` VALUES ('天津', '大港区');
INSERT INTO `sys_dic_porvince_city` VALUES ('西藏', '阿里地区');
INSERT INTO `sys_dic_porvince_city` VALUES ('西藏', '昌都地区');
INSERT INTO `sys_dic_porvince_city` VALUES ('西藏', '拉萨市');
INSERT INTO `sys_dic_porvince_city` VALUES ('西藏', '林芝地区');
INSERT INTO `sys_dic_porvince_city` VALUES ('西藏', '那曲地区');
INSERT INTO `sys_dic_porvince_city` VALUES ('西藏', '日喀则地区');
INSERT INTO `sys_dic_porvince_city` VALUES ('西藏', '山南地区');
INSERT INTO `sys_dic_porvince_city` VALUES ('新疆', '阿克苏地区');
INSERT INTO `sys_dic_porvince_city` VALUES ('新疆', '阿拉尔市');
INSERT INTO `sys_dic_porvince_city` VALUES ('新疆', '阿勒泰地区');
INSERT INTO `sys_dic_porvince_city` VALUES ('新疆', '巴音郭楞蒙古自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('新疆', '博尔塔拉蒙古自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('新疆', '昌吉回族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('新疆', '哈密地区');
INSERT INTO `sys_dic_porvince_city` VALUES ('新疆', '和田地区');
INSERT INTO `sys_dic_porvince_city` VALUES ('新疆', '喀什地区');
INSERT INTO `sys_dic_porvince_city` VALUES ('新疆', '克拉玛依市');
INSERT INTO `sys_dic_porvince_city` VALUES ('新疆', '克孜勒苏柯尔克孜自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('新疆', '石河子市');
INSERT INTO `sys_dic_porvince_city` VALUES ('新疆', '塔城地区');
INSERT INTO `sys_dic_porvince_city` VALUES ('新疆', '吐鲁番地区');
INSERT INTO `sys_dic_porvince_city` VALUES ('新疆', '乌鲁木齐市');
INSERT INTO `sys_dic_porvince_city` VALUES ('新疆', '伊犁哈萨克自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('新疆', '五家渠市');
INSERT INTO `sys_dic_porvince_city` VALUES ('云南', '保山市');
INSERT INTO `sys_dic_porvince_city` VALUES ('云南', '楚雄彝族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('云南', '大理白族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('云南', '德宏傣族景颇族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('云南', '迪庆藏族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('云南', '红河哈尼族彝族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('云南', '昆明市');
INSERT INTO `sys_dic_porvince_city` VALUES ('云南', '丽江市');
INSERT INTO `sys_dic_porvince_city` VALUES ('云南', '临沧市');
INSERT INTO `sys_dic_porvince_city` VALUES ('云南', '怒江傈僳族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('云南', '普洱市');
INSERT INTO `sys_dic_porvince_city` VALUES ('云南', '曲靖市');
INSERT INTO `sys_dic_porvince_city` VALUES ('云南', '文山壮族苗族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('云南', '西双版纳傣族自治州');
INSERT INTO `sys_dic_porvince_city` VALUES ('云南', '玉溪市');
INSERT INTO `sys_dic_porvince_city` VALUES ('云南', '昭通市');
INSERT INTO `sys_dic_porvince_city` VALUES ('浙江', '杭州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('浙江', '湖州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('浙江', '嘉兴市');
INSERT INTO `sys_dic_porvince_city` VALUES ('浙江', '金华市');
INSERT INTO `sys_dic_porvince_city` VALUES ('浙江', '丽水市');
INSERT INTO `sys_dic_porvince_city` VALUES ('浙江', '宁波市');
INSERT INTO `sys_dic_porvince_city` VALUES ('浙江', '绍兴市');
INSERT INTO `sys_dic_porvince_city` VALUES ('浙江', '台州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('浙江', '温州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('浙江', '舟山市');
INSERT INTO `sys_dic_porvince_city` VALUES ('浙江', '衢州市');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '城口县');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '巫溪县');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '开县');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '云阳县');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '奉节县');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '巫山县');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '万州区');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '梁平县');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '忠县');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '垫江县');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '石柱土家族自治县');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '潼南县');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '合川区');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '长寿区');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '丰都县');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '北碚区');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '渝北区');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '铜梁县');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '大足县');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '璧山县');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '沙坪坝区');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '江北区');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '赔陵区');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '渝中区');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '南岸区');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '荣昌县');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '双桥区');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '九龙坡区');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '大渡口区');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '南岸区');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '巴南区');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '永川区');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '江津区');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '万盛区');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '南川区');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '武隆县');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '彭水苗族土家族自治县');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '黔江区');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '酉阳土家族苗族自治县');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '秀山土家族苗族自治县');
INSERT INTO `sys_dic_porvince_city` VALUES ('重庆', '綦江县');
INSERT INTO `sys_dic_porvince_city` VALUES ('台湾', '台湾');
INSERT INTO `sys_dic_porvince_city` VALUES ('香港', '香港');
INSERT INTO `sys_dic_porvince_city` VALUES ('澳门', '澳门');
INSERT INTO `sys_dic_porvince_city` VALUES ('海南', '三沙市');

-- ----------------------------
-- Table structure for sys_file_upload_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_file_upload_info`;
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

-- ----------------------------
-- Records of sys_file_upload_info
-- ----------------------------
INSERT INTO `sys_file_upload_info` VALUES ('b020bbed-4a19-476b-b6af-9c3ebeabd804', '2018-03-11 11:33:33', 'test', null, null, 'spring文档剽窃.xlsx', './uploadfile/spring文档剽窃.xlsx', '32167', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '2019-07-16 13:11:17', 'test');

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
  `checked` tinyint(1) DEFAULT NULL COMMENT '显示图标样式',
  `home_page` tinyint(1) DEFAULT NULL COMMENT '首页',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu_info
-- ----------------------------
INSERT INTO `sys_menu_info` VALUES ('02E002A9D3F9BB1EFCE1B0D4AA333116', null, '4C2700CEB8CDAF0C2E3C3AAD9C849DD6', '代码生成', 'fa fa-odnoklassniki', '5', '/pages/dbms/code/index.html', '', 'system', '2019-01-18 20:42:06', 'test', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('0515134492DE20262B4E731F46767A9D', null, '4c87efc1-6447-11e7-a272-0025d3a93601', '单表查询1', 'fa  fa-database', '8', 'pages/zhcx/search/more.html', '', null, null, 'system', null, '0', null, null, null, null);
INSERT INTO `sys_menu_info` VALUES ('102F0D6B58817A998413C6CA1EEC8CBB', null, '0', '爬虫管理', 'fa fa-cloud-download', '4', '', '爬虫管理', 'system', '2017-07-14 09:44:42', 'system', null, '0', '菜单', 'fa fa-cloud-download', null, null);
INSERT INTO `sys_menu_info` VALUES ('10960844B57C7A55C9F72C5CED6FD1B8', null, '4c87efc1-6447-11e7-a272-0025d3a93601', '数据库表种类', 'fa fa-cubes', '2', 'pages/dbms/type/index.html', '数据库表种类', 'test', null, 'system', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('12948BF54A0D7E3481E0043ABBA044DD', null, '4c87efc1-6447-11e7-a272-0025d3a93601', '单表查询2', 'fa fa-odnoklassniki-square', '9', '/pages/zhcx/search/more2.html', '', 'test', null, 'test', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('20218BB89AFCD426C8C0C4E9E738E0D2', null, '0', '关系图管理', 'fa  fa-desktop', '3', '/pages/charts/db/index.html', '', 'system', '2018-05-30 06:31:28', 'system', null, '0', null, null, null, null);
INSERT INTO `sys_menu_info` VALUES ('2146130099979805B1DE119DCB3BA551', null, '4c8820df-6447-11e7-a272-0025d3a93601', '用户管理', 'fa  fa-sitemap', '5', 'pages/softm/userbase/index.html', '项目权限', null, null, 'system', null, '0', null, null, null, null);
INSERT INTO `sys_menu_info` VALUES ('24898AE2D779238DC4AA443CE053C6AC', null, '4C2700CEB8CDAF0C2E3C3AAD9C849DD6', '短息测试', 'fa fa-mobile-phone', '0', 'pages/user/sendmail/phone.html', '短息测试', null, null, 'system', null, '0', '菜单', 'fa fa-mobile-phone', null, null);
INSERT INTO `sys_menu_info` VALUES ('263A71AB62EFD2B36A5A11BAAC186409', null, '102F0D6B58817A998413C6CA1EEC8CBB', '用户采集程序管理', 'fa fa-hand-grab-o', '4', '/pages/crawler/code/index.html', '', 'system', '2018-11-05 05:40:24', 'test', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('27F287EF5FED6D51CEB80F4A243AD5C1', null, '20218BB89AFCD426C8C0C4E9E738E0D2', '节点属性配置', 'fa fa-gg', '2', '/pages/neo4j/nodecols/index.html', '', 'test', null, 'test', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('2D735A94084C088C781036FE3573FDAE', null, '102F0D6B58817A998413C6CA1EEC8CBB', '错误日志', 'fa fa-file-archive-o', '3', '/pages/crawler/errmsg/index.html', '采集时错误的网页信息', 'test', null, 'test', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('3426563EEE8D9FD06EC7F33A1EF22963', null, '4c87efc1-6447-11e7-a272-0025d3a93601', '多表查询2', 'fa fa-hand-rock-o', '7', '/templates/zhcx/search/index2', '', 'test', null, 'test', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('36882FDCB61EF181592FEE79B0462BDA', null, '102F0D6B58817A998413C6CA1EEC8CBB', '结果配置', 'fa fa-file-code-o', '2', 'pages/crawler/result/result.html', '代码管理', 'test', null, 'system', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('39FC2A8FCCCBA07F109261B26A5F5E66', null, '4C2700CEB8CDAF0C2E3C3AAD9C849DD6', '邮箱测试', 'fa fa-envelope', '1', 'pages/user/sendmail/mail.html', '邮箱测试', null, null, 'system', null, '0', '菜单', 'fa fa-envelope', null, null);
INSERT INTO `sys_menu_info` VALUES ('43C35747E9D95AD6576B22547F660150', null, '102F0D6B58817A998413C6CA1EEC8CBB', '规则管理', 'fa fa-hourglass-end', '1', '/pages/crawler/rule/index.html', '', 'test', null, 'test', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('4C2700CEB8CDAF0C2E3C3AAD9C849DD6', null, '0', '系统工具', 'fa fa-gg', '5', '', '', 'system', '2017-09-15 12:03:28', 'system', null, '0', '菜单', 'fa fa-gg', null, null);
INSERT INTO `sys_menu_info` VALUES ('4c87efc1-6447-11e7-a272-0025d3a93601', '99c74ada3a1411e6bdcb10bf48e1d36a', '0', '数据库管理', 'fa  fa-database', '2', 'pages/error/404.html', '#', '佘赐雄', null, '超级管理员', null, '0', '菜单', 'fa  fa-database', null, null);
INSERT INTO `sys_menu_info` VALUES ('4c87fb94-6447-11e7-a272-0025d3a93601', null, '4c8820df-6447-11e7-a272-0025d3a93601', '系统配置', 'fa  fa-navicon', '1', 'pages/softm/sysmenu/system_function_ztree.html', '系统导航功能1', null, null, null, null, '0', null, null, null, null);
INSERT INTO `sys_menu_info` VALUES ('4c87fd09-6447-11e7-a272-0025d3a93601', null, '4c87efc1-6447-11e7-a272-0025d3a93601', '数据库连接', 'fa  fa-plug', '1', 'pages/dbms/addr/index.html', '动态链接数据库', 'test', null, '超级管理员', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('4c87fe75-6447-11e7-a272-0025d3a93601', '99c74ada3a1411e6bdcb10bf48e1d36a', '2c90838f57c6e02e0157c729a86b000b', '数据库备份', 'glyphicon glyphicon-paste', '0', 'pages/error/404.html', '数据备份、数据还原', null, null, '超级管理员', null, '0', '菜单', 'glyphicon glyphicon-paste', null, null);
INSERT INTO `sys_menu_info` VALUES ('4c87ffe1-6447-11e7-a272-0025d3a93601', null, '4c87efc1-6447-11e7-a272-0025d3a93601', '数据表管理', 'fa  fa-table', '3', 'pages/dbms/table/index.html', '数据库表结构', 'test', null, '超级管理员', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('4c881c82-6447-11e7-a272-0025d3a93601', null, '4c8820df-6447-11e7-a272-0025d3a93601', '系统管理', 'fa fa-leaf', '0', 'pages/softm/system/index.html', '#', null, null, 'system', null, '0', null, null, null, null);
INSERT INTO `sys_menu_info` VALUES ('4c8820df-6447-11e7-a272-0025d3a93601', null, '0', '系统管理', 'fa fa-cog', '6', 'pages/error/404.html', '', null, null, '', null, '0', '菜单', 'fa fa-cog', null, null);
INSERT INTO `sys_menu_info` VALUES ('4c882255-6447-11e7-a272-0025d3a93601', null, '4c8820df-6447-11e7-a272-0025d3a93601', '机构管理', 'fa  fa-coffee', '2', 'pages/softm/organization/index.html', '单位组织', null, null, null, null, '0', null, null, null, null);
INSERT INTO `sys_menu_info` VALUES ('635056099B80C8F086E581E7B85ED5E2', null, '20218BB89AFCD426C8C0C4E9E738E0D2', '节点配置', 'fa fa-map-marker', '1', '/pages/neo4j/node/index.html', '', 'system', '2019-01-04 13:34:37', 'test', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('69717BD48B66374F8305B9129F5B09E8', null, '4C2700CEB8CDAF0C2E3C3AAD9C849DD6', 'markdown测试', 'fa fa-hand-lizard-o', '6', 'templates/markdown/index', 'markdown', 'system', '2019-07-16 21:13:05', 'test', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('6D87E4E85774027818352C38FE72B1A6', null, 'FB58ADC2E4533C1039A8EA0CCEAAE0A4', '上传简历2', 'fa fa-hand-scissors-o', '2', '/pages/resume/user/index.html', '', 'test', null, 'test', null, '0', null, null, null, '1');
INSERT INTO `sys_menu_info` VALUES ('6FB525B0FE6ED405436CEF9B8F0697C5', null, '4c87efc1-6447-11e7-a272-0025d3a93601', '系统数据库维护建议', 'fa  fa-database', '5', '/pages/dbms/advice/index.html', '', 'test', null, 'system', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('8414CF2468DC2CF0365BA00D69363F93', null, '20218BB89AFCD426C8C0C4E9E738E0D2', '关系配置', 'fa fa-close', '3', '/pages/neo4j/relation/index.html', '', 'test', null, 'test', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('8842E315CB89A1F2B4EACDD7E84858BB', null, 'ED81B0CEDE0FB3F20259BA1519D15164', '资料查询', 'fa fa-bank', '1', '/pages/share/file/search.html', '资料查询', 'test', null, 'test', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('8AA1F19AACFD6DE73382B9D2F53FD5FA', null, 'FB58ADC2E4533C1039A8EA0CCEAAE0A4', '简历模板1', 'fa fa-hand-stop-o', '1', '/pages/resume/modal/index.html', '', 'test', null, 'test', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('9419DC15C84351C8F038B2B0E5302FEC', null, '4c8820df-6447-11e7-a272-0025d3a93601', '角色与权限管理', 'fa fa-map-marker', '3', 'pages/softm/department/index.html', '单位部门', null, null, 'system', null, '0', null, null, null, null);
INSERT INTO `sys_menu_info` VALUES ('97514FC17A39AEE6815708CD5B5F7E3E', null, '4c87efc1-6447-11e7-a272-0025d3a93601', '查询关键字类型配置', 'fa  fa-database', '0', '/pages/dbms/userindex/index.html', '', 'test', null, 'system', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('9BB8634517FB6EF224AA0FC687714CEF', null, '4c87efc1-6447-11e7-a272-0025d3a93601', '多表查询1', 'fa  fa-database', '6', '/templates/zhcx/search/index', '', 'test', null, 'system', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('9F301D22F416F461045596C9786D0C45', null, '102F0D6B58817A998413C6CA1EEC8CBB', '采集任务', 'fa fa-cloud-download', '0', '/pages/crawler/task/index.html', '', 'test', null, 'system', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('A554CF49625FE55DA199AAA271F957AD', null, '4C2700CEB8CDAF0C2E3C3AAD9C849DD6', '字典管理', 'fa  fa-database', '2', 'pages/softm/dic/index.html', '字典管理', null, null, 'system', null, '0', null, null, null, null);
INSERT INTO `sys_menu_info` VALUES ('A7EF654EB909EAC711988F8E82CB3995', null, 'ED81B0CEDE0FB3F20259BA1519D15164', '失效地址验证', 'fa fa-opencart', '2', '/pages/share/file/links.html', '资料查询', 'test', null, 'test', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('AF7B52BED9BA2A22224EC39FBE0F7C69', null, '4C2700CEB8CDAF0C2E3C3AAD9C849DD6', '文件导入', 'fa  fa-database', '3', 'pages/file/upload/sysfileuploadinfo.html', '文件导入', 'test', null, 'system', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('B0820D770366E897120281EBFDEE276E', null, '4c87efc1-6447-11e7-a272-0025d3a93601', '字段管理', 'fa fa-opencart', '4', '/pages/dbms/column/index.html', '', 'test', null, 'test', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('BE79315D605E839B40288537CE34EF99', null, '4c87efc1-6447-11e7-a272-0025d3a93601', '图表管理', 'fa  fa-database', '10', '/pages/echarts/chart/index.html', '字典管理', 'test', null, 'system', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('D62FF237000A6367A489BC398DBA6B02', null, '20218BB89AFCD426C8C0C4E9E738E0D2', '关系查询', 'fa fa-dot-circle-o', '4', '/pages/neo4j/search/index2.html', '', 'test', null, 'test', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('ED81B0CEDE0FB3F20259BA1519D15164', null, '0', '资料分享', 'fa fa-bell-slash', '1', '/pages/share/', '资料分享', 'system', '2019-03-28 15:18:49', 'test', null, '0', null, null, null, '0');
INSERT INTO `sys_menu_info` VALUES ('FB58ADC2E4533C1039A8EA0CCEAAE0A4', null, '0', '简历管理', 'fa fa-creative-commons', '0', '/resume/user/index.html', '', 'system', '2019-02-28 13:16:18', 'test', null, '0', null, null, null, '0');

-- ----------------------------
-- Table structure for sys_modal_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_modal_info`;
CREATE TABLE `sys_modal_info` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '更新人员',
  `file_paht` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `major` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_modal_info
-- ----------------------------

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
INSERT INTO `sys_organization_info` VALUES ('3CE6C80F33B624C1BB1B016A79083694', 'admin', 'admin', '2018-02-12 16:22:42', null, '1', 'admin', '2018-02-12 16:22:42', 'system');

-- ----------------------------
-- Table structure for sys_plant_bind_conf
-- ----------------------------
DROP TABLE IF EXISTS `sys_plant_bind_conf`;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_plant_bind_conf
-- ----------------------------

-- ----------------------------
-- Table structure for sys_plant_lable_conf
-- ----------------------------
DROP TABLE IF EXISTS `sys_plant_lable_conf`;
CREATE TABLE `sys_plant_lable_conf` (
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bind_uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '按钮类型',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资源功能描述',
  `lable_order` int(11) DEFAULT NULL,
  `more` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '更新人员',
  PRIMARY KEY (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_plant_lable_conf
-- ----------------------------

-- ----------------------------
-- Table structure for sys_plant_lable_dic
-- ----------------------------
DROP TABLE IF EXISTS `sys_plant_lable_dic`;
CREATE TABLE `sys_plant_lable_dic` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_flag` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `key_order` int(11) DEFAULT NULL,
  `parent_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `word` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_plant_lable_dic
-- ----------------------------

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
  `checked` tinyint(1) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_roles_info
-- ----------------------------
INSERT INTO `sys_roles_info` VALUES ('1A5693C0C9E05009D474899A0CF5F19F', 'BD174B512EB1A0B87FF6E6CE6B171393', 'admin', '2018-02-12 16:23:06', null, '1', 'admin', '2019-07-16 12:29:10', 'system', '1');
INSERT INTO `sys_roles_info` VALUES ('7EC06172A9CCD45EBF0952A463F4CF95', '214F6F1048626F0C6792E19BF57C1F07', 'user', '2018-02-23 11:47:25', null, '1', 'user', '2019-05-22 15:30:13', null, '1');
INSERT INTO `sys_roles_info` VALUES ('BEB0D81B918DD968D24D6F95AC15A753', '2476DC8ED9FE9483FB956C2EFEB8E39E', 'test', '2018-02-22 10:59:31', null, '1', 'test', '2019-07-16 12:29:09', 'system', '1');

-- ----------------------------
-- Table structure for sys_roles_jurisdiction_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_jurisdiction_info`;
CREATE TABLE `sys_roles_jurisdiction_info` (
  `menu_id` varchar(36) NOT NULL COMMENT '菜单id',
  `role_id` varchar(36) NOT NULL COMMENT '角色id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT 'system' COMMENT '更新人员',
  `checked` int(11) DEFAULT '0' COMMENT '资源功能描述',
  PRIMARY KEY (`menu_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_roles_jurisdiction_info
-- ----------------------------
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('00F3A8901FD0EF0451CF3CFAD4506D01', '81092EBC8FEF970EDA6656EBD1508368', '2018-03-08 22:13:07', null, null, null, '2018-03-08 22:13:26', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('00F3A8901FD0EF0451CF3CFAD4506D01', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-03-11 11:33:07', null, null, null, '2018-03-11 11:33:09', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('00F3A8901FD0EF0451CF3CFAD4506D01', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-03-08 22:06:58', null, null, null, '2018-03-08 22:06:58', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('02E002A9D3F9BB1EFCE1B0D4AA333116', 'BEB0D81B918DD968D24D6F95AC15A753', null, null, null, null, '2019-01-18 20:45:05', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('0515134492DE20262B4E731F46767A9D', '1A5693C0C9E05009D474899A0CF5F19F', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('0515134492DE20262B4E731F46767A9D', '7EC06172A9CCD45EBF0952A463F4CF95', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('0515134492DE20262B4E731F46767A9D', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-05-30 06:24:34', null, null, null, '2019-01-04 13:35:54', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('102F0D6B58817A998413C6CA1EEC8CBB', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-12 16:23:12', null, null, null, '2018-02-12 16:23:12', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('102F0D6B58817A998413C6CA1EEC8CBB', '4E83F3C688D1D3E86D02F05F8AC74156', '2018-02-23 15:32:25', null, null, null, '2018-02-23 15:32:25', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('102F0D6B58817A998413C6CA1EEC8CBB', '54971E77F847C3FC4EE56003A33B35E8', '2018-02-12 14:45:27', null, null, null, '2018-02-13 11:12:36', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('102F0D6B58817A998413C6CA1EEC8CBB', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-22 10:59:36', null, null, null, '2018-05-30 06:02:01', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('10960844B57C7A55C9F72C5CED6FD1B8', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-23 11:45:12', null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('10960844B57C7A55C9F72C5CED6FD1B8', '4E83F3C688D1D3E86D02F05F8AC74156', '2018-03-06 00:02:39', null, null, null, '2018-03-06 00:02:39', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('10960844B57C7A55C9F72C5CED6FD1B8', '54971E77F847C3FC4EE56003A33B35E8', '2018-02-25 21:56:42', null, null, null, '2018-02-25 21:56:43', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('10960844B57C7A55C9F72C5CED6FD1B8', '7EC06172A9CCD45EBF0952A463F4CF95', '2018-02-23 11:47:32', null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('10960844B57C7A55C9F72C5CED6FD1B8', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-22 11:19:54', null, null, null, '2019-01-04 13:35:51', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('12948BF54A0D7E3481E0043ABBA044DD', '1A5693C0C9E05009D474899A0CF5F19F', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('12948BF54A0D7E3481E0043ABBA044DD', '7EC06172A9CCD45EBF0952A463F4CF95', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('12948BF54A0D7E3481E0043ABBA044DD', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-06-04 15:51:38', null, null, null, '2019-01-04 13:35:54', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('20218BB89AFCD426C8C0C4E9E738E0D2', '1A5693C0C9E05009D474899A0CF5F19F', '2019-01-04 13:42:26', null, null, null, '2019-01-04 13:42:26', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('20218BB89AFCD426C8C0C4E9E738E0D2', '7EC06172A9CCD45EBF0952A463F4CF95', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('20218BB89AFCD426C8C0C4E9E738E0D2', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-05-30 08:03:15', null, null, null, '2019-01-04 13:35:48', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('2146130099979805B1DE119DCB3BA551', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-12 16:23:16', null, null, null, '2018-02-12 16:23:16', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('2146130099979805B1DE119DCB3BA551', '54971E77F847C3FC4EE56003A33B35E8', '2018-02-13 11:12:42', null, null, null, '2018-02-25 21:56:45', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('2146130099979805B1DE119DCB3BA551', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-22 10:59:37', null, null, null, '2018-02-22 10:59:37', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('2146130099979805B1DE119DCB3BA551', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-02-25 21:26:16', null, null, null, '2018-02-25 21:26:16', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('24898AE2D779238DC4AA443CE053C6AC', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-12 16:23:17', null, null, null, '2018-02-12 16:23:17', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('24898AE2D779238DC4AA443CE053C6AC', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-22 10:59:38', null, null, null, '2019-01-04 13:36:06', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('254DD0B66C981B0100796E1C72C5D677', '1A5693C0C9E05009D474899A0CF5F19F', '2018-03-05 20:23:04', null, null, null, '2018-03-05 20:23:04', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('254DD0B66C981B0100796E1C72C5D677', '81092EBC8FEF970EDA6656EBD1508368', '2018-03-06 00:01:21', null, null, null, '2018-03-08 22:13:07', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('254DD0B66C981B0100796E1C72C5D677', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-03-05 20:22:59', null, null, null, '2018-03-11 11:33:07', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('254DD0B66C981B0100796E1C72C5D677', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-03-06 00:01:06', null, null, null, '2018-03-08 22:06:58', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('263A71AB62EFD2B36A5A11BAAC186409', '1A5693C0C9E05009D474899A0CF5F19F', null, null, null, null, '2019-01-14 12:32:05', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('263A71AB62EFD2B36A5A11BAAC186409', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-11-05 05:40:33', null, null, null, '2018-11-05 05:40:33', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('27F287EF5FED6D51CEB80F4A243AD5C1', '1A5693C0C9E05009D474899A0CF5F19F', '2019-01-04 13:42:24', null, null, null, '2019-01-04 13:42:24', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('27F287EF5FED6D51CEB80F4A243AD5C1', '7EC06172A9CCD45EBF0952A463F4CF95', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('27F287EF5FED6D51CEB80F4A243AD5C1', 'BEB0D81B918DD968D24D6F95AC15A753', '2019-01-04 13:35:47', null, null, null, '2019-01-04 13:35:47', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('2CFFD9D78EC73AA9E0F034C890434B04', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-28 22:45:02', null, null, null, '2018-03-03 18:06:21', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('2CFFD9D78EC73AA9E0F034C890434B04', '7EC06172A9CCD45EBF0952A463F4CF95', '2018-02-25 21:53:15', null, null, null, '2018-02-25 21:53:15', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('2CFFD9D78EC73AA9E0F034C890434B04', '81092EBC8FEF970EDA6656EBD1508368', '2018-02-25 21:32:25', null, null, null, '2018-03-08 22:13:26', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('2CFFD9D78EC73AA9E0F034C890434B04', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-25 21:31:47', null, null, null, '2018-03-11 11:33:07', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('2CFFD9D78EC73AA9E0F034C890434B04', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-02-25 21:32:33', null, null, null, '2018-03-08 22:06:58', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('2CFFD9D78EC73AA9E0F034C890434B04', 'DAE3AA13AB893DE1065F0E93FE28BDED', '2018-02-25 21:32:19', null, null, null, '2018-02-25 21:32:19', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('2D735A94084C088C781036FE3573FDAE', '1A5693C0C9E05009D474899A0CF5F19F', null, null, null, null, '2019-01-14 12:32:05', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('2D735A94084C088C781036FE3573FDAE', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-11-05 05:40:32', null, null, null, '2018-11-05 05:40:32', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('31964624594EC568E6C63571BC28E461', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-23 13:30:31', null, null, null, '2018-02-23 13:30:31', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('31964624594EC568E6C63571BC28E461', '4E83F3C688D1D3E86D02F05F8AC74156', '2018-03-06 00:02:39', null, null, null, '2018-03-06 00:02:39', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('31964624594EC568E6C63571BC28E461', '54971E77F847C3FC4EE56003A33B35E8', '2018-02-25 21:56:42', null, null, null, '2018-02-25 21:56:43', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('31964624594EC568E6C63571BC28E461', '7EC06172A9CCD45EBF0952A463F4CF95', '2018-02-23 13:30:40', null, null, null, '2018-02-23 13:30:40', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('31964624594EC568E6C63571BC28E461', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-23 13:27:07', null, null, null, '2018-02-23 13:27:07', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('331823F9994901FDC64F9536B56992A8', '81092EBC8FEF970EDA6656EBD1508368', '2018-03-08 22:07:38', null, null, null, '2018-03-08 22:07:38', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('331823F9994901FDC64F9536B56992A8', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-03-08 22:07:02', null, null, null, '2018-03-08 22:07:02', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('331823F9994901FDC64F9536B56992A8', 'DAE3AA13AB893DE1065F0E93FE28BDED', '2018-03-08 22:07:33', null, null, null, '2018-03-08 22:07:33', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('3426563EEE8D9FD06EC7F33A1EF22963', '7EC06172A9CCD45EBF0952A463F4CF95', null, null, null, null, '2019-01-14 17:56:00', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('3426563EEE8D9FD06EC7F33A1EF22963', 'BEB0D81B918DD968D24D6F95AC15A753', null, null, null, null, '2019-01-14 17:55:54', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('36882FDCB61EF181592FEE79B0462BDA', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-12 16:23:12', null, null, null, '2018-02-12 16:23:12', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('36882FDCB61EF181592FEE79B0462BDA', '4E83F3C688D1D3E86D02F05F8AC74156', '2018-02-23 15:32:25', null, null, null, '2018-02-23 15:32:25', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('36882FDCB61EF181592FEE79B0462BDA', '54971E77F847C3FC4EE56003A33B35E8', '2018-02-12 14:45:27', null, null, null, '2018-02-13 11:12:36', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('36882FDCB61EF181592FEE79B0462BDA', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-22 10:59:36', null, null, null, '2018-02-22 10:59:36', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('39FC2A8FCCCBA07F109261B26A5F5E66', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-12 16:23:17', null, null, null, '2018-02-12 16:23:17', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('39FC2A8FCCCBA07F109261B26A5F5E66', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-22 10:59:38', null, null, null, '2019-01-04 13:36:06', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('3AE20A44CE6F1787FA3E4E95FBB0B6C5', '4E83F3C688D1D3E86D02F05F8AC74156', '2018-02-25 21:53:29', null, null, null, '2018-03-06 00:02:57', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('3AE20A44CE6F1787FA3E4E95FBB0B6C5', '7EC06172A9CCD45EBF0952A463F4CF95', '2018-02-25 21:53:08', null, null, null, '2018-02-25 21:53:08', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('3AE20A44CE6F1787FA3E4E95FBB0B6C5', '81092EBC8FEF970EDA6656EBD1508368', '2018-02-25 21:51:57', null, null, null, '2018-02-25 21:51:57', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('3AE20A44CE6F1787FA3E4E95FBB0B6C5', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-28 22:03:13', null, null, null, '2018-03-05 20:23:15', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('3AE20A44CE6F1787FA3E4E95FBB0B6C5', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-02-25 21:51:51', null, null, null, '2018-03-06 00:01:13', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('3AE20A44CE6F1787FA3E4E95FBB0B6C5', 'DAE3AA13AB893DE1065F0E93FE28BDED', '2018-02-25 21:52:05', null, null, null, '2018-03-06 00:01:28', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('43C35747E9D95AD6576B22547F660150', '1A5693C0C9E05009D474899A0CF5F19F', null, null, null, null, '2019-01-14 12:32:03', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('43C35747E9D95AD6576B22547F660150', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-11-11 20:54:37', null, null, null, '2018-11-11 20:54:37', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4730ECB11853D6FA2797D2627891CB82', 'BEB0D81B918DD968D24D6F95AC15A753', null, null, null, null, '2019-01-17 21:45:20', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('47D31B12F4FFBA3A63FA33592B0B1C41', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-23 13:30:28', null, null, null, '2018-02-23 13:30:28', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('47D31B12F4FFBA3A63FA33592B0B1C41', '7EC06172A9CCD45EBF0952A463F4CF95', '2018-02-23 13:30:42', null, null, null, '2018-02-23 13:30:42', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('47D31B12F4FFBA3A63FA33592B0B1C41', '81092EBC8FEF970EDA6656EBD1508368', '2018-02-25 21:26:39', null, null, null, '2018-02-25 21:26:39', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('47D31B12F4FFBA3A63FA33592B0B1C41', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-23 13:30:21', null, null, null, '2018-02-23 13:30:22', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('47D31B12F4FFBA3A63FA33592B0B1C41', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-02-25 21:26:14', null, null, null, '2018-02-25 21:26:14', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4C2700CEB8CDAF0C2E3C3AAD9C849DD6', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-12 16:23:17', null, null, null, '2018-02-12 16:23:17', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4C2700CEB8CDAF0C2E3C3AAD9C849DD6', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-22 10:59:38', null, null, null, '2018-02-22 10:59:38', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87efc1-6447-11e7-a272-0025d3a93601', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-12 16:23:12', null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87efc1-6447-11e7-a272-0025d3a93601', '4E83F3C688D1D3E86D02F05F8AC74156', '2018-03-06 00:02:39', null, null, null, '2018-03-06 00:02:59', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87efc1-6447-11e7-a272-0025d3a93601', '54971E77F847C3FC4EE56003A33B35E8', '2018-02-12 16:18:11', null, null, null, '2018-02-25 21:56:43', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87efc1-6447-11e7-a272-0025d3a93601', '7EC06172A9CCD45EBF0952A463F4CF95', '2018-02-23 11:47:32', null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87efc1-6447-11e7-a272-0025d3a93601', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-22 10:59:36', null, null, null, '2019-01-04 13:35:56', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87fa16-6447-11e7-a272-0025d3a93601', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-12 16:23:12', null, null, null, '2018-02-12 16:23:12', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87fa16-6447-11e7-a272-0025d3a93601', '4E83F3C688D1D3E86D02F05F8AC74156', '2018-02-23 15:32:25', null, null, null, '2018-02-23 15:32:25', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87fa16-6447-11e7-a272-0025d3a93601', '54971E77F847C3FC4EE56003A33B35E8', '2018-02-12 14:45:27', null, null, null, '2018-02-13 11:12:36', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87fa16-6447-11e7-a272-0025d3a93601', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-22 10:59:36', null, null, null, '2018-02-22 10:59:36', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87fb94-6447-11e7-a272-0025d3a93601', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-12 16:23:11', null, null, null, '2018-03-05 23:59:44', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87fb94-6447-11e7-a272-0025d3a93601', '54971E77F847C3FC4EE56003A33B35E8', '2018-02-12 14:47:45', null, null, null, '2018-02-25 21:56:41', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87fb94-6447-11e7-a272-0025d3a93601', '94CB00CC360FBDE489B42C4FA8E50C60', '2018-02-12 15:02:50', null, null, null, '2018-02-25 21:56:17', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87fb94-6447-11e7-a272-0025d3a93601', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-22 10:59:35', null, null, null, '2018-02-22 10:59:35', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87fb94-6447-11e7-a272-0025d3a93601', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-02-25 21:26:11', null, null, null, '2018-03-08 22:12:43', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87fd09-6447-11e7-a272-0025d3a93601', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-12 16:23:12', null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87fd09-6447-11e7-a272-0025d3a93601', '4E83F3C688D1D3E86D02F05F8AC74156', '2018-03-06 00:02:39', null, null, null, '2018-03-06 00:02:59', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87fd09-6447-11e7-a272-0025d3a93601', '54971E77F847C3FC4EE56003A33B35E8', '2018-02-12 16:18:11', null, null, null, '2018-02-25 21:56:43', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87fd09-6447-11e7-a272-0025d3a93601', '7EC06172A9CCD45EBF0952A463F4CF95', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87fd09-6447-11e7-a272-0025d3a93601', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-22 10:59:36', null, null, null, '2019-01-04 13:35:51', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87ffe1-6447-11e7-a272-0025d3a93601', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-12 16:23:12', null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87ffe1-6447-11e7-a272-0025d3a93601', '4E83F3C688D1D3E86D02F05F8AC74156', '2018-03-06 00:02:39', null, null, null, '2018-03-06 00:02:39', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87ffe1-6447-11e7-a272-0025d3a93601', '54971E77F847C3FC4EE56003A33B35E8', '2018-02-12 16:18:11', null, null, null, '2018-02-25 21:56:43', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87ffe1-6447-11e7-a272-0025d3a93601', '7EC06172A9CCD45EBF0952A463F4CF95', '2018-02-23 11:47:33', null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c87ffe1-6447-11e7-a272-0025d3a93601', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-22 10:59:36', null, null, null, '2019-01-04 13:35:52', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c881551-6447-11e7-a272-0025d3a93601', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-12 16:23:15', null, null, null, '2018-02-12 16:23:15', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c881551-6447-11e7-a272-0025d3a93601', '54971E77F847C3FC4EE56003A33B35E8', '2018-02-12 16:18:16', null, null, null, '2018-02-25 21:56:44', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c881551-6447-11e7-a272-0025d3a93601', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-22 10:59:37', null, null, null, '2018-02-22 10:59:37', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c881551-6447-11e7-a272-0025d3a93601', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-02-25 21:26:15', null, null, null, '2018-03-08 22:14:20', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c881c82-6447-11e7-a272-0025d3a93601', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-12 16:23:11', null, null, null, '2018-02-22 11:00:35', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c881c82-6447-11e7-a272-0025d3a93601', '54971E77F847C3FC4EE56003A33B35E8', '2018-02-12 14:47:45', null, null, null, '2018-02-25 21:56:41', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c881c82-6447-11e7-a272-0025d3a93601', '94CB00CC360FBDE489B42C4FA8E50C60', '2018-02-12 15:02:50', null, null, null, '2018-02-25 21:56:17', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c881c82-6447-11e7-a272-0025d3a93601', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-22 10:59:35', null, null, null, null, null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c881c82-6447-11e7-a272-0025d3a93601', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-02-25 21:26:11', null, null, null, '2018-03-06 00:01:49', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c8820df-6447-11e7-a272-0025d3a93601', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-12 16:23:11', null, null, null, '2018-03-05 23:59:44', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c8820df-6447-11e7-a272-0025d3a93601', '54971E77F847C3FC4EE56003A33B35E8', '2018-02-12 14:47:45', null, null, null, '2018-02-25 21:56:41', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c8820df-6447-11e7-a272-0025d3a93601', '94CB00CC360FBDE489B42C4FA8E50C60', '2018-02-12 15:02:50', null, null, null, '2018-02-25 21:56:17', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c8820df-6447-11e7-a272-0025d3a93601', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-22 10:59:35', null, null, null, '2018-02-22 10:59:35', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c8820df-6447-11e7-a272-0025d3a93601', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-02-25 21:26:11', null, null, null, '2018-03-08 22:12:43', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c882255-6447-11e7-a272-0025d3a93601', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-12 16:23:15', null, null, null, '2018-02-12 16:23:15', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c882255-6447-11e7-a272-0025d3a93601', '54971E77F847C3FC4EE56003A33B35E8', '2018-02-12 16:18:16', null, null, null, '2018-02-25 21:56:44', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c882255-6447-11e7-a272-0025d3a93601', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-22 10:59:37', null, null, null, '2018-02-22 10:59:37', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('4c882255-6447-11e7-a272-0025d3a93601', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-02-25 21:26:15', null, null, null, '2018-02-25 21:26:15', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('50991CCE485F09DAD65A53852D4D8252', '81092EBC8FEF970EDA6656EBD1508368', '2018-03-08 22:07:38', null, null, null, '2018-03-08 22:07:38', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('50991CCE485F09DAD65A53852D4D8252', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-03-08 22:07:02', null, null, null, '2018-03-08 22:07:02', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('50991CCE485F09DAD65A53852D4D8252', 'DAE3AA13AB893DE1065F0E93FE28BDED', '2018-03-08 22:07:33', null, null, null, '2018-03-08 22:07:33', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('5991922F071FD0EEA8E7AD1F77493B8C', 'BEB0D81B918DD968D24D6F95AC15A753', null, null, null, null, null, null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('635056099B80C8F086E581E7B85ED5E2', '1A5693C0C9E05009D474899A0CF5F19F', '2019-01-04 13:42:24', null, null, null, '2019-01-04 13:42:24', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('635056099B80C8F086E581E7B85ED5E2', '7EC06172A9CCD45EBF0952A463F4CF95', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('635056099B80C8F086E581E7B85ED5E2', 'BEB0D81B918DD968D24D6F95AC15A753', '2019-01-04 13:35:46', null, null, null, '2019-01-04 13:35:46', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('65EC730F7B36A4D057F32B81902D1F82', '1A5693C0C9E05009D474899A0CF5F19F', '2018-03-05 20:23:04', null, null, null, '2018-03-05 20:23:04', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('65EC730F7B36A4D057F32B81902D1F82', '81092EBC8FEF970EDA6656EBD1508368', '2018-03-06 00:01:21', null, null, null, '2018-03-08 22:13:07', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('65EC730F7B36A4D057F32B81902D1F82', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-03-05 20:22:59', null, null, null, '2018-03-11 11:33:15', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('65EC730F7B36A4D057F32B81902D1F82', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-03-06 00:01:06', null, null, null, '2018-03-08 22:06:58', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('6615A271F099D2FED98ED12E3E1CAAB9', '4E83F3C688D1D3E86D02F05F8AC74156', '2018-03-06 00:02:56', null, null, null, '2018-03-06 00:02:57', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('6615A271F099D2FED98ED12E3E1CAAB9', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-03-05 20:23:15', null, null, null, '2018-03-05 20:23:15', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('6615A271F099D2FED98ED12E3E1CAAB9', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-03-06 00:01:03', null, null, null, '2018-03-06 00:01:13', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('6615A271F099D2FED98ED12E3E1CAAB9', 'DAE3AA13AB893DE1065F0E93FE28BDED', '2018-03-06 00:01:28', null, null, null, '2018-03-06 00:01:28', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('69717BD48B66374F8305B9129F5B09E8', 'BEB0D81B918DD968D24D6F95AC15A753', null, null, null, null, '2019-07-22 06:43:12', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('6D87E4E85774027818352C38FE72B1A6', 'BEB0D81B918DD968D24D6F95AC15A753', null, null, null, null, '2019-03-05 14:14:49', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('6FB525B0FE6ED405436CEF9B8F0697C5', '1A5693C0C9E05009D474899A0CF5F19F', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('6FB525B0FE6ED405436CEF9B8F0697C5', '7EC06172A9CCD45EBF0952A463F4CF95', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('6FB525B0FE6ED405436CEF9B8F0697C5', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-05-30 06:27:21', null, null, null, '2019-01-04 13:35:53', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('710461A0154E6602E138E9163B006495', 'BEB0D81B918DD968D24D6F95AC15A753', null, null, null, null, '2019-01-17 04:54:56', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('8414CF2468DC2CF0365BA00D69363F93', '1A5693C0C9E05009D474899A0CF5F19F', '2019-01-04 13:42:25', null, null, null, '2019-01-04 13:42:25', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('8414CF2468DC2CF0365BA00D69363F93', '7EC06172A9CCD45EBF0952A463F4CF95', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('8414CF2468DC2CF0365BA00D69363F93', 'BEB0D81B918DD968D24D6F95AC15A753', '2019-01-04 13:35:47', null, null, null, '2019-01-04 13:35:47', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('8842E315CB89A1F2B4EACDD7E84858BB', 'BEB0D81B918DD968D24D6F95AC15A753', null, null, null, null, '2019-04-03 19:22:34', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('8AA1F19AACFD6DE73382B9D2F53FD5FA', 'BEB0D81B918DD968D24D6F95AC15A753', null, null, null, null, '2019-03-05 14:14:49', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('91257EC58A61079D778D4DD08FB7652B', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-12 16:23:12', null, null, null, '2018-02-12 16:23:12', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('91257EC58A61079D778D4DD08FB7652B', '4E83F3C688D1D3E86D02F05F8AC74156', '2018-03-06 00:02:39', null, null, null, '2018-03-06 00:02:39', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('91257EC58A61079D778D4DD08FB7652B', '54971E77F847C3FC4EE56003A33B35E8', '2018-02-12 16:18:11', null, null, null, '2018-02-25 21:56:43', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('91257EC58A61079D778D4DD08FB7652B', '7EC06172A9CCD45EBF0952A463F4CF95', '2018-02-23 11:47:33', null, null, null, '2018-02-23 11:47:33', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('91257EC58A61079D778D4DD08FB7652B', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-22 10:59:36', null, null, null, '2018-02-22 10:59:36', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('928759095B55540F52242E3E54DCE432', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-23 13:30:28', null, null, null, '2018-02-23 13:30:28', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('928759095B55540F52242E3E54DCE432', '7EC06172A9CCD45EBF0952A463F4CF95', '2018-02-23 11:47:34', null, null, null, '2018-02-23 13:30:42', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('928759095B55540F52242E3E54DCE432', '81092EBC8FEF970EDA6656EBD1508368', '2018-02-25 21:26:39', null, null, null, '2018-02-25 21:26:39', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('928759095B55540F52242E3E54DCE432', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-22 16:58:44', null, null, null, '2018-02-23 13:30:22', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('928759095B55540F52242E3E54DCE432', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-02-25 21:26:14', null, null, null, '2018-02-25 21:26:14', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('9419DC15C84351C8F038B2B0E5302FEC', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-12 16:23:15', null, null, null, '2018-02-12 16:23:15', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('9419DC15C84351C8F038B2B0E5302FEC', '54971E77F847C3FC4EE56003A33B35E8', '2018-02-12 16:18:16', null, null, null, '2018-02-25 21:56:44', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('9419DC15C84351C8F038B2B0E5302FEC', '7EC06172A9CCD45EBF0952A463F4CF95', null, null, null, null, '2019-01-21 14:27:52', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('9419DC15C84351C8F038B2B0E5302FEC', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-22 10:59:37', null, null, null, '2018-02-22 10:59:37', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('9419DC15C84351C8F038B2B0E5302FEC', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-02-25 21:26:15', null, null, null, '2018-02-25 21:26:15', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('97514FC17A39AEE6815708CD5B5F7E3E', '1A5693C0C9E05009D474899A0CF5F19F', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('97514FC17A39AEE6815708CD5B5F7E3E', '7EC06172A9CCD45EBF0952A463F4CF95', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('97514FC17A39AEE6815708CD5B5F7E3E', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-05-30 06:27:20', null, null, null, '2019-01-04 13:35:50', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('9BB8634517FB6EF224AA0FC687714CEF', '1A5693C0C9E05009D474899A0CF5F19F', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('9BB8634517FB6EF224AA0FC687714CEF', '7EC06172A9CCD45EBF0952A463F4CF95', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('9BB8634517FB6EF224AA0FC687714CEF', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-05-30 06:02:00', null, null, null, '2019-01-04 13:35:54', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('9CDA4C7124F3F0BF4FDB9A3500777C5B', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-28 22:45:02', null, null, null, '2018-03-03 18:06:21', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('9CDA4C7124F3F0BF4FDB9A3500777C5B', '7EC06172A9CCD45EBF0952A463F4CF95', '2018-02-25 21:53:15', null, null, null, '2018-02-25 21:53:15', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('9CDA4C7124F3F0BF4FDB9A3500777C5B', '81092EBC8FEF970EDA6656EBD1508368', '2018-02-25 21:32:25', null, null, null, '2018-03-08 22:13:30', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('9CDA4C7124F3F0BF4FDB9A3500777C5B', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-25 21:31:47', null, null, null, '2018-03-11 11:33:17', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('9CDA4C7124F3F0BF4FDB9A3500777C5B', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-02-25 21:32:33', null, null, null, '2018-03-08 22:06:59', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('9CDA4C7124F3F0BF4FDB9A3500777C5B', 'DAE3AA13AB893DE1065F0E93FE28BDED', '2018-02-25 21:32:19', null, null, null, '2018-02-25 21:32:19', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('9F301D22F416F461045596C9786D0C45', '1A5693C0C9E05009D474899A0CF5F19F', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('9F301D22F416F461045596C9786D0C45', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-05-30 06:02:01', null, null, null, '2018-05-30 06:02:01', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('A3621F23A4BC0580D08EEF948C0FD30B', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-12 16:23:16', null, null, null, '2018-02-12 16:23:16', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('A3621F23A4BC0580D08EEF948C0FD30B', '54971E77F847C3FC4EE56003A33B35E8', '2018-02-13 11:12:42', null, null, null, '2018-02-25 21:56:45', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('A3621F23A4BC0580D08EEF948C0FD30B', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-22 10:59:37', null, null, null, '2018-02-22 10:59:37', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('A3621F23A4BC0580D08EEF948C0FD30B', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-02-25 21:26:16', null, null, null, '2018-03-08 22:14:21', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('A554CF49625FE55DA199AAA271F957AD', '1A5693C0C9E05009D474899A0CF5F19F', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('A554CF49625FE55DA199AAA271F957AD', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-28 22:03:15', null, null, null, '2018-02-28 22:03:15', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('A7EF654EB909EAC711988F8E82CB3995', 'BEB0D81B918DD968D24D6F95AC15A753', null, null, null, null, '2019-04-03 19:22:34', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('AD7CDFCEA44AF61889B12ECEC006BAE2', '1A5693C0C9E05009D474899A0CF5F19F', '2018-03-05 20:23:04', null, null, null, '2018-03-05 20:23:04', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('AD7CDFCEA44AF61889B12ECEC006BAE2', '81092EBC8FEF970EDA6656EBD1508368', '2018-03-06 00:01:21', null, null, null, '2018-03-06 00:01:21', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('AD7CDFCEA44AF61889B12ECEC006BAE2', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-03-05 20:22:59', null, null, null, '2018-03-05 20:22:59', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('AD7CDFCEA44AF61889B12ECEC006BAE2', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-03-06 00:01:06', null, null, null, '2018-03-06 00:01:06', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('ADF008B4C0F1111E4004CA0250AEA4EC', '81092EBC8FEF970EDA6656EBD1508368', '2018-03-08 22:07:38', null, null, null, '2018-03-08 22:07:38', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('ADF008B4C0F1111E4004CA0250AEA4EC', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-03-08 22:07:02', null, null, null, '2018-03-08 22:07:02', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('ADF008B4C0F1111E4004CA0250AEA4EC', 'DAE3AA13AB893DE1065F0E93FE28BDED', '2018-03-08 22:07:33', null, null, null, '2018-03-08 22:07:33', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('AF7B52BED9BA2A22224EC39FBE0F7C69', '1A5693C0C9E05009D474899A0CF5F19F', null, null, null, null, '2019-01-14 12:31:54', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('AF7B52BED9BA2A22224EC39FBE0F7C69', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-28 22:03:15', null, null, null, '2019-01-04 13:36:07', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('B0820D770366E897120281EBFDEE276E', '1A5693C0C9E05009D474899A0CF5F19F', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('B0820D770366E897120281EBFDEE276E', '7EC06172A9CCD45EBF0952A463F4CF95', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('B0820D770366E897120281EBFDEE276E', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-06-04 16:37:26', null, null, null, '2019-01-04 13:35:52', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('B3122FB92A5F556AA2D61BBA3F2245A6', '1A5693C0C9E05009D474899A0CF5F19F', '2018-03-05 20:23:04', null, null, null, '2018-03-05 20:23:04', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('B3122FB92A5F556AA2D61BBA3F2245A6', '81092EBC8FEF970EDA6656EBD1508368', '2018-03-06 00:01:21', null, null, null, '2018-03-08 22:13:06', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('B3122FB92A5F556AA2D61BBA3F2245A6', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-03-05 20:22:59', null, null, null, '2018-03-11 11:33:17', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('B3122FB92A5F556AA2D61BBA3F2245A6', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-03-06 00:01:06', null, null, null, '2018-03-08 22:06:59', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('B82BC1E7CD6B64D883EEC1711B5BF9F6', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-28 22:45:02', null, null, null, '2018-03-03 18:06:21', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('B82BC1E7CD6B64D883EEC1711B5BF9F6', '7EC06172A9CCD45EBF0952A463F4CF95', '2018-02-25 21:53:15', null, null, null, '2018-02-25 21:53:15', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('B82BC1E7CD6B64D883EEC1711B5BF9F6', '81092EBC8FEF970EDA6656EBD1508368', '2018-02-25 21:32:25', null, null, null, '2018-03-06 00:01:20', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('B82BC1E7CD6B64D883EEC1711B5BF9F6', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-25 21:28:07', null, null, null, '2018-02-25 21:31:49', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('B82BC1E7CD6B64D883EEC1711B5BF9F6', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-02-25 21:32:33', null, null, null, '2018-03-06 00:04:03', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('B82BC1E7CD6B64D883EEC1711B5BF9F6', 'DAE3AA13AB893DE1065F0E93FE28BDED', '2018-02-25 21:32:19', null, null, null, '2018-02-25 21:32:19', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('BE79315D605E839B40288537CE34EF99', '1A5693C0C9E05009D474899A0CF5F19F', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('BE79315D605E839B40288537CE34EF99', '7EC06172A9CCD45EBF0952A463F4CF95', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('BE79315D605E839B40288537CE34EF99', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-28 22:03:15', null, null, null, '2019-01-04 13:35:56', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('D62FF237000A6367A489BC398DBA6B02', '1A5693C0C9E05009D474899A0CF5F19F', '2019-01-04 13:42:25', null, null, null, '2019-01-04 13:42:25', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('D62FF237000A6367A489BC398DBA6B02', '7EC06172A9CCD45EBF0952A463F4CF95', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('D62FF237000A6367A489BC398DBA6B02', 'BEB0D81B918DD968D24D6F95AC15A753', '2019-01-04 13:42:36', null, null, null, '2019-01-04 13:42:36', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('E34F2EDB810C28DE8812F61F136BC3EF', '81092EBC8FEF970EDA6656EBD1508368', '2018-03-08 22:07:38', null, null, null, '2018-03-08 22:07:38', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('E34F2EDB810C28DE8812F61F136BC3EF', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-03-08 22:07:02', null, null, null, '2018-03-08 22:07:02', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('E34F2EDB810C28DE8812F61F136BC3EF', 'DAE3AA13AB893DE1065F0E93FE28BDED', '2018-03-08 22:07:33', null, null, null, '2018-03-08 22:07:33', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('E79EBF5311CEF25AA15F08F773C7799F', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-28 22:45:02', null, null, null, '2018-03-03 18:06:21', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('E79EBF5311CEF25AA15F08F773C7799F', '7EC06172A9CCD45EBF0952A463F4CF95', '2018-02-25 21:53:15', null, null, null, '2018-02-25 21:53:15', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('E79EBF5311CEF25AA15F08F773C7799F', '81092EBC8FEF970EDA6656EBD1508368', '2018-02-25 21:32:25', null, null, null, '2018-03-08 22:13:28', null, '0');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('E79EBF5311CEF25AA15F08F773C7799F', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-25 21:31:47', null, null, null, '2018-03-11 11:33:14', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('E79EBF5311CEF25AA15F08F773C7799F', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-02-25 21:32:33', null, null, null, '2018-03-08 22:06:58', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('E79EBF5311CEF25AA15F08F773C7799F', 'DAE3AA13AB893DE1065F0E93FE28BDED', '2018-02-25 21:32:19', null, null, null, '2018-02-25 21:32:19', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('E88B1980A745986971B6F9ECDB886804', '81092EBC8FEF970EDA6656EBD1508368', '2018-03-08 22:13:06', null, null, null, '2018-03-08 22:13:30', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('E88B1980A745986971B6F9ECDB886804', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-03-11 11:33:17', null, null, null, '2018-03-11 11:33:17', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('E88B1980A745986971B6F9ECDB886804', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-03-08 22:06:59', null, null, null, '2018-03-08 22:06:59', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('ED81B0CEDE0FB3F20259BA1519D15164', 'BEB0D81B918DD968D24D6F95AC15A753', null, null, null, null, null, null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('EEFC380A3B3D4B51695A0C6C7F6A9D96', '81092EBC8FEF970EDA6656EBD1508368', '2018-03-08 22:13:07', null, null, null, '2018-03-08 22:13:28', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('EEFC380A3B3D4B51695A0C6C7F6A9D96', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-03-11 11:33:15', null, null, null, '2018-03-11 11:33:15', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('EEFC380A3B3D4B51695A0C6C7F6A9D96', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-03-08 22:06:58', null, null, null, '2018-03-08 22:06:58', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('EFF56658C76EAB6EE4E62419E9FB47C6', '1A5693C0C9E05009D474899A0CF5F19F', '2018-02-23 13:30:28', null, null, null, '2018-02-23 13:30:28', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('EFF56658C76EAB6EE4E62419E9FB47C6', '7EC06172A9CCD45EBF0952A463F4CF95', '2018-02-23 13:30:42', null, null, null, '2018-02-23 13:30:42', 'system', '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('EFF56658C76EAB6EE4E62419E9FB47C6', '81092EBC8FEF970EDA6656EBD1508368', '2018-02-25 21:26:39', null, null, null, '2018-03-08 22:13:07', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('EFF56658C76EAB6EE4E62419E9FB47C6', 'BEB0D81B918DD968D24D6F95AC15A753', '2018-02-23 13:30:21', null, null, null, '2018-03-11 11:33:09', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('EFF56658C76EAB6EE4E62419E9FB47C6', 'D5DB0E0726FAD166517BC7A49DD75132', '2018-02-25 21:26:14', null, null, null, '2018-03-08 22:06:58', null, '1');
INSERT INTO `sys_roles_jurisdiction_info` VALUES ('FB58ADC2E4533C1039A8EA0CCEAAE0A4', 'BEB0D81B918DD968D24D6F95AC15A753', null, null, null, null, '2019-03-05 14:14:49', 'system', '1');

-- ----------------------------
-- Table structure for sys_share_file_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_share_file_info`;
CREATE TABLE `sys_share_file_info` (
  `uuid` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '唯一主键',
  `file_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件名',
  `file_img` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '截图地址、封面图地址',
  `file_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件类型',
  `file_size` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件大小',
  `file_instru` text COLLATE utf8_unicode_ci COMMENT '内容详细介绍',
  `publish_date` date DEFAULT NULL COMMENT '发行时间',
  `version` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '版次',
  `publish_org` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发行单位',
  `author` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '作者',
  `generate_type` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资料大分类',
  `generate_type2` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资料细分领域',
  `language` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资料语言',
  `view_times` int(11) DEFAULT NULL COMMENT '浏览',
  `from_web` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源网站',
  `from_path` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源网址',
  `discription` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '插入时间',
  `create_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '插入人',
  `delete_flag` int(11) DEFAULT NULL COMMENT '标记',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '更新人员',
  `file_detial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='资料信息';

-- ----------------------------
-- Records of sys_share_file_info
-- ----------------------------
INSERT INTO `sys_share_file_info` VALUES ('1', 'test1', null, '书籍资料', '123', '范德萨谁谁谁谁范德萨发大厦发', '2019-05-14', '1', '百度', 'test', 'tes1', 'tewrw', '中文', '1', 'fdfs', null, null, null, null, null, '2019-05-14 15:09:14', 'system', null);
INSERT INTO `sys_share_file_info` VALUES ('2', 'test2', null, '书籍资料', '234', '范德萨谁谁谁谁范德萨发大厦发213', '2019-05-14', '2', null, null, 'sss', null, '中文', '2', 'fdsfsdfs', null, null, '2019-05-14 15:22:29', 'test', null, '2019-05-14 15:21:51', 'system', null);

-- ----------------------------
-- Table structure for sys_share_file_path_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_share_file_path_info`;
CREATE TABLE `sys_share_file_path_info` (
  `uuid` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '唯一主键',
  `share_uuid` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '关联主键',
  `path` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '路径',
  `path_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类别',
  `password` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网盘密码',
  `file_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件名',
  `file_size` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '大小',
  `md5` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'md5',
  `sha1` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'sha1',
  `sha256` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'sha256',
  `sha512` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'sha512',
  `discription` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '插入时间',
  `create_user` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '插入人',
  `delete_flag` int(11) DEFAULT NULL COMMENT '标记',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '更新人员',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='文件位置';

-- ----------------------------
-- Records of sys_share_file_path_info
-- ----------------------------

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
-- Table structure for sys_user_base_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_base_info`;
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
  `age` int(11) DEFAULT NULL,
  `phone` varchar(18) DEFAULT NULL COMMENT '电话',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `qq` varchar(14) DEFAULT NULL,
  `head_pic` varchar(1024) DEFAULT NULL COMMENT '头像',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人员',
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

-- ----------------------------
-- Records of sys_user_base_info
-- ----------------------------
INSERT INTO `sys_user_base_info` VALUES ('0ff36f5ed8f34bd49d1d41b71c49f256', 'user', '$2a$10$Sf68/HWJoOK2sXwKlRbRgeKJz69BvUKqsDA4VROkJ.p.Muedzp0Ai', null, null, null, null, null, 'user', '男', null, '', '111#@11', null, null, '2018-02-23 11:48:35', null, null, 'user', '2018-06-04 13:36:10', 'system', null, null, null, null, null, null);
INSERT INTO `sys_user_base_info` VALUES ('25885ed9-c4ff-4d19-a6bb-dc2206ed2429', '514840279@qq.com', '{bcrypt}$2a$10$PtfPknR6X55AcBANsT55q.L4fMy4jzXxGPB8PP1ntHS5vA/09hEKC', null, null, null, null, null, '514840279@qq.com', '男', null, '13578787262', '514840279@qq.com', null, null, '2019-03-18 17:47:09', null, null, '', '2019-07-06 07:53:32', null, null, null, null, null, null, '20190320/%E7%8E%8B%E6%BB%95%E8%BE%89%E4%B8%AA%E4%BA%BA%E7%AE%80%E5%8E%86%E7%AC%AC%E4%B8%80%E7%89%88.html');
INSERT INTO `sys_user_base_info` VALUES ('9988e4e2469e428ab117a1804c5a7b96', 'test', '{bcrypt}$2a$10$ROXROqTPFa/j9JFulB6EP.RJR4A5F9nA46w54rbFj/lAoJMZ./7g.', null, null, null, null, null, 'test', '男', null, '', '4322f21!@EWQ', null, null, '2018-02-22 10:59:53', null, null, '', '2018-06-04 13:36:25', 'system', null, null, null, null, null, null);
INSERT INTO `sys_user_base_info` VALUES ('fb48fff75ae24e40b975a9c6ce1a124d', 'admin', '{bcrypt}$2a$10$Ljq8m3yJ.pM1TJIDzfmaV.47QVQptTSmLj1kBV3NsYPPpvkviq5/G', null, null, null, null, null, 'admin', '1', '0', 'admin', 'admin', null, null, '2018-02-12 16:27:07', null, null, 'admin', '2018-02-12 16:27:07', 'system', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for sys_user_education
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_education`;
CREATE TABLE `sys_user_education` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `user_uuid` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL,
  `graduation_school` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL,
  `major` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL,
  `graduation_time` date DEFAULT NULL,
  `length_of_schooling` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '更新人员',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_user_education
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_evaluate`;
CREATE TABLE `sys_user_evaluate` (
  `user_uuid` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '更新人员'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_user_evaluate
-- ----------------------------
INSERT INTO `sys_user_evaluate` VALUES ('0ff36f5ed8f34bd49d1d41b71c49f256', '自我评价', '范德萨范德萨范德萨生生世世生生世世生生世世生生世世生生世世是事实反反复复反反复复反反复复反反复复反反复复反反复复反反复复反反复复反反复复反反复复反反复复反反复复反反复复夫妇发射点犯得上发大水范德萨发射点阿夫顿撒犯得上阿夫顿撒范德萨范德萨打算', '0ff36f5ed8f34bd49d1d41b71c49f256', '2019-03-04 16:26:46', 'system', '0', null, '2019-03-04 16:26:46', 'system');

-- ----------------------------
-- Table structure for sys_user_modal
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_modal`;
CREATE TABLE `sys_user_modal` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_uuid` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modal_uuid` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use` int(2) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '更新人员'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_user_modal
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_project
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_project`;
CREATE TABLE `sys_user_project` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `user_uuid` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `project_content` text COLLATE utf8_unicode_ci,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '更新人员',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_user_project
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_roles_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_roles_info`;
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

-- ----------------------------
-- Records of sys_user_roles_info
-- ----------------------------
INSERT INTO `sys_user_roles_info` VALUES ('1A5693C0C9E05009D474899A0CF5F19F', '140bd7f6b3b043ac9f70d59749ca3e00', '0', '2018-02-23 19:11:17', null, null, null, '2018-02-23 19:11:19', null);
INSERT INTO `sys_user_roles_info` VALUES ('1A5693C0C9E05009D474899A0CF5F19F', '25885ed9-c4ff-4d19-a6bb-dc2206ed2429', '0', '2019-03-18 17:47:09', '514840279@qq.com', '0', null, '2019-03-20 12:05:04', '514840279@qq.com');
INSERT INTO `sys_user_roles_info` VALUES ('1A5693C0C9E05009D474899A0CF5F19F', '6ca51a8ac9ea4b80ab4cdcc956d0e311', '0', '2018-10-29 21:19:21', '11', '0', null, '2018-10-29 21:19:21', 'system');
INSERT INTO `sys_user_roles_info` VALUES ('1A5693C0C9E05009D474899A0CF5F19F', 'fb48fff75ae24e40b975a9c6ce1a124d', '1', '2018-02-12 18:00:21', null, null, null, '2018-02-12 18:00:21', 'system');
INSERT INTO `sys_user_roles_info` VALUES ('4E83F3C688D1D3E86D02F05F8AC74156', '140bd7f6b3b043ac9f70d59749ca3e00', '0', '2018-02-23 19:11:17', null, null, null, '2018-02-23 19:11:20', null);
INSERT INTO `sys_user_roles_info` VALUES ('4E83F3C688D1D3E86D02F05F8AC74156', '461fe0c903244b83a9395233151b0ff9', '1', '2018-02-23 15:31:57', null, null, null, '2018-02-23 15:31:57', 'system');
INSERT INTO `sys_user_roles_info` VALUES ('54971E77F847C3FC4EE56003A33B35E8', '140bd7f6b3b043ac9f70d59749ca3e00', '0', '2018-02-23 19:11:17', null, null, null, '2018-02-23 19:11:20', null);
INSERT INTO `sys_user_roles_info` VALUES ('54971E77F847C3FC4EE56003A33B35E8', '5b9172560f2f44d69094194b6c96f1c0', '0', '2018-02-12 18:01:34', null, null, null, '2018-02-13 11:11:57', null);
INSERT INTO `sys_user_roles_info` VALUES ('54971E77F847C3FC4EE56003A33B35E8', '99ee69e165d64c10b14e96401484437b', '1', '2018-02-13 11:12:55', null, null, null, '2018-02-23 11:48:40', null);
INSERT INTO `sys_user_roles_info` VALUES ('54971E77F847C3FC4EE56003A33B35E8', 'fb48fff75ae24e40b975a9c6ce1a124d', '0', '2018-02-12 18:00:21', null, null, null, '2018-02-22 11:00:27', null);
INSERT INTO `sys_user_roles_info` VALUES ('7EC06172A9CCD45EBF0952A463F4CF95', '0ff36f5ed8f34bd49d1d41b71c49f256', '1', '2018-02-23 11:48:38', null, null, null, '2018-02-23 11:48:38', 'system');
INSERT INTO `sys_user_roles_info` VALUES ('7EC06172A9CCD45EBF0952A463F4CF95', '140bd7f6b3b043ac9f70d59749ca3e00', '0', '2018-02-23 19:11:16', null, null, null, '2018-02-23 19:11:21', null);
INSERT INTO `sys_user_roles_info` VALUES ('7EC06172A9CCD45EBF0952A463F4CF95', '25885ed9-c4ff-4d19-a6bb-dc2206ed2429', '1', '2019-03-18 17:47:09', '514840279@qq.com', '0', null, '2019-03-20 12:05:04', '514840279@qq.com');
INSERT INTO `sys_user_roles_info` VALUES ('7EC06172A9CCD45EBF0952A463F4CF95', '6ca51a8ac9ea4b80ab4cdcc956d0e311', '1', '2018-10-29 21:19:21', '11', '0', null, '2018-10-29 21:19:21', 'system');
INSERT INTO `sys_user_roles_info` VALUES ('7EC06172A9CCD45EBF0952A463F4CF95', '770a5ed109b04ababc3a2aece5ca826b', '0', '2018-02-23 11:47:59', null, null, null, '2018-02-23 11:48:47', null);
INSERT INTO `sys_user_roles_info` VALUES ('7EC06172A9CCD45EBF0952A463F4CF95', '99ee69e165d64c10b14e96401484437b', '0', '2018-02-23 11:47:55', null, null, null, '2018-02-23 11:48:41', null);
INSERT INTO `sys_user_roles_info` VALUES ('81092EBC8FEF970EDA6656EBD1508368', 'f0cd7117c25947f4bc4e32569e9d6f56', '1', '2018-02-25 21:33:49', null, null, null, '2018-02-25 21:33:49', 'system');
INSERT INTO `sys_user_roles_info` VALUES ('94CB00CC360FBDE489B42C4FA8E50C60', '5b9172560f2f44d69094194b6c96f1c0', '1', '2018-02-12 18:02:25', null, null, null, '2018-02-13 11:14:55', null);
INSERT INTO `sys_user_roles_info` VALUES ('94CB00CC360FBDE489B42C4FA8E50C60', '99ee69e165d64c10b14e96401484437b', '0', '2018-02-13 11:12:59', null, null, null, '2018-02-13 11:18:06', null);
INSERT INTO `sys_user_roles_info` VALUES ('94CB00CC360FBDE489B42C4FA8E50C60', 'fb48fff75ae24e40b975a9c6ce1a124d', '0', '2018-02-12 18:00:02', null, null, null, '2018-02-22 11:00:26', null);
INSERT INTO `sys_user_roles_info` VALUES ('BEB0D81B918DD968D24D6F95AC15A753', '25885ed9-c4ff-4d19-a6bb-dc2206ed2429', '0', '2019-03-18 17:47:09', '514840279@qq.com', '0', null, '2019-03-20 12:05:04', '514840279@qq.com');
INSERT INTO `sys_user_roles_info` VALUES ('BEB0D81B918DD968D24D6F95AC15A753', '6ca51a8ac9ea4b80ab4cdcc956d0e311', '0', '2018-10-29 21:19:21', '11', '0', null, '2018-10-29 21:19:21', 'system');
INSERT INTO `sys_user_roles_info` VALUES ('BEB0D81B918DD968D24D6F95AC15A753', '9988e4e2469e428ab117a1804c5a7b96', '1', '2018-02-22 10:59:58', null, null, null, '2018-02-22 10:59:58', 'system');
INSERT INTO `sys_user_roles_info` VALUES ('D5DB0E0726FAD166517BC7A49DD75132', 'dc113e1152b845c7a8df8a8a951a9ee7', '1', '2018-02-25 21:33:44', null, null, null, '2018-02-25 21:33:44', 'system');
INSERT INTO `sys_user_roles_info` VALUES ('DAE3AA13AB893DE1065F0E93FE28BDED', 'ed38ac79ccbe4883b74e5dd60f9b00cd', '1', '2018-02-25 21:33:54', null, null, null, '2018-02-25 21:33:54', 'system');

-- ----------------------------
-- Table structure for sys_user_skill
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_skill`;
CREATE TABLE `sys_user_skill` (
  `user_uuid` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skill` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proficiency` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `month` int(5) DEFAULT NULL,
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '更新人员'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_user_skill
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_work_expreience
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_work_expreience`;
CREATE TABLE `sys_user_work_expreience` (
  `user_uuid` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `position` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `working_life` float(4,2) DEFAULT NULL,
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  `create_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '录入人员',
  `delete_flag` int(11) DEFAULT '0' COMMENT '停用标记',
  `discription` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资源功能描述',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system' COMMENT '更新人员'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_user_work_expreience
-- ----------------------------

-- ----------------------------
-- View structure for v_sys_comn_logs
-- ----------------------------
DROP VIEW IF EXISTS `v_sys_comn_logs`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_sys_comn_logs` AS select distinct uuid() AS `id`,`sys_comn_logs`.`create_user` AS `create_user`,`sys_comn_logs`.`ip` AS `ip`,cast(`sys_comn_logs`.`create_time` as date) AS `date1`,`sys_comn_logs`.`args` AS `param_list`,count(1) AS `num`,hour(`sys_comn_logs`.`create_time`) AS `time1` from `sys_comn_logs` group by `sys_comn_logs`.`ip`,`sys_comn_logs`.`create_user`,`sys_comn_logs`.`create_time`,`sys_comn_logs`.`args` order by `date1` desc ;
