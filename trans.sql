/*
Navicat MySQL Data Transfer

Source Server         : 139
Source Server Version : 50644
Source Host           : 10.40.40.139:3306
Source Database       : trans

Target Server Type    : MYSQL
Target Server Version : 50644
File Encoding         : 65001

Date: 2019-10-17 18:03:31
*/

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `trans` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `trans`;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_etl_admin`
-- ----------------------------
DROP TABLE IF EXISTS `sys_etl_admin`;
CREATE TABLE `sys_etl_admin` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '主键',
  `mag_type` int(2) NOT NULL DEFAULT '0' COMMENT '类型 0-普通管理员/1-超级管理员',
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员表';

-- ----------------------------
-- Records of sys_etl_admin
-- ----------------------------
INSERT INTO `sys_etl_admin` VALUES ('dfde0f72-af48-40a9-8c27-2dd06627ee8b', '1', 'admin', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for `sys_etl_all_field`
-- ----------------------------
DROP TABLE IF EXISTS `sys_etl_all_field`;
CREATE TABLE `sys_etl_all_field` (
  `id` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '主键',
  `table_id` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '表名id',
  `name` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '字段名称',
  `pri_key` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为主键字段 0-否/1-是',
  `comment` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '注释',
  `create_time` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name_entity_id` (`table_id`,`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='etl数据源对应的所有字段';

-- ----------------------------
-- Records of sys_etl_all_field
-- ----------------------------
INSERT INTO `sys_etl_all_field` VALUES ('05b445d3-ac2b-425f-9c80-c3ea72b6b197', '495421e9-1158-455c-b401-c42030dd15f3', 'ID', '1', 'ID', '1571304748513');
INSERT INTO `sys_etl_all_field` VALUES ('08050acc-e6ae-446c-a6a7-323bca2bba76', '495421e9-1158-455c-b401-c42030dd15f3', 'ID_NUM', '0', '身份证号', '1571304748513');
INSERT INTO `sys_etl_all_field` VALUES ('0e21200f-890a-4a1e-bfb6-a39618aa4157', 'd161a67c-7dbe-4dc5-b206-0ec3f0c8d36c', 'PWD', '0', '密码', '1571304585604');
INSERT INTO `sys_etl_all_field` VALUES ('13e3beda-c1e9-4d5c-88e2-f9cf447bb3a1', '7c05dd79-578f-4ce8-acf8-998851ba12bd', 'CREATE_TIME', '0', '创建时间', '1571304585520');
INSERT INTO `sys_etl_all_field` VALUES ('166c92f8-d9af-4a57-8efb-e2f534c181ba', 'cc7ddc3d-18e7-4491-9161-a681a81bae87', 'user_regdate', '0', '注册时间', '1571304748643');
INSERT INTO `sys_etl_all_field` VALUES ('16d04b67-d932-43fe-baff-b0d33bf01d04', 'd161a67c-7dbe-4dc5-b206-0ec3f0c8d36c', 'MAG_TYPE', '0', '类型 0-普通管理员/1-超级管理员', '1571304585604');
INSERT INTO `sys_etl_all_field` VALUES ('183c4d34-ad6a-44df-ae0c-9037f23b7a70', '5414e602-3f55-4629-8f31-893ee5492d9a', 'UPDATE_TIME', '0', '更新时间', '1571304748557');
INSERT INTO `sys_etl_all_field` VALUES ('2b457da1-1bda-4d43-b9d8-ae41506fcd2f', '5414e602-3f55-4629-8f31-893ee5492d9a', 'CREATE_TIME', '0', '创建时间', '1571304748557');
INSERT INTO `sys_etl_all_field` VALUES ('34715f27-b31e-4af3-bc32-409cf8fbbd7b', 'cc7ddc3d-18e7-4491-9161-a681a81bae87', 'user_name', '0', '用户名', '1571304748643');
INSERT INTO `sys_etl_all_field` VALUES ('37e7c023-1ec6-45a3-bdab-1cfd216bf408', '56e7f386-1ff3-4a81-bd16-25c3bfc62698', 'ID', '1', '主键', '1571304748603');
INSERT INTO `sys_etl_all_field` VALUES ('3b71109b-13c9-4dd2-b12d-5dc259f7ff50', '044dda3c-e246-4de4-84ec-d82937d7d435', 'username', '0', '用户名', '1571304748474');
INSERT INTO `sys_etl_all_field` VALUES ('3f9cd66b-6ac3-433d-9fbf-41e8a42e576c', '7c05dd79-578f-4ce8-acf8-998851ba12bd', 'ID_NUM', '0', '用户身份证号', '1571304585520');
INSERT INTO `sys_etl_all_field` VALUES ('40195e4e-dd7d-4851-8526-bb91f90be66f', '6e47863c-60f5-47ed-a9ed-29ed86f4999f', 'ID_NUM', '0', '身份证号', '1571304585406');
INSERT INTO `sys_etl_all_field` VALUES ('4ce6a0d5-9d1b-4234-9197-c82d845f6cc5', 'efb5fdc3-ba04-49c5-a804-d73f67478de1', 'requestTime', '0', 'requestTime', '1571304748686');
INSERT INTO `sys_etl_all_field` VALUES ('57736a38-eb72-410c-af60-fae6166bef68', 'f9457b1f-a0c9-472c-9b5e-51208b041ddd', 'id', '1', 'id', '1561013573236');
INSERT INTO `sys_etl_all_field` VALUES ('59cd6a1c-0acd-435d-a02e-416d6308803d', 'efb5fdc3-ba04-49c5-a804-d73f67478de1', 'apiname', '0', 'apiname', '1571304748686');
INSERT INTO `sys_etl_all_field` VALUES ('61e3cf1f-98c1-4cc9-bf17-928e05a686ad', '1a130e31-a163-482a-8256-3c6aa4eeb926', 'name', '0', 'name', '1561013552858');
INSERT INTO `sys_etl_all_field` VALUES ('68078342-49f5-428d-b6b8-7919d710a9e6', '1a130e31-a163-482a-8256-3c6aa4eeb926', 'age', '0', 'age', '1561013552858');
INSERT INTO `sys_etl_all_field` VALUES ('68d9f70f-6334-4bc0-b116-16ff6f1d5fb1', 'e425696d-2c1a-4b53-9105-3aa94b37e70b', 'ID', '1', 'ID', '1561021093015');
INSERT INTO `sys_etl_all_field` VALUES ('6d677eff-85a9-454e-b956-077e96c6b22f', '6e47863c-60f5-47ed-a9ed-29ed86f4999f', 'USER_NAME', '0', '专家姓名', '1571304585406');
INSERT INTO `sys_etl_all_field` VALUES ('75aec0ed-632d-497c-92d4-27141755cd15', '7c05dd79-578f-4ce8-acf8-998851ba12bd', 'ID', '1', 'ID', '1571304585520');
INSERT INTO `sys_etl_all_field` VALUES ('78584ccf-ed71-4ffb-90a6-1869dce893a5', '56e7f386-1ff3-4a81-bd16-25c3bfc62698', 'PWD', '0', '密码', '1571304748603');
INSERT INTO `sys_etl_all_field` VALUES ('7ebb13aa-9a5f-487b-8e8d-3de2736f04b1', '044dda3c-e246-4de4-84ec-d82937d7d435', 'id', '1', '主键', '1571304748474');
INSERT INTO `sys_etl_all_field` VALUES ('8d810cdd-cd57-4ca2-8972-c475f1079a97', '6e47863c-60f5-47ed-a9ed-29ed86f4999f', 'CREATE_TIME', '0', '创建时间', '1571304585406');
INSERT INTO `sys_etl_all_field` VALUES ('9123ee7a-b257-4c1d-b41e-7e32249e08df', 'f9457b1f-a0c9-472c-9b5e-51208b041ddd', 'name', '0', 'name', '1561013573236');
INSERT INTO `sys_etl_all_field` VALUES ('924905d8-017e-46a0-be4c-2cb19e5eca38', 'd161a67c-7dbe-4dc5-b206-0ec3f0c8d36c', 'USERNAME', '0', '用户名', '1571304585604');
INSERT INTO `sys_etl_all_field` VALUES ('960d7347-0dfb-42e8-aa70-b202df730e01', 'e425696d-2c1a-4b53-9105-3aa94b37e70b', 'AGE', '0', 'AGE', '1561021093015');
INSERT INTO `sys_etl_all_field` VALUES ('9645452b-69c0-4446-8124-9cc638146d67', 'cc7ddc3d-18e7-4491-9161-a681a81bae87', 'user_password', '0', '密码', '1571304748643');
INSERT INTO `sys_etl_all_field` VALUES ('97fac250-3a52-4f56-83e1-817c054a3df5', '5414e602-3f55-4629-8f31-893ee5492d9a', 'ID', '1', 'ID', '1571304748557');
INSERT INTO `sys_etl_all_field` VALUES ('9978647d-508e-4025-bfd7-73dbf5c3778f', '7c05dd79-578f-4ce8-acf8-998851ba12bd', 'CERT_INDEX', '0', '用户索引', '1571304585520');
INSERT INTO `sys_etl_all_field` VALUES ('9e398aff-d4b8-43c9-a244-1f00f6ef9259', '56e7f386-1ff3-4a81-bd16-25c3bfc62698', 'MAG_TYPE', '0', '类型 0-普通管理员/1-超级管理员', '1571304748603');
INSERT INTO `sys_etl_all_field` VALUES ('a756983e-ca0b-4cf6-98b0-557a59fa791c', 'cc7ddc3d-18e7-4491-9161-a681a81bae87', 'user_id', '1', '用户主键', '1571304748643');
INSERT INTO `sys_etl_all_field` VALUES ('ad5f62f1-8085-434d-b762-87d98f551398', '495421e9-1158-455c-b401-c42030dd15f3', 'CREATE_TIME', '0', '创建时间', '1571304748513');
INSERT INTO `sys_etl_all_field` VALUES ('ad96bb85-984b-42f0-81c3-e7367d535067', '044dda3c-e246-4de4-84ec-d82937d7d435', 'status', '0', '是否有效:0-否/1-是', '1571304748474');
INSERT INTO `sys_etl_all_field` VALUES ('b18d03c5-e0cd-4a0e-8be9-ad049c332563', '495421e9-1158-455c-b401-c42030dd15f3', 'USER_NAME', '0', '专家姓名', '1571304748513');
INSERT INTO `sys_etl_all_field` VALUES ('b3801cef-b2fc-4a20-a616-081d9a944af7', '044dda3c-e246-4de4-84ec-d82937d7d435', 'password', '0', '用户密码', '1571304748474');
INSERT INTO `sys_etl_all_field` VALUES ('b3b4dad9-8fec-4d5c-b438-70c5c06f4e3a', '56e7f386-1ff3-4a81-bd16-25c3bfc62698', 'USERNAME', '0', '用户名', '1571304748603');
INSERT INTO `sys_etl_all_field` VALUES ('bb4dc887-8bf4-4cd1-a285-833fcfb44d22', 'efb5fdc3-ba04-49c5-a804-d73f67478de1', 'requestResult', '0', 'requestResult', '1571304748686');
INSERT INTO `sys_etl_all_field` VALUES ('bf9f28a3-272b-437c-9c75-0ae76024408f', 'e425696d-2c1a-4b53-9105-3aa94b37e70b', 'NAME', '0', 'NAME', '1561021093015');
INSERT INTO `sys_etl_all_field` VALUES ('ce333a25-2511-41b7-ae99-6deab7566f02', '5414e602-3f55-4629-8f31-893ee5492d9a', 'CERT_END_DATE', '0', '索引截止日期', '1571304748557');
INSERT INTO `sys_etl_all_field` VALUES ('d18004a9-09b0-4ef4-a9f7-a6419d1936ba', '495421e9-1158-455c-b401-c42030dd15f3', 'PRJ_NAME', '0', '标段名称', '1571304748513');
INSERT INTO `sys_etl_all_field` VALUES ('d83b99a3-b6da-41b9-95a0-627f4cc24b0c', '5414e602-3f55-4629-8f31-893ee5492d9a', 'ID_NUM', '0', '用户身份证号', '1571304748557');
INSERT INTO `sys_etl_all_field` VALUES ('deba0e96-ea8b-4d2d-bca2-2ded8636c3db', 'efb5fdc3-ba04-49c5-a804-d73f67478de1', 'place', '0', 'place', '1571304748686');
INSERT INTO `sys_etl_all_field` VALUES ('e1ac18a2-e119-4c11-99a9-f771c330db0c', 'efb5fdc3-ba04-49c5-a804-d73f67478de1', 'id', '1', 'id', '1571304748686');
INSERT INTO `sys_etl_all_field` VALUES ('e2d3bf82-cff5-4eca-b580-8003ca4129b0', '5414e602-3f55-4629-8f31-893ee5492d9a', 'CERT_INDEX', '0', '用户索引', '1571304748557');
INSERT INTO `sys_etl_all_field` VALUES ('e74edbb9-d3d6-4fd8-ac2e-02a1248a62cd', '6e47863c-60f5-47ed-a9ed-29ed86f4999f', 'PRJ_NAME', '0', '标段名称', '1571304585406');
INSERT INTO `sys_etl_all_field` VALUES ('e93ea073-b563-4af3-b494-5a7396257302', '7c05dd79-578f-4ce8-acf8-998851ba12bd', 'CERT_END_DATE', '0', '索引截止日期', '1571304585520');
INSERT INTO `sys_etl_all_field` VALUES ('ea1bd098-ea70-4607-8632-f74a1c1efd20', '7c05dd79-578f-4ce8-acf8-998851ba12bd', 'UPDATE_TIME', '0', '更新时间', '1571304585520');
INSERT INTO `sys_etl_all_field` VALUES ('eddc4c62-4410-4f26-853f-7f5bd5b7be46', '6e47863c-60f5-47ed-a9ed-29ed86f4999f', 'ID', '1', 'ID', '1571304585406');
INSERT INTO `sys_etl_all_field` VALUES ('f4aa130f-1f9e-4f65-82f4-9aee6cabbca0', 'f9457b1f-a0c9-472c-9b5e-51208b041ddd', 'age', '0', 'age', '1561013573236');
INSERT INTO `sys_etl_all_field` VALUES ('f5d401bb-8cf6-4ff0-8702-69a541e4764a', 'd161a67c-7dbe-4dc5-b206-0ec3f0c8d36c', 'ID', '1', '主键', '1571304585604');
INSERT INTO `sys_etl_all_field` VALUES ('f747f1ec-dc65-4d2a-ba9c-dddaecde8ef4', 'cc7ddc3d-18e7-4491-9161-a681a81bae87', 'user_lastlogin', '0', '最后登陆时间', '1571304748643');
INSERT INTO `sys_etl_all_field` VALUES ('f9207675-aea8-4346-a1e1-cb83fb4aab08', '1a130e31-a163-482a-8256-3c6aa4eeb926', 'id', '1', 'id', '1561013552858');
INSERT INTO `sys_etl_all_field` VALUES ('fc2eee09-a798-480b-884a-ddb2a65425eb', 'cc7ddc3d-18e7-4491-9161-a681a81bae87', 'title', '0', 'title', '1571304748643');

-- ----------------------------
-- Table structure for `sys_etl_all_table`
-- ----------------------------
DROP TABLE IF EXISTS `sys_etl_all_table`;
CREATE TABLE `sys_etl_all_table` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '主键',
  `ds_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '数据源id',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '表名',
  `comment` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '表注释',
  `create_time` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_table_name` (`name`,`ds_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='etl数据源对应的所有数据表';

-- ----------------------------
-- Records of sys_etl_all_table
-- ----------------------------
INSERT INTO `sys_etl_all_table` VALUES ('044dda3c-e246-4de4-84ec-d82937d7d435', '9b6782a3-bc4d-440a-9a70-841276ff9dcc', 'person', 'person', '1571304748414');
INSERT INTO `sys_etl_all_table` VALUES ('1a130e31-a163-482a-8256-3c6aa4eeb926', 'd2bf6113-309d-47e2-a754-8ce0c1bd77c5', 'person', 'person', '1561013552660');
INSERT INTO `sys_etl_all_table` VALUES ('495421e9-1158-455c-b401-c42030dd15f3', '9b6782a3-bc4d-440a-9a70-841276ff9dcc', 'cert_api_call', 'cert_api_call', '1571304748414');
INSERT INTO `sys_etl_all_table` VALUES ('5414e602-3f55-4629-8f31-893ee5492d9a', '9b6782a3-bc4d-440a-9a70-841276ff9dcc', 'cert', 'cert', '1571304748414');
INSERT INTO `sys_etl_all_table` VALUES ('56e7f386-1ff3-4a81-bd16-25c3bfc62698', '9b6782a3-bc4d-440a-9a70-841276ff9dcc', 'admin', '管理员表', '1571304748414');
INSERT INTO `sys_etl_all_table` VALUES ('6e47863c-60f5-47ed-a9ed-29ed86f4999f', '5222cf14-c3ea-41c2-a8f7-55e51747341e', 'CERT_API_CALL', 'CERT_API_CALL', '1571304584999');
INSERT INTO `sys_etl_all_table` VALUES ('7c05dd79-578f-4ce8-acf8-998851ba12bd', '5222cf14-c3ea-41c2-a8f7-55e51747341e', 'CERT', 'CERT', '1571304584999');
INSERT INTO `sys_etl_all_table` VALUES ('cc7ddc3d-18e7-4491-9161-a681a81bae87', '9b6782a3-bc4d-440a-9a70-841276ff9dcc', 'user_data', 'user_data', '1571304748414');
INSERT INTO `sys_etl_all_table` VALUES ('d161a67c-7dbe-4dc5-b206-0ec3f0c8d36c', '5222cf14-c3ea-41c2-a8f7-55e51747341e', 'ADMIN', '管理员表', '1571304584999');
INSERT INTO `sys_etl_all_table` VALUES ('e425696d-2c1a-4b53-9105-3aa94b37e70b', '6c0172b4-a95a-43a7-a805-24dbdc9b1373', 'PERSON', 'PERSON', '1561021092716');
INSERT INTO `sys_etl_all_table` VALUES ('efb5fdc3-ba04-49c5-a804-d73f67478de1', '9b6782a3-bc4d-440a-9a70-841276ff9dcc', 'api_log', 'api_log', '1571304748414');
INSERT INTO `sys_etl_all_table` VALUES ('f9457b1f-a0c9-472c-9b5e-51208b041ddd', 'a0d241b9-3680-456d-9e6a-5d92f943a754', 'person', 'person', '1561013573187');

-- ----------------------------
-- Table structure for `sys_etl_data_source`
-- ----------------------------
DROP TABLE IF EXISTS `sys_etl_data_source`;
CREATE TABLE `sys_etl_data_source` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '主键',
  `source_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '数据源名称，唯一',
  `db_type` int(1) NOT NULL DEFAULT '0' COMMENT '数据库类型0-mysql/1-oracle/2-mssql',
  `db_ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '数据库ip',
  `db_port` int(11) NOT NULL DEFAULT '0' COMMENT '数据库端口',
  `db_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '数据库服务名称',
  `db_user_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '数据库用户名',
  `db_pwd` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '数据库用户密码',
  `alive` int(1) NOT NULL DEFAULT '0' COMMENT '数据源是否存活 0-否/1-是',
  `create_time` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '是否有效 0-否/1-是',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_sn` (`source_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='etl数据源';

-- ----------------------------
-- Records of sys_etl_data_source
-- ----------------------------
INSERT INTO `sys_etl_data_source` VALUES ('5222cf14-c3ea-41c2-a8f7-55e51747341e', 'SIGNATER', '1', '10.30.30.24', '1521', 'ORCL', 'SIGNATURE', 'SIGNATURE', '1', '1571304584662', '1');
INSERT INTO `sys_etl_data_source` VALUES ('6c0172b4-a95a-43a7-a805-24dbdc9b1373', 'NANMEIYING', '1', '10.40.40.125', '1521', 'XE', 'NANMEIYING', 'NANMEIYING', '1', '1561021092579', '1');
INSERT INTO `sys_etl_data_source` VALUES ('9b6782a3-bc4d-440a-9a70-841276ff9dcc', 'test', '0', '10.40.40.139', '3306', 'test', 'root', 'root', '1', '1571304748381', '1');
INSERT INTO `sys_etl_data_source` VALUES ('a0d241b9-3680-456d-9e6a-5d92f943a754', 'test_two', '0', '10.40.40.125', '3306', 'test_two', 'root', 'root', '1', '1561013573103', '1');
INSERT INTO `sys_etl_data_source` VALUES ('d2bf6113-309d-47e2-a754-8ce0c1bd77c5', 'test_one', '0', '10.40.40.125', '3306', 'test_one', 'root', 'root', '1', '1561013552619', '1');

-- ----------------------------
-- Table structure for `sys_etl_entity`
-- ----------------------------
DROP TABLE IF EXISTS `sys_etl_entity`;
CREATE TABLE `sys_etl_entity` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '主键',
  `prj_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '项目id',
  `src_tab_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '原表id',
  `src_tab_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '原表名',
  `des_tab_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '目标表id',
  `des_tab_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '目标表名',
  `src_primary_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '原表主键字段',
  `des_primary_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '目标表主键字段',
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `etl_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '作业名称',
  `create_time` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `repeat` int(2) NOT NULL DEFAULT '0' COMMENT '是否重复 0-否/1-是',
  `schedule_type` int(2) NOT NULL DEFAULT '0' COMMENT '定时类型  1-间隔/2-天/3-周/4-月',
  `interval_second` int(11) NOT NULL DEFAULT '0' COMMENT '间隔秒',
  `interval_minute` int(11) NOT NULL DEFAULT '30' COMMENT '间隔分',
  `fixed_hour` int(11) NOT NULL DEFAULT '12' COMMENT '固定时',
  `fixed_minute` int(11) NOT NULL DEFAULT '0' COMMENT '固定分钟',
  `fixed_weekday` int(11) NOT NULL DEFAULT '0' COMMENT '固定周',
  `fixed_day` int(11) NOT NULL DEFAULT '1' COMMENT '固定日',
  `is_exec` int(2) NOT NULL DEFAULT '0' COMMENT '是否在执行ETL传输 0-否/1-是',
  `is_api_exec` int(2) NOT NULL DEFAULT '0' COMMENT '是否在执行API传输 0-否/1-是',
  `last_trans_time` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '上次传输时间',
  `condition` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '检索条件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='etl实体映射表';

-- ----------------------------
-- Records of sys_etl_entity
-- ----------------------------
INSERT INTO `sys_etl_entity` VALUES ('12624c9d-695f-4dd9-abd4-340a95351a7f', 'db3fa21e-3308-46b9-aba3-3904cf41dbc6', '6e47863c-60f5-47ed-a9ed-29ed86f4999f', 'CERT_API_CALL', '56e7f386-1ff3-4a81-bd16-25c3bfc62698', 'cert_api_call', 'ID', 'ID', '', '1571304799275', '1571304799276', '0', '1', '30', '0', '12', '0', '0', '1', '0', '0', '2019-10-17 17:49:29', '');
INSERT INTO `sys_etl_entity` VALUES ('1bb96254-19df-48e9-a64b-1f17293dffcb', '5b11ece4-16ef-4bde-bba8-abaa1c218d91', '1a130e31-a163-482a-8256-3c6aa4eeb926', 'person', 'f9457b1f-a0c9-472c-9b5e-51208b041ddd', 'person', 'id', 'id', '', '1561014278886', '1561014278886', '0', '1', '30', '0', '12', '0', '0', '1', '0', '0', '1970-01-01 00:00:00', '');
INSERT INTO `sys_etl_entity` VALUES ('8ff2bcef-ba2c-4748-b365-8504098087f4', '01a60639-2ce8-4b02-913d-128daac23826', '1a130e31-a163-482a-8256-3c6aa4eeb926', 'person', 'e425696d-2c1a-4b53-9105-3aa94b37e70b', 'PERSON', 'id', 'ID', '', '1561021141842', '1561021141842', '0', '1', '30', '0', '12', '0', '0', '1', '0', '0', '1970-01-01 00:00:00', '');

-- ----------------------------
-- Table structure for `sys_etl_field`
-- ----------------------------
DROP TABLE IF EXISTS `sys_etl_field`;
CREATE TABLE `sys_etl_field` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '主键',
  `entity_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '映射实体id，对应etl_entity表的id字段',
  `src_field_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '原字段名',
  `des_field_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '目标字段名',
  `create_time` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_esd` (`entity_id`,`src_field_name`,`des_field_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='etl字段映射表';

-- ----------------------------
-- Records of sys_etl_field
-- ----------------------------
INSERT INTO `sys_etl_field` VALUES ('06a8a376-8742-429d-a7a1-4333ed0444eb', '12624c9d-695f-4dd9-abd4-340a95351a7f', 'ID', 'ID', '1571304870228');
INSERT INTO `sys_etl_field` VALUES ('2bb460bf-da1f-44f9-a697-a158676e72db', '8ff2bcef-ba2c-4748-b365-8504098087f4', 'id', 'ID', '1561021151438');
INSERT INTO `sys_etl_field` VALUES ('3c7be7d6-c8bc-425e-bc61-8a4d2424f7f7', '8ff2bcef-ba2c-4748-b365-8504098087f4', 'name', 'NAME', '1561021159552');
INSERT INTO `sys_etl_field` VALUES ('409dde16-c01f-4379-9624-81851708484a', '12624c9d-695f-4dd9-abd4-340a95351a7f', 'ID_NUM', 'ID_NUM', '1571304876023');
INSERT INTO `sys_etl_field` VALUES ('5779da6c-35c2-45d0-b4a3-3783341a655a', '12624c9d-695f-4dd9-abd4-340a95351a7f', 'CREATE_TIME', 'CREATE_TIME', '1571304873955');
INSERT INTO `sys_etl_field` VALUES ('5bcbafb0-91d7-4ba4-8579-170caf524cf7', '12624c9d-695f-4dd9-abd4-340a95351a7f', 'PRJ_NAME', 'PRJ_NAME', '1571304878601');
INSERT INTO `sys_etl_field` VALUES ('64706e0c-7676-4d91-abf9-40cebbdb945b', '8ff2bcef-ba2c-4748-b365-8504098087f4', 'age', 'AGE', '1561021155640');
INSERT INTO `sys_etl_field` VALUES ('73c1156e-dc62-4060-be78-60ea82b5682c', '1bb96254-19df-48e9-a64b-1f17293dffcb', 'id', 'id', '1561014365151');
INSERT INTO `sys_etl_field` VALUES ('7fae03e1-6bdb-4fed-bbc4-c8bd531fd82a', '1bb96254-19df-48e9-a64b-1f17293dffcb', 'age', 'age', '1561014371375');
INSERT INTO `sys_etl_field` VALUES ('99cbdcb3-406d-4af6-97af-b9c9d30a492a', '12624c9d-695f-4dd9-abd4-340a95351a7f', 'USER_NAME', 'USER_NAME', '1571304880564');
INSERT INTO `sys_etl_field` VALUES ('ff8c1ece-c583-45c5-9daa-c0bebe4167b9', '1bb96254-19df-48e9-a64b-1f17293dffcb', 'name', 'name', '1561014374070');

-- ----------------------------
-- Table structure for `sys_etl_project`
-- ----------------------------
DROP TABLE IF EXISTS `sys_etl_project`;
CREATE TABLE `sys_etl_project` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '主键',
  `prj_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '项目名称',
  `src_db_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '源数据id',
  `des_db_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '目标数据源id',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '是否有效 0-是/1-否',
  `create_time` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='etl项目表';

-- ----------------------------
-- Records of sys_etl_project
-- ----------------------------
INSERT INTO `sys_etl_project` VALUES ('01a60639-2ce8-4b02-913d-128daac23826', '测试api任务', 'd2bf6113-309d-47e2-a754-8ce0c1bd77c5', '6c0172b4-a95a-43a7-a805-24dbdc9b1373', '0', '1561021121362');
INSERT INTO `sys_etl_project` VALUES ('5b11ece4-16ef-4bde-bba8-abaa1c218d91', '测试ETL任务', 'd2bf6113-309d-47e2-a754-8ce0c1bd77c5', 'a0d241b9-3680-456d-9e6a-5d92f943a754', '0', '1561014202109');
INSERT INTO `sys_etl_project` VALUES ('db3fa21e-3308-46b9-aba3-3904cf41dbc6', 'new_test', '5222cf14-c3ea-41c2-a8f7-55e51747341e', '9b6782a3-bc4d-440a-9a70-841276ff9dcc', '0', '1571304769976');
