/*
 Navicat Premium Data Transfer

 Source Server         : myAliyun
 Source Server Type    : MySQL
 Source Server Version : 50642
 Source Host           : 39.107.255.81:3306
 Source Schema         : ultron

 Target Server Type    : MySQL
 Target Server Version : 50642
 File Encoding         : 65001

 Date: 28/04/2019 17:49:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blog_content
-- ----------------------------
DROP TABLE IF EXISTS `blog_content`;
CREATE TABLE `blog_content` (
  `cid` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `slug` varchar(255) DEFAULT NULL,
  `created` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `modified` bigint(20) DEFAULT NULL COMMENT '最近修改人id',
  `content` text COMMENT '内容',
  `type` varchar(16) DEFAULT NULL COMMENT '类型',
  `tags` varchar(200) DEFAULT NULL COMMENT '标签',
  `categories` varchar(200) DEFAULT NULL COMMENT '分类',
  `hits` int(5) DEFAULT NULL,
  `comments_num` int(5) DEFAULT '0' COMMENT '评论数量',
  `allow_comment` int(1) DEFAULT '0' COMMENT '开启评论',
  `allow_ping` int(1) DEFAULT '0' COMMENT '允许ping',
  `allow_feed` int(1) DEFAULT '0' COMMENT '允许反馈',
  `status` int(1) DEFAULT NULL COMMENT '状态',
  `author` varchar(100) DEFAULT NULL COMMENT '作者',
  `gtm_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gtm_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COMMENT='文章内容';

-- ----------------------------
-- Records of blog_content
-- ----------------------------
BEGIN;
INSERT INTO `blog_content` VALUES (122, 'first bog', NULL, NULL, NULL, '<h1>title 1</h1><p><br></p><p><br></p><h1 style=\"font-family: &quot;microsoft yahei&quot;; color: rgb(0, 0, 0);\">hi,this is the first bog test!,this is content<img src=\"/files/91e5ad15-2522-4ca4-b60e-c8d572c51e41.jpeg\" style=\"width: 224.609px; height: 224.609px;\"></h1>', 'article', NULL, '', NULL, NULL, 1, NULL, 0, 1, 'me', '2018-12-06 14:32:39', '2018-12-06 14:32:39');
INSERT INTO `blog_content` VALUES (123, 'second', NULL, NULL, NULL, '<h2>title2</h2><p><br></p><p>content&nbsp; &nbsp; &nbsp;我去二w\'q\'e&nbsp;</p>', 'article', NULL, '', NULL, NULL, 1, NULL, 0, 1, 'me', '2018-12-06 14:25:42', '2018-12-06 14:25:42');
INSERT INTO `blog_content` VALUES (124, '12', NULL, NULL, NULL, '<p>123123123123</p>', 'article', NULL, '', NULL, NULL, 1, NULL, 0, 1, '1', '2018-12-06 14:27:36', '2018-12-06 14:27:36');
INSERT INTO `blog_content` VALUES (125, '123123123', NULL, NULL, NULL, '<p>312312312312qdaadasdasd</p>', 'article', NULL, '', NULL, NULL, 1, NULL, 0, 1, '1212', '2018-12-06 14:29:30', '2018-12-06 14:29:30');
COMMIT;

-- ----------------------------
-- Table structure for edu_certificate
-- ----------------------------
DROP TABLE IF EXISTS `edu_certificate`;
CREATE TABLE `edu_certificate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(32) DEFAULT NULL COMMENT '证书名称',
  `title` varchar(32) DEFAULT NULL COMMENT '标题',
  `keyword` varchar(32) DEFAULT NULL COMMENT '关键词',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `if_proposal` tinyint(1) DEFAULT '0' COMMENT '是否推荐 0否1是',
  `certificate_fee` varchar(16) DEFAULT NULL COMMENT '学费',
  `preferential_fee` varchar(16) DEFAULT NULL COMMENT '优惠学费',
  `term_begin_time` varchar(16) DEFAULT NULL COMMENT '开学时间',
  `term_time` varchar(16) DEFAULT NULL COMMENT '学时',
  `organizer` varchar(16) DEFAULT NULL COMMENT '举办机构',
  `organize_address` varchar(32) DEFAULT NULL COMMENT '举办地点',
  `certificate_type` varchar(32) DEFAULT NULL COMMENT '证书类别（字典edu_certificate_type）',
  `teacher` varchar(12) DEFAULT NULL COMMENT '老师',
  `phone` varchar(16) DEFAULT NULL COMMENT '电话',
  `qq` varchar(16) DEFAULT NULL COMMENT 'QQ',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `wechat` varchar(32) DEFAULT NULL COMMENT '微信',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态 1有效 -1删除',
  `area` varchar(20) DEFAULT NULL COMMENT '地区',
  `file` varchar(64) DEFAULT NULL COMMENT '相关文件',
  `banner` varchar(64) DEFAULT NULL COMMENT 'banner',
  `introduction` text COMMENT '详细介绍',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `index_name` (`name`) USING BTREE,
  KEY `index_area` (`area`) USING BTREE,
  KEY `index_certificate_type` (`certificate_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COMMENT='证书管理';

-- ----------------------------
-- Records of edu_certificate
-- ----------------------------
BEGIN;
INSERT INTO `edu_certificate` VALUES (51, '证书123', '证书1', '证书111222', 'add', 1, '200', '10', '', '', '', '', '公务员', '', '', '', '', '', '', 1, '山西省', '', '', '<p>斯达舒大大所多</p>', '2019-01-18 16:49:03', '2019-01-18 16:49:03');
INSERT INTO `edu_certificate` VALUES (52, '会计证', '会计证', '会计证', '会计证', 1, '', '', '', '', '', '', '计算机类', '', '', '', '', '', '', 1, '北京市', '', '', '<p><br></p>', '2019-01-21 16:49:40', '2019-01-21 16:49:55');
INSERT INTO `edu_certificate` VALUES (53, '黑客证', '黑客证123', '黑客证', '黑客证', 1, '', '', '', '', '', '', '计算机类', '', '', '', '', '', '', 1, '内蒙古自治区', '', '', '<p><br></p>', '2019-01-21 16:50:52', '2019-01-21 16:50:52');
INSERT INTO `edu_certificate` VALUES (54, '雅思', '雅思', '雅思', '雅思', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '', '', '', '<p><br></p>', '2019-01-21 16:51:18', '2019-01-21 16:51:18');
INSERT INTO `edu_certificate` VALUES (55, '托福', '托福13', '托福', '托福', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '北京市', '', '', '<p><br></p>', '2019-01-21 16:51:42', '2019-01-21 16:51:42');
INSERT INTO `edu_certificate` VALUES (56, 'PM', '项目管理', '项目管理', '项目管理', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '', '', '', '<p><br></p>', '2019-01-21 16:52:06', '2019-01-21 16:52:06');
COMMIT;

-- ----------------------------
-- Table structure for edu_enroll_info
-- ----------------------------
DROP TABLE IF EXISTS `edu_enroll_info`;
CREATE TABLE `edu_enroll_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别 0女1男',
  `id_card` varchar(32) DEFAULT NULL COMMENT '身份证号',
  `political` varchar(16) DEFAULT NULL COMMENT '政治面貌',
  `province` varchar(16) DEFAULT NULL COMMENT '省',
  `city` varchar(16) DEFAULT NULL COMMENT '市',
  `address` varchar(128) DEFAULT NULL COMMENT '目前所在地',
  `school` varchar(128) DEFAULT NULL COMMENT '报考学校',
  `specialty` varchar(64) DEFAULT NULL COMMENT '报考专业',
  `enroll_type` varchar(32) DEFAULT NULL COMMENT '报考形式 edu_enroll_type',
  `qualification` varchar(32) DEFAULT NULL COMMENT '目前学历 edu_qualification',
  `graduation_school` varchar(64) DEFAULT NULL COMMENT '毕业院校',
  `graduati_specialty` varchar(64) DEFAULT NULL COMMENT '毕业专业',
  `occupation_type` varchar(32) DEFAULT NULL COMMENT '职业类别 edu_occupation_type',
  `student_type` varchar(32) DEFAULT NULL COMMENT '考生类别 edu_student_type',
  `privilege_type` varchar(32) DEFAULT NULL COMMENT '照顾对象 edu_privilege_type',
  `nation` varchar(16) DEFAULT NULL COMMENT '民族',
  `phone` varchar(16) DEFAULT NULL COMMENT '电话',
  `qq` varchar(16) DEFAULT NULL COMMENT 'QQ',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `wechat` varchar(32) DEFAULT NULL COMMENT '微信',
  `if_delivery` tinyint(1) DEFAULT '0' COMMENT '是否快递 0否 1是',
  `delivery_name` varchar(16) DEFAULT NULL COMMENT '快递名称',
  `delivery_time` datetime DEFAULT NULL COMMENT '快递时间',
  `delivery_num` varchar(64) DEFAULT NULL COMMENT '快递单号',
  `if_pay` tinyint(1) DEFAULT '0' COMMENT '是否付款 0否1是',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态 1有效 -1删除',
  `type` tinyint(1) DEFAULT NULL COMMENT '报名类型0成教1网教2证书',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `index_name` (`name`) USING BTREE,
  KEY `index_school` (`school`) USING BTREE,
  KEY `index_delivery` (`if_delivery`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='报名管理';

-- ----------------------------
-- Records of edu_enroll_info
-- ----------------------------
BEGIN;
INSERT INTO `edu_enroll_info` VALUES (1, '赵圣琦', 1, '411424199908185412', '1', '北京市', '北京市市辖区', '', '', '', '0', '0', '', '', '0', '1', '0', '', '', '', '', '', 1, '', '2018-12-05 10:54:30', '', 0, '', 1, 1, '2018-11-24 15:52:29', '2018-12-19 17:36:44');
INSERT INTO `edu_enroll_info` VALUES (2, '李二狗', 1, '123412312312323', '1', '北京市', '北京市市辖区', '北京', '北大', '挖掘机专业', '1', '4', '清华', '烹饪', '0', '1', '0', '汉族', '', '', '', '', 1, '顺丰', '2018-12-04 12:31:10', '1234123', 1, '', 1, 2, '2018-12-04 10:21:15', '2018-12-05 11:04:12');
INSERT INTO `edu_enroll_info` VALUES (3, '孙悟空', 0, '123412313123123123', '0', '江苏省', '南通市', '北京', '清华', '挖掘机', '1', '0', '', '', '0', '1', '1', '回族', '', '', '', '', 0, '', '2018-12-04 12:29:33', '', 0, '', 1, 1, '2018-12-04 10:25:20', '2019-01-18 16:50:13');
INSERT INTO `edu_enroll_info` VALUES (4, '李三狗', 1, '35321323123123', '0', '山西省', '长治市', '内蒙古自治区通辽市erbazi', '', '', '', '', '', '', '0', '0', '0', '苗族', '', '', '', '', 0, '', NULL, '', 0, '', -1, 1, '2018-12-05 15:22:21', '2018-12-05 15:22:21');
INSERT INTO `edu_enroll_info` VALUES (5, '赵二狗', 1, '411424199210260123', '1', '河南省', '商丘市', '北京市北京市市辖区', '首都师范学院', '法学', '0', '1', '郑州科技学院', '计算机信息与技术', '0', '1', '0', '汉族', '15939090906', '12345678', '12345678@qq.com', '15939090906', 0, '', NULL, '', 0, '爱得起翁翁', -1, 2, '2018-12-07 19:53:10', '2018-12-19 17:25:49');
COMMIT;

-- ----------------------------
-- Table structure for edu_enroll_remark
-- ----------------------------
DROP TABLE IF EXISTS `edu_enroll_remark`;
CREATE TABLE `edu_enroll_remark` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `enroll_id` bigint(20) NOT NULL COMMENT '报名ID',
  `enroll_fee` double(32,0) DEFAULT NULL COMMENT '报名费用',
  `first_fee` double(16,0) DEFAULT NULL COMMENT '第一学年学费',
  `second_fee` double(16,0) DEFAULT NULL COMMENT '第二学年学费',
  `third_fee` double(16,0) DEFAULT NULL COMMENT '第三学年学费',
  `service_item` varchar(128) DEFAULT NULL COMMENT '服务项目',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态 1有效 -1删除',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `index_enroll_id` (`enroll_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='报名备注信息';

-- ----------------------------
-- Records of edu_enroll_remark
-- ----------------------------
BEGIN;
INSERT INTO `edu_enroll_remark` VALUES (9, '赵圣琦', 1, 1223, 54, 12, 2, '潍坊市多个', NULL, -1, '2018-12-04 10:11:54', '2018-12-04 10:11:54');
INSERT INTO `edu_enroll_remark` VALUES (11, '赵圣琦', 1, 20, 10, 1, 1, 'dji', NULL, 1, '2018-12-19 18:00:51', '2018-12-19 18:00:51');
COMMIT;

-- ----------------------------
-- Table structure for edu_news
-- ----------------------------
DROP TABLE IF EXISTS `edu_news`;
CREATE TABLE `edu_news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(32) DEFAULT NULL COMMENT '标题',
  `keyword` varchar(32) DEFAULT NULL COMMENT '关键词',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `if_proposal` tinyint(1) DEFAULT '0' COMMENT '是否推荐 0否1是',
  `news_type` varchar(32) DEFAULT NULL COMMENT '新闻类别（字典edu_news_type）',
  `news_url` varchar(64) DEFAULT NULL COMMENT '链接地址',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态 1有效 -1删除',
  `area` varchar(20) DEFAULT NULL COMMENT '地区',
  `file` varchar(64) DEFAULT NULL COMMENT '相关文件',
  `banner` varchar(64) DEFAULT NULL COMMENT 'banner',
  `introduction` text COMMENT '详细介绍',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_area` (`area`) USING BTREE,
  KEY `index_news_type` (`news_type`) USING BTREE,
  KEY `index_title` (`title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COMMENT='新闻管理';

-- ----------------------------
-- Records of edu_news
-- ----------------------------
BEGIN;
INSERT INTO `edu_news` VALUES (53, 'qwqwedwdw', '', '', 1, '报考指南', '', -1, '', '', '/files/b7b84ca5-d46e-416f-a3ec-8bfc99ae0600.png', '<p><br></p>', '', '2018-12-28 14:51:17', '2018-12-28 14:51:54');
INSERT INTO `edu_news` VALUES (54, '新闻1', '哇', '新闻1', 0, '报考指南', '', 1, '北京市', '', '', '<p>挖到无大所多所大多</p>', '', '2019-01-18 16:45:50', '2019-01-18 16:47:24');
COMMIT;

-- ----------------------------
-- Table structure for edu_order_info
-- ----------------------------
DROP TABLE IF EXISTS `edu_order_info`;
CREATE TABLE `edu_order_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `enroll_info_id` bigint(20) NOT NULL COMMENT '报名信息ID',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `order_num` varchar(64) DEFAULT NULL COMMENT '订单号',
  `pay_state` tinyint(1) DEFAULT '0' COMMENT '付款状态 0未付1已付',
  `order_fee` double(20,0) DEFAULT NULL COMMENT '费用',
  `payment_time` datetime DEFAULT NULL COMMENT '付款时间',
  `payment_type` tinyint(1) DEFAULT NULL COMMENT '付款方式 0微信 1支付宝',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态 1有效 -1删除',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `index_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='报名订单表';

-- ----------------------------
-- Table structure for edu_specialty
-- ----------------------------
DROP TABLE IF EXISTS `edu_specialty`;
CREATE TABLE `edu_specialty` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `university_id` bigint(20) NOT NULL COMMENT '学校ID',
  `proposal_weight` int(12) DEFAULT '0' COMMENT '推荐权重（越大排序越前）',
  `name` varchar(32) DEFAULT NULL COMMENT '专业名称',
  `qualification` varchar(32) DEFAULT NULL COMMENT '学历 edu_qualification',
  `academic_year` varchar(32) DEFAULT NULL COMMENT '学制',
  `type` varchar(32) DEFAULT NULL COMMENT '专业类型 edu_specialty_type',
  `introduction` varchar(255) DEFAULT NULL COMMENT '专业介绍',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态 1有效 -1删除',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `index_name` (`name`) USING BTREE,
  KEY `index_university_id` (`university_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COMMENT='专业管理';

-- ----------------------------
-- Records of edu_specialty
-- ----------------------------
BEGIN;
INSERT INTO `edu_specialty` VALUES (60, 88, 0, '法律事务', '高升专', '2.5', '业余', '入学考试科目：语文、数学、英语', NULL, 1, '2019-01-17 17:57:58', '2019-01-17 17:57:58');
INSERT INTO `edu_specialty` VALUES (61, 88, 0, '警察管理', '高升专', '2.5', '业余', '入学考试科目：语文、数学、英语', NULL, 1, '2019-01-17 17:57:58', '2019-01-17 17:57:58');
INSERT INTO `edu_specialty` VALUES (62, 88, 0, '法学', '专升本', '2.5', '业余', '入学考试科目：政治、英语、民法', NULL, 1, '2019-01-17 17:57:58', '2019-01-17 17:57:58');
INSERT INTO `edu_specialty` VALUES (63, 88, 0, '侦查学', '专升本', '2.5', '业余', '入学考试科目：政治、英语、民法', NULL, 1, '2019-01-17 17:57:58', '2019-01-17 17:57:58');
INSERT INTO `edu_specialty` VALUES (64, 88, 2, '法学', '高中', '5.0', '业余', '入学考试科目：语文、数学、英语、史地综合', '', 1, '2019-01-17 17:57:58', '2019-01-17 18:46:51');
INSERT INTO `edu_specialty` VALUES (65, 88, 40, '测试权重', '初中', '5', '业余', '入学考试科目：政治、英语', '', 1, '2019-01-17 18:49:34', '2019-01-17 18:54:06');
INSERT INTO `edu_specialty` VALUES (66, 89, 0, '法律事务', '高升专', '2.5', '业余', '入学考试科目：语文、数学、英语', NULL, 1, '2019-01-30 11:11:50', '2019-01-30 11:11:50');
INSERT INTO `edu_specialty` VALUES (67, 89, 0, '警察管理', '高升专', '2.5', '业余', '入学考试科目：语文、数学、英语', NULL, 1, '2019-01-30 11:11:50', '2019-01-30 11:11:50');
INSERT INTO `edu_specialty` VALUES (68, 89, 0, '法学', '专升本', '2.5', '业余', '入学考试科目：政治、英语、民法', NULL, 1, '2019-01-30 11:11:50', '2019-01-30 11:11:50');
INSERT INTO `edu_specialty` VALUES (69, 89, 0, '侦查学', '专升本', '2.5', '业余', '入学考试科目：政治、英语、民法', NULL, 1, '2019-01-30 11:11:50', '2019-01-30 11:11:50');
INSERT INTO `edu_specialty` VALUES (70, 89, 0, '法学', '高起本', '5.0', '业余', '入学考试科目：语文、数学、英语、史地综合', NULL, 1, '2019-01-30 11:11:50', '2019-01-30 11:11:50');
INSERT INTO `edu_specialty` VALUES (71, 87, 0, '法律事务', '高升专', '2.5', '业余', '入学考试科目：语文、数学、英语', NULL, 1, '2019-01-30 11:12:09', '2019-01-30 11:12:09');
INSERT INTO `edu_specialty` VALUES (72, 87, 0, '警察管理', '高升专', '2.5', '业余', '入学考试科目：语文、数学、英语', NULL, 1, '2019-01-30 11:12:09', '2019-01-30 11:12:09');
INSERT INTO `edu_specialty` VALUES (73, 87, 0, '法学', '专升本', '2.5', '业余', '入学考试科目：政治、英语、民法', NULL, 1, '2019-01-30 11:12:09', '2019-01-30 11:12:09');
INSERT INTO `edu_specialty` VALUES (74, 87, 0, '侦查学', '专升本', '2.5', '业余', '入学考试科目：政治、英语、民法', NULL, 1, '2019-01-30 11:12:09', '2019-01-30 11:12:09');
INSERT INTO `edu_specialty` VALUES (75, 87, 0, '法学', '高起本', '5.0', '业余', '入学考试科目：语文、数学、英语、史地综合', NULL, 1, '2019-01-30 11:12:09', '2019-01-30 11:12:09');
INSERT INTO `edu_specialty` VALUES (76, 86, 0, '法律事务', '高升专', '2.5', '业余', '入学考试科目：语文、数学、英语', NULL, 1, '2019-01-30 11:17:49', '2019-01-30 11:17:49');
INSERT INTO `edu_specialty` VALUES (77, 86, 0, '警察管理', '高升专', '2.5', '业余', '入学考试科目：语文、数学、英语', NULL, 1, '2019-01-30 11:17:49', '2019-01-30 11:17:49');
INSERT INTO `edu_specialty` VALUES (78, 86, 0, '法学', '专升本', '2.5', '业余', '入学考试科目：政治、英语、民法', NULL, 1, '2019-01-30 11:17:49', '2019-01-30 11:17:49');
INSERT INTO `edu_specialty` VALUES (79, 86, 0, '侦查学', '专升本', '2.5', '业余', '入学考试科目：政治、英语、民法', NULL, 1, '2019-01-30 11:17:49', '2019-01-30 11:17:49');
INSERT INTO `edu_specialty` VALUES (80, 86, 0, '法学', '高起本', '5.0', '业余', '入学考试科目：语文、数学、英语、史地综合', NULL, 1, '2019-01-30 11:17:49', '2019-01-30 11:17:49');
COMMIT;

-- ----------------------------
-- Table structure for edu_university
-- ----------------------------
DROP TABLE IF EXISTS `edu_university`;
CREATE TABLE `edu_university` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(32) DEFAULT NULL COMMENT '学校名称',
  `title` varchar(32) DEFAULT NULL COMMENT '标题',
  `keyword` varchar(32) DEFAULT NULL COMMENT '关键词',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `if_proposal` tinyint(1) DEFAULT '0' COMMENT '是否推荐 0否1是',
  `teacher` varchar(12) DEFAULT NULL COMMENT '老师',
  `phone` varchar(16) DEFAULT NULL COMMENT '电话',
  `qq` varchar(16) DEFAULT NULL COMMENT 'QQ',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `wechat` varchar(32) DEFAULT NULL COMMENT '微信',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注(报读人数，单位：万)',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态 1有效 -1删除',
  `type` tinyint(1) DEFAULT NULL COMMENT '学校类型 0成教 1网教',
  `address` varchar(64) DEFAULT NULL COMMENT '地址',
  `area` varchar(20) DEFAULT NULL COMMENT '地区',
  `logo` varchar(64) DEFAULT NULL COMMENT 'logo',
  `banner` varchar(64) DEFAULT NULL COMMENT 'banner',
  `introduction` text COMMENT '学校介绍',
  `condition` text COMMENT '报名条件',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `index_name` (`name`) USING BTREE,
  KEY `index_area` (`area`) USING BTREE,
  KEY `index_teacher` (`teacher`) USING BTREE,
  KEY `index_phone` (`phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COMMENT='学校管理';

-- ----------------------------
-- Records of edu_university
-- ----------------------------
BEGIN;
INSERT INTO `edu_university` VALUES (20, '中央司法警官学院', '中央司法警官学院', '中央司法警官学院继续教育学院', '中央司法警官学院继续教育学院', NULL, '杨老师', '', '', '', '', '', 1, 0, '河北省保定市北市区七一中路103号', '河北省', '/files/43e83ba0-a7f5-4970-bba2-1d0d1a279845.jpg', '/files/43e83ba0-a7f5-4970-bba2-1d0d1a279845.jpg', '<p><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">中央司法警官学院继续教育学院是司法部直属的唯一一所普通高等警察院校，坐落于历史文化名城—河北省保定市。校园树木葱茏，碧草如茵，环境幽雅，为河北省园林式单位。学校始建于1956年，原名公安部劳改工作干部学校，1983年划归司法部管理。1985年成立中央劳改劳教管理干部学院，1995年更名为中央司法警官教育学院，1999年开始申办筹建普通高校，2002年正式建成中央司法警官学院。作为全国司法行政系统最高学府和刑事司法领军院校，学校是司法行政系统后备人才培养基地、司法行政系统领导干部和高级警官培训基地、司法行政理论研究创新基地，被誉为我国“司法警官的摇篮”。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">目前，学校设有监狱学学院、法学院、矫正教育系、信息管理系、警察管理系、基础课教研部、马列教研部、警察体育教研部、继续教育部、培训部、研究生教育部和现代教育技术中心等12个教学单位以及司法行政科学研究所、律师工作研究中心等7个研究机构和19个党政机构。学校图书馆藏书84.7万册，建有全国唯一的监狱戒毒文献信息中心、律师文献信息中心，拥有司法部重点实验室——现代矫正技术实验室和戒毒康复技术实验室、司法信息安全实验室等16个现代化实验室，在全国司法行政机关建立了40个教学科研实习基地。欢迎报考中央司法警官学院继续教育学院。</span><br></p>', '<p><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">(一)考试时间&nbsp;</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。&nbsp;</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。&nbsp;</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">4.提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。&nbsp;</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">二、报名审查</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">2、学习形式：</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">“业余”学习形式：利用周六、周日到校上课、考试；</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">“函授”学习形式：利用寒、暑假上课、考试。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">3、证书颁发：</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">（1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">（2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">（3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">（4）考生报考的专业原则上应与所从事的专业对口。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">6、户口为学校所在地省外的考生，请及时办理暂住证。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">7、免试生条件详细咨询报名老师。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。</span><br></p>', '2018-12-18 19:47:54', '2018-12-22 11:18:57');
INSERT INTO `edu_university` VALUES (21, '河北交通职业技术学院', '河北交通职业技术学院', '河北交通职业技术学院继续教育学院', '河北交通职业技术学院继续教育学院', NULL, '杨老师', '', '', '', '', '', 1, 0, '石家庄高新区珠江大道219号', '河北省', '/files/820ea8d9-74bc-49f1-935a-35382bdd483e.jpg', '/files/820ea8d9-74bc-49f1-935a-35382bdd483e.jpg', '<p><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">&nbsp; &nbsp; 河北交通职业技术学院继续教育学院是经国家教育部批准的省属普通公办全日制高等院校，学校是河北省重点建设的示范性高职院校，被教育部、交通部等六部委列为国家技能型紧缺人才培养基地。&nbsp;</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">学校始建于1956年，是交通部在全国最早创办的六所公路工程院校之一，2002年5月，经河北省人民政府批准升格为河北交通职业技术学院，校名沿用至今。&nbsp;</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">截至2016年10月，学院由三个校区组成，分别是位于石家庄市珠江大道的主校区、位于石家庄市友谊南大街的西校区和位于天津的航海分院。学院占地面积684.2亩，总建筑面积21.55万平方米，固定资产总值31512万元，教学仪器设备总值4333.875万元，有教学用计算机1938台，图书馆藏书57.36万册；有教职工527人，全日制高职在校生10438人。 欢迎报考</span><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">河北交通职业技术学院继续教育学院</span><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">​</span><br></p>', '<p><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">(一)考试时间&nbsp;</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。&nbsp;</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。&nbsp;</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。&nbsp;</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">二、报名审查</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">2、学习形式：</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">“业余”学习形式：利用周六、周日到校上课、考试；</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">“函授”学习形式：利用寒、暑假上课、考试。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">3、证书颁发：</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">（1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">（2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">（3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">（4）考生报考的专业原则上应与所从事的专业对口。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">6、户口为学校所在地省外的考生，请及时办理暂住证。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">7、免试生条件详细咨询报名老师。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。</span><br></p>', '2018-12-18 19:54:10', '2018-12-22 11:14:39');
INSERT INTO `edu_university` VALUES (22, '河北建材职业技术学院', '河北建材职业技术学院', '河北建材职业技术学院继续教育学院', '河北建材职业技术学院继续教育学院', NULL, '杨老师', '', '', '', '', '', 1, 0, '河北省秦皇岛市海港区文育路8号', '河北省', '/files/84ec6b7e-e56d-4cf7-b7ea-a5e6c43b492f.jpg', '/files/84ec6b7e-e56d-4cf7-b7ea-a5e6c43b492f.jpg', '<p><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">&nbsp; &nbsp;河北建材职业技术学院继续教育学院是经河北省人民政府批准、教育部备案的、全国唯一以“建材”命名的高等职业技术学院，被国家劳动和社会保障部评为“创新能力培训实验学校”，被中国教育科学研究院和全国高职高专协作会评为“中国十大特色高职院校”，是教育部全国建材教指委副主任单位、河北省建材职业教育集团牵头单位，是河北省建材工业协会副会长单位、河北省硅酸盐学会副理事长单位、河北省服务外包培训基地、教育部支援西部教育顾问院校。2007年，教育部高职高专院校人才培养工作水平评估优秀。2009年，被河北省人事厅授予“就业工作先进单位”。2010年，被秦皇岛市委、市政府命名为“文明单位标兵”。 2011年，被河北省教育厅授予“依法治校示范校”。2013-2014年，被河北省委、省政府授予文明单位。2016年，我院大学生创业园被河北省教育厅授予“河北省大学生创业孵化示范园”荣誉称号。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">河北建材职业技术学院的前身是1978年建立的国家建材总局秦皇岛玻璃工业技工学校，1985年增建国家建材局管理干部学院秦皇岛分院，1998年划转河北后与河北省建筑材料工业学校合并成立河北建材职工大学，2001年改建为河北建材职业技术学院，同年底划归河北省教育厅管理。办学层次以普通高等职业教育为主，以职业培训为新增长点，以联办远程网络教育为延伸。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">河北建材职业技术学院地处全国首批14个沿海开放城市之一的秦皇岛市，位于西部高校园区。南濒渤海、北依开发区、西邻奥体中心、东接世界第一能源大港——秦皇岛港，自然与人文环境俱佳，是理想的办学之地。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">截至目前，学院占地242亩，总建筑面积17万多平方米，资产总值1.5亿元；馆藏各类图书80万余册；有国家财政支持的建筑装饰材料检测实训基地，校内实训中心8个，实训室85个，耀华玻璃集团、冀东发展集团、深南玻等校外实训基地99个。学院设有通用工种国家职业技能鉴定所、建材行业特有工种职业技能鉴定站、电子商务职业资格鉴定站、调酒师技能鉴定站、高等教育自学考试考点、全国计算机等级考试考点、全国公共英语考试考点、全国统计专业职务秦皇岛考区、河北省创新能力定级考试考点、河北省会计从业资格考试秦皇岛考区等。学院还与韩国全州大学、韩国群山大学、韩国济州岛观光大学、马来西亚世纪大学等高校合作开办“专本连读”、“专本硕连读”国际合作班。欢迎报考河北建材职业技术学院成人教育学院。</span><br></p>', '<p><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">(一)考试时间&nbsp;</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。&nbsp;</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。&nbsp;</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。&nbsp;</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">二、报名审查</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">2、学习形式：</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">“业余”学习形式：利用周六、周日到校上课、考试；</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">“函授”学习形式：利用寒、暑假上课、考试。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">3、证书颁发：</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">（1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">（2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">（3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">（4）考生报考的专业原则上应与所从事的专业对口。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">6、户口为学校所在地省外的考生，请及时办理暂住证。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">7、免试生条件详细咨询报名老师。</span><br style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\"><span style=\"font-family: &quot;sans serif&quot;, tahoma, verdana, helvetica; font-size: 12px;\">8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。</span><br></p>', '2018-12-18 19:57:53', '2018-12-22 11:15:25');
INSERT INTO `edu_university` VALUES (23, '河北机电职业技术学院', '河北机电职业技术学院', '河北机电职业技术学院继续教育学院', '河北机电职业技术学院继续教育学院', NULL, '杨老师', '', '', '', '', '', 1, 0, '河北邢台泉北西大街1169号', '河北省', '/files/5d2acf2c-07be-44f0-a948-47f87e3672c9.jpg', '/files/5d2acf2c-07be-44f0-a948-47f87e3672c9.jpg', '<p>&nbsp; &nbsp; 河北机电职业技术学院继续教育学院始建于1956年，先后在承德、石家庄、保定、邯郸等地办学，现位于邢台市区，西临风景秀丽的太行山脉，京广高铁、京港澳高速、邢衡高速、邢汾高速贯穿本市，交通便利，郭沫若曾两次为学校亲笔题写校名。2003年4月，河北省人民政府批准学校独立升格为普通高等院校，改名为“河北机电职业技术学院”。<br> 河北机电职业技术学院是一所隶属于河北省教育厅的国办全日制普通高等院校，是河北省示范性高等职业院校、国家机电行业骨干院校、全国机械行业校企合作与人才培养优秀职业院校、河北省装备制造业职业教育集团牵头单位、高等职业院校专业骨干教师国家级培训项目基地。2014年获省教育厅批复与邢台学院、邢台市装备制造行业协会共建“邢台学院机电工程学院”，填补了邢台市无培养应用型本科机电类专业院校的空白，学院从此步入培养应用技术型本科人才的行列，为专科、本科到研究生的上升通道相互衔接奠定了良好基础。<br> 河北机电职业技术学院占地面积近800亩，固定资产6.41亿元，学院面向全国招生，在校生近万人，开设有机械制造与自动化、电气自动化技术、无人机应用技术、汽车检测与维修技术、建筑工程技术、通信技术技术、会计、休闲体育等41个专业，其中中央财政支持的职业教育重点建设专业5个，全国机械行业特色专业3个，河北省示范专业2个，河北省教育行业标准贯标样板学校专业2个，形成了5个机械、电气类品牌专业为龙头，15个相关专业为支撑的文管兼备的办学格局。<br> 河北机电职业技术学院拥有国家示范性电工电子与自动化技术专业职业教育实训基地、国家数控技术技能型紧缺人才培养实训基地、央财支持的机械制造与自动化技术专业、汽车电子技术专业职业教育实训基地、全国信息技术职业能力培训网络培训中心和河北省高校金属材料加工与数字化成型应用技术研发中心；建有同时容纳600名学生实习，含机、电、钳、铸、焊、模具等生产性的校办工厂等36个校内实习实训场所，校外实训和产学合作基地210个；设有国家职业技能鉴定所，ATA特许授权考试站、国家制造业信息化培训中心三维CAD教育培训基地等，可对36个工种进行职业技能培训和技能鉴定。<br> 欢迎报考河北机电职业技术学院成人教育学院。<br> </p><div><br></div>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-18 20:05:46', '2018-12-22 11:13:23');
INSERT INTO `edu_university` VALUES (24, '河北环境工程学院', '河北环境工程学院', '河北环境工程学院继续教育学院', '河北环境工程学院继续教育学院', NULL, '杨老师', '', '', '', '', '', 1, 0, '河北省秦皇岛市北戴河区金港大道8号', '河北省', '/files/19a81f15-d859-4b5c-905b-751e0210d355.jpg', '/files/19a81f15-d859-4b5c-905b-751e0210d355.jpg', '<p>&nbsp;河北环境工程学院继续教育学院现有全日制在校生7600余人，设有环境科学系、环境工程系、生态学系、信息工程系、环境艺术系、经济学系、人文社科系、体育系、公共课部、马列主义理论教学部、继续教育部、环境技术研究与实验中心、现代化教学中心、国际交流中心14个教学单位；设有环境教育研究所、环境信息技术研究所、循环经济研究所、生态保护研究所、环境监察与应急管理研究中心、环境工程技术服务与咨询中心、环境艺术设计与服务中心、环境与社会发展研究中心、环境法咨询与服务中心等9个研究所。学院构建了“环境管理类”、“环境工程类”、“生态环境保护类”、“环境艺术类”、“环境保护支撑类”五大专业群，形成了“环境类专业齐全强势、非环境类专业特色优势”的专业建设格局。学院目前设有环境科学、环境工程、环境生态工程等10个本科专业；专科专业38个，其中环境类本专科专业近20个，涵盖了环境保护工作的各个领域和环境保护工作的全过程。“环境管理专业”、“环境监察专业”、“生态保护专业”是学院的首创专业，具有深厚的办学底蕴和广泛的影响。在多年的办学过程中，学院形成了符合高等教育规律、具有自身特色的人才培养模式。学院先后建成了2门国家级精品资源共享课程、2门国家级精品课、1门省级精品资源共享课程、10门省级精品课、3个省级示范专业、2个省级优秀教学团队和2个中央财政支持的实习实训基地。<br> 师资情况：学院现有教职工498人，专任教师366人。专任教师中有高级职称教师167人，其中正高级职称38人、副高级专业技术职称139人。教师中有1名河北省教学名师，20名省市级优秀教师、优秀教育工作者，2名秦皇岛市首批市管优秀专家，3名秦皇岛市级专业技术拔尖人才。11名专家、教授被西北农林科技大学、燕山大学、石家庄铁道大学、河北科技师范学院、哈尔滨体育学院、河北农业大学等知名大学聘为博士研究生、硕士研究生导师。欢迎报考河北环境工程学院成人教育学院。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-18 20:08:25', '2018-12-22 11:12:26');
INSERT INTO `edu_university` VALUES (25, '河北化工医药职业技术学院', '河北化工医药职业技术学院', '河北化工医药职业技术学院继续教育学院', '河北化工医药职业技术学院继续教育学院', NULL, '杨老师', '', '', '', '', '', 1, 0, '河北省石家庄市方兴路88号', '河北省', '/files/5aa44b99-d502-4589-a778-49db9ee864c5.jpg', '/files/5aa44b99-d502-4589-a778-49db9ee864c5.jpg', '<p>河北化工医药职业技术学院继续教育学院始终与民族命运共浮沉，与时代脉搏同起伏。百年前，中国半殖民地半封建社会程度进一步加深，有识之士努力寻求振兴中华之路，认识到实业救国、教育救国的重要社会功效，在此背景下宣统元年（1909年）清政府于保定设置了“直隶省立补习学堂”，直隶提学使司委任省视学张良弼先生为第一任堂长。1912年，学堂更名为直隶甲种工业学校，是直隶仅有的一所中等工业专门学校，1934年定名为河北省立保定高级工业职业学校。1937年日寇全面侵华，保定沦陷，学校被迫停课并迁址河南省新安县石寺镇、陕西省周至、西安等地艰难办学。1946年在天津新开河法政桥北（原天津商职旧址）复校，成立“河北省立保定工业职业学校”。1947年，时在西安的“河北省立工业职业学校”在校生和部分教职员工并入“河北省立保定工业职业学校”。1949年学校从天津迁至石家庄，定名“河北省工业学校”。1982年更名为“河北化工学校”。2002年5月，经河北省政府批准，升格改建为“河北化工医药职业技术学院”，学校跨入高等职业教育行列。<br> <br> 学校现状<br> 融汇了百年历史精华和历代前辈智慧辛劳的河北化工医药职业技术学院，已发展成为占地926亩，建筑面积24.21万㎡，馆藏图书130余万册，教职工454名，在校生规模10199名，服务面向涵盖化工、医药、生物、轻工、机电、管理、计算机等行业，设置55个专业的高等职业技术学校。学校建有化工技术、制药技术、机电技术、信息与管理四大类实训基地，其中2个石油和化工行业职业教育与培训全国示范性实训基地，1个中央财政支持的实训基地，2个省级示范性实训基地，1个化工行业高级技能人才实训基地，8个专项技能培训基地，21个实训中心，111个实训室，1个河北省高校生物反应器与蛋白类药物开发应用技术研发中心。拥有国家级职业技能鉴定所和化工特有工种职业技能鉴定站。校外与企业有长期稳定合作关系的实训基地428家。学校拥有一支专业扎实，教学严谨、乐于创新、甘于奉献、责任心强的教师队伍。其中教授35人，博士生导师1人，享受国务院特贴专家2人，省管优秀专家1人，省突贡专家2人，国家百千万人才1人，省“三三三”人才7人，省级教学名师1人，全国化工职业教育教学名师3人。<br> 欢迎报考河北化工医药职业技术学院成人教育学院。<br> <br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-18 20:16:33', '2018-12-22 11:12:01');
INSERT INTO `edu_university` VALUES (26, '河北轨道运输职业技术学院', '河北轨道运输职业技术学院', '石家庄铁路运输学校继续教育学院河北轨道运输职业技术学院', '石家庄铁路运输学校继续教育河北轨道运输职业技术学院', NULL, '杨老师', '', '', '', '', '', 1, 0, '石家庄经济技术开发区赣江路9号', '河北省', '/files/426f5c87-85af-4fa7-9ebc-a39d2e5a70de.jpg', '/files/426f5c87-85af-4fa7-9ebc-a39d2e5a70de.jpg', '<p>&nbsp;石家庄铁路运输学校继续教育学院，现名河北轨道运输职业技术学院继续教育学院，河北轨道运输职业技术学院是一所经河北省政府批准、教育部备案，隶属于河北省人力资源和社会保障厅，实施高职教育、中专教育和技工教育人才培养，轨道交通行业特色鲜明、面向全国招生的公办全日制普通高等职业院校。<br> 历史传承<br> 河北轨道运输职业技术学院前身为“铁道部职工学校”，始建于1949年7月，历经“铁道部石家庄中级技工学校”“石家庄铁路学院”“北京铁路局石家庄铁路运输学校”“石家庄铁路运输学校”等转隶演变。随着职业教育形势的发展，原石家庄铁路司机学校、原河北省劳动和社会保障厅技工学校分别于2000年、2007年并入石家庄铁路运输学校。2012年2月，学院依托石家庄铁路运输学校雄厚办学实力和中博科技发展有限公司（前身为石家庄拖拉机厂）资源孕育而生。<br> 办学资源<br> 河北轨道运输职业技术学院总占地面积514亩，建筑面积22万平方米，办学配套设施齐全。现有教职工近600名，设有轨道运输系、轨道机车系、铁道车辆系、城市轨道交通系、客运服务系、机电系、管理工程系、基础教学部、思想政治理论课教学科研部、成人教育学院等10个教学机构。开设了轨道运输主干专业为主的26个专业。其中轨道交通运营管理专业为全国职业院校交通运输大类示范专业点，铁道机车专业被列为河北省教育厅高等职业教育“三年创新行动计划”骨干建设专业。<br> 办学特色<br> 河北轨道运输职业技术学院职业教育特色鲜明，建有国家职业技能鉴定所和铁路特有工种鉴定站，是人力资源和社会保障部批准的“国家高技能人才培养示范基地”、中国铁路总公司“运输类专业技术人员和机车驾驶员培训基地”、北京交通大学远程教育教学中心；是河北省信息产业厅“河北省电子信息行业特有工种职业技能实训基地”；也是“北京铁路局客运培训基地”。<br> 办学实力<br> 河北轨道运输职业技术学院成功承办第一届、第四届全国铁道行业职业技能大赛车站值班员竞赛、《中国大能手》华北赛区海选启动仪式、中国铁路总公司2017年调度职业技能竞赛等多项大型活动，利用学院的品牌效应，在制定比赛规程、评判标准、场地设备提供、赛事指导咨询等方面发挥积极作用。学院学子先后在全国铁道职业院校职业技能比赛、《中国大能手》全国大赛、全国大学生机械创新设计大赛、河北省大学生课外学术科技作品竞赛等众多知名赛事中屡获佳绩。欢迎报考河北轨道运输职业技术学院成人教育学院。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-18 20:21:44', '2018-12-22 11:11:30');
INSERT INTO `edu_university` VALUES (27, '河北东方学院', '河北东方学院', '河北东方学院继续教育学院', '河北东方学院继续教育学院', NULL, '杨老师', '', '', '', '', '', 1, 0, '河北廊坊经济开发区东方大学城圣陶路', '河北省', '/files/1ac6693d-d963-4786-a82b-b14813af6e0f.jpg', '/files/1ac6693d-d963-4786-a82b-b14813af6e0f.jpg', '<p>河北东方学院继续教育学院是教育部批准、河北省教育厅主管的全日制普通本科高校。学校现有在校生近万人，涵盖医学、工学、管理学、艺术学等多个学科门类，设有本科专业13个，专科专业30个。<br> 河北东方学院拥有廊坊和北京两个校区，廊坊校区位于北京南东方大学城内，距天安门广场40公里，与首都二机场毗邻。占地面积782亩，建筑面积40万平方米，教学设施、生活设施完善。校区环境优美，银杏树、梧桐树郁郁葱葱，雄伟的罗马柱屹立于正门两侧。北京站805路公交车直达学院。<br> 北京校区位于京津冀核心区，有“天子脚下、御驾行宫”美誉的北京东燕郊高新区，占地面积200余亩，建筑面积20余万平方米，教学设施、生活设施完善，目前承担学校的对外培训、继续教育等任务，由国贸始发的811至815路公交车直达校园。<br> 河北东方学院师资力量雄厚，现有教职工600余人。30%以上的专任教师有副教授以上职称； 33%以上的专任教师有硕士、博士学位；专任教师中有国务院津贴获得者，有院士工作室，多位三级教授。专科学生入学后，与本科生共享优质师资，为今后的学习深造打下坚实的基础。<br> 河北东方学院设有医学院、交通学院、管理学院、文物艺术学院等4个二级学院，设有基础教学部、图书馆、体育馆、继续教育学院、附属爱德堡医院等多个二级教辅单位。学校图书馆建筑面积1.7万平方米，馆藏图书60余万册，已经实现了“藏、借、阅、咨、管”一体化服务；学校体院馆建筑面积2万平方米，其中羽毛球馆5800平方米、游泳馆4700平米、网球馆6800平米、室内篮球馆2700平米。欢迎报考河北东方学院继续教育学院。<br></p><div style=\"left: -1981px; top: 83px; width: 1px; height: 1px; overflow: hidden; white-space: nowrap; position: absolute;\" class=\"__kindeditor_paste__\"></div>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-18 20:24:11', '2018-12-22 11:11:01');
INSERT INTO `edu_university` VALUES (28, '河北地质职工大学', '河北地质职工大学', '河北地质职工大学继续教育学院', '河北地质职工大学继续教育学院', NULL, '杨老师', '', '', '', '', '', 1, 0, '河北石家庄市中山西路901号', '河北省', '/files/cc249e86-f73b-4c6e-ab18-4062e50d1814.jpg', '/files/cc249e86-f73b-4c6e-ab18-4062e50d1814.jpg', '<p>河北地质职工大学继续教育学院，成立于1979年，是经河北省人民政府批准、国家教育部备案的独立建制公办高校，2003年经教育部批准纳入普通高等教育招生系列。<br> 河北地质职工大学拥有三大系十七个骨干专业，是位于长江以北的一所具有地学特色的专业门类齐全的高职院校。学校坚持“以特色办学，以质量立校”，充分利用国务院大力发展职业教育政策和国务院大力加强地质工作的有利时机，顺利进入了普招系列，实现了学校快速、健康、协调发展的新局面。大部分毕业生已成为项目负责、工程师、高级工程师或担任领导职务，为祖国的大发展做出了积极贡献。现蟠龙湖分校区建设项目已经启动。欢迎报考河北地质职工大学继续教育学院。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-18 20:27:19', '2018-12-22 11:10:39');
INSERT INTO `edu_university` VALUES (29, '沧州职业技术学院', '沧州职业技术学院', '沧州职业技术学院继续教育学院', '沧州职业技术学院继续教育学院', NULL, '杨老师', '', '', '', '', '', 1, 0, '河北省沧州市运河区九河西路', '河北省', '/files/4595a73a-5eb2-43ab-bc68-a9772ca383e8.jpg', '/files/4595a73a-5eb2-43ab-bc68-a9772ca383e8.jpg', '<p>沧州职业技术学院继续教育学院是2000年经河北省人民政府批准建立的国办全日制普通高等职业院校。学院前身始建于1958年，有着明晰的办学指导思想、先进的办学理念、准确的办学定位、鲜明的办学特色、优良的校园文化和浓厚的学术氛围。多年来，为区域经济和社会发展培养了一大批技术技能人才。现为河北省优质校建设单位、石油和化工行业职业教育与培训全国示范性实训基地、中国高等学历教育认证中心、河北省高技能人才培训基地、河北省高校毕业生就业(创业)服务基地、沧州市安全生产考试点。<br> 沧州职业技术学院校园占地1120亩，建筑面积30余万㎡。具备优越的教育教学、科研环境。拥有全国示范性实训基地1个，中央财政支持的职业教育实训基地建设项目2个。沧州市政府依托我院建设的公共实训基地项目正在建设之中，建成后将为沧州市职业院校学生培养、工厂企业员工培训和社会再就业培训提供强有力的支撑。<br> 沧州职业技术学院师资力量雄厚。现有教职工918人，其中，专任教师584人；教授、研究员47人，副高职以上职称223人；双师素质教师占84%；享受国务院政府特殊津贴的专家1人，省管优秀专家1人，省突出贡献中青年专家6人，市级专业技术拔尖人才24名。全日制在校生12000人，近三年毕业生平均就业率92%以上。<br> 欢迎报考沧州职业技术学院继续教育学院成人教育。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-18 20:29:10', '2018-12-22 11:10:17');
INSERT INTO `edu_university` VALUES (30, '渤海理工职业学院', '渤海理工职业学院', '渤海理工职业学院继续教育学院', '渤海理工职业学院继续教育学院', NULL, '杨老师', '', '', '', '', '', 1, 0, '河北省黄骅市北海路', '河北省', '/files/f1dd7cc0-e818-40bd-91f2-221e33941fbf.jpg', '/files/f1dd7cc0-e818-40bd-91f2-221e33941fbf.jpg', '<p>渤海理工职业学院继续教育学院（学院国标代码:14472）是2013年经河北省人民政府批准、国家教育部备案、面向全国招生的全日制普通高等院校。学院位于“环渤海、环京津”美丽的海滨城市河北省黄骅市，占地800亩，建筑面积13.17万平方米，学院环境优美，教学、生活服务设施完备。<br> 学院在河北省教育厅2014、2015、2016年度民办学校办学情况检查中连续三年获得“优秀”；2015年被教育部遴选为首批100所“现代学徒制试点”高职院校；被中国石化联合会授予“中国石油和化学工业院校文化建设先进单位”；学院是中国石油和化学工业联合会教育工作委员会委员单位、中国化工教育协会副会长单位、河北省民办教育协会副会长单位；获黄骅市“支持地方发展特殊贡献奖”；院团委获得沧州市、黄骅市“五四红旗团委”等荣誉称号。<br> 渤海理工职业学院秉承“德技双修、厚德尚能、立德树人、修德精技”的办学理念，依托河北众诚企业集团办学优势，主动适应区域经济发展方式和产业结构调整，依据社会和行业对人才的需求，探索人才培养模式的改革，推行“工学结合、产教融合、双主体育人”以及“现代学徒制”等人才培养模式，学院以培养学生专业技能和职业素养为中心，采取培养目标学年化“三层递进”、分层教学滚动式管理、顶岗实习分段跟进、 校企联合订单培养等模式，取得了良好的教学成果，人才培养质量得到全面提升。2016年承接“河北省高等职业教育创新发展行动计划（2015-2018）实施方案”9个项目。<br> 渤海理工职业学院目前设有四系一部，即建筑工程系、机电工程系、经贸管理系、信息工程系、基础部。开设有汽车营销与服务(服务销售方向)、电气自动化技术、电子信息工程技术、工程造价、会计、休闲服务与管理、电子商务、汽车检测与维修技术、汽车车身维修技术、房地产经营与管理、建筑材料工程技术、酒店管理、高尔夫球运动与管理、商务管理、物流管理、机电一体化技术、建筑工程技术、物业管理、市场营销、人力资源管理、影视多媒体技术、计算机网络技术、应用化工技术、机械制造与自动化、新能源汽车技术、建筑室内设计、老年服务与管理、移动互联应用技术 、药品生产技术、智能控制技术专业智能制造技术方向、工业机器人技术、城市轨道交通机电技术、城市轨道交通运营管理、旅游管理、城市轨道交通工程技术、高速铁路客运乘务、大数据技术与应用等37个专业，在省内外建有实训基地82个。<br> 欢迎报考渤海理工职业学院继续教育学院成人教育。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-18 20:31:34', '2018-12-22 11:09:54');
INSERT INTO `edu_university` VALUES (31, '泊头职业学院', '泊头职业学院', '泊头职业学院继续教育学院', '泊头职业学院继续教育学院', NULL, '杨老师', '', '', '', '', '', 1, 0, '河北省泊头市解放西路光明街150号', '河北省', '/files/c24d202b-a4b3-4aa7-b0a0-9211475bbd5b.jpg', '/files/c24d202b-a4b3-4aa7-b0a0-9211475bbd5b.jpg', '<p>泊头职业学院继续教育学院是经河北省政府批准、教育部备案的国办全日制普通高校，实施专科层次教育。她是一所富有光荣革命传统的历史名校，其前身为1925年9月建校的“直隶省立第九师范学校”，新中国成立后，更名为“河北泊头师范学校”。2000年7月，更名为沧州师范专科学校泊头分校，开始招收全日制专科生，举办大学专科教育。2009年4月，经教育部备案批准，升格改建为泊头职业学院。建校九十三年来，学院文化薪火相传，形成了良好的校风、教风、学风，为河北省乃至全国培养了大批优秀人才，为民族解放、新中国诞生以及社会主义建设事业做出了令人瞩目的贡献，被誉为“津南革命的策源地”、“沧州黄埔”。<br> 学院座落于素有“中国铸造名城”、“汽车模具之乡”、“中国鸭梨第一乡”之称的泊头市，东临渤海，北依京津，交通便利。<br> 学院占地571亩，建筑面积17.6万平米，固定资产总值2.6亿元。主校区位于泊头市中心解放西路150号，建有4栋教学楼、4栋实训楼、9栋学生公寓、4座学生餐厅、办公楼、图书馆、高标准体育场等。学院教学科研环境优越，拥有设备齐全、条件完备的各类实习实训室及专业教室，建有校园宽带网，图书馆藏书43.8万册，电子图书500GB。校园环境优美，绿化率达40%以上，绿树葱茏，芳草含碧，百花飘香，亭台楼阁掩映其间，被河北省政府命名为花园式学校、省级绿色学校，是兴学育人的理想场所。<br> 学院的办学目标是以教育类专业为主导，以经济管理类、装备制造类、艺术社会服务类专业为辅翼，立足沧州及渤海新区，面向全省，辐射环渤海区域，服务于京津冀一体化，服务区域经济发展，坚持应用型、开放式、有特色、高水平的办学定位，构建多元化人才培养体系，为社会培养大批高素质技术技能型人才，为地方经济社会发展提供智力支撑和人力资源保障。</p><p>欢迎报考泊头职业学院继续教育学院<br></p><div style=\"left: -1981px; top: 105px; width: 1px; height: 1px; overflow: hidden; white-space: nowrap; position: absolute;\" class=\"__kindeditor_paste__\"></div>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-18 20:33:41', '2018-12-22 11:09:24');
INSERT INTO `edu_university` VALUES (32, '保定职业技术学院', '保定职业技术学院', '保定职业技术学院继续教育学院', '保定职业技术学院继续教育学院', NULL, '杨老师', '', '', '', '', '', 1, 0, '保定市朝阳南大街613号', '河北省', '/files/27e348bd-8490-463f-959f-e58ccabd96f9.jpg', '/files/27e348bd-8490-463f-959f-e58ccabd96f9.jpg', '<p>保定职业技术学院继续教育学院是一所国办综合类全日制普通高等职业学校，座落于历史文化名城保定市。学院前身始建于1935年，具有83年悠久的办学历史。 <br> 学院现有全日制在校生10400余人。分东、西、北三个校区，校园占地面积420余亩，校舍建筑面积18.5万平方米，固定资产总值3.4亿多元，教学科研仪器设备总值5387.23万元。各类图书资料116.39万册，拥有设备先进、功能完备的校园计算机网，教学用计算机3500多台，有合计近7000个座位的现代化多媒体教室。现有专任教师490人，其中教授49人，副教授154人，博士2人，硕士308人，全国优秀教师2人，河北省有突出贡献的中青年专家2人，入选省新世纪“三三三”人才工程7人，省教学名师4人，省优秀教师4人，市新世纪学术技术带头人22人，市名师12人，“双师型”教师占80%以上。<br> 学院设有农林与生物工程系、畜牧兽医系、建筑工程系、机电工程系、计算机信息工程系、经济管理系、商务技术系、贸易与旅游管理系、艺术设计系、传媒艺术系10系和马克思主义学院以及基础教学部、体育教学部、现代教育技术部3部，开设农林牧医、先进制造、电子信息、建筑施工、财经商贸与服务、艺术设计与传媒等6大专业群40余个专业。拥有国家骨干专业2个、省教改示范专业3个、国家精品资源共享课程2门、省精品课程10门。建有先进制造、电子信息、财经商贸、现代农业、现代服务业、艺术设计、影视传媒等12个校内实训中心130余个实训室。与长城汽车、保定-中关村创新中心、中铁物流、中国网库、保定智慧农业联盟、大北农集团、保定广播电视台、保定市广告协会等多家知名企事业单位合作建设校外实训基地百余处。欢迎报考保定职业技术学院继续教育学院。<br> </p><div><br> </div><div style=\"left: -1981px; top: 137px; width: 1px; height: 1px; overflow: hidden; white-space: nowrap; position: absolute;\" class=\"__kindeditor_paste__\"></div>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-18 20:35:33', '2018-12-22 11:08:54');
INSERT INTO `edu_university` VALUES (33, '保定电力职业技术学院', '保定电力职业技术学院', '保定电力职业技术学院继续教育学院', '保定电力职业技术学院继续教育学院', NULL, '杨老师', '', '', '', '', '', 1, 0, '保定市竞秀区乐凯南大街1278号', '河北省', '/files/3575a239-128c-4789-b03f-63cd24c1aee7.jpg', '/files/3575a239-128c-4789-b03f-63cd24c1aee7.jpg', '<p>保定电力职业技术学院继续教育学院位于中国历史文化名城——河北保定。 其前身始建于1957年，现隶属国网冀北电力有限公司，是一所伴随着电力工业发展应运而生，有着五十多年办学历史和深厚文化底蕴、办学特色鲜明的高等电力职业技术学院，是河北省唯一一所有着电力行业背景的公办高职院校。 <br> 保定电力职业技术学院为国家培养和输送了数以万计的优秀专业技术人才，分布在全国29个省、市、自治区的电力和其它行业，为我国的电力建设和国民经济发展做出了突出贡献并发挥着重要作用。 <br> 欢迎报考保定电力职业技术学院成人教育学院。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-18 20:37:57', '2018-12-22 11:06:58');
INSERT INTO `edu_university` VALUES (34, '承德石油高等专科学校', '承德石油高等专科学校', '承德石油高等专科学校继续教育学院', '承德石油高等专科学校继续教育学院', NULL, '杨老师', '', '', '', '', '', 1, 0, '承德市大学园区', '河北省', '/files/bebb0309-76e1-4049-9532-ce0c9eacf66b.jpg', '/files/bebb0309-76e1-4049-9532-ce0c9eacf66b.jpg', '<p>承德石油高等专科学校继续教育学院始于1903年创办于天津的“北洋工艺学堂”，是我国兴办最早的高等工业职业院校之一。学校1952年开始主要面向石油工业服务，1958年迁至河北省承德市。现为中央与地方共建、以河北省人民政府管理为主的普通高等专科学校。学校是教育部全国示范性高等工程专科重点建设学校，国家示范性高等职业院校重点建设单位和优秀院校、教育部人才培养水平评估优秀院校、全国文明单位。2016年被列为国家优质专科高等职业院校建设立项单位。<br> <br> 学校现设有10系(机械工程系、电气与电子工程系、热能工程系、化学工程系、计算机与信息工程系、汽车工程系、石油工程系、建筑工程系、管理工程系、外语与旅游系)、4部（思想政治教学部、数理部、体育健康与艺术教育部、成人教育与培训部）、3中心（信息中心、工业中心、仪器仪表工程技术研究中心）。开设高职专科专业44个，与河北科技大学联合开办工程教育本科专业4个，与德国安哈尔特大学合作开办中德合作专业4个，与韩国新罗大学合作开办中韩合作专业3个。学校面向20余个省份招生，现有普通本专科在校生共计13000余人，成人学历教育学生3000余人，年各类培训2.2万余人日。<br> <br> 学校占地面积1000余亩，校舍建筑面积25万平方米。教学科研仪器设备1.6亿元。图书馆藏书100余万册，收订中外文期刊1361种。学校现有教职工737人，高级职称教师243人（教授59人），硕士以上学位教师444人（博士41人）。学校有国家级教学团队3个，省级教学名师4人，入选省级人才工程19人，承德市拔尖人才12人，承德市新世纪学术技术带头人23人。4人入选第二轮河北省高职院校人才培养工作评估专家库，13位教师被聘为教育部高职高专专业教学指导委员会委员，14位教师被聘为硕士研究生导师。学校有7个教育部教学改革试点专业、3个教育部高等工程专科示范专业，5个区域和行业特色鲜明国家示范重点建设专业，5个河北省高职高专教改示范专业，2个高等职业学校提升专业服务产业发展能力重点建设专业。学校有省级以上精品课程25门，其中国家精品课程（国家精品资源共享课程）10门。应用化工技术专业教学资源库被教育部确定为首批启动的高等职业教育教学资源库建设立项项目并顺利通过验收。学校教师主编出版国家级规划教材64部，有32部主编教材被列入“十二五”职业教育国家规划教材，获得国家优秀教材奖4项。学校有河北省仪器仪表产业技术研究院、河北省仪器仪表工程技术研究中心、河北省石油生产虚拟仿真技术及应用工程技术研究中心、河北省流体测控仪表工程实验室、河北省高校工业数据通信与自动化仪表应用技术研发中心等5个省级科技平台，近五年承担市厅级以上教科研课题370多项，服务企业技术课题170余项，90余项成果获奖，其中国家级教学成果奖2项、教育部科技进步奖一等奖1项。学校近年来发表学术论文2000余篇，其中核心期刊论文520余篇，取得国家专利80余项。公开出版的《学报》是全国高职高专优秀学报和全国优秀科技期刊、全国高职高专核心期刊。学校建有较为完备的校内实验实训基地群，拥有校外实训和产学合作基地385个。学校是首批职业院校文化素质教育基地、全国产学研合作教育试点单位、全国创业培训试点院校、教育部技能型紧缺人才培养培训基地，全国石油和化工行业职业教育与培训示范性实训基地、全国化工行业特有工种职业技能鉴定站和河北省电子行业特有工种职业技能鉴定站。</p><p>欢迎报考承德石油高等专科学校继续教育学院。<br></p><div style=\"left: -1981px; top: 323px; width: 1px; height: 1px; overflow: hidden; white-space: nowrap; position: absolute;\" class=\"__kindeditor_paste__\"></div>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-18 20:39:56', '2018-12-22 11:06:21');
INSERT INTO `edu_university` VALUES (35, '张家口职业技术学院', '张家口职业技术学院', '张家口职业技术学院继续教育学院', '张家口职业技术学院继续教育学院', NULL, '杨老师', '', '', '', '', '', 1, 0, '张家口市桥东区马路东59号', '河北省', '/files/187a381b-33aa-4102-b298-4415285794b3.jpg', '/files/187a381b-33aa-4102-b298-4415285794b3.jpg', '<p>张家口职业技术学院继续教育学院，位于河北省张家口市，是经教育部批准，以培养高端技能型专门人才为办学目标的全日制普通高校。</p><p>张家口市教师进修学院创建于1954年，1984年更名为张家口市教育学院，1984年与张家口市电大、张家口联合职业大学合并组建张家口大学，1997年更名为张家口职业技术学院，2001年与张家口市农业机械工程学校合并组建张家口职业技术学院，2004年张家口市工业交通学校并入。&nbsp;</p><p>据2018年8月学校官网显示，张家口职业技术学院占地426亩，建筑面积14.3万平方米，固定资产总值3.04亿元，其中生均教学仪器设备值达4935.88万元，藏书84.41万册（含电子图书），有全日制在校学生近5000 人，在编教职工435人，其中专任教师252人，博士3人，在读博士 2 人，硕士 120 人，在读硕士17人，高级职称教师 153 人（其中教授40人）。&nbsp;</p><p>欢迎报考张家口职业技术学院继续教育学院。</p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-18 20:44:08', '2018-12-22 11:05:59');
INSERT INTO `edu_university` VALUES (36, '石家庄职业技术学院', '石家庄职业技术学院', '石家庄职业技术学院继续教育学院', '石家庄职业技术学院继续教育学院', NULL, '杨老师', '', '', '', '', '', 1, 0, '石家庄市中山西路长兴街12号', '河北省', '/files/daa2a6fc-0cd5-4ce7-9c05-f65bdaf0b210.jpg', '/files/daa2a6fc-0cd5-4ce7-9c05-f65bdaf0b210.jpg', '<p>石家庄职业技术学院继续教育学院，位于河北省石家庄市，创建于1984年，是一所由河北省人民政府举办的公办全日制普通高等专科院校，入选国家建设行业技能型紧缺人才培养培训工程、第二批国家现代学徒制试点单位、河北省示范性高职院校。</p><p>截至2015年12月，学校共有8系3部3学院，共开设有六大类55个专业；全日制高职在校生11489人；校内外各类任课教师952人（其中校内专任教师534 人，校内兼课教师13 人，校外兼职教师为338 人，校外兼课教师67 人），教师总数为669人（折合后）。学校有固定资产总值3.4亿元，教学仪器设备总值9800余万元，图书馆各类纸质藏书80余万册，电子图书270.1GB，生均年进书量3册。</p><p>欢迎报考石家庄职业技术学院继续教育学院。</p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-18 20:46:03', '2018-12-22 11:05:34');
INSERT INTO `edu_university` VALUES (37, '邯郸职业技术学院', '邯郸职业技术学院', '邯郸职业技术学院继续教育学院', '邯郸职业技术学院继续教育学院', NULL, '杨老师', '', '', '', '', '', 1, 0, '河北省邯郸市渚河路141号', '河北省', '/files/9cab5a18-216c-4107-8214-b1f10914d636.jpg', '/files/9cab5a18-216c-4107-8214-b1f10914d636.jpg', '<p>邯郸职业技术学院继续教育学院是国家骨干高职院校，2016年被省教育厅确定为国家优质专科高等职业院校建设立项单位。学院始建于1983年6月，原名邯郸职业大学，1984年10月更名为邯郸大学，时任中共中央总书记的胡耀邦同志题写了校名，1997年更名为邯郸职业技术学院。2016年8月，入选第二批国家现代学徒制试点单位。<br> 学院占地830亩，全日制在校生8900余人；其中专任教师392名。学院现有教授56名、副教授143名；其中具有硕士和研究生以上学历者占67%；拥有国家级教学团队1个（建筑工程技术团队），省级教学团队2个（建筑工程技术和机电一体化团队）；省级教学名师2人（郭文志、钟芳林），省、市社科青年专家5人，省三三三人才二、三层次17人，享受省、市政府津贴28人。欢迎报考邯郸职业技术学院继续教育学院成人教育。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-18 20:47:21', '2018-12-22 11:05:08');
INSERT INTO `edu_university` VALUES (38, '河北工业职业技术学院', '河北工业职业技术学院', '河北工业职业技术学院继续教育学院', '河北工业职业技术学院继续教育学院', NULL, '杨老师', '', '', '', '', '', 1, 0, '石家庄红旗大街626号', '河北省', '/files/a9ff9b6a-a98f-4c46-80d0-5e7d61ef005c.jpg', '/files/a9ff9b6a-a98f-4c46-80d0-5e7d61ef005c.jpg', '<p>&nbsp;河北工业职业技术学院继续教育学院履行社会服务职能的一个重要组成部分，学院设有成人教育部。成人教育部遵循学院归口管理，依托各系的办学管理体制，是学院成人教育工作的管理与服务部门。在多年的成人教育实践中，坚持“以人为本，按需施教”原则及“使无业者有业，使有业者精业”的服务宗旨，根据社会及行业企业需要，形成了多层次、多渠道、多规格、多类型的继续教育培养模式。学院是全国成人教育协会会员单位，河北省成人教育协会副会长单位，河北省高等教育自学考试试点院校，河北省成人教育办学水平评估优秀单位。<br> 河北工业职业技术学院成人教育设有本、专科、中专成人学历教育专业21个，学员可选择函授、业余、网络教育、高等教育自学考试等学习形式，毕业生遍布省内各个行业。在开办学历教育的同时，针对轧钢、冶金、煤焦化、环保类、机械制造、建筑工程等行业，开展了一系列长短期职业技能培训，按企业需求开发“培训包”，形成了培训捆绑学历教育的新型培训培养模式，年受益面逾万人次。<br> 成人教育是普通教育的补充和延伸，是助推普通高校实现服务社会职能目标的重要力量，学院的成人教育将坚持为社会主义改革开放和现代化建设服务，倡导“全民学习，终身学习”的办学理念，构建“融通、实用、开放 ”的成人教育体系，营造“人人皆学、时时能学、处处可学”的学习氛围，实现 “使无业者有业，使有业者精业”的服务宗旨，在创新中求发展，在开拓中求进取，在务实中求稳定，为创建学习型社会贡献力量。欢迎报考河北工业职业技术继续教育学院。<br> <br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-18 20:48:49', '2018-12-22 11:04:38');
INSERT INTO `edu_university` VALUES (39, '河北工程技术学院', '河北工程技术学院', '河北工程技术学院继续教育学院', '河北工程技术学院继续教育学院', NULL, '杨老师', '', '', '', '', '', 1, 0, '石家庄市桥西区红旗大街宫北路11号行政楼', '河北省', '/files/e25dd6f4-9162-4065-8c6c-532832e1bca0.jpg', '/files/e25dd6f4-9162-4065-8c6c-532832e1bca0.jpg', '<p>&nbsp;河北工程技术学院继续教育学院是一所省属普通本科高校。 建校以来，学院依托河北省老教授协会这一智囊团队，始终贯彻落实党和国家的教育方针，坚持专家治校、名师执教、依法办学和特色办学，走出了一条既适应自身发展，又符合社会需求的特色发展之路。截止目前，已累计为社会主义建设培养输送各类应用型人才近30000名。良好的办学质量、较高的人才培养水平和社会服务水平赢得了社会各界的一致好评。<br> 今天的河北工程技术学院在党和政府的领导和大力支持下，在省教育厅的正确指导下，正以更加饱满的精神状态，更加务实的工作作风，更加锐意的改革创新，为创办人民满意教育而继续努力奋斗！我校成人高等教育（成考）现开始招生，欢迎广大考生积极咨询、报名河北工程技术学院继续教育学院。</p><p><br></p><div style=\"left: -1981px; top: 0px; width: 1px; height: 1px; overflow: hidden; white-space: nowrap; position: absolute;\" class=\"__kindeditor_paste__\"></div>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-18 20:50:48', '2018-12-22 11:03:54');
INSERT INTO `edu_university` VALUES (40, '石家庄职工大学', '石家庄职工大学', '石家庄职工大学继续教育学院', '石家庄职工大学继续教育学院', NULL, '杨老师', '', '', '', '', '', 1, 0, '石家庄市胜利北街491号', '河北省', '/files/d04d8a98-bbd5-4ab7-90ab-05893daf3a2e.jpg', '/files/d04d8a98-bbd5-4ab7-90ab-05893daf3a2e.jpg', '<p>石家庄职工大学继续教育学院是经河北省人民政府批准，国家教育部备案，石家庄市总工会主办的一所公办高等专科学校，位于石家庄市胜利北街491号（原石家庄市石正路199号），创办于1984年。前身为石家庄市职工业余大学，2001年10月，经河北省教育厅批准更名为石家庄职工大学，2002年经河北省教育厅批准以独立设置的成人高校名义纳入普通高考招生序列。<br> 办学以来，学校根据社会需求，不断调整专业结构，深化教育改革，打造特色专业，坚持“以素质教育为宗旨、以专业教育为基础，以专业技能为本位”的办学理念，着重培养学生的综合和专业技能，为社会培养应用型大专技术人才，深受用人单位的好评。  　　为了适应普通高职教育“依靠企业办学，面向基层育人，服务地方经济”的发展趋势，自2004年起，我校与省内印刷企业联合开办印刷技术、印刷图文信息处理（制版方向）两个特色专业，填补了我省该专业领域的空白，并与省内众多印刷企业达成就业意向，为学生今后的就业奠定了基础。  我校为石家庄市动漫协会会员单位，书记高宗敏同志为石家庄市动漫协会副会长。<br> 本着“以就业为导向，以行业需求为依托”的专业调整原则，从2007年开始我校与香港数码人动漫游戏基地联合举办动漫设计与制作、图形图像制作两个专业。 <br> 目前，学校现有教职员工 112人，在校生2000余人，设有专业13个。  石家庄职工大学自创办以来，在市委、市政府、市总工会以及各级教育行政部门的正确领导和大力支持下，在兄弟院校的协助下，经过石家庄职工大学教职员工的不懈努力，专业结构特色突出，办学渠道和办学水平不断拓宽和提高，社会认知度逐渐增强。在校人数越来越多。<br> 在20年的办学历程中，我们始终坚持以邓小平理论和三个代表的重要思想为指导，突出以人为本的管理理念，认真贯彻党的教育方针，以教育教学工作为中心，全面提高教学质量，注重培养学员的综合素质，通过中、长、短期培训和学历教育等形式，为社会培养了一批具有创新精神和实践能力的应用型高级技能人才，其中学历班毕业生3000多人，短期培训25000多人，为提高广大职工的文化技术素质，提高工会干部的整体素质，推动我市经济发展和社会进步作出了一定贡献。  </p><p>欢迎报考石家庄职工大学继续教育学院。</p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-18 20:52:43', '2018-12-22 11:03:13');
INSERT INTO `edu_university` VALUES (41, '沧州医学高等专科学校', '沧州医学高等专科学校', '沧州医专继续教育学院沧州医学高等专科学校', '沧州医专继续教育学院沧州医学高等专科学校', NULL, '杨老师', '', '', '', '', '', 1, 0, '西环中街街道迎宾南大道高教区', '河北省', '/files/5d267aaf-049c-47ed-8eae-f9c69f64d7c4.jpg', '/files/5d267aaf-049c-47ed-8eae-f9c69f64d7c4.jpg', '<p>沧州医学高等专科学校继续教育学院始建于1958年，是一所以医药卫生教育为主的国办全日制普通高等学校，是全国护理专业技能型紧缺人才培训基地、河北省高职高专医学类教学指导委员会主任委员单位、中国高等教育学历证书认证沧州代办点。办学50多年来，为社会培养了50000余名医疗卫生技术人才。近年来，学校在教育部高职院校人才培养工作评估中被评为优秀院校，先后获得全国教育科研先进单位、全国绿化模范单位、全国红十字模范校、全国文明单位、全国职业院校护理专业仪器设备装备规范河北省示范学校、河北省普通高校示范性就业指导中心、河北省成人教育评估优秀单位等荣誉称号90余项。<br> 学校占地面积1024亩，建筑面积26万余平方米。拥有实验实训室206个，科研实验中心1个，教学科研仪器设备总值8000余万元；图书馆面积1.42万平方米，馆藏图书80余万册、电子数据库14个。学校拥有直属附属医院3所，非直属附属医院5所，教学医院26所，实习基地100个。学校建有标准的塑胶运动场、体育馆和篮排球场；拥有容纳6000人同时就餐的大型餐厅，单元式学生公寓楼12栋，同时建有生活馆、浴池、校医院、校园药店等生活服务设施。<br> 学校有专兼职教师727名，其中，教授105名、副教授251名，硕、博士173名，享受国务院政府特殊津贴的专家2名、全国模范教师、省管优秀专家1名、河北省有突出贡献的中青年专家1名、来自医学本科院校的特聘教授5名、省级教学团队1个、省级教学名师2名、市级专业技术拔尖人才9名，拥有一支教学经验丰富、符合职业教育需求的专兼结合、双师结构的优秀教学团队。<br> 学校开设有护理、助产、临床医学、眼视光技术、药学、医学检验技术、口腔医学、医学影像技术、医学营养、康复治疗技术、针灸推拿、医疗美容技术、医药营销、中药、健康管理、心理咨询等17个专科专业。<br> 学校建立实习、就业基地100余个，其中定向实习基地近50个，北京、天津、石家庄、广州等地定向实习留用率达70%以上。药学、眼视光技术、医疗美容技术等专业第三年带薪实习，毕业生当年就业率达97%以上。中国人民解放军总医院、北京市红十字会急诊抢救中心分别确定我校为“护理专业人才培养基地”、“临床医学专业人才培养基地”。中国人民解放军总医院、中国人民解放军第307医院、北京九州通医药有限公司、北京朝阳区三环肿瘤医院、河北神威药业有限公司、河北狮城百姓大药房连锁有限公司等多家单位，与我校密切合作开展了“订单”培养，形成了“入学、培养、就业”直通车。欢迎报考沧州医专继续教育学院沧州医学高等专科学校<br></p><div style=\"left: -1981px; top: 209px; width: 1px; height: 1px; overflow: hidden; white-space: nowrap; position: absolute;\" class=\"__kindeditor_paste__\"></div>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-18 20:55:01', '2018-12-22 11:07:42');
INSERT INTO `edu_university` VALUES (42, '河北广播电视大学', '河北广播电视大学', '河北广播电视大学继续教育学院', '河北广播电视大学继续教育学院', 1, '杨老师', '', '', '', '', '', 1, 0, '石家庄市和平西路481号', '河北省', '/files/0097674c-f375-4961-aaae-fdb4d22d298a.png', '/files/0097674c-f375-4961-aaae-fdb4d22d298a.png', '<p>河北广播电视大学继续教育学院创建于1978年，是河北省唯一一所运用计算机课件、网络、广播、电视、文字和音像教材等多种媒体进行远程教育的开放大学，是隶属于河北省教育厅的省属本科高校。<br> 河北广播电视大学立足于河北省情实际，着眼于沿海经济强省建设和社会全面进步对高素质、应用型人才的需求，积极发挥系统优势、全面打造开放办学的特色，充分利用卫星、广播电视和计算机网络等现代化教学手段，为河北的经济建设和社会全面进步提供多种教育服务和人才、智力支持。<br> 河北广播电视大学主要办学形式有：开放教育（含“一村一名大学生计划”）、普通高职教育、成人高等本专科教育、中等职业教育、非学历教育和与重点高校合作开展的现代远程教育等。先后开设了理、工、农、医、文、法、经济、管理、教育等9个学科140多个专业。现已形成以省电大为龙头、市电大为骨干、县级电大为基础，遍布全省城乡的现代远程高等教育网络，成为我省现代远程开放教育的骨干力量。目前，全省有市级电大和分校15所，县级分校、工作站142所。省校目前拥有南北两个校区，南校区位于石家庄市合作路460号，北校区位于和平西路481号。欢迎报考河北广播电视大学继续教育学院。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-18 20:57:49', '2018-12-22 10:59:01');
INSERT INTO `edu_university` VALUES (50, '保定学院', '保定学院', '保定学院继续教育学院', '保定学院继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '河北省保定市七一东路3027号', '河北省', '/files/dbb7cacc-c90b-49b9-a9bd-01e651628ce5.jpg', '/files/dbb7cacc-c90b-49b9-a9bd-01e651628ce5.jpg', '<p>保定学院继续教育学院是一所具有百余年办学历史的学校，创建于 1904年，始称“保定初级师范学堂”。1910年改称“直隶第二初级师范学堂”,1928年随省易名为“河北省立第二师范学校”。新中国成立后定名“河北省立保定师范学校”，1978年改建“保定师范专科学校”，2007年升格为本科层次的普通高校，并更名为“保定学院”，2011年获得学士学位授予权。<br> 学院规划占地1220亩，一期建设用地920.2亩，二期建设用地300亩。已建成34.32万平方米，另有12.4万平方米在建。<br> 学院现有26个本科专业、24个专科专业，全日制本专科在校生14500余人。<br> 学院具有良好的办学条件，教学设备齐全，现有物理、化学、生物、资源与环境、现代教育技术、计算机与信息技术、心理、语言等8个类别的实验室，单价 1000元以上的教学仪器设备总值8721.37万元，并建有千兆校园网。图书馆藏有纸质文献118万册，数字图书48万余册，期刊 1200 余种。拥有清同治年间刊印的《二十四史》等线装古籍8980余册（含珍本 8种，善本 8种，共 1428卷，260册）；自创刊至建国前的《申报》、《大公报》等珍贵影印资料千余册。我校图书馆现有CNKI学术文献总库、新东方多媒体学习库、维普科技期刊数据库、人大复印报刊资料、书生之家数字图书馆等12个全文数据库。<br> 学院制定了一系列提高教学科研水平的激励措施。2007年以来，学院新增国家级精品资源共享课1门、省级精品资源共享课2门、省级精品课2门、省级教学团队1个、省级实验教学示范中心1个、省级重点发展学科3个、省专业综合改革试点项目1个、省大学生校外实践教育基地建设项目1个。我院承办的国培计划——农村校长助力工程经过学员网上匿名评估，在全国35家培训机构排名第六；国培计划——河北省农村中小学教师置换脱产研修项目获2013年“国培计划”学员网络匿名评估河北省第一名。<br> 2007年以来，共承担国家级课题6项、省部级课题173项。共出版专著12部、编著及教材29部、作品集4部，参展发表艺术作品147件；获批专利3项；发表论文3574篇，其中三大检索收录78篇，核心期刊878篇。13项成果获河北省社会科学优秀成果奖。学院学报两次获评“全国高校优秀社科期刊”，“保定研究”栏目被评为“第五届全国社会科学期刊优秀特色栏目”。欢迎报考保定学院继续教育学院。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-22 11:30:20', '2018-12-22 11:30:20');
INSERT INTO `edu_university` VALUES (51, '衡水学院', '衡水学院', '衡水学院继续教育学院', '衡水学院继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '衡水市和平西路1088号', '河北省', '/files/9f4774ab-8386-4a3c-8520-38bd89f4eec5.jpg', '/files/9f4774ab-8386-4a3c-8520-38bd89f4eec5.jpg', '<p>&nbsp;衡水学院继续教育学院成人教育始于1984年，并从2005年起开始招收本科函授学生，至今已为社会培养了近万名各类实用型人才。多年来，学校成人高等教育依托全日制教育的良好基础，充分挖掘办学潜力，重质量、求效益，走出了一条稳步发展的道路。<br> 我校成人高等教育共开设26个专业，其中本科专业14个，专科专业12个，涵盖经济学、法学、教育学、文学、理学、工学、管理学等7个学科门类。现有成人高等教育在校生1500余人，短期培训学员2800余人，专兼职任课教师79人，教学管理人员11人。欢迎报考衡水学院继续教育学院。<br> </p><div><br></div>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-22 11:35:11', '2018-12-22 11:36:08');
INSERT INTO `edu_university` VALUES (52, '邢台学院', '邢台学院', '邢台学院继续教育学院', '邢台学院继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '邢台市桥东区泉北东大街88号', '河北省', '/files/32f150e8-2dbc-46c6-ae89-20f783bf4251.jpg', '/files/32f150e8-2dbc-46c6-ae89-20f783bf4251.jpg', '<p>邢台学院继续教育学院部位于邢台学院南门教学辅助楼五楼东侧。我部现有专职管理人员11人，其中书记、主任、副主任各一名，高级职称3人，中级职称8人，管理人员均有8年经上的管理经验。继续教育部下属综合管理办公室、学籍管理办公室、函授教学管理办公室。<br> 1996年原邢台师专、邢台地区教育学院、邢台市委党校三校合并组建了邢台师范高等专科学校。邢台师专教务处内的成人教育工作及管理人员与邢台地区教育学院的全部业务及部分管理人员合并组建为邢台师范高专师资培训处，在东院（原邢台地区教育学院）办公。邢台市委党校的成人教育部分改名为邢台师范高专成人教育处在南院（原邢台市委党校）办公。1999年师资培训处、成人教育处及学校高自考部合署办公，并更名为“邢台师范高专师资培训成人教育处”。2002年学校升格为本科院校后改名为“邢台学院继续教育部”。欢迎报考邢台学院继续教育学院。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-22 11:38:50', '2018-12-22 11:38:50');
INSERT INTO `edu_university` VALUES (53, '河北工业大学', '河北工业大学', '河北工业大学继续教育学院', '河北工业大学继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '天津市北辰区西平道 5340 号', '河北省', '/files/bc832b7b-bb88-42c9-a007-bfca3c21c32b.jpg', '/files/bc832b7b-bb88-42c9-a007-bfca3c21c32b.jpg', '<p>河北工业大学继续教育学院是一所以工为主、多学科协调发展的国家“211工程”重点建设大学。学校坐落在天津市，并在河北省廊坊市设有分校。学校的前身是创办于1903年的北洋工艺学堂，1995年更名为河北工业大学。1996年首批进入国家“211工程”建设序列，2012年通过国家“211工程”三期建设项目验收。2014年12月，河北省人民政府、天津市人民政府和教育部正式签署共建协议，决定把河北工业大学作为深化高等教育综合改革的试点，破解学校办学资源瓶颈，全面提升学校办学水平，支持学校率先建成高水平大学。欢迎报考河北工业大学继续教育学院。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 11:41:46', '2018-12-22 11:41:46');
INSERT INTO `edu_university` VALUES (54, '河北科技师范学院', '河北科技师范学院', '河北科技师范学院继续教育学院', '河北科技师范学院继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '秦皇岛河北大街西段360号', '河北省', '/files/f767ac09-6962-4b8a-923e-cc0187080d45.jpg', '/files/f767ac09-6962-4b8a-923e-cc0187080d45.jpg', '<p>河北科技师范学院继续教育学院成立于2002年，其前身是1988年成立的河北农业技术师范学院培训部。目前设办公室、成人教育中心、自考与远程教育中心、职业教育培训中心、中小学教师继续教育中心、职业技能鉴定中心6个职能科室。目前在岗管理人员21人，其中10人具有高级专业技术职称，11人具有硕士及以上学位。开展的继续教育项目主要包括：承担设在学校的全国重点建设职教师资培训基地、河北省职教师资培训基地、河北省中小学教师培训基地、农业部现代农业技术培训基地的国培、省培以及面向行业、企业的继续教育培训任务；承担设在学校的国家职业技能鉴定所的职业资格认证和技能鉴定任务；同时开展成人函授（业余）、现代远程、自学考试等高等学历教育。欢迎报考河北科技学院继续教育学院。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-22 11:44:15', '2018-12-22 11:44:15');
INSERT INTO `edu_university` VALUES (55, '防灾科技学院', '防灾科技学院', '防灾科技学院继续教育学院', '防灾科技学院继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '河北省三河市燕郊开发区学院街465号', '河北省', '/files/6d2d2089-910a-4cb7-bf59-ca776df3bd7b.jpg', '/files/6d2d2089-910a-4cb7-bf59-ca776df3bd7b.jpg', '<p>防灾科技学院继续教育中心以立足行业、服务社会为宗旨，承担成人学历教育和各类专业技术培训任务。中心成立于1994年，经过十多年的建设与发展，逐渐形成了自己的办学特色，在专业设置上突出防震减灾的优势和特点，形成了多层次、多专业、多形式、多站点的办学体系，建立了比较完善的继续教育体系。在办学层次上，包括高中起点专科、大专起点的本科。在办学专业上，包括有地球物理学、震害防御、应急救援、工程地震、勘查技术、建筑工程、工程造价、信息安全、网络技术、电子电气、经济管理、公共事业管理、外语等20多个专业方向。在办学形式上，有函授、业余等学历教育，有面向防震减灾领域的各种长期和短期培训。为方便防震减灾一线技术人员的学习，学院还在甘肃、内蒙、河南等省建立了函授站。欢迎报考防灾科技学院继续教育学院。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 11:47:39', '2018-12-22 11:47:39');
INSERT INTO `edu_university` VALUES (56, '河北科技学院', '河北科技学院', '河北科技学院继续教育学院', '河北科技学院继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '保定市南二环路1956号', '河北省', '/files/6f9782a1-6ea3-4762-b163-4dfa3d2eeda5.jpg', '/files/6f9782a1-6ea3-4762-b163-4dfa3d2eeda5.jpg', '<p>河北科技学院继续教育学院是经教育部批准，以工科为主，工、管、经、医协调发展的全日制本科院校，教育部备案国标代码为13391（教育部教发函[2011]96号）。学院由河北省教育厅主管，坐落于素有京畿重地、“首都南大门”之称的历史文化古城河北省保定市。<br> 学院始建于1991年，经过20多年的发展，2011年4月进入本科院校行列。学院占地面积817.2亩，建筑面积27万多平方米，教学仪器设备总值4924万元，图书馆藏书73.8万册，国内外期刊杂志610余种，电子图书929GB,电子期刊12000种，现有在岗教职工541名，其中副高级以上职称占教师总数的32%以上，在校生9500余人。欢迎报考河北科技学院继续教育学院。<br> <br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 11:49:51', '2018-12-22 11:49:51');
INSERT INTO `edu_university` VALUES (57, '石家庄铁道大学', '石家庄铁道大学', '石家庄铁道大学继续教育学院', '石家庄铁道大学继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '河北省石家庄市北二环东路', '河北省', '/files/e06bc98a-f493-44f2-97f0-8e22ac9bd529.jpg', '/files/e06bc98a-f493-44f2-97f0-8e22ac9bd529.jpg', '<p>石家庄铁道大学继续教育学院组建于1985年1月，初期称培训部，1988年改称成人教育部，2000年改称成人教育分院，2010年改称继续教育学院。<br> 经过三十多年的发展，学院坚持以社会需求为导向，以学校雄厚的专业和技术教育资源为依托，形成了成人高等学历教育、高等教育自学考试、专业培训并举的教育体系：成人高等学历教育设有本科专业11个、专科专业19个，联合办学单位29个，在籍学生12000余人；高等教育自学考试主考专业7个，其中:本科专业 5个、专科专业2个；学校为河北省首批高校干部教育培训基地。培训涉及轨道交通建造技术、高速铁路建造技术、机械制造装备设计及施工技术、国际工程项目管理、轨道交通运营与管理、高速铁路电力技术、工程造价与招投标、人力资源、交通建设与国民经济发展等领域，培训人数逐年稳步上升。欢迎报考石家庄铁道大学继续教育学院。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 11:51:54', '2018-12-22 11:52:27');
INSERT INTO `edu_university` VALUES (58, '承德民族师范高等专科学校', '承德民族师范高等专科学校', '承德民族师范高等专科学校继续教育学院', '承德民族师范高等专科学校继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '承德市高教园区', '河北省', '/files/e19a821e-f66e-417e-930c-e18866d53289.jpg', '/files/e19a821e-f66e-417e-930c-e18866d53289.jpg', '<p>（承德民族师范高等专科学院继续教育学院）河北民族师范学院继续教育学院，坐落在历史文化名城——承德市，其前身是始建于1907年经光绪皇帝御批设立的热河速成法政学堂，隶属学部。期间几经易名，1992年经原国家教委批准改办为承德民族师范高等专科学校。2010年3月，经教育部批准升格更名为河北民族师范学院，是河北省唯一一所民族本科高校，是河北省人民政府与国家民委共建地方高校。欢迎报考（承德民族师范高等专科学院继续教育学院）河北民族师范学院继续教育学院。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 11:54:32', '2018-12-22 11:54:32');
INSERT INTO `edu_university` VALUES (59, '河北地质大学', '河北地质大学', '河北地质大学继续教育学院', '河北地质大学继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '河北省石家庄槐安东路136号', '河北省', '/files/cbf11510-7f0b-469a-8f59-d1a983056980.jpg', '/files/cbf11510-7f0b-469a-8f59-d1a983056980.jpg', '<p>河北地质大学继续教育学院（原石家庄经济学院继续教育学院）创办于1953年，是新中国最早设置经济管理类专业的地质部直属地质院校。2000年，学校管理体制由国土资源部管理转隶为中央与地方共建，以河北省管理为主。2013年国土资源部、河北省人民政府签署“省部共建石家庄经济学院协议”，学校成为省部共建大学。学校是河北省院士工作站，中国科学院院士、区域地质学家李廷栋任名誉校长。欢迎报考河北地质大学继续教育学院（原石家庄经济学院继续教育学院）。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 11:57:04', '2018-12-22 11:57:04');
INSERT INTO `edu_university` VALUES (60, '河北科技大学', '河北科技大学', '河北科技大学继续教育学院', '河北科技大学继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '河北省石家庄市裕华东路70号', '河北省', '/files/f6cc47bd-7885-4716-bc18-5aa12e935c83.jpg', '/files/f6cc47bd-7885-4716-bc18-5aa12e935c83.jpg', '<p>河北科技大学继续教育学院是教育部批准的具有高等学历教育招生资格的省属多科性骨干大学。学校坐落于河北省省会石家庄市，占地2617亩，建筑面积89.6万平方米，固定资产总值14.9亿元。学校现设18个学院，74个本科专业，有17个硕士学位授权一级学科，涵盖93个硕士学位授权二级学科，7个专业硕士学位授权类别，16个工程硕士专业学位授权领域，具有在职人员以同等学力申请硕士学位授予权。欢迎报考河北科技大学继续教育学院。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 11:58:58', '2018-12-22 11:58:58');
INSERT INTO `edu_university` VALUES (61, '河北经贸大学', '河北经贸大学', '河北经贸大学继续教育学院', '河北经贸大学继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '河北省石家庄市学府路', '河北省', '/files/523edc51-2db5-4054-98f8-cd86ffc423a0.jpg', '/files/523edc51-2db5-4054-98f8-cd86ffc423a0.jpg', '<p>河北经贸学院继续教育学院成人教育一直采取一级管理模式，具有办学和管理双重职能，学院十分重视教学管理，不断加强教学管理队伍建设、管理制度建设、管理信息化建设、质量保障和监控体系建设，积极推进管理制度创新，努力提高教学管理水平。在1996年、2001年两次省教委组织的普通高校函授夜大教育评估中，就被评为先进学校。2006年以来我院被省教育厅授予：“河北省成人高校招生工作先进集体”，被省学位办授予“河北省学士学位外语考务管理工作先进集体”被石家庄市评为“优秀志愿服务集体“等多种荣誉称号，2010年我院被授予省科教文卫系统“先进职工小家”光荣称号，在2011年河北省教育厅组织的成人高等教育教学评估中被评为“优秀”。欢迎报考河北经贸学院继续教育学院。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:02:05', '2018-12-22 12:02:05');
INSERT INTO `edu_university` VALUES (62, '河北医科大学', '河北医科大学', '河北医科大学继续教育学院', '河北医科大学继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '河北省石家庄市中山东路', '河北省', '/files/63741be7-63ae-4e01-8073-39c7bc10e6ab.jpg', '/files/63741be7-63ae-4e01-8073-39c7bc10e6ab.jpg', '<p>河北医科大学继续教育学院简介：</p><p>河北医科大学继续教育学院现位于河北医科大学中山校区。成人教育1984年举办夜大学教育，1985年举办函授教育，现办有函授、业余、自学考试等办学形式，开设临床医学、护理学、医学影像学、医学检验技术、口腔医学、药学、中西医临床医学等7个本科专业，并在全省设有7个教学站点，在校生10000余人。经过30多年的不断完善和发展，我校成人教育形成了集医学、药学、护理学等专业为一体，多层次、多形式、多渠道并覆盖全省的成人教育体系。我校1996、2001、2011年连续三次获省教育厅成人高等教育评估“优秀学校”称号，并多次荣获“全国成人招生工作先进单位”、“全国高等教育学历证书电子注册管理工作先进集体”、“河北省成人招生工作先进单位”等先进称号。欢迎报考河北医科大学继续教育学院。</p><p>学费标准：每生每学年业余1100元，函授900元。（如有变化，按河北省物价局收费标准执行。）<br> 录取通知书：<br> 考生在收到我校发送的短信通知后，请登录河北医科大学继续教育学院网页（http://202.206.48.97/ces_hebmu），点击“录取通知书打印”按钮，按照提示下载打印《录取通知书》和《入学须知》，通知书不再邮寄。请考生保持手机联络畅通，以便及时获取短信通知。因通讯地址不详或手机号码变更造成录取通知书无法发放的，责任自负。<br> 近三年河北省成人招生控制线和我校录取线<br> 我校是独立设置医学院校，近几年上线考生录取率100%。欢迎报考河北医科大学继续教育学院</p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:07:34', '2018-12-22 12:07:34');
INSERT INTO `edu_university` VALUES (63, '河北师范大学', '河北师范大学', '河北师范大学继续教育学院', '河北师范大学继续教育学院', 0, '', '', '', '', '', '', 1, 0, '河北省石家庄市南二环东路', '河北省', '/files/22f1d4b0-2490-40db-9941-b13fd3d240fb.jpg', '/files/22f1d4b0-2490-40db-9941-b13fd3d240fb.jpg', '<p>河北师范大学继续教育涵盖成人高等教育、高等教育自学考试、现代远程教育、中小学及幼儿教师继续教育等各类培训等。<br> 学历教育方面，现有函授和业余两种办学形式，有本科专业70个，专科专业59个，在籍学历教育学生1.5万人，在函授和业余教学中，已逐步推广远程网络手段辅助教学。学校还是北京师范大学、北京理工大学、电子科技大学和西南财经大学的现代远程教育学习中心。作为河北省自学考试主考院校之一，有汉语言文学、英语、网络工程等22个本科主考专业和人口学、广告、视觉传达设计等15个专科主考专业。非学历教育方面，承担着中小学及幼儿教师“国培计划”、“省培计划”任务，还有资格证书培训、行业培训等。欢迎报考河北师范大学继续教育学院。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:09:19', '2018-12-22 12:09:19');
INSERT INTO `edu_university` VALUES (64, '石家庄经济学院', '石家庄经济学院', '石家庄经济学院继续教育学院', '石家庄经济学院继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '河北省石家庄槐安东路136号', '河北省', '/files/659bfdc1-d9d4-4e2e-a2f9-d5970716ef78.jpg', '/files/659bfdc1-d9d4-4e2e-a2f9-d5970716ef78.jpg', '<p>石家庄经济学院继续教育学院（现河北地质大学继续教育学院）创办于1953年，是新中国最早设置经济管理类专业的地质部直属地质院校。2000年，学校管理体制由国土资源部管理转隶为中央与地方共建，以河北省管理为主。2013年国土资源部、河北省人民政府签署“省部共建石家庄经济学院协议”，学校成为省部共建大学。学校是河北省院士工作站，中国科学院院士、区域地质学家李廷栋任名誉校长。欢迎报考石家庄经济学院继续教育学院（现河北地质大学继续教育学院）。<br> </p><div><br></div>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:16:32', '2018-12-22 12:16:32');
INSERT INTO `edu_university` VALUES (65, '石家庄学院', '石家庄学院', '石家庄学院继续教育学院', '石家庄学院继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '石家庄市高新技术产业开发区长江大道6号', '河北省', '/files/e5bf6b7e-f2ad-403e-8e91-a6ba41e95d05.jpg', '/files/e5bf6b7e-f2ad-403e-8e91-a6ba41e95d05.jpg', '<p>石家庄学院继续教育学院自1978年开始举办成人高等教育以来，为社会培养、培训各类人才2万余人，学员遍及全省各地，他们中的大多数人以其深厚的专业知识、丰富的实践经验，已经成为各条战线特别是教育战线的骨干力量，深受用人单位的欢迎。<br> 我院成人教育在多年办学实践中，坚持公益办学为指针，以人才市场需求为导向，紧密依托我院优质的普通教育教学资源，为广大莘莘学子成才就业提供坚实的学习平台，享有较高的社会声望，先后被省教育厅、省考试院、市教育局评为优秀教育培训基地。为满足广大幼儿教师进修学习的要求，我院今年首次开办学前教育函授本科专业，为广大幼儿教育从业者提升学历层次、增强职业竞争力开辟新的发展空间。欢迎报考石家庄学院继续教育学院。<br> </p><div><br> </div><div style=\"left: -1981px; top: 0px; width: 1px; height: 1px; overflow: hidden; white-space: nowrap; position: absolute;\" class=\"__kindeditor_paste__\"></div>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:18:17', '2018-12-22 12:18:17');
INSERT INTO `edu_university` VALUES (66, '河北传媒学院', '河北传媒学院', '河北传媒学院继续教育学院', '河北传媒学院继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '石家庄市栾城区兴安大街', '河北省', '/files/80a002c8-73b1-402f-b533-26a56a7b56a8.jpg', '/files/80a002c8-73b1-402f-b533-26a56a7b56a8.jpg', '<p>河北传媒学院继续教育学院学校位于河北省石家庄市，设有兴安、警安和学府三个校区。学校现现有影视艺术学院、新闻传播学院、艺术设计学院、舞蹈艺术学院、表演艺术学院、信息技术与文化管理学院、国际传播学院、艺术体育学院8个二级学院，33个本科专业，26个专科专业， 3个专业硕士研究生专业，涉及艺术学、文学、工学、管理学等学科门类。普通全日制在校生14000多人。欢迎报考河北传媒学院继续教育学院。<br> <br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:19:52', '2018-12-22 12:19:52');
INSERT INTO `edu_university` VALUES (67, '河北美术学院', '河北美术学院', '河北美术学院继续教育学院', '河北美术学院继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '石家庄市空港工业园区北环港路', '河北省', '/files/e5a35b18-5de9-4a8c-9f75-10a4973b5daf.jpg', '/files/e5a35b18-5de9-4a8c-9f75-10a4973b5daf.jpg', '<p>河北美术学院继续教育学院学校办条件优良，教学科研仪器先进，拥有当前最先进的VICON光学运动捕捉系统、省内领先的渲染农场等众多教学设备；美术博物馆拥有供学生基础训练鉴赏和临摹的馆藏名人书画、雕塑等文物3000余件，市场估值1亿元；图书馆馆藏专业图书66.5万册，电子图书20万册。为实现教学与市场零接轨，保障学生顺利就业，学校投资24.74亿元建设大学生实训就业创业孵化基地，建有157个高标准的校内专业化教学工作室，开创北京、上海、广州、石家庄等地57个校外实训基地；同时建有玩具研发中心、雕塑研究所、陶瓷研究所、书画揭裱文物修复研究所、青铜铸造研究所、民间工艺美术研究所、面塑研究所、陈子奋白描研究所、老庄文化研究中心等，实行产、学、研一体化教学。学校加大资金投入，建有高标准的宿舍、餐饮中心、体育场，实现校园网络全覆盖，形成了完备的公共服务体系，师生生活品质显著提高。 欢迎报考河北美术学院继续教育学院。<br> </p><div><br></div>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:23:19', '2018-12-22 12:23:19');
INSERT INTO `edu_university` VALUES (68, '河北外国语学院', '河北外国语学院', '河北外国语学院继续教育学院', '河北外国语学院继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '石家庄市红旗南大街汇丰西路29号', '河北省', '/files/58242769-7bb0-408e-8dff-1346afbc308a.jpg', '/files/58242769-7bb0-408e-8dff-1346afbc308a.jpg', '<p>河北外国语学院继续教育学院是经国家教育部正式批准的河北省唯一一所独立设制的本科外国语大学，学院以“办产业中的专业,学专业里的外语”为原则设置专业，以“以专业公司化服务外包”为原则建设专业，以让同学们成为“专业知识强、职业技能精、中文底蕴厚、就业砝码足的准职业人”为培养目标，通过学院首创“倒插柳”式教学法的培养，实现了学生所学与用人单位所需相一致。欢迎报考河北外语学院继续教育学院。<br> <br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> &nbsp;&nbsp;&nbsp;&nbsp;<br></p>', '2018-12-22 12:25:05', '2018-12-22 12:25:05');
INSERT INTO `edu_university` VALUES (69, '河北中医学院', '河北中医学院', '河北中医学院继续教育学院', '河北中医学院继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '石家庄市鹿泉经济开发区杏苑路3号', '河北省', '/files/3daa1da2-b797-4126-b4a9-f5b878130fa5.jpg', '/files/3daa1da2-b797-4126-b4a9-f5b878130fa5.jpg', '<p>河北中医学院继续教育学院为学校二级教学和管理单位之一，自上世纪八十年代初开展成人教育，先后开设了中医、中西医结合、中药学、护理学等多个本、专科专业。经过近三十年的不断发展和完善，现已形成了学科门类齐全、专业结构合理、办学形式多样、教学管理规范、教学点遍布全省的成人教育体系。自河北省高等教育自学考试中医专业开考后，就始终承担主考学校任务，并且还承担了多项国家和省内的教育培训项目。截至目前，已为社会培养了数万名品学兼优的实用型人才。因工作业绩突出，在省教育厅组织的历次成人教育评估工作中均获得了优秀，多次获得成人招生先进单位荣誉称号，赢得了良好的社会信誉。随着河北中医学院恢复独立建制，继续教育学院将继承传统，发挥优势，开拓创新，与时俱进，努力开创中医药继续教育新局面，为社会培养更多优秀的中医药专门人才。欢迎报考河北中医学院继续教育学院。<br> </p><div><br></div>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:27:02', '2018-12-22 12:30:03');
INSERT INTO `edu_university` VALUES (70, '河北大学', '河北大学', '河北大学继续教育学院', '河北大学继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '河北大学文苑楼', '河北省', '/files/a08e1ced-de6c-4197-b0b5-484f7ba10de6.jpg', '/files/a08e1ced-de6c-4197-b0b5-484f7ba10de6.jpg', '<p>河北大学成人教育继续教育学院始于1952年天津师范学院（河北大学前身）创建的业余教育部。学校业余教育部的开办，为补充天津市的中小学教师队伍，提高职工政治业务素质起到了积极的作用。1963年3月，北京函授大学在河北大学建立天津函授站并招生。1974年9月，学校开始举办面向知识青年的第一期业余函授教育试点班。1978年正式恢复函授本科教育，1982年设立函授部和夜大部。1986年成立成人教育处，1993年4月，成立河北大学成人教育学院。2000年，学校进行成人教育管理体制改革，由校、院二级管理模式转为学校一级管理模式，成人教育学院成为具有一定管理职能的教学单位。欢迎报考河北大学继续教育学院。<br> <br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:31:37', '2018-12-22 12:31:37');
INSERT INTO `edu_university` VALUES (71, '河北农业大学', '河北农业大学', '河北农业大学继续教育学院', '河北农业大学继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '保定市灵雨寺街289号', '河北省', '/files/f9b131a5-0d40-456e-bf4c-63456bdd353c.jpg', '/files/f9b131a5-0d40-456e-bf4c-63456bdd353c.jpg', '<p>河北农业大学继续教育学院创建于1902年（清光绪28年），是我国最早实施高等农业教育的院校，河北省建立最早的高等院校，河北省人民政府与国家农业部、国家林业局共建的河北省重点骨干大学。我校成人高等教育经过多年的努力和探索，形成了多规格、多层次、多形式的办学体系，积累了丰富的办学经验。1992年被国家教委授予“全国普通成人高教先进单位”，1997年被评为“河北省成人高等教育评估优秀学校”，2002年被评为“河北省普通高等学校成人教育办学先进单位”，2011年被评为“河北省成人高等教育办学水平评估优秀单位”。欢迎报考河北农业大学继续教育学院。<br> </p><div><br></div>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:33:11', '2018-12-22 12:33:11');
INSERT INTO `edu_university` VALUES (72, '河北金融学院', '河北金融学院', '河北金融学院继续教育学院', '河北金融学院继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '保定市恒祥北大街3188号', '河北省', '/files/3ef3132d-6983-4d48-afa2-4cf107e153bc.jpg', '/files/3ef3132d-6983-4d48-afa2-4cf107e153bc.jpg', '<div>河北金融学院继续教育学院是华北、西北地区唯一一所具有鲜明金融特色的中央与地方共建院校，是河北省优先发展的金融人才培养基地，是金融专业硕士研究生培养试点单位。<br> 河北金融学院前身是1952年中国人民银行总行创办的保定银行学校，历经河北财金学校、河北银行学校、保定金融专科学校、保定金融高等专科学校等发展阶段。2007年，更名为“河北金融学院”。建校以来，为国家和社会培养了6万多名优秀人才，其中近万名校友担任金融行业中高级管理职务，上百名校友担任省级以上金融机构主要领导职务，学校被业界誉为“金融人才摇篮”。<br> 河北金融学院位于国家历史文化名城、京津冀区域中心城市——保定市。学校占地面积1000余亩，建有现代化的教学楼、实训楼、图书馆、博物馆、文体活动中心等，教学生活设施齐全，校园环境优美，是“河北省园林式单位”。图书馆现有纸质图书127万册，电子图书320万册，纸质期刊（电子期刊）8674种。金融博物馆是省内高校规模最大的货币金融类博物馆，是国家金融战略的教育基地，馆藏资源达5000余件。近年来，学校先后获得“河北省思想政治工作先进集体”、“河北省党建工作先进集体”、“河北省就业先进集体”、“河北省国际教育合作与交流先进集体”、“河北省文明单位”、“全国第一批节约型公共机构示范单位”等多项荣誉称号。<br> 河北金融学院现有在校研究生、本专科生、留学生共计11800余人，其中金融专业硕士研究生规模位居全省第一；教职工755人，其中博士生导师、硕士生导师49人，副教授以上专业技术职务教师占教师总数的比例为35%，硕士以上学位教师占教师总数的比例为92%。学校设有10个教学院（系）、4个公共教学部、研究生部和继续教育学院。开设有1个硕士专业、23个本科专业、6个专科专业；现有省级重点和重点发展学科4个，国家级品牌特色专业1个，国家级专业综合改革试点1个，省级品牌特色专业4个，省级专业综合改革试点3个，省级本科教育创新高地2个，形成以经济学和管理学两大学科为主体，文、法、理、工为支撑，金融特色鲜明的学科专业体系。<br> 欢迎报考河北金融学院成人教育学院继续教育学院。<br> <br></div>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:35:14', '2018-12-22 12:35:14');
INSERT INTO `edu_university` VALUES (73, '承德医学院', '承德医学院', '承德医学院继续教育学院', '承德医学院继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '河北省承德市上二道河子', '河北省', '/files/6ec88c45-d8d1-4924-bd0c-eb526ea4b34f.jpg', '/files/6ec88c45-d8d1-4924-bd0c-eb526ea4b34f.jpg', '<p>承德医学院继续教育学院是一所隶属于河北省政府的普通高等医学本科院校，坐落在中国历史文化名城——承德市。承德医学院创建于1945年，是河北省省属高等学校，“卓越医生教育培养计划”试点高校。<br> 学校校园占地面积74.9万平方米，建筑面积16.68万平方米。固定资产总值6.14亿元，其中教学科研仪器设备值9156.38万元。图书馆馆藏中外文纸质图书60万册，电子图书240万册，中外文期刊606种和中国知网、万方数据库等7个数据库。欢迎报考承德医学院继续教育学院。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:36:46', '2018-12-22 12:36:46');
INSERT INTO `edu_university` VALUES (74, '河北民族师范学院', '河北民族师范学院', '河北民族师范学院继续教育学院', '河北民族师范学院继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '承德市高教园区', '河北省', '/files/b6d6be89-0cca-492f-b6ba-ba9528cdfdb4.jpg', '/files/b6d6be89-0cca-492f-b6ba-ba9528cdfdb4.jpg', '<p>河北民族师范学院继续教育部是河北民族师范学院进行成人高等学历教育、教师教育与培训以及其他形式继续教育工作的统一管理机构与办学实体。自上世纪九十年代经上级主管部门批准举办中小学教师学历提高培训开始，连续举办了成人脱产、业余、函授、自学考试等成人高等教育活动。1999年正式组建成人教育部，2011年更名为继续教育部，下设成人学历教育办公室和非学历教育办公室，现有函授本科、专科成人学历教育、自学考试等办学模式；是河北省中小学教师继续教育培训基地、承德市中小学教师继续教育和教育干部培训的重点培训基地、承德市劳务品牌人才培训的基地，承德市骨干幼儿园培训中心。欢迎报考河北民族师范学院继续教育学院。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:38:55', '2018-12-22 12:38:55');
INSERT INTO `edu_university` VALUES (75, '河北工程大学', '河北工程大学', '河北工程大学继续教育学院', '河北工程大学继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '邯郸市中华南大街62号', '河北省', '/files/8ced58d8-db22-461c-8305-605dceec21a8.jpg', '/files/8ced58d8-db22-461c-8305-605dceec21a8.jpg', '<p>河北工程大学继续教育学院成人高等教育办学历史悠久，依托学校的教育资源，主动适应社会需求，积极拓展办学渠道，开展了本专科学历教育、专业证书、自学考试、岗位和专业技能培训等继续教育，现已形成了以工为主，多学科、多层次、多形式的办学体系，各类成人学历教育在籍学生1万余名，并在北京、河北、河南、山东、山西、广东、内蒙古、陕西等省市设有40多个函授站（点）。近年来，利用我院学科门类齐全、行业特色突出的优势，举办了各类、各种层次培训班达近数千次，为水利、矿山、煤炭、建筑、医疗等行业的发展和农村基层建设做出了应有的贡献。学院已被水利部和河北省信息产业厅列为定点培训机构。多年来，成人教育学院以严谨的治学态度、丰富的办学经验、科学的管理方法和良好的办学质量与信誉赢得了社会的广泛赞誉。 欢迎报考河北工程大学继续教育学院。<br> </p><div><br></div>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历.<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:40:11', '2018-12-22 12:40:11');
INSERT INTO `edu_university` VALUES (76, '邯郸学院', '邯郸学院', '邯郸学院继续教育学院', '邯郸学院继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '邯郸市邯山区学院北路530号', '河北省', '/files/a5f763c7-9525-4a5c-be8a-566a6e244d3f.jpg', '/files/a5f763c7-9525-4a5c-be8a-566a6e244d3f.jpg', '<p>邯郸学院继续教育学院是于2007年12月由原成教处、干训处和教师继续教育中心组建而成，现有教职工26人。其是学校授权管理继续教育的职能部门，又是一个办学实体。下设办公室、招生就业办公室、学历教育部、学工部、培训部、教育干部培训中心和教师继续教育中心七个职能部门。继续教育学院高举“为基础教育服务，为社会和经济建设服务”两面旗帜，坚持“多层次、高质量、双效益”原则，秉承“明德、厚学、求实、创新”的办学宗旨，努力打造区域中心继续教育高地。<br> 邯郸学院继续教育学院校南校区为继续教育办学基地，占地36亩，具有举办继续教育所需的教学楼、学员公寓、餐厅等办学条件和教学设施。继续教育学院依托学校专业门类齐全、师资力量雄厚、教学设施完备的优势，积极开展学历教育，大力发展非学历教育和职业与技能培训，逐步形成了多形式、多规格、多层次、多渠道的终身教育办学体系。现开设本专科函授、业余成人学历教育专业24个，在校生3500余名。自学考试助学辅导专业14个。与北京师范大学、北京邮电大学合作举办现代远程教育，现有在校生700余名。同时，举办中小学校长、中小学教师、党政干部、公务员、专业技术人员及各行业职业与技能培训工作，每年培训8000人次左右。欢迎报考邯郸学院继续教育学院。<br> <br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-22 12:45:21', '2019-01-28 14:52:48');
INSERT INTO `edu_university` VALUES (77, '北华航天工业学院', '北华航天工业学院', '北华航天工业学院继续教育学院', '北华航天工业学院继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '廊坊市爱民东道133号', '河北省', '/files/38419d9c-29fe-446b-b565-99cc27397a40.jpg', '/files/38419d9c-29fe-446b-b565-99cc27397a40.jpg', '<p>北华航天工业学院继续教育是学校办学的重要组成部分。学校于1992年开办成人高等教育，1995年成立了成人教育部，隶属教务处，1997年学校成立了独立的成人教育机构：成人教育学院，2013年报省教育厅批准更名为继续教育学院。多年来，紧跟形势发展，满足社会多元需求，不断调整和增设办学形式，丰富办学内容，改革教学手段，强化现代化管理方法，目前已形成了涵盖多层次、多规格、多形式的继续教育办学格局。现有各类在校生2500余人。欢迎报考北化航天工业学院继续教育学院。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:46:24', '2018-12-22 12:46:24');
INSERT INTO `edu_university` VALUES (78, '廊坊师范学院', '廊坊师范学院', '廊坊师范学院继续教育学院', '廊坊师范学院继续教育学院', 0, '杨老师', '', '', '', '', '', 1, 0, '河北省廊坊市爱民西道100号', '河北省', '/files/9bf2644f-03d9-4a99-81a9-eab37feaa76e.jpg', '/files/9bf2644f-03d9-4a99-81a9-eab37feaa76e.jpg', '<p>廊坊师范学院继续教育学院地处被誉为“京津走廊上一颗璀璨明珠”的河北省廊坊市。1946年建校，2000年经教育部批准，升格为省属普通本科院校。升本以来，学校为社会输送了4万余名各级各类专业人才。<br> 学校分两个校区办学，占地2000亩，教育教学设施与设备条件优越，馆藏文献140万册，电子图书107万册。设有14个二级学院和继续教育学院、图书馆、社科部、期刊部等教辅单位，14个党政部门；含有普通本、专科教育、高职教育、成人教育等多种教育模式；现有全日制在校生近20000名，教职员工 1394名，其中专任教师902人，具有副高级以上职称的教师491名，具有博士、硕士学位及研究生以上学历的教师638名。欢迎报考廊坊师范学院继续学院。<br> </p><div><br></div>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:47:51', '2018-12-22 12:47:51');
INSERT INTO `edu_university` VALUES (79, '华北科技学院', '华北科技学院', '华北科技学院继续教育学院', '华北科技学院继续教育学院', 1, '杨老师', '', '', '', '', '', 1, 0, '学院大街467', '河北省', '/files/7c9b46bb-d8d4-472a-9852-b1cab84991e4.jpg', '/files/7c9b46bb-d8d4-472a-9852-b1cab84991e4.jpg', '<p>华北科技学院继续教育学院隶属国家安全生产监督管理总局，其前身是原国家煤炭工业部 1984 年投资兴建的北京煤炭管理干部学院分院； 1993 年改制为华北矿业高等专科学校，面向全国招生； 1997 年被原国家教委评为全国 27 所示范性高等工程专科重点建设学校之一； 2002 年升格为普通本科院校，更名为华北科技学院； 2011 年获得工程硕士（安全工程领域）专业学位研究生培养资格。欢迎报考华北科技学院继续教育学院。<br> </p><div><br></div>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:49:30', '2018-12-22 12:49:30');
INSERT INTO `edu_university` VALUES (80, '河北联合大学', '河北联合大学', '河北联合大学继续教育学院', '河北联合大学继续教育学院', 1, '杨老师', '', '', '', '', '', 1, 0, '唐山市新华西道46号', '河北省', '/files/834b64be-6c1e-4fff-b1d3-249c3d38b5bf.jpg', '/files/834b64be-6c1e-4fff-b1d3-249c3d38b5bf.jpg', '<p>华北理工大学继续教育学院（河北联合大学继续教育学院）依托学校普通高等教育的办学优势，积极探索继续教育的办学规律，坚持开放办学，加强内涵建设。充分发挥覆盖产业、引领行业的学科优势，积极开拓办学途径，形成了校地联合、校企联合、校际联合、学校与行业联合等多种办学模式。开设本、专科专业52个，建立省内函授站、教学点17个，现有成人学历教育学员和各类培训学员2万余名。积极开展继续教育教学研究，不断改进教学方法和教学手段，严格教学管理，确保教育质量，形成了特色鲜明的教学模式和管理机制。多年来，为国家培养了理工类、医学类、经管类、文史类、法学类、艺术类等成人教育本、专科毕业生4.3万余名，培训各类人才2.3万余名，为社会各界输送了大批技术骨干和管理骨干，其中不乏著名实业家丁立国、十七大代表郑久强等社会精英。欢迎报考华北理工大学继续教育学院（河北联合大学继续教育学院）。<br> <br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:51:06', '2018-12-22 12:51:06');
INSERT INTO `edu_university` VALUES (81, '华北理工大学', '华北理工大学', '华北理工大学继续教育学院', '华北理工大学继续教育学院', 1, '杨老师', '', '', '', '', '', 1, 0, '唐山市新华西道46号', '河北省', '/files/832ea16b-a221-4825-8e93-998b141bdfaf.jpg', '/files/832ea16b-a221-4825-8e93-998b141bdfaf.jpg', '<p>华北理工大学继续教育学院（河北联合大学继续教育学院）依托学校普通高等教育的办学优势，积极探索继续教育的办学规律，坚持开放办学，加强内涵建设。充分发挥覆盖产业、引领行业的学科优势，积极开拓办学途径，形成了校地联合、校企联合、校际联合、学校与行业联合等多种办学模式。开设本、专科专业52个，建立省内函授站、教学点17个，现有成人学历教育学员和各类培训学员2万余名。积极开展继续教育教学研究，不断改进教学方法和教学手段，严格教学管理，确保教育质量，形成了特色鲜明的教学模式和管理机制。多年来，为国家培养了理工类、医学类、经管类、文史类、法学类、艺术类等成人教育本、专科毕业生4.3万余名，培训各类人才2.3万余名，为社会各界输送了大批技术骨干和管理骨干，其中不乏著名实业家丁立国、十七大代表郑久强等社会精英。欢迎报考华北理工大学继续教育学院（河北联合大学继续教育学院）。<br> <br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:52:25', '2018-12-22 12:52:25');
INSERT INTO `edu_university` VALUES (82, '唐山师范学院', '唐山师范学院', '唐山师范学院继续教育学院', '唐山师范学院继续教育学院', 1, '杨老师', '', '', '', '', '', 1, 0, '唐山市建设北路156号', '河北省', '/files/318755a3-830b-4a5b-9ec2-abe4b7e73c76.jpg', '/files/318755a3-830b-4a5b-9ec2-abe4b7e73c76.jpg', '<p>唐山师范学院继续教育学院办学形式有成人函授、业余、网络教育、自学考试、中短期培训等，办学层次有高中起点专科、专科起点本科、联办研究生班以及“国培计划”——中西部农村骨干教师培训项目、中小幼教师、省市骨干教师脱职培训、资格认证培训等多形式。学院挖掘办学潜力，充分发挥办学的资源优势，各学科发展相互协调、构建了与社会需求相适应的专业结构。形成了师范类和非师范类并举的教育格局。并于2008年与泰王国皇家清莱大学签订了友好合作协议，目前已招收三届泰王国留学生，为促进中泰文化教育交流做出了积极贡献。<br> 唐山师范学院继续教育学院将继续积极探索成人高等教育的办学模式，深入研究成人高等教育规律，努力提高成人高等教育教学质量。注重基础理论、专业知识与实践技能有机结合，争创一流的培训教学与一流的管理服务。面临新机遇，谋求新发展，把继续教育办成多学科、多层次、多规格的教育体系。欢迎报考唐山师范学院继续教育学院。<br> </p><div><br></div>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:53:42', '2018-12-22 12:53:42');
INSERT INTO `edu_university` VALUES (83, '唐山学院', '唐山学院', '唐山学院继续教育学院', '唐山学院继续教育学院', 1, '杨老师', '', '', '', '', '', 1, 0, '唐山市路北区华岩北路38号', '河北省', '/files/5d6011ab-f439-4672-a139-f87053056318.jpg', '/files/5d6011ab-f439-4672-a139-f87053056318.jpg', '<p>唐山学院继续教育学院地处中国近代工业的摇篮、素有“京东宝地”之美誉的河北省唐山市，是一所以工为主，工、经、管、文、法、艺等多学科协调发展的公办全日制普通本科院校。1956年建校，前身为唐山市工业夜大学（原唐山铁道学院，现西南交通大学）。1985年，西南交通大学智力支援唐山成立了唐山分校。1996年，学校与西南交通大学开始联办本科专业，先后培养了8届毕业生，西南交大专家组至今仍在发挥作用。2002年，经教育部批准，唐山高等专科学校、西南交通大学唐山分校、唐山市职工大学三校实质合并组建本科层次的普通高等学校——唐山学院。2014年12月，经河北省人民政府批准，河北科技大学唐山分院实质性并入唐山学院。2015年，经唐山市人民政府批准，唐山市对外经济贸易学校实质性并入唐山学院。欢迎报考唐山学院继续教育学院。<br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:54:41', '2018-12-22 12:54:41');
INSERT INTO `edu_university` VALUES (84, '河北建筑工程学院', '河北建筑工程学院', '河北建筑工程学院继续教育学院', '河北建筑工程学院继续教育学院', 1, '杨老师', '', '', '', '', '', 1, 0, '河北建筑工程学院', '河北省', '/files/1a429721-e489-4de7-bad0-2796d1bfcb34.jpg', '/files/1a429721-e489-4de7-bad0-2796d1bfcb34.jpg', '<p>河北建筑工程学院继续教育学院成人学历教育自1989年恢复招生以来，依托学校的资源优势，招生规模不断扩大，专业不断增多，现已形成工、管、文、经、法并举，多学科、多层次、多形式的综合性办学格局。<br> 经河北省教育厅批准，我院成人学历高等教育面向全省招生，国家承认学历，教育部学生信息网电子注册，本科学生符合条件的可授予学士学位。我院成人学历高等教育开设有专科、专科起点升本科及高中起点升本科三个学历层次，开办的专业有：1、专升本有土木工程、建筑学、城市规划、建筑环境与设备工程、计算机科学与技术、电气工程及其自动化、给排水工程、机械设计制造及其自动化、工程管理、工程造价、财务管理等11个专业；2、高起本有土木工程、建筑学2个专业；3、专科有工程造价、建筑经济管理、建筑工程技术、给排水工程技术、建筑设计技术、市政工程技术、机电一体化技术、道路桥梁工程技术、计算机应用技术、建筑工程管理、会计、法律事务、装饰艺术设计等13个专业。欢迎报考河北建筑工程学院继续教育学院。<br> <br></p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:55:44', '2018-12-22 12:55:44');
INSERT INTO `edu_university` VALUES (85, '河北北方学院', '河北北方学院', '河北北方学院继续教育学院', '河北北方学院继续教育学院', 1, '杨老师', '', '', '', '', '', 1, 0, '张家口市高新区钻石南路11号', '河北省', '/files/43bcbe09-c12f-403e-8327-2187d3840489.jpg', '/files/43bcbe09-c12f-403e-8327-2187d3840489.jpg', '<p>河北北方学院继续教育学院是经国家教育部批准，于2003年9月由张家口医学院、张家口师范专科学校和张家口农业高等专科学校三所省属高校合并组建而成。张家口医学院的前身是1945年建立的晋察冀白求恩卫生学校，1982年12月经教育部批准升格为本科院校，定名为张家口医学院；张家口师范专科学校始建于1956年；张家口农业高等专科学校始建于1923年。在漫长的办学历程中，河北北方学院积累了丰富的办学经验，具有较高的教学和科研水平，为地方经济建设和社会发展做出了重要贡献。历代河北北方学院人扎根塞外，艰苦创业，与时俱进，开拓进取，无私奉献，争创一流，奋力推进学校各项事业不断向前发展。欢迎报考河北北方学院继续教育学院。<br> </p><div><br></div>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:57:43', '2018-12-22 12:57:43');
INSERT INTO `edu_university` VALUES (86, '张家口学院', '张家口学院', '张家口学院继续教育学院', '张家口学院继续教育学院', 1, '杨老师', '', '', '', '', '', 1, 0, '张家口市平门大街副19号', '河北省', '/files/941beee1-ecd2-4a74-820f-f007d38b7bd7.jpg', '/files/941beee1-ecd2-4a74-820f-f007d38b7bd7.jpg', '<p>张家口学院继续教育学院学校设有16个教学单位，现有全日制本专科在校生8000余人。开设本科专业12个，专科专业49个，主要涉及以培养面向幼儿教育和小学师资为主的教育类专业、以培养面向医疗卫生一线医护人员为主的医学类专业和以培养面向中小企业财会人员为主的管理类及相关专业。<br> 张家口学院继续教育学院现有专任教师464人，具有硕博士学位的教师210人，具有高级职称的教师201人，其中教授65人。10余名教授在国家级、省级学术研究机构担任重要职务。学校坚持科研服务教学、服务区域经济社会发展的方针，近年来，教师主持科研项目600余项，在各类学术期刊发表论文近2000余篇，出版学术著作、教材80余部。积极参与国际校际交流与合作，与美国莱特州立大学、新西兰瑞金特国际教育集团建有良好合作关系。<br> 在新的历史起点，张家口学院将抓住机遇，坚持走内涵发展、质量发展、特色发展道路，为实现建设独具特色的合格地方本科院校而不懈努力！欢迎报考张家口学院继续教育学院。<br> </p><div><br></div>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 12:59:01', '2018-12-22 12:59:01');
INSERT INTO `edu_university` VALUES (87, '燕山大学', '燕山大学', '燕山大学继续教育学院', '燕山大学继续教育学院', 1, '杨老师', '', '', '', '', '1.3', 1, 0, '秦皇岛市河北大街西段438号', '河北省', '/files/f5a927ba-cfc7-4346-b37e-8affbd61c1c8.jpg', '/files/f5a927ba-cfc7-4346-b37e-8affbd61c1c8.jpg', '<p>燕山大学继续教育学院源于哈尔滨工业大学，始建于1920年。1958年哈尔滨工业大学重型机械系及相关专业成建制迁至工业重镇齐齐哈尔市富拉尔基区，组建了哈尔滨工业大学重型机械学院。1960年独立办学，定名为东北重型机械学院。1978年被确定为全国重点高等院校。1985年至1997年学校整体南迁秦皇岛市。1997年1月经原国家教委批准，更名为燕山大学。1998年，由原机械工业部划到河北省，实行中央与地方共建，以河北省管理为主。2006年，国防科工委和河北省共建燕山大学。2010年，国家国防科工局和河北省共建燕山大学。2014年，河北省、工信部和教育部共建燕山大学。欢迎报考燕山大学继续教育学院</p>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br></p>', '2018-12-22 13:06:01', '2019-01-30 10:55:06');
INSERT INTO `edu_university` VALUES (88, '沧州师范学院', '沧州师范学院', '沧州师范学院继续教育学院', '沧州师范学院继续教育学院', 1, '杨老师', '', '', '', '', '1.2', 1, 0, '沧州市南环西路28号', '河北省', '/files/9172d137-fecf-44a5-b8f2-2d9763aeb5f3.jpg', '/files/9172d137-fecf-44a5-b8f2-2d9763aeb5f3.jpg', '<p>沧州师范学院继续教育学院始建于1958年，是经教育部批准设置的全日制普通本科院校。学院以“明德博学，知行日新”为校训，秉承“质量立校，特色兴校，人才强校，学科领校，开放活校”的办学理念，坚持“一切为了学生，一切为了提高教育教学质量，一切为了学校发展”的办学思想，多年来为当地经济建设和基础教育的发展培养了大批优秀人才。他们中有“全国五一劳动奖章获得者”；河北省“十大科技杰出青年”；省、市、县级劳动模范和优秀教师；韩宝成、张忠占、王文峰、李浩、王秀云等一批有一定影响的专家、学者。<br> 沧州师范学院继续教育学院主要承担我校非全日制成人教育工作任务，负责培训工作的计划统筹、组织协调和监督指导。2010年5月，在继续教育部成立“沧州市中小学教师继续教育中心”。欢迎报考沧州师范学院继续教育学院。<br> </p><div><br></div>', '<p>(一)考试时间 <br> 1.全国统考时间：10月下旬。考试工作在河北省教育考试院领导下，由各市成人招生部门组织实施。 <br> 2.报考艺术类、体育类专业的考生须参加专业课加试，其他专业是否加试由各成人高校自行确定。今年我省艺术类、体育类专业加试时间为10月下旬（一般在考前一个星期)，具体日期及加试科目、加试地点由招生学校确定。专业课加试由招生学校组织，加试地点和加试科目可查询《河北省成人高等院校招生生源计划》，也可以向招生学校咨询。专业加试成绩不计入总分。凡未进行专业加试或加试成绩不合格的考生不予录取为艺术、体育类专业。 <br> 3.统考科目试题均由教育部按2011年版《全国各类成人高等学校招生复习考试大纲》的要求统一命制。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟.<br> 4.考点设在设区市和华北石油管理局、定州市、辛集市政府所在地，部分市在附近县区设立考点。提醒外地考生要提前一天到达考点所在地，熟悉考点环境、安排好食宿，以免因雨雾天气、道路交通维修或其他不可预测的原因影响正常考试。 <br> 二、报名审查<br> 1、凡具有高中、中专学历及同等学历者均可报考专科各专业，具有专科学历或应届专科毕业生可报考本科各专业。<br> 2、学习形式：<br> “业余”学习形式：利用周六、周日到校上课、考试；<br> “函授”学习形式：利用寒、暑假上课、考试。<br> 3、证书颁发：<br> 学生学完规定课程，经考试（考核）成绩合格，由学校颁发专科毕业证，电子注册，国家承认学历<br> 4、按教育部、卫生部规定，报考成人高校医学门类专业的考生应具备以下条件，确认时请考生持相应证书及所在县（市、区）卫生局出具认证的书面证明，到县（市、区）招生考试机构履行报名确认手：<br> （1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br> （2）报考护理学专业的人员应当取得省级行政部门颁发的执业护士证书。<br> （3）报考医学门类其他专业的人员应当从事卫、医药行业工作的在职专业技术人员。<br> （4）考生报考的专业原则上应与所从事的专业对口。<br> 5、根据“卫生部（2002）10号”文件精神，2002年10月以后入学的成人教育学生毕业后所获得的医学成人高等教育学历文凭将不能作为参加执业医师、执业护士考试的依据。<br> 6、户口为学校所在地省外的考生，请及时办理暂住证。<br> 7、免试生条件详细咨询报名老师。<br> 8、2002年之前毕业的学生或无法在学信网查到学籍信息的考生，需要做学历认证报告（信息采集前一个月到相关部门办理）。<br> <br></p>', '2018-12-22 13:07:28', '2019-01-30 10:54:52');
INSERT INTO `edu_university` VALUES (89, '测试专业', '测试专业', '测试专业', '测试专业', 1, '赵老师', '15939090909', '', '', '', '2.2', 1, 0, '', '北京市', '/files/318755a3-830b-4a5b-9ec2-abe4b7e73c76.jpg', NULL, '<p><br></p>', '<p><br></p>', '2019-01-17 17:57:48', '2019-01-30 10:56:58');
COMMIT;

-- ----------------------------
-- Table structure for oa_notify
-- ----------------------------
DROP TABLE IF EXISTS `oa_notify`;
CREATE TABLE `oa_notify` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '类型',
  `title` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `content` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `files` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '附件',
  `status` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '状态',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `oa_notify_del_flag` (`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='通知通告';

-- ----------------------------
-- Records of oa_notify
-- ----------------------------
BEGIN;
INSERT INTO `oa_notify` VALUES (41, '3', '十九大召开了', '十九大召开了，竟然没邀请我', '', '1', 1, NULL, NULL, '2017-10-10 17:21:11', '', NULL);
INSERT INTO `oa_notify` VALUES (42, '3', '苹果发布新手机了', '有全面屏的iphoneX', '', '1', 1, NULL, NULL, '2017-10-10 18:51:14', '', NULL);
INSERT INTO `oa_notify` VALUES (43, '3', '十九大要消灭贫困人口', '我还只有两三年的活头了', '', '1', 1, NULL, NULL, '2017-10-11 09:56:35', '', NULL);
INSERT INTO `oa_notify` VALUES (44, '3', '骑士又输了', '捉急', '', '1', 1, NULL, NULL, '2017-10-26 13:59:34', '', NULL);
INSERT INTO `oa_notify` VALUES (45, '2', '火箭5连败', '没有保罗不行呀', '', '1', 1, NULL, NULL, '2017-12-30 12:10:20', '', NULL);
INSERT INTO `oa_notify` VALUES (47, '3', 'wdwqewq', 'eqweqwewqe', NULL, '1', 1, NULL, NULL, '2018-12-28 14:27:30', 'wqeqweqwewe', NULL);
COMMIT;

-- ----------------------------
-- Table structure for oa_notify_record
-- ----------------------------
DROP TABLE IF EXISTS `oa_notify_record`;
CREATE TABLE `oa_notify_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `notify_id` bigint(20) DEFAULT NULL COMMENT '通知通告ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '接受人',
  `is_read` tinyint(1) DEFAULT '0' COMMENT '阅读标记',
  `read_date` date DEFAULT NULL COMMENT '阅读时间',
  PRIMARY KEY (`id`),
  KEY `oa_notify_record_notify_id` (`notify_id`),
  KEY `oa_notify_record_user_id` (`user_id`),
  KEY `oa_notify_record_read_flag` (`is_read`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='通知通告发送记录';

-- ----------------------------
-- Records of oa_notify_record
-- ----------------------------
BEGIN;
INSERT INTO `oa_notify_record` VALUES (18, 41, 1, 1, '2017-10-26');
INSERT INTO `oa_notify_record` VALUES (19, 42, 1, 1, '2017-10-26');
INSERT INTO `oa_notify_record` VALUES (20, 43, 136, 0, NULL);
INSERT INTO `oa_notify_record` VALUES (21, 43, 133, 0, NULL);
INSERT INTO `oa_notify_record` VALUES (22, 43, 130, 0, NULL);
INSERT INTO `oa_notify_record` VALUES (23, 43, 1, 1, '2017-10-26');
INSERT INTO `oa_notify_record` VALUES (24, 44, 1, 1, '2017-12-29');
INSERT INTO `oa_notify_record` VALUES (25, 45, 1, 1, '2018-12-04');
INSERT INTO `oa_notify_record` VALUES (26, 45, 135, 0, NULL);
INSERT INTO `oa_notify_record` VALUES (29, 47, 2, 0, NULL);
INSERT INTO `oa_notify_record` VALUES (30, 47, 1, 1, '2018-12-28');
COMMIT;

-- ----------------------------
-- Table structure for salary
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `PROC_INS_ID` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '流程实例ID',
  `USER_ID` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '变动用户',
  `OFFICE_ID` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属部门',
  `POST` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '岗位',
  `AGE` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `EDU` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '学历',
  `CONTENT` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '调整原因',
  `OLDA` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '现行标准 薪酬档级',
  `OLDB` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '现行标准 月工资额',
  `OLDC` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '现行标准 年薪总额',
  `NEWA` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '调整后标准 薪酬档级',
  `NEWB` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '调整后标准 月工资额',
  `NEWC` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '调整后标准 年薪总额',
  `ADD_NUM` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '月增资',
  `EXE_DATE` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '执行时间',
  `HR_TEXT` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '人力资源部门意见',
  `LEAD_TEXT` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '分管领导意见',
  `MAIN_LEAD_TEXT` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '集团主要领导意见',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `OA_TEST_AUDIT_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='审批流程测试表';

-- ----------------------------
-- Records of salary
-- ----------------------------
BEGIN;
INSERT INTO `salary` VALUES ('825693cd6c1c4f6b86699fc3f1a54887', '', '136', '', '', '', '', '技能提高', '', '', '', '', '100', '', '', '', '同意', '同意', '总经理审批', '1', '2017-12-15 22:01:41', '1', '2017-12-15 22:01:41', NULL, '1');
INSERT INTO `salary` VALUES ('a80e1d9ef35a4502bd65b0e5ba7eafff', '', 'cccc', 'ccc', 'ccccc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2017-11-30 16:35:15', '', '2017-11-30 16:35:15', '', '');
INSERT INTO `salary` VALUES ('b5d228f729f74833883917825749f0d5', '', '', '', '', '', '', '', '', '', '', '', '', '防守打法', '', '', '', '', '', '', '2017-11-30 19:58:36', '', '2017-11-30 19:58:36', '', '');
INSERT INTO `salary` VALUES ('cc2e8083f9d8478f831b2ea852e5c17b', '', '', 'cc', 'cc', '', '', 'xxx', '', '', '', '', '', '', '', '', '', '', '', '', '2017-11-30 19:18:59', '', '2017-11-30 19:18:59', '', '');
INSERT INTO `salary` VALUES ('cebdb316794b48be87d93dd4dbfb7d4b', '', '', '', '发的顺丰', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2017-11-30 19:58:43', '', '2017-11-30 19:58:43', '', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='部门管理';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` VALUES (6, 0, '研发部', 1, 1);
INSERT INTO `sys_dept` VALUES (7, 6, '研發一部', 1, 1);
INSERT INTO `sys_dept` VALUES (8, 6, '研发二部', 2, 1);
INSERT INTO `sys_dept` VALUES (9, 0, '销售部', 2, 1);
INSERT INTO `sys_dept` VALUES (10, 9, '销售一部', 1, 1);
INSERT INTO `sys_dept` VALUES (11, 0, '产品部', 3, 1);
INSERT INTO `sys_dept` VALUES (12, 11, '产品一部', 1, 1);
INSERT INTO `sys_dept` VALUES (13, 0, '测试部', 5, 1);
INSERT INTO `sys_dept` VALUES (14, 13, '测试一部', 1, 1);
INSERT INTO `sys_dept` VALUES (15, 13, '测试二部', 2, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '标签名',
  `value` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '数据值',
  `type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '类型',
  `description` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序（升序）',
  `parent_id` bigint(64) DEFAULT '0' COMMENT '父级编号',
  `create_by` int(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`name`),
  KEY `sys_dict_del_flag` (`del_flag`),
  KEY `sys_dict_type` (`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict` VALUES (1, '正常', '0', 'del_flag', '删除标记', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (3, '显示', '1', 'show_hide', '显示/隐藏', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (4, '隐藏', '0', 'show_hide', '显示/隐藏', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (5, '是', '1', 'yes_no', '是/否', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (6, '否', '0', 'yes_no', '是/否', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (7, '红色', 'red', 'color', '颜色值', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (8, '绿色', 'green', 'color', '颜色值', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (9, '蓝色', 'blue', 'color', '颜色值', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (10, '黄色', 'yellow', 'color', '颜色值', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (11, '橙色', 'orange', 'color', '颜色值', 50, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (12, '默认主题', 'default', 'theme', '主题方案', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (13, '天蓝主题', 'cerulean', 'theme', '主题方案', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (14, '橙色主题', 'readable', 'theme', '主题方案', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (15, '红色主题', 'united', 'theme', '主题方案', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (16, 'Flat主题', 'flat', 'theme', '主题方案', 60, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (17, '国家', '1', 'sys_area_type', '区域类型', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (18, '省份、直辖市', '2', 'sys_area_type', '区域类型', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (19, '地市', '3', 'sys_area_type', '区域类型', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (20, '区县', '4', 'sys_area_type', '区域类型', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (21, '公司', '1', 'sys_office_type', '机构类型', 60, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (22, '部门', '2', 'sys_office_type', '机构类型', 70, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (23, '小组', '3', 'sys_office_type', '机构类型', 80, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (24, '其它', '4', 'sys_office_type', '机构类型', 90, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (25, '综合部', '1', 'sys_office_common', '快捷通用部门', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (26, '开发部', '2', 'sys_office_common', '快捷通用部门', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (27, '人力部', '3', 'sys_office_common', '快捷通用部门', 50, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (28, '一级', '1', 'sys_office_grade', '机构等级', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (29, '二级', '2', 'sys_office_grade', '机构等级', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (30, '三级', '3', 'sys_office_grade', '机构等级', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (31, '四级', '4', 'sys_office_grade', '机构等级', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (32, '所有数据', '1', 'sys_data_scope', '数据范围', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (33, '所在公司及以下数据', '2', 'sys_data_scope', '数据范围', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (34, '所在公司数据', '3', 'sys_data_scope', '数据范围', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (35, '所在部门及以下数据', '4', 'sys_data_scope', '数据范围', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (36, '所在部门数据', '5', 'sys_data_scope', '数据范围', 50, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (37, '仅本人数据', '8', 'sys_data_scope', '数据范围', 90, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (38, '按明细设置', '9', 'sys_data_scope', '数据范围', 100, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (39, '系统管理', '1', 'sys_user_type', '用户类型', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (40, '部门经理', '2', 'sys_user_type', '用户类型', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (41, '普通用户', '3', 'sys_user_type', '用户类型', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (42, '基础主题', 'basic', 'cms_theme', '站点主题', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (43, '蓝色主题', 'blue', 'cms_theme', '站点主题', 20, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (44, '红色主题', 'red', 'cms_theme', '站点主题', 30, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (45, '文章模型', 'article', 'cms_module', '栏目模型', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (46, '图片模型', 'picture', 'cms_module', '栏目模型', 20, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (47, '下载模型', 'download', 'cms_module', '栏目模型', 30, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (48, '链接模型', 'link', 'cms_module', '栏目模型', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (49, '专题模型', 'special', 'cms_module', '栏目模型', 50, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (50, '默认展现方式', '0', 'cms_show_modes', '展现方式', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (51, '首栏目内容列表', '1', 'cms_show_modes', '展现方式', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (52, '栏目第一条内容', '2', 'cms_show_modes', '展现方式', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (53, '发布', '0', 'cms_del_flag', '内容状态', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (54, '删除', '1', 'cms_del_flag', '内容状态', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (55, '审核', '2', 'cms_del_flag', '内容状态', 15, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (56, '首页焦点图', '1', 'cms_posid', '推荐位', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (57, '栏目页文章推荐', '2', 'cms_posid', '推荐位', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (58, '咨询', '1', 'cms_guestbook', '留言板分类', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (59, '建议', '2', 'cms_guestbook', '留言板分类', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (60, '投诉', '3', 'cms_guestbook', '留言板分类', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (61, '其它', '4', 'cms_guestbook', '留言板分类', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (62, '公休', '1', 'oa_leave_type', '请假类型', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (63, '病假', '2', 'oa_leave_type', '请假类型', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (64, '事假', '3', 'oa_leave_type', '请假类型', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (65, '调休', '4', 'oa_leave_type', '请假类型', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (66, '婚假', '5', 'oa_leave_type', '请假类型', 60, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (67, '接入日志', '1', 'sys_log_type', '日志类型', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (68, '异常日志', '2', 'sys_log_type', '日志类型', 40, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (69, '请假流程', 'leave', 'act_type', '流程类型', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (70, '审批测试流程', 'test_audit', 'act_type', '流程类型', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (71, '分类1', '1', 'act_category', '流程分类', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (72, '分类2', '2', 'act_category', '流程分类', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (73, '增删改查', 'crud', 'gen_category', '代码生成分类', 10, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (74, '增删改查（包含从表）', 'crud_many', 'gen_category', '代码生成分类', 20, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (75, '树结构', 'tree', 'gen_category', '代码生成分类', 30, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (76, '=', '=', 'gen_query_type', '查询方式', 10, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (77, '!=', '!=', 'gen_query_type', '查询方式', 20, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (78, '&gt;', '&gt;', 'gen_query_type', '查询方式', 30, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (79, '&lt;', '&lt;', 'gen_query_type', '查询方式', 40, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (80, 'Between', 'between', 'gen_query_type', '查询方式', 50, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (81, 'Like', 'like', 'gen_query_type', '查询方式', 60, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (82, 'Left Like', 'left_like', 'gen_query_type', '查询方式', 70, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (83, 'Right Like', 'right_like', 'gen_query_type', '查询方式', 80, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (84, '文本框', 'input', 'gen_show_type', '字段生成方案', 10, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (85, '文本域', 'textarea', 'gen_show_type', '字段生成方案', 20, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (86, '下拉框', 'select', 'gen_show_type', '字段生成方案', 30, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (87, '复选框', 'checkbox', 'gen_show_type', '字段生成方案', 40, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (88, '单选框', 'radiobox', 'gen_show_type', '字段生成方案', 50, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (89, '日期选择', 'dateselect', 'gen_show_type', '字段生成方案', 60, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (90, '人员选择', 'userselect', 'gen_show_type', '字段生成方案', 70, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (91, '部门选择', 'officeselect', 'gen_show_type', '字段生成方案', 80, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (92, '区域选择', 'areaselect', 'gen_show_type', '字段生成方案', 90, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (93, 'String', 'String', 'gen_java_type', 'Java类型', 10, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (94, 'Long', 'Long', 'gen_java_type', 'Java类型', 20, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (95, '仅持久层', 'dao', 'gen_category', '代码生成分类', 40, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (96, '男', '1', 'sex', '性别', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (97, '女', '0', 'sex', '性别', 20, 0, 1, NULL, 1, NULL, '', '0');
INSERT INTO `sys_dict` VALUES (98, 'Integer', 'Integer', 'gen_java_type', 'Java类型', 30, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (99, 'Double', 'Double', 'gen_java_type', 'Java类型', 40, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (100, 'Date', 'java.util.Date', 'gen_java_type', 'Java类型', 50, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (104, 'Custom', 'Custom', 'gen_java_type', 'Java类型', 90, 0, 1, NULL, 1, NULL, NULL, '1');
INSERT INTO `sys_dict` VALUES (105, '会议通告', '1', 'oa_notify_type', '通知通告类型', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (106, '奖惩通告', '2', 'oa_notify_type', '通知通告类型', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (107, '活动通告', '3', 'oa_notify_type', '通知通告类型', 30, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (108, '草稿', '0', 'oa_notify_status', '通知通告状态', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (109, '发布', '1', 'oa_notify_status', '通知通告状态', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (110, '未读', '0', 'oa_notify_read', '通知通告状态', 10, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (111, '已读', '1', 'oa_notify_read', '通知通告状态', 20, 0, 1, NULL, 1, NULL, NULL, '0');
INSERT INTO `sys_dict` VALUES (112, '草稿', '0', 'oa_notify_status', '通知通告状态', 10, 0, 1, NULL, 1, NULL, '', '0');
INSERT INTO `sys_dict` VALUES (113, '删除', '0', 'del_flag', '删除标记', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `sys_dict` VALUES (118, '关于', 'about', 'blog_type', '博客类型', NULL, NULL, NULL, NULL, NULL, NULL, '全url是:/blog/open/page/about', '');
INSERT INTO `sys_dict` VALUES (119, '交流', 'communication', 'blog_type', '博客类型', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `sys_dict` VALUES (120, '文章', 'article', 'blog_type', '博客类型', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `sys_dict` VALUES (121, '编码', 'code', 'hobby', '爱好', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `sys_dict` VALUES (122, '绘画', 'painting', 'hobby', '爱好', NULL, NULL, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `sys_dict` VALUES (123, '初中', '0', 'edu_qualification', '学历', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (124, '中专', '1', 'edu_qualification', '学历', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (125, '高中', '2', 'edu_qualification', '学历', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (126, '大专', '3', 'edu_qualification', '学历', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (127, '本科', '4', 'edu_qualification', '学历', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (128, '中共党员', '0', 'edu_political', '政治面貌', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (129, '中共预备党员', '1', 'edu_political', '政治面貌', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (130, '高中升大专', '0', 'edu_enroll_type', '报名形式', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (131, '高中升本科', '1', 'edu_enroll_type', '报名形式', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (132, '不便分类的其他从业人员', '0', 'edu_occupation_type', '职业类别', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (133, '统考生', '0', 'edu_student_type', '考生类别', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (134, '免考生', '1', 'edu_student_type', '考生类别', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (135, '25岁以上', '0', 'edu_privilege_type', '照顾对象', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (136, '少数民族', '1', 'edu_privilege_type', '照顾对象', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (137, '成教报名', '0', 'edu_type', '报名类型', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (138, '网教报名', '1', 'edu_type', '报名类型', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (139, '证书报名', '2', 'edu_type', '报名类型', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (140, '函授', '0', 'edu_specialty_type', '专业类型', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (141, '业余', '1', 'edu_specialty_type', '专业类型', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (142, '教育资讯', '0', 'edu_certificate_type', '证书类型', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (143, '计算机类', '1', 'edu_certificate_type', '证书类型', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (144, '公务员', '2', 'edu_certificate_type', '证书类型', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (145, '成绩查询', '0', 'edu_news_type', '新闻类型', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (146, '报考指南', '1', 'edu_news_type', '新闻类型', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (147, '百度', 'http://www.baidu.com', 'edu_links', '友情链接', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (148, 'Google', 'http://www.google.com', 'edu_links', '友情链接', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (150, '专升本', '0', 'edu_level', '专业层次', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (151, '高起专', '1', 'edu_level', '专业层次', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
INSERT INTO `sys_dict` VALUES (152, '高起本', '2', 'edu_level', '专业层次', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL COMMENT '文件类型',
  `url` varchar(200) DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8 COMMENT='文件上传';

-- ----------------------------
-- Records of sys_file
-- ----------------------------
BEGIN;
INSERT INTO `sys_file` VALUES (177, 0, '/files/aef2e415-3653-46a8-84d9-d70b9c761af5.jpeg', '2018-12-19 15:53:14');
INSERT INTO `sys_file` VALUES (178, 0, '/files/0c3a5dfa-8501-40c4-90c3-887a6898ef83.jpeg', '2018-12-19 15:53:22');
INSERT INTO `sys_file` VALUES (179, 0, '/files/34f34231-5ebb-4be2-b700-d3cbb856e936.jpeg', '2018-12-19 19:13:45');
INSERT INTO `sys_file` VALUES (180, 0, '/files/85c1c508-24ed-4505-a2c6-ec6e61d68eb6.jpeg', '2018-12-21 17:06:13');
INSERT INTO `sys_file` VALUES (181, 0, '/files/2d20f775-0fa1-4cca-8e2d-e205448fa50f.jpeg', '2018-12-21 17:28:21');
INSERT INTO `sys_file` VALUES (182, 1, '/files/5f4a01eb-5954-41ea-967e-acf025da07d7.txt', '2018-12-21 17:28:25');
INSERT INTO `sys_file` VALUES (183, 0, '/files/e4ed590d-040b-4b7e-8e73-ab6522e23686.jpeg', '2018-12-21 17:30:53');
INSERT INTO `sys_file` VALUES (184, 1, '/files/667d27e0-db1a-4fa1-9078-97fd9dd13d0d.txt', '2018-12-21 17:30:58');
INSERT INTO `sys_file` VALUES (185, 0, '/files/1a569ad1-239a-4274-b2cf-a4e8523ac78a.jpeg', '2018-12-21 18:05:54');
INSERT INTO `sys_file` VALUES (186, 1, '/files/05f08c72-22a9-404a-b8b1-11b8e9e5ac6b.txt', '2018-12-21 18:05:57');
INSERT INTO `sys_file` VALUES (187, 0, '/files/0097674c-f375-4961-aaae-fdb4d22d298a.png', '2018-12-22 10:58:52');
INSERT INTO `sys_file` VALUES (188, 0, '/files/5d267aaf-049c-47ed-8eae-f9c69f64d7c4.jpg', '2018-12-22 11:01:38');
INSERT INTO `sys_file` VALUES (189, 0, '/files/d04d8a98-bbd5-4ab7-90ab-05893daf3a2e.jpg', '2018-12-22 11:03:05');
INSERT INTO `sys_file` VALUES (190, 0, '/files/e25dd6f4-9162-4065-8c6c-532832e1bca0.jpg', '2018-12-22 11:03:50');
INSERT INTO `sys_file` VALUES (191, 0, '/files/a9ff9b6a-a98f-4c46-80d0-5e7d61ef005c.jpg', '2018-12-22 11:04:29');
INSERT INTO `sys_file` VALUES (192, 0, '/files/9cab5a18-216c-4107-8214-b1f10914d636.jpg', '2018-12-22 11:05:05');
INSERT INTO `sys_file` VALUES (193, 0, '/files/daa2a6fc-0cd5-4ce7-9c05-f65bdaf0b210.jpg', '2018-12-22 11:05:32');
INSERT INTO `sys_file` VALUES (194, 0, '/files/187a381b-33aa-4102-b298-4415285794b3.jpg', '2018-12-22 11:05:57');
INSERT INTO `sys_file` VALUES (195, 0, '/files/bebb0309-76e1-4049-9532-ce0c9eacf66b.jpg', '2018-12-22 11:06:18');
INSERT INTO `sys_file` VALUES (196, 0, '/files/3575a239-128c-4789-b03f-63cd24c1aee7.jpg', '2018-12-22 11:06:52');
INSERT INTO `sys_file` VALUES (197, 0, '/files/27e348bd-8490-463f-959f-e58ccabd96f9.jpg', '2018-12-22 11:08:51');
INSERT INTO `sys_file` VALUES (198, 0, '/files/c24d202b-a4b3-4aa7-b0a0-9211475bbd5b.jpg', '2018-12-22 11:09:22');
INSERT INTO `sys_file` VALUES (199, 0, '/files/f1dd7cc0-e818-40bd-91f2-221e33941fbf.jpg', '2018-12-22 11:09:47');
INSERT INTO `sys_file` VALUES (200, 0, '/files/4595a73a-5eb2-43ab-bc68-a9772ca383e8.jpg', '2018-12-22 11:10:15');
INSERT INTO `sys_file` VALUES (201, 0, '/files/cc249e86-f73b-4c6e-ab18-4062e50d1814.jpg', '2018-12-22 11:10:37');
INSERT INTO `sys_file` VALUES (202, 0, '/files/1ac6693d-d963-4786-a82b-b14813af6e0f.jpg', '2018-12-22 11:10:59');
INSERT INTO `sys_file` VALUES (203, 0, '/files/426f5c87-85af-4fa7-9ebc-a39d2e5a70de.jpg', '2018-12-22 11:11:28');
INSERT INTO `sys_file` VALUES (204, 0, '/files/5aa44b99-d502-4589-a778-49db9ee864c5.jpg', '2018-12-22 11:11:51');
INSERT INTO `sys_file` VALUES (205, 0, '/files/19a81f15-d859-4b5c-905b-751e0210d355.jpg', '2018-12-22 11:12:24');
INSERT INTO `sys_file` VALUES (206, 0, '/files/5d2acf2c-07be-44f0-a948-47f87e3672c9.jpg', '2018-12-22 11:13:14');
INSERT INTO `sys_file` VALUES (207, 0, '/files/84ec6b7e-e56d-4cf7-b7ea-a5e6c43b492f.jpg', '2018-12-22 11:14:00');
INSERT INTO `sys_file` VALUES (208, 0, '/files/820ea8d9-74bc-49f1-935a-35382bdd483e.jpg', '2018-12-22 11:14:26');
INSERT INTO `sys_file` VALUES (209, 0, '/files/43e83ba0-a7f5-4970-bba2-1d0d1a279845.jpg', '2018-12-22 11:15:00');
INSERT INTO `sys_file` VALUES (210, 0, '/files/dbb7cacc-c90b-49b9-a9bd-01e651628ce5.jpg', '2018-12-22 11:30:04');
INSERT INTO `sys_file` VALUES (211, 0, '/files/9f4774ab-8386-4a3c-8520-38bd89f4eec5.jpg', '2018-12-22 11:35:09');
INSERT INTO `sys_file` VALUES (212, 0, '/files/32f150e8-2dbc-46c6-ae89-20f783bf4251.jpg', '2018-12-22 11:37:20');
INSERT INTO `sys_file` VALUES (213, 0, '/files/bc832b7b-bb88-42c9-a007-bfca3c21c32b.jpg', '2018-12-22 11:40:00');
INSERT INTO `sys_file` VALUES (214, 0, '/files/f767ac09-6962-4b8a-923e-cc0187080d45.jpg', '2018-12-22 11:43:13');
INSERT INTO `sys_file` VALUES (215, 0, '/files/6d2d2089-910a-4cb7-bf59-ca776df3bd7b.jpg', '2018-12-22 11:47:24');
INSERT INTO `sys_file` VALUES (216, 0, '/files/6f9782a1-6ea3-4762-b163-4dfa3d2eeda5.jpg', '2018-12-22 11:48:56');
INSERT INTO `sys_file` VALUES (217, 0, '/files/e06bc98a-f493-44f2-97f0-8e22ac9bd529.jpg', '2018-12-22 11:51:42');
INSERT INTO `sys_file` VALUES (218, 0, '/files/e19a821e-f66e-417e-930c-e18866d53289.jpg', '2018-12-22 11:54:25');
INSERT INTO `sys_file` VALUES (219, 0, '/files/cbf11510-7f0b-469a-8f59-d1a983056980.jpg', '2018-12-22 11:56:46');
INSERT INTO `sys_file` VALUES (220, 0, '/files/f6cc47bd-7885-4716-bc18-5aa12e935c83.jpg', '2018-12-22 11:58:44');
INSERT INTO `sys_file` VALUES (221, 0, '/files/523edc51-2db5-4054-98f8-cd86ffc423a0.jpg', '2018-12-22 12:00:59');
INSERT INTO `sys_file` VALUES (222, 0, '/files/63741be7-63ae-4e01-8073-39c7bc10e6ab.jpg', '2018-12-22 12:07:25');
INSERT INTO `sys_file` VALUES (223, 0, '/files/22f1d4b0-2490-40db-9941-b13fd3d240fb.jpg', '2018-12-22 12:09:14');
INSERT INTO `sys_file` VALUES (224, 0, '/files/659bfdc1-d9d4-4e2e-a2f9-d5970716ef78.jpg', '2018-12-22 12:16:10');
INSERT INTO `sys_file` VALUES (225, 0, '/files/e5bf6b7e-f2ad-403e-8e91-a6ba41e95d05.jpg', '2018-12-22 12:18:09');
INSERT INTO `sys_file` VALUES (226, 0, '/files/80a002c8-73b1-402f-b533-26a56a7b56a8.jpg', '2018-12-22 12:19:48');
INSERT INTO `sys_file` VALUES (227, 0, '/files/e5a35b18-5de9-4a8c-9f75-10a4973b5daf.jpg', '2018-12-22 12:22:38');
INSERT INTO `sys_file` VALUES (228, 0, '/files/58242769-7bb0-408e-8dff-1346afbc308a.jpg', '2018-12-22 12:25:01');
INSERT INTO `sys_file` VALUES (229, 0, '/files/3daa1da2-b797-4126-b4a9-f5b878130fa5.jpg', '2018-12-22 12:26:57');
INSERT INTO `sys_file` VALUES (230, 0, '/files/a08e1ced-de6c-4197-b0b5-484f7ba10de6.jpg', '2018-12-22 12:31:34');
INSERT INTO `sys_file` VALUES (231, 0, '/files/f9b131a5-0d40-456e-bf4c-63456bdd353c.jpg', '2018-12-22 12:32:56');
INSERT INTO `sys_file` VALUES (232, 0, '/files/3ef3132d-6983-4d48-afa2-4cf107e153bc.jpg', '2018-12-22 12:35:07');
INSERT INTO `sys_file` VALUES (233, 0, '/files/6ec88c45-d8d1-4924-bd0c-eb526ea4b34f.jpg', '2018-12-22 12:36:44');
INSERT INTO `sys_file` VALUES (234, 0, '/files/b6d6be89-0cca-492f-b6ba-ba9528cdfdb4.jpg', '2018-12-22 12:38:43');
INSERT INTO `sys_file` VALUES (235, 0, '/files/8ced58d8-db22-461c-8305-605dceec21a8.jpg', '2018-12-22 12:40:05');
INSERT INTO `sys_file` VALUES (236, 0, '/files/a5f763c7-9525-4a5c-be8a-566a6e244d3f.jpg', '2018-12-22 12:45:13');
INSERT INTO `sys_file` VALUES (237, 0, '/files/38419d9c-29fe-446b-b565-99cc27397a40.jpg', '2018-12-22 12:46:22');
INSERT INTO `sys_file` VALUES (238, 0, '/files/9bf2644f-03d9-4a99-81a9-eab37feaa76e.jpg', '2018-12-22 12:47:50');
INSERT INTO `sys_file` VALUES (239, 0, '/files/7c9b46bb-d8d4-472a-9852-b1cab84991e4.jpg', '2018-12-22 12:49:26');
INSERT INTO `sys_file` VALUES (240, 0, '/files/834b64be-6c1e-4fff-b1d3-249c3d38b5bf.jpg', '2018-12-22 12:51:02');
INSERT INTO `sys_file` VALUES (241, 0, '/files/832ea16b-a221-4825-8e93-998b141bdfaf.jpg', '2018-12-22 12:52:15');
INSERT INTO `sys_file` VALUES (242, 0, '/files/318755a3-830b-4a5b-9ec2-abe4b7e73c76.jpg', '2018-12-22 12:53:38');
INSERT INTO `sys_file` VALUES (243, 0, '/files/5d6011ab-f439-4672-a139-f87053056318.jpg', '2018-12-22 12:54:38');
INSERT INTO `sys_file` VALUES (244, 0, '/files/1a429721-e489-4de7-bad0-2796d1bfcb34.jpg', '2018-12-22 12:55:37');
INSERT INTO `sys_file` VALUES (245, 0, '/files/43bcbe09-c12f-403e-8327-2187d3840489.jpg', '2018-12-22 12:56:48');
INSERT INTO `sys_file` VALUES (246, 0, '/files/941beee1-ecd2-4a74-820f-f007d38b7bd7.jpg', '2018-12-22 12:59:00');
INSERT INTO `sys_file` VALUES (247, 0, '/files/f5a927ba-cfc7-4346-b37e-8affbd61c1c8.jpg', '2018-12-22 13:05:50');
INSERT INTO `sys_file` VALUES (248, 0, '/files/9172d137-fecf-44a5-b8f2-2d9763aeb5f3.jpg', '2018-12-22 13:07:20');
INSERT INTO `sys_file` VALUES (249, 0, '/files/2fc468f2-03e4-4fa9-bbe5-8df54161b7a5.jpeg', '2018-12-24 14:11:25');
INSERT INTO `sys_file` VALUES (254, 0, '/files/b7b84ca5-d46e-416f-a3ec-8bfc99ae0600.png', '2018-12-28 14:51:15');
COMMIT;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `time` int(11) DEFAULT NULL COMMENT '响应时间',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2476 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
BEGIN;
INSERT INTO `sys_log` VALUES (2470, NULL, NULL, 'error', NULL, 'http://39.107.255.81:8080/', 'org.springframework.web.HttpRequestMethodNotSupportedException: Request method \'POST\' not supported', NULL, '2019-03-14 14:34:58');
INSERT INTO `sys_log` VALUES (2471, NULL, NULL, 'error', NULL, 'http://39.107.255.81:8080/', 'org.springframework.web.HttpRequestMethodNotSupportedException: Request method \'PROPFIND\' not supported', NULL, '2019-03-14 14:34:58');
INSERT INTO `sys_log` VALUES (2472, NULL, NULL, 'error', NULL, 'http://39.107.255.81:8080/', 'org.springframework.web.HttpRequestMethodNotSupportedException: Request method \'PROPFIND\' not supported', NULL, '2019-03-14 14:34:58');
INSERT INTO `sys_log` VALUES (2473, NULL, NULL, 'error', NULL, 'http://39.107.255.81:8080/', 'org.springframework.web.HttpRequestMethodNotSupportedException: Request method \'PROPFIND\' not supported', NULL, '2019-03-14 14:34:58');
INSERT INTO `sys_log` VALUES (2474, NULL, NULL, 'error', NULL, 'http://39.107.255.81:8080/', 'org.springframework.web.HttpRequestMethodNotSupportedException: Request method \'QMIG\' not supported', NULL, '2019-03-14 14:34:58');
INSERT INTO `sys_log` VALUES (2475, NULL, NULL, 'error', NULL, 'http://39.107.255.81:8080/', 'org.springframework.web.HttpRequestMethodNotSupportedException: Request method \'POST\' not supported', NULL, '2019-03-14 14:34:58');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (1, 0, '基础管理', '', '', 0, 'fa fa-bars', 0, '2017-08-09 22:49:47', NULL);
INSERT INTO `sys_menu` VALUES (2, 3, '系统菜单', '/sys/menu/', 'sys:menu:menu', 1, 'fa fa-th-list', 2, '2017-08-09 22:55:15', NULL);
INSERT INTO `sys_menu` VALUES (3, 0, '系统管理', NULL, NULL, 0, 'fa fa-desktop', 1, '2017-08-09 23:06:55', '2017-08-14 14:13:43');
INSERT INTO `sys_menu` VALUES (6, 3, '用户管理', '/sys/user/', 'sys:user:user', 1, 'fa fa-user', 0, '2017-08-10 14:12:11', NULL);
INSERT INTO `sys_menu` VALUES (7, 3, '角色管理', '/sys/role', 'sys:role:role', 1, 'fa fa-paw', 1, '2017-08-10 14:13:19', NULL);
INSERT INTO `sys_menu` VALUES (12, 6, '新增', '', 'sys:user:add', 2, '', 0, '2017-08-14 10:51:35', NULL);
INSERT INTO `sys_menu` VALUES (13, 6, '编辑', '', 'sys:user:edit', 2, '', 0, '2017-08-14 10:52:06', NULL);
INSERT INTO `sys_menu` VALUES (14, 6, '删除', NULL, 'sys:user:remove', 2, NULL, 0, '2017-08-14 10:52:24', NULL);
INSERT INTO `sys_menu` VALUES (15, 7, '新增', '', 'sys:role:add', 2, '', 0, '2017-08-14 10:56:37', NULL);
INSERT INTO `sys_menu` VALUES (20, 2, '新增', '', 'sys:menu:add', 2, '', 0, '2017-08-14 10:59:32', NULL);
INSERT INTO `sys_menu` VALUES (21, 2, '编辑', '', 'sys:menu:edit', 2, '', 0, '2017-08-14 10:59:56', NULL);
INSERT INTO `sys_menu` VALUES (22, 2, '删除', '', 'sys:menu:remove', 2, '', 0, '2017-08-14 11:00:26', NULL);
INSERT INTO `sys_menu` VALUES (24, 6, '批量删除', '', 'sys:user:batchRemove', 2, '', 0, '2017-08-14 17:27:18', NULL);
INSERT INTO `sys_menu` VALUES (25, 6, '停用', NULL, 'sys:user:disable', 2, NULL, 0, '2017-08-14 17:27:43', NULL);
INSERT INTO `sys_menu` VALUES (26, 6, '重置密码', '', 'sys:user:resetPwd', 2, '', 0, '2017-08-14 17:28:34', NULL);
INSERT INTO `sys_menu` VALUES (27, 91, '系统日志', '/common/log', 'common:log', 1, 'fa fa-warning', 0, '2017-08-14 22:11:53', NULL);
INSERT INTO `sys_menu` VALUES (28, 27, '刷新', NULL, 'sys:log:list', 2, NULL, 0, '2017-08-14 22:30:22', NULL);
INSERT INTO `sys_menu` VALUES (29, 27, '删除', NULL, 'sys:log:remove', 2, NULL, 0, '2017-08-14 22:30:43', NULL);
INSERT INTO `sys_menu` VALUES (30, 27, '清空', NULL, 'sys:log:clear', 2, NULL, 0, '2017-08-14 22:31:02', NULL);
INSERT INTO `sys_menu` VALUES (48, 77, '代码生成', '/common/generator', 'common:generator', 1, 'fa fa-code', 3, NULL, NULL);
INSERT INTO `sys_menu` VALUES (49, 0, '博客管理', '', '', 0, 'fa fa-rss', 6, NULL, NULL);
INSERT INTO `sys_menu` VALUES (50, 49, '文章列表', '/blog/bContent', 'blog:bContent:bContent', 1, 'fa fa-file-image-o', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (51, 50, '新增', '', 'blog:bContent:add', 2, '', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (55, 7, '编辑', '', 'sys:role:edit', 2, '', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (56, 7, '删除', '', 'sys:role:remove', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (57, 91, '运行监控', '/druid/index.html', '', 1, 'fa fa-caret-square-o-right', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (58, 50, '编辑', '', 'blog:bContent:edit', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (59, 50, '删除', '', 'blog:bContent:remove', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (60, 50, '批量删除', '', 'blog:bContent:batchRemove', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (61, 2, '批量删除', '', 'sys:menu:batchRemove', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (62, 7, '批量删除', '', 'sys:role:batchRemove', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (68, 49, '发布文章', '/blog/bContent/add', 'blog:bContent:add', 1, 'fa fa-edit', 0, NULL, NULL);
INSERT INTO `sys_menu` VALUES (71, 1, '文件管理', '/common/sysFile', 'common:sysFile:sysFile', 1, 'fa fa-folder-open', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (72, 77, '计划任务', '/common/job', 'common:taskScheduleJob', 1, 'fa fa-hourglass-1', 4, NULL, NULL);
INSERT INTO `sys_menu` VALUES (73, 3, '部门管理', '/system/sysDept', 'system:sysDept:sysDept', 1, 'fa fa-users', 3, NULL, NULL);
INSERT INTO `sys_menu` VALUES (74, 73, '增加', '/system/sysDept/add', 'system:sysDept:add', 2, NULL, 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (75, 73, '刪除', '/system/sysDept/remove', 'system:sysDept:remove', 2, NULL, 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (76, 73, '编辑', '/system/sysDept/edit', 'system:sysDept:edit', 2, NULL, 3, NULL, NULL);
INSERT INTO `sys_menu` VALUES (77, 0, '系统工具', '', '', 0, 'fa fa-gear', 4, NULL, NULL);
INSERT INTO `sys_menu` VALUES (78, 1, '数据字典', '/common/dict', 'common:dict:dict', 1, 'fa fa-book', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (79, 78, '增加', '/common/dict/add', 'common:dict:add', 2, NULL, 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (80, 78, '编辑', '/common/dict/edit', 'common:dict:edit', 2, NULL, 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (81, 78, '删除', '/common/dict/remove', 'common:dict:remove', 2, '', 3, NULL, NULL);
INSERT INTO `sys_menu` VALUES (83, 78, '批量删除', '/common/dict/batchRemove', 'common:dict:batchRemove', 2, '', 4, NULL, NULL);
INSERT INTO `sys_menu` VALUES (84, 0, '办公管理', '', '', 0, 'fa fa-laptop', 5, NULL, NULL);
INSERT INTO `sys_menu` VALUES (85, 84, '通知公告', '/oa/notify', 'oa:notify:notify', 1, 'fa fa-pencil-square', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (86, 85, '新增', '/oa/notify/add', 'oa:notify:add', 2, 'fa fa-plus', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (87, 85, '编辑', '/oa/notify/edit', 'oa:notify:edit', 2, 'fa fa-pencil-square-o', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (88, 85, '删除', '/oa/notify/remove', 'oa:notify:remove', 2, 'fa fa-minus', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (89, 85, '批量删除', '/oa/notify/batchRemove', 'oa:notify:batchRemove', 2, '', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (90, 84, '我的通知', '/oa/notify/selfNotify', '', 1, 'fa fa-envelope-square', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (91, 0, '系统监控', '', '', 0, 'fa fa-video-camera', 5, NULL, NULL);
INSERT INTO `sys_menu` VALUES (92, 91, '在线用户', '/sys/online', '', 1, 'fa fa-user', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (97, 0, '图表管理', '', '', 0, 'fa fa-bar-chart', 7, NULL, NULL);
INSERT INTO `sys_menu` VALUES (98, 97, '百度chart', '/chart/graph_echarts.html', '', 1, 'fa fa-area-chart', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (102, 0, '报名管理', '', '', 0, 'fa fa-users', -1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (103, 102, '成教报名', '/edu/enrollInfo', 'edu:enrollInfo:enrollInfo', 1, 'fa fa-users', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (104, 103, '新增', '/edu/enrollInfo/add', 'edu:enrollInfo:add', 2, '', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (105, 103, '编辑', '/edu/enrollInfo/edit', 'edu:enrollInfo:edit', 2, '', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (106, 103, '删除', '/edu/enrollInfo/remove', 'edu:enrollInfo:remove', 2, '', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (107, 103, '批量删除', '/edu/enrollInfo/batchRemove', 'edu:enrollInfo:batchRemove', 2, '', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (108, 0, '学校管理', '', '', 0, 'fa fa-university', -2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (109, 108, '学校管理', '/edu/university', 'edu:university:university', 1, 'fa fa-university', 0, NULL, NULL);
INSERT INTO `sys_menu` VALUES (110, 109, '新增', '/edu/university/add', 'edu:university:add', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (111, 109, '编辑', '/edu/university/edit', 'edu:university:edit', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (112, 109, '删除', '/edu/university/remove', 'edu:university:remove', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (113, 109, '批量删除', '/edu/university/batchRemove', 'edu:university:batchRemove', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (114, 108, '专业管理', '/edu/specialty', 'edu:specialty:specialty', 1, 'fa fa-tasks', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (115, 114, '新增', '/edu/specialty/add', 'edu:specialty:add', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (116, 114, '编辑', '/edu/specialty/edit', 'edu:specialty:edit', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (117, 114, '删除', '/edu/specialty/remove', 'edu:specialty:remove', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (118, 114, '批量删除', '/edu/specialty/batchRemove', 'edu:specialty:batchRemove', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (119, 108, '证书管理', '/edu/certificate', 'edu:certificate:certificate', 1, 'fa fa-mortar-board', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (120, 119, '新增', '/edu/certificate/add', 'edu:certificate:add', 2, '', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (121, 119, '编辑', '/edu/certificate/edit', 'edu:certificate:edit', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (122, 119, '删除', '/edu/certificate/remove', 'edu:certificate:remove', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (123, 119, '批量删除', '/edu/certificate/batchRemove', 'edu:certificate:batchRemove', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (124, 0, '新闻管理', '', '', 0, 'fa fa-newspaper-o', -3, NULL, NULL);
INSERT INTO `sys_menu` VALUES (125, 124, '新闻管理', '/edu/news', 'edu:news:news', 1, '', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (126, 125, '新增', '/edu/news/add', 'edu:news:add', 2, '', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (127, 125, '编辑', '/edu/news/edit', 'edu:news:edit', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (128, 125, '删除', '/edu/news/remove', 'edu:news:remove', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (129, 125, '批量删除', '/edu/news/batchRemove', 'edu:news:batchRemove', 2, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `role_sign` varchar(100) DEFAULT NULL COMMENT '角色标识',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `user_id_create` bigint(255) DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, '超级用户角色', 'admin', '拥有最高权限', 2, '2017-08-12 00:43:52', '2017-08-12 19:14:59');
INSERT INTO `sys_role` VALUES (59, '老板', NULL, '', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3981 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (367, 44, 1);
INSERT INTO `sys_role_menu` VALUES (368, 44, 32);
INSERT INTO `sys_role_menu` VALUES (369, 44, 33);
INSERT INTO `sys_role_menu` VALUES (370, 44, 34);
INSERT INTO `sys_role_menu` VALUES (371, 44, 35);
INSERT INTO `sys_role_menu` VALUES (372, 44, 28);
INSERT INTO `sys_role_menu` VALUES (373, 44, 29);
INSERT INTO `sys_role_menu` VALUES (374, 44, 30);
INSERT INTO `sys_role_menu` VALUES (375, 44, 38);
INSERT INTO `sys_role_menu` VALUES (376, 44, 4);
INSERT INTO `sys_role_menu` VALUES (377, 44, 27);
INSERT INTO `sys_role_menu` VALUES (378, 45, 38);
INSERT INTO `sys_role_menu` VALUES (379, 46, 3);
INSERT INTO `sys_role_menu` VALUES (380, 46, 20);
INSERT INTO `sys_role_menu` VALUES (381, 46, 21);
INSERT INTO `sys_role_menu` VALUES (382, 46, 22);
INSERT INTO `sys_role_menu` VALUES (383, 46, 23);
INSERT INTO `sys_role_menu` VALUES (384, 46, 11);
INSERT INTO `sys_role_menu` VALUES (385, 46, 12);
INSERT INTO `sys_role_menu` VALUES (386, 46, 13);
INSERT INTO `sys_role_menu` VALUES (387, 46, 14);
INSERT INTO `sys_role_menu` VALUES (388, 46, 24);
INSERT INTO `sys_role_menu` VALUES (389, 46, 25);
INSERT INTO `sys_role_menu` VALUES (390, 46, 26);
INSERT INTO `sys_role_menu` VALUES (391, 46, 15);
INSERT INTO `sys_role_menu` VALUES (392, 46, 2);
INSERT INTO `sys_role_menu` VALUES (393, 46, 6);
INSERT INTO `sys_role_menu` VALUES (394, 46, 7);
INSERT INTO `sys_role_menu` VALUES (598, 50, 38);
INSERT INTO `sys_role_menu` VALUES (632, 38, 42);
INSERT INTO `sys_role_menu` VALUES (737, 51, 38);
INSERT INTO `sys_role_menu` VALUES (738, 51, 39);
INSERT INTO `sys_role_menu` VALUES (739, 51, 40);
INSERT INTO `sys_role_menu` VALUES (740, 51, 41);
INSERT INTO `sys_role_menu` VALUES (741, 51, 4);
INSERT INTO `sys_role_menu` VALUES (742, 51, 32);
INSERT INTO `sys_role_menu` VALUES (743, 51, 33);
INSERT INTO `sys_role_menu` VALUES (744, 51, 34);
INSERT INTO `sys_role_menu` VALUES (745, 51, 35);
INSERT INTO `sys_role_menu` VALUES (746, 51, 27);
INSERT INTO `sys_role_menu` VALUES (747, 51, 28);
INSERT INTO `sys_role_menu` VALUES (748, 51, 29);
INSERT INTO `sys_role_menu` VALUES (749, 51, 30);
INSERT INTO `sys_role_menu` VALUES (750, 51, 1);
INSERT INTO `sys_role_menu` VALUES (1064, 54, 53);
INSERT INTO `sys_role_menu` VALUES (1095, 55, 2);
INSERT INTO `sys_role_menu` VALUES (1096, 55, 6);
INSERT INTO `sys_role_menu` VALUES (1097, 55, 7);
INSERT INTO `sys_role_menu` VALUES (1098, 55, 3);
INSERT INTO `sys_role_menu` VALUES (1099, 55, 50);
INSERT INTO `sys_role_menu` VALUES (1100, 55, 49);
INSERT INTO `sys_role_menu` VALUES (1101, 55, 1);
INSERT INTO `sys_role_menu` VALUES (1856, 53, 28);
INSERT INTO `sys_role_menu` VALUES (1857, 53, 29);
INSERT INTO `sys_role_menu` VALUES (1858, 53, 30);
INSERT INTO `sys_role_menu` VALUES (1859, 53, 27);
INSERT INTO `sys_role_menu` VALUES (1860, 53, 57);
INSERT INTO `sys_role_menu` VALUES (1861, 53, 71);
INSERT INTO `sys_role_menu` VALUES (1862, 53, 48);
INSERT INTO `sys_role_menu` VALUES (1863, 53, 72);
INSERT INTO `sys_role_menu` VALUES (1864, 53, 1);
INSERT INTO `sys_role_menu` VALUES (1865, 53, 7);
INSERT INTO `sys_role_menu` VALUES (1866, 53, 55);
INSERT INTO `sys_role_menu` VALUES (1867, 53, 56);
INSERT INTO `sys_role_menu` VALUES (1868, 53, 62);
INSERT INTO `sys_role_menu` VALUES (1869, 53, 15);
INSERT INTO `sys_role_menu` VALUES (1870, 53, 2);
INSERT INTO `sys_role_menu` VALUES (1871, 53, 61);
INSERT INTO `sys_role_menu` VALUES (1872, 53, 20);
INSERT INTO `sys_role_menu` VALUES (1873, 53, 21);
INSERT INTO `sys_role_menu` VALUES (1874, 53, 22);
INSERT INTO `sys_role_menu` VALUES (2084, 56, 68);
INSERT INTO `sys_role_menu` VALUES (2085, 56, 60);
INSERT INTO `sys_role_menu` VALUES (2086, 56, 59);
INSERT INTO `sys_role_menu` VALUES (2087, 56, 58);
INSERT INTO `sys_role_menu` VALUES (2088, 56, 51);
INSERT INTO `sys_role_menu` VALUES (2089, 56, 50);
INSERT INTO `sys_role_menu` VALUES (2090, 56, 49);
INSERT INTO `sys_role_menu` VALUES (2243, 48, 72);
INSERT INTO `sys_role_menu` VALUES (2247, 63, -1);
INSERT INTO `sys_role_menu` VALUES (2248, 63, 84);
INSERT INTO `sys_role_menu` VALUES (2249, 63, 85);
INSERT INTO `sys_role_menu` VALUES (2250, 63, 88);
INSERT INTO `sys_role_menu` VALUES (2251, 63, 87);
INSERT INTO `sys_role_menu` VALUES (2252, 64, 84);
INSERT INTO `sys_role_menu` VALUES (2253, 64, 89);
INSERT INTO `sys_role_menu` VALUES (2254, 64, 88);
INSERT INTO `sys_role_menu` VALUES (2255, 64, 87);
INSERT INTO `sys_role_menu` VALUES (2256, 64, 86);
INSERT INTO `sys_role_menu` VALUES (2257, 64, 85);
INSERT INTO `sys_role_menu` VALUES (2258, 65, 89);
INSERT INTO `sys_role_menu` VALUES (2259, 65, 88);
INSERT INTO `sys_role_menu` VALUES (2260, 65, 86);
INSERT INTO `sys_role_menu` VALUES (2262, 67, 48);
INSERT INTO `sys_role_menu` VALUES (2263, 68, 88);
INSERT INTO `sys_role_menu` VALUES (2264, 68, 87);
INSERT INTO `sys_role_menu` VALUES (2265, 69, 89);
INSERT INTO `sys_role_menu` VALUES (2266, 69, 88);
INSERT INTO `sys_role_menu` VALUES (2267, 69, 86);
INSERT INTO `sys_role_menu` VALUES (2268, 69, 87);
INSERT INTO `sys_role_menu` VALUES (2269, 69, 85);
INSERT INTO `sys_role_menu` VALUES (2270, 69, 84);
INSERT INTO `sys_role_menu` VALUES (2271, 70, 85);
INSERT INTO `sys_role_menu` VALUES (2272, 70, 89);
INSERT INTO `sys_role_menu` VALUES (2273, 70, 88);
INSERT INTO `sys_role_menu` VALUES (2274, 70, 87);
INSERT INTO `sys_role_menu` VALUES (2275, 70, 86);
INSERT INTO `sys_role_menu` VALUES (2276, 70, 84);
INSERT INTO `sys_role_menu` VALUES (2277, 71, 87);
INSERT INTO `sys_role_menu` VALUES (2278, 72, 59);
INSERT INTO `sys_role_menu` VALUES (2279, 73, 48);
INSERT INTO `sys_role_menu` VALUES (2280, 74, 88);
INSERT INTO `sys_role_menu` VALUES (2281, 74, 87);
INSERT INTO `sys_role_menu` VALUES (2282, 75, 88);
INSERT INTO `sys_role_menu` VALUES (2283, 75, 87);
INSERT INTO `sys_role_menu` VALUES (2284, 76, 85);
INSERT INTO `sys_role_menu` VALUES (2285, 76, 89);
INSERT INTO `sys_role_menu` VALUES (2286, 76, 88);
INSERT INTO `sys_role_menu` VALUES (2287, 76, 87);
INSERT INTO `sys_role_menu` VALUES (2288, 76, 86);
INSERT INTO `sys_role_menu` VALUES (2289, 76, 84);
INSERT INTO `sys_role_menu` VALUES (2292, 78, 88);
INSERT INTO `sys_role_menu` VALUES (2293, 78, 87);
INSERT INTO `sys_role_menu` VALUES (2294, 78, NULL);
INSERT INTO `sys_role_menu` VALUES (2295, 78, NULL);
INSERT INTO `sys_role_menu` VALUES (2296, 78, NULL);
INSERT INTO `sys_role_menu` VALUES (2308, 80, 87);
INSERT INTO `sys_role_menu` VALUES (2309, 80, 86);
INSERT INTO `sys_role_menu` VALUES (2310, 80, -1);
INSERT INTO `sys_role_menu` VALUES (2311, 80, 84);
INSERT INTO `sys_role_menu` VALUES (2312, 80, 85);
INSERT INTO `sys_role_menu` VALUES (2328, 79, 72);
INSERT INTO `sys_role_menu` VALUES (2329, 79, 48);
INSERT INTO `sys_role_menu` VALUES (2330, 79, 77);
INSERT INTO `sys_role_menu` VALUES (2331, 79, 84);
INSERT INTO `sys_role_menu` VALUES (2332, 79, 89);
INSERT INTO `sys_role_menu` VALUES (2333, 79, 88);
INSERT INTO `sys_role_menu` VALUES (2334, 79, 87);
INSERT INTO `sys_role_menu` VALUES (2335, 79, 86);
INSERT INTO `sys_role_menu` VALUES (2336, 79, 85);
INSERT INTO `sys_role_menu` VALUES (2337, 79, -1);
INSERT INTO `sys_role_menu` VALUES (2338, 77, 89);
INSERT INTO `sys_role_menu` VALUES (2339, 77, 88);
INSERT INTO `sys_role_menu` VALUES (2340, 77, 87);
INSERT INTO `sys_role_menu` VALUES (2341, 77, 86);
INSERT INTO `sys_role_menu` VALUES (2342, 77, 85);
INSERT INTO `sys_role_menu` VALUES (2343, 77, 84);
INSERT INTO `sys_role_menu` VALUES (2344, 77, 72);
INSERT INTO `sys_role_menu` VALUES (2345, 77, -1);
INSERT INTO `sys_role_menu` VALUES (2346, 77, 77);
INSERT INTO `sys_role_menu` VALUES (2974, 57, 93);
INSERT INTO `sys_role_menu` VALUES (2975, 57, 99);
INSERT INTO `sys_role_menu` VALUES (2976, 57, 95);
INSERT INTO `sys_role_menu` VALUES (2977, 57, 101);
INSERT INTO `sys_role_menu` VALUES (2978, 57, 96);
INSERT INTO `sys_role_menu` VALUES (2979, 57, 94);
INSERT INTO `sys_role_menu` VALUES (2980, 57, -1);
INSERT INTO `sys_role_menu` VALUES (2981, 58, 93);
INSERT INTO `sys_role_menu` VALUES (2982, 58, 99);
INSERT INTO `sys_role_menu` VALUES (2983, 58, 95);
INSERT INTO `sys_role_menu` VALUES (2984, 58, 101);
INSERT INTO `sys_role_menu` VALUES (2985, 58, 96);
INSERT INTO `sys_role_menu` VALUES (2986, 58, 94);
INSERT INTO `sys_role_menu` VALUES (2987, 58, -1);
INSERT INTO `sys_role_menu` VALUES (3813, 1, 123);
INSERT INTO `sys_role_menu` VALUES (3814, 1, 122);
INSERT INTO `sys_role_menu` VALUES (3815, 1, 121);
INSERT INTO `sys_role_menu` VALUES (3816, 1, 120);
INSERT INTO `sys_role_menu` VALUES (3817, 1, 118);
INSERT INTO `sys_role_menu` VALUES (3818, 1, 117);
INSERT INTO `sys_role_menu` VALUES (3819, 1, 116);
INSERT INTO `sys_role_menu` VALUES (3820, 1, 115);
INSERT INTO `sys_role_menu` VALUES (3821, 1, 113);
INSERT INTO `sys_role_menu` VALUES (3822, 1, 112);
INSERT INTO `sys_role_menu` VALUES (3823, 1, 111);
INSERT INTO `sys_role_menu` VALUES (3824, 1, 110);
INSERT INTO `sys_role_menu` VALUES (3825, 1, 107);
INSERT INTO `sys_role_menu` VALUES (3826, 1, 106);
INSERT INTO `sys_role_menu` VALUES (3827, 1, 105);
INSERT INTO `sys_role_menu` VALUES (3828, 1, 104);
INSERT INTO `sys_role_menu` VALUES (3829, 1, 98);
INSERT INTO `sys_role_menu` VALUES (3830, 1, 92);
INSERT INTO `sys_role_menu` VALUES (3831, 1, 57);
INSERT INTO `sys_role_menu` VALUES (3832, 1, 30);
INSERT INTO `sys_role_menu` VALUES (3833, 1, 29);
INSERT INTO `sys_role_menu` VALUES (3834, 1, 28);
INSERT INTO `sys_role_menu` VALUES (3835, 1, 90);
INSERT INTO `sys_role_menu` VALUES (3836, 1, 89);
INSERT INTO `sys_role_menu` VALUES (3837, 1, 88);
INSERT INTO `sys_role_menu` VALUES (3838, 1, 87);
INSERT INTO `sys_role_menu` VALUES (3839, 1, 86);
INSERT INTO `sys_role_menu` VALUES (3840, 1, 72);
INSERT INTO `sys_role_menu` VALUES (3841, 1, 48);
INSERT INTO `sys_role_menu` VALUES (3842, 1, 68);
INSERT INTO `sys_role_menu` VALUES (3843, 1, 60);
INSERT INTO `sys_role_menu` VALUES (3844, 1, 59);
INSERT INTO `sys_role_menu` VALUES (3845, 1, 58);
INSERT INTO `sys_role_menu` VALUES (3846, 1, 51);
INSERT INTO `sys_role_menu` VALUES (3847, 1, 76);
INSERT INTO `sys_role_menu` VALUES (3848, 1, 75);
INSERT INTO `sys_role_menu` VALUES (3849, 1, 74);
INSERT INTO `sys_role_menu` VALUES (3850, 1, 62);
INSERT INTO `sys_role_menu` VALUES (3851, 1, 56);
INSERT INTO `sys_role_menu` VALUES (3852, 1, 55);
INSERT INTO `sys_role_menu` VALUES (3853, 1, 15);
INSERT INTO `sys_role_menu` VALUES (3854, 1, 26);
INSERT INTO `sys_role_menu` VALUES (3855, 1, 25);
INSERT INTO `sys_role_menu` VALUES (3856, 1, 24);
INSERT INTO `sys_role_menu` VALUES (3857, 1, 14);
INSERT INTO `sys_role_menu` VALUES (3858, 1, 13);
INSERT INTO `sys_role_menu` VALUES (3859, 1, 12);
INSERT INTO `sys_role_menu` VALUES (3860, 1, 61);
INSERT INTO `sys_role_menu` VALUES (3861, 1, 22);
INSERT INTO `sys_role_menu` VALUES (3862, 1, 21);
INSERT INTO `sys_role_menu` VALUES (3863, 1, 20);
INSERT INTO `sys_role_menu` VALUES (3864, 1, 83);
INSERT INTO `sys_role_menu` VALUES (3865, 1, 81);
INSERT INTO `sys_role_menu` VALUES (3866, 1, 80);
INSERT INTO `sys_role_menu` VALUES (3867, 1, 79);
INSERT INTO `sys_role_menu` VALUES (3868, 1, 71);
INSERT INTO `sys_role_menu` VALUES (3869, 1, 119);
INSERT INTO `sys_role_menu` VALUES (3870, 1, 114);
INSERT INTO `sys_role_menu` VALUES (3871, 1, 109);
INSERT INTO `sys_role_menu` VALUES (3872, 1, 108);
INSERT INTO `sys_role_menu` VALUES (3873, 1, 103);
INSERT INTO `sys_role_menu` VALUES (3874, 1, 102);
INSERT INTO `sys_role_menu` VALUES (3875, 1, 97);
INSERT INTO `sys_role_menu` VALUES (3876, 1, 27);
INSERT INTO `sys_role_menu` VALUES (3877, 1, 91);
INSERT INTO `sys_role_menu` VALUES (3878, 1, 85);
INSERT INTO `sys_role_menu` VALUES (3879, 1, 84);
INSERT INTO `sys_role_menu` VALUES (3880, 1, 77);
INSERT INTO `sys_role_menu` VALUES (3881, 1, 50);
INSERT INTO `sys_role_menu` VALUES (3882, 1, 49);
INSERT INTO `sys_role_menu` VALUES (3883, 1, 73);
INSERT INTO `sys_role_menu` VALUES (3884, 1, 7);
INSERT INTO `sys_role_menu` VALUES (3885, 1, 6);
INSERT INTO `sys_role_menu` VALUES (3886, 1, 2);
INSERT INTO `sys_role_menu` VALUES (3887, 1, 3);
INSERT INTO `sys_role_menu` VALUES (3888, 1, 78);
INSERT INTO `sys_role_menu` VALUES (3889, 1, 1);
INSERT INTO `sys_role_menu` VALUES (3890, 1, 124);
INSERT INTO `sys_role_menu` VALUES (3891, 1, 129);
INSERT INTO `sys_role_menu` VALUES (3892, 1, 128);
INSERT INTO `sys_role_menu` VALUES (3893, 1, 127);
INSERT INTO `sys_role_menu` VALUES (3894, 1, 126);
INSERT INTO `sys_role_menu` VALUES (3895, 1, 125);
INSERT INTO `sys_role_menu` VALUES (3896, 1, -1);
INSERT INTO `sys_role_menu` VALUES (3936, 59, 123);
INSERT INTO `sys_role_menu` VALUES (3937, 59, 122);
INSERT INTO `sys_role_menu` VALUES (3938, 59, 121);
INSERT INTO `sys_role_menu` VALUES (3939, 59, 120);
INSERT INTO `sys_role_menu` VALUES (3940, 59, 118);
INSERT INTO `sys_role_menu` VALUES (3941, 59, 117);
INSERT INTO `sys_role_menu` VALUES (3942, 59, 116);
INSERT INTO `sys_role_menu` VALUES (3943, 59, 115);
INSERT INTO `sys_role_menu` VALUES (3944, 59, 113);
INSERT INTO `sys_role_menu` VALUES (3945, 59, 112);
INSERT INTO `sys_role_menu` VALUES (3946, 59, 111);
INSERT INTO `sys_role_menu` VALUES (3947, 59, 110);
INSERT INTO `sys_role_menu` VALUES (3948, 59, 107);
INSERT INTO `sys_role_menu` VALUES (3949, 59, 106);
INSERT INTO `sys_role_menu` VALUES (3950, 59, 105);
INSERT INTO `sys_role_menu` VALUES (3951, 59, 104);
INSERT INTO `sys_role_menu` VALUES (3952, 59, 98);
INSERT INTO `sys_role_menu` VALUES (3953, 59, 90);
INSERT INTO `sys_role_menu` VALUES (3954, 59, 89);
INSERT INTO `sys_role_menu` VALUES (3955, 59, 88);
INSERT INTO `sys_role_menu` VALUES (3956, 59, 87);
INSERT INTO `sys_role_menu` VALUES (3957, 59, 86);
INSERT INTO `sys_role_menu` VALUES (3958, 59, 83);
INSERT INTO `sys_role_menu` VALUES (3959, 59, 81);
INSERT INTO `sys_role_menu` VALUES (3960, 59, 80);
INSERT INTO `sys_role_menu` VALUES (3961, 59, 79);
INSERT INTO `sys_role_menu` VALUES (3962, 59, 71);
INSERT INTO `sys_role_menu` VALUES (3963, 59, 119);
INSERT INTO `sys_role_menu` VALUES (3964, 59, 114);
INSERT INTO `sys_role_menu` VALUES (3965, 59, 109);
INSERT INTO `sys_role_menu` VALUES (3966, 59, 108);
INSERT INTO `sys_role_menu` VALUES (3967, 59, 103);
INSERT INTO `sys_role_menu` VALUES (3968, 59, 102);
INSERT INTO `sys_role_menu` VALUES (3969, 59, 97);
INSERT INTO `sys_role_menu` VALUES (3970, 59, 85);
INSERT INTO `sys_role_menu` VALUES (3971, 59, 84);
INSERT INTO `sys_role_menu` VALUES (3972, 59, 78);
INSERT INTO `sys_role_menu` VALUES (3973, 59, 1);
INSERT INTO `sys_role_menu` VALUES (3974, 59, 124);
INSERT INTO `sys_role_menu` VALUES (3975, 59, 129);
INSERT INTO `sys_role_menu` VALUES (3976, 59, 128);
INSERT INTO `sys_role_menu` VALUES (3977, 59, 127);
INSERT INTO `sys_role_menu` VALUES (3978, 59, 126);
INSERT INTO `sys_role_menu` VALUES (3979, 59, 125);
INSERT INTO `sys_role_menu` VALUES (3980, 59, -1);
COMMIT;

-- ----------------------------
-- Table structure for sys_task
-- ----------------------------
DROP TABLE IF EXISTS `sys_task`;
CREATE TABLE `sys_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cron_expression` varchar(255) DEFAULT NULL COMMENT 'cron表达式',
  `method_name` varchar(255) DEFAULT NULL COMMENT '任务调用的方法名',
  `is_concurrent` varchar(255) DEFAULT NULL COMMENT '任务是否有状态',
  `description` varchar(255) DEFAULT NULL COMMENT '任务描述',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `bean_class` varchar(255) DEFAULT NULL COMMENT '任务执行时调用哪个类的方法 包名+类名',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `job_status` varchar(255) DEFAULT NULL COMMENT '任务状态',
  `job_group` varchar(255) DEFAULT NULL COMMENT '任务分组',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `spring_bean` varchar(255) DEFAULT NULL COMMENT 'Spring bean',
  `job_name` varchar(255) DEFAULT NULL COMMENT '任务名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_task
-- ----------------------------
BEGIN;
INSERT INTO `sys_task` VALUES (2, '0/10 * * * * ?', 'run1', '1', '', '4028ea815a3d2a8c015a3d2f8d2a0002', 'com.bootdo.common.task.WelcomeJob', '2017-05-19 18:30:56', '0', 'group1', '2017-05-19 18:31:07', NULL, '', 'welcomJob');
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `dept_id` bigint(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(255) DEFAULT NULL COMMENT '状态 0:禁用，1:正常',
  `user_id_create` bigint(255) DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  `sex` bigint(32) DEFAULT NULL COMMENT '性别',
  `birth` datetime DEFAULT NULL COMMENT '出身日期',
  `pic_id` bigint(32) DEFAULT NULL,
  `live_address` varchar(500) DEFAULT NULL COMMENT '现居住地',
  `hobby` varchar(255) DEFAULT NULL COMMENT '爱好',
  `province` varchar(255) DEFAULT NULL COMMENT '省份',
  `city` varchar(255) DEFAULT NULL COMMENT '所在城市',
  `district` varchar(255) DEFAULT NULL COMMENT '所在地区',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 'admin', '超级管理员', '5d312f5aa7500584a1eafab6e4791665', 6, 'admin@example.com', '17699999999', 1, 1, '2017-08-15 21:40:39', '2017-08-15 21:41:00', 96, '2012-12-14 00:00:00', 253, 'ccc', '121;', '北京市', '北京市市辖区', '东城区');
INSERT INTO `sys_user` VALUES (2, 'test', '狗子', '25bb7c42604b0e7aba7bcae50e7762a9', 6, 'test@bootdo.com', NULL, 1, 1, '2017-08-14 13:43:05', '2017-08-14 21:15:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (137, 'test2', '测试用户2', '649169898e69272c0e5bc899baf1e904', 12, 'test2@bootdo.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (139, 'yl', '杨莉', 'eabff632dc6487991f0481829d9bbc09', 12, 'gouzi@qq.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_plus
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_plus`;
CREATE TABLE `sys_user_plus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `payment` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (73, 30, 48);
INSERT INTO `sys_user_role` VALUES (74, 30, 49);
INSERT INTO `sys_user_role` VALUES (75, 30, 50);
INSERT INTO `sys_user_role` VALUES (76, 31, 48);
INSERT INTO `sys_user_role` VALUES (77, 31, 49);
INSERT INTO `sys_user_role` VALUES (78, 31, 52);
INSERT INTO `sys_user_role` VALUES (79, 32, 48);
INSERT INTO `sys_user_role` VALUES (80, 32, 49);
INSERT INTO `sys_user_role` VALUES (81, 32, 50);
INSERT INTO `sys_user_role` VALUES (82, 32, 51);
INSERT INTO `sys_user_role` VALUES (83, 32, 52);
INSERT INTO `sys_user_role` VALUES (84, 33, 38);
INSERT INTO `sys_user_role` VALUES (85, 33, 49);
INSERT INTO `sys_user_role` VALUES (86, 33, 52);
INSERT INTO `sys_user_role` VALUES (87, 34, 50);
INSERT INTO `sys_user_role` VALUES (88, 34, 51);
INSERT INTO `sys_user_role` VALUES (89, 34, 52);
INSERT INTO `sys_user_role` VALUES (110, 1, 1);
INSERT INTO `sys_user_role` VALUES (124, NULL, 48);
INSERT INTO `sys_user_role` VALUES (133, 137, 56);
INSERT INTO `sys_user_role` VALUES (135, 2, 59);
INSERT INTO `sys_user_role` VALUES (137, 139, 59);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
