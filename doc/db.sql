/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.42-log : Database - auction
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`auction` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `auction`;

/*Table structure for table `class_info` */

DROP TABLE IF EXISTS `class_info`;

CREATE TABLE `class_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) DEFAULT NULL COMMENT '分类名称',
  `father_class` bigint(20) DEFAULT NULL COMMENT '父级分类ID',
  `type` int(11) DEFAULT '1' COMMENT '1=启用；2=停用',
  `status` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='类别信息';

/*Data for the table `class_info` */

insert  into `class_info`(`id`,`class_name`,`father_class`,`type`,`status`,`sort`) values (1,'瓷器',0,1,NULL,1),(2,'翡翠',0,1,NULL,2),(3,'和田玉',0,1,NULL,3),(4,'青铜器',0,1,NULL,4),(5,'杂项',0,1,NULL,5);

/*Table structure for table `goods_info` */

DROP TABLE IF EXISTS `goods_info`;

CREATE TABLE `goods_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short` varchar(300) DEFAULT NULL COMMENT '简介，纯文字',
  `synopsis_html` text COMMENT '介绍，HTML',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `class_id` bigint(20) DEFAULT NULL COMMENT '类别ID',
  `tags` varchar(500) DEFAULT NULL COMMENT '标签',
  `status` int(11) DEFAULT NULL COMMENT '2=首页轮播；4=精品推荐；8=人气推荐',
  `type` int(1) DEFAULT NULL COMMENT '1=发布；2=下架',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='拍品信息';

/*Data for the table `goods_info` */

insert  into `goods_info`(`id`,`create_date`,`name`,`short`,`synopsis_html`,`sort`,`class_id`,`tags`,`status`,`type`) values (1,NULL,'明清粉彩玉壶春瓶','明清粉彩玉壶春瓶明清粉彩玉壶春瓶','明清粉彩玉壶春瓶明清粉彩玉壶春瓶明清粉彩玉壶春瓶',NULL,1,NULL,2,NULL),(2,NULL,'清代乾隆年黄釉双龙戏珠赏瓶一对','清代乾隆年黄釉双龙戏珠赏瓶一对清代乾隆年黄釉双龙戏珠赏瓶一对','清代乾隆年黄釉双龙戏珠赏瓶一对清代乾隆年黄釉双龙戏珠赏瓶一对清代乾隆年黄釉双龙戏珠赏瓶一对',NULL,1,NULL,2,NULL),(3,NULL,'清代乾隆年间粉彩夜光赏瓶','清代乾隆年间粉彩夜光赏瓶清代乾隆年间粉彩夜光赏瓶','清代乾隆年间粉彩夜光赏瓶清代乾隆年间粉彩夜光赏瓶清代乾隆年间粉彩夜光赏瓶清代乾隆年间粉彩夜光赏瓶',NULL,1,NULL,2,NULL),(4,NULL,'清末民国矾红描金留白仙鹤将军罐一','清末民国矾红描金留白仙鹤将军罐一清末民国矾红描金留白仙鹤将军罐一清末民国矾红描金留白仙鹤将军罐一','清末民国矾红描金留白仙鹤将军罐一清末民国矾红描金留白仙鹤将军罐一清末民国矾红描金留白仙鹤将军罐一',NULL,1,NULL,2,NULL),(5,NULL,'清代翡翠葡萄小鸟摆件','清代翡翠葡萄小鸟摆件清代翡翠葡萄小鸟摆件','清代翡翠葡萄小鸟摆件清代翡翠葡萄小鸟摆件清代翡翠葡萄小鸟摆件',NULL,2,NULL,2,NULL),(6,NULL,'清代翡翠鸬鹚荷花摆件','清代翡翠鸬鹚荷花摆件清代翡翠鸬鹚荷花摆件','清代翡翠鸬鹚荷花摆件清代翡翠鸬鹚荷花摆件清代翡翠鸬鹚荷花摆件',NULL,2,NULL,2,NULL),(7,NULL,'清代满绿翡翠弥勒佛挂件','清代满绿翡翠弥勒佛挂件清代满绿翡翠弥勒佛挂件','清代满绿翡翠弥勒佛挂件清代满绿翡翠弥勒佛挂件清代满绿翡翠弥勒佛挂件',NULL,2,NULL,2,NULL),(8,NULL,'清代翡翠持净瓶宝珠观音摆件','清代翡翠持净瓶宝珠观音摆件','清代翡翠持净瓶宝珠观音摆件清代翡翠持净瓶宝珠观音摆件清代翡翠持净瓶宝珠观音摆件',NULL,2,NULL,2,NULL),(9,NULL,'明清新疆和田白玉籽料平安扣','明清新疆和田白玉籽料平安扣','明清新疆和田白玉籽料平安扣',NULL,2,NULL,2,NULL),(10,NULL,'近现代和田白玉籽料武财神关公玉牌','近现代和田白玉籽料武财神关公玉牌','近现代和田白玉籽料武财神关公玉牌',NULL,2,NULL,2,NULL),(11,NULL,'明代新疆和田白玉籽料五福临门玉牌','明代新疆和田白玉籽料五福临门玉牌','明代新疆和田白玉籽料五福临门玉牌',NULL,2,'',2,NULL),(12,NULL,'清代乾隆年和田白玉籽料福寿暗八仙插屏','清代乾隆年和田白玉籽料福寿暗八仙插屏','清代乾隆年和田白玉籽料福寿暗八仙插屏',NULL,2,NULL,2,NULL),(13,NULL,'明代宣德年错金银点金炉','明代宣德年错金银点金炉','明代宣德年错金银点金炉',NULL,3,NULL,2,NULL),(14,NULL,'明朝宣德年风磨铜香炉','明朝宣德年风磨铜香炉','明朝宣德年风磨铜香炉',NULL,3,NULL,2,NULL),(15,NULL,'唐代开元通宝铜范','唐代开元通宝铜范','唐代开元通宝铜范唐代开元通宝铜范唐代开元通宝铜范',NULL,3,NULL,2,NULL),(16,NULL,'明代清闲童子铜镜','明代清闲童子铜镜','明代清闲童子铜镜明代清闲童子铜镜明代清闲童子铜镜',NULL,3,NULL,2,NULL),(17,NULL,'清代南红寿镯','清代南红寿镯清代南红寿镯','清代南红寿镯清代南红寿镯清代南红寿镯',NULL,4,NULL,2,NULL),(18,NULL,'汉代水晶暗八仙贴金碗','汉代水晶暗八仙贴金碗汉代水晶暗八仙贴金碗','汉代水晶暗八仙贴金碗汉代水晶暗八仙贴金碗汉代水晶暗八仙贴金碗',NULL,4,NULL,NULL,NULL),(19,NULL,'西藏帝王黄蜜蜡','西藏帝王黄蜜蜡西藏帝王黄蜜蜡','西藏帝王黄蜜蜡西藏帝王黄蜜蜡西藏帝王黄蜜蜡',NULL,4,NULL,NULL,NULL),(20,NULL,'水晶太阳神','水晶太阳神水晶太阳神','水晶太阳神水晶太阳神水晶太阳神',NULL,4,NULL,NULL,NULL);

/*Table structure for table `goods_info_imgs` */

DROP TABLE IF EXISTS `goods_info_imgs`;

CREATE TABLE `goods_info_imgs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `i_goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `goods_info_imgs` */

insert  into `goods_info_imgs`(`id`,`create_date`,`goods_id`,`url`,`sort`) values (1,NULL,1,'http://upload.cankaoxiaoxi.com/2017/0627/1498566745569.jpg',1),(2,NULL,1,'http://img3.imgtn.bdimg.com/it/u=3415103287,732884150&fm=26&gp=0.jpg',2),(3,NULL,1,'http://img2.imgtn.bdimg.com/it/u=2040821555,2668495927&fm=26&gp=0.jpg',3),(4,NULL,2,'http://upload.cankaoxiaoxi.com/2017/0627/1498520985690.jpg',1),(5,NULL,2,'http://img2.imgtn.bdimg.com/it/u=2040821555,2668495927&fm=26&gp=0.jpg',2),(6,NULL,3,'http://img3.imgtn.bdimg.com/it/u=3415103287,732884150&fm=26&gp=0.jpg',0),(7,NULL,4,'http://img0.imgtn.bdimg.com/it/u=2541364026,2091994960&fm=26&gp=0.jpg',0),(8,NULL,5,'http://img2.imgtn.bdimg.com/it/u=2040821555,2668495927&fm=26&gp=0.jpg',0),(9,NULL,6,'http://img0.imgtn.bdimg.com/it/u=2090951546,2560644368&fm=26&gp=0.jpg',0);

/*Table structure for table `information` */

DROP TABLE IF EXISTS `information`;

CREATE TABLE `information` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `synopsis_html` text,
  `type` int(1) DEFAULT NULL COMMENT '1=发布；2=下架',
  `title_img` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='咨询';

/*Data for the table `information` */

insert  into `information`(`id`,`create_date`,`title`,`synopsis_html`,`type`,`title_img`) values (1,'2017-07-09 11:55:40','咨询1',NULL,1,'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1418995835,3188331073&fm=80&w=179&h=119&img.PNG'),(2,'2017-07-09 19:57:42','资讯2',NULL,1,NULL),(3,'2017-07-09 19:57:47','资讯3',NULL,3,NULL);

/*Table structure for table `tag_info` */

DROP TABLE IF EXISTS `tag_info`;

CREATE TABLE `tag_info` (
  `id` bigint(20) NOT NULL,
  `tag_name` varchar(100) DEFAULT NULL,
  `sort_code` varchar(100) DEFAULT NULL COMMENT '分类',
  `type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签信息';

/*Data for the table `tag_info` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
