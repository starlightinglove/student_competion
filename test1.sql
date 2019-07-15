/*
Navicat MySQL Data Transfer

Source Server         : htj
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : test1

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-07-15 13:16:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_name` varchar(20) NOT NULL,
  `ad_password` varchar(12) NOT NULL,
  `ad_type` char(12) DEFAULT NULL,
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin', '1');

-- ----------------------------
-- Table structure for `class`
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_no` char(10) NOT NULL,
  `class_name` char(20) NOT NULL,
  `class_grade` char(10) NOT NULL,
  `dp_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`class_id`),
  KEY `fk_class` (`dp_id`),
  CONSTRAINT `fk_class` FOREIGN KEY (`dp_id`) REFERENCES `department` (`dp_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', '04001', '网络技术', '15', '1');
INSERT INTO `class` VALUES ('2', '04002', '网络技术', '15', '1');
INSERT INTO `class` VALUES ('3', '05001', '会计', '15', '2');
INSERT INTO `class` VALUES ('4', '05002', '会计', '15', '2');
INSERT INTO `class` VALUES ('5', '04001', '网络技术', '14级', '1');
INSERT INTO `class` VALUES ('6', '05001', '会计', '15级', '2');
INSERT INTO `class` VALUES ('7', '05002', '财务管理', '15级', '2');
INSERT INTO `class` VALUES ('8', '06001', '网络工程1班', '16级', '7');
INSERT INTO `class` VALUES ('9', '06002', '网络工程2班', '16级', '7');
INSERT INTO `class` VALUES ('10', '06003', '网络工程3班', '16级', '7');
INSERT INTO `class` VALUES ('11', '07001', '物联网技术1班', '16级', '7');
INSERT INTO `class` VALUES ('12', '07002', '物联网技术3班', '16级', '7');
INSERT INTO `class` VALUES ('13', '08001', '软件工程1班', '16级', '8');
INSERT INTO `class` VALUES ('14', '08002', '软件工程2班', '16级', '8');
INSERT INTO `class` VALUES ('15', '07003', '汽车制造', '17级', '3');

-- ----------------------------
-- Table structure for `class_num`
-- ----------------------------
DROP TABLE IF EXISTS `class_num`;
CREATE TABLE `class_num` (
  `num_no` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `class_name` char(20) DEFAULT NULL,
  `student_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`num_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_num
-- ----------------------------
INSERT INTO `class_num` VALUES ('1', '1', '网络技术', '3');
INSERT INTO `class_num` VALUES ('2', '2', '网络技术', '4');
INSERT INTO `class_num` VALUES ('3', '3', '会计', '3');
INSERT INTO `class_num` VALUES ('4', '4', '会计', '1');

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `dp_id` int(11) NOT NULL AUTO_INCREMENT,
  `dp_name` varchar(20) NOT NULL,
  `dp_phone` varchar(20) DEFAULT NULL,
  `dp_info` text,
  PRIMARY KEY (`dp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '信息工程学院', '0760-6249550', '广东创新科技职业学院信息工程学院有4500名学生');
INSERT INTO `department` VALUES ('2', '财经学院', '0760-6249553', '广东创新科技职业学院财经学院有4800名学生');
INSERT INTO `department` VALUES ('3', '机电工程系', '0760-6249522', '广东创新科技职业学院机电工程系有2020名学生');
INSERT INTO `department` VALUES ('4', '信息工程学院', '0760-6249550', '');
INSERT INTO `department` VALUES ('5', '财经学院', '0760-6249553', '');
INSERT INTO `department` VALUES ('6', '机电工程系', '0760-6249522', '');
INSERT INTO `department` VALUES ('7', '计算机科学与工程系', '0760-6249523', null);
INSERT INTO `department` VALUES ('8', '信息与软件工程系', '0760-6249524', null);

-- ----------------------------
-- Table structure for `project`
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `pr_id` int(11) NOT NULL AUTO_INCREMENT,
  `pr_name` varchar(50) NOT NULL,
  `pr_time` date DEFAULT NULL,
  `pr_trainaddress` varchar(50) DEFAULT NULL,
  `pr_start` date DEFAULT NULL,
  `pr_end` date DEFAULT NULL,
  `pr_info` text,
  PRIMARY KEY (`pr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('1', '蓝桥杯', '2017-12-09', '实训楼6-302', '2017-11-04', '2017-11-26', null);
INSERT INTO `project` VALUES ('2', '炒股模拟大赛', '2017-08-26', '教学楼3-107', '2017-08-19', '2017-08-20', null);
INSERT INTO `project` VALUES ('3', '大学生工程训练综合能力竞赛', '2017-06-10', '实训楼2-306', '2017-05-19', '2017-05-29', null);
INSERT INTO `project` VALUES ('4', '大学生广告艺术大赛', '2018-05-31', '教学楼1-508', '2018-05-01', '2018-05-30', null);
INSERT INTO `project` VALUES ('5', '霍普杯', '2017-08-31', '实训楼3-101', '2017-08-01', '2017-08-31', null);
INSERT INTO `project` VALUES ('6', '天梯', '2019-10-19', 'C2-102', '2019-07-09', '2019-07-31', '');

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `st_no` char(20) NOT NULL,
  `pr_id` int(11) NOT NULL,
  `score` float DEFAULT NULL,
  `tc_id` int(11) DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `dp_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('0', '2017060201', '1', '85', '2', '1', '1');
INSERT INTO `score` VALUES ('1', '2017060201', '2', '98', '2', '1', '1');
INSERT INTO `score` VALUES ('2', '2018012345', '1', '94', '5', '10', '7');
INSERT INTO `score` VALUES ('3', '2018012345', '2', '67', '5', '10', '7');
INSERT INTO `score` VALUES ('4', '2018012346', '1', '78', '7', '11', '7');
INSERT INTO `score` VALUES ('5', '2018012347', '6', '90', '7', '13', '8');
INSERT INTO `score` VALUES ('6', '2018012347', '1', '78', '7', '13', '8');
INSERT INTO `score` VALUES ('7', '2018012347', '2', '20', '7', '13', '8');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `st_id` int(11) NOT NULL AUTO_INCREMENT,
  `st_no` char(20) NOT NULL,
  `st_password` varchar(12) NOT NULL,
  `st_name` varchar(20) NOT NULL,
  `st_sex` char(2) DEFAULT '男',
  `class_id` int(11) DEFAULT NULL,
  `dp_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`st_id`),
  UNIQUE KEY `st_no` (`st_no`),
  KEY `fk_student_class` (`class_id`),
  KEY `fk_student_department` (`dp_id`),
  CONSTRAINT `fk_student_class` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_student_department` FOREIGN KEY (`dp_id`) REFERENCES `department` (`dp_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '2017060201', 'ABC123456', '李国豪', '男', '1', '1');
INSERT INTO `student` VALUES ('2', '2017060202', '3324446', '张晓英', '女', '1', '1');
INSERT INTO `student` VALUES ('3', '2017060203', 'A4324233', '陈兵兵', '男', '2', '1');
INSERT INTO `student` VALUES ('4', '2017060204', 'rrew1234', '黄云芳', '女', '3', '2');
INSERT INTO `student` VALUES ('5', '2017060205', 'ttr456743', '谢峰', '男', '1', '1');
INSERT INTO `student` VALUES ('6', '2017060206', 'jrr43256', '李明博', '男', '2', '1');
INSERT INTO `student` VALUES ('7', '2017060207', 'A7653262', '张小静', '女', '4', '2');
INSERT INTO `student` VALUES ('8', '2014060208', 'chen24444', '陈小东', '男', '2', '1');
INSERT INTO `student` VALUES ('10', '2014060209', 'Bob', '王琳', '女', '3', '2');
INSERT INTO `student` VALUES ('12', '123456', '1234', '摸摸头', '女', '3', '1');
INSERT INTO `student` VALUES ('13', '123', '123', '李华', '男', '2', '1');
INSERT INTO `student` VALUES ('14', '1234', '1234', '王平', '男', '6', '1');

-- ----------------------------
-- Table structure for `student1`
-- ----------------------------
DROP TABLE IF EXISTS `student1`;
CREATE TABLE `student1` (
  `st_id` int(11) NOT NULL AUTO_INCREMENT,
  `st_no` char(10) NOT NULL,
  `st_password` varchar(12) NOT NULL,
  `st_name` varchar(20) NOT NULL,
  `st_sex` char(2) DEFAULT '男',
  `class_id` int(11) DEFAULT NULL,
  `dp_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`st_id`),
  UNIQUE KEY `st_no` (`st_no`),
  KEY `fk_student_class` (`class_id`),
  KEY `fk_student_department` (`dp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student1
-- ----------------------------
INSERT INTO `student1` VALUES ('1', '2017060201', 'ABC123456', '李国豪', '男', '1', '1');
INSERT INTO `student1` VALUES ('2', '2017060202', '3324446', '张晓英', '女', '1', '1');
INSERT INTO `student1` VALUES ('3', '2017060203', 'A4324233', '陈兵兵', '男', '2', '1');
INSERT INTO `student1` VALUES ('4', '2017060204', 'rrew1234', '黄云芳', '女', '3', '2');
INSERT INTO `student1` VALUES ('5', '2017060205', 'ttr456743', '谢峰', '男', '1', '1');
INSERT INTO `student1` VALUES ('6', '2017060206', 'jrr43256', '李明博', '男', '2', '1');
INSERT INTO `student1` VALUES ('7', '2017060207', 'A7653262', '张小静', '女', '4', '2');
INSERT INTO `student1` VALUES ('8', '2014060208', 'chen24444', '陈小东', '男', '2', '1');
INSERT INTO `student1` VALUES ('10', '2014060209', 'Bob', '王琳', '女', '3', '2');
INSERT INTO `student1` VALUES ('13', '123', '0000', '李华', '男', '2', '1');
INSERT INTO `student1` VALUES ('14', '1234', '1234', '王平', '男', '6', '1');
INSERT INTO `student1` VALUES ('15', '123456', '123', '摸摸头', '女', '1', '1');
INSERT INTO `student1` VALUES ('17', '2018012345', '123', '王柏松', '男', '10', '7');
INSERT INTO `student1` VALUES ('18', '2018012346', '123', '黄菲菲', '女', '11', '7');

-- ----------------------------
-- Table structure for `student_registration`
-- ----------------------------
DROP TABLE IF EXISTS `student_registration`;
CREATE TABLE `student_registration` (
  `st_no` int(11) NOT NULL,
  `st_name` char(20) NOT NULL,
  `class_name` char(20) NOT NULL,
  `pr_name` varchar(45) NOT NULL,
  `st_phone` varchar(20) NOT NULL,
  `st_email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`st_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of student_registration
-- ----------------------------
INSERT INTO `student_registration` VALUES ('76543', '的撒', '网络工程1班', '蓝桥杯', '867543421', '');
INSERT INTO `student_registration` VALUES ('12345678', '光伏发电', '网络工程3班', '天梯', '234567', '');
INSERT INTO `student_registration` VALUES ('2017060201', '李国豪', '计算机科学与技术1班', '蓝桥杯', '189810908294', '');
INSERT INTO `student_registration` VALUES ('2017060202', '张晓英', '计算机科学与技术1班', '蓝桥杯', '189810908294', '');
INSERT INTO `student_registration` VALUES ('2017060203', '陈兵兵', '物联网1班', '天梯', '34567', '90-9');
INSERT INTO `student_registration` VALUES ('2017060204', '黄云芳', '网络工程2班', '蓝桥杯', '0900909090', '');

-- ----------------------------
-- Table structure for `st_project`
-- ----------------------------
DROP TABLE IF EXISTS `st_project`;
CREATE TABLE `st_project` (
  `st_pid` int(11) NOT NULL AUTO_INCREMENT,
  `st_id` int(11) DEFAULT NULL,
  `pr_id` int(11) DEFAULT NULL,
  `tc_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`st_pid`),
  KEY `fk_st_project_student` (`st_id`),
  KEY `fk_st_project_project` (`pr_id`),
  KEY `fk_st_project_teacher` (`tc_id`),
  CONSTRAINT `fk_st_project_project` FOREIGN KEY (`pr_id`) REFERENCES `project` (`pr_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_st_project_student` FOREIGN KEY (`st_id`) REFERENCES `student` (`st_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_st_project_teacher` FOREIGN KEY (`tc_id`) REFERENCES `teacher` (`tc_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of st_project
-- ----------------------------

-- ----------------------------
-- Table structure for `tc_project`
-- ----------------------------
DROP TABLE IF EXISTS `tc_project`;
CREATE TABLE `tc_project` (
  `tc_pid` int(11) NOT NULL AUTO_INCREMENT,
  `tc_id` int(11) DEFAULT NULL,
  `pr_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tc_pid`),
  KEY `fk_tc_project_teacher` (`tc_id`),
  KEY `fk_tc_project_project` (`pr_id`),
  CONSTRAINT `fk_tc_project_project` FOREIGN KEY (`pr_id`) REFERENCES `project` (`pr_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_tc_project_teacher` FOREIGN KEY (`tc_id`) REFERENCES `teacher` (`tc_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tc_project
-- ----------------------------
INSERT INTO `tc_project` VALUES ('1', '1', '1');
INSERT INTO `tc_project` VALUES ('2', '2', '1');
INSERT INTO `tc_project` VALUES ('3', '3', '1');
INSERT INTO `tc_project` VALUES ('4', '4', '1');
INSERT INTO `tc_project` VALUES ('5', '5', '2');
INSERT INTO `tc_project` VALUES ('6', '6', '2');
INSERT INTO `tc_project` VALUES ('7', '7', '2');
INSERT INTO `tc_project` VALUES ('8', '8', '2');
INSERT INTO `tc_project` VALUES ('9', '9', '3');
INSERT INTO `tc_project` VALUES ('10', '10', '3');
INSERT INTO `tc_project` VALUES ('11', '11', '3');
INSERT INTO `tc_project` VALUES ('12', '12', '4');
INSERT INTO `tc_project` VALUES ('13', '13', '4');
INSERT INTO `tc_project` VALUES ('14', '14', '5');
INSERT INTO `tc_project` VALUES ('15', '15', '5');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tc_id` int(11) NOT NULL AUTO_INCREMENT,
  `tc_no` char(20) NOT NULL,
  `tc_password` varchar(12) NOT NULL,
  `tc_name` varchar(20) NOT NULL,
  `tc_sex` char(2) DEFAULT '男',
  `dp_id` int(11) DEFAULT NULL,
  `tc_info` text,
  PRIMARY KEY (`tc_id`),
  UNIQUE KEY `tc_no` (`tc_no`),
  KEY `fk_teacher_department` (`dp_id`),
  CONSTRAINT `fk_teacher_department` FOREIGN KEY (`dp_id`) REFERENCES `department` (`dp_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '1245', '251204', '何俊彦', '男', '1', null);
INSERT INTO `teacher` VALUES ('2', '1246', '251205', '胡耀锋', '男', '1', null);
INSERT INTO `teacher` VALUES ('3', '1247', '251206', '黄栋良', '男', '1', null);
INSERT INTO `teacher` VALUES ('4', '1248', '251207', '黄桂仪', '女', '1', null);
INSERT INTO `teacher` VALUES ('5', '1249', '251208', '黄文朗', '男', '2', null);
INSERT INTO `teacher` VALUES ('6', '1250', '251209', '黎浩林', '男', '2', null);
INSERT INTO `teacher` VALUES ('7', '1251', '251210', '黎梓健', '男', '2', null);
INSERT INTO `teacher` VALUES ('9', '1253', '251212', '李秀铃', '女', '3', null);
INSERT INTO `teacher` VALUES ('11', '1255', '251214', '梁铸琴', '女', '3', null);
INSERT INTO `teacher` VALUES ('12', '1256', '0000', '卢健彬', '男', '4', null);
INSERT INTO `teacher` VALUES ('14', '1258', '0000', '卢世文', '男', '5', null);
INSERT INTO `teacher` VALUES ('15', '1259', '0000', '莫浩尧', '男', '5', null);
INSERT INTO `teacher` VALUES ('20', '1257', '0000', '田茂茂', '女', '7', '');
INSERT INTO `teacher` VALUES ('21', '1262', '0123', '魏琛', '男', '7', '');
INSERT INTO `teacher` VALUES ('23', '2000', '123', '何天骄', '女', '1', '123');
INSERT INTO `teacher` VALUES ('24', '12234', '123', '1234', '女', null, '123');

-- ----------------------------
-- Procedure structure for `pr_count`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_count`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_count`()
begin 
select count(* ) from student where st_sex="男";
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pr_sex`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_sex`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_sex`(in xuehao  char(10), out shuchu char(20))
BEGIN
DECLARE  the_sex  char(2);
SELECT  st_sex  INTO the_sex  FROM  student  WHERE st_no =xuehao;
IF the_sex='男' THEN
SET shuchu='你是一个男生';
ELSEIF the_sex='女' THEN
SET shuchu='你是一个女生';	
END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pr_student`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_student`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_student`(in xuehao char(20))
begin 
select  class_name 班级 from student join class  using(class_id) where st_no=xuehao;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pr_student1`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_student1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_student1`(in bianhao int)
Begin 
declare xuehao char(10); 
declare xingming varchar(20); 
declare xingbie char(2);
declare youbiao cursor for select  st_no,st_name,st_sex from  student where st_id=bianhao;
open youbiao;
fetch youbiao into xuehao,xingming,xingbie;
select xuehao,xingming,xingbie;
close youbiao;
end
;;
DELIMITER ;
