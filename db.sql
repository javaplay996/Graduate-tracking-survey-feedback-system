/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmlp542
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmlp542` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmlp542`;

/*Table structure for table `banjixinxi` */

DROP TABLE IF EXISTS `banjixinxi`;

CREATE TABLE `banjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banjimingcheng` varchar(200) NOT NULL COMMENT '班级名称',
  `banzhuren` varchar(200) NOT NULL COMMENT '班主任',
  `banzhang` varchar(200) DEFAULT NULL COMMENT '班长',
  `xueshenglianluoyuan` varchar(200) DEFAULT NULL COMMENT '学生联络员',
  `shijianlaoshi` varchar(200) DEFAULT NULL COMMENT '实践老师',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619318301261 DEFAULT CHARSET=utf8 COMMENT='班级信息';

/*Data for the table `banjixinxi` */

insert  into `banjixinxi`(`id`,`addtime`,`banjimingcheng`,`banzhuren`,`banzhang`,`xueshenglianluoyuan`,`shijianlaoshi`) values (21,'2021-04-25 10:34:13','班级名称1','班主任1','班长1','学生联络员1','实践老师1');
insert  into `banjixinxi`(`id`,`addtime`,`banjimingcheng`,`banzhuren`,`banzhang`,`xueshenglianluoyuan`,`shijianlaoshi`) values (22,'2021-04-25 10:34:13','班级名称2','班主任2','班长2','学生联络员2','实践老师2');
insert  into `banjixinxi`(`id`,`addtime`,`banjimingcheng`,`banzhuren`,`banzhang`,`xueshenglianluoyuan`,`shijianlaoshi`) values (23,'2021-04-25 10:34:13','班级名称3','班主任3','班长3','学生联络员3','实践老师3');
insert  into `banjixinxi`(`id`,`addtime`,`banjimingcheng`,`banzhuren`,`banzhang`,`xueshenglianluoyuan`,`shijianlaoshi`) values (24,'2021-04-25 10:34:13','班级名称4','班主任4','班长4','学生联络员4','实践老师4');
insert  into `banjixinxi`(`id`,`addtime`,`banjimingcheng`,`banzhuren`,`banzhang`,`xueshenglianluoyuan`,`shijianlaoshi`) values (25,'2021-04-25 10:34:13','班级名称5','班主任5','班长5','学生联络员5','实践老师5');
insert  into `banjixinxi`(`id`,`addtime`,`banjimingcheng`,`banzhuren`,`banzhang`,`xueshenglianluoyuan`,`shijianlaoshi`) values (26,'2021-04-25 10:34:13','班级名称6','班主任6','班长6','学生联络员6','实践老师6');
insert  into `banjixinxi`(`id`,`addtime`,`banjimingcheng`,`banzhuren`,`banzhang`,`xueshenglianluoyuan`,`shijianlaoshi`) values (1619318301260,'2021-04-25 10:38:20','某班级','阿五','阿三','阿三','阿五');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmlp542/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmlp542/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmlp542/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619318315243 DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`addtime`,`name`,`time`,`status`) values (1619318315242,'2021-04-25 10:38:35','测试',30,1);

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619318428961 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1619318350671,'2021-04-25 10:39:09',1619318315242,'测试','1+1=？','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.1.5\",\"code\":\"D\"}]',20,'B','测试',0,1);
insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1619318391207,'2021-04-25 10:39:50',1619318315242,'测试','1+1=？','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.1.5\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',20,'A,B','测试',1,2);
insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1619318413441,'2021-04-25 10:40:13',1619318315242,'测试','1+1=2','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'A','测试',2,3);
insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1619318428960,'2021-04-25 10:40:28',1619318315242,'测试','1+1=','[]',20,'2','测试',3,4);

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619318510209 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1619318447525,'2021-04-25 10:40:46',1619318219704,NULL,1619318315242,'测试',1619318350671,'1+1=？','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.1.5\",\"code\":\"D\"}]',20,'B','测试',20,'B');
insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1619318450929,'2021-04-25 10:40:50',1619318219704,NULL,1619318315242,'测试',1619318391207,'1+1=？','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.1.5\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',20,'A,B','测试',0,'A,B,C');
insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1619318453400,'2021-04-25 10:40:53',1619318219704,NULL,1619318315242,'测试',1619318413441,'1+1=2','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'A','测试',20,'A');
insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1619318457063,'2021-04-25 10:40:56',1619318219704,NULL,1619318315242,'测试',1619318428960,'1+1=','[]',20,'2','测试',20,'2');
insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1619318500921,'2021-04-25 10:41:40',1619318203781,NULL,1619318315242,'测试',1619318350671,'1+1=？','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.1.5\",\"code\":\"D\"}]',20,'B','测试',20,'B');
insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1619318504705,'2021-04-25 10:41:44',1619318203781,NULL,1619318315242,'测试',1619318391207,'1+1=？','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.1.5\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',20,'A,B','测试',0,'A,B,C');
insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1619318507551,'2021-04-25 10:41:46',1619318203781,NULL,1619318315242,'测试',1619318413441,'1+1=2','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'A','测试',20,'A');
insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1619318510208,'2021-04-25 10:41:49',1619318203781,NULL,1619318315242,'测试',1619318428960,'1+1=','[]',20,'2','测试',0,'3');

/*Table structure for table `jiaoshixinxi` */

DROP TABLE IF EXISTS `jiaoshixinxi`;

CREATE TABLE `jiaoshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619318257359 DEFAULT CHARSET=utf8 COMMENT='教师信息';

/*Data for the table `jiaoshixinxi` */

insert  into `jiaoshixinxi`(`id`,`addtime`,`xingming`,`xingbie`,`shoujihaoma`) values (41,'2021-04-25 10:34:13','姓名1','性别1','手机号码1');
insert  into `jiaoshixinxi`(`id`,`addtime`,`xingming`,`xingbie`,`shoujihaoma`) values (42,'2021-04-25 10:34:13','姓名2','性别2','手机号码2');
insert  into `jiaoshixinxi`(`id`,`addtime`,`xingming`,`xingbie`,`shoujihaoma`) values (43,'2021-04-25 10:34:13','姓名3','性别3','手机号码3');
insert  into `jiaoshixinxi`(`id`,`addtime`,`xingming`,`xingbie`,`shoujihaoma`) values (44,'2021-04-25 10:34:13','姓名4','性别4','手机号码4');
insert  into `jiaoshixinxi`(`id`,`addtime`,`xingming`,`xingbie`,`shoujihaoma`) values (45,'2021-04-25 10:34:13','姓名5','性别5','手机号码5');
insert  into `jiaoshixinxi`(`id`,`addtime`,`xingming`,`xingbie`,`shoujihaoma`) values (46,'2021-04-25 10:34:13','姓名6','性别6','手机号码6');
insert  into `jiaoshixinxi`(`id`,`addtime`,`xingming`,`xingbie`,`shoujihaoma`) values (1619318257358,'2021-04-25 10:37:36','阿五','女','12312312323');

/*Table structure for table `kechengzhibiao` */

DROP TABLE IF EXISTS `kechengzhibiao`;

CREATE TABLE `kechengzhibiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmu` varchar(200) DEFAULT NULL COMMENT '项目',
  `pingshenneirong` longtext NOT NULL COMMENT '评审内容',
  `pingshenbiaozhun` longtext NOT NULL COMMENT '评审标准',
  `fenshu` int(11) NOT NULL COMMENT '分数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619318271937 DEFAULT CHARSET=utf8 COMMENT='课程指标';

/*Data for the table `kechengzhibiao` */

insert  into `kechengzhibiao`(`id`,`addtime`,`xiangmu`,`pingshenneirong`,`pingshenbiaozhun`,`fenshu`) values (51,'2021-04-25 10:34:13','项目1','评审内容1','评审标准1',1);
insert  into `kechengzhibiao`(`id`,`addtime`,`xiangmu`,`pingshenneirong`,`pingshenbiaozhun`,`fenshu`) values (52,'2021-04-25 10:34:13','项目2','评审内容2','评审标准2',2);
insert  into `kechengzhibiao`(`id`,`addtime`,`xiangmu`,`pingshenneirong`,`pingshenbiaozhun`,`fenshu`) values (53,'2021-04-25 10:34:13','项目3','评审内容3','评审标准3',3);
insert  into `kechengzhibiao`(`id`,`addtime`,`xiangmu`,`pingshenneirong`,`pingshenbiaozhun`,`fenshu`) values (54,'2021-04-25 10:34:13','项目4','评审内容4','评审标准4',4);
insert  into `kechengzhibiao`(`id`,`addtime`,`xiangmu`,`pingshenneirong`,`pingshenbiaozhun`,`fenshu`) values (55,'2021-04-25 10:34:13','项目5','评审内容5','评审标准5',5);
insert  into `kechengzhibiao`(`id`,`addtime`,`xiangmu`,`pingshenneirong`,`pingshenbiaozhun`,`fenshu`) values (56,'2021-04-25 10:34:13','项目6','评审内容6','评审标准6',6);
insert  into `kechengzhibiao`(`id`,`addtime`,`xiangmu`,`pingshenneirong`,`pingshenbiaozhun`,`fenshu`) values (1619318271936,'2021-04-25 10:37:51','测试','测试','测试',88);

/*Table structure for table `qiyedanwei` */

DROP TABLE IF EXISTS `qiyedanwei`;

CREATE TABLE `qiyedanwei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `xiaoqilianxiren` varchar(200) DEFAULT NULL COMMENT '校企联系人',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619318219705 DEFAULT CHARSET=utf8 COMMENT='企业单位';

/*Data for the table `qiyedanwei` */

insert  into `qiyedanwei`(`id`,`addtime`,`zhanghao`,`mima`,`qiyemingcheng`,`xiaoqilianxiren`,`shoujihaoma`) values (31,'2021-04-25 10:34:13','企业单位1','123456','企业名称1','校企联系人1','13823888881');
insert  into `qiyedanwei`(`id`,`addtime`,`zhanghao`,`mima`,`qiyemingcheng`,`xiaoqilianxiren`,`shoujihaoma`) values (32,'2021-04-25 10:34:13','企业单位2','123456','企业名称2','校企联系人2','13823888882');
insert  into `qiyedanwei`(`id`,`addtime`,`zhanghao`,`mima`,`qiyemingcheng`,`xiaoqilianxiren`,`shoujihaoma`) values (33,'2021-04-25 10:34:13','企业单位3','123456','企业名称3','校企联系人3','13823888883');
insert  into `qiyedanwei`(`id`,`addtime`,`zhanghao`,`mima`,`qiyemingcheng`,`xiaoqilianxiren`,`shoujihaoma`) values (34,'2021-04-25 10:34:13','企业单位4','123456','企业名称4','校企联系人4','13823888884');
insert  into `qiyedanwei`(`id`,`addtime`,`zhanghao`,`mima`,`qiyemingcheng`,`xiaoqilianxiren`,`shoujihaoma`) values (35,'2021-04-25 10:34:13','企业单位5','123456','企业名称5','校企联系人5','13823888885');
insert  into `qiyedanwei`(`id`,`addtime`,`zhanghao`,`mima`,`qiyemingcheng`,`xiaoqilianxiren`,`shoujihaoma`) values (36,'2021-04-25 10:34:13','企业单位6','123456','企业名称6','校企联系人6','13823888886');
insert  into `qiyedanwei`(`id`,`addtime`,`zhanghao`,`mima`,`qiyemingcheng`,`xiaoqilianxiren`,`shoujihaoma`) values (1619318219704,'2021-04-25 10:36:59','2','2','某企业','阿四','12312312323');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','5xrrghs88z88en4e7g7monio5iyjqbq3','2021-04-25 10:37:06','2021-04-25 11:37:06');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1619318219704,'2','qiyedanwei','企业单位','n0vcq690hngb7sv7bvanq53tkv1w4m3u','2021-04-25 10:40:39','2021-04-25 11:40:39');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1619318203781,'1','xuesheng','学生','97go6n8ng4sbygr66vntpppk3su14z9p','2021-04-25 10:41:09','2021-04-25 11:41:10');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-25 10:34:13');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhengzhimianmao` varchar(200) DEFAULT NULL COMMENT '政治面貌',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619318203782 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shoujihaoma`,`shenfenzhenghaoma`,`banji`,`zhengzhimianmao`,`zhaopian`) values (11,'2021-04-25 10:34:13','学生1','123456','姓名1',1,'男','13823888881','440300199101010001','班级1','中共党员','http://localhost:8080/ssmlp542/upload/xuesheng_zhaopian1.jpg');
insert  into `xuesheng`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shoujihaoma`,`shenfenzhenghaoma`,`banji`,`zhengzhimianmao`,`zhaopian`) values (12,'2021-04-25 10:34:13','学生2','123456','姓名2',2,'男','13823888882','440300199202020002','班级2','中共党员','http://localhost:8080/ssmlp542/upload/xuesheng_zhaopian2.jpg');
insert  into `xuesheng`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shoujihaoma`,`shenfenzhenghaoma`,`banji`,`zhengzhimianmao`,`zhaopian`) values (13,'2021-04-25 10:34:13','学生3','123456','姓名3',3,'男','13823888883','440300199303030003','班级3','中共党员','http://localhost:8080/ssmlp542/upload/xuesheng_zhaopian3.jpg');
insert  into `xuesheng`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shoujihaoma`,`shenfenzhenghaoma`,`banji`,`zhengzhimianmao`,`zhaopian`) values (14,'2021-04-25 10:34:13','学生4','123456','姓名4',4,'男','13823888884','440300199404040004','班级4','中共党员','http://localhost:8080/ssmlp542/upload/xuesheng_zhaopian4.jpg');
insert  into `xuesheng`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shoujihaoma`,`shenfenzhenghaoma`,`banji`,`zhengzhimianmao`,`zhaopian`) values (15,'2021-04-25 10:34:13','学生5','123456','姓名5',5,'男','13823888885','440300199505050005','班级5','中共党员','http://localhost:8080/ssmlp542/upload/xuesheng_zhaopian5.jpg');
insert  into `xuesheng`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shoujihaoma`,`shenfenzhenghaoma`,`banji`,`zhengzhimianmao`,`zhaopian`) values (16,'2021-04-25 10:34:13','学生6','123456','姓名6',6,'男','13823888886','440300199606060006','班级6','中共党员','http://localhost:8080/ssmlp542/upload/xuesheng_zhaopian6.jpg');
insert  into `xuesheng`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shoujihaoma`,`shenfenzhenghaoma`,`banji`,`zhengzhimianmao`,`zhaopian`) values (1619318203781,'2021-04-25 10:36:43','1','1','阿三',28,'男','12312312323','441402000000000000','某班级','群众','http://localhost:8080/ssmlp542/upload/1619318479450.png');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
