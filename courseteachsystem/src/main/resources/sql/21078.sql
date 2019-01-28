/*
Navicat MySQL Data Transfer

Source Server         : pcp
Source Server Version : 50610
Source Host           : 192.168.2.38:3306
Source Database       : p1_teaching_system

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2019-01-25 16:39:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `curriculum_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  KEY `fk_curriculum` (`curriculum_id`),
  KEY `fk_student` (`student_id`),
  CONSTRAINT `fk_curriculum` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum` (`curriculum_id`),
  CONSTRAINT `fk_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', '1');

-- ----------------------------
-- Table structure for curriculum
-- ----------------------------
DROP TABLE IF EXISTS `curriculum`;
CREATE TABLE `curriculum` (
  `curriculum_id` int(11) NOT NULL AUTO_INCREMENT,
  `curriculum_name` varchar(100) DEFAULT NULL COMMENT '课程名',
  `teacher_name` varchar(100) DEFAULT NULL COMMENT '任课老师',
  `collega` varchar(100) DEFAULT NULL COMMENT '开课学院',
  `character` varchar(100) DEFAULT NULL COMMENT '课程性质',
  `category` varchar(100) DEFAULT NULL COMMENT '课程类别',
  `term` int(11) DEFAULT NULL COMMENT '开课学期',
  `examine` varchar(100) DEFAULT NULL COMMENT '考核方式',
  `week` varchar(100) DEFAULT NULL COMMENT '起止周',
  `count_time` int(11) DEFAULT NULL COMMENT '总学时',
  `test_time` varchar(100) DEFAULT NULL COMMENT '实验学时',
  `place` varchar(100) DEFAULT NULL COMMENT '上课地点',
  PRIMARY KEY (`curriculum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of curriculum
-- ----------------------------
INSERT INTO `curriculum` VALUES ('1', '软件工程', '软件工程老师', '计算机学院', '必修', '专业必修课', '1', '考试', '1周', '16', '32', '逸夫楼');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学号',
  `student_name` varchar(100) DEFAULT NULL COMMENT '学生姓名',
  `sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `old_name` varchar(100) DEFAULT NULL COMMENT '曾用名',
  `birth_date` datetime DEFAULT NULL COMMENT '出生日期',
  `people` varchar(100) DEFAULT NULL COMMENT '民族',
  `birth_place` varchar(100) DEFAULT NULL COMMENT '籍贯',
  `politics_status` varchar(100) DEFAULT NULL COMMENT '政治面貌',
  `original_place` varchar(100) DEFAULT NULL COMMENT '来源地区',
  `major` varchar(100) DEFAULT NULL COMMENT '专业名称',
  `class` varchar(100) DEFAULT NULL COMMENT '所属班级',
  `academic_structure` int(11) DEFAULT NULL COMMENT '学制',
  `length_school` int(11) DEFAULT NULL COMMENT '学习年限',
  `roll_status` varchar(100) DEFAULT NULL COMMENT '学籍状态',
  `enter_year` varchar(100) DEFAULT NULL COMMENT '当前所在级',
  `test_num` varchar(100) DEFAULT NULL COMMENT '考生号',
  `phone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `post_code` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `high_school` varchar(100) DEFAULT NULL COMMENT '毕业中学',
  `email` varchar(100) DEFAULT NULL COMMENT '邮件',
  `exam_num` varchar(100) DEFAULT NULL COMMENT '准考证号',
  `id_num` varchar(100) DEFAULT NULL COMMENT '身份证号',
  `education` varchar(100) DEFAULT NULL COMMENT '学历层次',
  `hmt_num` varchar(100) DEFAULT NULL COMMENT '港澳台码',
  `family_location` varchar(100) DEFAULT NULL COMMENT '家庭所在地',
  `F_name` varchar(100) DEFAULT NULL COMMENT '父亲姓名',
  `M_name` varchar(100) DEFAULT NULL COMMENT '母亲姓名',
  `F_phone` varchar(100) DEFAULT NULL COMMENT '父亲电话',
  `M_phone` varchar(100) DEFAULT NULL COMMENT '母亲电话',
  `U_phone` varchar(100) DEFAULT NULL COMMENT '手机号',
  `Password` varchar(100) DEFAULT NULL COMMENT '密码',
  `College` varchar(100) DEFAULT NULL COMMENT '所属学院',
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'Lily', '女', '路西', '2019-01-18 16:32:05', '汉', '北京', '党员', '重庆', '软件', '1901', '4', '4', '在读', '2016', '001', '132XXXXXXXX', '7661', '重庆中学', '123@qq.com', '011', '1311911654806525698', '专科', '123', '重庆', '父亲1', '母亲1', '138XXXXXXXX', '135XXXXXXXX', '186XXXXXXXX', '123', '计算机');

-- ----------------------------
-- Table structure for ts_grade
-- ----------------------------
DROP TABLE IF EXISTS `ts_grade`;
CREATE TABLE `ts_grade` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) NOT NULL,
  `credit` float DEFAULT NULL,
  `course_nature` varchar(100) DEFAULT NULL,
  `grade` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ts_grade
-- ----------------------------
INSERT INTO `ts_grade` VALUES ('1', '计算机导论', '3', '必修课', '80');
INSERT INTO `ts_grade` VALUES ('2', '大学体育', '1', '必修课', '70');
INSERT INTO `ts_grade` VALUES ('3', '中国近代史', '2.5', '必修课', '80');
INSERT INTO `ts_grade` VALUES ('4', '素养课程', '1', '必修课', '81');
INSERT INTO `ts_grade` VALUES ('5', '军训教育', '2', '必修课', '合格');
INSERT INTO `ts_grade` VALUES ('6', '大学英语1', '3.5', '必修课', '59');
INSERT INTO `ts_grade` VALUES ('7', 'c语言', '4.5', '必修课', '78');
INSERT INTO `ts_grade` VALUES ('8', '形式政策', '0.5', '必修课', '92');
INSERT INTO `ts_grade` VALUES ('9', '高等数学 A1', '5.5', '必修课', '77');
