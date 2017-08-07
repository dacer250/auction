/*
Navicat MySQL Data Transfer

Source Server         : 120.24.44.240_auction
Source Server Version : 50542
Source Host           : 120.24.44.240:3306
Source Database       : auction

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2017-07-20 18:22:34
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='类别信息';

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES ('1', '瓷器', '0', '1', '5', '0');
INSERT INTO `class_info` VALUES ('2', '翡翠', '0', '1', '4', '0');
INSERT INTO `class_info` VALUES ('3', '和田玉', '0', '1', '3', '0');
INSERT INTO `class_info` VALUES ('4', '青铜器', '0', '1', '2', '0');
INSERT INTO `class_info` VALUES ('5', '杂项', '0', '1', '1', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='拍品信息';

-- ----------------------------
-- Records of goods_info
-- ----------------------------
INSERT INTO `goods_info` VALUES ('1', null, '明清粉彩玉壶春瓶', '明清粉彩玉壶春瓶', '<ul class=\"pic_infor list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>尺　　寸：40×48cm</p></li><li><p>创作年代：1946年作</p></li><li><p>估　　价： -</p></li><li><p>成 交 价： RMB 172,500</p></li></ul><p><br/>伯鹰见示：偕友共饮之作，随意畣一首。不辞早岁二毛侵，哀乐中年有道心。字入痴情同海岳，诗流贞趣似亭林。书生固必原旡咎，党论纷拿直到今。何用凿坏思遯迹，旧时笠屩可重寻。孤桐初稿。丙戌冬夜。<br/>章士钊 （1881-1973）<br/>中国爱国民主人士。字行严，号秋桐，湖南善化（今长沙）人。清末任上海《苏报》主笔，协同黄兴筹建华兴会。辛亥革命后，先后任《民主报》主笔，南北议和南方代表，段祺瑞执政府司法总长、教育总长。曾主编《甲寅》周刊。1927 年为营救李大钊奔走。1933年起在上海做律师，并任上海政法学院院长、冀察政务委员会法制委员会主席。抗日战争时期，任国民参政会参政员。1949 年为南京国民政府和平谈判代表团成员。同年出席全国政协第一届全体会议。后任全国人大常委会委员、全国政协常委、中央文史研究馆馆长。晚年曾为沟通海峡两岸出力。着有《柳文指要》等。<br/>潘伯鹰 （1905-1966）<br/>中国书法家。名式，以字行，别号凫公，安徽安庆人。为桐城派文学家吴闿生弟子。曾任北平中法大学及上海暨南大学教授。国共和谈时，曾担任国方代表章士钊的秘书。新中国成立后，任同济大学、上海音乐学院教授，上海中国书法篆刻研究会副主任委员。作书注重用笔之法，得诸遂良三昧，兼纳元人鲜于枢。草书得力于王羲之《十七帖》及孙过庭《书谱》。对文学颇有造诣，曾着小说多种， 后潜心于诗词及书法。是近代书坛“ 二王” 书风的积极追崇者之一。着有《中国的书法》《中国书法简论》《玄隐庐诗》等。<br/><br/>北京保利国际拍卖有限公司 &nbsp;&nbsp;<br/>2017-06-04</p><p><br/></p>', '0', '1', null, '14', '1');
INSERT INTO `goods_info` VALUES ('2', null, '清代乾隆年黄釉双龙戏珠赏瓶一对', '清代乾隆年黄釉双龙戏珠赏瓶一对', '<ul class=\"pic_infor list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>尺　　寸：40×44cm</p></li><li><p>创作年代：</p></li><li><p>估　　价： -</p></li><li><p>成 交 价： RMB 161,000</p></li></ul><p><br/>狂客元来出四明，贺公吴语太湖精。同参幕府难忘酒，却护储胥不仗兵。入海相从苏过父（谓其嗣师俊），对人一诺季心兄。只今知命谁逾汝，太息岩墙未易衡。此诗项联有窜易字，如须送刊，务希改正。二适一首结句“吊”落“晖”字，“吊”字拟易“叩”或“诉”，酌之。伯鹰足下。士钊手状。十二日。<br/>备注：高二适（1903-1977），江苏姜堰市兴泰镇小甸址人。原名锡璜，后易为二适。当代著名学者、诗人、书法家。1963年经章士钊引荐，被聘为江苏省文史馆馆员。在文史哲、诗词、书法的研究和创作方面成果卓著。着有《新定急就章及考证》《校录》《刘宾客辨易九流疏记》《高二适书法选集》等。<br/>1965年第6期《文物》杂志，发表了郭沫若题为《由王谢墓志的出土论到〈兰亭序〉的真伪》的考证文章。郭认为，相传的《兰亭序》后半文字，兴感无端，与王羲之思想无相同之处，书体亦和新近出土的王氏墓志不类，因而提出了《兰亭序》作者是王羲之第七世孙智永所依托，而不是王羲之手笔。<br/>郭沫若的“依托说”提出后，高二适即写了《〈兰亭序〉的真伪驳议》一文，称此说为“惊心动魄”之论！高二适不同意“依托说”，对郭沫若进行了指名道姓的批评。他把文章寄给报刊，以期引起争论，结果未能发表。又寄给章士钊，希望得到章的支持和帮助。但因为关系到郭沫若，章士钊感到不大好办，于是写信将高文转呈毛泽东。<br/>毛泽东得悉此事后，于1965年7月18日写信给章士钊，对此争论发表了建设性的意见。毛泽东在写信给章士钊的同时，于当天又写信给郭沫若。明确提出：“笔墨官司，有比无好。”在毛泽东的亲自过问、关怀下，高二适《〈兰亭序〉的真伪驳议》于1965年7月23日在《光明日报》发表，1965年第7期《文物》还发表了高文的影印手稿。<br/>后章士钊、商承祚与高二适持相同观点，认为郭之武断，将使智永于千载之下，蒙“莫须有”之冤，决不能苟同。<br/>1972年，高二适又写出《〈兰亭序〉的真伪之再驳议》一文。<br/>纵览“兰亭论辩”，支持郭沫若观点的也大有人在。郭沫若本人读到高二适的《〈兰亭序〉的真伪驳议》之后，在《〈驳议〉的商讨》一文中说：“如果经过《驳议》，证明确实是‘站不住脚’，我愿意认错，撤销这种说法。”表明了恪守自由辩论原则的态度。<br/>高二适这种坚持真理、不怕得罪权威的实事求是精神是极其难能可贵的，足可为当时钦，亦堪为后世法。从此，他“因兰亭论辩而名声大噪”。苏渊雷曾以诗赞云：“公案兰亭驳岂迟，高文一出万人知。黄庭恰好真同调，金谷相参别缀诗。自是临摹有瘦硬，何曾癸丑补干支。流沙坠简分明在，波磔蝉联尚有丝。”<br/>后章士钊、商承祚与高二适持相同观点，认为郭之武断，将使智永于千载之下，蒙“莫须有”之冤，决不能苟同。<br/>孤桐师钧座：昨奉复一书于虞世南师受智永书事在古今传授笔法一文，蚤有说明。而适哀荒独成疏陋，幸承老人具眼，如不然其影响亦非浅鲜矣。汾阳肆言无忌，南京友人中有寄意东人者，是可耻之一（国人懦弱，今尚畏一种高位人而自卑，不为千秋公论。斯可戒也）。适于此不发则已，一发则不能收。心头热血，举非凡俗，所堪解此，如适读龙门之、杜陵诗，临习王右军，胸中都有一种性灵所云。神交造化此是也。夫已民为当今国士天下士而厚诬古人，蔑视来者至于此极，适真有创巨痛深之思。兹此只能为公道之。此事如付公表（人民日报也有论学术一栏，要得大力才可，愿老人也为书艺一广之）。适恃不会遭到敌阵，可为书林中人伸一口气，不审定何如也。如护龙跳天门，虎卧凤阁。适往于甲寅刊，今于毛选均之皆是也。论政为文作书能为理全势足天骨开张，均可如书手雄强之训耳。公谓何如?敬放暑安适再拜，十五日。<br/>章士钊作《柳文指要》，高二适发现其中有不少失误，遂摘出二百则，作《纠章二百则》，小女儿可可问他父亲：“章先生是您老师，您怎么能编这样一本小册子呢?”他答道：“吾爱吾师，吾更爱真理。”所以他有一方闲章云：“草圣平生”，又曾在家藏佳帖上批云：“二适，右军以后一人而已。”</p><p><br/></p>', '0', '1', null, '14', '1');
INSERT INTO `goods_info` VALUES ('3', null, '清代乾隆年间粉彩夜光赏瓶', '清代乾隆年间粉彩夜光赏瓶', null, '0', '1', null, '0', '1');
INSERT INTO `goods_info` VALUES ('4', null, '清末民国矾红描金留白仙鹤将军罐一对', '清末民国矾红描金留白仙鹤将军罐一对', null, '0', '1', null, '0', '1');
INSERT INTO `goods_info` VALUES ('5', null, '清代翡翠葡萄小鸟摆件', '清代翡翠葡萄小鸟摆件', '<ul class=\"pic_infor list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>尺　　寸：</p></li><li><p>创作年代：</p></li><li><p>估　　价： 5,000-10,000</p></li><li><p>成 交 价： RMB 46,000</p></li></ul><p><br/>玉君先生：<br/>昨奉赐示，并大作七言绝律数章，清词丽句，无任佩仰。令郎来沪时，如承偕同惠访一谈，至为欢迎。唯来时拟请用电话约定时间，以免失迎，尤为感幸。先以奉覆，顺颂<br/>文祉。<br/>晓舫先生均此不另。<br/>鸿隽、衡哲敬上<br/>一九六〇年一月十五日<br/>陈衡哲（1890-1976）<br/>笔名莎菲（SophiaH.Z.Chen），祖籍湖南衡山，1914年考取清华留美学额后赴美，先后在美国沙瓦女子大学、芝加哥大学学习西洋史、西洋文学，分获学士、硕士学位。1920年被聘为北京大学教授，讲授西洋史；1920年9月27日与任鸿隽结婚；后任职于商务印书馆、国立东南大学、四川大学，著有短篇小说集《小雨点》《衡哲散文集》《文艺复兴史》《西洋史》及《一个中国女人的自传》等。建国后任上海市政协委员，1976年去世。她是我国新文化运动中最早的女学者、作家、诗人，也是我国第一位女教授，有“一代才女”之称。<br/><br/>北京保利国际拍卖有限公司 &nbsp;&nbsp;<br/>2017-06-04</p><p><br/></p>', '0', '2', null, '14', '1');
INSERT INTO `goods_info` VALUES ('6', null, '清代翡翠鸬鹚荷花摆件', '清代翡翠鸬鹚荷花摆件', null, '0', '2', null, '0', '1');
INSERT INTO `goods_info` VALUES ('7', null, '清代满绿翡翠弥勒佛挂件', '清代满绿翡翠弥勒佛挂件', null, '0', '2', null, '0', '1');
INSERT INTO `goods_info` VALUES ('8', null, '清代翡翠持净瓶宝珠观音摆件', '清代翡翠持净瓶宝珠观音摆件', null, '0', '2', null, '0', '1');
INSERT INTO `goods_info` VALUES ('9', null, '明清新疆和田白玉籽料平安扣', '明清新疆和田白玉籽料平安扣', '', '0', '3', null, '14', '1');
INSERT INTO `goods_info` VALUES ('10', null, '近现代和田白玉籽料武财神关公玉牌', '近现代和田白玉籽料武财神关公玉牌', null, '0', '3', null, '0', '1');
INSERT INTO `goods_info` VALUES ('11', null, '明代新疆和田白玉籽料五福临门玉牌', '明代新疆和田白玉籽料五福临门玉牌', null, '0', '3', null, '0', '1');
INSERT INTO `goods_info` VALUES ('12', null, '清代乾隆年和田白玉籽料福寿暗八仙插屏', '清代乾隆年和田白玉籽料福寿暗八仙插屏', null, '0', '3', null, '0', '1');
INSERT INTO `goods_info` VALUES ('13', null, '明代宣德年错金银点金炉', '明代宣德年错金银点金炉', '', '0', '4', null, '14', '1');
INSERT INTO `goods_info` VALUES ('14', null, '明朝宣德年风磨铜香炉', '明朝宣德年风磨铜香炉', null, '0', '4', null, '0', '1');
INSERT INTO `goods_info` VALUES ('15', null, '唐代开元通宝铜范', '唐代开元通宝铜范', null, '0', '4', null, '0', '1');
INSERT INTO `goods_info` VALUES ('16', null, '明代清闲童子铜镜', '明代清闲童子铜镜', null, '0', '4', null, '0', '1');
INSERT INTO `goods_info` VALUES ('17', null, '清代南红寿镯', '清代南红寿镯', '', '0', '5', null, '14', '1');
INSERT INTO `goods_info` VALUES ('18', null, '汉代水晶暗八仙贴金碗', '汉代水晶暗八仙贴金碗', null, '0', '5', null, '0', '1');
INSERT INTO `goods_info` VALUES ('19', null, '西藏帝王黄蜜蜡', '西藏帝王黄蜜蜡', null, '0', '5', null, '0', '1');
INSERT INTO `goods_info` VALUES ('20', null, '水晶太阳神', '水晶太阳神', null, '0', '5', null, '0', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_info_imgs
-- ----------------------------
INSERT INTO `goods_info_imgs` VALUES ('1', '2017-07-20 17:50:03', '1', '/uploadFiles/20170720/1249de92259e4f83ad0a46aceb5139fb.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('2', '2017-07-20 17:50:04', '1', '/uploadFiles/20170720/99e42fceb60d4ccf80f80cc7d09e0bca.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('3', '2017-07-20 17:50:04', '1', '/uploadFiles/20170720/4842a365bebf487ba3fba8a4170e3e4d.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('4', '2017-07-20 17:50:42', '2', '/uploadFiles/20170720/19158a4486d44ab9bb759ac62d8ae0dd.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('5', '2017-07-20 17:50:42', '2', '/uploadFiles/20170720/2ccf22e814e1441d8ce6a958956311c6.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('6', '2017-07-20 17:50:43', '2', '/uploadFiles/20170720/e4187ef4a3ab42ceb2158e2be0aba7f5.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('7', '2017-07-20 17:51:09', '3', '/uploadFiles/20170720/1342df85fc3b46068ee46ab09387d7a5.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('8', '2017-07-20 17:51:09', '3', '/uploadFiles/20170720/f0ecf813883d40d28318c644b5dc25f0.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('9', '2017-07-20 17:51:09', '3', '/uploadFiles/20170720/ffd4c56e4668421fb9a49db1cf1fa236.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('10', '2017-07-20 17:51:19', '4', '/uploadFiles/20170720/87ebda0d92264c48ba52cc3c85bb89c5.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('11', '2017-07-20 17:51:19', '4', '/uploadFiles/20170720/8d9315b09f34427bbdaa397d52e89ede.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('12', '2017-07-20 17:51:19', '4', '/uploadFiles/20170720/26fe79214fa549af85f1c4bbe6aeac1f.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('13', '2017-07-20 17:51:31', '5', '/uploadFiles/20170720/383be84c8b604c2680a619c2bcaa768c.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('14', '2017-07-20 17:51:31', '5', '/uploadFiles/20170720/f05a2c88771d4a5abbc848c0255bb230.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('15', '2017-07-20 17:51:31', '5', '/uploadFiles/20170720/4ad9b7dde9e147c2bb166ac7921dc904.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('16', '2017-07-20 17:52:35', '9', '/uploadFiles/20170720/2befa22b026f4938a21356b7f7d98ffd.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('17', '2017-07-20 17:52:35', '9', '/uploadFiles/20170720/befd9d37864241fb844c7cc41f87a2e5.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('18', '2017-07-20 17:52:54', '13', '/uploadFiles/20170720/068b1d118a3c48ada9bad72dc9c7bcd9.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('19', '2017-07-20 17:52:54', '13', '/uploadFiles/20170720/35f0674271e840459866ba1273bbf22e.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('20', '2017-07-20 17:53:38', '17', '/uploadFiles/20170720/0a4f0df958e1419ba639d2d122be44cb.jpg', '0');
INSERT INTO `goods_info_imgs` VALUES ('21', '2017-07-20 17:53:38', '17', '/uploadFiles/20170720/115bf39f011d4d11bd51f0aeefc968f3.jpg', '0');

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
