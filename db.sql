/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm0v893
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm0v893` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm0v893`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm0v893/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm0v893/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm0v893/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `gongzuoricheng` */

DROP TABLE IF EXISTS `gongzuoricheng`;

CREATE TABLE `gongzuoricheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `richengbianhao` varchar(200) DEFAULT NULL COMMENT '日程编号',
  `gongzuomingcheng` varchar(200) DEFAULT NULL COMMENT '工作名称',
  `gongzuoneirong` longtext COMMENT '工作内容',
  `gongzuodidian` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `gongzuoshijian` date DEFAULT NULL COMMENT '工作时间',
  `daoshuri` int(11) DEFAULT NULL COMMENT '倒数日',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `richengbianhao` (`richengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='工作日程';

/*Data for the table `gongzuoricheng` */

insert  into `gongzuoricheng`(`id`,`addtime`,`richengbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`daoshuri`,`tupian`,`zhanghao`,`xingming`,`userid`) values (31,'2021-05-07 10:35:00','日程编号1','工作名称1','工作内容1','工作地点1','2021-05-07',1,'http://localhost:8080/ssm0v893/upload/gongzuoricheng_tupian1.jpg','账号1','姓名1',1);
insert  into `gongzuoricheng`(`id`,`addtime`,`richengbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`daoshuri`,`tupian`,`zhanghao`,`xingming`,`userid`) values (32,'2021-05-07 10:35:00','日程编号2','工作名称2','工作内容2','工作地点2','2021-05-07',2,'http://localhost:8080/ssm0v893/upload/gongzuoricheng_tupian2.jpg','账号2','姓名2',2);
insert  into `gongzuoricheng`(`id`,`addtime`,`richengbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`daoshuri`,`tupian`,`zhanghao`,`xingming`,`userid`) values (33,'2021-05-07 10:35:00','日程编号3','工作名称3','工作内容3','工作地点3','2021-05-07',3,'http://localhost:8080/ssm0v893/upload/gongzuoricheng_tupian3.jpg','账号3','姓名3',3);
insert  into `gongzuoricheng`(`id`,`addtime`,`richengbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`daoshuri`,`tupian`,`zhanghao`,`xingming`,`userid`) values (34,'2021-05-07 10:35:00','日程编号4','工作名称4','工作内容4','工作地点4','2021-05-07',4,'http://localhost:8080/ssm0v893/upload/gongzuoricheng_tupian4.jpg','账号4','姓名4',4);
insert  into `gongzuoricheng`(`id`,`addtime`,`richengbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`daoshuri`,`tupian`,`zhanghao`,`xingming`,`userid`) values (35,'2021-05-07 10:35:00','日程编号5','工作名称5','工作内容5','工作地点5','2021-05-07',5,'http://localhost:8080/ssm0v893/upload/gongzuoricheng_tupian5.jpg','账号5','姓名5',5);
insert  into `gongzuoricheng`(`id`,`addtime`,`richengbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`daoshuri`,`tupian`,`zhanghao`,`xingming`,`userid`) values (36,'2021-05-07 10:35:00','日程编号6','工作名称6','工作内容6','工作地点6','2021-05-07',6,'http://localhost:8080/ssm0v893/upload/gongzuoricheng_tupian6.jpg','账号6','姓名6',6);

/*Table structure for table `gongzuorichengzhuanfa` */

DROP TABLE IF EXISTS `gongzuorichengzhuanfa`;

CREATE TABLE `gongzuorichengzhuanfa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `richengbianhao` varchar(200) DEFAULT NULL COMMENT '日程编号',
  `gongzuomingcheng` varchar(200) DEFAULT NULL COMMENT '工作名称',
  `gongzuoneirong` longtext COMMENT '工作内容',
  `gongzuodidian` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `gongzuoshijian` date DEFAULT NULL COMMENT '工作时间',
  `daoshuri` int(11) DEFAULT NULL COMMENT '倒数日',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='工作日程转发';

/*Data for the table `gongzuorichengzhuanfa` */

insert  into `gongzuorichengzhuanfa`(`id`,`addtime`,`richengbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`daoshuri`,`tupian`,`zhanghao`,`xingming`,`userid`) values (81,'2021-05-07 10:35:00','日程编号1','工作名称1','工作内容1','工作地点1','2021-05-07',1,'http://localhost:8080/ssm0v893/upload/gongzuorichengzhuanfa_tupian1.jpg','账号1','姓名1',1);
insert  into `gongzuorichengzhuanfa`(`id`,`addtime`,`richengbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`daoshuri`,`tupian`,`zhanghao`,`xingming`,`userid`) values (82,'2021-05-07 10:35:00','日程编号2','工作名称2','工作内容2','工作地点2','2021-05-07',2,'http://localhost:8080/ssm0v893/upload/gongzuorichengzhuanfa_tupian2.jpg','账号2','姓名2',2);
insert  into `gongzuorichengzhuanfa`(`id`,`addtime`,`richengbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`daoshuri`,`tupian`,`zhanghao`,`xingming`,`userid`) values (83,'2021-05-07 10:35:00','日程编号3','工作名称3','工作内容3','工作地点3','2021-05-07',3,'http://localhost:8080/ssm0v893/upload/gongzuorichengzhuanfa_tupian3.jpg','账号3','姓名3',3);
insert  into `gongzuorichengzhuanfa`(`id`,`addtime`,`richengbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`daoshuri`,`tupian`,`zhanghao`,`xingming`,`userid`) values (84,'2021-05-07 10:35:00','日程编号4','工作名称4','工作内容4','工作地点4','2021-05-07',4,'http://localhost:8080/ssm0v893/upload/gongzuorichengzhuanfa_tupian4.jpg','账号4','姓名4',4);
insert  into `gongzuorichengzhuanfa`(`id`,`addtime`,`richengbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`daoshuri`,`tupian`,`zhanghao`,`xingming`,`userid`) values (85,'2021-05-07 10:35:00','日程编号5','工作名称5','工作内容5','工作地点5','2021-05-07',5,'http://localhost:8080/ssm0v893/upload/gongzuorichengzhuanfa_tupian5.jpg','账号5','姓名5',5);
insert  into `gongzuorichengzhuanfa`(`id`,`addtime`,`richengbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`daoshuri`,`tupian`,`zhanghao`,`xingming`,`userid`) values (86,'2021-05-07 10:35:00','日程编号6','工作名称6','工作内容6','工作地点6','2021-05-07',6,'http://localhost:8080/ssm0v893/upload/gongzuorichengzhuanfa_tupian6.jpg','账号6','姓名6',6);

/*Table structure for table `huimian` */

DROP TABLE IF EXISTS `huimian`;

CREATE TABLE `huimian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huimianbianhao` varchar(200) DEFAULT NULL COMMENT '会面编号',
  `gongzuomingcheng` varchar(200) DEFAULT NULL COMMENT '工作名称',
  `gongzuoneirong` longtext COMMENT '工作内容',
  `gongzuodidian` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `gongzuoshijian` date DEFAULT NULL COMMENT '工作时间',
  `huimianshijian` date DEFAULT NULL COMMENT '会面时间',
  `huimiandidian` varchar(200) DEFAULT NULL COMMENT '会面地点',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huimianbianhao` (`huimianbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='会面';

/*Data for the table `huimian` */

insert  into `huimian`(`id`,`addtime`,`huimianbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`huimianshijian`,`huimiandidian`,`tupian`,`zhanghao`,`xingming`) values (41,'2021-05-07 10:35:00','会面编号1','工作名称1','工作内容1','工作地点1','2021-05-07','2021-05-07','会面地点1','http://localhost:8080/ssm0v893/upload/huimian_tupian1.jpg','账号1','姓名1');
insert  into `huimian`(`id`,`addtime`,`huimianbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`huimianshijian`,`huimiandidian`,`tupian`,`zhanghao`,`xingming`) values (42,'2021-05-07 10:35:00','会面编号2','工作名称2','工作内容2','工作地点2','2021-05-07','2021-05-07','会面地点2','http://localhost:8080/ssm0v893/upload/huimian_tupian2.jpg','账号2','姓名2');
insert  into `huimian`(`id`,`addtime`,`huimianbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`huimianshijian`,`huimiandidian`,`tupian`,`zhanghao`,`xingming`) values (43,'2021-05-07 10:35:00','会面编号3','工作名称3','工作内容3','工作地点3','2021-05-07','2021-05-07','会面地点3','http://localhost:8080/ssm0v893/upload/huimian_tupian3.jpg','账号3','姓名3');
insert  into `huimian`(`id`,`addtime`,`huimianbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`huimianshijian`,`huimiandidian`,`tupian`,`zhanghao`,`xingming`) values (44,'2021-05-07 10:35:00','会面编号4','工作名称4','工作内容4','工作地点4','2021-05-07','2021-05-07','会面地点4','http://localhost:8080/ssm0v893/upload/huimian_tupian4.jpg','账号4','姓名4');
insert  into `huimian`(`id`,`addtime`,`huimianbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`huimianshijian`,`huimiandidian`,`tupian`,`zhanghao`,`xingming`) values (45,'2021-05-07 10:35:00','会面编号5','工作名称5','工作内容5','工作地点5','2021-05-07','2021-05-07','会面地点5','http://localhost:8080/ssm0v893/upload/huimian_tupian5.jpg','账号5','姓名5');
insert  into `huimian`(`id`,`addtime`,`huimianbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`huimianshijian`,`huimiandidian`,`tupian`,`zhanghao`,`xingming`) values (46,'2021-05-07 10:35:00','会面编号6','工作名称6','工作内容6','工作地点6','2021-05-07','2021-05-07','会面地点6','http://localhost:8080/ssm0v893/upload/huimian_tupian6.jpg','账号6','姓名6');

/*Table structure for table `richeng` */

DROP TABLE IF EXISTS `richeng`;

CREATE TABLE `richeng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `neirong` longtext COMMENT '内容',
  `didian` varchar(200) DEFAULT NULL COMMENT '地点',
  `shijian` date DEFAULT NULL COMMENT '时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='日程';

/*Data for the table `richeng` */

insert  into `richeng`(`id`,`addtime`,`bianhao`,`mingcheng`,`fenlei`,`neirong`,`didian`,`shijian`,`tupian`,`zhanghao`,`xingming`) values (61,'2021-05-07 10:35:00','编号1','名称1','个人','内容1','地点1','2021-05-07','http://localhost:8080/ssm0v893/upload/richeng_tupian1.jpg','账号1','姓名1');
insert  into `richeng`(`id`,`addtime`,`bianhao`,`mingcheng`,`fenlei`,`neirong`,`didian`,`shijian`,`tupian`,`zhanghao`,`xingming`) values (62,'2021-05-07 10:35:00','编号2','名称2','个人','内容2','地点2','2021-05-07','http://localhost:8080/ssm0v893/upload/richeng_tupian2.jpg','账号2','姓名2');
insert  into `richeng`(`id`,`addtime`,`bianhao`,`mingcheng`,`fenlei`,`neirong`,`didian`,`shijian`,`tupian`,`zhanghao`,`xingming`) values (63,'2021-05-07 10:35:00','编号3','名称3','个人','内容3','地点3','2021-05-07','http://localhost:8080/ssm0v893/upload/richeng_tupian3.jpg','账号3','姓名3');
insert  into `richeng`(`id`,`addtime`,`bianhao`,`mingcheng`,`fenlei`,`neirong`,`didian`,`shijian`,`tupian`,`zhanghao`,`xingming`) values (64,'2021-05-07 10:35:00','编号4','名称4','个人','内容4','地点4','2021-05-07','http://localhost:8080/ssm0v893/upload/richeng_tupian4.jpg','账号4','姓名4');
insert  into `richeng`(`id`,`addtime`,`bianhao`,`mingcheng`,`fenlei`,`neirong`,`didian`,`shijian`,`tupian`,`zhanghao`,`xingming`) values (65,'2021-05-07 10:35:00','编号5','名称5','个人','内容5','地点5','2021-05-07','http://localhost:8080/ssm0v893/upload/richeng_tupian5.jpg','账号5','姓名5');
insert  into `richeng`(`id`,`addtime`,`bianhao`,`mingcheng`,`fenlei`,`neirong`,`didian`,`shijian`,`tupian`,`zhanghao`,`xingming`) values (66,'2021-05-07 10:35:00','编号6','名称6','个人','内容6','地点6','2021-05-07','http://localhost:8080/ssm0v893/upload/richeng_tupian6.jpg','账号6','姓名6');

/*Table structure for table `richengzhuanfa` */

DROP TABLE IF EXISTS `richengzhuanfa`;

CREATE TABLE `richengzhuanfa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `neirong` longtext COMMENT '内容',
  `didian` varchar(200) DEFAULT NULL COMMENT '地点',
  `shijian` date DEFAULT NULL COMMENT '时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='日程转发';

/*Data for the table `richengzhuanfa` */

insert  into `richengzhuanfa`(`id`,`addtime`,`bianhao`,`mingcheng`,`fenlei`,`neirong`,`didian`,`shijian`,`tupian`,`zhanghao`,`xingming`) values (91,'2021-05-07 10:35:00','编号1','名称1','个人','内容1','地点1','2021-05-07','http://localhost:8080/ssm0v893/upload/richengzhuanfa_tupian1.jpg','账号1','姓名1');
insert  into `richengzhuanfa`(`id`,`addtime`,`bianhao`,`mingcheng`,`fenlei`,`neirong`,`didian`,`shijian`,`tupian`,`zhanghao`,`xingming`) values (92,'2021-05-07 10:35:00','编号2','名称2','个人','内容2','地点2','2021-05-07','http://localhost:8080/ssm0v893/upload/richengzhuanfa_tupian2.jpg','账号2','姓名2');
insert  into `richengzhuanfa`(`id`,`addtime`,`bianhao`,`mingcheng`,`fenlei`,`neirong`,`didian`,`shijian`,`tupian`,`zhanghao`,`xingming`) values (93,'2021-05-07 10:35:00','编号3','名称3','个人','内容3','地点3','2021-05-07','http://localhost:8080/ssm0v893/upload/richengzhuanfa_tupian3.jpg','账号3','姓名3');
insert  into `richengzhuanfa`(`id`,`addtime`,`bianhao`,`mingcheng`,`fenlei`,`neirong`,`didian`,`shijian`,`tupian`,`zhanghao`,`xingming`) values (94,'2021-05-07 10:35:00','编号4','名称4','个人','内容4','地点4','2021-05-07','http://localhost:8080/ssm0v893/upload/richengzhuanfa_tupian4.jpg','账号4','姓名4');
insert  into `richengzhuanfa`(`id`,`addtime`,`bianhao`,`mingcheng`,`fenlei`,`neirong`,`didian`,`shijian`,`tupian`,`zhanghao`,`xingming`) values (95,'2021-05-07 10:35:00','编号5','名称5','个人','内容5','地点5','2021-05-07','http://localhost:8080/ssm0v893/upload/richengzhuanfa_tupian5.jpg','账号5','姓名5');
insert  into `richengzhuanfa`(`id`,`addtime`,`bianhao`,`mingcheng`,`fenlei`,`neirong`,`didian`,`shijian`,`tupian`,`zhanghao`,`xingming`) values (96,'2021-05-07 10:35:00','编号6','名称6','个人','内容6','地点6','2021-05-07','http://localhost:8080/ssm0v893/upload/richengzhuanfa_tupian6.jpg','账号6','姓名6');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1620354998040,'1','yonghu','用户','ppzhhp7qoexp8lnasls4ghvykrszq7hc','2021-05-07 10:36:45','2021-05-07 11:36:46');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1,'abo','users','管理员','2ceqdl62jussvtsi391r12c29v55kbld','2021-05-07 10:37:00','2021-05-07 11:37:01');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-07 10:35:00');

/*Table structure for table `yongcan` */

DROP TABLE IF EXISTS `yongcan`;

CREATE TABLE `yongcan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yongcanbianhao` varchar(200) DEFAULT NULL COMMENT '用餐编号',
  `gongzuomingcheng` varchar(200) DEFAULT NULL COMMENT '工作名称',
  `gongzuoneirong` longtext COMMENT '工作内容',
  `gongzuodidian` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `gongzuoshijian` date DEFAULT NULL COMMENT '工作时间',
  `yongcanshijian` date DEFAULT NULL COMMENT '用餐时间',
  `yongcandidian` varchar(200) DEFAULT NULL COMMENT '用餐地点',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yongcanbianhao` (`yongcanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='用餐';

/*Data for the table `yongcan` */

insert  into `yongcan`(`id`,`addtime`,`yongcanbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`yongcanshijian`,`yongcandidian`,`tupian`,`zhanghao`,`xingming`) values (51,'2021-05-07 10:35:00','用餐编号1','工作名称1','工作内容1','工作地点1','2021-05-07','2021-05-07','用餐地点1','http://localhost:8080/ssm0v893/upload/yongcan_tupian1.jpg','账号1','姓名1');
insert  into `yongcan`(`id`,`addtime`,`yongcanbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`yongcanshijian`,`yongcandidian`,`tupian`,`zhanghao`,`xingming`) values (52,'2021-05-07 10:35:00','用餐编号2','工作名称2','工作内容2','工作地点2','2021-05-07','2021-05-07','用餐地点2','http://localhost:8080/ssm0v893/upload/yongcan_tupian2.jpg','账号2','姓名2');
insert  into `yongcan`(`id`,`addtime`,`yongcanbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`yongcanshijian`,`yongcandidian`,`tupian`,`zhanghao`,`xingming`) values (53,'2021-05-07 10:35:00','用餐编号3','工作名称3','工作内容3','工作地点3','2021-05-07','2021-05-07','用餐地点3','http://localhost:8080/ssm0v893/upload/yongcan_tupian3.jpg','账号3','姓名3');
insert  into `yongcan`(`id`,`addtime`,`yongcanbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`yongcanshijian`,`yongcandidian`,`tupian`,`zhanghao`,`xingming`) values (54,'2021-05-07 10:35:00','用餐编号4','工作名称4','工作内容4','工作地点4','2021-05-07','2021-05-07','用餐地点4','http://localhost:8080/ssm0v893/upload/yongcan_tupian4.jpg','账号4','姓名4');
insert  into `yongcan`(`id`,`addtime`,`yongcanbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`yongcanshijian`,`yongcandidian`,`tupian`,`zhanghao`,`xingming`) values (55,'2021-05-07 10:35:00','用餐编号5','工作名称5','工作内容5','工作地点5','2021-05-07','2021-05-07','用餐地点5','http://localhost:8080/ssm0v893/upload/yongcan_tupian5.jpg','账号5','姓名5');
insert  into `yongcan`(`id`,`addtime`,`yongcanbianhao`,`gongzuomingcheng`,`gongzuoneirong`,`gongzuodidian`,`gongzuoshijian`,`yongcanshijian`,`yongcandidian`,`tupian`,`zhanghao`,`xingming`) values (56,'2021-05-07 10:35:00','用餐编号6','工作名称6','工作内容6','工作地点6','2021-05-07','2021-05-07','用餐地点6','http://localhost:8080/ssm0v893/upload/yongcan_tupian6.jpg','账号6','姓名6');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620354998041 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (11,'2021-05-07 10:35:00','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssm0v893/upload/yonghu_zhaopian1.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (12,'2021-05-07 10:35:00','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssm0v893/upload/yonghu_zhaopian2.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (13,'2021-05-07 10:35:00','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssm0v893/upload/yonghu_zhaopian3.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (14,'2021-05-07 10:35:00','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssm0v893/upload/yonghu_zhaopian4.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (15,'2021-05-07 10:35:00','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssm0v893/upload/yonghu_zhaopian5.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (16,'2021-05-07 10:35:00','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssm0v893/upload/yonghu_zhaopian6.jpg');

/*Table structure for table `zhongyaori` */

DROP TABLE IF EXISTS `zhongyaori`;

CREATE TABLE `zhongyaori` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuhao` varchar(200) NOT NULL COMMENT '序号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` longtext COMMENT '内容',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `daoshutian` int(11) DEFAULT NULL COMMENT '倒数天',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuhao` (`xuhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='重要日';

/*Data for the table `zhongyaori` */

insert  into `zhongyaori`(`id`,`addtime`,`xuhao`,`mingcheng`,`leixing`,`neirong`,`riqi`,`daoshutian`,`tupian`,`beizhu`,`zhanghao`,`xingming`,`userid`) values (21,'2021-05-07 10:35:00','序号1','名称1','生日','内容1','2021-05-07',1,'http://localhost:8080/ssm0v893/upload/zhongyaori_tupian1.jpg','备注1','账号1','姓名1',1);
insert  into `zhongyaori`(`id`,`addtime`,`xuhao`,`mingcheng`,`leixing`,`neirong`,`riqi`,`daoshutian`,`tupian`,`beizhu`,`zhanghao`,`xingming`,`userid`) values (22,'2021-05-07 10:35:00','序号2','名称2','生日','内容2','2021-05-07',2,'http://localhost:8080/ssm0v893/upload/zhongyaori_tupian2.jpg','备注2','账号2','姓名2',2);
insert  into `zhongyaori`(`id`,`addtime`,`xuhao`,`mingcheng`,`leixing`,`neirong`,`riqi`,`daoshutian`,`tupian`,`beizhu`,`zhanghao`,`xingming`,`userid`) values (23,'2021-05-07 10:35:00','序号3','名称3','生日','内容3','2021-05-07',3,'http://localhost:8080/ssm0v893/upload/zhongyaori_tupian3.jpg','备注3','账号3','姓名3',3);
insert  into `zhongyaori`(`id`,`addtime`,`xuhao`,`mingcheng`,`leixing`,`neirong`,`riqi`,`daoshutian`,`tupian`,`beizhu`,`zhanghao`,`xingming`,`userid`) values (24,'2021-05-07 10:35:00','序号4','名称4','生日','内容4','2021-05-07',4,'http://localhost:8080/ssm0v893/upload/zhongyaori_tupian4.jpg','备注4','账号4','姓名4',4);
insert  into `zhongyaori`(`id`,`addtime`,`xuhao`,`mingcheng`,`leixing`,`neirong`,`riqi`,`daoshutian`,`tupian`,`beizhu`,`zhanghao`,`xingming`,`userid`) values (25,'2021-05-07 10:35:00','序号5','名称5','生日','内容5','2021-05-07',5,'http://localhost:8080/ssm0v893/upload/zhongyaori_tupian5.jpg','备注5','账号5','姓名5',5);
insert  into `zhongyaori`(`id`,`addtime`,`xuhao`,`mingcheng`,`leixing`,`neirong`,`riqi`,`daoshutian`,`tupian`,`beizhu`,`zhanghao`,`xingming`,`userid`) values (26,'2021-05-07 10:35:00','序号6','名称6','生日','内容6','2021-05-07',6,'http://localhost:8080/ssm0v893/upload/zhongyaori_tupian6.jpg','备注6','账号6','姓名6',6);

/*Table structure for table `zhongyaorizhuanfa` */

DROP TABLE IF EXISTS `zhongyaorizhuanfa`;

CREATE TABLE `zhongyaorizhuanfa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuhao` varchar(200) NOT NULL COMMENT '序号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` longtext COMMENT '内容',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `daoshutian` int(11) DEFAULT NULL COMMENT '倒数天',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='重要日转发';

/*Data for the table `zhongyaorizhuanfa` */

insert  into `zhongyaorizhuanfa`(`id`,`addtime`,`xuhao`,`mingcheng`,`leixing`,`neirong`,`riqi`,`daoshutian`,`tupian`,`beizhu`,`zhanghao`,`xingming`,`userid`) values (71,'2021-05-07 10:35:00','序号1','名称1','生日','内容1','2021-05-07',1,'http://localhost:8080/ssm0v893/upload/zhongyaorizhuanfa_tupian1.jpg','备注1','账号1','姓名1',1);
insert  into `zhongyaorizhuanfa`(`id`,`addtime`,`xuhao`,`mingcheng`,`leixing`,`neirong`,`riqi`,`daoshutian`,`tupian`,`beizhu`,`zhanghao`,`xingming`,`userid`) values (72,'2021-05-07 10:35:00','序号2','名称2','生日','内容2','2021-05-07',2,'http://localhost:8080/ssm0v893/upload/zhongyaorizhuanfa_tupian2.jpg','备注2','账号2','姓名2',2);
insert  into `zhongyaorizhuanfa`(`id`,`addtime`,`xuhao`,`mingcheng`,`leixing`,`neirong`,`riqi`,`daoshutian`,`tupian`,`beizhu`,`zhanghao`,`xingming`,`userid`) values (73,'2021-05-07 10:35:00','序号3','名称3','生日','内容3','2021-05-07',3,'http://localhost:8080/ssm0v893/upload/zhongyaorizhuanfa_tupian3.jpg','备注3','账号3','姓名3',3);
insert  into `zhongyaorizhuanfa`(`id`,`addtime`,`xuhao`,`mingcheng`,`leixing`,`neirong`,`riqi`,`daoshutian`,`tupian`,`beizhu`,`zhanghao`,`xingming`,`userid`) values (74,'2021-05-07 10:35:00','序号4','名称4','生日','内容4','2021-05-07',4,'http://localhost:8080/ssm0v893/upload/zhongyaorizhuanfa_tupian4.jpg','备注4','账号4','姓名4',4);
insert  into `zhongyaorizhuanfa`(`id`,`addtime`,`xuhao`,`mingcheng`,`leixing`,`neirong`,`riqi`,`daoshutian`,`tupian`,`beizhu`,`zhanghao`,`xingming`,`userid`) values (75,'2021-05-07 10:35:00','序号5','名称5','生日','内容5','2021-05-07',5,'http://localhost:8080/ssm0v893/upload/zhongyaorizhuanfa_tupian5.jpg','备注5','账号5','姓名5',5);
insert  into `zhongyaorizhuanfa`(`id`,`addtime`,`xuhao`,`mingcheng`,`leixing`,`neirong`,`riqi`,`daoshutian`,`tupian`,`beizhu`,`zhanghao`,`xingming`,`userid`) values (76,'2021-05-07 10:35:00','序号6','名称6','生日','内容6','2021-05-07',6,'http://localhost:8080/ssm0v893/upload/zhongyaorizhuanfa_tupian6.jpg','备注6','账号6','姓名6',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
