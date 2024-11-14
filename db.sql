/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xueshengyiqingxinxi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xueshengyiqingxinxi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xueshengyiqingxinxi`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-05-06 14:12:35'),(2,'sex_types','性别',2,'女',NULL,'2021-05-06 14:12:35'),(3,'news_types','公告类型名称',1,'公告类型1',NULL,'2021-05-06 14:12:35'),(4,'news_types','公告类型名称',2,'公告类型2',NULL,'2021-05-06 14:12:35'),(5,'shifou_types','是否不适',1,'是',NULL,'2021-05-06 14:12:35'),(6,'shifou_types','是否不适',2,'否',NULL,'2021-05-06 14:12:35'),(7,'tiwen_types','体温状态',1,'异常',NULL,'2021-05-06 14:12:35'),(8,'tiwen_types','体温状态',2,'正常',NULL,'2021-05-06 14:12:35'),(9,'xuexiao_types','所属学校名称',1,'学校1',NULL,'2021-05-06 14:12:35'),(10,'xuexiao_types','所属学校名称',2,'学校2',NULL,'2021-05-06 14:12:35'),(11,'xuexiao_types','所属学校名称',3,'学校3',NULL,'2021-05-06 14:12:35'),(12,'qingjiajilu_types','审批状态',1,'未审批',NULL,'2021-05-06 14:12:35'),(13,'qingjiajilu_types','审批状态',2,'通过',NULL,'2021-05-06 14:12:35'),(14,'qingjiajilu_types','审批状态',3,'拒绝',NULL,'2021-05-06 14:12:36');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `xuexiao_types` int(11) DEFAULT NULL COMMENT '所属学校 Search111',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`sex_types`,`xuexiao_types`,`jiaoshi_id_number`,`jiaoshi_phone`,`jiaoshi_email`,`jiaoshi_photo`,`create_time`) values (1,'333','123456','教师1',2,1,'410882200011211141','17786655971','1111@qq.com','http://localhost:8080/xueshengyiqingxinxi/file/download?fileName=1620282094051.jpg','2021-05-06 14:21:34'),(2,'444','123456','教师2',1,2,'410882200011211142','17786655972','2222@qq.com','http://localhost:8080/xueshengyiqingxinxi/file/download?fileName=1620282113525.jpg','2021-05-06 14:21:54');

/*Table structure for table `liuyanxinxi` */

DROP TABLE IF EXISTS `liuyanxinxi`;

CREATE TABLE `liuyanxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `note` varchar(255) DEFAULT NULL COMMENT '留言信息',
  `yhnote` varchar(11) DEFAULT NULL COMMENT '留言人',
  `note_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '留言时间 Search',
  `reply` varchar(255) DEFAULT NULL COMMENT '回复',
  `glreply` varchar(11) DEFAULT NULL COMMENT '回复人',
  `reply_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '回复时间 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='留言信息';

/*Data for the table `liuyanxinxi` */

insert  into `liuyanxinxi`(`id`,`note`,`yhnote`,`note_time`,`reply`,`glreply`,`reply_time`) values (4,'1231111','admin','2021-02-03 17:15:28','只有管理员可以回复','admin','2021-02-03 17:15:29'),(6,'123123','小札','2021-02-03 17:27:53','123','admin','2021-05-06 14:36:16'),(7,'11111','111','2021-05-06 17:24:16','3333333333333','333','2021-05-06 17:38:21'),(8,'123123123123','111','2021-05-06 17:38:06','123123','333','2021-05-06 17:38:18');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'公告1',1,'http://localhost:8080/xueshengyiqingxinxi/file/download?fileName=1620282989534.jpg','2021-05-06 14:36:32','公告详情1\r\n','2021-05-06 14:36:32'),(4,'公告2',2,'http://localhost:8080/xueshengyiqingxinxi/file/download?fileName=1620282999788.jpg','2021-05-06 14:36:41','公告详情2\r\n','2021-05-06 14:36:41');

/*Table structure for table `qingjiajilu` */

DROP TABLE IF EXISTS `qingjiajilu`;

CREATE TABLE `qingjiajilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '请假学生',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '请假时间',
  `qingjiajilu_content` text COMMENT '请假原因',
  `qingjiajilu_number` int(200) DEFAULT NULL COMMENT '请假天数',
  `qingjiajilu_types` int(200) DEFAULT NULL COMMENT '审批状态  Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='请假信息';

/*Data for the table `qingjiajilu` */

insert  into `qingjiajilu`(`id`,`yonghu_id`,`insert_time`,`qingjiajilu_content`,`qingjiajilu_number`,`qingjiajilu_types`,`create_time`) values (1,1,'2021-05-06 14:38:50','请假原因1\r\n',2,2,'2021-05-06 14:38:50'),(2,1,'2021-05-06 17:36:45','请假原因1111111\r\n',3,2,'2021-05-06 17:36:45');

/*Table structure for table `tiwenhuibao` */

DROP TABLE IF EXISTS `tiwenhuibao`;

CREATE TABLE `tiwenhuibao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '汇报学生 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '测量时间 ',
  `tiwenhuibao_tiwen` decimal(10,2) DEFAULT NULL COMMENT '体温',
  `shifou_types` int(200) DEFAULT NULL COMMENT '是否不适 Search111',
  `tiwen_types` int(200) DEFAULT NULL COMMENT '体温状态 Search111',
  `tiwenhuibao_content` text COMMENT '详情信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='体温汇报';

/*Data for the table `tiwenhuibao` */

insert  into `tiwenhuibao`(`id`,`yonghu_id`,`insert_time`,`tiwenhuibao_tiwen`,`shifou_types`,`tiwen_types`,`tiwenhuibao_content`,`create_time`) values (4,2,'2021-05-06 17:06:47','33.00',2,1,'详情信息1\r\n','2021-05-06 17:06:47'),(5,2,'2021-05-06 17:06:58','35.00',1,2,'123123\r\n','2021-05-06 17:06:58'),(6,1,'2021-05-06 17:23:52','33.00',2,1,'详情信息1\r\n','2021-05-06 17:23:52'),(7,1,'2021-05-06 17:37:46','36.00',2,2,'221323123\r\n','2021-05-06 17:37:46');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','jmqc90n2w7ou9hkyd174sr8lk4hfzk71','2021-05-06 14:10:10','2021-05-06 18:38:32'),(2,1,'111','yonghu','用户','73ul8qe7nzoq6jv1rmfhfk85fpxggm3h','2021-05-06 17:23:10','2021-05-06 18:37:20'),(3,1,'333','jiaoshi','教师','eeygkn6ivwxm71h76ok8eaaypvbays8m','2021-05-06 17:29:52','2021-05-06 18:38:12');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `xuexiao_types` int(11) DEFAULT NULL COMMENT '所属学校 Search111',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`xuexiao_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_email`,`yonghu_photo`,`create_time`) values (1,'111','123456','学生1',2,1,'410882200011216111','13549944121','1111@qq.com','http://localhost:8080/xueshengyiqingxinxi/file/download?fileName=1620282137689.jpg','2021-05-06 14:22:19'),(2,'222','123456','学生2',1,2,'410882200011216112','13549944682','2222@qq.com','http://localhost:8080/xueshengyiqingxinxi/file/download?fileName=1620282159108.jpg','2021-05-06 14:22:40'),(3,'123','123456','123',2,3,'410882200011216123','13549944123','123123@qq.com','http://localhost:8080/xueshengyiqingxinxi/file/download?fileName=1620293658850.jpg','2021-05-06 17:34:19');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
