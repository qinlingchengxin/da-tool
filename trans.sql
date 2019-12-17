/*
Navicat MySQL Data Transfer

Source Server         : 139-3306
Source Server Version : 50644
Source Host           : 10.40.40.139:3306
Source Database       : trans

Target Server Type    : MYSQL
Target Server Version : 50644
File Encoding         : 65001

Date: 2019-12-17 14:01:18
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
INSERT INTO `sys_etl_all_field` VALUES ('00328880-ac9e-49a7-9e70-2aac4c17cb62', '7eb591cf-b991-4808-aed4-ebf1624ea668', 'password', '0', '密码', '1576512050390');
INSERT INTO `sys_etl_all_field` VALUES ('037719fa-e937-4ad9-a384-9ac280765f77', 'b56ad874-a1de-46d1-8e51-7dff84bb72f1', 'name', '0', 'name', '1576130084853');
INSERT INTO `sys_etl_all_field` VALUES ('25436160-060b-40c5-a389-5e1fcdf69e93', '099938f1-4912-46fb-9215-2d32ead267ee', 'MAG_TYPE', '0', 'MAG_TYPE', '1576549774109');
INSERT INTO `sys_etl_all_field` VALUES ('2cc17ed4-0e71-4f9d-99c6-8c54274248cc', 'b56ad874-a1de-46d1-8e51-7dff84bb72f1', 'time_2', '0', 'time_2', '1576130084853');
INSERT INTO `sys_etl_all_field` VALUES ('3f27c390-abce-4d1b-afdd-36f1d24a2bc4', '099938f1-4912-46fb-9215-2d32ead267ee', 'PASSWORD', '0', 'PASSWORD', '1576549774109');
INSERT INTO `sys_etl_all_field` VALUES ('444552ed-0367-4a20-8701-ffb22cb0c0e0', 'b56ad874-a1de-46d1-8e51-7dff84bb72f1', 'create_time', '0', 'create_time', '1576130084853');
INSERT INTO `sys_etl_all_field` VALUES ('66070de9-fa64-40ff-a873-0a3ca060e807', '099938f1-4912-46fb-9215-2d32ead267ee', 'USERNAME', '0', 'USERNAME', '1576549774109');
INSERT INTO `sys_etl_all_field` VALUES ('76e693c3-6a4c-4f82-bc26-6846b45ee908', 'b56ad874-a1de-46d1-8e51-7dff84bb72f1', 'id', '1', 'id', '1576130084853');
INSERT INTO `sys_etl_all_field` VALUES ('88390ebe-1bef-45c0-9aa8-c1541826e63a', '7eb591cf-b991-4808-aed4-ebf1624ea668', 'mag_type', '0', '类型 0-普通管理员/1-超级管理员', '1576512050390');
INSERT INTO `sys_etl_all_field` VALUES ('a15b9f70-1a09-4aa1-971b-176e8b76f97d', '7eb591cf-b991-4808-aed4-ebf1624ea668', 'username', '0', '用户名', '1576512050390');
INSERT INTO `sys_etl_all_field` VALUES ('cd09667e-fe02-4941-88e8-1368d8e976ad', '099938f1-4912-46fb-9215-2d32ead267ee', 'ID', '0', 'ID', '1576549774109');
INSERT INTO `sys_etl_all_field` VALUES ('f3b0228b-ddd3-4a63-b31f-e4c857eff87d', '7eb591cf-b991-4808-aed4-ebf1624ea668', 'id', '1', '主键', '1576512050390');

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
INSERT INTO `sys_etl_all_table` VALUES ('099938f1-4912-46fb-9215-2d32ead267ee', '0b913e9a-2155-4cf0-85d7-a64fcbdcc4b6', 'ADMIN', 'ADMIN', '1576549739468');
INSERT INTO `sys_etl_all_table` VALUES ('7eb591cf-b991-4808-aed4-ebf1624ea668', '203aa94d-503c-4f3d-9baa-484d2397396e', 'admin', '管理员表', '1576512001453');
INSERT INTO `sys_etl_all_table` VALUES ('b56ad874-a1de-46d1-8e51-7dff84bb72f1', 'eddcd180-9f99-47dc-bb30-879d6ee0f973', 'person', 'person', '1576130084823');

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
  `db_schema` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '数据库模式：金仓数据库特有的模式例如：PUBLIC/CENTER',
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
INSERT INTO `sys_etl_data_source` VALUES ('0b913e9a-2155-4cf0-85d7-a64fcbdcc4b6', 'kingbase', '3', '10.30.30.73', '54321', 'DECENTER', 'CENTER', 'SYSTEM', 'zhulong@abcd123', '1', '1576488871924', '1');
INSERT INTO `sys_etl_data_source` VALUES ('203aa94d-503c-4f3d-9baa-484d2397396e', 'test_one', '0', '10.40.40.139', '3306', 'test_one', '', 'root', 'root', '1', '1576130065539', '1');
INSERT INTO `sys_etl_data_source` VALUES ('eddcd180-9f99-47dc-bb30-879d6ee0f973', 'test_two', '0', '10.40.40.139', '3306', 'test_two', '', 'root', 'root', '1', '1576130084787', '1');

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
INSERT INTO `sys_etl_entity` VALUES ('09ed431c-d462-4ddc-a003-13691cb83fee', '0b58dbcd-42e0-4862-8108-dc773cfa441c', '7eb591cf-b991-4808-aed4-ebf1624ea668', 'admin', '099938f1-4912-46fb-9215-2d32ead267ee', 'ADMIN', 'id', 'ID', '', '1576557706808', '1576557706808', '0', '1', '30', '0', '12', '0', '0', '1', '1', '0', '1970-01-01 00:00:00', '');

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
INSERT INTO `sys_etl_field` VALUES ('05d3634c-40a9-4f13-aa2c-ec512f47e14a', '09ed431c-d462-4ddc-a003-13691cb83fee', 'mag_type', 'MAG_TYPE', '1576557719655');
INSERT INTO `sys_etl_field` VALUES ('108f1045-2b45-471d-826a-b8b5d908bae5', '09ed431c-d462-4ddc-a003-13691cb83fee', 'id', 'ID', '1576557714855');
INSERT INTO `sys_etl_field` VALUES ('1a38ddbf-c550-456f-bea5-163eb2d07e07', '09ed431c-d462-4ddc-a003-13691cb83fee', 'username', 'USERNAME', '1576557737386');
INSERT INTO `sys_etl_field` VALUES ('637f4f08-ab65-46f9-9bdd-07827060ffdc', '09ed431c-d462-4ddc-a003-13691cb83fee', 'password', 'PASSWORD', '1576557733470');

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
INSERT INTO `sys_etl_project` VALUES ('0b58dbcd-42e0-4862-8108-dc773cfa441c', '测试任务', '203aa94d-503c-4f3d-9baa-484d2397396e', '0b913e9a-2155-4cf0-85d7-a64fcbdcc4b6', '0', '1576130100908');
