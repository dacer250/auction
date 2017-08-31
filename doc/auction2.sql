/*
Navicat MySQL Data Transfer

Source Server         : 120.24.44.240_auction
Source Server Version : 50542
Source Host           : 120.24.44.240:3306
Source Database       : auction

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2017-08-18 15:27:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for class_goods
-- ----------------------------
DROP TABLE IF EXISTS `class_goods`;
CREATE TABLE `class_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_id` bigint(20) DEFAULT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=451 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_goods
-- ----------------------------
INSERT INTO `class_goods` VALUES ('424', '8', '873');
INSERT INTO `class_goods` VALUES ('426', '7', '874');
INSERT INTO `class_goods` VALUES ('414', '7', '875');
INSERT INTO `class_goods` VALUES ('4', '1', '876');
INSERT INTO `class_goods` VALUES ('5', '1', '877');
INSERT INTO `class_goods` VALUES ('6', '1', '878');
INSERT INTO `class_goods` VALUES ('7', '1', '879');
INSERT INTO `class_goods` VALUES ('8', '1', '880');
INSERT INTO `class_goods` VALUES ('9', '1', '881');
INSERT INTO `class_goods` VALUES ('10', '1', '882');
INSERT INTO `class_goods` VALUES ('11', '1', '883');
INSERT INTO `class_goods` VALUES ('12', '1', '884');
INSERT INTO `class_goods` VALUES ('13', '1', '885');
INSERT INTO `class_goods` VALUES ('14', '1', '886');
INSERT INTO `class_goods` VALUES ('15', '1', '887');
INSERT INTO `class_goods` VALUES ('16', '1', '888');
INSERT INTO `class_goods` VALUES ('17', '1', '889');
INSERT INTO `class_goods` VALUES ('18', '1', '890');
INSERT INTO `class_goods` VALUES ('19', '1', '891');
INSERT INTO `class_goods` VALUES ('20', '1', '892');
INSERT INTO `class_goods` VALUES ('21', '1', '893');
INSERT INTO `class_goods` VALUES ('22', '1', '894');
INSERT INTO `class_goods` VALUES ('23', '1', '895');
INSERT INTO `class_goods` VALUES ('24', '1', '896');
INSERT INTO `class_goods` VALUES ('416', '7', '897');
INSERT INTO `class_goods` VALUES ('26', '1', '898');
INSERT INTO `class_goods` VALUES ('27', '1', '899');
INSERT INTO `class_goods` VALUES ('28', '1', '900');
INSERT INTO `class_goods` VALUES ('418', '9', '901');
INSERT INTO `class_goods` VALUES ('30', '1', '902');
INSERT INTO `class_goods` VALUES ('31', '1', '903');
INSERT INTO `class_goods` VALUES ('32', '1', '904');
INSERT INTO `class_goods` VALUES ('33', '1', '905');
INSERT INTO `class_goods` VALUES ('34', '1', '906');
INSERT INTO `class_goods` VALUES ('35', '1', '907');
INSERT INTO `class_goods` VALUES ('36', '1', '908');
INSERT INTO `class_goods` VALUES ('37', '1', '909');
INSERT INTO `class_goods` VALUES ('38', '1', '910');
INSERT INTO `class_goods` VALUES ('39', '1', '911');
INSERT INTO `class_goods` VALUES ('40', '1', '912');
INSERT INTO `class_goods` VALUES ('41', '1', '913');
INSERT INTO `class_goods` VALUES ('42', '1', '914');
INSERT INTO `class_goods` VALUES ('43', '1', '915');
INSERT INTO `class_goods` VALUES ('44', '1', '916');
INSERT INTO `class_goods` VALUES ('45', '1', '917');
INSERT INTO `class_goods` VALUES ('46', '1', '918');
INSERT INTO `class_goods` VALUES ('47', '1', '919');
INSERT INTO `class_goods` VALUES ('48', '1', '920');
INSERT INTO `class_goods` VALUES ('49', '1', '921');
INSERT INTO `class_goods` VALUES ('50', '1', '922');
INSERT INTO `class_goods` VALUES ('51', '1', '923');
INSERT INTO `class_goods` VALUES ('52', '1', '924');
INSERT INTO `class_goods` VALUES ('53', '1', '925');
INSERT INTO `class_goods` VALUES ('54', '1', '926');
INSERT INTO `class_goods` VALUES ('55', '1', '927');
INSERT INTO `class_goods` VALUES ('56', '1', '928');
INSERT INTO `class_goods` VALUES ('57', '1', '929');
INSERT INTO `class_goods` VALUES ('58', '1', '930');
INSERT INTO `class_goods` VALUES ('59', '1', '931');
INSERT INTO `class_goods` VALUES ('60', '1', '932');
INSERT INTO `class_goods` VALUES ('61', '1', '933');
INSERT INTO `class_goods` VALUES ('62', '1', '934');
INSERT INTO `class_goods` VALUES ('63', '1', '935');
INSERT INTO `class_goods` VALUES ('64', '1', '936');
INSERT INTO `class_goods` VALUES ('65', '1', '937');
INSERT INTO `class_goods` VALUES ('66', '1', '938');
INSERT INTO `class_goods` VALUES ('67', '1', '939');
INSERT INTO `class_goods` VALUES ('68', '1', '940');
INSERT INTO `class_goods` VALUES ('69', '1', '941');
INSERT INTO `class_goods` VALUES ('70', '1', '942');
INSERT INTO `class_goods` VALUES ('71', '1', '943');
INSERT INTO `class_goods` VALUES ('72', '1', '944');
INSERT INTO `class_goods` VALUES ('73', '1', '945');
INSERT INTO `class_goods` VALUES ('74', '1', '946');
INSERT INTO `class_goods` VALUES ('75', '1', '947');
INSERT INTO `class_goods` VALUES ('76', '1', '948');
INSERT INTO `class_goods` VALUES ('77', '1', '949');
INSERT INTO `class_goods` VALUES ('78', '1', '950');
INSERT INTO `class_goods` VALUES ('79', '1', '951');
INSERT INTO `class_goods` VALUES ('80', '1', '952');
INSERT INTO `class_goods` VALUES ('81', '1', '953');
INSERT INTO `class_goods` VALUES ('82', '1', '954');
INSERT INTO `class_goods` VALUES ('83', '1', '955');
INSERT INTO `class_goods` VALUES ('84', '1', '956');
INSERT INTO `class_goods` VALUES ('85', '1', '957');
INSERT INTO `class_goods` VALUES ('86', '1', '958');
INSERT INTO `class_goods` VALUES ('87', '1', '959');
INSERT INTO `class_goods` VALUES ('88', '1', '960');
INSERT INTO `class_goods` VALUES ('89', '1', '961');
INSERT INTO `class_goods` VALUES ('90', '1', '962');
INSERT INTO `class_goods` VALUES ('91', '1', '963');
INSERT INTO `class_goods` VALUES ('92', '1', '964');
INSERT INTO `class_goods` VALUES ('93', '1', '965');
INSERT INTO `class_goods` VALUES ('94', '1', '966');
INSERT INTO `class_goods` VALUES ('95', '1', '967');
INSERT INTO `class_goods` VALUES ('96', '1', '968');
INSERT INTO `class_goods` VALUES ('97', '1', '969');
INSERT INTO `class_goods` VALUES ('98', '1', '970');
INSERT INTO `class_goods` VALUES ('99', '1', '971');
INSERT INTO `class_goods` VALUES ('100', '1', '972');
INSERT INTO `class_goods` VALUES ('101', '1', '973');
INSERT INTO `class_goods` VALUES ('102', '1', '974');
INSERT INTO `class_goods` VALUES ('103', '1', '975');
INSERT INTO `class_goods` VALUES ('104', '1', '976');
INSERT INTO `class_goods` VALUES ('105', '1', '977');
INSERT INTO `class_goods` VALUES ('106', '1', '978');
INSERT INTO `class_goods` VALUES ('107', '1', '979');
INSERT INTO `class_goods` VALUES ('108', '1', '980');
INSERT INTO `class_goods` VALUES ('109', '1', '981');
INSERT INTO `class_goods` VALUES ('110', '1', '982');
INSERT INTO `class_goods` VALUES ('111', '1', '983');
INSERT INTO `class_goods` VALUES ('112', '1', '984');
INSERT INTO `class_goods` VALUES ('113', '1', '985');
INSERT INTO `class_goods` VALUES ('420', '8', '986');
INSERT INTO `class_goods` VALUES ('115', '1', '987');
INSERT INTO `class_goods` VALUES ('116', '1', '988');
INSERT INTO `class_goods` VALUES ('117', '1', '989');
INSERT INTO `class_goods` VALUES ('118', '1', '990');
INSERT INTO `class_goods` VALUES ('119', '1', '991');
INSERT INTO `class_goods` VALUES ('120', '1', '992');
INSERT INTO `class_goods` VALUES ('121', '1', '993');
INSERT INTO `class_goods` VALUES ('122', '1', '994');
INSERT INTO `class_goods` VALUES ('123', '1', '995');
INSERT INTO `class_goods` VALUES ('124', '1', '996');
INSERT INTO `class_goods` VALUES ('125', '1', '997');
INSERT INTO `class_goods` VALUES ('126', '1', '998');
INSERT INTO `class_goods` VALUES ('127', '1', '999');
INSERT INTO `class_goods` VALUES ('128', '1', '1000');
INSERT INTO `class_goods` VALUES ('129', '1', '1001');
INSERT INTO `class_goods` VALUES ('130', '1', '1002');
INSERT INTO `class_goods` VALUES ('131', '1', '1003');
INSERT INTO `class_goods` VALUES ('132', '1', '1004');
INSERT INTO `class_goods` VALUES ('133', '1', '1005');
INSERT INTO `class_goods` VALUES ('134', '1', '1006');
INSERT INTO `class_goods` VALUES ('135', '1', '1007');
INSERT INTO `class_goods` VALUES ('136', '1', '1008');
INSERT INTO `class_goods` VALUES ('137', '1', '1009');
INSERT INTO `class_goods` VALUES ('138', '1', '1010');
INSERT INTO `class_goods` VALUES ('139', '1', '1011');
INSERT INTO `class_goods` VALUES ('140', '1', '1012');
INSERT INTO `class_goods` VALUES ('141', '1', '1013');
INSERT INTO `class_goods` VALUES ('142', '1', '1014');
INSERT INTO `class_goods` VALUES ('143', '1', '1015');
INSERT INTO `class_goods` VALUES ('144', '1', '1016');
INSERT INTO `class_goods` VALUES ('145', '1', '1017');
INSERT INTO `class_goods` VALUES ('146', '1', '1018');
INSERT INTO `class_goods` VALUES ('147', '1', '1019');
INSERT INTO `class_goods` VALUES ('430', '8', '1020');
INSERT INTO `class_goods` VALUES ('432', '7', '1021');
INSERT INTO `class_goods` VALUES ('150', '1', '1022');
INSERT INTO `class_goods` VALUES ('151', '1', '1023');
INSERT INTO `class_goods` VALUES ('152', '1', '1024');
INSERT INTO `class_goods` VALUES ('153', '1', '1025');
INSERT INTO `class_goods` VALUES ('154', '1', '1026');
INSERT INTO `class_goods` VALUES ('155', '1', '1027');
INSERT INTO `class_goods` VALUES ('156', '1', '1028');
INSERT INTO `class_goods` VALUES ('157', '1', '1029');
INSERT INTO `class_goods` VALUES ('158', '1', '1030');
INSERT INTO `class_goods` VALUES ('159', '1', '1031');
INSERT INTO `class_goods` VALUES ('160', '1', '1032');
INSERT INTO `class_goods` VALUES ('161', '1', '1033');
INSERT INTO `class_goods` VALUES ('162', '1', '1034');
INSERT INTO `class_goods` VALUES ('163', '1', '1035');
INSERT INTO `class_goods` VALUES ('164', '1', '1036');
INSERT INTO `class_goods` VALUES ('165', '1', '1037');
INSERT INTO `class_goods` VALUES ('166', '1', '1038');
INSERT INTO `class_goods` VALUES ('167', '1', '1039');
INSERT INTO `class_goods` VALUES ('168', '1', '1040');
INSERT INTO `class_goods` VALUES ('169', '1', '1041');
INSERT INTO `class_goods` VALUES ('170', '1', '1042');
INSERT INTO `class_goods` VALUES ('171', '1', '1043');
INSERT INTO `class_goods` VALUES ('172', '1', '1044');
INSERT INTO `class_goods` VALUES ('173', '1', '1045');
INSERT INTO `class_goods` VALUES ('174', '1', '1046');
INSERT INTO `class_goods` VALUES ('175', '1', '1047');
INSERT INTO `class_goods` VALUES ('176', '1', '1048');
INSERT INTO `class_goods` VALUES ('177', '1', '1049');
INSERT INTO `class_goods` VALUES ('178', '1', '1050');
INSERT INTO `class_goods` VALUES ('179', '1', '1051');
INSERT INTO `class_goods` VALUES ('180', '1', '1052');
INSERT INTO `class_goods` VALUES ('181', '1', '1053');
INSERT INTO `class_goods` VALUES ('182', '1', '1054');
INSERT INTO `class_goods` VALUES ('183', '1', '1055');
INSERT INTO `class_goods` VALUES ('184', '1', '1056');
INSERT INTO `class_goods` VALUES ('185', '1', '1057');
INSERT INTO `class_goods` VALUES ('422', '8', '1058');
INSERT INTO `class_goods` VALUES ('187', '1', '1059');
INSERT INTO `class_goods` VALUES ('188', '1', '1060');
INSERT INTO `class_goods` VALUES ('189', '1', '1061');
INSERT INTO `class_goods` VALUES ('190', '1', '1062');
INSERT INTO `class_goods` VALUES ('191', '1', '1063');
INSERT INTO `class_goods` VALUES ('192', '1', '1064');
INSERT INTO `class_goods` VALUES ('193', '1', '1065');
INSERT INTO `class_goods` VALUES ('194', '1', '1066');
INSERT INTO `class_goods` VALUES ('195', '1', '1067');
INSERT INTO `class_goods` VALUES ('196', '1', '1068');
INSERT INTO `class_goods` VALUES ('197', '1', '1069');
INSERT INTO `class_goods` VALUES ('198', '1', '1070');
INSERT INTO `class_goods` VALUES ('199', '1', '1071');
INSERT INTO `class_goods` VALUES ('200', '1', '1072');
INSERT INTO `class_goods` VALUES ('201', '1', '1073');
INSERT INTO `class_goods` VALUES ('202', '1', '1074');
INSERT INTO `class_goods` VALUES ('203', '1', '1075');
INSERT INTO `class_goods` VALUES ('204', '1', '1076');
INSERT INTO `class_goods` VALUES ('205', '1', '1077');
INSERT INTO `class_goods` VALUES ('206', '1', '1078');
INSERT INTO `class_goods` VALUES ('207', '6', '1048');
INSERT INTO `class_goods` VALUES ('208', '6', '1071');
INSERT INTO `class_goods` VALUES ('425', '1', '874');
INSERT INTO `class_goods` VALUES ('413', '1', '875');
INSERT INTO `class_goods` VALUES ('211', '7', '877');
INSERT INTO `class_goods` VALUES ('212', '7', '886');
INSERT INTO `class_goods` VALUES ('213', '7', '887');
INSERT INTO `class_goods` VALUES ('214', '7', '894');
INSERT INTO `class_goods` VALUES ('215', '7', '895');
INSERT INTO `class_goods` VALUES ('415', '1', '897');
INSERT INTO `class_goods` VALUES ('217', '7', '902');
INSERT INTO `class_goods` VALUES ('218', '7', '904');
INSERT INTO `class_goods` VALUES ('219', '7', '905');
INSERT INTO `class_goods` VALUES ('220', '7', '906');
INSERT INTO `class_goods` VALUES ('221', '7', '907');
INSERT INTO `class_goods` VALUES ('222', '7', '909');
INSERT INTO `class_goods` VALUES ('223', '7', '913');
INSERT INTO `class_goods` VALUES ('224', '7', '916');
INSERT INTO `class_goods` VALUES ('225', '7', '917');
INSERT INTO `class_goods` VALUES ('226', '7', '918');
INSERT INTO `class_goods` VALUES ('227', '7', '920');
INSERT INTO `class_goods` VALUES ('228', '7', '928');
INSERT INTO `class_goods` VALUES ('229', '7', '929');
INSERT INTO `class_goods` VALUES ('230', '7', '931');
INSERT INTO `class_goods` VALUES ('231', '7', '937');
INSERT INTO `class_goods` VALUES ('232', '7', '939');
INSERT INTO `class_goods` VALUES ('233', '7', '940');
INSERT INTO `class_goods` VALUES ('234', '7', '941');
INSERT INTO `class_goods` VALUES ('235', '7', '942');
INSERT INTO `class_goods` VALUES ('236', '7', '943');
INSERT INTO `class_goods` VALUES ('237', '7', '944');
INSERT INTO `class_goods` VALUES ('238', '7', '945');
INSERT INTO `class_goods` VALUES ('239', '7', '946');
INSERT INTO `class_goods` VALUES ('240', '7', '947');
INSERT INTO `class_goods` VALUES ('241', '7', '950');
INSERT INTO `class_goods` VALUES ('242', '7', '952');
INSERT INTO `class_goods` VALUES ('243', '7', '953');
INSERT INTO `class_goods` VALUES ('244', '7', '954');
INSERT INTO `class_goods` VALUES ('245', '7', '959');
INSERT INTO `class_goods` VALUES ('246', '7', '965');
INSERT INTO `class_goods` VALUES ('247', '7', '966');
INSERT INTO `class_goods` VALUES ('248', '7', '967');
INSERT INTO `class_goods` VALUES ('249', '7', '968');
INSERT INTO `class_goods` VALUES ('250', '7', '976');
INSERT INTO `class_goods` VALUES ('251', '7', '977');
INSERT INTO `class_goods` VALUES ('252', '7', '995');
INSERT INTO `class_goods` VALUES ('253', '7', '1015');
INSERT INTO `class_goods` VALUES ('254', '7', '1016');
INSERT INTO `class_goods` VALUES ('255', '7', '1017');
INSERT INTO `class_goods` VALUES ('256', '7', '1019');
INSERT INTO `class_goods` VALUES ('431', '1', '1021');
INSERT INTO `class_goods` VALUES ('258', '7', '1023');
INSERT INTO `class_goods` VALUES ('259', '7', '1025');
INSERT INTO `class_goods` VALUES ('260', '7', '1027');
INSERT INTO `class_goods` VALUES ('261', '7', '1031');
INSERT INTO `class_goods` VALUES ('262', '7', '1032');
INSERT INTO `class_goods` VALUES ('263', '7', '1033');
INSERT INTO `class_goods` VALUES ('264', '7', '1037');
INSERT INTO `class_goods` VALUES ('265', '7', '1038');
INSERT INTO `class_goods` VALUES ('266', '7', '1040');
INSERT INTO `class_goods` VALUES ('267', '7', '1041');
INSERT INTO `class_goods` VALUES ('268', '7', '1043');
INSERT INTO `class_goods` VALUES ('269', '7', '1044');
INSERT INTO `class_goods` VALUES ('270', '7', '1046');
INSERT INTO `class_goods` VALUES ('271', '7', '1051');
INSERT INTO `class_goods` VALUES ('272', '7', '1053');
INSERT INTO `class_goods` VALUES ('273', '7', '1056');
INSERT INTO `class_goods` VALUES ('274', '7', '1059');
INSERT INTO `class_goods` VALUES ('275', '7', '1063');
INSERT INTO `class_goods` VALUES ('276', '7', '1067');
INSERT INTO `class_goods` VALUES ('277', '7', '1072');
INSERT INTO `class_goods` VALUES ('278', '7', '1073');
INSERT INTO `class_goods` VALUES ('279', '7', '1074');
INSERT INTO `class_goods` VALUES ('280', '7', '1075');
INSERT INTO `class_goods` VALUES ('281', '7', '1077');
INSERT INTO `class_goods` VALUES ('423', '1', '873');
INSERT INTO `class_goods` VALUES ('283', '8', '876');
INSERT INTO `class_goods` VALUES ('284', '8', '878');
INSERT INTO `class_goods` VALUES ('285', '8', '879');
INSERT INTO `class_goods` VALUES ('286', '8', '880');
INSERT INTO `class_goods` VALUES ('287', '8', '881');
INSERT INTO `class_goods` VALUES ('288', '8', '882');
INSERT INTO `class_goods` VALUES ('289', '8', '883');
INSERT INTO `class_goods` VALUES ('290', '8', '884');
INSERT INTO `class_goods` VALUES ('291', '8', '885');
INSERT INTO `class_goods` VALUES ('292', '8', '888');
INSERT INTO `class_goods` VALUES ('293', '8', '889');
INSERT INTO `class_goods` VALUES ('294', '8', '890');
INSERT INTO `class_goods` VALUES ('295', '8', '891');
INSERT INTO `class_goods` VALUES ('296', '8', '892');
INSERT INTO `class_goods` VALUES ('297', '8', '896');
INSERT INTO `class_goods` VALUES ('298', '8', '898');
INSERT INTO `class_goods` VALUES ('299', '8', '899');
INSERT INTO `class_goods` VALUES ('300', '8', '900');
INSERT INTO `class_goods` VALUES ('301', '8', '903');
INSERT INTO `class_goods` VALUES ('302', '8', '910');
INSERT INTO `class_goods` VALUES ('303', '8', '911');
INSERT INTO `class_goods` VALUES ('304', '8', '912');
INSERT INTO `class_goods` VALUES ('305', '8', '914');
INSERT INTO `class_goods` VALUES ('306', '8', '915');
INSERT INTO `class_goods` VALUES ('307', '8', '919');
INSERT INTO `class_goods` VALUES ('308', '8', '921');
INSERT INTO `class_goods` VALUES ('309', '8', '922');
INSERT INTO `class_goods` VALUES ('310', '8', '925');
INSERT INTO `class_goods` VALUES ('311', '8', '927');
INSERT INTO `class_goods` VALUES ('312', '8', '930');
INSERT INTO `class_goods` VALUES ('313', '8', '932');
INSERT INTO `class_goods` VALUES ('314', '8', '933');
INSERT INTO `class_goods` VALUES ('315', '8', '934');
INSERT INTO `class_goods` VALUES ('316', '8', '935');
INSERT INTO `class_goods` VALUES ('317', '8', '936');
INSERT INTO `class_goods` VALUES ('318', '8', '938');
INSERT INTO `class_goods` VALUES ('319', '8', '955');
INSERT INTO `class_goods` VALUES ('320', '8', '956');
INSERT INTO `class_goods` VALUES ('321', '8', '957');
INSERT INTO `class_goods` VALUES ('322', '8', '958');
INSERT INTO `class_goods` VALUES ('323', '8', '960');
INSERT INTO `class_goods` VALUES ('324', '8', '961');
INSERT INTO `class_goods` VALUES ('325', '8', '962');
INSERT INTO `class_goods` VALUES ('326', '8', '963');
INSERT INTO `class_goods` VALUES ('327', '8', '964');
INSERT INTO `class_goods` VALUES ('328', '8', '969');
INSERT INTO `class_goods` VALUES ('329', '8', '970');
INSERT INTO `class_goods` VALUES ('330', '8', '971');
INSERT INTO `class_goods` VALUES ('331', '8', '972');
INSERT INTO `class_goods` VALUES ('332', '8', '973');
INSERT INTO `class_goods` VALUES ('333', '8', '974');
INSERT INTO `class_goods` VALUES ('334', '8', '975');
INSERT INTO `class_goods` VALUES ('335', '8', '980');
INSERT INTO `class_goods` VALUES ('336', '8', '981');
INSERT INTO `class_goods` VALUES ('337', '8', '982');
INSERT INTO `class_goods` VALUES ('338', '8', '983');
INSERT INTO `class_goods` VALUES ('339', '8', '984');
INSERT INTO `class_goods` VALUES ('340', '8', '985');
INSERT INTO `class_goods` VALUES ('419', '1', '986');
INSERT INTO `class_goods` VALUES ('342', '8', '987');
INSERT INTO `class_goods` VALUES ('343', '8', '988');
INSERT INTO `class_goods` VALUES ('344', '8', '989');
INSERT INTO `class_goods` VALUES ('345', '8', '990');
INSERT INTO `class_goods` VALUES ('346', '8', '991');
INSERT INTO `class_goods` VALUES ('347', '8', '992');
INSERT INTO `class_goods` VALUES ('348', '8', '993');
INSERT INTO `class_goods` VALUES ('349', '8', '994');
INSERT INTO `class_goods` VALUES ('350', '8', '996');
INSERT INTO `class_goods` VALUES ('351', '8', '997');
INSERT INTO `class_goods` VALUES ('352', '8', '998');
INSERT INTO `class_goods` VALUES ('353', '8', '999');
INSERT INTO `class_goods` VALUES ('354', '8', '1000');
INSERT INTO `class_goods` VALUES ('355', '8', '1001');
INSERT INTO `class_goods` VALUES ('356', '8', '1002');
INSERT INTO `class_goods` VALUES ('357', '8', '1003');
INSERT INTO `class_goods` VALUES ('358', '8', '1004');
INSERT INTO `class_goods` VALUES ('359', '8', '1005');
INSERT INTO `class_goods` VALUES ('360', '8', '1006');
INSERT INTO `class_goods` VALUES ('361', '8', '1007');
INSERT INTO `class_goods` VALUES ('362', '8', '1008');
INSERT INTO `class_goods` VALUES ('363', '8', '1009');
INSERT INTO `class_goods` VALUES ('364', '8', '1010');
INSERT INTO `class_goods` VALUES ('365', '8', '1011');
INSERT INTO `class_goods` VALUES ('366', '8', '1012');
INSERT INTO `class_goods` VALUES ('367', '8', '1013');
INSERT INTO `class_goods` VALUES ('368', '8', '1014');
INSERT INTO `class_goods` VALUES ('369', '8', '1018');
INSERT INTO `class_goods` VALUES ('429', '1', '1020');
INSERT INTO `class_goods` VALUES ('371', '8', '1024');
INSERT INTO `class_goods` VALUES ('372', '8', '1026');
INSERT INTO `class_goods` VALUES ('373', '8', '1028');
INSERT INTO `class_goods` VALUES ('374', '8', '1029');
INSERT INTO `class_goods` VALUES ('375', '8', '1030');
INSERT INTO `class_goods` VALUES ('376', '8', '1034');
INSERT INTO `class_goods` VALUES ('377', '8', '1035');
INSERT INTO `class_goods` VALUES ('378', '8', '1036');
INSERT INTO `class_goods` VALUES ('379', '8', '1039');
INSERT INTO `class_goods` VALUES ('380', '8', '1042');
INSERT INTO `class_goods` VALUES ('381', '8', '1045');
INSERT INTO `class_goods` VALUES ('382', '8', '1049');
INSERT INTO `class_goods` VALUES ('383', '8', '1050');
INSERT INTO `class_goods` VALUES ('384', '8', '1052');
INSERT INTO `class_goods` VALUES ('385', '8', '1054');
INSERT INTO `class_goods` VALUES ('421', '1', '1058');
INSERT INTO `class_goods` VALUES ('387', '8', '1060');
INSERT INTO `class_goods` VALUES ('388', '8', '1061');
INSERT INTO `class_goods` VALUES ('389', '8', '1062');
INSERT INTO `class_goods` VALUES ('390', '8', '1064');
INSERT INTO `class_goods` VALUES ('391', '8', '1066');
INSERT INTO `class_goods` VALUES ('392', '8', '1068');
INSERT INTO `class_goods` VALUES ('393', '8', '1069');
INSERT INTO `class_goods` VALUES ('394', '8', '1070');
INSERT INTO `class_goods` VALUES ('395', '8', '1076');
INSERT INTO `class_goods` VALUES ('396', '8', '1078');
INSERT INTO `class_goods` VALUES ('397', '9', '891');
INSERT INTO `class_goods` VALUES ('417', '1', '901');
INSERT INTO `class_goods` VALUES ('399', '9', '923');
INSERT INTO `class_goods` VALUES ('400', '9', '924');
INSERT INTO `class_goods` VALUES ('401', '9', '948');
INSERT INTO `class_goods` VALUES ('402', '9', '949');
INSERT INTO `class_goods` VALUES ('403', '9', '951');
INSERT INTO `class_goods` VALUES ('404', '9', '978');
INSERT INTO `class_goods` VALUES ('405', '9', '979');
INSERT INTO `class_goods` VALUES ('406', '9', '1022');
INSERT INTO `class_goods` VALUES ('407', '9', '1051');
INSERT INTO `class_goods` VALUES ('408', '9', '1065');
INSERT INTO `class_goods` VALUES ('433', '3', '1079');
INSERT INTO `class_goods` VALUES ('434', '3', '1080');
INSERT INTO `class_goods` VALUES ('435', '3', '1081');
INSERT INTO `class_goods` VALUES ('436', '3', '1082');
INSERT INTO `class_goods` VALUES ('437', '3', '1083');
INSERT INTO `class_goods` VALUES ('438', '3', '1084');
INSERT INTO `class_goods` VALUES ('439', '3', '1085');
INSERT INTO `class_goods` VALUES ('440', '3', '1086');
INSERT INTO `class_goods` VALUES ('441', '3', '1087');
INSERT INTO `class_goods` VALUES ('442', '8', '1079');
INSERT INTO `class_goods` VALUES ('443', '8', '1080');
INSERT INTO `class_goods` VALUES ('444', '8', '1081');
INSERT INTO `class_goods` VALUES ('445', '8', '1082');
INSERT INTO `class_goods` VALUES ('446', '8', '1084');
INSERT INTO `class_goods` VALUES ('447', '8', '1085');
INSERT INTO `class_goods` VALUES ('448', '8', '1086');
INSERT INTO `class_goods` VALUES ('449', '8', '1087');
INSERT INTO `class_goods` VALUES ('450', '10', '1083');

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) DEFAULT NULL COMMENT '分类名称',
  `father_class` bigint(20) DEFAULT NULL COMMENT '父级分类ID',
  `type` int(11) DEFAULT '1' COMMENT '1=启用；2=停用',
  `status` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='类别信息';

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES ('1', '瓷器', '0', '1', '0', '10');
INSERT INTO `class_info` VALUES ('2', '玉器', '0', '1', '0', '9');
INSERT INTO `class_info` VALUES ('3', '翡翠', '0', '1', '0', '8');
INSERT INTO `class_info` VALUES ('4', '铜器', '0', '1', '0', '7');
INSERT INTO `class_info` VALUES ('5', '杂项', '0', '1', '0', '6');
INSERT INTO `class_info` VALUES ('6', '元代', '0', '1', '0', '5');
INSERT INTO `class_info` VALUES ('7', '明代', '0', '1', '0', '4');
INSERT INTO `class_info` VALUES ('8', '清代', '0', '1', '0', '3');
INSERT INTO `class_info` VALUES ('9', '民国', '0', '1', '0', '2');
INSERT INTO `class_info` VALUES ('10', '现代', '0', '1', '0', '1');

-- ----------------------------
-- Table structure for goods_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_info`;
CREATE TABLE `goods_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short` varchar(300) DEFAULT NULL COMMENT '简介，纯文字',
  `synopsis_html` text COMMENT '介绍，HTML',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `class_id` bigint(20) DEFAULT NULL COMMENT '类别ID',
  `tags` varchar(500) DEFAULT NULL COMMENT '标签',
  `status` int(11) DEFAULT '0' COMMENT '2=首页轮播；4=精品推荐；8=人气推荐',
  `type` int(1) DEFAULT '1' COMMENT '1=发布；2=下架',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1088 DEFAULT CHARSET=utf8 COMMENT='拍品信息';

-- ----------------------------
-- Records of goods_info
-- ----------------------------
INSERT INTO `goods_info` VALUES ('873', null, '清代青花缠枝莲纹双喜杯*6', '6.7cm*3.8cm*6个,青花瓷器,清代,无底价', '<p>编号：03--99</p><p>尺寸：6.7cm*3.8cm*6个</p><p>材质：青花瓷器</p><p>年号： 清代</p><p>价格： 无底价</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('874', null, '明代青花三仙图文杯*5', '7.1cm*4.0cm*5个,青花瓷器,明代,无底价', '<p>编号：03-98/76</p><p>尺寸：7.1cm*4.0cm*5个</p><p>材质：青花瓷器</p><p>年号： 明代</p><p>价格： 无底价</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('875', null, '明代青花竹纹君子杯*2', '7.7cm*4.5cm*2个,青花瓷器,明代,无底价', '<p>编号：03-97</p><p>尺寸：7.7cm*4.5cm*2个</p><p>材质：青花瓷器</p><p>年号： 明代</p><p>价格： 无底价</p>', '0', null, null, '14', '1');
INSERT INTO `goods_info` VALUES ('876', null, '清代青花菊瓣水草纹杯*4', '7.0cm*4.7cm*4个,青花瓷器,清代,2000-4000', '<p>\n    编号：03-95/142\n</p>\n<p>\n    尺寸：7.0cm*4.7cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 2000-4000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('877', null, '明代青花赛马图*4', '7.6cm*4.5cm*4个,青花瓷器,明代,无底价', '<p>\n    编号：03-93\n</p>\n<p>\n    尺寸：7.6cm*4.5cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('878', null, '清代青花草龙纹杯*4', '8.0cm*4.7cm*4个,青花瓷器,清代,无底价', '<p>\n    编号：03-92\n</p>\n<p>\n    尺寸：8.0cm*4.7cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('879', null, '清代朱砂釉赏瓶', '25.5cm*13cm*1个,朱砂釉瓷器,大清康熙年制,9000-1.2w', '<p>\n    编号：03--9-1\n</p>\n<p>\n    尺寸：25.5cm*13cm*1个\n</p>\n<p>\n    材质：朱砂釉瓷器\n</p>\n<p>\n    年号： 大清康熙年制\n</p>\n<p>\n    价格： 9000-1.2w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('880', null, '清代青花四棱开光花卉杯*4', '6.2cm*3.2cm*4个,青花瓷器,清代,3000-7000', '<p>\n    编号：03-91\n</p>\n<p>\n    尺寸：6.2cm*3.2cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 3000-7000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('881', null, '清代青花寿字杯*6', '8cm*4.5cm*6个,青花瓷器,清代,无底价', '<p>\n    编号：03--90\n</p>\n<p>\n    尺寸：8cm*4.5cm*6个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('882', null, '清代薄胎青花八棱八宝纹杯*2', '7.1cm*5.0cm*2个,薄胎青花瓷器,清代玩玉款,3w-5w', '<p>\n    编号：03-89\n</p>\n<p>\n    尺寸：7.1cm*5.0cm*2个\n</p>\n<p>\n    材质：薄胎青花瓷器\n</p>\n<p>\n    年号： 清代玩玉款\n</p>\n<p>\n    价格： 3w-5w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('883', null, '清代五彩蝈蝈菊瓣形杯*2', '6.8cm*3.5cn*2个,薄胎五彩瓷器,大清道光年制,3w-5w', '<p>\n    编号：03--88\n</p>\n<p>\n    尺寸：6.8cm*3.5cn*2个\n</p>\n<p>\n    材质：薄胎五彩瓷器\n</p>\n<p>\n    年号： 大清道光年制\n</p>\n<p>\n    价格： 3w-5w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('884', null, '清代青花童子斗鸡图*4', '7.2cm*4.7cm*4个,青花瓷器,清代,2000-4000', '<p>\n    编号：03-87\n</p>\n<p>\n    尺寸：7.2cm*4.7cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 2000-4000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('885', null, '清代青花开光菊花杯*4', '7.5cm*4.7cm*4个,青花瓷器,清代,无底价', '<p>\n    编号：03-85\n</p>\n<p>\n    尺寸：7.5cm*4.7cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('886', null, '明代青花一笔点画竹纹杯*2', '7.9cm*4.8cm*2个,青花瓷器,明代,无底价', '<p>\n    编号：03--84\n</p>\n<p>\n    尺寸：7.9cm*4.8cm*2个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('887', null, '明代青花弥勒佛文字杯*2', '8.2cm*4.8cm*2个,青花瓷器,明代,无底价', '<p>\n    编号：03-83\n</p>\n<p>\n    尺寸：8.2cm*4.8cm*2个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('888', null, '清代青花鹤鹿同春图*4', '8.2cm*4.8cm*4个,青花瓷器,清代,无底价', '<p>\n    编号：03-81\n</p>\n<p>\n    尺寸：8.2cm*4.8cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('889', null, '清代哥窑缸', '32cm*20cm*1个,哥窑瓷器,清代,8000-1.2w', '<p>\n    编号：03--8\n</p>\n<p>\n    尺寸：32cm*20cm*1个\n</p>\n<p>\n    材质：哥窑瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 8000-1.2w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('890', null, '清代祭蓝釉小笔洗', '7.2cm*2.4cm*1个,祭蓝釉瓷器,清代,2000-3000', '<p>\n    编号：03--78\n</p>\n<p>\n    尺寸：7.2cm*2.4cm*1个\n</p>\n<p>\n    材质：祭蓝釉瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 2000-3000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('891', null, '清末民初珠山八友多彩镇纸', '5.1cm*20.7cm*1个,多彩瓷器,清末民初,8w-12w', '<p>\n    编号：03--70\n</p>\n<p>\n    尺寸：5.1cm*20.7cm*1个\n</p>\n<p>\n    材质：多彩瓷器\n</p>\n<p>\n    年号： 清末民初\n</p>\n<p>\n    价格： 8w-12w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('892', null, '清代哥窑盘', '29cm*6cm*1个,哥窑瓷器,清代,4000-6000', '<p>\n    编号：03--7\n</p>\n<p>\n    尺寸：29cm*6cm*1个\n</p>\n<p>\n    材质：哥窑瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 4000-6000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('893', null, '清代同治年矿物彩笔筒', '7.5cm*11.6cm*1个,矿物彩瓷器,同治年制,5000-7000', '<p>\n    编号：03--69\n</p>\n<p>\n    尺寸：7.5cm*11.6cm*1个\n</p>\n<p>\n    材质：矿物彩瓷器\n</p>\n<p>\n    年号： 同治年制\n</p>\n<p>\n    价格： 5000-7000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('894', null, '明代青花釉里红小盘', '8.2cm*1.5cm*1个,青花瓷器,明代,1000-2000', '<p>\n    编号：03--68\n</p>\n<p>\n    尺寸：8.2cm*1.5cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 1000-2000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('895', null, '明代青花一笔点画芦苇纹杯*2', '10.5cm*6.3cm*2个,青花瓷器,明代,无底价', '<p>\n    编号：03-67\n</p>\n<p>\n    尺寸：10.5cm*6.3cm*2个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('896', null, '清代粉彩花卉杯*1', '10.0cm*5.8cm*1个,粉彩瓷器,清代,无底价', '<p>\n    编号：03--65\n</p>\n<p>\n    尺寸：10.0cm*5.8cm*1个\n</p>\n<p>\n    材质：粉彩瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('897', null, '明代青花釉里红百荷杯*2', '7.8cm*4.5cm*2个,青花瓷器,明代,2000-3000', '<p>编号：03-63</p><p>尺寸：7.8cm*4.5cm*2个</p><p>材质：青花瓷器</p><p>年号： 明代</p><p>价格： 2000-3000</p>', '0', null, null, '14', '1');
INSERT INTO `goods_info` VALUES ('898', null, '清代青花花卉双喜杯*3', '7.0cm*4.5cm*3个,青花瓷器,清代,无底价', '<p>\n    编号：03--62/77\n</p>\n<p>\n    尺寸：7.0cm*4.5cm*3个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('899', null, '清代青花花卉盆', '35cm*13.5cm*1个,青花瓷器,清代,3000-5000', '<p>\n    编号：03--6\n</p>\n<p>\n    尺寸：35cm*13.5cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 3000-5000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('900', null, '清代青花双喜盖碗*1', '9.6cm*6.0cm*1个,青花瓷器,清代,4000-8000', '<p>\n    编号：03-58\n</p>\n<p>\n    尺寸：9.6cm*6.0cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 4000-8000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('901', null, '民国尹瘦石作荷塘清趣盘', '23.7cm*16.5cm*1个,瓷器,民国,1.5w-2.5w', '<p>编号：03-57</p><p>尺寸：23.7cm*16.5cm*1个</p><p>材质：瓷器</p><p>年号： 民国</p><p>价格： 1.5w-2.5w</p>', '0', null, null, '14', '1');
INSERT INTO `goods_info` VALUES ('902', null, '明代青瓷呢喃相处笔洗', '14.5cm*5cm,青瓷瓷器,明代,5000-8000', '<p>\n    编号：03-56\n</p>\n<p>\n    尺寸：14.5cm*5cm\n</p>\n<p>\n    材质：青瓷瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 5000-8000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('903', null, '清代青花花鸟插屏', '40cm*47cm*1个,青花插屏,清代,1.5w-2w', '<p>\n    编号：03--55\n</p>\n<p>\n    尺寸：40cm*47cm*1个\n</p>\n<p>\n    材质：青花插屏\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 1.5w-2w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('904', null, '明代乌金釉进宝来扑满', '19cm*16cm*1个,乌金釉瓷器,明代,4000-7000', '<p>\n    编号：03-54\n</p>\n<p>\n    尺寸：19cm*16cm*1个\n</p>\n<p>\n    材质：乌金釉瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 4000-7000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('905', null, '明代哥窑葵口笔洗', '18cm*7cm*1个,哥窑瓷器,明代,7000-9000', '<p>\n    编号：03-53\n</p>\n<p>\n    尺寸：18cm*7cm*1个\n</p>\n<p>\n    材质：哥窑瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 7000-9000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('906', null, '明代哥窑草龙耳香炉', '16.5cm*12cm*1个,哥窑瓷器,明代,9000-1.2w', '<p>\n    编号：03-52\n</p>\n<p>\n    尺寸：16.5cm*12cm*1个\n</p>\n<p>\n    材质：哥窑瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 9000-1.2w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('907', null, '明代哥窑荷叶口笔洗', '22cm*8cm*1个,哥窑瓷器,明代,1w-1.5w', '<p>\n    编号：03-51\n</p>\n<p>\n    尺寸：22cm*8cm*1个\n</p>\n<p>\n    材质：哥窑瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 1w-1.5w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('908', null, '清乾坤五彩三英战吕布将军罐', '24cm*41cm*1个,五彩瓷器,乾隆年制,3w-6w', '<p>\n    编号：03-50\n</p>\n<p>\n    尺寸：24cm*41cm*1个\n</p>\n<p>\n    材质：五彩瓷器\n</p>\n<p>\n    年号： 乾隆年制\n</p>\n<p>\n    价格： 3w-6w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('909', null, '明代哥窑狮耳万字符香炉', '26cm*18cm*1个,哥窑瓷器,明代,2w-3w', '<p>\n    编号：03--5\n</p>\n<p>\n    尺寸：26cm*18cm*1个\n</p>\n<p>\n    材质：哥窑瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 2w-3w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('910', null, '清代青花八棱花卉盘', '21cm*33.3cm*1个,青花瓷器,清代,8000-12000', '<p>\n    编号：03-49\n</p>\n<p>\n    尺寸：21cm*33.3cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 8000-12000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('911', null, '清代山水人物瓷插屏', '19cm*20.5cm*1个,插屏瓷器,清代,4w-7w', '<p>\n    编号：03--48\n</p>\n<p>\n    尺寸：19cm*20.5cm*1个\n</p>\n<p>\n    材质：插屏瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 4w-7w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('912', null, '清末珠山八友青花鱼藻镇纸', '7.5cm*22.7cm*2个,青花瓷器,清末,5000-8000', '<p>\n    编号：03-47\n</p>\n<p>\n    尺寸：7.5cm*22.7cm*2个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清末\n</p>\n<p>\n    价格： 5000-8000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('913', null, '明代青花水仙盆', '15cm*21.7cm*1个,青花瓷器,明代,3000-5000', '<p>\n    编号：03-46\n</p>\n<p>\n    尺寸：15cm*21.7cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 3000-5000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('914', null, '清代长方形粉彩人物帽筒一对', '9.7cm*28.5cm*2个,粉彩瓷器,清代,2w-4w', '<p>\n    编号：03-45\n</p>\n<p>\n    尺寸：9.7cm*28.5cm*2个\n</p>\n<p>\n    材质：粉彩瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 2w-4w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('915', null, '清代褐釉洒金蹴鞠', '22cm*34.5cm*1个,褐釉瓷器,大清雍正年制,2w-5w', '<p>\n    编号：03--44\n</p>\n<p>\n    尺寸：22cm*34.5cm*1个\n</p>\n<p>\n    材质：褐釉瓷器\n</p>\n<p>\n    年号： 大清雍正年制\n</p>\n<p>\n    价格： 2w-5w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('916', null, '明清绿釉百花争鸣罐', '21cm*17cm*1个,绿釉瓷器,明清,9000-1.2w', '<p>\n    编号：03-43\n</p>\n<p>\n    尺寸：21cm*17cm*1个\n</p>\n<p>\n    材质：绿釉瓷器\n</p>\n<p>\n    年号： 明清\n</p>\n<p>\n    价格： 9000-1.2w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('917', null, '明代青花海兽纹香炉', '23cm*13cm*1个,青花瓷器,明代,3w-5w', '<p>\n    编号：03--42\n</p>\n<p>\n    尺寸：23cm*13cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 3w-5w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('918', null, '明代青花暗八仙笔筒', '24.5cm*21cm*1个,青花瓷器,明代,6000-8000', '<p>\n    编号：03--41\n</p>\n<p>\n    尺寸：24.5cm*21cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 6000-8000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('919', null, '清代粉彩贵子连生诗文将军罐*一对', '23.5cm*43cm*2个,粉彩瓷器,清代,8w-12w', '<p>\n    编号：03-40\n</p>\n<p>\n    尺寸：23.5cm*43cm*2个\n</p>\n<p>\n    材质：粉彩瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 8w-12w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('920', null, '明清青花留白鼓形笔舔', '19cm*20cm*1个,青花瓷器,明清,6000-8000', '<p>\n    编号：03--4\n</p>\n<p>\n    尺寸：19cm*20cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明清\n</p>\n<p>\n    价格： 6000-8000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('921', null, '清代八棱形花卉彩杯*1', '6.7cm*7.6cm*1个,瓷器,清代,无底价', '<p>\n    编号：03-39\n</p>\n<p>\n    尺寸：6.7cm*7.6cm*1个\n</p>\n<p>\n    材质：瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('922', null, '清代青花老祖禅堂杯*1', '7.5cm*5.0cm*1个,青花瓷器,大清道光元年制,无底价', '<p>\n    编号：03--38\n</p>\n<p>\n    尺寸：7.5cm*5.0cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 大清道光元年制\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('923', null, '民国五彩盖碗*1', '10.5cm*5.5cm*1个,五彩瓷器,民国,无底价', '<p>\n    编号：03--35\n</p>\n<p>\n    尺寸：10.5cm*5.5cm*1个\n</p>\n<p>\n    材质：五彩瓷器\n</p>\n<p>\n    年号： 民国\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('924', null, '民国五彩盖碗*1', '10.5cm*5.5cm*1个,五彩瓷器,民国,无底价', '<p>\n    编号：03--34\n</p>\n<p>\n    尺寸：10.5cm*5.5cm*1个\n</p>\n<p>\n    材质：五彩瓷器\n</p>\n<p>\n    年号： 民国\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('925', null, '清代青花人物大将军罐一对', '33cm*60cm*2个,青花瓷器,清代,3w-6w', '<p>\n    编号：03--33\n</p>\n<p>\n    尺寸：33cm*60cm*2个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 3w-6w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('926', null, '清末民国余元昌矾红描金松鹤将军罐*一对', '25cm*42.5cm*2个,矾红瓷器,余元昌造瓷画家,10w-15w', '<p>\n    编号：03-32\n</p>\n<p>\n    尺寸：25cm*42.5cm*2个\n</p>\n<p>\n    材质：矾红瓷器\n</p>\n<p>\n    年号： 余元昌造瓷画家\n</p>\n<p>\n    价格： 10w-15w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('927', null, '清代窑变釉缸', '31cm*20cm*1个,窑变釉瓷器,清代,3000-6000', '<p>\n    编号：03--312\n</p>\n<p>\n    尺寸：31cm*20cm*1个\n</p>\n<p>\n    材质：窑变釉瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 3000-6000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('928', null, '明代青花龙纹罐', '18cm*26.5cm,青花瓷器,大明嘉靖年制,3000-6000', '<p>\n    编号：03-311\n</p>\n<p>\n    尺寸：18cm*26.5cm\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 大明嘉靖年制\n</p>\n<p>\n    价格： 3000-6000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('929', null, '明代青花鸳鸯戏水玉壶春瓶', '高40.5cm,青花瓷器,明代,7000-1w', '<p>\n    编号：03-310\n</p>\n<p>\n    尺寸：高40.5cm\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 7000-1w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('930', null, '清康熙山水人物诗文象腿瓶', '11.5cm*37cm*1个,青花瓷器,清代,9000-1.3w', '<p>\n    编号：03-309\n</p>\n<p>\n    尺寸：11.5cm*37cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 9000-1.3w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('931', null, '明代德化白瓷送子观音', '24.5cm*33cm*1个,德化白瓷,明代,9w-11w', '<p>\n    编号：03--3\n</p>\n<p>\n    尺寸：24.5cm*33cm*1个\n</p>\n<p>\n    材质：德化白瓷\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 9w-11w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('932', null, '清代青花花卉双喜杯*6', '8.0cm*4.5cm*6个,青花瓷器,清代,无底价', '<p>\n    编号：03-290\n</p>\n<p>\n    尺寸：8.0cm*4.5cm*6个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('933', null, '清代朱砂釉杯*4', '6.6cm*3.7cm*4个,朱砂釉瓷器,清代,4000-6000', '<p>\n    编号：03--29/66\n</p>\n<p>\n    尺寸：6.6cm*3.7cm*4个\n</p>\n<p>\n    材质：朱砂釉瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 4000-6000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('934', null, '清代青花桂鱼水藻杯*2', '8.0cm*4.5cm*2个,青花瓷器,清代,无底价', '<p>\n    编号：03-287\n</p>\n<p>\n    尺寸：8.0cm*4.5cm*2个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('935', null, '清代青瓷杯*9', '7.4cm*3.5cm*9个,青瓷瓷器,清代,无底价', '<p>\n    编号：03-286/285\n</p>\n<p>\n    尺寸：7.4cm*3.5cm*9个\n</p>\n<p>\n    材质：青瓷瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('936', null, '清代青花楼阁松柏杯*3', '6.9cm*7.2cm*3个,青花瓷器,清代,无底价', '<p>\n    编号：03-284\n</p>\n<p>\n    尺寸：6.9cm*7.2cm*3个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('937', null, '明代青花孔雀纹杯*1', '7.7cm*4.6cm*1个,青花瓷器,明代,无底价', '<p>\n    编号：03-281\n</p>\n<p>\n    尺寸：7.7cm*4.6cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('938', null, '清代青釉折腰杯*2', '8.2cm*3.5cm*2个,青釉瓷器,大清御膳房,3000-5000', '<p>\n    编号：03--28\n</p>\n<p>\n    尺寸：8.2cm*3.5cm*2个\n</p>\n<p>\n    材质：青釉瓷器\n</p>\n<p>\n    年号： 大清御膳房\n</p>\n<p>\n    价格： 3000-5000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('939', null, '明代青花鸡缸杯*6', '7.8cm*3.6cm*6个,青花瓷器,明代,无底价', '<p>\n    编号：03-277\n</p>\n<p>\n    尺寸：7.8cm*3.6cm*6个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('940', null, '明代青花八仙杯*1', '8.2cm*4.8cm*1个,青花瓷器,明代,2000-3000', '<p>\n    编号：03-275\n</p>\n<p>\n    尺寸：8.2cm*4.8cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 2000-3000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('941', null, '明代青花釉里红梅花诗文杯*2', '6.5cm*4.6cm*2个,青花瓷器,明代,2000-4000', '<p>\n    编号：03-273\n</p>\n<p>\n    尺寸：6.5cm*4.6cm*2个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 2000-4000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('942', null, '明代青花孔雀花卉纹杯*3', '7.2cm*3.2cm*3个,青花瓷器,明代,无底价', '<p>\n    编号：03-272\n</p>\n<p>\n    尺寸：7.2cm*3.2cm*3个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('943', null, '明代青花雄鸡纹桶杯*1', '7.0cm*6.7cm*1个,青花瓷器,明代,无底价', '<p>\n    编号：03-271\n</p>\n<p>\n    尺寸：7.0cm*6.7cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('944', null, '明代青花龙纹桶杯*1', '7.0cm*6.7cm*1个,青花瓷器,明代,无底价', '<p>\n    编号：03-270\n</p>\n<p>\n    尺寸：7.0cm*6.7cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('945', null, '明代青花团文杯*2', '8.0cm*4.0cm*2个,青花瓷器,明代,无底价', '<p>\n    编号：03--27\n</p>\n<p>\n    尺寸：8.0cm*4.0cm*2个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('946', null, '明代青花四君子杯桶杯*4', '7.2cm*6.7cm*4个,青花瓷器,明代,无底价', '<p>\n    编号：03-269\n</p>\n<p>\n    尺寸：7.2cm*6.7cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('947', null, '明代青花春宫图茶杯*3', '8.9cm*5.7cm*3个,青花瓷器,明代,6000-9000', '<p>\n    编号：03-268\n</p>\n<p>\n    尺寸：8.9cm*5.7cm*3个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 6000-9000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('948', null, '民国内荷花杯*4', '7.2cm*2.7cm*2个,瓷器,民国,无底价', '<p>\n    编号：03-267\n</p>\n<p>\n    尺寸：7.2cm*2.7cm*2个\n</p>\n<p>\n    材质：瓷器\n</p>\n<p>\n    年号： 民国\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('949', null, '民国内莲蓬纹杯*2', '7.2cm*2.7cm*2个,瓷器,民国,无底价', '<p>\n    编号：03-266\n</p>\n<p>\n    尺寸：7.2cm*2.7cm*2个\n</p>\n<p>\n    材质：瓷器\n</p>\n<p>\n    年号： 民国\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('950', null, '明代青花如意纹压手杯*2', '9.0cm*5.5cm*2个,青花瓷器,明代,无底价', '<p>\n    编号：03--26\n</p>\n<p>\n    尺寸：9.0cm*5.5cm*2个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('951', null, '民国内兰花杯*2', '7.2cm*2.7cm*2个,瓷器,民国,无底价', '<p>\n    编号：03-255\n</p>\n<p>\n    尺寸：7.2cm*2.7cm*2个\n</p>\n<p>\n    材质：瓷器\n</p>\n<p>\n    年号： 民国\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('952', null, '明代青花舞狮纹杯*2', '5.5cm*5.0cm*2个,青花瓷器,明代,无底价', '<p>\n    编号：03-254\n</p>\n<p>\n    尺寸：5.5cm*5.0cm*2个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('953', null, '明代绞胎釉杯*3', '8.1cm*2.8cm*3个,绞胎釉瓷器,明代,4000-6000', '<p>\n    编号：03-253\n</p>\n<p>\n    尺寸：8.1cm*2.8cm*3个\n</p>\n<p>\n    材质：绞胎釉瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 4000-6000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('954', null, '明代绞胎釉杯*4', '6.3cm*2.5cm*4个,绞胎釉瓷器,明代,6000-9000', '<p>\n    编号：03-252\n</p>\n<p>\n    尺寸：6.3cm*2.5cm*4个\n</p>\n<p>\n    材质：绞胎釉瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 6000-9000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('955', null, '清代青瓷窑变杯*2', '7.2cm*3.2cm*2个,青瓷窑变瓷器,清代,无底价', '<p>\n    编号：03-251\n</p>\n<p>\n    尺寸：7.2cm*3.2cm*2个\n</p>\n<p>\n    材质：青瓷窑变瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('956', null, '清代橘皮纹麻酱釉杯*1', '6.6cm*3.1cm*1个,麻酱釉瓷器,清代,无底价', '<p>\n    编号：03-250\n</p>\n<p>\n    尺寸：6.6cm*3.1cm*1个\n</p>\n<p>\n    材质：麻酱釉瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('957', null, '清代青花竹梅图茶杯*2', '8.4cm*5.2cm*2个,青花瓷器,清代,无底价', '<p>\n    编号：03--25\n</p>\n<p>\n    尺寸：8.4cm*5.2cm*2个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('958', null, '清代朱砂釉茶杯*3', '6.4*2.8/5.6*2.7/5.3*2.7/*3个,朱砂釉瓷器,清代,1w-1.5w', '<p>\n    编号：03-249\n</p>\n<p>\n    尺寸：6.4*2.8/5.6*2.7/5.3*2.7/*3个\n</p>\n<p>\n    材质：朱砂釉瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 1w-1.5w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('959', null, '明代窑变杯*2', '5.1cm*2.8cm*2个,窑变瓷器,明代,3000-5000', '<p>\n    编号：03-248\n</p>\n<p>\n    尺寸：5.1cm*2.8cm*2个\n</p>\n<p>\n    材质：窑变瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 3000-5000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('960', null, '清代青花童子风调雨顺盘*2', '9.9cm*1.2cm*2个,青花瓷器,大清乾隆年制,无底价', '<p>\n    编号：03-247\n</p>\n<p>\n    尺寸：9.9cm*1.2cm*2个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 大清乾隆年制\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('961', null, '清代四君子盘*4', '9.9cm*1.2cm*4个,青花瓷器,大清乾隆年制,无底价', '<p>\n    编号：03-246\n</p>\n<p>\n    尺寸：9.9cm*1.2cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 大清乾隆年制\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('962', null, '清代青花文字盘*4', '9.9cm*1.2cm*4个,青花瓷器,大清乾隆年制,无底价', '<p>\n    编号：03-245\n</p>\n<p>\n    尺寸：9.9cm*1.2cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 大清乾隆年制\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('963', null, '清代青花老鼠钱福寿碗*1', '7.4cm*2.9cm*1个,青花瓷器,清代,无底价', '<p>\n    编号：03-244\n</p>\n<p>\n    尺寸：7.4cm*2.9cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('964', null, '清代青花凤凰涅槃杯*1', '6.9cm*3.0cm*1个,青花瓷器,清代,无底价', '<p>\n    编号：03-243\n</p>\n<p>\n    尺寸：6.9cm*3.0cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('965', null, '明代青花寿桃纹盏*3', '7.6cm*2.5cm*3个,青花瓷器,明代,6000-9000', '<p>\n    编号：03-242\n</p>\n<p>\n    尺寸：7.6cm*2.5cm*3个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 6000-9000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('966', null, '明代青花鹤鹿同春斗笠杯*2', '8.1cm*3.3cm*2个,青花瓷器,明代,2000-4000', '<p>\n    编号：03-241\n</p>\n<p>\n    尺寸：8.1cm*3.3cm*2个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 2000-4000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('967', null, '明代树叶纹乌金釉盏*2', '6.6cm*2.7cm*2个,乌金釉瓷器,明代,无底价', '<p>\n    编号：03-240\n</p>\n<p>\n    尺寸：6.6cm*2.7cm*2个\n</p>\n<p>\n    材质：乌金釉瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('968', null, '明代窑变盏', '6.6cm*2.7cm*1个,窑变瓷器,明代,无底价', '<p>\n    编号：03-239\n</p>\n<p>\n    尺寸：6.6cm*2.7cm*1个\n</p>\n<p>\n    材质：窑变瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('969', null, '清代窑变红釉杯*2', '7.1cm*3.3cm*2个,窑变瓷器,清代,无底价', '<p>\n    编号：03-238\n</p>\n<p>\n    尺寸：7.1cm*3.3cm*2个\n</p>\n<p>\n    材质：窑变瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('970', null, '清代青釉内竹纹杯*2', '8.2cm*3.0cm*2个,青釉瓷器,清代,无底价', '<p>\n    编号：03-236\n</p>\n<p>\n    尺寸：8.2cm*3.0cm*2个\n</p>\n<p>\n    材质：青釉瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('971', null, '清代荷叶口形杯*2', '7.6cm*3.0cm*2个,青釉瓷器,清代,无底价', '<p>\n    编号：03-235\n</p>\n<p>\n    尺寸：7.6cm*3.0cm*2个\n</p>\n<p>\n    材质：青釉瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('972', null, '清代多彩诗文赏杯*1', '6.4cm*4.7cm*1个,多彩青花瓷器,大清康熙年制,2000-3000', '<p>\n    编号：03-234\n</p>\n<p>\n    尺寸：6.4cm*4.7cm*1个\n</p>\n<p>\n    材质：多彩青花瓷器\n</p>\n<p>\n    年号： 大清康熙年制\n</p>\n<p>\n    价格： 2000-3000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('973', null, '清代多彩诗文赏杯*1', '6.4cm*4.7cm*1个,多彩青花瓷器,大清康熙年制,2000-3000', '<p>\n    编号：03-233\n</p>\n<p>\n    尺寸：6.4cm*4.7cm*1个\n</p>\n<p>\n    材质：多彩青花瓷器\n</p>\n<p>\n    年号： 大清康熙年制\n</p>\n<p>\n    价格： 2000-3000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('974', null, '清代青花牵牛花鸟杯*4', '7.0cm*4.2cm*4个,青花瓷器,清代,无底价', '<p>\n    编号：03--23\n</p>\n<p>\n    尺寸：7.0cm*4.2cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('975', null, '清代薄胎多彩泥金杯*12', '6.6cm*5.3cm*12个（一套）,薄胎多彩瓷器,大清康熙年制,（10w-15w）', '<p>\n    编号：03-229\n</p>\n<p>\n    尺寸：6.6cm*5.3cm*12个（一套）\n</p>\n<p>\n    材质：薄胎多彩瓷器\n</p>\n<p>\n    年号： 大清康熙年制\n</p>\n<p>\n    价格： （10w-15w）\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('976', null, '明代窑变斗笠碗*3', '9.7cm*3.8cm*3个,窑变瓷器,明代,3w-6w', '<p>\n    编号：03-220\n</p>\n<p>\n    尺寸：9.7cm*3.8cm*3个\n</p>\n<p>\n    材质：窑变瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 3w-6w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('977', null, '明代官窑白釉薄胎暗花杯*1', '8.1cm*3.6cm*1个,薄胎白釉官窑杯,大明成化年制,5w-8w', '<p>\n    编号：03--22\n</p>\n<p>\n    尺寸：8.1cm*3.6cm*1个\n</p>\n<p>\n    材质：薄胎白釉官窑杯\n</p>\n<p>\n    年号： 大明成化年制\n</p>\n<p>\n    价格： 5w-8w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('978', null, '民国粉彩寿桃诗文杯*2', '11.1cm*4.4.cm*2个,粉彩瓷器,民国居仁堂,6000-8000', '<p>\n    编号：03-219\n</p>\n<p>\n    尺寸：11.1cm*4.4.cm*2个\n</p>\n<p>\n    材质：粉彩瓷器\n</p>\n<p>\n    年号： 民国居仁堂\n</p>\n<p>\n    价格： 6000-8000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('979', null, '民国粉彩官窑花鸟斗笠碗*3', '11.1cm*4.4.cm*3个,粉彩瓷器,民国居仁堂,1w-1.5w', '<p>\n    编号：03-218\n</p>\n<p>\n    尺寸：11.1cm*4.4.cm*3个\n</p>\n<p>\n    材质：粉彩瓷器\n</p>\n<p>\n    年号： 民国居仁堂\n</p>\n<p>\n    价格： 1w-1.5w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('980', null, '清代青花淡彩人物杯*3', '6.5cm*4.5cm*3个,青花瓷器,清代,2000-3000', '<p>\n    编号：03-216\n</p>\n<p>\n    尺寸：6.5cm*4.5cm*3个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 2000-3000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('981', null, '清代青花淡彩山水花鸟纹杯*3', '6.8cm*4.5cm*3个,青花瓷器,清代,无底价', '<p>\n    编号：03-215\n</p>\n<p>\n    尺寸：6.8cm*4.5cm*3个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('982', null, '清代青花仙鹤杯*6', '6.2cm*3.6cm*6个,青花瓷器,清代,无底价', '<p>\n    编号：03-214\n</p>\n<p>\n    尺寸：6.2cm*3.6cm*6个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('983', null, '清代青花菊瓣形开光花卉杯*6', '6.2cm*3.6cm*6个,青花瓷器,清代,无底价', '<p>\n    编号：03-213\n</p>\n<p>\n    尺寸：6.2cm*3.6cm*6个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('984', null, '清代青花鱼藻纹杯*6', '7.0cm*4.6cm*6个,青花瓷器,清代,无底价', '<p>\n    编号：03-212\n</p>\n<p>\n    尺寸：7.0cm*4.6cm*6个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('985', null, '清代青花文字杯*4', '7.5cm*4.8cm*4个,青花瓷器,清代,无底价', '<p>\n    编号：03--210\n</p>\n<p>\n    尺寸：7.5cm*4.8cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('986', null, '清代朱砂釉压手杯*2', '9.0cm*5.6cm*2个,朱砂釉瓷器,大清康熙年制,3000-8000', '<p>编号：03--21</p><p>尺寸：9.0cm*5.6cm*2个</p><p>材质：朱砂釉瓷器</p><p>年号： 大清康熙年制</p><p>价格： 3000-8000</p>', '0', null, null, '14', '1');
INSERT INTO `goods_info` VALUES ('987', null, '清代青花长寿杯*4', '7.5cm*4.5cm*4个,青花瓷器,清代,无底价', '<p>\n    编号：03-209\n</p>\n<p>\n    尺寸：7.5cm*4.5cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('988', null, '清代青花花卉开光鸟纹杯*4', '7.5cm*3.3cm*4个,青花瓷器,清代,无底价', '<p>\n    编号：03-208\n</p>\n<p>\n    尺寸：7.5cm*3.3cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('989', null, '清代青花舞狮杯*6', '8.3cm*4.8cm*6个,青花瓷器,清代,无底价', '<p>\n    编号：03-207\n</p>\n<p>\n    尺寸：8.3cm*4.8cm*6个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('990', null, '清代青花花鸟杯*4', '7.5cm*4.6cm*4个,青花瓷器,清代,无底价', '<p>\n    编号：03-206 \n</p>\n<p>\n    尺寸：7.5cm*4.6cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('991', null, '清代青花文字杯*4', '8.8cm*5.6cm*4个,青花瓷器,清代,无底价', '<p>\n    编号：03-205\n</p>\n<p>\n    尺寸：8.8cm*5.6cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('992', null, '清代青花诗文杯*4', '8.9cm*5.6cm*4个,青花瓷器,清代,无底价', '<p>\n    编号：03-204\n</p>\n<p>\n    尺寸：8.9cm*5.6cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('993', null, '清代青花开光团寿纹杯*4', '8.1cm*4.6cm*4个,青花瓷器,清代,无底价', '<p>\n    编号：03-203\n</p>\n<p>\n    尺寸：8.1cm*4.6cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('994', null, '清代青花八卦纹凤鸟杯*4', '7.6cm*4.6cm*4个,青花瓷器,清代,无底价', '<p>\n    编号：03-202\n</p>\n<p>\n    尺寸：7.6cm*4.6cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('995', null, '明代青花鸡缸杯*2', '8.0cm*4.0cm*2个,青花瓷器,明代,无底价', '<p>\n    编号：03--20\n</p>\n<p>\n    尺寸：8.0cm*4.0cm*2个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('996', null, '清代五彩刀马人物笔洗', '26cm*17cm*1个,五彩瓷器,清代,3w-5w', '<p>\n    编号：03--2\n</p>\n<p>\n    尺寸：26cm*17cm*1个\n</p>\n<p>\n    材质：五彩瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 3w-5w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('997', null, '清代青花冰梅茶杯*4', '7.1cm*4.6cm*4个,青花瓷器,清代,无底价', '<p>\n    编号：03--199/150\n</p>\n<p>\n    尺寸：7.1cm*4.6cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('998', null, '清代薄胎粉彩翠竹牡丹图杯*3', '8.3cm*3.9cm*3个,薄胎粉彩瓷器,大清乾隆年制,1w-1.5w', '<p>\n    编号：03-198\n</p>\n<p>\n    尺寸：8.3cm*3.9cm*3个\n</p>\n<p>\n    材质：薄胎粉彩瓷器\n</p>\n<p>\n    年号： 大清乾隆年制\n</p>\n<p>\n    价格： 1w-1.5w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('999', null, '清代薄胎粉彩牡丹斗鸡图*4', '6.8cm*5.1cm*4个,薄胎粉彩瓷器,清代玩玉款,1.5w-1.7w', '<p>\n    编号：03-197\n</p>\n<p>\n    尺寸：6.8cm*5.1cm*4个\n</p>\n<p>\n    材质：薄胎粉彩瓷器\n</p>\n<p>\n    年号： 清代玩玉款\n</p>\n<p>\n    价格： 1.5w-1.7w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1000', null, '清代薄胎粉彩收口花鸟杯*2', '6.4cm*4.7cm*2个,薄胎粉彩瓷器,清代玩玉款,8000-9000', '<p>\n    编号：03-196-2\n</p>\n<p>\n    尺寸：6.4cm*4.7cm*2个\n</p>\n<p>\n    材质：薄胎粉彩瓷器\n</p>\n<p>\n    年号： 清代玩玉款\n</p>\n<p>\n    价格： 8000-9000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1001', null, '清代薄胎粉彩花鸟杯*3', '6.4cm*4.7cm*3个,薄胎粉彩瓷器,清代玩玉款,1w-1.5w', '<p>\n    编号：03-196\n</p>\n<p>\n    尺寸：6.4cm*4.7cm*3个\n</p>\n<p>\n    材质：薄胎粉彩瓷器\n</p>\n<p>\n    年号： 清代玩玉款\n</p>\n<p>\n    价格： 1w-1.5w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1002', null, '清代薄胎粉彩天伦之乐茶杯*3', '6.9cm*5.1cm*3个,薄胎粉彩瓷器,清代玩玉款,1w-1.5w', '<p>\n    编号：03-195\n</p>\n<p>\n    尺寸：6.9cm*5.1cm*3个\n</p>\n<p>\n    材质：薄胎粉彩瓷器\n</p>\n<p>\n    年号： 清代玩玉款\n</p>\n<p>\n    价格： 1w-1.5w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1003', null, '清代薄胎粉彩花鸟杯*1', '6.4cm*4.8cm*1个,薄胎粉彩瓷器,清代玩玉款,4000-6000', '<p>\n    编号：03-194\n</p>\n<p>\n    尺寸：6.4cm*4.8cm*1个\n</p>\n<p>\n    材质：薄胎粉彩瓷器\n</p>\n<p>\n    年号： 清代玩玉款\n</p>\n<p>\n    价格： 4000-6000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1004', null, '清代薄胎粉彩牡丹公鸡杯*3', '8.1cm*4.7cm*3个,薄胎粉彩瓷器,清代玩玉款,1w-1.5w', '<p>\n    编号：03-193\n</p>\n<p>\n    尺寸：8.1cm*4.7cm*3个\n</p>\n<p>\n    材质：薄胎粉彩瓷器\n</p>\n<p>\n    年号： 清代玩玉款\n</p>\n<p>\n    价格： 1w-1.5w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1005', null, '清代薄胎粉彩寿桃斗笠杯*4', '6.9cm*2.9cm*4个,薄胎粉彩瓷器,清代玩玉款,1.5w-2w', '<p>\n    编号：03-192\n</p>\n<p>\n    尺寸：6.9cm*2.9cm*4个\n</p>\n<p>\n    材质：薄胎粉彩瓷器\n</p>\n<p>\n    年号： 清代玩玉款\n</p>\n<p>\n    价格： 1.5w-2w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1006', null, '清代薄胎粉彩花鸟杯*3', '7.9cm*4.6cm*3个,薄胎粉彩瓷器,清代玩玉款,1w-1.5w', '<p>\n    编号：03-191\n</p>\n<p>\n    尺寸：7.9cm*4.6cm*3个\n</p>\n<p>\n    材质：薄胎粉彩瓷器\n</p>\n<p>\n    年号： 清代玩玉款\n</p>\n<p>\n    价格： 1w-1.5w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1007', null, '清代薄胎福从天降杯*4', '7.9cm*4.6cm*4个,薄胎瓷器,清代玩玉款,7000-1w', '<p>\n    编号：03-190\n</p>\n<p>\n    尺寸：7.9cm*4.6cm*4个\n</p>\n<p>\n    材质：薄胎瓷器\n</p>\n<p>\n    年号： 清代玩玉款\n</p>\n<p>\n    价格： 7000-1w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1008', null, '清代矾红太师少保杯*2', '7.1cm*6.5cm*2个,薄胎瓷器,大清同治年制,无底价', '<p>\n    编号：03--19\n</p>\n<p>\n    尺寸：7.1cm*6.5cm*2个\n</p>\n<p>\n    材质：薄胎瓷器\n</p>\n<p>\n    年号： 大清同治年制\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1009', null, '清代薄胎福从天降浅杯*6', '8.9cm*3.3cm*6个,薄胎瓷器,清代玩玉款,1w-1.5w', '<p>\n    编号：03-189\n</p>\n<p>\n    尺寸：8.9cm*3.3cm*6个\n</p>\n<p>\n    材质：薄胎瓷器\n</p>\n<p>\n    年号： 清代玩玉款\n</p>\n<p>\n    价格： 1w-1.5w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1010', null, '清代薄胎山水图茶杯*3', '8.9cm*3.3cm*3个,薄胎瓷器,清代玩玉款,8000-1w', '<p>\n    编号：03-188\n</p>\n<p>\n    尺寸：8.9cm*3.3cm*3个\n</p>\n<p>\n    材质：薄胎瓷器\n</p>\n<p>\n    年号： 清代玩玉款\n</p>\n<p>\n    价格： 8000-1w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1011', null, '清代薄胎山水图茶杯*6', '6.4cm*2.8cm*6个,薄胎瓷器,清代玩玉款,9000-1.2w', '<p>\n    编号：03-187\n</p>\n<p>\n    尺寸：6.4cm*2.8cm*6个\n</p>\n<p>\n    材质：薄胎瓷器\n</p>\n<p>\n    年号： 清代玩玉款\n</p>\n<p>\n    价格： 9000-1.2w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1012', null, '清代薄胎山水图茶杯*6', '6.4cm*2.8cm*6个,薄胎瓷器,清代玩玉款,9000-1.2w', '<p>\n    编号：03-186\n</p>\n<p>\n    尺寸：6.4cm*2.8cm*6个\n</p>\n<p>\n    材质：薄胎瓷器\n</p>\n<p>\n    年号： 清代玩玉款\n</p>\n<p>\n    价格： 9000-1.2w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1013', null, '清代薄胎粉彩花鸟高杯*3', '6.1cm*6.5cm*3个,薄胎粉彩瓷器,大清乾隆年制,1w-1.5w', '<p>\n    编号：03-184\n</p>\n<p>\n    尺寸：6.1cm*6.5cm*3个\n</p>\n<p>\n    材质：薄胎粉彩瓷器\n</p>\n<p>\n    年号： 大清乾隆年制\n</p>\n<p>\n    价格： 1w-1.5w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1014', null, '清代薄胎粉彩花鸟高杯*2', '6.1cm*6.5cm*2个,薄胎粉彩瓷器,大清乾隆年制,7000-9000', '<p>\n    编号：03-183\n</p>\n<p>\n    尺寸：6.1cm*6.5cm*2个\n</p>\n<p>\n    材质：薄胎粉彩瓷器\n</p>\n<p>\n    年号： 大清乾隆年制\n</p>\n<p>\n    价格： 7000-9000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1015', null, '明代青花四棱春宫图*6', '6.2cm*3.2cm*6个,青花瓷器,明代,7000-9000', '<p>\n    编号：03-182\n</p>\n<p>\n    尺寸：6.2cm*3.2cm*6个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 7000-9000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1016', null, '明代青花春宫图*6', '7.6cm*4.6cm*6个,青花瓷器,明代,5000-8000', '<p>\n    编号：03--181\n</p>\n<p>\n    尺寸：7.6cm*4.6cm*6个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 5000-8000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1017', null, '明代青花三仙图文杯*6', '8.0cm*4.5cm*6个,青花瓷器,明代,无底价', '<p>\n    编号：03-180/161\n</p>\n<p>\n    尺寸：8.0cm*4.5cm*6个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1018', null, '清代朱砂釉水盂', '6cm*6.5cm*1个,朱砂釉瓷器,清代,2000-3000', '<p>\n    编号：03--18\n</p>\n<p>\n    尺寸：6cm*6.5cm*1个\n</p>\n<p>\n    材质：朱砂釉瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 2000-3000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1019', null, '明代内青花青釉蕉叶纹杯*2', '9.1cm*4.5cm*2个,青花瓷器,明代,8000-1w', '<p>\n    编号：03-179\n</p>\n<p>\n    尺寸：9.1cm*4.5cm*2个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 8000-1w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1020', null, '清代矾红饭盒', '22cm*18cm*1套,矾红瓷器,清代同治年制,1w-1.5w', '<p>编号：03-178</p><p>尺寸：22cm*18cm*1套</p><p>材质：矾红瓷器</p><p>年号： 清代同治年制</p><p>价格： 1w-1.5w</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1021', null, '明清粉彩麒麟赐福内府将军罐', '17.5cm*33cm*1个,粉彩瓷器,明清,5000-8000', '<p>编号：03-177</p><p>尺寸：17.5cm*33cm*1个</p><p>材质：粉彩瓷器</p><p>年号： 明清</p><p>价格： 5000-8000</p>', '0', null, null, '14', '1');
INSERT INTO `goods_info` VALUES ('1022', null, '民国勐海茶厂粉彩五老图茶叶罐*一对', '19cm*26.5cm*2个,粉彩瓷器,民国,2000-4000', '<p>\n    编号：03-176\n</p>\n<p>\n    尺寸：19cm*26.5cm*2个\n</p>\n<p>\n    材质：粉彩瓷器\n</p>\n<p>\n    年号： 民国\n</p>\n<p>\n    价格： 2000-4000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1023', null, '明代青花草龙图杯*3', '7.6cm*4.7cm*3个,青花瓷器,明代,无底价 ', '<p>\n    编号：03-174\n</p>\n<p>\n    尺寸：7.6cm*4.7cm*3个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价 \n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1024', null, '清代青花开光花卉杯*3', '7.5cm*4.7cm*3个,青花瓷器,清代,无底价', '<p>\n    编号：03-173\n</p>\n<p>\n    尺寸：7.5cm*4.7cm*3个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1025', null, '明代青花一笔点画牡丹纹杯*3', '7.7cm*4.7cm*3个,青花瓷器,明代,无底价', '<p>\n    编号：03-172\n</p>\n<p>\n    尺寸：7.7cm*4.7cm*3个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1026', null, '清代青花凤穿花*4', '7.5cm*4.7cm*4个,青花瓷器,清代,无底价', '<p>\n    编号：03-171\n</p>\n<p>\n    尺寸：7.5cm*4.7cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1027', null, '明代青花一笔点画仙人杯*6', '7.6cm*4.8cm*6个,青花瓷器,明代,无底价', '<p>\n    编号：03-169/80\n</p>\n<p>\n    尺寸：7.6cm*4.8cm*6个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1028', null, '清代青花梅花鹿纹杯*3', '7.5cm*4.7cm*3个,青花瓷器,清代,无底价', '<p>\n    编号：03-168\n</p>\n<p>\n    尺寸：7.5cm*4.7cm*3个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1029', null, '清代青花诗文开光兰花杯*5', '7.5cm*4.7cm*5个,青花瓷器,清代,无底价', '<p>\n    编号：03-167\n</p>\n<p>\n    尺寸：7.5cm*4.7cm*5个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1030', null, '清代青花花卉双喜杯*6', '7.5cm*4.6cm*6个,青花瓷器,清代,无底价', '<p>\n    编号：03-166\n</p>\n<p>\n    尺寸：7.5cm*4.6cm*6个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1031', null, '明清青花双喜杯*6', '7.4cm*4.6cm*6个,青花瓷器,明清,无底价', '<p>\n    编号：03-165/101\n</p>\n<p>\n    尺寸：7.4cm*4.6cm*6个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明清\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1032', null, '明代青花花鸟杯*6', '7.5cm*4.7cm*6个,青花瓷器,明代,无底价', '<p>\n    编号：03-163/96\n</p>\n<p>\n    尺寸：7.5cm*4.7cm*6个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1033', null, '明代青花一笔点画花卉罐', '11.5cm*8.5cm*1个,青花瓷器,明代,无底价', '<p>\n    编号：03--16\n</p>\n<p>\n    尺寸：11.5cm*8.5cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1034', null, '清代青花釉里红喜字杯*6', '8cm*4.5cm*6个,青花瓷器,清代,无底价', '<p>\n    编号：03-159/154\n</p>\n<p>\n    尺寸：8cm*4.5cm*6个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1035', null, '清代青花釉里红喜字杯*8', '8cm*4.5cm*8个,青花瓷器,清代,无底价', '<p>\n    编号：03-158\n</p>\n<p>\n    尺寸：8cm*4.5cm*8个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1036', null, '清代青花花卉杯*6', '8cm*4.5cm*6个,青花瓷器,清代,无底价', '<p>\n    编号：03-157\n</p>\n<p>\n    尺寸：8cm*4.5cm*6个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1037', null, '同上', '20.6cm*10.7cm*1个,祭蓝釉瓷器,明代,5000-7000', '<p>\n    编号：03-156-2\n</p>\n<p>\n    尺寸：20.6cm*10.7cm*1个\n</p>\n<p>\n    材质：祭蓝釉瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 5000-7000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1038', null, '明代祭蓝乳钉纹笔洗', '21.5cm*11.8cm*1个,祭蓝釉瓷器,明代,5000-7000', '<p>\n    编号：03-156-1\n</p>\n<p>\n    尺寸：21.5cm*11.8cm*1个\n</p>\n<p>\n    材质：祭蓝釉瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 5000-7000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1039', null, '清代祭红将军罐*2个', '24cm*40cm*2个,祭红釉瓷器,清代,3w-6w', '<p>\n    编号：03--155\n</p>\n<p>\n    尺寸：24cm*40cm*2个\n</p>\n<p>\n    材质：祭红釉瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 3w-6w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1040', null, '明代青花釉里红水草荷花异形杯*1', '7.7cm*4.3cm*1个,青花瓷器,明代,无底价', '<p>\n    编号：03-153\n</p>\n<p>\n    尺寸：7.7cm*4.3cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1041', null, '明代青花釉里红水草荷花杯*5', '7.9cm*3.7cm*5个,青花瓷器,明代,2000-3000', '<p>\n    编号：03-152\n</p>\n<p>\n    尺寸：7.9cm*3.7cm*5个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 2000-3000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1042', null, '清代祭蓝釉缶', '13.5cm*10.8cm,祭蓝釉瓷器,清代,2000-5000', '<p>\n    编号：03--15\n</p>\n<p>\n    尺寸：13.5cm*10.8cm\n</p>\n<p>\n    材质：祭蓝釉瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 2000-5000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1043', null, '明代青花团凤杯*4', '7.5cm*4.7cm*4个,青花瓷器,明代,无底价', '<p>\n    编号：03-148/201\n</p>\n<p>\n    尺寸：7.5cm*4.7cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1044', null, '明代青花仙人杯*4', '7.5cm*4.7cm*4个,青花瓷器,明代,3000-5000', '<p>\n    编号：03-147/170/200\n</p>\n<p>\n    尺寸：7.5cm*4.7cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 3000-5000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1045', null, '清代五彩蝈蝈高杯*2', '7.5cm*5.6cm*2个,薄胎五彩瓷器,大清道光年制,3w-5w', '<p>\n    编号：03-144\n</p>\n<p>\n    尺寸：7.5cm*5.6cm*2个\n</p>\n<p>\n    材质：薄胎五彩瓷器\n</p>\n<p>\n    年号： 大清道光年制\n</p>\n<p>\n    价格： 3w-5w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1046', null, '明代祭蓝釉笔筒', '12.2cm*11cm*1个,祭蓝釉瓷器,明代,3000-5000', '<p>\n    编号：03--14\n</p>\n<p>\n    尺寸：12.2cm*11cm*1个\n</p>\n<p>\n    材质：祭蓝釉瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 3000-5000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1047', null, '清代粉彩仕女童子壶', '13.5cm*13.5cm*1个,粉彩瓷器,同治年制,4000-7000', '<p>\n    编号：03-138\n</p>\n<p>\n    尺寸：13.5cm*13.5cm*1个\n</p>\n<p>\n    材质：粉彩瓷器\n</p>\n<p>\n    年号： 同治年制\n</p>\n<p>\n    价格： 4000-7000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1048', null, '元代青花龙凤梅瓶', '13.5cm*22.5cm*1个,青花瓷器,元代,1.5w-2w', '<p>\n    编号：03-137\n</p>\n<p>\n    尺寸：13.5cm*22.5cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 元代\n</p>\n<p>\n    价格： 1.5w-2w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1049', null, '清代五彩仕女童子图茶罐', '16cm*16cm*1个,五彩瓷器,清代陈年普洱款,5000-8000', '<p>\n    编号：03-136\n</p>\n<p>\n    尺寸：16cm*16cm*1个\n</p>\n<p>\n    材质：五彩瓷器\n</p>\n<p>\n    年号： 清代陈年普洱款\n</p>\n<p>\n    价格： 5000-8000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1050', null, '清代徐善琴浅降彩寿星童子图茶罐', '16cm*15.5cm*1个,浅降彩瓷器,清代陈年普洱款,3w-6w', '<p>\n    编号：03-135\n</p>\n<p>\n    尺寸：16cm*15.5cm*1个\n</p>\n<p>\n    材质：浅降彩瓷器\n</p>\n<p>\n    年号： 清代陈年普洱款\n</p>\n<p>\n    价格： 3w-6w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1051', null, '明代青花罐内装民国茶叶', '14.5cm*15.0cm*1个,青花瓷器,明代罐+民国乾和庄茶,8w-10w', '<p>\n    编号：03-134\n</p>\n<p>\n    尺寸：14.5cm*15.0cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代罐+民国乾和庄茶\n</p>\n<p>\n    价格： 8w-10w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1052', null, '清代青花人物缸', '26.7cm*21.5cm*1个,青花瓷器,大清康熙年制侧款,6000-9000', '<p>\n    编号：03-133\n</p>\n<p>\n    尺寸：26.7cm*21.5cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 大清康熙年制侧款\n</p>\n<p>\n    价格： 6000-9000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1053', null, '明代哥窑描金鱼藻纹盘一对', '18cm*3.7cm*2个,哥窑瓷器,明代,1w-3w', '<p>\n    编号：03-132\n</p>\n<p>\n    尺寸：18cm*3.7cm*2个\n</p>\n<p>\n    材质：哥窑瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 1w-3w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1054', null, '清乾隆黄釉双龙戏珠赏瓶', '33cm*66.3cm*2个,黄釉瓷器,清代,4w-6w', '<p>\n    编号：03-130\n</p>\n<p>\n    尺寸：33cm*66.3cm*2个\n</p>\n<p>\n    材质：黄釉瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 4w-6w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1055', null, '明代褐釉内哥窑笔洗', '21.3cm*8cm*1个,褐釉瓷器,宣德年制,4000-7000', '<p>\n    编号：03--128\n</p>\n<p>\n    尺寸：21.3cm*8cm*1个\n</p>\n<p>\n    材质：褐釉瓷器\n</p>\n<p>\n    年号： 宣德年制\n</p>\n<p>\n    价格： 4000-7000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1056', null, '明代青花温酒器', '13.2cm*20.3cm*1个,青花瓷器,明代,1.5w-1.8w', '<p>\n    编号：03-126\n</p>\n<p>\n    尺寸：13.2cm*20.3cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 1.5w-1.8w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1057', null, '清代矾红太师少保饭盒', '22.5cm*19.5cm*1套,矾红瓷器,同治年制,1.2w-1.8w', '<p>\n    编号：03-125\n</p>\n<p>\n    尺寸：22.5cm*19.5cm*1套\n</p>\n<p>\n    材质：矾红瓷器\n</p>\n<p>\n    年号： 同治年制\n</p>\n<p>\n    价格： 1.2w-1.8w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1058', null, '清青花六棱笔筒', '14cm*16cm*1个,青花瓷器,大清乾隆年制,7000-9000', '<p>编号：03-124</p><p>尺寸：14cm*16cm*1个</p><p>材质：青花瓷器</p><p>年号： 大清乾隆年制</p><p>价格： 7000-9000</p>', '0', null, null, '14', '1');
INSERT INTO `goods_info` VALUES ('1059', null, '明代官窑贯耳瓶', '11.5cm*22.7cm*1个,官窑瓷器,明代,9000-1.5w', '<p>\n    编号：03-123\n</p>\n<p>\n    尺寸：11.5cm*22.7cm*1个\n</p>\n<p>\n    材质：官窑瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 9000-1.5w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1060', null, '清代粉彩玉壶春瓶', '24cm*40.5cm*1个,粉彩瓷器,清代,4w-7w', '<p>\n    编号：03-122\n</p>\n<p>\n    尺寸：24cm*40.5cm*1个\n</p>\n<p>\n    材质：粉彩瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 4w-7w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1061', null, '清代粉彩菊吐秋艳茶具一套', '1壶*4杯*1茶盘,茶具瓷器,清代慎德堂款,9w-12w', '<p>\n    编号：03--12\n</p>\n<p>\n    尺寸：1壶*4杯*1茶盘\n</p>\n<p>\n    材质：茶具瓷器\n</p>\n<p>\n    年号： 清代慎德堂款\n</p>\n<p>\n    价格： 9w-12w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1062', null, '清代哥窑壶', '15cm*9cm*1个,哥窑瓷器,清代,3000-6000', '<p>\n    编号：03-119\n</p>\n<p>\n    尺寸：15cm*9cm*1个\n</p>\n<p>\n    材质：哥窑瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 3000-6000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1063', null, '明代青花一笔点画花卉仙人罐', '9cm*10.7cm*1个,青花瓷器,明代,无底价', '<p>\n    编号：03-118\n</p>\n<p>\n    尺寸：9cm*10.7cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1064', null, '清代仿定窑花卉斗笠碗', '20.7cm*5.5.cm*1个,定窑瓷器,清代,8000-1.5w', '<p>\n    编号：03-117\n</p>\n<p>\n    尺寸：20.7cm*5.5.cm*1个\n</p>\n<p>\n    材质：定窑瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 8000-1.5w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1065', null, '民国张义泰果盘一套', '27cm*27cm*1套,瓷器,民国,8w-10w', '<p>\n    编号：03-115\n</p>\n<p>\n    尺寸：27cm*27cm*1套\n</p>\n<p>\n    材质：瓷器\n</p>\n<p>\n    年号： 民国\n</p>\n<p>\n    价格： 8w-10w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1066', null, '清代粉彩诗文笔筒一对', '11.7cm*11.4cm*2个,粉彩瓷器,清代,6w-9w', '<p>\n    编号：03-114\n</p>\n<p>\n    尺寸：11.7cm*11.4cm*2个\n</p>\n<p>\n    材质：粉彩瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 6w-9w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1067', null, '明代青花釉里红云龙纹罐', '14cm*19.5cm*1个,青花瓷器,明代,7w-9w', '<p>\n    编号：03-113\n</p>\n<p>\n    尺寸：14cm*19.5cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 7w-9w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1068', null, '清代青花花卉纹插香', '11cm*11cm*1个,青花瓷器,清代,4000-8000', '<p>\n    编号：03--110\n</p>\n<p>\n    尺寸：11cm*11cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 4000-8000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1069', null, '清代朱砂釉象耳瓶', '24.5cm*13.5cm*1个,朱砂釉瓷器,大清康熙年制 ,1w-1.6w', '<p>\n    编号：03--11\n</p>\n<p>\n    尺寸：24.5cm*13.5cm*1个\n</p>\n<p>\n    材质：朱砂釉瓷器\n</p>\n<p>\n    年号： 大清康熙年制 \n</p>\n<p>\n    价格： 1w-1.6w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1070', null, '清代青花乾隆通宝水滴', '7.7cm*6.5cm*1个,青花瓷器,清代,2000-3000', '<p>\n    编号：03--109\n</p>\n<p>\n    尺寸：7.7cm*6.5cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 2000-3000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1071', null, '元代青花官窑云龙纹罐', '20cm*22cm*1个,青花瓷器,元代,20w-30w', '<p>\n    编号：03-108\n</p>\n<p>\n    尺寸：20cm*22cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 元代\n</p>\n<p>\n    价格： 20w-30w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1072', null, '明代青花斗笠形花卉杯*4', '7.2cm*2.7cm*4个,青花瓷器,明代,2000-4000', '<p>\n    编号：03-107\n</p>\n<p>\n    尺寸：7.2cm*2.7cm*4个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 2000-4000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1073', null, '明代青花花卉斗笠杯*1', '8.1cm*3.5cm*1个,青花瓷器,明代,无底价', '<p>\n    编号：03-106\n</p>\n<p>\n    尺寸：8.1cm*3.5cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1074', null, '明代青花梵文杯*6', '7.2cm*3.2cm*6个,青花瓷器,明代,无底价', '<p>\n    编号：03-105/164\n</p>\n<p>\n    尺寸：7.2cm*3.2cm*6个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1075', null, '明代青花缠枝牡丹纹杯*1', '7.2cm*3.2cm*1个,青花瓷器,明代,1000-2000', '<p>\n    编号：03-104\n</p>\n<p>\n    尺寸：7.2cm*3.2cm*1个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 1000-2000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1076', null, '清代青花花卉开光凤纹杯*3', '7.2cm*3.2cm*3个,青花瓷器,清代,无底价', '<p>\n    编号：03-103\n</p>\n<p>\n    尺寸：7.2cm*3.2cm*3个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1077', null, '明代青花釉里红荷花杯*2', '6.8cm*4.8cm*2个,青花瓷器,明代,2000-4000', '<p>\n    编号：03-102\n</p>\n<p>\n    尺寸：6.8cm*4.8cm*2个\n</p>\n<p>\n    材质：青花瓷器\n</p>\n<p>\n    年号： 明代\n</p>\n<p>\n    价格： 2000-4000\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1078', null, '清代朱砂釉象耳赏瓶', '23.8cm*12.5cm*1个,朱砂釉瓷器,大清康熙年制,1w-1.6w', '<p>\n    编号：03--10-1\n</p>\n<p>\n    尺寸：23.8cm*12.5cm*1个\n</p>\n<p>\n    材质：朱砂釉瓷器\n</p>\n<p>\n    年号： 大清康熙年制\n</p>\n<p>\n    价格： 1w-1.6w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1079', null, '清代翡翠母子情深摆件', '18cm*23.5cm,翡翠,清代,无底价', '<p>\n    编号：02--1\n</p>\n<p>\n    尺寸：18cm*23.5cm\n</p>\n<p>\n    材质：翡翠\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1080', null, '清代翡翠多子多福摆件', '14cm*22.3cm,翡翠,清代,5w-8w', '<p>\n    编号：02--2\n</p>\n<p>\n    尺寸：14cm*22.3cm\n</p>\n<p>\n    材质：翡翠\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 5w-8w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1081', null, '清代翡翠净瓶观音', '6cm*18cm,翡翠,清代,无底价', '<p>\n    编号：02--3\n</p>\n<p>\n    尺寸：6cm*18cm\n</p>\n<p>\n    材质：翡翠\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1082', null, '清代翡翠观音挂件', '4cm*5.8cm,翡翠,清代,无底价', '<p>\n    编号：02--5\n</p>\n<p>\n    尺寸：4cm*5.8cm\n</p>\n<p>\n    材质：翡翠\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1083', null, '现代豆绿种翡翠弥勒佛', '4.1cm*4.7cm,翡翠,现代,25w-30w', '<p>\n    编号：02--8\n</p>\n<p>\n    尺寸：4.1cm*4.7cm\n</p>\n<p>\n    材质：翡翠\n</p>\n<p>\n    年号： 现代\n</p>\n<p>\n    价格： 25w-30w\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1084', null, '清代翡翠生肖羊', '5.7cm*5.2cm,翡翠,清代,无底价', '<p>\n    编号：02--9\n</p>\n<p>\n    尺寸：5.7cm*5.2cm\n</p>\n<p>\n    材质：翡翠\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1085', null, '清代翡翠生肖狗', '5.7cm*5.2cm,翡翠,清代,无底价', '<p>\n    编号：02--10\n</p>\n<p>\n    尺寸：5.7cm*5.2cm\n</p>\n<p>\n    材质：翡翠\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1086', null, '清代翡翠饰件', '1.1cm*8.3cm,翡翠,清代,无底价', '<p>\n    编号：02--11\n</p>\n<p>\n    尺寸：1.1cm*8.3cm\n</p>\n<p>\n    材质：翡翠\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');
INSERT INTO `goods_info` VALUES ('1087', null, '清代翡翠麒麟挂件', '4cm*4.7cm,翡翠,清代,无底价', '<p>\n    编号：02--12\n</p>\n<p>\n    尺寸：4cm*4.7cm\n</p>\n<p>\n    材质：翡翠\n</p>\n<p>\n    年号： 清代\n</p>\n<p>\n    价格： 无底价\n</p>', '0', null, null, '0', '1');

-- ----------------------------
-- Table structure for goods_info_imgs
-- ----------------------------
DROP TABLE IF EXISTS `goods_info_imgs`;
CREATE TABLE `goods_info_imgs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `i_goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1219 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_info_imgs
-- ----------------------------
INSERT INTO `goods_info_imgs` VALUES ('918', null, '873', '/uploadFiles/20170817/9120c7d48b934825a143852613bde276.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('919', null, '874', '/uploadFiles/20170817/94cc457fa5034a8891ccf42e76bb9c0a.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('920', null, '875', '/uploadFiles/20170817/b2e097c74c094bbf86fb92273c5e7823.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('921', null, '876', '/uploadFiles/20170817/323ea5ca3e7943f4b53d8d17e7699282.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('922', null, '877', '/uploadFiles/20170817/3f6f16e5f771410fb30c8bf42d37a3b4.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('923', null, '878', '/uploadFiles/20170817/457ec6b56c1542b9a7ef87be7b6ca234.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('924', null, '879', '/uploadFiles/20170817/4352855ca3ef4695a7bde20fcfa95185.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('925', null, '879', '/uploadFiles/20170817/87bf257ff0824d829adeabbb5eaf2588.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('926', null, '880', '/uploadFiles/20170817/674d12c049604d94a141d812e48fa860.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('927', null, '881', '/uploadFiles/20170817/0a9d0b4d5301482f8eb3b0df38c36005.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('928', null, '882', '/uploadFiles/20170817/8496bc5cd2a94c21bfd4aa7f74638395.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('929', null, '882', '/uploadFiles/20170817/edffd55c8363429a89afb597ac875bb9.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('930', null, '883', '/uploadFiles/20170817/bd8d898807c74869acedaae3ac8bb646.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('931', null, '883', '/uploadFiles/20170817/d2c0bc2ca97f42f4b85c7cfc99a525db.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('932', null, '884', '/uploadFiles/20170817/b894b8cd1ff4430b9a176bd0921b1715.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('933', null, '885', '/uploadFiles/20170817/46e1a293a6f04a359644a29cc48672d4.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('934', null, '886', '/uploadFiles/20170817/c0f3fe3c8bd747318aca03b7b1421292.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('935', null, '887', '/uploadFiles/20170817/b92dfa598fc94bc29fc0b2b1d83992b0.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('936', null, '888', '/uploadFiles/20170817/5c9c44cd02a24abe8809bc395d5a6442.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('937', null, '889', '/uploadFiles/20170817/a9470bc099134cea88b3be1d9443d145.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('938', null, '890', '/uploadFiles/20170817/f68259b0037f47d39f5fb080aebcd815.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('939', null, '891', '/uploadFiles/20170817/3c7b3650532d4fdf83e51f8228fe318a.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('940', null, '892', '/uploadFiles/20170817/6ff3b27d34a648f49e548e5827facf65.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('941', null, '893', '/uploadFiles/20170817/a792a283b44941cdb819700712c11348.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('942', null, '893', '/uploadFiles/20170817/bdcef6282b6a44fe928097b76d89e938.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('943', null, '893', '/uploadFiles/20170817/aadbe3d24fe94f74b6bb0e7a7fc52f5a.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('944', null, '894', '/uploadFiles/20170817/7dd07eeef7144bb2919f839f52521363.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('945', null, '895', '/uploadFiles/20170817/4d741417519b428b8de1efc1acad1fd5.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('946', null, '896', '/uploadFiles/20170817/035aa52f4ba048adb94b704669d4f98f.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('947', null, '896', '/uploadFiles/20170817/888b36142cc441a882e38a21857afe5c.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('948', null, '897', '/uploadFiles/20170817/9180816399e34aab880b3b2daa4c36fd.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('949', null, '898', '/uploadFiles/20170817/cb299569cffb41248cf3b7a22ef03bb9.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('950', null, '899', '/uploadFiles/20170817/48751d036aba4479921e4b30cbac4b21.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('951', null, '899', '/uploadFiles/20170817/78ed84adcbae49bc9bb98231b096d416.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('952', null, '900', '/uploadFiles/20170817/076c214541bb4dcb9e78c257420b5c41.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('953', null, '901', '/uploadFiles/20170817/5e7425ba6c4747d4b9141128c3c5f300.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('954', null, '902', '/uploadFiles/20170817/388a2935ce7343cdadcc26579420471b.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('955', null, '903', '/uploadFiles/20170817/441358bacf87476e82a98722b93aaa65.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('956', null, '904', '/uploadFiles/20170817/e12dbef04bc44be58381803144cc1835.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('957', null, '905', '/uploadFiles/20170817/b1f6d3ea0a5448ff8b587ffb89a33e76.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('958', null, '906', '/uploadFiles/20170817/60ef021daaa14ba0858d4448a8f6c0c4.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('959', null, '907', '/uploadFiles/20170817/6a52c9f4149149849727789c3777e7a8.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('960', null, '908', '/uploadFiles/20170817/834a2cbad7e44e308d1de42de9aa723c.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('961', null, '908', '/uploadFiles/20170817/3d2f288dfb794c4a803819ac2a676910.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('962', null, '909', '/uploadFiles/20170817/5b026e4d73014e0794231b5e85d94904.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('963', null, '910', '/uploadFiles/20170817/e5e386af02054183bb8827d1a9dd38cd.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('964', null, '911', '/uploadFiles/20170817/a50dd65f8c1e4d0f9dbeebfe611ee63d.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('965', null, '912', '/uploadFiles/20170817/cabf0042b07d420986170b1f1910102b.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('966', null, '913', '/uploadFiles/20170817/6c142a11e60841a69098a52455950730.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('967', null, '914', '/uploadFiles/20170817/0f19550d0b2a454588ab63e5b5146c41.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('968', null, '914', '/uploadFiles/20170817/afbeca7f80774744aea00c8245965426.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('969', null, '915', '/uploadFiles/20170817/5fc24301e2bc4fb98f85a7b959c8bccf.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('970', null, '915', '/uploadFiles/20170817/20552bfc6c3c4bde891136ddff180f64.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('971', null, '916', '/uploadFiles/20170817/fa6700b07b784382bb09c625b45c1746.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('972', null, '917', '/uploadFiles/20170817/9553dd4493514fd69699e4659252c91a.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('973', null, '918', '/uploadFiles/20170817/2ab4b13a53a34c4fb0ce7cb6c1f93c64.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('974', null, '919', '/uploadFiles/20170817/ebcb6bb5b5e74db3b085d2f0ee99a2d3.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('975', null, '920', '/uploadFiles/20170817/1eb3e2bb5e4044aa939c96d0a7153ebf.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('976', null, '921', '/uploadFiles/20170817/2b81ad0415544db3842ceb7e464822f9.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('977', null, '921', '/uploadFiles/20170817/8dbf22ddf7ac4100af96cccdce0cda21.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('978', null, '922', '/uploadFiles/20170817/1b84630d5f374f82bd6402e0aefaef8d.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('979', null, '922', '/uploadFiles/20170817/ac05760e16ec46f3a72b480bbebe725e.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('980', null, '923', '/uploadFiles/20170817/0e429459c82c4758a4029c91de51d2e7.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('981', null, '924', '/uploadFiles/20170817/2a5119ca71b342b0b11abe80462bb0c7.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('982', null, '925', '/uploadFiles/20170817/9ab51de237834819830d77f41855f703.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('983', null, '925', '/uploadFiles/20170817/742fd313b63542c2ba2b8df2e12cca53.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('984', null, '926', '/uploadFiles/20170817/564e3836beb448e58bac3baff992716e.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('985', null, '926', '/uploadFiles/20170817/0cea1a24bcd5437a86dc6a978f364bd8.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('986', null, '926', '/uploadFiles/20170817/cca8fb8a8147430faea54b135566f4b8.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('987', null, '926', '/uploadFiles/20170817/b0fc4a2c30f34134a184a21c675842ec.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('988', null, '926', '/uploadFiles/20170817/81fdb4b5cbd8485c9a1868aeab29fabd.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('989', null, '927', '/uploadFiles/20170817/9a9a6d14029d4b39b440be4a340940f7.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('990', null, '928', '/uploadFiles/20170817/3795f447c2534578a746dacb1dac9383.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('991', null, '928', '/uploadFiles/20170817/b91b2884f10643dc8fdf72b7dd34508b.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('992', null, '929', '/uploadFiles/20170817/c62ccbb51f564ea5b28ba21b982dfc8f.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('993', null, '930', '/uploadFiles/20170817/838ef5ec6d594a6dbb5830e56968af59.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('994', null, '930', '/uploadFiles/20170817/572a246e372c4dfdac699554b4e7038c.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('995', null, '931', '/uploadFiles/20170817/b417e82689964f119e9c9415671df7c1.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('996', null, '932', '/uploadFiles/20170817/3d5eb90e5f914ed6a21c6e16fa1029ae.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('997', null, '933', '/uploadFiles/20170817/a8e4e6bcb9814fd7be5ca1595563ad48.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('998', null, '934', '/uploadFiles/20170817/2156ecf7cb6c449a8d486a01b10c4aac.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('999', null, '935', '/uploadFiles/20170817/361cd0602d3742aa988c64aedfae16de.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1000', null, '936', '/uploadFiles/20170817/ca318f1632694cf386d78bc346765d77.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1001', null, '937', '/uploadFiles/20170817/a27d1a5703a143fd83df2531cf9f13ed.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1002', null, '938', '/uploadFiles/20170817/15fc50f6f644408087bc4428323877b9.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1003', null, '939', '/uploadFiles/20170817/c7ebfaf3c86746b8b2ed64e691ae92cb.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1004', null, '940', '/uploadFiles/20170817/47c5f7e698cc4bf3a15179850625d042.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1005', null, '941', '/uploadFiles/20170817/6ad787fd04ff4c51a31fc838de309bb7.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1006', null, '942', '/uploadFiles/20170817/8ebdeb19d6d54fd28477bb1aec8a9107.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1007', null, '943', '/uploadFiles/20170817/fed709a4941d4243a9ab9f854683e57f.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1008', null, '944', '/uploadFiles/20170817/2090bb2ab5cf424ea86ea2a3c23c268c.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1009', null, '945', '/uploadFiles/20170817/5c65bfe8f94846c09b5f3522a360d603.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1010', null, '946', '/uploadFiles/20170817/b466551a0d544b2fbc84200502ba5eca.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1011', null, '947', '/uploadFiles/20170817/0dd4befa9add44adb3b5a4ab31e8e455.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1012', null, '948', '/uploadFiles/20170817/d2e62b00f06249d4a9299a994ebe69a2.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1013', null, '948', '/uploadFiles/20170817/918c424ef4e144589140f8d4c2b45e35.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1014', null, '949', '/uploadFiles/20170817/a0887738a7d54bf78553b2453cbc435a.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1015', null, '949', '/uploadFiles/20170817/102a8bacc3b24192a7acb10a8ec2c12f.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1016', null, '950', '/uploadFiles/20170817/344d390bae004ff09829bdd0305089a9.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1017', null, '951', '/uploadFiles/20170817/b7aba645e3634205928f490919a6b0d1.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1018', null, '951', '/uploadFiles/20170817/86f1a49adcb2430487af8d18f3168d44.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1019', null, '952', '/uploadFiles/20170817/3f824a3fdeb344daba0c3b021d15ee32.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1020', null, '953', '/uploadFiles/20170817/825abbaa5a0745888a20faada1311c00.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1021', null, '953', '/uploadFiles/20170817/f2a9f6cdcc8b47d3ac964dcf29b59722.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1022', null, '954', '/uploadFiles/20170817/aea3f23ce3eb44c8b6e63d0e8d25a429.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1023', null, '954', '/uploadFiles/20170817/5c540b5eb86948c3975d2d28158479ec.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1024', null, '955', '/uploadFiles/20170817/89b0de2641f243608d22f59667fc345f.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1025', null, '956', '/uploadFiles/20170817/5219ae43a6f1474f902b0e2e667524ad.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1026', null, '957', '/uploadFiles/20170817/0da5888877314573a90300ea74bd0b3e.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1027', null, '958', '/uploadFiles/20170817/72d39e03644f49b999d595fdc9ac9ffc.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1028', null, '959', '/uploadFiles/20170817/8ddb23e65cc2433aafe7af969f370571.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1029', null, '960', '/uploadFiles/20170817/951e59fc969748e9ad84c8c7b59e3925.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1030', null, '960', '/uploadFiles/20170817/652aa9d5e8bf4c02b5174fdb6e2f5e77.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1031', null, '961', '/uploadFiles/20170817/2f9c05b1ffcb44e99c2959ef4ac95398.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1032', null, '961', '/uploadFiles/20170817/8423af96ca684774bb01a434e27b82f0.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1033', null, '962', '/uploadFiles/20170817/22656983e5764c66a74fa89ce1a51d5d.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1034', null, '962', '/uploadFiles/20170817/4a46a3158a694c45ba811ced65878e2d.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1035', null, '963', '/uploadFiles/20170817/ab02a41dd3c441e692ecc34533260790.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1036', null, '964', '/uploadFiles/20170817/0b1acf935fa24d0a85bf043b6dc08884.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1037', null, '965', '/uploadFiles/20170817/0a51a79a12d241d6ba58c51074597f48.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1038', null, '966', '/uploadFiles/20170817/13d4d9e505784166aa26e29086d6061f.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1039', null, '967', '/uploadFiles/20170817/13e4de0af1e444609e5bf1e1c8a6c5d7.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1040', null, '967', '/uploadFiles/20170817/d75e7890115442c29b9f5759e4e2a7e9.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1041', null, '968', '/uploadFiles/20170817/1f6d798a46e5460bafb06a04f46e9f67.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1042', null, '968', '/uploadFiles/20170817/cb73fab9044041ae8b3f18a042a9a554.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1043', null, '969', '/uploadFiles/20170817/63b44ddbb6004a37bbaba338fa007caf.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1044', null, '970', '/uploadFiles/20170817/252cff2fc3ab4f1181c13499f1d6928b.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1045', null, '971', '/uploadFiles/20170817/9f1989f006fc4ed5b7ff3ed1ff9e32a2.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1046', null, '972', '/uploadFiles/20170817/1e018f464c5e40ce85a6db954f2559c0.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1047', null, '972', '/uploadFiles/20170817/c79eb6b5a1c0415e9c4f4773cee341a7.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1048', null, '972', '/uploadFiles/20170817/839e64fc40cf493cbc0cd00c2c6876e4.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1049', null, '973', '/uploadFiles/20170817/65a5a461ac274cd2912963533290a0af.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1050', null, '973', '/uploadFiles/20170817/81f72103cb8b4d98a18b51fa87a6f978.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1051', null, '973', '/uploadFiles/20170817/77a868296a234978aff0cd5b044ec305.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1052', null, '974', '/uploadFiles/20170817/6ded424183824e868670a85d8bf556eb.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1053', null, '975', '/uploadFiles/20170817/c2ffd051ef9444de9752ba829260e503.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1054', null, '975', '/uploadFiles/20170817/5f08731a99264ac2a3576185890125d7.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1055', null, '975', '/uploadFiles/20170817/f79297b05f4b4ab08e5b3370ea4312a6.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1056', null, '976', '/uploadFiles/20170817/e55687977d7841e19c75cf68564d0f3c.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1057', null, '977', '/uploadFiles/20170817/6b70eb42d7a74105bc4f2087ebb1623d.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1058', null, '977', '/uploadFiles/20170817/d2cadf721b134e2eb226b9adde1a0e39.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1059', null, '977', '/uploadFiles/20170817/b2431c0e59f6459c9732197c784eda87.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1060', null, '978', '/uploadFiles/20170817/51e9e65bd0a34485805f613130eece72.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1061', null, '978', '/uploadFiles/20170817/9914ed86f4064950826ac63306723e95.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1062', null, '979', '/uploadFiles/20170817/2551a39beb3b4787bc02954c8e49dc61.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1063', null, '979', '/uploadFiles/20170817/30fbbb87a4294206978052f2322ba9dc.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1064', null, '980', '/uploadFiles/20170817/856ce36ad4094254aad91c92ef262c16.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1065', null, '981', '/uploadFiles/20170817/712c957bac5f4657a4f1fae23ffec90d.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1066', null, '982', '/uploadFiles/20170817/ec73e40e81ae497fa5872f5f7e063e2c.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1067', null, '983', '/uploadFiles/20170817/04a1fbe7625c474aae05d29638d930e0.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1068', null, '984', '/uploadFiles/20170817/460aad2da488493288e677d018fa87df.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1069', null, '985', '/uploadFiles/20170817/617b7e33b3fe413797b43a91faab802b.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1070', null, '986', '/uploadFiles/20170817/d946c9bf313046de9a439fc6d62cf93f.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1071', null, '987', '/uploadFiles/20170817/ac2ce35f31e74d32b47fb3cec8eb8a2a.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1072', null, '988', '/uploadFiles/20170817/f74e057e125c453cac5f325326838311.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1073', null, '989', '/uploadFiles/20170817/9d0ae0c802194db0b529bf53a3c5de49.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1074', null, '990', '/uploadFiles/20170817/bce5c662d210455085a0a7af07fee9fa.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1075', null, '991', '/uploadFiles/20170817/3b51482e553c42819cb2b2cfb4391308.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1076', null, '992', '/uploadFiles/20170817/9bbd01edaaa64e3da22ab4cc13bb8542.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1077', null, '993', '/uploadFiles/20170817/8418062d64c6423f99989b1423410581.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1078', null, '994', '/uploadFiles/20170817/9abbaeeb4d2e439b813b78546bc1c98f.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1079', null, '995', '/uploadFiles/20170817/60b373cf800442a3a8e5e931cbe427f0.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1080', null, '996', '/uploadFiles/20170817/4edaec4c4d37426d9a066fd583725685.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1081', null, '996', '/uploadFiles/20170817/d86c0cc87c6c44b78159d86187f8559b.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1082', null, '997', '/uploadFiles/20170817/6856892624f14c9daa7c1fbb076d1e36.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1083', null, '998', '/uploadFiles/20170817/db1e2cfeeb194cf293a9129ea17e864d.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1084', null, '998', '/uploadFiles/20170817/af088292fc0548728b5912bba60eeafa.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1085', null, '998', '/uploadFiles/20170817/136a103c6c80457c874470f22558a7e1.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1086', null, '999', '/uploadFiles/20170817/b7eed82d73cd433d883dfa798b659547.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1087', null, '999', '/uploadFiles/20170817/3d51548e5aff4ed9aaa7e1461fb84639.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1088', null, '1000', '/uploadFiles/20170817/7662c31f3d52445fa139149e05959a9e.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1089', null, '1001', '/uploadFiles/20170817/f97747f4e35f4b5f8600d7e38add5ad4.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1090', null, '1002', '/uploadFiles/20170817/c476889c9a0c49d9a20108b87ae1bff5.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1091', null, '1002', '/uploadFiles/20170817/cc15f800bcb54505b207ac9253a3b747.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1092', null, '1003', '/uploadFiles/20170817/93bb625dc3d2417aa97a00c5d07a185b.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1093', null, '1003', '/uploadFiles/20170817/39c9f4185f5447e68746d2dc2e4d3afd.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1094', null, '1004', '/uploadFiles/20170817/35481230e7394d2a9e2ab341edcc2fb7.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1095', null, '1004', '/uploadFiles/20170817/360404b1ede04f088cd04aea9c41bd77.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1096', null, '1004', '/uploadFiles/20170817/9e08f288a1b940d5bb8dd90bca390937.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1097', null, '1005', '/uploadFiles/20170817/97a675f58938404ca17de8ba5ad9e2b4.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1098', null, '1005', '/uploadFiles/20170817/63b15b2e8a904af6b8f385712407d1c3.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1099', null, '1005', '/uploadFiles/20170817/4a0bcb95aba9428c95c87c7dbb023ab7.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1100', null, '1006', '/uploadFiles/20170817/92ef44e6a55d4ea3a72a32be485fbfd5.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1101', null, '1006', '/uploadFiles/20170817/3d78134bccdf4485a72a22db6bd84e48.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1102', null, '1007', '/uploadFiles/20170817/77c87eb299114e7b8eb61056f0bc2332.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1103', null, '1007', '/uploadFiles/20170817/6fcbe10d524848c6a90bc633911ecc49.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1104', null, '1007', '/uploadFiles/20170817/5a8ad250b9e74a39a683e3ec3fbd7614.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1105', null, '1008', '/uploadFiles/20170817/709af2626dfa4bdd907b7ef00df2735e.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1106', null, '1008', '/uploadFiles/20170817/61215ecc4fb64baf926d86c630b3c4a3.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1107', null, '1009', '/uploadFiles/20170817/2a494b9d26e34f408b5fead8ec319799.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1108', null, '1009', '/uploadFiles/20170817/300c6e8e206945cda0e888c46a754452.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1109', null, '1009', '/uploadFiles/20170817/9ea94babc71248749f4b0ff44913b2b6.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1110', null, '1010', '/uploadFiles/20170817/4c23fa4c4d414d07a2739f8e6b260117.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1111', null, '1010', '/uploadFiles/20170817/d3975a6aeb594cb980be7d3937f10a44.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1112', null, '1011', '/uploadFiles/20170817/9f506995c2c54fb9a4fb4c90d6efbb9a.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1113', null, '1011', '/uploadFiles/20170817/737236eee0634d68ad067cc1f5d37c93.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1114', null, '1012', '/uploadFiles/20170817/d7213c733dff43d8bf5d9f6bb91ccee6.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1115', null, '1012', '/uploadFiles/20170817/2cc186bbd61645d1830d4dd2c289a476.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1116', null, '1013', '/uploadFiles/20170817/d3c64f613b234e089ba124b65b316c32.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1117', null, '1013', '/uploadFiles/20170817/4f9265efda3f47359226e3447f74fd41.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1118', null, '1014', '/uploadFiles/20170817/6eb8ca146e534859ab8b8a489a59ef39.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1119', null, '1014', '/uploadFiles/20170817/05f261bda9c24c32be1f4de63a0992a2.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1120', null, '1015', '/uploadFiles/20170817/7d67fee4f8974f26aeefcaaafa446036.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1121', null, '1016', '/uploadFiles/20170817/c06592c4a0304f53b5c4b5d2bb1ddbff.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1122', null, '1017', '/uploadFiles/20170817/6e7c93d3fdfb47c98952d946918236a2.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1123', null, '1018', '/uploadFiles/20170817/8af015f7cdec42fbab162b04d6bf98ee.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1124', null, '1019', '/uploadFiles/20170817/acf35ee7eb7841e0981946742e559e9e.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1125', null, '1020', '/uploadFiles/20170817/65efab388351427ba5a2ef532f29d9fc.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1126', null, '1020', '/uploadFiles/20170817/66edba3ad85d48cb821da7be565a2243.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1127', null, '1021', '/uploadFiles/20170817/1dc49e3c84344875b004e571bc320318.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1128', null, '1021', '/uploadFiles/20170817/8b5d0ba70d2b44a2bfea30ca7b61b3d2.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1129', null, '1022', '/uploadFiles/20170817/97728dab4b904e5a8d2ef1aeca398af7.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1130', null, '1023', '/uploadFiles/20170817/89db390372454b2682b0bfaf41b4cd70.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1131', null, '1024', '/uploadFiles/20170817/1edd10dd9585471a94354696e516431e.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1132', null, '1025', '/uploadFiles/20170817/a149d4db15594a0f8fe10d89813aadd1.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1133', null, '1026', '/uploadFiles/20170817/fb8313e3a89f458799b89b994b572507.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1134', null, '1027', '/uploadFiles/20170817/829815f303c24074bb226ab700c67551.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1135', null, '1028', '/uploadFiles/20170817/e203f42cf9ec47b0bdc9ca2ce337649b.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1136', null, '1029', '/uploadFiles/20170817/0a3609bbf5ab47e1a97ef7d5e9826680.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1137', null, '1030', '/uploadFiles/20170817/2593b1e9e53b4cdda47b7ff543e44e74.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1138', null, '1031', '/uploadFiles/20170817/c6621e7db43346cd8f1c8c883dd0daf2.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1139', null, '1033', '/uploadFiles/20170817/a812aa5ae09d422886b2c8c30e0cfbdd.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1140', null, '1034', '/uploadFiles/20170817/75fe787ad5e543219a560b371b5447f6.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1141', null, '1035', '/uploadFiles/20170817/1cfd1cf68b474eeb80afa978b541f0dc.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1142', null, '1036', '/uploadFiles/20170817/4bbb5c9f67b04214a8a048aaab1efd31.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1143', null, '1037', '/uploadFiles/20170817/bb23d4dc4bb449e1851eee535d14556e.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1144', null, '1038', '/uploadFiles/20170817/be492da89e704e4e85bf9489e04be45c.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1145', null, '1039', '/uploadFiles/20170817/5b9bc717aae14072b2bec704419e42c2.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1146', null, '1039', '/uploadFiles/20170817/10a00336e72748fb87bc40562d57d91e.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1147', null, '1040', '/uploadFiles/20170817/16d3d426326341f5b8178a5e2b36e588.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1148', null, '1041', '/uploadFiles/20170817/f5c7a239232f4133bcee3fc6d1d29bb2.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1149', null, '1042', '/uploadFiles/20170817/1461ecac77aa450cace3b8d349bf9eb5.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1150', null, '1043', '/uploadFiles/20170817/9ece2b2e16bb4d788a6425094e712da7.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1151', null, '1044', '/uploadFiles/20170817/d71d24330e234bd29c4a3b6d8a103d7a.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1152', null, '1045', '/uploadFiles/20170817/bd55e43d7c3c42679ff17634240bf114.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1153', null, '1045', '/uploadFiles/20170817/bfca546888ca445aa1cd0e9b32d821f2.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1154', null, '1046', '/uploadFiles/20170817/884cd2b4541f40f091a060c9c73d77d0.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1155', null, '1047', '/uploadFiles/20170817/13de0b9043034e6caf68736a95a0155b.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1156', null, '1047', '/uploadFiles/20170817/c71ee2c6fc6a4b4985fb30b07ee68a97.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1157', null, '1048', '/uploadFiles/20170817/66b3860218d44d37a085d1d433dc2088.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1158', null, '1049', '/uploadFiles/20170817/b5d4ad8f165944a4b7ddf9f80cc3320f.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1159', null, '1049', '/uploadFiles/20170817/f6f255e0cdc0411ab597d0b3a42421a3.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1160', null, '1049', '/uploadFiles/20170817/cb5760c6fccf44b78cd367b83b4b74cb.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1161', null, '1049', '/uploadFiles/20170817/43e2f38f73b143faa0e72d9f976c6a8d.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1162', null, '1050', '/uploadFiles/20170817/6babd77ad5d34861958222cc2d02d7b6.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1163', null, '1050', '/uploadFiles/20170817/9f2d9af1955a45ffa1b381129399fed4.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1164', null, '1050', '/uploadFiles/20170817/bebb76e8c6554cacbcb14353dfa88bf1.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1165', null, '1051', '/uploadFiles/20170817/098b9a46bb224bbdbf40490aac731089.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1166', null, '1051', '/uploadFiles/20170817/999c502aca7443b9b9b8967962239d14.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1167', null, '1052', '/uploadFiles/20170817/41e0e8b6cb5b4dcda14f6172655914e4.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1168', null, '1053', '/uploadFiles/20170817/522c0b2b55ec4bf2a9f96b7b72974125.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1169', null, '1054', '/uploadFiles/20170817/a5dcc36a37e942fd87ef71079a29bab4.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1170', null, '1054', '/uploadFiles/20170817/151d460f88e94f78b08c3d22f566f333.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1171', null, '1054', '/uploadFiles/20170817/5c0307f1e0684d5a84b8bd7913d0207f.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1172', null, '1055', '/uploadFiles/20170817/a0b8ab4252094c18882d8b6864738cd1.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1173', null, '1055', '/uploadFiles/20170817/0f6f2aa024fc4099ab5395ad2a1bf959.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1174', null, '1055', '/uploadFiles/20170817/565c2daac75f4407832ca1f9c66801e0.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1175', null, '1056', '/uploadFiles/20170817/b25e14ec9e14467f985be1fcd020711c.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1176', null, '1057', '/uploadFiles/20170817/a0ca822afcac41b194079d2b84a362c6.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1177', null, '1057', '/uploadFiles/20170817/39fb0b13cfad4152af5a7bec5326b5d0.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1178', null, '1058', '/uploadFiles/20170817/99ea9fc7abf24dc18dcf3dae0cabd03f.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1179', null, '1058', '/uploadFiles/20170817/5d89880443ad481d91d631b700b238d0.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1180', null, '1059', '/uploadFiles/20170817/b031568a53e04188955b62cf5f7bcb72.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1181', null, '1059', '/uploadFiles/20170817/0f84a18703c14882be9113aae481d4eb.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1182', null, '1060', '/uploadFiles/20170817/f8f0ba1856a446dc935abb5b2e376546.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1183', null, '1060', '/uploadFiles/20170817/35e2e53fa6e94da281b8a2354716ac34.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1184', null, '1061', '/uploadFiles/20170817/e1b050d7e8604efe95711a491d608fbb.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1185', null, '1061', '/uploadFiles/20170817/dc3403a2065d4921a5b533d9ffa68574.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1186', null, '1062', '/uploadFiles/20170817/a0fbf8f74b5b49c084b4b4003fec8317.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1187', null, '1063', '/uploadFiles/20170817/29af0ec412f247dc8fac9f8f7895c1a2.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1188', null, '1064', '/uploadFiles/20170817/e85d56db19b143dbbea308740d1d94fe.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1189', null, '1064', '/uploadFiles/20170817/4c92039632bd47948fe78bec1e090319.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1190', null, '1065', '/uploadFiles/20170817/49c9c6aa131147b2b7c324189a384157.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1191', null, '1066', '/uploadFiles/20170817/9105d76b1cf14a61820565ff92eabf3d.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1192', null, '1067', '/uploadFiles/20170817/64a1117347a4465a9ff01c8064d063df.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1193', null, '1068', '/uploadFiles/20170817/3c4f880f89cb4ba9be3643fca856ea57.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1194', null, '1069', '/uploadFiles/20170817/048da97df9234ba88dfa5e3e629521df.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1195', null, '1069', '/uploadFiles/20170817/ce3050212e814ee69194cb712629d676.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1196', null, '1070', '/uploadFiles/20170817/b12119b9464e419a81169073b923ac47.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1197', null, '1071', '/uploadFiles/20170817/2b308abf98964970a59009ec4971c3ca.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1198', null, '1072', '/uploadFiles/20170817/9439f1293a7942fdbad75c645a00dd4a.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1199', null, '1073', '/uploadFiles/20170817/3cb6ce2a7a5647ce9c27de97d7b2500b.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1200', null, '1073', '/uploadFiles/20170817/5bbfce8e31034f4aa7de31c606a7dbff.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1201', null, '1074', '/uploadFiles/20170817/04ace3cbd276409a929975fff5c822d3.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1202', null, '1075', '/uploadFiles/20170817/0f5e37f1b6f343f59db4da8c6e22835b.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1203', null, '1076', '/uploadFiles/20170817/b03270d0c4b849479dd9c31ae5ee13e8.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1204', null, '1077', '/uploadFiles/20170817/19eaf43a20f74e3da09da8038a27a3de.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1205', null, '1078', '/uploadFiles/20170817/c238bdfd4d344273a8057e8d7ee5e082.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1206', null, '1078', '/uploadFiles/20170817/5f5a9e3188b84a85888b2d8ae91915b0.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1212', null, '1080', '/uploadFiles/20170817/07f2435df717457eb293ca3ca090733d.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1211', null, '1079', '/uploadFiles/20170817/69862be2d8ad41ee9f16850f55b703e8.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1213', null, '1082', '/uploadFiles/20170817/33b0205709774254b2c1cf5b844482df.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1214', null, '1083', '/uploadFiles/20170817/69e9941352644332a5c89924f5f89947.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1215', null, '1084', '/uploadFiles/20170817/bdc4be1b984c4ed88d7d4ada0f7e9bf1.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1216', null, '1085', '/uploadFiles/20170817/ab0acde7e64f4eacaf26a46a07713b68.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1217', null, '1086', '/uploadFiles/20170817/f5176ffef39741eaa29d832c7a17bdaf.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('1218', null, '1087', '/uploadFiles/20170817/d2f8077a89f647188e9ac9bfae1c0d0f.jpg', '0');

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `synopsis_html` text,
  `type` int(1) DEFAULT '1' COMMENT '1=发布；2=下架',
  `title_img` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='咨询';

-- ----------------------------
-- Records of information
-- ----------------------------
INSERT INTO `information` VALUES ('3', '2017-07-20 18:04:22', '2017春季艺术品拍卖会——北京嘉里大酒店', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; color: rgb(35, 35, 35); font-family: 微软雅黑, &quot;Microsoft Yahei&quot;; font-size: 14px; white-space: normal; line-height: 20px;\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">时间 &nbsp;| &nbsp;6月16-17日&nbsp;<br/>地点 &nbsp;| &nbsp;北京嘉里大酒店（北京市朝阳区光华路1号</strong><strong style=\"margin: 0px; padding: 0px; border: 0px;\">）</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; color: rgb(35, 35, 35); font-family: 微软雅黑, &quot;Microsoft Yahei&quot;; font-size: 14px; white-space: normal; line-height: 20px;\">&nbsp;</p><hr/><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; color: rgb(35, 35, 35); font-family: 微软雅黑, &quot;Microsoft Yahei&quot;; font-size: 14px; white-space: normal;\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; color: rgb(35, 35, 35); font-family: 微软雅黑, &quot;Microsoft Yahei&quot;; font-size: 14px; white-space: normal; line-height: 25.6px; text-align: justify;\">中贸圣佳2017春拍将于北京嘉里大酒店（北京市朝阳区光华路1号）举行，16-17日预展，18-19日拍卖。本届春拍首次推出了“璀璨——中国古代艺术珍品及宫廷器物夜场”、“天籁——古琴专场”、“望海山楼—私人收藏专场”、“明月前身—燕居韵物志·文房专场”和“璞石—国石篆刻专场”。不论是从场景拍摄还是学术挖掘上，都力求做到极致，不得不承认，这是一场值得期待的艺术盛宴！</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; color: rgb(35, 35, 35); font-family: 微软雅黑, &quot;Microsoft Yahei&quot;; font-size: 14px; white-space: normal; line-height: 25.6px; text-align: justify;\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; color: rgb(35, 35, 35); font-family: 微软雅黑, &quot;Microsoft Yahei&quot;; font-size: 14px; white-space: normal; line-height: 25.6px; text-align: justify;\">除此之外的“藏珍”、“集萃”、“斫木”作为中贸圣佳的传统板块，分别以瓷器、杂项、家具为主题，自推出以来就以极高的品质受到海内外藏家的高度认可。品类齐全，拍品多传承有序，或为国营文物商店旧藏、或为名家旧藏、或是记录清晰明确，与往届相比亦不遑多让。</p><p><br/></p>', '1', 'http://www.zmsj.cc/asset/mxupload/up0419493001499140136.jpg');
INSERT INTO `information` VALUES ('2', '2017-07-20 18:18:59', '北京保利·盛京艺术品拍卖会', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; word-break: break-all; color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"word-break: break-all; font-size: 16px;\"><strong style=\"word-break: break-all;\">预展时间</strong></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; word-break: break-all; color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"word-break: break-all; font-size: 16px;\">2017年7月29日-8月2日（9:00-17:00）</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; word-break: break-all; color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><br/><span style=\"word-break: break-all; font-size: 16px;\"><strong style=\"word-break: break-all;\">预展地点</strong></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; word-break: break-all; color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"word-break: break-all; font-size: 16px;\">盛京保利文化中心44层</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; word-break: break-all; color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"word-break: break-all; font-size: 16px;\">（沈阳市和平区南二马路40号）</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; word-break: break-all; color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"word-break: break-all; font-size: 16px;\">&nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; word-break: break-all; color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"word-break: break-all; font-size: 16px;\"><strong style=\"word-break: break-all;\">拍卖时间</strong></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; word-break: break-all; color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"word-break: break-all; font-size: 16px;\">2017年8月2日&nbsp; 14:00</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; word-break: break-all; color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><br/><span style=\"word-break: break-all; font-size: 16px;\"><strong style=\"word-break: break-all;\">拍卖地点</strong></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; word-break: break-all; color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"word-break: break-all; font-size: 16px;\">盛京保利文化中心3层多功能厅</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; word-break: break-all; color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"word-break: break-all; font-size: 16px;\">（沈阳市和平区南二马路40号）</span></p><p><br/></p>', '1', '/uploadFilesByBaidu/20170720/1500545885998094729.jpg');

-- ----------------------------
-- Table structure for other_info
-- ----------------------------
DROP TABLE IF EXISTS `other_info`;
CREATE TABLE `other_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `synopsis_html` text,
  `type` int(1) DEFAULT NULL COMMENT '1=发布；2=下架',
  `title_img` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='其他信息';

-- ----------------------------
-- Records of other_info
-- ----------------------------
INSERT INTO `other_info` VALUES ('1', null, '公司简介', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; color: rgb(255, 255, 255); font-family: 微软雅黑, &quot;Microsoft Yahei&quot;; white-space: normal;\">\r\n    <span style=\"color: rgb(0, 0, 0);\">中贸圣佳国际拍卖有限公司是一家国际综合性拍卖公司，于1995年在国家工商总局登记成立， 注册资本为3000万元人民币。中贸圣佳是国内仅有的两家持有全国拍卖资格的拍卖公司之一。</span>\r\n</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; color: rgb(255, 255, 255); font-family: 微软雅黑, &quot;Microsoft Yahei&quot;; white-space: normal;\">\r\n    <br/><span style=\"color: rgb(0, 0, 0);\">中贸圣佳从事拍卖业务的宗旨在于提升中国传统文化并促进和其他国家的文化交流。我们和中国和海外的艺术家、收藏家、文化和艺术博物馆保持着密切的联系。我们的专家和国家级评估大师确保公司向客户提供的是最高质量的评估服务，保证拍卖品货真价实，并始终做到公平交易。在过去的21年中，中贸圣佳已成功地举办了数十次大规模的艺术拍卖会，出售的收藏品多达数十万件。与此同时，中贸圣佳在2002年接受三家中国企业的委托，帮助它们建立自己的博物馆。</span>\r\n</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; color: rgb(255, 255, 255); font-family: 微软雅黑, &quot;Microsoft Yahei&quot;; white-space: normal;\">\r\n    <br/><span style=\"color: rgb(0, 0, 0);\">在艺术品拍卖方面，2002年，中贸圣佳将宋代米芾的“研山铭”回流中国，国家文物局首次以3000万元将此国宝级文物拍得。这是财政部首次为单件艺术精品拨款。清乾隆粉彩山水如意万代琵琶尊在2002年中贸圣佳秋拍中以1122万的成交价。2009年，在“十五周年庆典艺术品拍卖会”上，清代徐扬1760年作 《平定西域献俘礼图》手卷以1.344亿成交，刷新了中国书画拍卖纪录。</span>\r\n</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; color: rgb(255, 255, 255); font-family: 微软雅黑, &quot;Microsoft Yahei&quot;; white-space: normal;\">\r\n    <br/><span style=\"color: rgb(0, 0, 0);\">此外，2002年7月，朱总理批准中贸圣佳接受财政部的委托拍卖相关资产。中贸圣佳在首次拍卖中就成功地拍出了所有没收的财产。2003年，中贸圣佳受北京法院委托成功拍卖了北京最大的房地产楼寓共两亿多元。</span>\r\n</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; color: rgb(255, 255, 255); font-family: 微软雅黑, &quot;Microsoft Yahei&quot;; white-space: normal;\">\r\n    <br/><span style=\"color: rgb(0, 0, 0);\">在公开、公平和友善服务的基础上，中贸圣佳一直追求客户至上的理念，始终保持诚信，在此基础上向客户提供优质服务。我们的专业工作作风已赢得了市场的广泛认可和尊敬。</span>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '1', 'http://www.comfast.cn/upload/201411/24/201411241757546556.jpg');
INSERT INTO `other_info` VALUES ('2', null, '联系我们', '<p style=\"font-family: 微软雅黑, 黑体; font-size: 14px; white-space: normal;\">\r\n    南京经典拍卖有限公司<br/>地址：南京市中山北路30号城市名人酒店43层<br/>送拍预约、咨询：86-25-83739973-806/025-83739073<br/>中国书画部：86-25-83601039-805\r\n</p>\r\n<p style=\"font-family: 微软雅黑, 黑体; font-size: 14px; white-space: normal;\">\r\n    财务部：86-25-83602329<br/>库房部：86-25-83739973-817<br/>设计部：86-25-83739973-809<br/>公司传真：86-25-83739973-815<br/>邮箱：<a href=\"mailto:njjdpm@njjdpm.com\" style=\"font-size: 10.5pt; color: rgb(0, 0, 0); text-decoration-line: none;\">njjdpm@njjdpm.com</a><br/>网址：<a href=\"http://www.njjdpm.com/\" style=\"font-size: 10.5pt; color: rgb(0, 0, 0); text-decoration-line: none;\">http://www.njjdpm.com</a>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '1', 'http://www.njjdpm.com/pages/eaf-common/file.ashx?type=image&guid=38c58b13-3d1a-468e-9bc0-1e2a4e41aa1e');

-- ----------------------------
-- Table structure for tag_info
-- ----------------------------
DROP TABLE IF EXISTS `tag_info`;
CREATE TABLE `tag_info` (
  `id` bigint(20) NOT NULL,
  `tag_name` varchar(100) DEFAULT NULL,
  `sort_code` varchar(100) DEFAULT NULL COMMENT '分类',
  `type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签信息';

-- ----------------------------
-- Records of tag_info
-- ----------------------------
