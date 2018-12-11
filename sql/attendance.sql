/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : attendance

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2018-12-11 09:56:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `ID` int(8) NOT NULL,
  `NUMBER` int(8) DEFAULT NULL,
  `GRADE_ID` int(8) NOT NULL,
  `INSTRUCTOR` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `CLASSROOM` varchar(255) DEFAULT NULL,
  `START_TIME` varchar(255) DEFAULT NULL,
  `PEROID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------

-- ----------------------------
-- Table structure for face
-- ----------------------------
DROP TABLE IF EXISTS `face`;
CREATE TABLE `face` (
  `ID` int(8) NOT NULL AUTO_INCREMENT COMMENT '人脸id',
  `NAME` varchar(255) DEFAULT NULL COMMENT '文件名',
  `PATH` varchar(255) DEFAULT NULL COMMENT '人脸照片路径',
  `STU_ID` int(8) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of face
-- ----------------------------

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `ID` int(8) NOT NULL,
  `GRADE_NUMB` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------

-- ----------------------------
-- Table structure for sign
-- ----------------------------
DROP TABLE IF EXISTS `sign`;
CREATE TABLE `sign` (
  `ID` int(8) NOT NULL,
  `STU_ID` int(8) NOT NULL,
  `SIGN_TIME` datetime DEFAULT NULL,
  `COURSE_ID` int(8) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sign
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `ID` int(8) NOT NULL,
  `STU_NUMBER` int(16) DEFAULT NULL,
  `MAJOR` varchar(255) DEFAULT NULL COMMENT '专业',
  `GRADE` varchar(255) DEFAULT NULL COMMENT '年级',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1001', '41504145', '计算机科学与技术', '15');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `ID` int(8) NOT NULL,
  `DEPARTMENT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ID` int(32) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `NAME` varchar(255) DEFAULT NULL COMMENT '用户名',
  `ACCOUNT` varchar(255) DEFAULT NULL COMMENT '账号',
  `PASSWORD` varchar(255) DEFAULT NULL COMMENT '密码',
  `SEX` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `TEL` varchar(255) DEFAULT NULL COMMENT '电话',
  `CREATE_TIME` timestamp(6) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` timestamp(6) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('2', '4343', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('3', null, null, null, null, null, null, null, null);
