/*
Navicat MySQL Data Transfer

Source Server         : 121.197.3.142 
Source Server Version : 50163
Source Host           : 121.197.3.142 :3306
Source Database       : newbus

Target Server Type    : MYSQL
Target Server Version : 50163
File Encoding         : 65001

Date: 2018-06-04 17:29:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tp_access`
-- ----------------------------
DROP TABLE IF EXISTS `tp_access`;
CREATE TABLE `tp_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_access
-- ----------------------------
INSERT INTO `tp_access` VALUES ('1', '11', '3', '');
INSERT INTO `tp_access` VALUES ('1', '10', '3', '');
INSERT INTO `tp_access` VALUES ('1', '9', '3', '');
INSERT INTO `tp_access` VALUES ('1', '8', '3', '');
INSERT INTO `tp_access` VALUES ('1', '6', '3', '');
INSERT INTO `tp_access` VALUES ('1', '5', '3', '');
INSERT INTO `tp_access` VALUES ('1', '4', '3', '');
INSERT INTO `tp_access` VALUES ('1', '3', '3', '');
INSERT INTO `tp_access` VALUES ('1', '2', '2', '');
INSERT INTO `tp_access` VALUES ('1', '1', '1', '');
INSERT INTO `tp_access` VALUES ('1', '12', '3', '');
INSERT INTO `tp_access` VALUES ('1', '17', '2', '');
INSERT INTO `tp_access` VALUES ('1', '18', '3', '');
INSERT INTO `tp_access` VALUES ('1', '55', '3', '');
INSERT INTO `tp_access` VALUES ('1', '19', '2', '');
INSERT INTO `tp_access` VALUES ('1', '20', '3', '');
INSERT INTO `tp_access` VALUES ('1', '21', '3', '');
INSERT INTO `tp_access` VALUES ('1', '22', '3', '');
INSERT INTO `tp_access` VALUES ('1', '23', '3', '');
INSERT INTO `tp_access` VALUES ('1', '24', '3', '');
INSERT INTO `tp_access` VALUES ('1', '25', '2', '');
INSERT INTO `tp_access` VALUES ('1', '26', '3', '');
INSERT INTO `tp_access` VALUES ('1', '27', '3', '');
INSERT INTO `tp_access` VALUES ('1', '28', '3', '');
INSERT INTO `tp_access` VALUES ('1', '29', '3', '');
INSERT INTO `tp_access` VALUES ('1', '30', '3', '');
INSERT INTO `tp_access` VALUES ('1', '31', '2', '');
INSERT INTO `tp_access` VALUES ('1', '32', '3', '');
INSERT INTO `tp_access` VALUES ('1', '33', '3', '');
INSERT INTO `tp_access` VALUES ('1', '34', '3', '');
INSERT INTO `tp_access` VALUES ('1', '35', '3', '');
INSERT INTO `tp_access` VALUES ('1', '36', '2', '');
INSERT INTO `tp_access` VALUES ('1', '37', '3', '');
INSERT INTO `tp_access` VALUES ('1', '38', '3', '');
INSERT INTO `tp_access` VALUES ('1', '39', '3', '');
INSERT INTO `tp_access` VALUES ('1', '40', '3', '');
INSERT INTO `tp_access` VALUES ('1', '41', '2', '');
INSERT INTO `tp_access` VALUES ('1', '42', '3', '');
INSERT INTO `tp_access` VALUES ('1', '43', '3', '');
INSERT INTO `tp_access` VALUES ('1', '44', '3', '');
INSERT INTO `tp_access` VALUES ('1', '45', '3', '');
INSERT INTO `tp_access` VALUES ('1', '46', '2', '');
INSERT INTO `tp_access` VALUES ('1', '47', '3', '');
INSERT INTO `tp_access` VALUES ('1', '48', '3', '');
INSERT INTO `tp_access` VALUES ('1', '49', '3', '');
INSERT INTO `tp_access` VALUES ('1', '50', '3', '');
INSERT INTO `tp_access` VALUES ('1', '51', '2', '');
INSERT INTO `tp_access` VALUES ('1', '52', '3', '');
INSERT INTO `tp_access` VALUES ('1', '53', '3', '');
INSERT INTO `tp_access` VALUES ('1', '54', '3', '');

-- ----------------------------
-- Table structure for `tp_active`
-- ----------------------------
DROP TABLE IF EXISTS `tp_active`;
CREATE TABLE `tp_active` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  `code` varchar(11) NOT NULL DEFAULT '' COMMENT '激活码',
  `expire` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `updatetime` int(10) unsigned NOT NULL COMMENT '激活时间',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_active
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin`;
CREATE TABLE `tp_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `encrypt` varchar(6) NOT NULL DEFAULT '',
  `realname` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `usertype` tinyint(4) NOT NULL DEFAULT '0',
  `logintime` int(10) unsigned NOT NULL COMMENT '登录时间',
  `loginip` varchar(30) NOT NULL COMMENT '登录IP',
  `islock` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '锁定状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='网站后台管理员表';

-- ----------------------------
-- Records of tp_admin
-- ----------------------------
INSERT INTO `tp_admin` VALUES ('1', 'admin', '0731a9e4628ba4dafe3c9b4e576ad7e2', 'umqvjg', '', '', '9', '1527733451', '112.17.244.65', '0');

-- ----------------------------
-- Table structure for `tp_announce`
-- ----------------------------
DROP TABLE IF EXISTS `tp_announce`;
CREATE TABLE `tp_announce` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_announce
-- ----------------------------
INSERT INTO `tp_announce` VALUES ('1', 'eqwe', '<p>ewqewqewqewe<br/></p>', '0', '0', '1', '1411719255');

-- ----------------------------
-- Table structure for `tp_apply`
-- ----------------------------
DROP TABLE IF EXISTS `tp_apply`;
CREATE TABLE `tp_apply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `telephone` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `school` varchar(50) NOT NULL DEFAULT '',
  `posttime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `content` text,
  `job_name` varchar(20) NOT NULL,
  `job_id` int(20) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `edu` varchar(20) NOT NULL,
  `marriage` varchar(10) NOT NULL,
  `nation` varchar(20) NOT NULL,
  `age` varchar(10) NOT NULL,
  `major` int(11) NOT NULL,
  `graduation` int(11) NOT NULL,
  `en_level` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_apply
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_area`
-- ----------------------------
DROP TABLE IF EXISTS `tp_area`;
CREATE TABLE `tp_area` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '',
  `sname` varchar(10) NOT NULL DEFAULT '' COMMENT '简称',
  `ename` varchar(50) NOT NULL DEFAULT '',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_area
-- ----------------------------
INSERT INTO `tp_area` VALUES ('1', '北京市', '北京', '', '0', '0');
INSERT INTO `tp_area` VALUES ('2', '上海市', '上海', '', '0', '0');
INSERT INTO `tp_area` VALUES ('3', '天津市', '天津', '', '0', '0');
INSERT INTO `tp_area` VALUES ('4', '重庆市', '重庆', '', '0', '0');
INSERT INTO `tp_area` VALUES ('5', '广东省', '广东', '', '0', '0');
INSERT INTO `tp_area` VALUES ('6', '福建省', '福建', '', '0', '0');
INSERT INTO `tp_area` VALUES ('7', '浙江省', '浙江', '', '0', '0');
INSERT INTO `tp_area` VALUES ('8', '江苏省', '江苏', '', '0', '0');
INSERT INTO `tp_area` VALUES ('9', '山东省', '山东', '', '0', '0');
INSERT INTO `tp_area` VALUES ('10', '辽宁省', '辽宁', '', '0', '0');
INSERT INTO `tp_area` VALUES ('11', '江西省', '江西', '', '0', '0');
INSERT INTO `tp_area` VALUES ('12', '四川省', '四川', '', '0', '0');
INSERT INTO `tp_area` VALUES ('13', '陕西省', '陕西', '', '0', '0');
INSERT INTO `tp_area` VALUES ('14', '湖北省', '湖北', '', '0', '0');
INSERT INTO `tp_area` VALUES ('15', '河南省', '河南', '', '0', '0');
INSERT INTO `tp_area` VALUES ('16', '河北省', '河北', '', '0', '0');
INSERT INTO `tp_area` VALUES ('17', '山西省', '山西', '', '0', '0');
INSERT INTO `tp_area` VALUES ('18', '内蒙古', '内蒙古', '', '0', '0');
INSERT INTO `tp_area` VALUES ('19', '吉林省', '吉林', '', '0', '0');
INSERT INTO `tp_area` VALUES ('20', '黑龙江', '黑龙江', '', '0', '0');
INSERT INTO `tp_area` VALUES ('21', '安徽省', '安徽', '', '0', '0');
INSERT INTO `tp_area` VALUES ('22', '湖南省', '湖南', '', '0', '0');
INSERT INTO `tp_area` VALUES ('23', '广西', '广西', '', '0', '0');
INSERT INTO `tp_area` VALUES ('24', '海南省', '海南', '', '0', '0');
INSERT INTO `tp_area` VALUES ('25', '云南省', '云南', '', '0', '0');
INSERT INTO `tp_area` VALUES ('26', '贵州省', '贵州', '', '0', '0');
INSERT INTO `tp_area` VALUES ('27', '西藏', '西藏', '', '0', '0');
INSERT INTO `tp_area` VALUES ('28', '甘肃省', '甘肃', '', '0', '0');
INSERT INTO `tp_area` VALUES ('29', '宁夏区', '宁夏区', '', '0', '0');
INSERT INTO `tp_area` VALUES ('30', '青海省', '青海', '', '0', '0');
INSERT INTO `tp_area` VALUES ('31', '新疆', '新疆', '', '0', '0');
INSERT INTO `tp_area` VALUES ('32', '香港', '香港', '', '0', '0');
INSERT INTO `tp_area` VALUES ('33', '澳门', '澳门', '', '0', '0');
INSERT INTO `tp_area` VALUES ('34', '台湾省', '台湾', '', '0', '0');
INSERT INTO `tp_area` VALUES ('60', '海外', '海外', '', '0', '0');
INSERT INTO `tp_area` VALUES ('101', '东城区', '东城区', '', '1', '0');
INSERT INTO `tp_area` VALUES ('102', '西城区', '西城区', '', '1', '0');
INSERT INTO `tp_area` VALUES ('103', '崇文区', '崇文区', '', '1', '0');
INSERT INTO `tp_area` VALUES ('104', '宣武区', '宣武区', '', '1', '0');
INSERT INTO `tp_area` VALUES ('105', '朝阳区', '朝阳区', '', '1', '0');
INSERT INTO `tp_area` VALUES ('106', '海淀区', '海淀区', '', '1', '0');
INSERT INTO `tp_area` VALUES ('107', '丰台区', '丰台区', '', '1', '0');
INSERT INTO `tp_area` VALUES ('108', '石景山区', '石景山区', '', '1', '0');
INSERT INTO `tp_area` VALUES ('109', '门头沟区', '门头沟区', '', '1', '0');
INSERT INTO `tp_area` VALUES ('110', '房山区', '房山区', '', '1', '0');
INSERT INTO `tp_area` VALUES ('111', '通州区', '通区', '', '1', '0');
INSERT INTO `tp_area` VALUES ('112', '顺义区', '顺义区', '', '1', '0');
INSERT INTO `tp_area` VALUES ('113', '昌平区', '昌平区', '', '1', '0');
INSERT INTO `tp_area` VALUES ('114', '大兴区', '大兴区', '', '1', '0');
INSERT INTO `tp_area` VALUES ('115', '平谷县', '平谷县', '', '1', '0');
INSERT INTO `tp_area` VALUES ('116', '怀柔县', '怀柔县', '', '1', '0');
INSERT INTO `tp_area` VALUES ('117', '密云县', '密云县', '', '1', '0');
INSERT INTO `tp_area` VALUES ('118', '延庆县', '延庆县', '', '1', '0');
INSERT INTO `tp_area` VALUES ('201', '黄浦区', '黄浦区', '', '2', '0');
INSERT INTO `tp_area` VALUES ('202', '卢湾区', '卢湾区', '', '2', '0');
INSERT INTO `tp_area` VALUES ('203', '徐汇区', '徐汇区', '', '2', '0');
INSERT INTO `tp_area` VALUES ('204', '长宁区', '长宁区', '', '2', '0');
INSERT INTO `tp_area` VALUES ('205', '静安区', '静安区', '', '2', '0');
INSERT INTO `tp_area` VALUES ('206', '普陀区', '普陀区', '', '2', '0');
INSERT INTO `tp_area` VALUES ('207', '闸北区', '闸北区', '', '2', '0');
INSERT INTO `tp_area` VALUES ('208', '虹口区', '虹口区', '', '2', '0');
INSERT INTO `tp_area` VALUES ('209', '杨浦区', '杨浦区', '', '2', '0');
INSERT INTO `tp_area` VALUES ('210', '宝山区', '宝山区', '', '2', '0');
INSERT INTO `tp_area` VALUES ('211', '闵行区', '闵行区', '', '2', '0');
INSERT INTO `tp_area` VALUES ('212', '嘉定区', '嘉定区', '', '2', '0');
INSERT INTO `tp_area` VALUES ('213', '浦东新区', '浦东新区', '', '2', '0');
INSERT INTO `tp_area` VALUES ('214', '松江区', '松江区', '', '2', '0');
INSERT INTO `tp_area` VALUES ('215', '金山区', '金山区', '', '2', '0');
INSERT INTO `tp_area` VALUES ('216', '青浦区', '青浦区', '', '2', '0');
INSERT INTO `tp_area` VALUES ('217', '南汇区', '南汇区', '', '2', '0');
INSERT INTO `tp_area` VALUES ('218', '奉贤区', '奉贤区', '', '2', '0');
INSERT INTO `tp_area` VALUES ('219', '崇明县', '崇明县', '', '2', '0');
INSERT INTO `tp_area` VALUES ('301', '和平区', '和平区', '', '3', '0');
INSERT INTO `tp_area` VALUES ('302', '河东区', '河东区', '', '3', '0');
INSERT INTO `tp_area` VALUES ('303', '河西区', '河西区', '', '3', '0');
INSERT INTO `tp_area` VALUES ('304', '南开区', '南开区', '', '3', '0');
INSERT INTO `tp_area` VALUES ('305', '河北区', '河北区', '', '3', '0');
INSERT INTO `tp_area` VALUES ('306', '红桥区', '红桥区', '', '3', '0');
INSERT INTO `tp_area` VALUES ('307', '塘沽区', '塘沽区', '', '3', '0');
INSERT INTO `tp_area` VALUES ('308', '汉沽区', '汉沽区', '', '3', '0');
INSERT INTO `tp_area` VALUES ('309', '大港区', '大港区', '', '3', '0');
INSERT INTO `tp_area` VALUES ('310', '东丽区', '东丽区', '', '3', '0');
INSERT INTO `tp_area` VALUES ('311', '西青区', '西青区', '', '3', '0');
INSERT INTO `tp_area` VALUES ('312', '北辰区', '北辰区', '', '3', '0');
INSERT INTO `tp_area` VALUES ('313', '津南区', '津南区', '', '3', '0');
INSERT INTO `tp_area` VALUES ('314', '武清区', '武清区', '', '3', '0');
INSERT INTO `tp_area` VALUES ('315', '宝坻区', '宝坻区', '', '3', '0');
INSERT INTO `tp_area` VALUES ('316', '静海县', '静海县', '', '3', '0');
INSERT INTO `tp_area` VALUES ('317', '宁河县', '宁河县', '', '3', '0');
INSERT INTO `tp_area` VALUES ('318', '蓟县', '蓟县', '', '3', '0');
INSERT INTO `tp_area` VALUES ('401', '渝中区', '渝中区', '', '4', '0');
INSERT INTO `tp_area` VALUES ('402', '大渡口区', '大渡口区', '', '4', '0');
INSERT INTO `tp_area` VALUES ('403', '江北区', '江北区', '', '4', '0');
INSERT INTO `tp_area` VALUES ('404', '沙坪坝区', '沙坪坝区', '', '4', '0');
INSERT INTO `tp_area` VALUES ('405', '九龙坡区', '九龙坡区', '', '4', '0');
INSERT INTO `tp_area` VALUES ('406', '南岸区', '南岸区', '', '4', '0');
INSERT INTO `tp_area` VALUES ('407', '北碚区', '北碚区', '', '4', '0');
INSERT INTO `tp_area` VALUES ('408', '万盛区', '万盛区', '', '4', '0');
INSERT INTO `tp_area` VALUES ('409', '双桥区', '双桥区', '', '4', '0');
INSERT INTO `tp_area` VALUES ('410', '渝北区', '渝北区', '', '4', '0');
INSERT INTO `tp_area` VALUES ('411', '巴南区', '巴南区', '', '4', '0');
INSERT INTO `tp_area` VALUES ('412', '万州区', '万区', '', '4', '0');
INSERT INTO `tp_area` VALUES ('413', '涪陵区', '涪陵区', '', '4', '0');
INSERT INTO `tp_area` VALUES ('414', '黔江区', '黔江区', '', '4', '0');
INSERT INTO `tp_area` VALUES ('415', '永川市', '永川', '', '4', '0');
INSERT INTO `tp_area` VALUES ('416', '合川市', '合川', '', '4', '0');
INSERT INTO `tp_area` VALUES ('417', '江津市', '江津', '', '4', '0');
INSERT INTO `tp_area` VALUES ('418', '南川市', '南川', '', '4', '0');
INSERT INTO `tp_area` VALUES ('419', '长寿县', '长寿县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('420', '綦江县', '綦江县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('421', '潼南县', '潼南县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('422', '荣昌县', '荣昌县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('423', '璧山县', '璧山县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('424', '大足县', '大足县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('425', '铜梁县', '铜梁县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('426', '梁平县', '梁平县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('427', '城口县', '城口县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('428', '垫江县', '垫江县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('429', '武隆县', '武隆县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('430', '丰都县', '丰都县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('431', '奉节县', '奉节县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('432', '开县', '开县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('433', '云阳县', '云阳县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('434', '忠县', '忠县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('435', '巫溪县', '巫溪县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('436', '巫山县', '巫山县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('437', '石柱县', '石柱县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('438', '秀山县', '秀山县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('439', '酉阳县', '酉阳县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('440', '彭水县', '彭水县', '', '4', '0');
INSERT INTO `tp_area` VALUES ('501', '广州市', '广州', '', '5', '0');
INSERT INTO `tp_area` VALUES ('502', '深圳市', '深圳', '', '5', '0');
INSERT INTO `tp_area` VALUES ('503', '珠海市', '珠海', '', '5', '0');
INSERT INTO `tp_area` VALUES ('504', '汕头市', '汕头', '', '5', '0');
INSERT INTO `tp_area` VALUES ('505', '韶关市', '韶关', '', '5', '0');
INSERT INTO `tp_area` VALUES ('506', '河源市', '河源', '', '5', '0');
INSERT INTO `tp_area` VALUES ('507', '梅州市', '梅州', '', '5', '0');
INSERT INTO `tp_area` VALUES ('508', '惠州市', '惠州', '', '5', '0');
INSERT INTO `tp_area` VALUES ('509', '汕尾市', '汕尾', '', '5', '0');
INSERT INTO `tp_area` VALUES ('510', '东莞市', '东莞', '', '5', '0');
INSERT INTO `tp_area` VALUES ('511', '中山市', '中山', '', '5', '0');
INSERT INTO `tp_area` VALUES ('512', '江门市', '江门', '', '5', '0');
INSERT INTO `tp_area` VALUES ('513', '佛山市', '佛山', '', '5', '0');
INSERT INTO `tp_area` VALUES ('514', '阳江市', '阳江', '', '5', '0');
INSERT INTO `tp_area` VALUES ('515', '湛江市', '湛江', '', '5', '0');
INSERT INTO `tp_area` VALUES ('516', '茂名市', '茂名', '', '5', '0');
INSERT INTO `tp_area` VALUES ('517', '肇庆市', '肇庆', '', '5', '0');
INSERT INTO `tp_area` VALUES ('518', '清远市', '清远', '', '5', '0');
INSERT INTO `tp_area` VALUES ('519', '潮州市', '潮州', '', '5', '0');
INSERT INTO `tp_area` VALUES ('520', '揭阳市', '揭阳', '', '5', '0');
INSERT INTO `tp_area` VALUES ('521', '云浮市', '云浮', '', '5', '0');
INSERT INTO `tp_area` VALUES ('601', '福州市', '福州', '', '6', '0');
INSERT INTO `tp_area` VALUES ('602', '厦门市', '厦门', '', '6', '0');
INSERT INTO `tp_area` VALUES ('603', '三明市', '三明', '', '6', '0');
INSERT INTO `tp_area` VALUES ('604', '莆田市', '莆田', '', '6', '0');
INSERT INTO `tp_area` VALUES ('605', '泉州市', '泉州', '', '6', '0');
INSERT INTO `tp_area` VALUES ('606', '漳州市', '漳州', '', '6', '0');
INSERT INTO `tp_area` VALUES ('607', '南平市', '南平', '', '6', '0');
INSERT INTO `tp_area` VALUES ('608', '龙岩市', '龙岩', '', '6', '0');
INSERT INTO `tp_area` VALUES ('609', '宁德市', '宁德', '', '6', '0');
INSERT INTO `tp_area` VALUES ('701', '杭州市', '杭州', '', '7', '0');
INSERT INTO `tp_area` VALUES ('702', '宁波市', '宁波', '', '7', '0');
INSERT INTO `tp_area` VALUES ('703', '温州市', '温州', '', '7', '0');
INSERT INTO `tp_area` VALUES ('704', '嘉兴市', '嘉兴', '', '7', '0');
INSERT INTO `tp_area` VALUES ('705', '湖州市', '湖州', '', '7', '0');
INSERT INTO `tp_area` VALUES ('706', '绍兴市', '绍兴', '', '7', '0');
INSERT INTO `tp_area` VALUES ('707', '金华市', '金华', '', '7', '0');
INSERT INTO `tp_area` VALUES ('708', '衢州市', '衢州', '', '7', '0');
INSERT INTO `tp_area` VALUES ('709', '舟山市', '舟山', '', '7', '0');
INSERT INTO `tp_area` VALUES ('710', '台州市', '台州', '', '7', '0');
INSERT INTO `tp_area` VALUES ('711', '丽水市', '丽水', '', '7', '0');
INSERT INTO `tp_area` VALUES ('801', '南京市', '南京', '', '8', '0');
INSERT INTO `tp_area` VALUES ('802', '徐州市', '徐州', '', '8', '0');
INSERT INTO `tp_area` VALUES ('803', '连云港市', '连云港', '', '8', '0');
INSERT INTO `tp_area` VALUES ('804', '淮安市', '淮安', '', '8', '0');
INSERT INTO `tp_area` VALUES ('805', '宿迁市', '宿迁', '', '8', '0');
INSERT INTO `tp_area` VALUES ('806', '盐城市', '盐城', '', '8', '0');
INSERT INTO `tp_area` VALUES ('807', '扬州市', '扬州', '', '8', '0');
INSERT INTO `tp_area` VALUES ('808', '泰州市', '泰州', '', '8', '0');
INSERT INTO `tp_area` VALUES ('809', '南通市', '南通', '', '8', '0');
INSERT INTO `tp_area` VALUES ('810', '镇江市', '镇江', '', '8', '0');
INSERT INTO `tp_area` VALUES ('811', '常州市', '常州', '', '8', '0');
INSERT INTO `tp_area` VALUES ('812', '无锡市', '无锡', '', '8', '0');
INSERT INTO `tp_area` VALUES ('813', '苏州市', '苏州', '', '8', '0');
INSERT INTO `tp_area` VALUES ('901', '济南市', '济南', '', '9', '0');
INSERT INTO `tp_area` VALUES ('902', '青岛市', '青岛', '', '9', '0');
INSERT INTO `tp_area` VALUES ('903', '淄博市', '淄博', '', '9', '0');
INSERT INTO `tp_area` VALUES ('904', '枣庄市', '枣庄', '', '9', '0');
INSERT INTO `tp_area` VALUES ('905', '东营市', '东营', '', '9', '0');
INSERT INTO `tp_area` VALUES ('906', '潍坊市', '潍坊', '', '9', '0');
INSERT INTO `tp_area` VALUES ('907', '烟台市', '烟台', '', '9', '0');
INSERT INTO `tp_area` VALUES ('908', '威海市', '威海', '', '9', '0');
INSERT INTO `tp_area` VALUES ('909', '济宁市', '济宁', '', '9', '0');
INSERT INTO `tp_area` VALUES ('910', '泰安市', '泰安', '', '9', '0');
INSERT INTO `tp_area` VALUES ('911', '日照市', '日照', '', '9', '0');
INSERT INTO `tp_area` VALUES ('912', '莱芜市', '莱芜', '', '9', '0');
INSERT INTO `tp_area` VALUES ('913', '德州市', '德州', '', '9', '0');
INSERT INTO `tp_area` VALUES ('914', '临沂市', '临沂', '', '9', '0');
INSERT INTO `tp_area` VALUES ('915', '聊城市', '聊城', '', '9', '0');
INSERT INTO `tp_area` VALUES ('916', '滨州市', '滨州', '', '9', '0');
INSERT INTO `tp_area` VALUES ('917', '菏泽市', '菏泽', '', '9', '0');
INSERT INTO `tp_area` VALUES ('1001', '沈阳市', '沈阳', '', '10', '0');
INSERT INTO `tp_area` VALUES ('1002', '大连市', '大连', '', '10', '0');
INSERT INTO `tp_area` VALUES ('1003', '鞍山市', '鞍山', '', '10', '0');
INSERT INTO `tp_area` VALUES ('1004', '抚顺市', '抚顺', '', '10', '0');
INSERT INTO `tp_area` VALUES ('1005', '本溪市', '本溪', '', '10', '0');
INSERT INTO `tp_area` VALUES ('1006', '丹东市', '丹东', '', '10', '0');
INSERT INTO `tp_area` VALUES ('1007', '锦州市', '锦州', '', '10', '0');
INSERT INTO `tp_area` VALUES ('1008', '葫芦岛市', '葫芦岛', '', '10', '0');
INSERT INTO `tp_area` VALUES ('1009', '营口市', '营口', '', '10', '0');
INSERT INTO `tp_area` VALUES ('1010', '盘锦市', '盘锦', '', '10', '0');
INSERT INTO `tp_area` VALUES ('1011', '阜新市', '阜新', '', '10', '0');
INSERT INTO `tp_area` VALUES ('1012', '辽阳市', '辽阳', '', '10', '0');
INSERT INTO `tp_area` VALUES ('1013', '铁岭市', '铁岭', '', '10', '0');
INSERT INTO `tp_area` VALUES ('1014', '朝阳市', '朝阳', '', '10', '0');
INSERT INTO `tp_area` VALUES ('1101', '南昌市', '南昌', '', '11', '0');
INSERT INTO `tp_area` VALUES ('1102', '景德镇市', '景德镇', '', '11', '0');
INSERT INTO `tp_area` VALUES ('1103', '萍乡市', '萍乡', '', '11', '0');
INSERT INTO `tp_area` VALUES ('1104', '新余市', '新余', '', '11', '0');
INSERT INTO `tp_area` VALUES ('1105', '九江市', '九江', '', '11', '0');
INSERT INTO `tp_area` VALUES ('1106', '鹰潭市', '鹰潭', '', '11', '0');
INSERT INTO `tp_area` VALUES ('1107', '赣州市', '赣州', '', '11', '0');
INSERT INTO `tp_area` VALUES ('1108', '吉安市', '吉安', '', '11', '0');
INSERT INTO `tp_area` VALUES ('1109', '宜春市', '宜春', '', '11', '0');
INSERT INTO `tp_area` VALUES ('1110', '抚州市', '抚州', '', '11', '0');
INSERT INTO `tp_area` VALUES ('1111', '上饶市', '上饶', '', '11', '0');
INSERT INTO `tp_area` VALUES ('1201', '成都市', '成都', '', '12', '0');
INSERT INTO `tp_area` VALUES ('1202', '自贡市', '自贡', '', '12', '0');
INSERT INTO `tp_area` VALUES ('1203', '攀枝花市', '攀枝花', '', '12', '0');
INSERT INTO `tp_area` VALUES ('1204', '泸州市', '泸州', '', '12', '0');
INSERT INTO `tp_area` VALUES ('1205', '德阳市', '德阳', '', '12', '0');
INSERT INTO `tp_area` VALUES ('1206', '绵阳市', '绵阳', '', '12', '0');
INSERT INTO `tp_area` VALUES ('1207', '广元市', '广元', '', '12', '0');
INSERT INTO `tp_area` VALUES ('1208', '遂宁市', '遂宁', '', '12', '0');
INSERT INTO `tp_area` VALUES ('1209', '内江市', '内江', '', '12', '0');
INSERT INTO `tp_area` VALUES ('1210', '乐山市', '乐山', '', '12', '0');
INSERT INTO `tp_area` VALUES ('1211', '南充市', '南充', '', '12', '0');
INSERT INTO `tp_area` VALUES ('1212', '宜宾市', '宜宾', '', '12', '0');
INSERT INTO `tp_area` VALUES ('1213', '广安市', '广安', '', '12', '0');
INSERT INTO `tp_area` VALUES ('1214', '达州市', '达州', '', '12', '0');
INSERT INTO `tp_area` VALUES ('1215', '巴中市', '巴中', '', '12', '0');
INSERT INTO `tp_area` VALUES ('1216', '雅安市', '雅安', '', '12', '0');
INSERT INTO `tp_area` VALUES ('1217', '眉山市', '眉山', '', '12', '0');
INSERT INTO `tp_area` VALUES ('1218', '资阳市', '资阳', '', '12', '0');
INSERT INTO `tp_area` VALUES ('1219', '阿坝州', '阿坝', '', '12', '0');
INSERT INTO `tp_area` VALUES ('1220', '甘孜州', '甘孜', '', '12', '0');
INSERT INTO `tp_area` VALUES ('1221', '凉山州', '凉山', '', '12', '0');
INSERT INTO `tp_area` VALUES ('3114', '西安市', '西安', '', '13', '0');
INSERT INTO `tp_area` VALUES ('1302', '铜川市', '铜川', '', '13', '0');
INSERT INTO `tp_area` VALUES ('1303', '宝鸡市', '宝鸡', '', '13', '0');
INSERT INTO `tp_area` VALUES ('1304', '咸阳市', '咸阳', '', '13', '0');
INSERT INTO `tp_area` VALUES ('1305', '渭南市', '渭南', '', '13', '0');
INSERT INTO `tp_area` VALUES ('1306', '延安市', '延安', '', '13', '0');
INSERT INTO `tp_area` VALUES ('1307', '汉中市', '汉中', '', '13', '0');
INSERT INTO `tp_area` VALUES ('1308', '榆林市', '榆林', '', '13', '0');
INSERT INTO `tp_area` VALUES ('1309', '安康市', '安康', '', '13', '0');
INSERT INTO `tp_area` VALUES ('1310', '商洛地区', '商洛地区', '', '13', '0');
INSERT INTO `tp_area` VALUES ('1401', '武汉市', '武汉', '', '14', '0');
INSERT INTO `tp_area` VALUES ('1402', '黄石市', '黄石', '', '14', '0');
INSERT INTO `tp_area` VALUES ('1403', '襄樊市', '襄樊', '', '14', '0');
INSERT INTO `tp_area` VALUES ('1404', '十堰市', '十堰', '', '14', '0');
INSERT INTO `tp_area` VALUES ('1405', '荆州市', '荆州', '', '14', '0');
INSERT INTO `tp_area` VALUES ('1406', '宜昌市', '宜昌', '', '14', '0');
INSERT INTO `tp_area` VALUES ('1407', '荆门市', '荆门', '', '14', '0');
INSERT INTO `tp_area` VALUES ('1408', '鄂州市', '鄂州', '', '14', '0');
INSERT INTO `tp_area` VALUES ('1409', '孝感市', '孝感', '', '14', '0');
INSERT INTO `tp_area` VALUES ('1410', '黄冈市', '黄冈', '', '14', '0');
INSERT INTO `tp_area` VALUES ('1411', '咸宁市', '咸宁', '', '14', '0');
INSERT INTO `tp_area` VALUES ('1412', '随州市', '随州', '', '14', '0');
INSERT INTO `tp_area` VALUES ('1413', '仙桃市', '仙桃', '', '14', '0');
INSERT INTO `tp_area` VALUES ('1414', '天门市', '天门', '', '14', '0');
INSERT INTO `tp_area` VALUES ('1415', '潜江市', '潜江', '', '14', '0');
INSERT INTO `tp_area` VALUES ('1416', '神农架', '神农架', '', '14', '0');
INSERT INTO `tp_area` VALUES ('1417', '恩施州', '恩施', '', '14', '0');
INSERT INTO `tp_area` VALUES ('1501', '郑州市', '郑州', '', '15', '0');
INSERT INTO `tp_area` VALUES ('1502', '开封市', '开封', '', '15', '0');
INSERT INTO `tp_area` VALUES ('1503', '洛阳市', '洛阳', '', '15', '0');
INSERT INTO `tp_area` VALUES ('1504', '平顶山市', '平顶山', '', '15', '0');
INSERT INTO `tp_area` VALUES ('1505', '焦作市', '焦作', '', '15', '0');
INSERT INTO `tp_area` VALUES ('1506', '鹤壁市', '鹤壁', '', '15', '0');
INSERT INTO `tp_area` VALUES ('1507', '新乡市', '新乡', '', '15', '0');
INSERT INTO `tp_area` VALUES ('1508', '安阳市', '安阳', '', '15', '0');
INSERT INTO `tp_area` VALUES ('1509', '濮阳市', '濮阳', '', '15', '0');
INSERT INTO `tp_area` VALUES ('1510', '许昌市', '许昌', '', '15', '0');
INSERT INTO `tp_area` VALUES ('1511', '漯河市', '漯河', '', '15', '0');
INSERT INTO `tp_area` VALUES ('1512', '三门峡市', '三门峡', '', '15', '0');
INSERT INTO `tp_area` VALUES ('1513', '南阳市', '南阳', '', '15', '0');
INSERT INTO `tp_area` VALUES ('1514', '商丘市', '商丘', '', '15', '0');
INSERT INTO `tp_area` VALUES ('1515', '信阳市', '信阳', '', '15', '0');
INSERT INTO `tp_area` VALUES ('1516', '周口市', '周口', '', '15', '0');
INSERT INTO `tp_area` VALUES ('1517', '驻马店市', '驻马店', '', '15', '0');
INSERT INTO `tp_area` VALUES ('1518', '济源市', '济源', '', '15', '0');
INSERT INTO `tp_area` VALUES ('1601', '石家庄市', '石家庄', '', '16', '0');
INSERT INTO `tp_area` VALUES ('1602', '唐山市', '唐山', '', '16', '0');
INSERT INTO `tp_area` VALUES ('1603', '秦皇岛市', '秦皇岛', '', '16', '0');
INSERT INTO `tp_area` VALUES ('1604', '邯郸市', '邯郸', '', '16', '0');
INSERT INTO `tp_area` VALUES ('1605', '邢台市', '邢台', '', '16', '0');
INSERT INTO `tp_area` VALUES ('1606', '保定市', '保定', '', '16', '0');
INSERT INTO `tp_area` VALUES ('1607', '张家口市', '张家口', '', '16', '0');
INSERT INTO `tp_area` VALUES ('1608', '承德市', '承德', '', '16', '0');
INSERT INTO `tp_area` VALUES ('1609', '沧州市', '沧州', '', '16', '0');
INSERT INTO `tp_area` VALUES ('1610', '廊坊市', '廊坊', '', '16', '0');
INSERT INTO `tp_area` VALUES ('1611', '衡水市', '衡水', '', '16', '0');
INSERT INTO `tp_area` VALUES ('1701', '太原市', '太原', '', '17', '0');
INSERT INTO `tp_area` VALUES ('1702', '大同市', '大同', '', '17', '0');
INSERT INTO `tp_area` VALUES ('1703', '阳泉市', '阳泉', '', '17', '0');
INSERT INTO `tp_area` VALUES ('1704', '长治市', '长治', '', '17', '0');
INSERT INTO `tp_area` VALUES ('1705', '晋城市', '晋城', '', '17', '0');
INSERT INTO `tp_area` VALUES ('1706', '朔州市', '朔州', '', '17', '0');
INSERT INTO `tp_area` VALUES ('1707', '晋中市', '晋中', '', '17', '0');
INSERT INTO `tp_area` VALUES ('1708', '忻州市', '忻州', '', '17', '0');
INSERT INTO `tp_area` VALUES ('1709', '临汾市', '临汾', '', '17', '0');
INSERT INTO `tp_area` VALUES ('1710', '运城市', '运城', '', '17', '0');
INSERT INTO `tp_area` VALUES ('1711', '吕梁地区', '吕梁地区', '', '17', '0');
INSERT INTO `tp_area` VALUES ('1801', '呼和浩特', '呼和浩特', '', '18', '0');
INSERT INTO `tp_area` VALUES ('1802', '包头市', '包头', '', '18', '0');
INSERT INTO `tp_area` VALUES ('1803', '乌海市', '乌海', '', '18', '0');
INSERT INTO `tp_area` VALUES ('1804', '赤峰市', '赤峰', '', '18', '0');
INSERT INTO `tp_area` VALUES ('1805', '通辽市', '通辽', '', '18', '0');
INSERT INTO `tp_area` VALUES ('1806', '鄂尔多斯', '鄂尔多斯', '', '18', '0');
INSERT INTO `tp_area` VALUES ('1807', '乌兰察布', '乌兰察布', '', '18', '0');
INSERT INTO `tp_area` VALUES ('1808', '锡林郭勒', '锡林郭勒', '', '18', '0');
INSERT INTO `tp_area` VALUES ('1809', '呼伦贝尔', '呼伦贝尔', '', '18', '0');
INSERT INTO `tp_area` VALUES ('1810', '巴彦淖尔', '巴彦淖尔', '', '18', '0');
INSERT INTO `tp_area` VALUES ('1811', '阿拉善盟', '阿拉善盟', '', '18', '0');
INSERT INTO `tp_area` VALUES ('1812', '兴安盟', '兴安盟', '', '18', '0');
INSERT INTO `tp_area` VALUES ('1901', '长春市', '长春', '', '19', '0');
INSERT INTO `tp_area` VALUES ('1902', '吉林市', '吉林', '', '19', '0');
INSERT INTO `tp_area` VALUES ('1903', '四平市', '四平', '', '19', '0');
INSERT INTO `tp_area` VALUES ('1904', '辽源市', '辽源', '', '19', '0');
INSERT INTO `tp_area` VALUES ('1905', '通化市', '通化', '', '19', '0');
INSERT INTO `tp_area` VALUES ('1906', '白山市', '白山', '', '19', '0');
INSERT INTO `tp_area` VALUES ('1907', '松原市', '松原', '', '19', '0');
INSERT INTO `tp_area` VALUES ('1908', '白城市', '白城', '', '19', '0');
INSERT INTO `tp_area` VALUES ('1909', '延边州', '延边', '', '19', '0');
INSERT INTO `tp_area` VALUES ('2001', '哈尔滨市', '哈尔滨', '', '20', '0');
INSERT INTO `tp_area` VALUES ('2002', '齐齐哈尔', '齐齐哈尔', '', '20', '0');
INSERT INTO `tp_area` VALUES ('2003', '鹤岗市', '鹤岗', '', '20', '0');
INSERT INTO `tp_area` VALUES ('2004', '双鸭山市', '双鸭山', '', '20', '0');
INSERT INTO `tp_area` VALUES ('2005', '鸡西市', '鸡西', '', '20', '0');
INSERT INTO `tp_area` VALUES ('2006', '大庆市', '大庆', '', '20', '0');
INSERT INTO `tp_area` VALUES ('2007', '伊春市', '伊春', '', '20', '0');
INSERT INTO `tp_area` VALUES ('2008', '牡丹江市', '牡丹江', '', '20', '0');
INSERT INTO `tp_area` VALUES ('2009', '佳木斯市', '佳木斯', '', '20', '0');
INSERT INTO `tp_area` VALUES ('2010', '七台河市', '七台河', '', '20', '0');
INSERT INTO `tp_area` VALUES ('2011', '黑河市', '黑河', '', '20', '0');
INSERT INTO `tp_area` VALUES ('2012', '绥化市', '绥化', '', '20', '0');
INSERT INTO `tp_area` VALUES ('2013', '大兴安岭', '大兴安岭', '', '20', '0');
INSERT INTO `tp_area` VALUES ('2101', '合肥市', '合肥', '', '21', '0');
INSERT INTO `tp_area` VALUES ('2102', '芜湖市', '芜湖', '', '21', '0');
INSERT INTO `tp_area` VALUES ('2103', '蚌埠市', '蚌埠', '', '21', '0');
INSERT INTO `tp_area` VALUES ('2104', '淮南市', '淮南', '', '21', '0');
INSERT INTO `tp_area` VALUES ('2105', '马鞍山市', '马鞍山', '', '21', '0');
INSERT INTO `tp_area` VALUES ('2106', '淮北市', '淮北', '', '21', '0');
INSERT INTO `tp_area` VALUES ('2107', '铜陵市', '铜陵', '', '21', '0');
INSERT INTO `tp_area` VALUES ('2108', '安庆市', '安庆', '', '21', '0');
INSERT INTO `tp_area` VALUES ('2109', '黄山市', '黄山', '', '21', '0');
INSERT INTO `tp_area` VALUES ('2110', '滁州市', '滁州', '', '21', '0');
INSERT INTO `tp_area` VALUES ('2111', '阜阳市', '阜阳', '', '21', '0');
INSERT INTO `tp_area` VALUES ('2112', '宿州市', '宿州', '', '21', '0');
INSERT INTO `tp_area` VALUES ('2113', '巢湖市', '巢湖', '', '21', '0');
INSERT INTO `tp_area` VALUES ('2114', '六安市', '六安', '', '21', '0');
INSERT INTO `tp_area` VALUES ('2115', '亳州市', '亳州', '', '21', '0');
INSERT INTO `tp_area` VALUES ('2116', '宣城市', '宣城', '', '21', '0');
INSERT INTO `tp_area` VALUES ('2117', '池州市', '池州', '', '21', '0');
INSERT INTO `tp_area` VALUES ('2201', '长沙市', '长沙', '', '22', '0');
INSERT INTO `tp_area` VALUES ('2202', '株州市', '株州', '', '22', '0');
INSERT INTO `tp_area` VALUES ('2203', '湘潭市', '湘潭', '', '22', '0');
INSERT INTO `tp_area` VALUES ('2204', '衡阳市', '衡阳', '', '22', '0');
INSERT INTO `tp_area` VALUES ('2205', '邵阳市', '邵阳', '', '22', '0');
INSERT INTO `tp_area` VALUES ('2206', '岳阳市', '岳阳', '', '22', '0');
INSERT INTO `tp_area` VALUES ('2207', '常德市', '常德', '', '22', '0');
INSERT INTO `tp_area` VALUES ('2208', '张家界市', '张家界', '', '22', '0');
INSERT INTO `tp_area` VALUES ('2209', '益阳市', '益阳', '', '22', '0');
INSERT INTO `tp_area` VALUES ('2210', '郴州市', '郴州', '', '22', '0');
INSERT INTO `tp_area` VALUES ('2211', '永州市', '永州', '', '22', '0');
INSERT INTO `tp_area` VALUES ('2212', '怀化市', '怀化', '', '22', '0');
INSERT INTO `tp_area` VALUES ('2213', '娄底市', '娄底', '', '22', '0');
INSERT INTO `tp_area` VALUES ('2214', '湘西州', '湘西', '', '22', '0');
INSERT INTO `tp_area` VALUES ('2301', '南宁市', '南宁', '', '23', '0');
INSERT INTO `tp_area` VALUES ('2302', '柳州市', '柳州', '', '23', '0');
INSERT INTO `tp_area` VALUES ('2303', '桂林市', '桂林', '', '23', '0');
INSERT INTO `tp_area` VALUES ('2304', '梧州市', '梧州', '', '23', '0');
INSERT INTO `tp_area` VALUES ('2305', '北海市', '北海', '', '23', '0');
INSERT INTO `tp_area` VALUES ('2306', '防城港市', '防城港', '', '23', '0');
INSERT INTO `tp_area` VALUES ('2307', '钦州市', '钦州', '', '23', '0');
INSERT INTO `tp_area` VALUES ('2308', '贵港市', '贵港', '', '23', '0');
INSERT INTO `tp_area` VALUES ('2309', '玉林市', '玉林', '', '23', '0');
INSERT INTO `tp_area` VALUES ('2310', '南宁地区', '南宁地区', '', '23', '0');
INSERT INTO `tp_area` VALUES ('2311', '柳州地区', '柳地区', '', '23', '0');
INSERT INTO `tp_area` VALUES ('2312', '贺州地区', '贺地区', '', '23', '0');
INSERT INTO `tp_area` VALUES ('2313', '百色地区', '百色地区', '', '23', '0');
INSERT INTO `tp_area` VALUES ('2314', '河池地区', '河池地区', '', '23', '0');
INSERT INTO `tp_area` VALUES ('2401', '海口市', '海口', '', '24', '0');
INSERT INTO `tp_area` VALUES ('2402', '三亚市', '三亚', '', '24', '0');
INSERT INTO `tp_area` VALUES ('2403', '五指山市', '五指山', '', '24', '0');
INSERT INTO `tp_area` VALUES ('2404', '琼海市', '琼海', '', '24', '0');
INSERT INTO `tp_area` VALUES ('2405', '儋州市', '儋州', '', '24', '0');
INSERT INTO `tp_area` VALUES ('2406', '琼山市', '琼山', '', '24', '0');
INSERT INTO `tp_area` VALUES ('2407', '文昌市', '文昌', '', '24', '0');
INSERT INTO `tp_area` VALUES ('2408', '万宁市', '万宁', '', '24', '0');
INSERT INTO `tp_area` VALUES ('2409', '东方市', '东方', '', '24', '0');
INSERT INTO `tp_area` VALUES ('2410', '澄迈县', '澄迈县', '', '24', '0');
INSERT INTO `tp_area` VALUES ('2411', '定安县', '定安县', '', '24', '0');
INSERT INTO `tp_area` VALUES ('2412', '屯昌县', '屯昌县', '', '24', '0');
INSERT INTO `tp_area` VALUES ('2413', '临高县', '临高县', '', '24', '0');
INSERT INTO `tp_area` VALUES ('2414', '白沙县', '白沙县', '', '24', '0');
INSERT INTO `tp_area` VALUES ('2415', '昌江县', '昌江县', '', '24', '0');
INSERT INTO `tp_area` VALUES ('2416', '乐东县', '乐东县', '', '24', '0');
INSERT INTO `tp_area` VALUES ('2417', '陵水县', '陵水县', '', '24', '0');
INSERT INTO `tp_area` VALUES ('2418', '保亭县', '保亭县', '', '24', '0');
INSERT INTO `tp_area` VALUES ('2419', '琼中县', '琼中县', '', '24', '0');
INSERT INTO `tp_area` VALUES ('2501', '昆明市', '昆明', '', '25', '0');
INSERT INTO `tp_area` VALUES ('2502', '曲靖市', '曲靖', '', '25', '0');
INSERT INTO `tp_area` VALUES ('2503', '玉溪市', '玉溪', '', '25', '0');
INSERT INTO `tp_area` VALUES ('2504', '保山市', '保山', '', '25', '0');
INSERT INTO `tp_area` VALUES ('2505', '昭通市', '昭通', '', '25', '0');
INSERT INTO `tp_area` VALUES ('2506', ' 普洱市', ' 普洱', '', '25', '0');
INSERT INTO `tp_area` VALUES ('2507', '临沧市', '临沧', '', '25', '0');
INSERT INTO `tp_area` VALUES ('2508', '丽江市', '丽江', '', '25', '0');
INSERT INTO `tp_area` VALUES ('2509', '文山州', '文山', '', '25', '0');
INSERT INTO `tp_area` VALUES ('2510', '红河州', '红河', '', '25', '0');
INSERT INTO `tp_area` VALUES ('2511', '西双版纳', '西双版纳', '', '25', '0');
INSERT INTO `tp_area` VALUES ('2512', '楚雄州', '楚雄', '', '25', '0');
INSERT INTO `tp_area` VALUES ('2513', '大理州', '大理', '', '25', '0');
INSERT INTO `tp_area` VALUES ('2514', '德宏州', '德宏', '', '25', '0');
INSERT INTO `tp_area` VALUES ('2515', '怒江州', '怒江', '', '25', '0');
INSERT INTO `tp_area` VALUES ('2516', '迪庆州', '迪庆', '', '25', '0');
INSERT INTO `tp_area` VALUES ('2601', '贵阳市', '贵阳', '', '26', '0');
INSERT INTO `tp_area` VALUES ('2602', '六盘水市', '六盘水', '', '26', '0');
INSERT INTO `tp_area` VALUES ('2603', '遵义市', '遵义', '', '26', '0');
INSERT INTO `tp_area` VALUES ('2604', '安顺市', '安顺', '', '26', '0');
INSERT INTO `tp_area` VALUES ('2605', '铜仁地区', '铜仁地区', '', '26', '0');
INSERT INTO `tp_area` VALUES ('2606', '毕节地区', '毕节地区', '', '26', '0');
INSERT INTO `tp_area` VALUES ('2607', '黔西南州', '黔西南', '', '26', '0');
INSERT INTO `tp_area` VALUES ('2608', '黔东南州', '黔东南', '', '26', '0');
INSERT INTO `tp_area` VALUES ('2609', '黔南州', '黔南', '', '26', '0');
INSERT INTO `tp_area` VALUES ('2701', '拉萨市', '拉萨', '', '27', '0');
INSERT INTO `tp_area` VALUES ('2702', '那曲地区', '那曲地区', '', '27', '0');
INSERT INTO `tp_area` VALUES ('2703', '昌都地区', '昌都地区', '', '27', '0');
INSERT INTO `tp_area` VALUES ('2704', '山南地区', '山南地区', '', '27', '0');
INSERT INTO `tp_area` VALUES ('2705', '日喀则', '日喀则', '', '27', '0');
INSERT INTO `tp_area` VALUES ('2706', '阿里地区', '阿里地区', '', '27', '0');
INSERT INTO `tp_area` VALUES ('2707', '林芝地区', '林芝地区', '', '27', '0');
INSERT INTO `tp_area` VALUES ('2801', '兰州市', '兰州', '', '28', '0');
INSERT INTO `tp_area` VALUES ('2802', '金昌市', '金昌', '', '28', '0');
INSERT INTO `tp_area` VALUES ('2803', '白银市', '白银', '', '28', '0');
INSERT INTO `tp_area` VALUES ('2804', '天水市', '天水', '', '28', '0');
INSERT INTO `tp_area` VALUES ('2805', '嘉峪关市', '嘉峪关', '', '28', '0');
INSERT INTO `tp_area` VALUES ('2806', '武威市', '武威', '', '28', '0');
INSERT INTO `tp_area` VALUES ('2807', '定西地区', '定西地区', '', '28', '0');
INSERT INTO `tp_area` VALUES ('2808', '平凉地区', '平凉地区', '', '28', '0');
INSERT INTO `tp_area` VALUES ('2809', '庆阳地区', '庆阳地区', '', '28', '0');
INSERT INTO `tp_area` VALUES ('2810', '陇南地区', '陇南地区', '', '28', '0');
INSERT INTO `tp_area` VALUES ('2811', '张掖地区', '张掖地区', '', '28', '0');
INSERT INTO `tp_area` VALUES ('2812', '酒泉地区', '酒泉地区', '', '28', '0');
INSERT INTO `tp_area` VALUES ('2813', '甘南州', '甘南', '', '28', '0');
INSERT INTO `tp_area` VALUES ('2814', '临夏州', '临夏', '', '28', '0');
INSERT INTO `tp_area` VALUES ('2901', '银川市', '银川', '', '29', '0');
INSERT INTO `tp_area` VALUES ('2902', '石嘴山市', '石嘴山', '', '29', '0');
INSERT INTO `tp_area` VALUES ('2903', '吴忠市', '吴忠', '', '29', '0');
INSERT INTO `tp_area` VALUES ('2904', '固原市', '固原', '', '29', '0');
INSERT INTO `tp_area` VALUES ('3001', '西宁市', '西宁', '', '30', '0');
INSERT INTO `tp_area` VALUES ('3002', '海东地区', '海东地区', '', '30', '0');
INSERT INTO `tp_area` VALUES ('3003', '海北州', '海北', '', '30', '0');
INSERT INTO `tp_area` VALUES ('3004', '黄南州', '黄南', '', '30', '0');
INSERT INTO `tp_area` VALUES ('3005', '海南州', '海南', '', '30', '0');
INSERT INTO `tp_area` VALUES ('3006', '果洛州', '果洛', '', '30', '0');
INSERT INTO `tp_area` VALUES ('3007', '玉树州', '玉树', '', '30', '0');
INSERT INTO `tp_area` VALUES ('3008', '海西州', '海西', '', '30', '0');
INSERT INTO `tp_area` VALUES ('3101', '乌鲁木齐', '乌鲁木齐', '', '31', '0');
INSERT INTO `tp_area` VALUES ('3102', '克拉玛依', '克拉玛依', '', '31', '0');
INSERT INTO `tp_area` VALUES ('3103', '石河子市', '石河子', '', '31', '0');
INSERT INTO `tp_area` VALUES ('3104', '吐鲁番', '吐鲁番', '', '31', '0');
INSERT INTO `tp_area` VALUES ('3105', '哈密地区', '哈密地区', '', '31', '0');
INSERT INTO `tp_area` VALUES ('3106', '和田地区', '和田地区', '', '31', '0');
INSERT INTO `tp_area` VALUES ('3107', '阿克苏', '阿克苏', '', '31', '0');
INSERT INTO `tp_area` VALUES ('3108', '喀什地区', '喀什地区', '', '31', '0');
INSERT INTO `tp_area` VALUES ('3109', '克孜勒苏', '克孜勒苏', '', '31', '0');
INSERT INTO `tp_area` VALUES ('3110', '巴音郭楞', '巴音郭楞', '', '31', '0');
INSERT INTO `tp_area` VALUES ('3111', '昌吉州', '昌吉', '', '31', '0');
INSERT INTO `tp_area` VALUES ('3112', '博尔塔拉', '博尔塔拉', '', '31', '0');
INSERT INTO `tp_area` VALUES ('3113', '伊犁州', '伊犁', '', '31', '0');
INSERT INTO `tp_area` VALUES ('3201', '香港岛', '香港岛', '', '32', '0');
INSERT INTO `tp_area` VALUES ('3202', '九龙', '九龙', '', '32', '0');
INSERT INTO `tp_area` VALUES ('3203', '新界', '新界', '', '32', '0');
INSERT INTO `tp_area` VALUES ('3301', '澳门半岛', '澳门半岛', '', '33', '0');
INSERT INTO `tp_area` VALUES ('3302', '离岛', '离岛', '', '33', '0');
INSERT INTO `tp_area` VALUES ('3401', '台北市', '台北', '', '34', '0');
INSERT INTO `tp_area` VALUES ('3402', '高雄市', '高雄', '', '34', '0');
INSERT INTO `tp_area` VALUES ('3403', '台南市', '台南', '', '34', '0');
INSERT INTO `tp_area` VALUES ('3404', '台中市', '台中', '', '34', '0');
INSERT INTO `tp_area` VALUES ('3405', '金门县', '金门县', '', '34', '0');
INSERT INTO `tp_area` VALUES ('3406', '南投县', '南投县', '', '34', '0');
INSERT INTO `tp_area` VALUES ('3407', '基隆市', '基隆', '', '34', '0');
INSERT INTO `tp_area` VALUES ('3408', '新竹市', '新竹', '', '34', '0');
INSERT INTO `tp_area` VALUES ('3409', '嘉义市', '嘉义', '', '34', '0');
INSERT INTO `tp_area` VALUES ('3410', '新北市', '新北', '', '34', '0');
INSERT INTO `tp_area` VALUES ('3411', '宜兰县', '宜兰县', '', '34', '0');
INSERT INTO `tp_area` VALUES ('3412', '新竹县', '新竹县', '', '34', '0');
INSERT INTO `tp_area` VALUES ('3413', '桃园县', '桃园县', '', '34', '0');
INSERT INTO `tp_area` VALUES ('3414', '苗栗县', '苗栗县', '', '34', '0');
INSERT INTO `tp_area` VALUES ('3415', '彰化县', '彰化县', '', '34', '0');
INSERT INTO `tp_area` VALUES ('3416', '嘉义县', '嘉义县', '', '34', '0');
INSERT INTO `tp_area` VALUES ('3417', '云林县', '云林县', '', '34', '0');
INSERT INTO `tp_area` VALUES ('3418', '屏东县', '屏东县', '', '34', '0');
INSERT INTO `tp_area` VALUES ('3419', '台东县', '台东县', '', '34', '0');
INSERT INTO `tp_area` VALUES ('3420', '花莲县', '花莲县', '', '34', '0');
INSERT INTO `tp_area` VALUES ('3421', '澎湖县', '澎湖县', '', '34', '0');
INSERT INTO `tp_area` VALUES ('6001', '美国', '美国', '', '60', '0');
INSERT INTO `tp_area` VALUES ('6002', '英国', '英国', '', '60', '0');
INSERT INTO `tp_area` VALUES ('6003', '法国', '法国', '', '60', '0');
INSERT INTO `tp_area` VALUES ('6004', '俄罗斯', '俄罗斯', '', '60', '0');
INSERT INTO `tp_area` VALUES ('6005', '加拿大', '加拿大', '', '60', '0');
INSERT INTO `tp_area` VALUES ('6006', '巴西', '巴西', '', '60', '0');
INSERT INTO `tp_area` VALUES ('6007', '澳大利亚', '澳大利亚', '', '60', '0');
INSERT INTO `tp_area` VALUES ('6008', '印尼', '印尼', '', '60', '0');
INSERT INTO `tp_area` VALUES ('6009', '马来西亚', '马来西亚', '', '60', '0');
INSERT INTO `tp_area` VALUES ('6010', '新加坡', '新加坡', '', '60', '0');
INSERT INTO `tp_area` VALUES ('6011', '菲律宾', '菲律宾', '', '60', '0');
INSERT INTO `tp_area` VALUES ('6012', '越南', '越南', '', '60', '0');
INSERT INTO `tp_area` VALUES ('6013', '印度', '印度', '', '60', '0');
INSERT INTO `tp_area` VALUES ('6014', '日本', '日本', '', '60', '0');
INSERT INTO `tp_area` VALUES ('6015', '韩国', '韩国', '', '60', '0');
INSERT INTO `tp_area` VALUES ('6016', '泰国', '泰国', '', '60', '0');
INSERT INTO `tp_area` VALUES ('6017', '缅甸', '缅甸', '', '60', '0');
INSERT INTO `tp_area` VALUES ('6018', '其他', '其他', '', '60', '0');

-- ----------------------------
-- Table structure for `tp_article`
-- ----------------------------
DROP TABLE IF EXISTS `tp_article`;
CREATE TABLE `tp_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '' COMMENT '标题',
  `shorttitle` varchar(30) NOT NULL DEFAULT '' COMMENT '副标题',
  `color` char(10) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `copyfrom` varchar(30) NOT NULL DEFAULT '',
  `author` varchar(30) NOT NULL DEFAULT '',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `content` longtext COMMENT '内容',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要描述',
  `publishtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `updatetime` varchar(30) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `commentflag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jumpurl` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  `weight` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_article
-- ----------------------------
INSERT INTO `tp_article` VALUES ('1', '房车除了做为一般汽车保养外还应做到这些', '', '', '', '', '', '', '<p>\r\n	<img src=\"/uploads/kindedit/image/20180225/20180225132404_68353.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<p style=\"text-indent:2em;font-size:16px;font-family:arial, Simsun, sans-serif;color:#333333;vertical-align:baseline;background:#FFFFFF;\">\r\n		&nbsp;现在有越来越多的年轻人加入“驴”的队伍，也有越来越多的驴友开始了解，喜欢并应用房车，那么身为房车车主的你是否明确知道该如何保养你心爱的房车那？下面是一些保养房车的好方法，为了你的爱车不妨可看一看。\r\n	</p>\r\n	<p style=\"text-indent:2em;font-size:16px;font-family:arial, Simsun, sans-serif;color:#333333;vertical-align:baseline;background:#FFFFFF;\">\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">第一，季后大扫除</span>\r\n	</p>\r\n	<p style=\"text-indent:2em;font-size:16px;font-family:arial, Simsun, sans-serif;color:#333333;vertical-align:baseline;background:#FFFFFF;\">\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 炎炎夏季过后，首先要给你的房车做一次全面，彻底的大扫除。要将车内各个角落都擦拭干净，将床罩，桌布，窗帘等取下来清洗。清理冰箱后要使门半开，这样能够避免鼠虫骚扰。还要清理水箱和导管容器，建议最好选用房车专用清洁用品，有利于保持房车的优良性能。\r\n	</p>\r\n	<p style=\"text-indent:2em;font-size:16px;font-family:arial, Simsun, sans-serif;color:#333333;vertical-align:baseline;background:#FFFFFF;\">\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">第二，寒冷时节要小心</span>\r\n	</p>\r\n	<p style=\"text-indent:2em;font-size:16px;font-family:arial, Simsun, sans-serif;color:#333333;vertical-align:baseline;background:#FFFFFF;\">\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 房车能够在寒冬给你温暖，你也要学会为它驱寒，其实房车是很怕冻的。在暴风雪来临之前一定要提前做好准备，比如给门窗横截面上涂上硅树脂或甘油，防止门窗被冻；如果房车车顶出现积雪就要将车顶支起来，帮助积雪顺利滑落。一定要切记零负荷的蓄电池很容易被冻并导致报废，建议车主可以将蓄电池拆下来带回家充电，每隔六周充一次。\r\n	</p>\r\n	<p style=\"text-indent:2em;font-size:16px;font-family:arial, Simsun, sans-serif;color:#333333;vertical-align:baseline;background:#FFFFFF;\">\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">第三，定期检查维修</span>\r\n	</p>\r\n	<p style=\"text-indent:2em;font-size:16px;font-family:arial, Simsun, sans-serif;color:#333333;vertical-align:baseline;background:#FFFFFF;\">\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 房车的发电系统，照明系统，管路系统都需要定期的检查，注意车内设施工作时的声音是否正常，建议用点击检测器来检查电路连接是否正确。还需要准备一个水压调节器，有效防止避免室内水管爆裂。\r\n	</p>\r\n	<p style=\"text-indent:2em;font-size:16px;font-family:arial, Simsun, sans-serif;color:#333333;vertical-align:baseline;background:#FFFFFF;\">\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">第四，房车防护罩</span>\r\n	</p>\r\n	<p style=\"text-indent:2em;font-size:16px;font-family:arial, Simsun, sans-serif;color:#333333;vertical-align:baseline;background:#FFFFFF;\">\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 确保房车安全干净一个好的防护罩是必须的，要选择轻薄、透气的材质的防护罩，同时防护罩的几个角固定防止对车窗和车身漆面的刮蹭。当摘除护罩时建议用压缩空气从内而外地吹出躲在冷凝器盘管内的小碎屑。最好是每年做一次哦！\r\n	</p>\r\n</p>', '一分钟让你彻底了解平行进口车', '1497498669', '1519565063', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('2', '了解房车改装知识 改装更简单', '', '', '', '', '', '', '<p>\r\n	现在根据中国的法律，可以房车改装的无非就是外观、内饰、动力、操控和音响之类的改装。房车的主要机械结构包括：车身、内部装备、发动机、变速箱、悬挂、刹车系统和电子系统。对其中的某一项进行改装很可能就对汽车的性能发生改变。\r\n</p>\r\n<p>\r\n	<strong>&nbsp;&nbsp;&nbsp; 外观改装：</strong> \r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 外观的改装一般就是贴纸、车身彩绘、车标、前后大包围、大灯等等。改变车身最便捷的方式就是加装空气动力学套件，就是俗称的装大包围，基本上包括前进气格栅，车侧扰流板，后扰流板，尾翼。还有一些车主会加装下前唇。不要小看加装的空气动力学套件，好的套件可以使汽车在高速行驶的时候更加稳定。\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	<strong>&nbsp;&nbsp;&nbsp;</strong><strong>&nbsp;动力改装：</strong> \r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp; 发动机的改装就是让发动机拥有更大的动力输出。这部分改装是全车的关键，也是最复杂的改装。改装的方式通常就是加大缸径，提高压缩比，加多气门，加装涡轮增压器等。但是不管什么样的改装都不要更改发动机原始的结构，因为这样很可能对发动机造成损伤。\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	<strong>&nbsp;&nbsp;&nbsp; 进气改装：</strong> \r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 发动机在工作时候需要大量的空气，空气在进入发动机之前要进行过滤，这是进气的重要组成部分。现在很多车的原厂配置都是一次性空气滤清器。我们要改装的就是更换成化学纤维制成的，好处是可以可以增加空气进入燃烧室的空气质量，流速提高，使燃料在发动机燃烧更充分，单位效率更高。\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong>点火系统改装：</strong> \r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 点火系统的改装可以直接影响到汽车启动的速度和稳定性。点火系统由火花塞和点火线共同构成，原有配置均为单组线束，在电压、电流的通过型和通过量上均满足不了要求，所以对点火系统的改装正是为了这个需求。\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	<strong>&nbsp;&nbsp;</strong><strong>&nbsp; 排气改装：</strong> \r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 排气效能的好坏直接关系到发动机效能的好坏。在进气增加、燃烧完好的同时、排气效能也加强，高性能的排气管和消声器成了追求高性能车主的首选。\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong>操控性和刹车改装：</strong> \r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 这方面改装比较简单，就是提升刹车的性能，最直接就是换装大尺寸的刹车盘。另外还可以更换高等级的刹车油或是换装金属材质的高压刹车管，再就是使用规则更大的刹车倍利器提高刹车踏板的辅助动力。\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	<strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong>底盘悬挂改装：</strong> \r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp; 这部分的改装关系到汽车的操控等关键因素，原厂车的出厂多数都是为了迎合大众的使用习惯，但是往往有些车主不喜欢这样的调校。所以要更换为比较强化的悬挂系统。对车身行驶影响最大的就是减震系统。市面上的减震器类型有：原厂加强型、原厂加强车身高度可调型、专业高运动型、竞赛专用型。车主可以根据自己的喜好和需要选择适合自己的改装类型。\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong>轮胎改装：</strong> \r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp; 轮胎的改装是改装当中非常重要的一项，不管是改那些方面，最后都是通过轮胎来反映到汽车上的。有一个抓地力强的轮胎可以增加车辆的稳定性和安全性。各种赛事，各种用途都要有制定的轮胎系统作为搭配。所以选择一款适合的轮胎才可以最大限度的发挥车子的性能。\r\n</p>', '	现在根据中国的法律，可以房车改装的无非就是外观、内饰、动力、操控和音响之类的改装。房车的主要机械结构包括：车身、内部装备、发动机、变速箱、悬挂、刹车系统和电子系统。对其中的某一项进行改装很可能就对汽车的性能发生改变。\r\n\r\n\r\n	&amp;n', '1497498690', '1520491598', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('9', '如何在这万物生长的春天呵护您的爱车', '', '', '', '', '', '', '<span style=\"font-size:16px;line-height:28px;font-family:arial, Simsun, sans-serif;color:#333333;background-color:#FFFFFF;\">&nbsp;</span><span style=\"font-size:16px;\">春天充满着温暖的绿意，但潮湿的雨季天气并不那么讨人喜欢。人们在享受春日的温暖之时，也要面对多雨、犯困的气候环境，对于有车族而言，春季对汽车的保养及行车的安全有更高的要求。&nbsp;&nbsp;</span><br />\r\n<span style=\"font-size:16px;\"> 　　</span><strong><span style=\"font-size:16px;\">预防春困行车</span></strong><span style=\"font-size:16px;\">&nbsp;&nbsp;</span><br />\r\n<span style=\"font-size:16px;\"> 　　春天天气转暖，很多人都有睡不醒的感觉，一直处于疲倦的状态，导致精神不集中，甚至开车时打盹。另外，春季夜晚时间缩短，这样人们的睡眠时间也会相应缩短，也导致了夜间睡眠不足，白天犯困。因此在行车过程中，要特别注意这种人体反映，预防“春困”的发生。瓯海交警大队宣传股林海勇介绍，事故发生的原因多种多样，但是驾驶员的精神状态也是行车安全的关键。他提醒大家，提高交通意识，同时要注意保证充足的睡眠，保持良好的精神状态，不要疲劳驾驶。&nbsp;&nbsp;</span><br />\r\n<span style=\"font-size:16px;\"> 　　</span><strong><span style=\"font-size:16px;\">适时美容车漆</span></strong><span style=\"font-size:16px;\">&nbsp;&nbsp;</span><br />\r\n<span style=\"font-size:16px;\"> 　　春季雨水较多，雨水中的酸性成分对汽车的漆面具有极强的腐蚀作用，久而久之就会对汽车的漆面造成损害，因此在雨水较多的春季，要特别注意保护好汽车漆面。保养一定不要忽视汽车的防水工作。温州市申联汽车服务公司工作人员介绍，在进行换季保养时，最好能进行一次漆面美容。最简单的是打蜡，给汽车穿上一件看不见的保护外衣，防止漆面褪色老化，让亮丽的车容常伴左右。&nbsp;&nbsp;</span><br />\r\n<span style=\"font-size:16px;\"> 　　</span><strong><span style=\"font-size:16px;\">细心检查雨刮</span></strong><span style=\"font-size:16px;\">&nbsp;&nbsp;</span><br />\r\n<span style=\"font-size:16px;\"> 　　春季雨水的增多必然让雨刮承担更多的责任。因为雨天的路面及视线都不利于驾驶，如果雨刷不能很好刷掉雨水，那将会给您行车安全带来很大危险，此时的雨刮则扮演着相当重要的角色，因此对它的检查保养要更加细心到位。日丰轿车维修中心人员说，检查雨刮时，注意雨刮是否有震动和异响，检查不同速度下雨刮是否保持一定速度，观察刮水的状态，以及刮水支杆是否存在摆动不均匀或漏刮的现象。这两种故障出现任何一种，都意味着雨刮叶片有损坏。方法是将雨刮拉起来，用手指在橡胶雨刮片上摸一摸，检查是否有损坏，及橡胶叶片的弹性怎样。若叶片老化、硬化，出现裂纹，应及时更换。&nbsp;&nbsp;</span><br />\r\n<span style=\"font-size:16px;\"> 　　</span><strong><span style=\"font-size:16px;\">加强防菌防潮</span></strong><span style=\"font-size:16px;\">&nbsp;&nbsp;</span><br />\r\n<span style=\"font-size:16px;\"> 　　一般冬天很少开窗通风透气，车内积聚了大量细菌，春季气温升高，再加上空气潮湿，是各种病菌繁衍生长的黄金季节，因此要特别注意汽车室内的防菌工作，让汽车室内保持干爽卫生。开冷气可以防潮，在不用车时，可用干燥剂代替空调除湿。另外，通风管路保持畅通，也不易滋生异味。车内除了开冷气除湿外，最好再买一个简易除湿盒，这样车内部件在隔夜后不易受潮。简单的方法也有，可把报纸卷成一捆放在前后脚垫上或后备厢中，同样也有除湿的效果。后备厢是大家较容易疏忽的地方，许多人喜欢将一些洗车工具及杂物堆在里边，尤其是放置备胎的地方更容易藏污纳垢，积聚的水汽极易流到凹槽的备胎处。长时间不使用，该部分的钣金及换胎工具就会生锈，最终蔓延至整个底盘部分。因此后备厢内最好不要堆放不必要的杂物。另外，放ＣＤ时会产生读盘困难，最好每隔一段时间擦洗一次。此外，因为很多汽车的ＣＤ碟盒是装在后备厢的，为了防止音响潮湿，还可以在后备箱中放个小型的除湿盒。&nbsp;&nbsp;</span><br />\r\n<span style=\"font-size:16px;\"> 　　值得一提的是，如果汽车长期停在露天的停车场，除了车门焊接及车体焊接部分容易生锈腐蚀外，车门内部的铰链、锁扣等铁质零件因被门饰板遮住，也容易受潮，因此在天晴的时候可找一个阴凉的地方，将所有的车门及后备厢盖打开，让车内的湿气排出、通风。然后将车内的脚踏垫、椅套拆下来清洗晾干。&nbsp;&nbsp;</span><br />\r\n<span style=\"font-size:16px;\"> 　　</span><strong><span style=\"font-size:16px;\">清香洁净空调</span></strong><span style=\"font-size:16px;\">&nbsp;&nbsp;</span><br />\r\n<span style=\"font-size:16px;\"> 　　经过冬天的行驶，汽车水箱、冷凝器表面会覆盖大量的尘土和柳絮等杂物，这都会使车辆产生水温高和空调制冷效果差等问题，从而导致空调电子扇长时间工作，容易损坏空调，而且使车辆油耗增加，同时您还会发现车辆噪音增大。因此为了避免这种情况发生，春季应该用高压气枪清洁水箱冷凝器表面。另外，空调风道和蒸发器表面尘土和杂质过多时，长时间使用就会发生霉变，在天气转暖的情况下滋生大量细菌。此时开空调就会发现有异味出现，从而影响到您的身体健康，因此在使用空调前，除了清洗水箱冷凝器表面，还要对空调系统进行清洁除菌，更换空调滤芯。这样处理后，您就可以放心地使用空调了。&nbsp;</span>', ' 春天充满着温暖的绿意，但潮湿的雨季天气并不那么讨人喜欢。人们在享受春日的温暖之时，也要面对多雨、犯困的气候环境，对于有车族而言，春季对汽车的保养及行车的安全有更高的要求。  \r\n　　预防春困行车 &amp;', '1520492051', '1520492080', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('3', '你不知道的一些逆变器小知识', '', '', '', '', '', '', '<p>\r\n	<span style=\"font-size:14px;font-family:&quot;\"><strong>1.什么是逆变器，它起什么作用？</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;font-family:&quot;\">简单地说，逆变器就是一种将低压（12、24、48伏等）直流电转变为220伏交流电的电子设备。日常生活中通常是将220伏交流电整流成直流电使用，逆变器的作用就与此相反，所以得名“逆变器”。我们处在一个“移动”的时代，移动办公，移动通讯，移动休闲移动娱乐。在移动的生活状态下，不但需要由电池或电瓶供给的低压直流电，也更需要在日常环境中不可或缺的220伏交流电，逆变器就是满足我们这方面需要。</span> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/kindedit/image/20180225/20180225132539_14172.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;font-family:&quot;\"><strong>2.按输出波形划分，逆变器分为几类？</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;font-family:&quot;\">主要分两类，正弦波逆变器和方波逆变器。正弦波逆变器输出的是同我们日常使用的电网一样甚至更好的正弦波交流电，因为它不存在电磁污染。方波逆变器输出的则是质量较差的方波交流电，其正向最大值到负向最大值几乎在同时产生，这样，对负载和逆变器本身造成剧烈的不稳定影响。特别是负载能力差，仅为额定负载的40－60％，不能带感性负载。如所带的负载过大，方波电流中包含的三次谐波成分将使流入负载中的容性电流增大，严重时会损坏负载的电源滤波电容。应对这些缺点，出现了准正弦波也叫改良正弦波、修正正弦波、模拟正弦波逆变器，其输出波形从正向最大值到负向最大值之间有一个时间间隔，使用效果有所改善，但准正弦波的波形还是由折线组成，属于方波范畴，连续性不好。总的来说，正弦波逆变器提供高质量的交流电，能够带动任何种类的负载，但技术要求和成本也高。准正弦波逆变器可以满足我们大部分的用电需求，效率高，噪音小，售价便宜，是市场中的主流产品。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;font-family:&quot;\"><strong>3.什么是“感性负载”？</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;font-family:&quot;\">简单的说，用电磁感应原理制作的大功率电器产品，如电动机、压缩机、继电器、日光灯等等。这类产品在启动时需要一个比维持正常运转所需电流大得多（大约在3-7倍）的启动电流。比如一台在正常工作时耗电100瓦左右的电冰箱，启动功率可高达900瓦以上。由于感性负载在接通电源或者断开电源的一瞬间，会产生反电动势电压，这种电压的峰值远远大于逆变器所能承受的电压值，很容易引起逆变器的瞬时超载，影响逆变器的使用寿命。所以这类电器对供电波形的要求较高。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;font-family:&quot;\"><strong>4.修正弦波逆变器可以用于哪些电器？</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;font-family:&quot;\">修正弦波也分为若干种，从与方波相差无几的方形波到比较接近正弦波的圆角梯形波。在这里仅讨论方形波，这也是目前大部分高频逆变器能够提供的波形。这类修正弦波逆变器可应用于笔记本电脑、电视机、组合式音响、摄像机、数码相机、打印机、各种充电器、掌电上脑、游戏机、影碟机、移动DVD、家用治疗仪等等，输出功率较大的逆变器还可以应用于小型电热器具如电吹风机、电热杯、厨房电器等等。但对感性负载类电器如电冰箱、电钻等则不宜长时间使用修正弦波逆变器供电。否则，将可能对逆变器和相关电器产品造成损坏或缩短预期使用寿命。我们看一下修正弦波逆变器应用于电视机的情况。电视机对逆变器有以下三条要求：首先，电视机在开机时，消磁电路对电能有极大的瞬间需求，因此对逆变器的峰值功率要求很高。一台29英寸数字彩电，正常工作状态下的功耗约为80瓦，而开机的瞬间功率高达1450瓦。其次，因为电视机的场频等于交流电网频率，逆变器输出交流电的频率必须准确。第三，逆变器不应对电视机产生干扰。即使能满足以上三个条件，电视机在使用准正弦波交流电时，画面仍会有几条固定的干扰纹，色彩也会轻微偏绿。</span> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/kindedit/image/20180225/20180225132628_28025.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;font-family:&quot;\"><strong>5.什么是逆变器的效率？</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;font-family:&quot;\">逆变器在工作时其本身也要消耗一部分电力，它的输入功率要大于它的输出功率。也就是说逆变器的效率是逆变器输入功率与输出功率之比。一台逆变器输入了100瓦的直流电，输出了80瓦的交流电，那么，它的效率就是80％。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;font-family:&quot;\"><strong>6.什么是持续输出功率？什么是峰值输出功率？</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;font-family:&quot;\">一些使用电动机的电器或工具，如电冰箱、洗衣机、电钻等，在启动的瞬间需要很大的电流来推动，一旦启动成功，则仅需较小的电流来维持其正常运转。所以对逆变器来说，也就有了持续输出功率和峰值输出功率的概念。持续输出功率就是额定输出功率；一般峰值输出功率为额定输出功率的2倍。值得只有的是像空调、电冰箱等其启动电流相当于正常工作电流的3-9倍。必须有能够满足电器启动峰值功率的逆变器才能保障工作正常。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;font-family:&quot;\"><strong>7.应该怎样连接逆变器与电源和负载？</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;font-family:&quot;\">使用100瓦以下的电器可直接将150瓦逆变器插头插至点烟器插座后使用。超过150瓦的逆变器通过鳄鱼夹导线直接接到电瓶上，红线接电瓶正极，黑线接电瓶负极（不可接反，切记！）如果用电地点离电瓶较远，逆变器的连线原则是：逆变器和电瓶的连线应尽可能的短，而220伏交流电的输出线长些没有关系。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;font-family:&quot;\"><strong>8.汽车点烟器插口能够输出多大功率的电能？</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;font-family:&quot;\">一般从点烟器插口取电，逆变器应该能够驱动功率为一百瓦的用电器具。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;font-family:&quot;\"><strong>9.关闭汽车发动机的情况下可以使用逆变器吗？</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;font-family:&quot;\">可以的，在使用300瓦以下小功率电器时，一般的汽车电瓶可在关闭发动机的情况下提供大约25-55分钟的电力，比如只用一台耗电40瓦的笔记本电脑，使用时间就要长一些。一般逆变器内都设有欠压警示和欠压保护电路，长时间使用电瓶导致电压下降至10伏时，欠压保护电路启动，输出电压被切断并报警，以防止电瓶因为电压过低而无法启动发动机的事故。</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '	1.什么是逆变器，它起什么作用？\r\n\r\n\r\n	简单地说，逆变器就是一种将低压（12、24、48伏等）直流电转变为220伏交流电的电子设备。日常生活中通常是将220伏交流电整流成直流电使用，逆变器的作用就与此相反，所以得名“逆变器”。我', '1519565209', '1520491508', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('4', '房车充电这3步综合利用', '', '', '', '', '', '', '<p>\r\n	<br />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		<span>对于刚入门的房车迷来讲，来场</span>“<span>说走就走的旅行</span><span>”</span><span>其实也并不容易，想要驾着房车和亲人、爱人潇洒出行，很多房车用户都会面临一个比较郁闷的问题，就是房车用电。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		<span>众所周知，自行式房车在用电方面都是靠自身的发电机来发电的，房车在行驶过程中，发电机会产生电力供应，直接给房车电瓶进行充电。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		<span>车、房两部分电瓶是相互独立的，在使用过程中不会发生互相损耗。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		<span>通常问题是车在熄火之后发电机就会停止工作的，而且拖挂房车是没有发电机的，所以房车用电是很重要的问题。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		&nbsp;\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		01\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		<b>— <span>蓄电池电瓶 </span><span>—</span></b><b></b>\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		<span>要考虑蓄电池就要先谈谈它们的种类，实用且常用的无非是铅酸蓄电池、镍电池、锂电池，锂电池又有三元锂电池、磷酸铁锂电池等。其中铅酸电池不仅能量密度低、放电深度低、循环次数少，而且重量和体积都是几类电池里最大的，另外还会给环境带来严重污染。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		▼\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		&nbsp;\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		<span>三元锂</span>(<span>镍钴锰</span><span>)</span><span>电池在能量密度和单体产品成本方面有比较明显优势，但它的主要缺点是安全性不好及热稳定性低</span><span>(</span><span>相对磷酸铁锂材料而言</span><span>)</span><span>，除非完善的电池管理系统才能驾驭它的暴脾气。磷酸铁锂性能虽然没三元锂电好，但胜在相对安全。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		<span>加装大容量的蓄电池，也不失为一个办法，可以在车里床下或储物间加装，这样能够保证正常用电。但是这种方法的问题是：加装再大的电池也总会用完，你仍需要找地方充电，在野外会是一个大问题，但如果是短途旅行这个方法还是不错的。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		02\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		— <b><span>小型静音发电机</span></b>&nbsp;—\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		<span>安装静音发电机也是种方式，一个小型的静音发电机就可以满足房车内所有的设施用电</span>4<span>到</span><span>5</span><span>个小时</span><span>(</span><span>这个时间具体根据实际用电功耗</span><span>)</span><span>，但是这样你需要付出</span><span>4</span><span>升的汽油来帮助发电机发电。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		▼\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		&nbsp;\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		<span>不过通常所谓的静音指的是低于</span>85<span>分贝，噪音是个无法回避的问题，无论哪种常规发电机，噪音和震动都是令人难以忍受的，大约</span><span>7</span><span>米之内</span><span>70</span><span>分贝左右基本没跑。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		<span>另外发电机的重量也是个问题，不仅携带麻烦还会占用不小的空间，另外还要考虑为它添加汽油。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		03\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		— <b><span>车顶太阳能系统</span></b>&nbsp;—\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		<span>房车使用太阳能主要是通过在车顶铺设的太阳能板吸收太阳光，再通过逆变器转化为日常所用的交流电，转化之后的电能可以直接使用，也可以存入电瓶以备不时之需。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		<span>现在常用的方法都是加装的蓄电池跟汽车启动电瓶通过隔离器连接在一起，通过原车发电机、太阳能形成组合供电方式。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		▼\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		&nbsp;\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		<span>现在多数房车厂家均把太阳能板放入房车配置表的勾选项，它的优势在哪儿呢</span>?\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		<span>太阳能的优势在于：能源来自无处不在的太阳，随时可以为蓄电池充电，车内的一切用电设施都可以随时供电，而且在开车时可以用，在无电区可以用，在野外可以用，还可以应对路上的一些紧急或者突发特殊状况，这些方便和便捷是用钱无法衡量的。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		<span>但便利的同时，太阳能发电效率受到日照时长、光照强度影响，在天气不好的时候可能效率就要打折扣了。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		<span>在房车能源系统中，太阳能是优秀且必要的补充能源。其实如果不加装空调系统，太阳能是可以胜任房车主能源的。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		<span>安装</span>400W<span>的太阳能组件来计算，太阳照射的时长</span><span>5</span><span>个小时，可发</span><span>2</span><span>度电，在没有市电的户外，这样的补充还是很不错的。 房车上常备而且使用频次较高的电器如电视机、冰箱、电饭煲、电压力锅、笔记本电脑等，综合下来一天的用电实际上可以完全满足的。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		<span>当然这些只是一部分房车电器，需要用电的地方还有很多，比较实际和最合适的办法是：太阳能发电和开车电机同时充电。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		<span>太阳能是目前最理想的房车辅助用电。尤其是对于那些经常长期出去旅游或者去比较偏僻的地方旅游的车友来说，还是很有必要的，但是房车大量的用电并不仅仅是太阳能就能解决的。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;\">\r\n		<span>目前比较合理的做法就是尽量综合利用各种能源，达到成本和效率的平衡点，去合理配置各种能源方式，满足自己房车的用电需求</span><span></span>\r\n	</p>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '	对于刚入门的房车迷来讲，来场“说走就走的旅行”其实也并不容易，想要驾着房车和亲人、爱人潇洒出行，很多房车用户都会面临一个比较郁闷的问题，就是房车用电。\r\n\r\n\r\n	众所周知，自行式房车在用电方面都是靠自身的发电机来发电的，房车在行驶过', '1519565257', '1520490502', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('8', '献血车要怎样才算合格', '', '', '', '', '', '', '<p>\r\n	<span style=\"font-family:&quot;font-size:18px;\">献血车是一款服务于公益的医疗用车，而什么样的献血车才算是合格的呢？</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:&quot;font-size:18px;\">第一咱们的献血车必须让人在外观上觉得这车是可靠的。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:&quot;font-size:18px;\">第二车内必须让人感到舒适，第一次献血的人难免会紧张的嘛!所以我们车里如果能有个舒适的空间的话可以让献血者更加的放松。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:&quot;font-size:18px;\">第三呢车内必须是卫生的，大家都知道医用的物品都是要经过各种消毒的。所以车上的固定的医用设备可清洁度是很重要的。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:&quot;font-size:18px;\">第四车必须是安全的不管在行驶当中还是使用当中，这个是一辆车最重要的一部分。一辆车的平稳性和车里零件的固定都得经过严格的把关绝对是不能疏忽的。而车内电器的使用也是很重要的一部分。线路的安装和电器的散热啊后期的更换啊都要做到完美无缺。才能让您的献血车是合格优秀的。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:&quot;font-size:18px;\">接下来要进入正题了，这里向你们推荐一款由</span><a href=\"http://www.saloonrv.com/\"><span style=\"font-family:&quot;font-size:18px;\">厦龙改装的献血车</span></a><span style=\"font-family:&quot;font-size:18px;\">。这款献血车呢满足了以上的所有要求。</span> \r\n</p>\r\n<p>\r\n	<img border=\"0\" height=\"309\" src=\"http://image.16888.com/upload/Images/2017/03/2017031109593125543_550.jpg\" title=\"献血车\" width=\"550\" style=\"width:550px;height:309px;\" /> \r\n</p>\r\n<p>\r\n	<img border=\"0\" height=\"309\" src=\"http://image.16888.com/upload/Images/2017/03/2017031109593194436_550.png\" title=\"献血车\" width=\"550\" style=\"width:550px;height:309px;\" /> \r\n</p>\r\n<p>\r\n	<img border=\"0\" height=\"309\" src=\"http://image.16888.com/upload/Images/2017/03/2017031109593257582_550.png\" title=\"献血车\" width=\"550\" style=\"width:550px;height:309px;\" /> \r\n</p>\r\n<p>\r\n	<img border=\"0\" height=\"309\" src=\"http://image.16888.com/upload/Images/2017/03/2017031109593242957_550.jpg\" title=\"献血车\" width=\"550\" style=\"width:550px;height:309px;\" /> \r\n</p>\r\n<p>\r\n	<img border=\"0\" height=\"309\" src=\"http://image.16888.com/upload/Images/2017/03/2017031109593358044_550.jpg\" title=\"献血车\" width=\"550\" style=\"width:550px;height:309px;\" /> \r\n</p>\r\n<p>\r\n	<img border=\"0\" height=\"309\" src=\"http://image.16888.com/upload/Images/2017/03/2017031109593497994_550.jpg\" title=\"献血车\" width=\"550\" style=\"width:550px;height:309px;\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:&quot;font-size:18px;\">&nbsp;&nbsp;&nbsp;这款车内的布局安排的是非常合理的，各个区域都有规划。车身总长10.6米，整个车内也是相当的宽敞干净卫生而且还安全。</span> \r\n</p>', '	献血车是一款服务于公益的医疗用车，而什么样的献血车才算是合格的呢？ \r\n\r\n\r\n	第一咱们的献血车必须让人在外观上觉得这车是可靠的。 \r\n\r\n\r\n	第二车内必须让人感到舒适，第一次献血的人难免会紧张的嘛!所以我们车里如果能有个舒适的空', '1520491363', '1520492118', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('5', '房车生活', '', '', '', '', '', '', '', '', '1519628327', '1523240928', '0', '11', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('6', '了解房车改装知识 改装更简单', '', '', '', '', '', '', '<p style=\"text-align:left;\">\r\n	<p class=\"p\" style=\"text-indent:0pt;\">\r\n		<span>现在根据中国的法律，可以房车改装的无非就是外观、内饰、动力、操控和音响之类的改装。房车的主要机械结构包括：车身、内部装备、发动机、变速箱、悬挂、刹车系统和电子系统。对其中的某一项进行改装很可能就对汽车的性能发生改变。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"text-indent:0pt;\">\r\n		&nbsp;&nbsp;&nbsp;&nbsp;<b><span>外观改装：</span></b>\r\n	</p>\r\n	<p class=\"p\" style=\"text-indent:0pt;\">\r\n		&nbsp;&nbsp;&nbsp; <span>外观的改装一般就是贴纸、车身彩绘、车标、前后大包围、大灯等等。改变车身最便捷的方式就是加装空气动力学套件，就是俗称的装大包围，基本上包括前进气格栅，车侧扰流板，后扰流板，尾翼。还有一些车主会加装下前唇。不要小看加装的空气动力学套件，好的套件可以使汽车在高速行驶的时候更加稳定。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"text-indent:0pt;\">\r\n		&nbsp; &nbsp; &nbsp;<b><span>动力改装：</span></b>\r\n	</p>\r\n	<p class=\"p\" style=\"text-indent:0pt;\">\r\n		&nbsp;&nbsp;&nbsp;&nbsp; <span>发动机的改装就是让发动机拥有更大的动力输出。这部分改装是全车的关键，也是最复杂的改装。改装的方式通常就是加大缸径，提高压缩比，加多气门，加装涡轮增压器等。但是不管什么样的改装都不要更改发动机原始的结构，因为这样很可能对发动机造成损伤。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"text-indent:0pt;\">\r\n		&nbsp; &nbsp; &nbsp;<b><span>进气改装：</span></b>\r\n	</p>\r\n	<p class=\"p\" style=\"text-indent:0pt;\">\r\n		&nbsp;&nbsp;&nbsp; <span>发动机在工作时候需要大量的空气，空气在进入发动机之前要进行过滤，这是进气的重要组成部分。现在很多车的原厂配置都是一次性空气滤清器。我们要改装的就是更换成化学纤维制成的，好处是可以可以增加空气进入燃烧室的空气质量，流速提高，使燃料在发动机燃烧更充分，单位效率更高。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"text-indent:0pt;\">\r\n		&nbsp; &nbsp;&nbsp;<b>&nbsp;<span>点火系统改装：</span></b>\r\n	</p>\r\n	<p class=\"p\" style=\"text-indent:0pt;\">\r\n		&nbsp;&nbsp;&nbsp; <span>点火系统的改装可以直接影响到汽车启动的速度和稳定性。点火系统由火花塞和点火线共同构成，原有配置均为单组线束，在电压、电流的通过型和通过量上均满足不了要求，所以对点火系统的改装正是为了这个需求。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"text-indent:0pt;\">\r\n		&nbsp; &nbsp;&nbsp;&nbsp;<b><span>排气改装：</span></b>\r\n	</p>\r\n	<p class=\"p\" style=\"text-indent:0pt;\">\r\n		&nbsp;&nbsp;&nbsp; <span>排气效能的好坏直接关系到发动机效能的好坏。在进气增加、燃烧完好的同时、排气效能也加强，高性能的排气管和消声器成了追求高性能车主的首选。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"text-indent:0pt;\">\r\n		&nbsp; &nbsp;<b>&nbsp;&nbsp;<span>操控性和刹车改装：</span></b>\r\n	</p>\r\n	<p class=\"p\" style=\"text-indent:0pt;\">\r\n		&nbsp;&nbsp;&nbsp; <span>这方面改装比较简单，就是提升刹车的性能，最直接就是换装大尺寸的刹车盘。另外还可以更换高等级的刹车油或是换装金属材质的高压刹车管，再就是使用规则更大的刹车倍利器提高刹车踏板的辅助动力。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"text-indent:0pt;\">\r\n		&nbsp; &nbsp;&nbsp;<b>&nbsp;<span>底盘悬挂改装：</span></b>\r\n	</p>\r\n	<p class=\"p\" style=\"text-indent:0pt;\">\r\n		&nbsp;&nbsp;&nbsp;&nbsp; <span>这部分的改装关系到汽车的操控等关键因素，原厂车的出厂多数都是为了迎合大众的使用习惯，但是往往有些车主不喜欢这样的调校。所以要更换为比较强化的悬挂系统。对车身行驶影响最大的就是减震系统。市面上的减震器类型有：原厂加强型、原厂加强车身高度可调型、专业高运动型、竞赛专用型。车主可以根据自己的喜好和需要选择适合自己的改装类型。</span>\r\n	</p>\r\n	<p class=\"p\" style=\"text-indent:0pt;\">\r\n		&nbsp; &nbsp; &nbsp;&nbsp;<b><span>轮胎改装：</span></b>\r\n	</p>\r\n	<p class=\"p\" style=\"text-indent:0pt;\">\r\n		&nbsp;&nbsp;&nbsp; <span>轮胎的改装是改装当中非常重要的一项，不管是改那些方面，最后都是通过轮胎来反映到汽车上的。有一个抓地力强的轮胎可以增加车辆的稳定性和安全性。各种赛事，各种用途都要有制定的轮胎系统作为搭配。所以选择一款适合的轮胎才可以最大限度的发挥车子的性能。</span>\r\n	</p>\r\n</p>', '	现在根据中国的法律，可以房车改装的无非就是外观、内饰、动力、操控和音响之类的改装。房车的主要机械结构包括：车身、内部装备、发动机、变速箱、悬挂、刹车系统和电子系统。对其中的某一项进行改装很可能就对汽车的性能发生改变。', '1520484375', '1520485296', '0', '2', '0', '0', '', '1', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('7', '车辆在日常使用中一些常见错误及注意事项', '', '', '', '', '', '', '<p class=\"MsoNormal\">\r\n	<span>只有正确使用车辆才能充分发挥它的性能，延长车辆的使用寿命，保障行车安全。在使用过程中应该避免一些错误的做法，否则因小失大，小则经济上遭受损失，大则造成人身伤害。</span><br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;<span>日常使用中的一些常见错误：</span><span>&nbsp;&nbsp;</span><br />\r\n&nbsp;&nbsp; 1<span>、油箱经常不加满</span><span>&nbsp;</span><br />\r\n&nbsp;&nbsp;&nbsp; <span>油箱经常不加满的现象并不少见，一些司机常常只加小半箱油，临近耗尽时再加油。这样做的坏处有：由于油箱中的燃油泵上部经常得不到燃油冷却，容易发热烧损；燃油临近用尽时，燃油泵有时吸不到油，工作十分吃力，发动机不易启动，驾驶员得反复多次启动，造成燃油泵线端触点发热烧蚀。如果更换一只燃油泵需好几百元，用这种方法控制用油实在是因小失大。</span><br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp; 2<span>、燃油加注过多</span><br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp; <span>加油时，油箱已经加满，而且从加油口可以看见油面，但是有时为了凑足整数或希望加入更多的汽油，就按压加油口内左侧白色的排气阀而继续加油，使汽油加到了油箱的通气管内，当车辆行驶时，油箱内温度升高，油箱无法通气，导致汽油泄漏，此时如果打开油箱盖汽油会往外喷，非常危险。</span><br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;3<span>、自动挡车应避免的错误操作</span><span>&nbsp;</span><br />\r\n&nbsp;&nbsp; (1)<span>手动换到</span><span>2</span><span>挡起步，然后换入</span><span>3</span><span>挡，再换到</span><span>D</span><span>挡，这样做是毫无意义的。一般情况，应直接放到</span><span>D</span><span>挡起步和行驶；</span><span>&nbsp;&nbsp;</span><br />\r\n&nbsp;&nbsp; (2)<span>减速停车时，手动从</span><span>D</span><span>挡换到</span><span>3</span><span>挡，再换到</span><span>2</span><span>挡来减速停车。除非是下长坡，想换到更低的挡位利用发动机来辅助制动，一般情况下，这样强制减挡也是没有必要的。在</span><span>D</span><span>挡或其他挡位，都可以直接靠制动来减速停车；</span><span>&nbsp;&nbsp;</span><br />\r\n&nbsp; (3)<span>由于自动挡车取消了离合器踏板，驾驶员的左脚一直空闲，于是就用左脚来踩制动踏板，这也是不好的驾驶习惯，应该更正，还是应该由右脚来踩油门和制动；</span><span>&nbsp;&nbsp;</span><br />\r\n&nbsp; (4)<span>车未停稳就挂入</span><span>R</span><span>挡，这对变速器有损害；</span><span>&nbsp;&nbsp;</span><br />\r\n&nbsp; (5)<span>车未停稳就挂入</span><span>P</span><span>挡，这对变速器内部的锁止机构有损害；</span><span>&nbsp;&nbsp;</span><br />\r\n&nbsp; (6)<span>停车时只挂入</span><span>P</span><span>挡，不拉紧手制动杆。虽然</span><span>P</span><span>挡具有锁止功能，但是当受到冲击或有较大的坡度时就会脱开，而可能发生溜车危险。</span><br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;4<span>、</span><span>ABS</span><span>应避免的错误操作</span><br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp; ABS<span>制动系统能在紧急制动时，自动实现点刹，使车辆不会抱死甩尾，可以保持方向盘的转向能力。但需注意，在一般情况下，带</span><span>ABS</span><span>制动系统的车辆与普通制动系统的车辆具有基本相等的制动距离，所以驾驶者仍应保持适当的安全行车距离，切不可因配备了</span><span>ABS</span><span>制动系统就有恃无恐地开快车或缩短安全行车距离。当遇到意外要紧急刹车时，右脚要猛踩刹车不放且要尽力踩。</span><span>ABS</span><span>刹车系统起作用时，脚底会感到断断续续反弹抖动，这时千万不可松开。</span><br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;5<span>、为节油而调低怠速</span><br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp; <span>对于化油器的车辆，一些车主沿用开货车的经验，认为调低怠速是节油的好措施，常常自行调低怠速，</span><span>(</span><span>规定怠速</span><span>850±50r</span><span>／</span><span>min)</span><span>。这样容易因怠速不稳而熄火，行车过程中松油门时也易熄火，增加了启动次数。同时怠速工况不良，容易使积碳增多，导致发生化油器量孔堵塞等多种故障，非但不能节油，反而使油耗大大上升。</span><br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;6<span>、开带病车</span><span>&nbsp;</span><br />\r\n&nbsp;<br />\r\n&nbsp;&nbsp; <span>个别车主常常是只要车开得动，就懒得维修，其结果往往是因小故障而付出大代价。如汽门室盖、汽缸盖处漏机油，有的出租车认为小毛病，不检查维修。殊不知渗出的机油会窜入正时齿轮室罩内，污染正时皮带和空调皮带，轻则打滑，重则老化折断，造成配气相位错乱、损坏活塞，甚至发生捣缸等严重事故。</span><br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;7<span>、不遵守保养规定</span><br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp; <span>定期保养车辆可以及时发现和消除隐患，防止故障的发生，提高车辆的完好率，有效地延长汽车的使用寿命。车辆保养的周期和内容已经在车辆的保养手册中规定。但是有一些车主往往不重视定期保养，直到车辆出现故障后才去修理；还有很多人认为，保养无非就是更换三滤、机油等消耗品，往往忽视了按照保养规定的项目进行全面的检查和保养，由小问题导致大故障</span> \r\n</p>', '\r\n	只有正确使用车辆才能充分发挥它的性能，延长车辆的使用寿命，保障行车安全。在使用过程中应该避免一些错误的做法，否则因小失大，小则经济上遭受损失，大则造成人身伤害。\r\n&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;日常使', '1520490222', '1520490222', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('10', '一些房车改装的小技巧', '', '', '', '', '', '', '<p>\r\n	<span style=\"font-size:18px;\">&nbsp;</span> <span style=\"font-size:18px;\">房车露营的旅游模式日益受到人们的追捧，拥有一辆自己的房车成为很多人的梦想。但是相对于一些房车发烧友来说，大家既不愿拘泥于购买现成房车的套路里，也不愿去租一辆不属于自己的房车，那么购买一辆二手小客车，将其改装成一辆符合自己需求和想象力的房车就成为明智之举。所以了解改装房车的小技巧就成了动手前的第一步。</span> \r\n</p>\r\n<p>\r\n	<img alt=\"\" src=\"http://www.saloonrv.com/ckfinder/userfiles/images/14593845252505.jpg\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:18px;\">&nbsp;<img src=\"/uploads/kindedit/image/20180514/20180514060313_82575.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">T</span><span style=\"font-size:18px;\">ips1：改装范围</span><span style=\"font-size:18px;\">&nbsp;&nbsp;没有规矩不成方圆，改装房车也不例外。最重要的一点就是弄清相关规定允许我们改什么，否则很难通过汽车年检或者相关检查。新修订后的《机动车登记规定》只是简化了手续，对改装略有放宽，但是同样不意味着机动车能随意改变车辆登记时的结构和参数。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">车身颜色一直是我们可以更改的区域。除了更改为消防专用红，工程抢险专用黄和国家行政执法专用的上白下蓝色之外，在更改颜色后的十日内，到车辆所在地的车管所进行变更登记即可。只不过要求整个车身的颜色不超过两个。而对于车身贴纸、机动车喷涂、粘贴标志或者车身广告等，只要不超过车身的30%就可以通过相关检查。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">相对于车辆发动机而言，只要不更改其登记的型号以及品牌，并且提交机动车安全技术检验合格证明，基本就可以通过车管所的审批。对于微型、小型载客汽车加装前后保险防撞装置，只要保证安全、稳固、不影响驾驶便可以免于登记。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">Tips2：家具选材</span><span style=\"font-size:18px;\">&nbsp;&nbsp;房车的家具不同于我们普通家具，在追求美观的同时，更应该注重其实用性。在房车的行驶中，难免会遇到崎岖颠簸的道路，车内的结构都要承受应力的变形。因而，在选择家具的材质上，最好采用轻型型钢做骨架，用螺丝固定木面的方法。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">Tips3：区域划分</span><span style=\"font-size:18px;\">&nbsp;&nbsp;房车一般分为驾驶室、厨房、浴室、卫生间以及床等。对于车厢空间较小的房车来说，可以不设置厨房、浴室和卫生间，或者精简设置一个炉台，晚上不用时收起来。因为在露营地中，会专门设置公共卫生间、浴室及厨房等区域，方便我们使用。在野外的话，我们也可以在车外野餐，不过多的占用房车内有限的空间。而且，如果房车的厨房等一应俱全，会加大车的重量，造成发动机发动机动力不足的状况。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">Tips4：能源补给</span><span style=\"font-size:18px;\">&nbsp;&nbsp;虽然常规房车露营地会提供水、电力等资源，但在野外，这些都必须要提前准备好。安装一个储水箱，带够出行所需要的水资源。还可以在车顶安装一个太阳能板。太阳能板转化的电能可以直接使用，也可以存入电瓶中以备不时之需。但是太阳能的发电量仅供普通照明以及手机充电等， 还不能为冰箱及空调等大功率电器服务。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">享受美好的房车露营时间，不一定从买房车开始。改装房车也是一种不错的选择。</span> \r\n</p>', '	  房车露营的旅游模式日益受到人们的追捧，拥有一辆自己的房车成为很多人的梦想。但是相对于一些房车发烧友来说，大家既不愿拘泥于购买现成房车的套路里，也不愿去租一辆不属于自己的房车，那么购买一辆二手小客车，将其改装成一辆符合自己', '1520494984', '1526277812', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('11', '带着你的梦想和房车去度假吧', '', '', '', '', '', '', '<div class=\"wp\" style=\"margin:0px auto;font-family:宋体;background-color:#000000;\">\r\n	<div class=\"ocar-contents_news\">\r\n		<div class=\"ocar-content-right fright n8\" style=\"border:1px solid #FFFFFF;background-color:#F2F2F2;\">\r\n			<div class=\"newscont\" style=\"padding:10px;\">\r\n				<p>\r\n					<span style=\"font-size:18px;\">如今，从美国到欧洲，从韩国到日本，公路上的旅行房车川流不息，房车数量之多，场面之壮观让人惊叹。中国人何时才能开着房车去度假呢？近日，中国第一家提供房车旅行服务的专业化企业———北京中天行房车俱乐部有限公司在京成立，为中国消费者带来了高品位的旅行休闲产品和服务。&nbsp;&nbsp;</span><br />\r\n<span style=\"font-size:18px;\">　&nbsp;&nbsp;&nbsp;&nbsp;中国旅游车船协会会长、首汽股份有限公司总经理杨和平高度评价这一新鲜事物，他说，房车的出现将改变中国人的旅行和生活方式，使人们的休闲形态发生革命性的变化，它能满足人们在旅行、住宿上的便利，有方便、经济、舒适、自由、卫生等五大优势，在欧美国家，房车、游艇比网球更为流行。房车在中国有着巨大的发展空间。&nbsp;&nbsp;</span><br />\r\n<span style=\"font-size:18px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;曾被美国《真理报》誉为中国房车之王的中国中天高科特种车辆有限公司董事长、北京中天行房车俱乐部有限公司董事长王宇峰立志为中国人圆房车梦，力推房车文化和房车的普及和应用。他说，中国经济的腾飞把中国人民带进了一个日益富足的社会，将钱花到休闲旅游上已成为一种趋势和时尚，而长假的增多，使我们三分之一的时间是在闲暇中度过的，房车旅行休闲方式集旅行、住宿、娱乐、烹饪、沐浴、工作于一体，使旅行方式发生了革命性的变化，我国潜在消费人群相当庞大。中国房车旅行时代已经来临。他表示，作为旅行房车服务的经营者，将以革命性的产品———旅行房车和创新的营销模式———加盟俱乐部和俱乐部会员制，开启中国房车旅行的新时代。</span><br />\r\n<span style=\"font-size:18px;\">　&nbsp;&nbsp;&nbsp; 据了解，中天高科特种车辆有限公司是一家投资规模达5.2亿元的中美合资企业。中天行房车俱乐部是由中天高科特种车辆有限公司投资组建的，目前已在全国建立了10个露营地，是目前中国惟一一家具有全国性服务网络的专业化旅行房车公司。该俱乐部将在全国建立区域运营中心，拟建立1000多个房车露营地，发展300多家加盟俱乐部，使消费者享受“一卡在手，漫游全国”的全方位的房车旅行服务。而“C照自驾，自由驰骋”则为更多人自驾房车度假的梦想成为现实，十年两万的房车服务价</span><span style=\"font-size:18px;\">格更为消费者创造时尚休闲生活提供了实惠。&nbsp;</span><br />\r\n<span style=\"font-size:18px;\">　&nbsp;&nbsp;&nbsp; 房车引领时尚，由于它打破了传统旅游行程中的坐车、投宿等固定模式，使人们更富个性化地开着房车天下为家，尽享自由自在和吃住行游的随心所欲而备受人的欢迎。房车也并不遥远，随着越来越热的自驾车、自助休闲游的兴起，相信会有越来越多的人享受到房车旅游和度假带来的无穷魅力。</span>\r\n				</p>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>', '\r\n	\r\n		\r\n			\r\n				\r\n					如今，从美国到欧洲，从韩国到日本，公路上的旅行房车川流不息，房车数量之多，场面之壮观让人惊叹。中国人何时才能开着房车去度假呢？近日，中国第一家提供房车旅行服务的专业化企业———北京中天行房车', '1520498947', '1520498947', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('12', '一个车轮上的家', '', '', '', '', '', '', '<p>\r\n	<span style=\"font-size:18px;\">房车兴起于20世纪60年代的旅游房车五脏俱全，七八个朋友一起出游，走走停停，随心所欲。方向盘掌握在自己手里，到原始的大自然中去，甚至有种流浪的感觉。&nbsp;</span><br />\r\n<span style=\"font-size:18px;\">　&nbsp;&nbsp;&nbsp;&nbsp; 近年来，随着旅游热的不断升温，人们对旅游方式的选择也开始由单一化走向多元化，许多人热衷于寻找不为人熟知的目的地，避开每年的几个旅游旺季，不坐舒适快捷的飞机，也不去挤人满为患的火车。于是，自助游、体验游开始受到人们的青睐。自驾车旅行成为出游的一大方式，但是自驾车旅游多是普通轿车，行程相对短一些，载人也不多，除了能随时停车外，旅途中和坐长途车、火车出游的区别不大。而据记者了解，其实，真正的自驾车旅游由来已久，熟知的人形象地把这种旅游所需的车叫做“旅游房车”，驾着这种车才能真正体会到自驾车自助旅行的乐趣。&nbsp;</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">车里面像家车外面是整个世界&nbsp;</span><br />\r\n<span style=\"font-size:18px;\">　　我们常常会在一些旅游景点看到这样的情形：一群身负大包小包的旅客，面带倦容随导游匆忙地穿梭在各景点上，排上长长的队伍等上几十分钟才得以在标志性的景物下用几秒钟的时间留个影……至于某些言之无物的导游、面无表情的服务员、人流中纠缠的小贩更是令人烦不胜烦。于是所谓的放松、休闲也都荡然无存了。可能每个该去的地方你都看了一遍，但是旅行结束后除了一大摞的照片，自己并没留下什么太多的感悟。&nbsp;</span><br />\r\n<span style=\"font-size:18px;\">　　而驾着“旅游房车”去走走看看，方向盘掌握在自己手里，自主性增加，不必饱受搬运行李之苦，也不会像普通自助游那样动不动打上几十公斤重的行囊追赶火车，万一去到一些想完全暂停下来进一步细心观察的地方，往往因为住宿、食物及配备的不足让人玩得也不安心。专业人士称，和伙伴们一起出游，一起做饭、一起吃，不但有参与感，更增进了彼此的感情，这显然有“孤身走天涯”那种自助游所没有的优点。&nbsp;</span><br />\r\n<span style=\"font-size:18px;\">　　另外，这种休闲旅游方式常常以非热点旅游线路为主，多是极具大自然色彩的、有原始风情的、人迹罕至的地方。所以，都市的喧闹，人群的拥挤一般都能抛诸脑后，真正满足了人们想要休闲、想要放松甚至在忙碌之后想要放逐流浪的心理。相信会有越来越多的人接触并喜爱上这种旅游方式。</span><br />\r\n<span style=\"font-size:18px;\">&nbsp;</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">五脏俱全简直是个小家庭</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">　　开着“旅游房车”出行在我国的北京、上海等开放型大都市已经颇为流行，而在我省还只是初露端倪。记者在和一些喜爱这种旅游方式的人以及从事相关工作的人士进行交谈时了解到，所谓的“旅游房车”也被称做休闲露营车，如果看过一些外国电影的人不难发现公路上经常会出现的一些类似卡车、货车的车辆，它们兴起于20世纪60年代，美国人称之为Recreation&nbsp;Vchicles(RV)。单看它的配置可说得上是五脏俱全，包括有卫浴设备、热水器、床铺、炉台、烤箱、微波炉、冰箱、衣物柜等等，真像是一个小型家庭了。车内至少可以容纳6个人躺卧休息，最多则能达到10人左右。试想，一群朋友结伴出游，走走停停，随心所欲，的确不失为旅游方式的极佳选择。&nbsp;</span>\r\n</p>', '\r\n	房车兴起于20世纪60年代的旅游房车五脏俱全，七八个朋友一起出游，走走停停，随心所欲。方向盘掌握在自己手里，到原始的大自然中去，甚至有种流浪的感觉。&nbsp;\r\n　&nbsp;&nbsp;&nbsp;&nbsp; 近年来，随着旅游热', '1520557796', '1520557796', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('13', '自驾房车的那些事', '', '', '', '', '', '', '<p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">&nbsp;越来越多的人选择租车自驾这种出游方式，为的是换来更多的自由，在自己喜欢的地方多停留些时间。但对于大多数人来说，租房车出游可能还是属于一种新鲜玩意。其实在大多数西方国家，房车出游已成为众多家庭的首选，看完编者的介绍相信您一定会爱上它。&nbsp;</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img alt=\"\" src=\"http://xl.saloonrv.com/ckfinder/userfiles/images/1489548573774(1).jpg\" />\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 搞清楚房车家族里那些成员，谁是你需要的</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;房车的类型可谓多种多样，选择的哪种车型就看看有多少人一起出去玩耍，车上都需要什么设备或者其他别的需求。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img alt=\"\" src=\"http://xl.saloonrv.com/ckfinder/userfiles/images/1489549643874(1).jpg\" />\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 房车家族的小兄弟：由普通的掀背式轿车或加高了的面包车改装而成的小型房车，通常只能让2-3人住在里面，无厕所和浴室，配置以经济实用为主，内部空间较小，耗油少，行驶灵活，停车方便，租金便宜，是想在有限日子里穿州过省的驴友们的首选。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img alt=\"\" src=\"http://xl.saloonrv.com/ckfinder/userfiles/images/14895477782726.jpg\" />\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大佬级房车：2到6人轻松装，有的8个都不成问题。这类中大型的房车，车内设施不仅舒适，有些还堪称豪华，厕所，浴室，冷暖气，焗炉，LCD屏幕等一样都不缺。整部车子如同一间可以行走的小型度假公寓，其体积通常有或超过7米长，高3.3米。想要请这些“大腕儿”来伴你旅行，出场费可不低，还有它们的耗油也比较大，但是想想旅途中那些奢华的享受，值了！</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img alt=\"\" src=\"http://xl.saloonrv.com/ckfinder/userfiles/images/14895478486142(2).jpg\" />\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 最特殊的一个：这一类房车是由4驱车改装而成，耗油当然厉害了点，没有厕所浴室配置，有些甚至没有固定床铺，需要用睡袋帐篷作为代替。但是如果你不选他，耍酷的机会就拱手让人了。在澳大利亚的西澳，北领地以及昆士兰北部，没有一台四驱车跋山涉水可谓是寸步难行。四驱车很多，但会配备卫星电话及信号发射装置，还能做饭的就只有4WD房车。走，租一台野外撒欢去！</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">车子+房子你要这么用</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;房车房车，自然是房与车的结合体，是您旅途中的移动旅馆。一个很现实的问题——房车使用起来会不会很复杂？尤其是清洁方面的工作会不会很麻烦呢？不必担心！提车的时候，热情而专业的服务人员会将房车的各项功能都非常详细地给你讲解一遍，比如：水怎么上下，电如何接，煤气如何使用，各个按钮开关都负责什么的，哪些您可以动，哪些您不用动和或哪些不能动，哪些东西都在哪儿。另外，只要您需要可以请会讲中文的员工为您进行讲解，以确保无障碍沟通。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注意！在行驶过程中，给手机充电需要通过USB接线，冰箱有独立电源，在行驶中处于有电状态，微波炉、充电器和许多车内大装饰灯以及其他电子设备呢？等到了营地接上电源后，就都能用了！建议大家在行车过程中，暂时关闭电源总开关，只打开冰箱的就好。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img alt=\"\" src=\"http://xl.saloonrv.com/ckfinder/userfiles/images/14895478637949(1).jpg\" />\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;随车会有两根水管，一根上水管，一根下水管，都带不同的龙头接口，两根管子完全不一样。顾名思义，上水管负责上水，下水管负责下水。车上有两个上水箱，一个是净水箱，一个是类似中水箱，净水箱的水主要用来做饭洗漱，中水箱的水用来冲厕所。别用错了，实际上，营地的上水龙头只有一种，不分净水和中水，你只要在出发的时候把上水管接到营地的龙头上，把两个水箱都加满就可以了。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;级别稍微高一些的营地应该有下水管道，入住后停好车，直接把下水管的一头接到房车的下水出口上，卡好，再把另一头儿插到营地的下水管接口或者废水池子里，然后打开房车下水出口的阀门，洗漱及厨房废水就直接排放到营地的下水管道里去了。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img alt=\"\" src=\"http://xl.saloonrv.com/ckfinder/userfiles/images/14895479405585.jpg\" />\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在非营地状态，房车的厕所废水是统一排放到车上单独的一个塑料废水箱里，到营地之后需要把这个废水箱取出来倒入指定地点，这种排放井一般都在营地的公共洗手间附近，会有非常明显的标记，很容易找。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 切记！驾驶室、后车门、电源、燃气罐、加水口、污水口都有自己的专属钥匙，一定要记得保管好所有钥匙，绝对不要遗忘在车内或其他地方。如果你很不幸将整车的钥匙忘记在车内，在一定时间后，房车会自动上锁，没有钥匙是绝对打不开的。如果又不巧正好停在某个前不着村后不着店的世外桃源，那就麻烦了。当然，如果您真那么不凑巧遇到如上情况，请不要慌张，请与您的租车公司联系，会有专业人士来救你脱困。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 房车大本营，知道那里有你的小伙伴们</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 房车营地，就是让房车们休息的地方，通常2天就要为车内的储电池补充电源，而水箱则要看各位如何节约用水了，如想开冷暖空调的话，则天天离不开240V，所以，要根据不同的需要入住不同的营地。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img alt=\"\" src=\"http://xl.saloonrv.com/ckfinder/userfiles/images/14895480401703(2).jpg\" />\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第一类：Holiday park/假日公园--提供电源，自来水，公共厨房，厕所，冷热水淋浴，洗衣干衣机，儿童游乐设施甚至游泳池给露营者及房车乘客使用。像新西兰的TOP10十大假日公园和澳洲的Big4假日公园都是特别好的选择。但要注意的是汽车营地上班时间是有限的，早上8点至下午4点，4点以后基本就下班了，而大部分营地的大门是敞开的，即使4点前无法赶到，也不要紧。公共设施如厨房、浴室都是公共开放的，只要有车位电源座也可以自行使用，加水排水也是一样。您只要提前通过网络或电话做好预订，那一切都妥妥的。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img alt=\"\" src=\"http://xl.saloonrv.com/ckfinder/userfiles/images/14895481762788(2).jpg\" />\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第二类：DOC(Department of Conservation) National Park 国家公园营地--营地位于国家公园内，由DOC管理，但不提供电源供应，极少部分有热水淋浴，自来水与淋浴间根据各营地而不同，但厕所一定是会有的。需要注意的是，这类营地要预先查询哪类车子可开进去。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img alt=\"\" src=\"http://xl.saloonrv.com/ckfinder/userfiles/images/14895482464358(1).jpg\" />\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第三类：免费停留地Freedom camping（D0C）--在新西兰和澳大利亚的一些国家公园里，允许房车和露营者在靠近路边，海或港湾200米内的区域内过夜，除非那里有特别告示。澳大利亚呢，每个州对于free camping都有不同的规定。温馨提示：在兴致勃勃的制定完房车野营计划后，一定要再三确认是否此地真的可以免费停车过夜，别让错误信息扫了旅游的兴致!可以下载一个campermate的APP作为辅助工具，随时随地查询信息。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">经济学，租用房车的省钱技巧</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">价格，这个肯定是大家最为关心的，那么如何花最少的银子享受最高待遇的服务呢？其实，关于省钱技巧嘛，这个和旺季机票酒店价格均有所上升的概念是一致的。为大家介绍几个租赁房车的省钱技巧，希望能为给各位看官省下些银子。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">1.优惠常有，没事搜搜官网。如果已经计划好了旅游行程，那不妨多多留意下各大公司的官方网站，没准您就可以以超低的价格预订好心仪款房车。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">2.公众假期和学校各类假期，土豪们请先吧！</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img alt=\"\" src=\"http://xl.saloonrv.com/ckfinder/userfiles/images/14895487003318(1).jpg\" />\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">最贵时段：圣诞-新年及复活节假期，约是淡季的2.5倍；其次：夏季整个1月份；4月，7月及10月各2星期的学校假期；然后：除上面之外的约10月至次年的4月；最便宜：5,6,7,8,9月（公众假期除外）。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">3.好运临头，免费升级。有时候，因市场的流动，提车时若没有所要的车型库存，房车公司会免费提供高一级的车子给顾客。（不过呢，因为房车是西方国家主流旅游方式之一，这种情况发生的几率不大，万一赶上了，恭喜你，幸运的一个）。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">国外租房车时常用英文翻译及小提示</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">●2，4，6 Berth，分别可以睡2/4/6个人。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">●Vehicle Age - 车龄，3－5年很好，最好0－3年的，车况好，内部装饰新，看着养眼。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">●Air Conditioning - 空调，一般只有驾驶室有。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">●Self-contained campervan-带有卫浴和废水箱的房车，只有这类房车才允许在免费停留地过夜。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">●Maximum Passengers - 最大乘客数，根据车型不同2－4、6人都有。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">●Water Tank Capacity - 水箱大小，这个要注意，太小了不方便。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">●Waster Water Tank-废水箱，做饭或者洗澡所产生的废水都会集中到这个水箱。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">●Fresh Water Tank-净水箱, 用来储存生活用水。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">●Child Restraints - 儿童座，有小孩的要特别注意这个，并非所有型号的房车都可以安装儿童座椅。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img alt=\"\" src=\"http://xl.saloonrv.com/ckfinder/userfiles/images/14895488855098(1).jpg\" />\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">●Baby seat-婴儿座椅，1-4岁的小朋友所使用的的安全座椅。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">●Booster seat-安全增高坐垫,4-12岁的小朋友使用的安全座椅。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">●Crockery Cutlery Pots Pans Supplied - 餐具厨具，一般房车公司都会为您准备得比较齐全，不需要自己背上飞机。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">●Fridge &amp; Freezer - 冰箱，旅途中这个其实比较重要，超市里买的牛排羊排牛奶，还有好吃的冰激凌就全靠它了。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">●Fly Screens - 沙窗，因为需要露天露营，在夏天还是很需要的，好的旅途，尤其是自驾游，睡个舒心觉以保证充沛的体力是相当需要的呢。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">●Gas Bottles - 煤气炉，气炉的重量，一般4公斤的，小编就觉得差不多了。不在车内洗澡冲凉的，用3－4周没问题，加上洗澡的用上个2-3周也是绰绰有余的。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">●Linen &amp; Bedding (per person) - 床上用品，按人数都会提供。也没有必要背上飞机的。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">●Microwave - 微波炉，除非住房车公园基本上不用。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">●shower/toilet - 沐浴/卫生间</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">●Vehicle Dimensions - 车辆尺寸，小编要提醒大家的是相对其他一般车辆，房车都相对偏高，而超市地下停车库或drive-through对车辆的高度有一定限制，房车一般不让驶入，大家停车时要尤其注意这点哦。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">●Maximum Height -最大限高，在隧道、桥下和地下停车场附近都会有标识显示能够通过车辆的最大高度。在租房车时需要了解自己所租房车的高度。如果高于最大限高，可能会有危险。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">保险先买好，路上更轻松</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">请一定要选择购买全险套餐（Bonus Pack），可能很多人认为才短短几天的自驾游行程，外加上我十几或者几十年的驾龄，再者听说新西兰/澳洲本就是个羊多车少的国家，这样还有必要买全险吗？这岂不是浪费银子嘛？</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">但大家要清楚地知道毕竟相对国内来说，新西兰和澳洲驾驶的方向是与国内相反，人生地不熟地，看导航什么的不可避免，外加上旅途疲劳，万一有个闪失，您的美好假期岂不毁于一旦。另外，购买全险后，那些旅途中因为不当心对房车所造成的小嗑小碰，您都不需要承担经济赔偿责任。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img alt=\"\" src=\"http://xl.saloonrv.com/ckfinder/userfiles/images/14895491984192(1).jpg\" />\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">新西兰地区所有房车虽都自带保险，起赔额从$5,000-$7,500不等。取车时，车行会向承租人信用卡收取和起赔额度相同的押金。因此，承租人的信用卡需准备相应透支额度以便扣款。当然这是可以通过购买不计免赔服务降低押金和起配额度：每天仅需额外支付$45。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">请注意！不计免赔包含：车辆事故造成的一面挡风玻璃，两个轮胎的损坏，以及由于车辆损坏导致没有车辆使用额外产生的费用。承租人全责:以下情况发生的车辆损坏属于承租人全责，不在保险索赔范围内：</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">1. 因违反租赁合同造成的车辆损坏</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">2. 违反交通规则导致车辆损坏</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">3. 备用钥匙丢失，或者因疏忽将钥匙锁在车里</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">4. 将车辆或车身浸水造成的损坏</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">5. 单车辆翻车造成的损坏</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">6. 承租人对车辆的恶意损坏</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">7. 因雪链使用不当造成的损坏</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">8. 个人物品引起的车辆损坏或丢失</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">9. 使用不当燃油引起的车辆损坏</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">10. 因超过建议承重量对车辆造成的损坏</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">11. 车顶和车底盘的损坏（除非购买不计免赔）</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">您不用担心在租赁的时候听不懂注意事项，或为种类繁多的保险条款发愁。中文接待会为您详细介绍套餐的内容之后，会给您推荐两种套餐，并介绍利弊关系等，以确保为您精彩的旅程支起一把安心的保护伞。</span>\r\n	</p>\r\n<span style=\"font-size:16px;\">\r\n	<div style=\"text-align:center;\">\r\n	</div>\r\n</span>\r\n	<div style=\"text-align:center;\">\r\n		<br />\r\n<br />\r\n	</div>\r\n</p>', '	       越来越多的人选择租车自驾这种出游方式，为的是换来更多的自由，在自己喜欢的地方多停留些时间。但对于大多数人来说，租房车出游可能还是属于一种新鲜玩意。其实在大多数西方国家，房车出游已成', '1520567652', '1526277701', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('14', '长时间不开房车 你需要注意这些', '', '', '', '', '', '', '<p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">生命在于运动，房车也是一样。车友们不是时时刻刻都能来一场说走就走的旅行。一旦一段时间不开，房车有可能“身体微恙”。为了减轻这种不良影响，必须告知各位车主应该经常对停驶的房车进行必要的养护工作，以使其处于良好的性能状况。</span>\r\n	</p>\r\n	<p>\r\n		<img alt=\"\" src=\"http://xl.saloonrv.com/ckfinder/userfiles/images/14707048578028.jpg\" />\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">&nbsp;</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">注意一：防止橡胶制品的老化变质</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 房车上的橡胶制品，如轮胎、传动带以及防尘罩等，经常会发生老化、膨胀或者为形现象，致使性能变坏，使用寿命变短。</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">像胶制品老化，主要是由于橡胶属于不饱和的高分子碳氢化合物，容易吸收空气中的氧而氧化，同时硫化橡胶还有一定的透气性，氧容易进入内部起氧化作用。</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">特别是直射阳光，能促使橡胶迅速老化。橡胶制品被汽油、机油沾污后，会导致体积膨胀，胶质变松，弹性下降。 为防止橡胶制品地老化，应避免阳光直接照射及矿物油接触。</span>\r\n	</p>\r\n	<p>\r\n		<img alt=\"\" src=\"http://xl.saloonrv.com/ckfinder/userfiles/images/14707048588748.jpg\" />\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">&nbsp;</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">注意二：防止金属生锈锈蚀</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 主要是空气中的水分、氧气以及腐蚀性物质的共同作用造成的。因此，对于长期停驶的房车，应保持金属表面清洁。停放车辆的车库内应经常保持通风，使空气相对湿度保持在70%以下。</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">需及时清除房车上的灰尘、脏物和水分。在易锈蚀的部位和机件表面应涂以机油、润滑脂或者用油纸包扎起来。对于各总成机构上的孔隙，应加以密封，避免空气、水分和灰尘进入内部。</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">&nbsp;</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">&nbsp;</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">注意三：防止棉麻制品的霉烂</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;棉麻制品都很容易吸收水分特别是在潮湿地区和阴雨季节，更易受潮霉变。因此车主应对车上的棉麻制品经常检查，适时晾晒，保持干燥。</span>\r\n	</p>\r\n	<p>\r\n		<img alt=\"\" src=\"http://xl.saloonrv.com/ckfinder/userfiles/images/14707048594629.jpg\" />\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">&nbsp;</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">注意四：防止汽油的抗爆性能降低</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 汽油的抗爆性能决定于汽油辛烷值的高低。房车长期停驶，汽油的辛烷值会随着轻质成分的损失和胶质含量的增加而下降，从而使其抗爆性随之降低。</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">因此，汽油油箱要严密封闭，并且避免温度过高。汽油储存的时间最好不要太长。</span>\r\n	</p>\r\n	<p>\r\n		<img alt=\"\" src=\"http://xl.saloonrv.com/ckfinder/userfiles/images/14707048613666.jpg\" />\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">&nbsp;</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">注意五：经常检查发动机的工作状况</span>\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 每月至少起动发动机一次，怠速运转4-5min，检查发动机的运转情况。如有异常现象，需及时调整、维修。 另外，还要经常检查蓄电池。蓄电池的电解液液面必须高于极板10-15mm，不足时应及时添加蒸馏水，应保持电量充足，必要时应对蓄电池充电。</span>\r\n	</p>\r\n<span style=\"font-size:16px;\"></span>\r\n</p>', '	生命在于运动，房车也是一样。车友们不是时时刻刻都能来一场说走就走的旅行。一旦一段时间不开，房车有可能“身体微恙”。为了减轻这种不良影响，必须告知各位车主应该经常对停驶的房车进行必要的养护工作，以使其处于良好的性能状况。\r\n\r\n\r\n	\r\n', '1520818129', '1526277643', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('15', '没错这就是国产的豪华房车“斯堪尼亚房车”', '', '', '', '', '', '', '<p style=\"text-align:center;\">\r\n	<img alt=\"\" src=\"http://xl.saloonrv.com/ckfinder/userfiles/images/16f8000141525c05f460.jpg\" />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:14px;\">最近出现在三亚的一辆14米超豪华房车一亮相便引爆人们的眼球。这款超豪华房车便是由厦龙房车按照客户需求，定制改装生产。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img alt=\"\" src=\"http://xl.saloonrv.com/ckfinder/userfiles/images/16bf000acb7ba01c87ae%20(1).jpg\" />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:14px;\">该车采用具有公路之王之称的斯堪尼亚底盘，车身改装前便对底盘进行了精细，针对房车的匹配性的设计。尤其是在安全性上，事无巨细。</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img alt=\"\" src=\"http://xl.saloonrv.com/ckfinder/userfiles/images/16f700013fb9bb9f3f73.jpg\" />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:14px;\">奢华实用是该车的主要设计思路，因此全车装饰全由黄花梨、玉石构成，宛如古典欧洲宫殿。车内配有车载通讯卫星、超级影院、卫生间、开方式厨房等，现代科技与古典气质极好的在该车得到了融合。既然是房车，满足出行住宿当然是最重要的。该车上一个1.9米长的大床及一个立式上下铺及组合客户沙发，可满足一起7人出游。据悉，该车目前在国内属最大。&nbsp;据悉，该车完全采用国外千万级的豪华房车改装材料以及改装技术。诸多最先进的大巴房车理念都在它的身上得到了极好的利用。</span><img alt=\"\" src=\"http://xl.saloonrv.com/ckfinder/userfiles/images/16fb0001401f3b184c63.jpg\" />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img alt=\"\" src=\"http://xl.saloonrv.com/ckfinder/userfiles/images/16fb00014023149c3e1b.jpg\" />\r\n</p>', '	\r\n		\r\n			\r\n				\r\n					\r\n				\r\n				\r\n					最近出现在三亚的一辆14米超豪华房车一亮相便引爆人们的眼球。这款超豪华房车便是由厦龙房车按照客户需求，定制改装生产。\r\n				\r\n				\r\n				', '1520818817', '1526277580', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('16', '您的爱车保养细节', '', '', '', '', '', '', '<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	房车自驾游归来之后，不知您是否检查过您的爱车呢？爱车在经历了一个小长假的旅途后，车子难免会呈现出疲劳状态，车主自驾游归来应对爱车做一番彻底的保养，以保障以后的行车安全。\r\n</p>\r\n<p class=\"p\" style=\"text-align:center;margin-left:0pt;\">\r\n	&nbsp;<img src=\"/uploads/kindedit/image/20180312/20180312020828_68378.png\" alt=\"\" /> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;<strong>发动机舱</strong> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 车辆在长时间行驶后，尤其是在自驾游之后，发动机或其他部件上均会被大量灰尘所覆盖，如果不及时进行清理，长时间之后会导致部件生锈。另外，大量的灰尘也会影响发动机有效散热，致使发动机在持续高温环境下工作，导致车辆塑料部件老化与损害。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;<strong>&nbsp;传动皮带</strong> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 经过几天的“长途跋涉”，车辆发动机舱内的传动皮带同样有必要进行常规检查，其中主要检查的是传动皮带的张紧度与皮带表面是否存在划痕与裂纹。传动皮带的张紧度越紧，越会加剧传动轮和轴承的磨损；而皮带表面出现划痕或裂纹，则很有可能导致发动机无法正常工作。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;<strong>油、液情况</strong> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 如同自驾游前的检查一样，归来之后对于发动机舱内的油、液的检查同样不能忽略，其中主要包括玻璃水、刹车油与机油的液面位置，低于标准线下限时要及时添加。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	<strong>轮胎检查</strong> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 对于轮胎的检查是重中之重，主要包括以下几个方面：1.轮胎胎压（包括备胎），轮胎胎压标准值可以在使用手册等地方找到；2.轮胎胎面花纹中有异物或钉子的话要及时清除，否则会影响其抓地力；3.轮胎胎侧是否有划痕或是裂纹，划痕或裂纹有可能导致车辆在行驶时爆胎。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	<strong>&nbsp;四轮定位</strong> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 长途自驾游归来，最好给车辆做一次四轮定位，因为自驾游过程中极有可能会遇到类似颠簸的路况，有可能会影响到车轮的正常旋转，最终导致车辆行驶跑偏等现象。四轮定位的主要作用就是使汽车保持稳定的直线行驶并减少汽车在行驶中轮胎和转向机件的磨损。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 四轮定位可分为前轮定位与后轮定位，简单地说就是调整前后轮各种角度。前轮定位包括主销后倾角、主销内倾角、前轮外倾角和前轮前束四个内容；后轮定位则包括车轮外倾角与后轮前束。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;<strong>制动系统</strong> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 对于制动系统的检查主要包括以下两个方面：1.刹车油，这在清理发动机舱时就可以检查；2.制动盘与制动蹄属于易损易耗零件，如果磨损情况超过规定值范围，要及时更换。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;<strong>底盘检查</strong> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 汽车底盘的主要作用是承载、支撑汽车整体。在自驾游过程中，难免遇到坎坷路段、雨天行车、被物体刮到与遭遇泥泞路段等情况，而这些对于底盘的损坏是比较大的，容易致使底盘局部生锈、变形。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 房车自驾游之后对于车辆底盘的检查，首先要看底盘上是否有油渍渗出，不同的位置可能是不同部件漏油所致；其次要看底盘是否有生锈、变形等状况。另外，条件允许的情况下最好定期做底盘装甲，可以有效保护车辆底盘。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;<strong>外观清洗</strong> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 长途自驾游之后，清洗车辆那是必须的，一路上“风里来雨里去”，极易导致车身满是泥泞。因此，首先要做的就是对房车车身、车灯、保险杠、门窗玻璃、轮胎轮圈等进行全面清洗。<br />\r\n另外，也要检查车身表面是否有明显划痕，长途旅行中容易遇到比较糟的路况，遭遇划痕在所难免。检查过程中如果发现划痕，要及时去做喷漆处理，避免时间过长导致划痕处被氧化、腐蚀等。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	<strong>内饰清洗</strong> \r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 房车自驾游过程中免不了在车内吃吃喝喝，食物残渣与水很容易留在车内，时间长了一方面容易滋生细菌，产生霉变，影响车内空气质量；另一方面也容易招来小虫子。因此，在游玩回来之后要及时进行清理。而对于安装了座套、床单、枕套的车主来说，最好也将座套、床单、枕套拆卸下来，进行全面的清洗，为之后的驾车出行创造一个更好的环境。\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 另外，在条件允许的情况下，建议各位车主最好到专业的汽修服务站做一次全面检查与保养,对于以后的安全驾驶更有保障。\r\n</p>', '	房车自驾游归来之后，不知您是否检查过您的爱车呢？爱车在经历了一个小长假的旅途后，车子难免会呈现出疲劳状态，车主自驾游归来应对爱车做一番彻底的保养，以保障以后的行车安全。\r\n\r\n\r\n	 \r\n\r\n\r\n	  &amp;', '1520820531', '1520820603', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('17', '享受房车生活的同时我们还要做到这几点', '', '', '', '', '', '', '<p>\r\n	&nbsp; &nbsp;<span style=\"font-size:16px;\">房车旅行，随意停靠在远离城市的沙滩、湖岸、草地、山坡、森林中，享受美景的同时又拥有着城市的生活方式。如今，越来越受到户外爱好者及年轻人的追捧。然而作为时下最为新潮的出游工具，房车出行有哪些便利？有什么注意事项？出发时该做什么准备呢？</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/uploads/kindedit/image/20180514/20180514055542_95075.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img alt=\"\" src=\"http://www.saloonrv.com/ckfinder/userfiles/images/148902721693.jpg\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">房车出行注意事项</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">●用水系统房车中的水最重要，稍有不慎就会对人构成威胁，新房车使用之前，必须对饮用水系统进行消毒处理。以后每5000公里要及时消毒。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">●出发前检查装备是否齐全，是否加满了水箱以及油箱，最重要的是检查车上瓦斯是否安全，有无漏气情况。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">●行驶中在行驶中最好不要在车内随便走动，也不要躺在上铺。堆放的东西需要固定好。临时停车时，最好由驾驶员来开门，车内人员不要自行打开。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">●进入营地车辆停好后，要先接好水、电及废水管，然后才开始使用个人装备。还要严格遵守营区的相关规定。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/uploads/kindedit/image/20180514/20180514055556_82279.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img alt=\"\" src=\"http://www.saloonrv.com/ckfinder/userfiles/images/1489027528102(2).jpg\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">1、房车内都配备有床、沙发、电视、微波炉、冰箱、卫生间等基础设施；途中可以自己做饭、烧烤等；</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">2、房车所提供的额定数是根据床位所定，保障每人一个床位、房车最好再另配一个露营帐篷，以供露营时使用。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">3、房车上的卫生间可供路途及夜间使用，出行前请务必检查一下冲水器是否完好，以防途中水箱漏水。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">4、如果想洗浴，请找有外接水源和排污水的地方停下再洗浴，这样可以保证充足的水源。如在水源不方便的地方洗浴，由于车载独立水箱容量有限 ,需要可节约用水。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;<img src=\"/uploads/kindedit/image/20180514/20180514055645_30448.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img alt=\"\" src=\"http://www.saloonrv.com/ckfinder/userfiles/images/14890275398172.jpg\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">必须物品</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">1、房车上提供有电视、VCD、DVD、桌子、沙发等配套，可出门时可自己带上喜欢的音乐、卡拉OK碟、扑克等，在路上可自娱自乐。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">2、房车相对于私家车来讲，内部空间较大，方便换衣服，加之旅途天气多变，请多带些途中更换的衣服。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">3、如在旅途中，遇到一辆房车内起居的人较多的时候，最好有备用的睡衣裤，以备起夜方便。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">4、为了保护房车内的卫生洁净，上车最好穿拖鞋。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">5、每次下车用餐时，可带上水杯，在就餐的餐馆加点热水，可节省房车的水源。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img alt=\"\" src=\"http://www.saloonrv.com/ckfinder/userfiles/images/1489027600601.jpg\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">6、洗漱用具、箱包、器械的包装以小、软为好，当路途颠簸时，可以预防撞坏。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">7、要预防房车途中晕车、受伤、疾病等症状，出行前最好配备医药箱及相关药品。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">8、如果前往的目的地是海拔高的地方，如西藏、稻城，最好准备好氧气瓶、红景天等物品，以防高原反应。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/uploads/kindedit/image/20180514/20180514055717_94490.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">想要体验这种生活就必须注意旅行中所出现的种种问题。如今国外的房车自驾旅游早已非常火热，中国的自驾游队伍也在逐渐壮大，越来越多的人驾着自己的爱车，紧随时代潮流，驰骋于美丽的风景之中，与心爱的人尽情享受快乐吧！</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img alt=\"\" src=\"http://www.saloonrv.com/ckfinder/userfiles/images/1489027528102.jpg\" />\r\n</p>', '	   房车旅行，随意停靠在远离城市的沙滩、湖岸、草地、山坡、森林中，享受美景的同时又拥有着城市的生活方式。如今，越来越受到户外爱好者及年轻人的追捧。然而作为时下最为新潮的出游工具，房车出行有哪些便利？有什么注意事项', '1520991503', '1526277439', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('18', '如何让你的房车旅行更加省钱', '', '', '', '', '', '', '<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">“</span><span style=\"font-size:16px;\">住房车太贵了！”我们可能会经常听到这样的说法。但是，你有没有静下来仔细计算房车生活的费用呢？其实房车旅行是非常经济的，而且在旅行过程中还有各种省钱的方法。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/uploads/kindedit/image/20180514/20180514055415_37685.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img alt=\"\" src=\"http://www.saloonrv.com/ckfinder/userfiles/images/14895689089195.jpg\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科学的整理行装</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">当你驾驶房车旅行的时候要尽量减轻载重，舍弃所有非生活必需品。房车的载重越大，油耗越多。除了把一些非必需品留在家里以外，你也可以考虑在行驶的过程中清空净水箱，当到达露营地的时候再补足用水。另外，还有一种简单的省油方法就是匀速行驶。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/uploads/kindedit/image/20180514/20180514055430_24306.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img alt=\"\" src=\"http://www.saloonrv.com/ckfinder/userfiles/images/14895689258243.jpg\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">露营点选择的省钱学问</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">首先，当然是越短的驾驶距离越省油。因此，你可以选择到达目的地最短路线距离，或者选择距离相对近的露营地。其次，通常在露营地住的越久折扣越大（特别是在露营淡季）。而且，在一个地方停留足够的时间，才能深入的了解这个地方。谁知道呢，也许你会有意想不到的收获。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">露营地的折扣玄机</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">首先，如果你有露营地会员卡的话，一定要询问入驻的房车露营地是否可以用会员卡。另外，要勤于咨询是否可以使用积分，或者露营地是否有某些优惠活动等。如果你不咨询的话，说不定你会错过一些优惠活动。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">是否考虑国家公园露营地</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">通常国家公园露营地比普通的房车露营地价格略高。但是，它们通常环境优美，有很多旅行路线，还有湖泊、小溪或者河流等。这些优势都使得国家公园深受房车露营者的欢迎。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">关于房车加油</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">对于房车露营者来说，当然会驾驶房车到处旅行了，耗油是不可避免的。不过，办一张加油卡，或许可以获得一些折扣或者返点积分。既然燃油消费是不可避免的，那么何不获得一些回馈呢。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img alt=\"\" src=\"http://www.saloonrv.com/ckfinder/userfiles/images/14895689541237.jpg\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/uploads/kindedit/image/20180514/20180514055446_94457.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">边旅行边赚钱</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">房车旅行能节省多少费用取决于你的旅行计划。提前规划用餐费用和旅行路线可以节省不少开支。在网上发表一些房车游记或旅行感悟，也可以获得一些收入。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">房车旅行到底需要花多少钱？</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">那么在房车上生活到底需要花费多少钱？据悉在美国，两人的全年房车生活开销约10000美元。而在美国中西部地区生活的夫妻二人的年平均消费为39649美元。所以，房车旅行并非是我们想象的那么昂贵。只要你想，你也可以开着房车周游世界</span><span style=\"font-size:16px;\"><span style=\"font-family:arial, helvetica, sans-serif;font-size:16px;\">。</span></span> \r\n</p>', '	“住房车太贵了！”我们可能会经常听到这样的说法。但是，你有没有静下来仔细计算房车生活的费用呢？其实房车旅行是非常经济的，而且在旅行过程中还有各种省钱的方法。\r\n\r\n\r\n	科学的整理行装\r\n\r\n\r\n	当你驾驶房车旅行的时候要尽量减轻载重', '1520991837', '1526277288', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('19', '马路上移动的大型“KTV”随叫随唱', '', '', '', '', '', '', '<p class=\"p\" align=\"justify\" style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">随着社会</span><span style=\"font-size:16px;\">的不断发展</span><span style=\"font-size:16px;\">人们越来越追求便捷的生活方式，服务行业的商业模式不断追求创新与发展契合这个时代，在今后只要一个电话就有一个专业的ＫＴＶ包厢送上门，带给顾客更便捷，更专业的服务。</span> \r\n</p>\r\n<p class=\"p\" align=\"justify\" style=\"text-align:justify;\">\r\n	<br />\r\n</p>\r\n<div style=\"text-align:center;\">\r\n	<b><img src=\"/uploads/kindedit/image/20180314/20180314023631_14471.jpg\" alt=\"\" /></b> \r\n</div>\r\n<span> \r\n<div style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">从外观的角度去看KTV车除了纯黑的外漆看起来很亮丽之外，和普通大巴车也</span>\r\n</div>\r\n</span> \r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"p\" align=\"justify\" style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">没什么不同。</span><span style=\"font-size:16px;\">这款移动</span><span style=\"font-size:16px;\">KTV车采用全承载结构，使客车的行车更加具有敏捷性、平稳性、舒适性和安全性，再加上其低地板设计、人性化配置、低排放、环保化、乘客空间大等优势深受广大厂商和客户的认可。</span>\r\n</p>\r\n<p class=\"p\" align=\"justify\" style=\"text-align:center;\">\r\n	<img src=\"/uploads/kindedit/image/20180314/20180314023657_79884.jpg\" alt=\"\" /><span style=\"font-size:16px;\">&nbsp;</span>\r\n</p>\r\n<p class=\"p\" align=\"justify\" style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">进入车内拉开驾驶室的遮光帘布，一个硕大的空间呈现在眼前，一排从车头直通到车尾的</span><span style=\"font-size:16px;\">U型长条超纤皮质的沙发和电动升降的窗帘，24英寸的超大液晶显示屏配合国外进口的高档音响，以及国内最先进的K歌点歌设备，给人一种身临KTV现场的感觉。</span>\r\n</p>\r\n<p class=\"p\" align=\"justify\" style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;</span><img src=\"/uploads/kindedit/image/20180314/20180314023755_86918.jpg\" alt=\"\" /> \r\n</p>\r\n<p class=\"p\" align=\"justify\" style=\"text-align:center;\">\r\n	<img src=\"/uploads/kindedit/image/20180314/20180314023917_95641.jpg\" alt=\"\" /><span style=\"font-size:16px;\">&nbsp;</span>\r\n</p>\r\n<p class=\"p\" align=\"justify\" style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">整车最有特色的还是这灯光，车顶和座椅底部采用</span><span style=\"font-size:16px;\">KTV专用的LED灯光纤灯、频闪灯和七彩魔幻灯，让您在K歌的同时又能体验到舞台演出的氛围。</span>\r\n</p>\r\n<p class=\"p\" align=\"justify\" style=\"text-align:center;\">\r\n	<img src=\"/uploads/kindedit/image/20180314/20180314024026_17190.jpg\" alt=\"\" /> \r\n</p>\r\n<p class=\"p\" align=\"justify\" style=\"text-align:center;\">\r\n	<img src=\"/uploads/kindedit/image/20180314/20180314024038_11763.jpg\" alt=\"\" /> \r\n</p>\r\n<p class=\"p\" align=\"justify\" style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">金龙移动ＫＴＶ车流动性强、环境舒适；创意十足，极具广告效应；突破常规营销模式，将服务送上门更具吸引力，竞争</span><span style=\"font-size:16px;\">力。</span> \r\n</p>', '	随着社会的不断发展人们越来越追求便捷的生活方式，服务行业的商业模式不断追求创新与发展契合这个时代，在今后只要一个电话就有一个专业的ＫＴＶ包厢送上门，带给顾客更便捷，更专业的服务。\r\n\r\n\r\n	\r\n		\r\n	\r\n\r\n	\r\n		从外观的角', '1520995280', '1520995348', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('20', '雪地自驾游非常要注意刹车失灵', '', '', '', '', '', '', '<p style=\"font-family:宋体;font-size:12px;background-color:#F2F2F2;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	&nbsp;<img src=\"/uploads/kindedit/image/20180314/20180314062047_18835.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">雪地自驾游小心五点，刹车失灵四措施保命，在风雪天、气温低的条件下开车，以下五点需特别注意：</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">一.</span><span style=\"font-size:16px;\">不可疲劳开车。气温低，雨雪多，路滑，驾驶员易疲劳，车内温度升高易导致驾驶员打瞌睡，应注意劳逸结合，保证充足的睡眠，尽量夜间不出车或少出车。如长途行驶途中，最好有两个驾驶员轮流驾驶，驾驶时间不要超过两小时，如出现头晕、眼花、嗜睡等身体不适现象，应马上休息，待症状消除后再驾车上路。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">二.</span><span style=\"font-size:16px;\">不要使用低标号的柴油。冬季气温低，有的驾驶员贪图便宜使用低标号的柴油、防冻液或不使用防冻液，这样容易引发油路、水路不畅通或结冰现象，加之长期不更换轮胎，轮胎花纹接近磨平，在超载、雨、雪、霜的情况下，刹车灵敏度降低，极易发生交通事故。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">三.</span><span style=\"font-size:16px;\">驾驶员出车前要仔细检查。检查车辆的制动、转向、胎压、经常擦拭前挡风玻璃以免影响视线，注意控制车速，遇到险情，不要紧急制动，急打方向，以防车辆侧滑，禁止滑行，如发现问题及时检修，排除故障，千万不要勉强，避免交通事故的发生。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">四.</span><span style=\"font-size:16px;\">驾驶员要注意保暖。一些年轻的驾驶人喜欢穿着单薄，车内有空调，车内温度高，一旦下车后温差大，容易引发感冒；大车透风漏气，跑起车来只图快，风一吹也容易引发感冒，所以驾驶员注意保暖和备有应急性药品十分必要。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">五.</span><span style=\"font-size:16px;\">不要使用明火。柴油车冬天油路容易结冰，有些驾驶员有用火烤油箱的陋习，这是非常危险的，明火极易引燃漏油和渗油，一旦引起火灾，后果不堪设想，所以要配备必要的防火器材，有备无患。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img alt=\"\" src=\"http://www.saloonrv.com/ckfinder/userfiles/images/14848829091454.jpg\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;<img src=\"/uploads/kindedit/image/20180514/20180514055308_97522.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">坡中刹车失灵，四措施保命，不少车主会遇到上下坡时刹车突然失灵，这是一种非常危险的情况，以下四措施可最大程度降低危险。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">一.</span><span style=\"font-size:16px;\">高速挡迅速换到低速挡。首先需根据路况和车速把方向控制好，随后在脱开高速挡的同时迅速踩一脚空油门，这样可将高速挡迅速换到低速挡，使车速迅速降低。另外记住，在换低速挡的同时使用手刹，手刹不能拉得太紧，手刹拉得太紧容易使制动盘“卡死”。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">二.</span><span style=\"font-size:16px;\">摩擦碰撞障碍物。如果附近有岩石、大树、或者土坡天然障碍物，可利用车的保险杆、车厢等刚性部位与路边的天然障碍物进行摩擦碰撞，从而达到强行停车脱险的目的，更可能会减少一些事故损失。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">三.</span><span style=\"font-size:16px;\">上坡可换中低挡。上坡时刹车失灵，应该适时将挡挂到中低挡，能保持足够的动力驶上坡顶停车就行。假如半坡失灵需停车，就应保持前进低挡位并且拉紧手制动，随车人员即时下车寻找石块、木头等稳重一点的物品卡住车轮。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">四.</span><span style=\"font-size:16px;\">预见性刹车很重要。车辆在下长坡、陡坡时不管有无情况都应该踩一下刹车。既可以检验刹车性能，也可在刹车失灵时赢得控制车速的时间。</span> \r\n</p>', '	\r\n\r\n\r\n	 \r\n\r\n\r\n	雪地自驾游小心五点，刹车失灵四措施保命，在风雪天、气温低的条件下开车，以下五点需特别注意：\r\n\r\n\r\n	 \r\n\r\n\r\n	一.不可疲劳开车。气温低，雨雪多，路滑，驾驶员易疲劳，车内温度升', '1521008488', '1526277193', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('21', '房车露营行业的发展是圈内火圈外凉吗？', '', '', '', '', '', '', '<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	<span>中国目前的房车露营行业正在蓬勃的发展，</span>2016<span>年</span><span>9</span><span>月</span><span>22</span><span>日国家六部委颁发《关于加快推进</span><span>2016</span><span>年自驾车房车营地建设的通知》，</span><span>11</span><span>月</span><span>7</span><span>日国家十一部委联合颁发《关于促进自驾游车旅居车旅游发展若干意见》，国家政策层面利好不断。自驾车旅游产业也蓬勃发展，营地数量也与日俱增，成为新的旅游经济增长亮点，</span><span>2017</span><span>年将是中国旅居车及露营行业发展的关键之年。大形势发展如火如荼，然而行业的发展是否存在</span><span>“</span><span>圈内火、圈外凉</span><span>”</span><span>的情况呢？</span>\r\n</p>\r\n<p class=\"p\" style=\"text-align:center;margin-left:0pt;\">\r\n	<span><img src=\"/uploads/kindedit/image/20180319/20180319071844_51662.png\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	<b><span>营地遇到的窘境</span></b>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	<span>目前我国营地（包括正在建设中）的数量约为</span>900<span>余个，越来越多的地区大刀阔斧的选址规划建设营地。然而作为营地的主要服务对象</span><span>——</span><span>自驾车友来说，似乎对营地并不热衷。北京某自驾游领队坦言称：</span><span>“</span><span>并不知道哪个地区有露营地的存在，就算小部分地区有露营地，但是体验并不比</span><span>100</span><span>元的宾馆好。如果户外露营的话也是选择野营，对于露营地提供的帐篷营位并无概念。</span><span>”</span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	<span>营地的普及程度不高，其原因是多维度因素导致的</span>,<span>营地在国内的数量少、民众的露营文化尚薄弱、营地价值不明显、缺乏竞争力等等因素相互制约，阻碍着行业发展。从当前的情况来看，营地的快速发展概念确实还只是在圈内盛行。行业发展处于初期，寻求与市场的对接口来突破，才能与市场良性互动。</span>\r\n</p>\r\n<p class=\"p\" style=\"text-align:center;margin-left:0pt;\">\r\n	<img src=\"/uploads/kindedit/image/20180319/20180319071925_27520.png\" alt=\"\" />&nbsp;\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	<b><span>房车还没有彻底普及</span></b>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	<span>十几年前，葛大爷拍摄的《不见不散》电影，将房车带入到了我们的生活。十几年过去了，房车销量也在稳定增长。然而多数人对于房车的概念依旧是富人的奢侈品，当听到自行房车也有十万、二十万左右的价位时，表现的十分惊讶。房车厂商如雨后春笋般涌现，然而生产出来的多数房车质量欠佳，而百姓无从甄辨。</span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	<span>虽然近年来国家政策开始扶持旅居车发展，然而上路上牌难等问题，却依旧存在。据车友戏称，驾驶拖挂房车上高速，要带好相关法律条款，然后用约</span>50<span>分钟左右时间向收费站工作人员和交警解释。这种状况确实存在。我国个别地方以《道路交通安全法》第六十七条</span><span>“</span><span>全挂拖斗车不得进入高速公路行驶</span><span>”</span><span>的规定为依据，禁止拖挂房车在高速公路上通行。导致即使百姓买了拖挂房车，却开不上路，开上路又无可量化的规定标准来管制的窘境。</span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	<span>对于房车销售来说，其主要依靠的还是房车展和车友的口口相传，相比乘用车来说，很少有自己品牌的房车</span>4s<span>店，很多城市也并没有房车展厅。</span>\r\n</p>\r\n<p class=\"p\" style=\"text-align:center;margin-left:0pt;\">\r\n	&nbsp;<img src=\"/uploads/kindedit/image/20180319/20180319071955_50006.png\" alt=\"\" />\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	<span>无论是房车还是营地的发展，似乎都是单向地在推进，并没有达成良好的供需关系。自驾游大趋势发展迅猛，市场对于房车和营地有巨大需求，而供给方也在一直努力推进、前行，找到合适的突破点势在必行。</span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	<span>目前多数营地在尝试跨界融合来丰富自己的服务模块，将露营、体育、户外想结合，发展餐饮、娱乐等休闲产业以更好的服务用户。房车厂商也不只限于销售房车，而开展房车租赁、房车旅游线路开发、房车旅拍等业务。无论是营地主还是房车商都在通过各种方式，努力的将触角深入渗透到大众消费中去。</span>\r\n</p>\r\n<p class=\"p\" style=\"text-align:center;margin-left:0pt;\">\r\n	<img src=\"/uploads/kindedit/image/20180319/20180319072005_81916.png\" alt=\"\" />&nbsp;\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	<span>从消费者层面来讲，追求自然、高品质的生活方式是大多数人的消费理念，尤其是渐渐成为消费主力军的</span>80<span>后、</span><span>90</span><span>后。但是他们从小并没有受过露营教育的熏陶，我国也没有露营的文化。营地对这部分人群来说，游玩不如景区、度假村，不如酒店、民宿，而营地对他们最大的吸引力是为他们的社交提供场所，他们会为了一次劲爆的音乐会去营地，会为了难得一见的越野赛去营地等等。</span>\r\n</p>\r\n<p class=\"p\" style=\"margin-left:0.0000pt;\">\r\n	<b><span>小结</span></b><span>：</span>“<span>圈内火，圈外凉</span><span>”</span><span>是每个行业发展前期一定会经历的过程，房车露营行业也不例外。在任何细微的可能性中去尝试、思考、总结、规划、调整是每个企业家都不可免去的功课，用心做产品价值，相信市场的力量，在未来几年会有房车露营行业将勃发，热闹繁荣的市场氛围终将筑成。</span>\r\n</p>', '\r\n	中国目前的房车露营行业正在蓬勃的发展，2016年9月22日国家六部委颁发《关于加快推进2016年自驾车房车营地建设的通知》，11月7日国家十一部委联合颁发《关于促进自驾游车旅居车旅游发展若干意见》，国家政策层面利好不断。自驾车旅游产业', '1521444049', '1521444049', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('22', '寒冷的天气怎么解决房车水管冻裂问题', '', '', '', '', '', '', '<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">全世界现在在倡导着旅游，旅游能开矿你的眼界陶冶你的情操。而开着房车去露营旅行，会让整个旅行都变得轻松愉快。当冬季旅行或者穿越常年冰雪覆盖的地区时，壮丽的雪景会带给我们心灵的震撼。然而，与此同时我们的房车也可能会受到寒冷天气的影响。因此，我们需要为房车做一些应对寒冷天气的特殊防范措施，尤其是要预防水管冻裂。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/uploads/kindedit/image/20180514/20180514055138_16863.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img alt=\"\" src=\"http://www.saloonrv.com/ckfinder/userfiles/images/1489130727620.jpg\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">寒冷环境房车旅行的预防措施</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp; &nbsp; &nbsp;跟住房不同，房车需要预防水管冻裂。最简单的方法就是加满你的净水箱，随时准备放弃水管供水。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">首先，你需要全车检查，检查外部的水管是否正常。然后用高温胶带裹住水管。随后，你可以再用泡沫保温管包裹。如果你的房车里也没有保温措施的话，也可以用相同的方法保温。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">如果天气极其寒冷的话，你会希望在房车里采取一些保温的措施。但是，你需要注意可能带来的危险，做一些安全预防措施。如果你不小心操作失误，可能会造成火灾伤亡、一氧化碳中毒或者窒息等危险。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">在房车水箱的底部安装油罐加热器。安装之前要清理堆积在水箱底部的灰尘，除去保护膜，然后涂上胶黏剂。油罐加热器的供电可以通过链接房车的电路系统或者链接蓄电池获得。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">充足稳定的液化石油气储备十分重要。你可以加装设备，增加大约30磅重的液化石油气罐。如果你打算长达几个月的房车旅行，那么最好配备大约100磅的液化石油气罐。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">如果你打算用房车上的锅炉供暖，那么锅炉需要保持持续运行。大部分的房车都不具备优质的绝缘性能，因此散热比较快。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">你还可以用管式加热器放在管道箱上。这些加热器尺码更小，它们适合各种款的水箱。对外部的水箱也可以做相同的措施。<img src=\"/uploads/kindedit/image/20180514/20180514055157_56582.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img alt=\"\" src=\"http://www.saloonrv.com/ckfinder/userfiles/images/1489130744126.jpg\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp; &nbsp; &nbsp;也可以选择用液化石油气催化加热器。它是便携式的，可以额外加热。安装永久高输出催化加热器是更明智的选择。在车上，它比加压加热器更高效，而且催化加热器不需要用电。</span><span style=\"font-size:16px;\">如果你要去没有任何供电设施的野外露营的话，催化加热器是首选。在低氧环境下，你需要确保液化石油气已经关闭。你还需要安装一氧化碳探测器和易燃气体探测器。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/uploads/kindedit/image/20180514/20180514055205_81347.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img alt=\"\" src=\"http://www.saloonrv.com/ckfinder/userfiles/images/14891306924489.jpg\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">注意事项：</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">还有一个不错的预防措施，就是用一些胶合板安装在房车底部。它们会在房车下面形成一个可靠的保护墙。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">注意维护所有的水阀（包括黑水箱水阀和灰水箱水阀）。如果你让灰水箱的水阀打开着，这可能导致管口结冰，从而造成不便。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">以上建议可以帮助你避免寒冷天气所带来的不便，有一个愉快的房车旅行。</span> \r\n</p>', '	全世界现在在倡导着旅游，旅游能开矿你的眼界陶冶你的情操。而开着房车去露营旅行，会让整个旅行都变得轻松愉快。当冬季旅行或者穿越常年冰雪覆盖的地区时，壮丽的雪景会带给我们心灵的震撼。然而，与此同时我们的房车也可能会受到寒冷天气的影响。因此', '1521448323', '1526277134', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('23', '杭州比较近的几个房车露营地', '', '', '', '', '', '', '<h3>\r\n	<span style=\"font-size:16px;\">南京汤山温泉房车露营地</span> \r\n</h3>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;<img src=\"/uploads/kindedit/image/20180514/20180514054935_83361.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">南京汤山温泉房车营地是江苏省十大房车露营地创建试点单位，也是华东地区首家休闲养生自驾温泉房车露营地。营地规划150亩，总投资1.2亿元，营地位于南京汤山温泉旅游度假区内，距沪宁高速汤山出口2公里，交通便利，依山傍水，茶林相间，风景秀美。参照欧美一流标准及国家相关房车露营地建设标准，依托汤山千年温泉文化底蕴，融合温泉养生理念，加入自驾房车主题元素，打造休闲养生度假旅游文化为主题的五星级山地森林型房车露营地。营地规划有接待中心、茶园温泉、房车露营、房车体验、体育休闲、风情木屋（树屋）、民宿体验、户外活动区、商务综合、房车维保中心10大区域，有80个房车营位、150个自驾游停车位、20个移动木屋、20个温泉池、4公里运动步道、2000平方米餐厅以及激光打靶、儿童游乐园等配套设施一应俱全。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">自行式房车营位区采用了自主研发按国际标准配备的水电桩，可实现智能取水取电，并与营区安全应急中心相连呼叫系统，以便能及时处理突发事件。营区已将温泉引入、天然气接入、天然气地暖等标准化配备外，还增添了服务配套设施，公共卫生间、儿童卫生间、第三卫生间都具备恒温系统，公共冲淋间、公共厨房、洗衣房、盥洗间则按国家标准倾力呈现，自助餐厅、多功能沙龙活动室更是为营地增添了色彩。而房车体验区，则是在不破坏自然的前提下，见缝插针，随势而放，独具匠心的营造出独立的私人空间，将房车与温泉泡池完美结合，尽情释放。加上营区内的形象墙、路灯、导视牌、洗手台等原创设施更是衬托了汤山温泉房车营地的个性与魅力，给游客带来全身心的出游乐趣与舒畅，一站式的服务，有家的感觉。</span> \r\n</p>\r\n<h3>\r\n	<span style=\"font-size:16px;\">上海乐邑郡房车精品度假营</span> \r\n</h3>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;<img src=\"/uploads/kindedit/image/20180514/20180514054948_66840.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img alt=\"\" src=\"http://www.saloonrv.com/ckfinder/userfiles/images/5719ce89504a4%20(1).jpg\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">乐邑郡是毅宏旗下顶级房车营地连锁品牌，项目拟覆盖全国，为集商务活动、休闲度假、娱乐聚会、生活服务为一体的“迷你社区综合体”。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">作为滨江型房车营地的典范，乐邑郡房车精品度假营地处黄浦江下游西北岸，与东方明珠、金茂大厦等地标性建筑隔江相望，地理位置得天独厚。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span> \r\n</p>\r\n<h3>\r\n	<span style=\"font-size:16px;\">北京酷易乐房车驿站</span> \r\n</h3>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;<img src=\"/uploads/kindedit/image/20180514/20180514054957_41066.jpg\" alt=\"\" /></span> \r\n</p>\r\n<h3 style=\"text-align:center;\">\r\n	<img alt=\"\" src=\"http://www.saloonrv.com/ckfinder/userfiles/images/570f50f8d8d5b.jpg\" /> \r\n</h3>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span><span style=\"font-size:16px;\">北京酷易乐房车驿站坐落于北京通州区潞城镇贾后疃村潮白河畔开新农场内，开新农场始创于2011年，总占地面积3000余亩，是集度假娱乐、农家体验、绿色采摘、生态养殖、企业团建、影视文化为一体的休闲度假胜地。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span><span style=\"font-size:16px;\">北京酷易乐房车驿站依托开新农场完善的基础设施，以DIY自助烧烤为特色，提供绿色健康的农家菜和种类繁多的美味烤品。这里空气清新、视野开阔、河水清澈、沙滩唯美、绿柳成荫、木屋舒适，是享受户外烧烤和朋友聚会的首选之地。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span><span style=\"font-size:16px;\">沙滩美</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span><span style=\"font-size:16px;\">开新农场坐拥北京最长的沙滩，有“通州夏威夷”之美誉。4000余米的河岸线、阳光、沙滩、河景，尽享清新舒爽的沙滩美景。潮白河赋予开新农场的自然沙滩美景是区别于其他“开新农场”的显著标志。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span><span style=\"font-size:16px;\">娱乐全</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span><span style=\"font-size:16px;\">提供真人CS野战训练、素质拓展、旱冰、游泳、树上穿越、蒙古包KTV、骑马、沙滩越野车、摩托艇、快艇、脚踏船、5D影院、儿童游乐园等数十种娱乐项目。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">同时，我们为广大顾客免费提供各种棋类、桌游、麻将、台球、乒乓球、羽毛球、篮球、沙滩排球、沙滩足球、拔河、飞盘等数十种娱乐项目。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span><span style=\"font-size:16px;\">设施齐</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span><span style=\"font-size:16px;\">农场拥有绵延近1000米的休闲沙滩，有同时容纳3000人的户外烧烤区，还有可容纳300人的中餐宴会厅、大型室内综合游乐区和多个种、养植区。开新农场现已实现了全园区安全监控与WIFI覆盖。50余亩免费停车场让您不再为停车难而烦恼。无论是杨树林里错落的独栋小木屋，还是独具风格的的房车，还是能容纳20人联体农家别院，都拥有独立卫浴、空调、电视，各种配套设施应有尽有，为您的假日提供幽静、浪漫、舒适的环境!</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span><span style=\"font-size:16px;\">品种多</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span><span style=\"font-size:16px;\">主营自助烧烤，提供40多个品种，包含鱼类、虾类、各种肉类、蔬菜等，为广大顾客提供更多的美味选择。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span><span style=\"font-size:16px;\">品质优</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span><span style=\"font-size:16px;\">开新农场的所有合作商都经过精心挑选，所有食品、饮料、设施均由各行业知名企业直接供应。蔬菜产品由农业大学有机蔬菜养殖试验园——中国农大富通有机庄园直接供应;饮料分别由可口可乐、雪花啤酒、红牛等知名企业供应;餐具、客房用品均由专业清洗公司外包清洗。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;</span><span style=\"font-size:16px;\">在餐饮旅游行业竞争激烈的今日，开新农场以优越的地理位置、实惠的价格、贴心的服务，成为烧烤行业的第一知名品牌和龙头企业，更是通州区最具特色、最具魅力的农业旅游文化产业集团。开新农场的70名员工正在以朝气蓬勃、积极创新、锐意进取的精神不断提高服务质量。我们本着以客为尊，追求卓越的企业经营理念，从吃、喝、住、行、玩各方面为每位顾客提供优质高品质的服务。</span> \r\n</p>\r\n<h3>\r\n	<span style=\"font-size:16px;\">北京密云港中旅房车小镇</span> \r\n</h3>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;<img src=\"/uploads/kindedit/image/20180514/20180514055005_67821.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img alt=\"\" src=\"http://www.saloonrv.com/ckfinder/userfiles/images/56d561c4cd93e.jpg\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">北京港中旅密云南山房车小镇位于密云县河南寨镇河东路，毗邻南山滑雪场，是中国国际标准房车营地。北京港中旅密云南山房车小镇主要由综合服务会所、房车营位区、休闲娱乐区、房车酒店、房车及露营用品展示区等几部分组成。小镇内有多款美国原装进口拖挂式房车，可供房车住宿体验，还可接待各类展会、拓展训练、家庭户外休闲活动等，同时还可为各类聚会、婚礼及产品发布会提供场地。</span> \r\n</p>', '	南京汤山温泉房车露营地\r\n\r\n\r\n	\r\n\r\n\r\n	 \r\n\r\n\r\n	南京汤山温泉房车营地是江苏省十大房车露营地创建试点单位，也是华东地区首家休闲养生自驾温泉房车露营地。营地规划150亩，总投资1.2亿元，营地位于南京汤山温泉旅', '1521614018', '1526277027', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('24', '房车保养需要注意哪几点？', '', '', '', '', '', '', '<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/uploads/kindedit/image/20180514/20180514054840_68719.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">一.房车车体保养不容忽视</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">对于房车来说，车体保养是基础，由于房车车顶通常由金属覆板和各种各样的乙烯材料构成，长时间受到风吹、日晒、雨淋可能会产生渗漏。车身的各块金属板通常由胶、金属螺丝固定，螺丝分布在各个边缘，排风口、空调或其他部位。如果受阳光直射，乙烯外壳最终将产生裂缝，水分将渗透螺丝四周，导致潜在的木质腐烂。如果你暂时还没有一个为房车遮风避雨的地方，那你就需要不时用液态乙烯刷涂车顶、车身，让我们的房车能拥有一个完美的外观</span><span style=\"font-size:16px;\">！</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">二、蓄电池应重点检查和保护</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">大家都知道，室内照明的用电标准可能为220伏、12伏特或两者均可。房车可依靠发电机12伏电力保证没有外接电源的情况下车内的照明。车内电瓶依靠发动机或者外接电源补充电力。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">房车里大多数电器和其他主要系统依赖于蓄电池的正常工作。导致蓄电池过早不能正常工作的原因是过度充电、持续馈电以及维护不良。保持你的房车蓄电池无腐蚀、无物会延长其使用寿命，减少小毛病。做到这些，你可能会需要钢丝刷、凡士林、小苏打、橡胶手套以及水 　拿出你想检查的电池，确保是12伏特直流蓄电池，检查断裂、被腐蚀或绝缘皮剥离的电线，检查电线与两极是否可以连接牢固，将负极电线取下，用苏打水溶液对其进行清理，用钢丝刷擦洗接触端，同样的方法擦拭正极。用凡士林在两极接线柱上涂抹薄薄的一层。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">三、车顶空调机阀盖拆卸一定要学</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">拆卸金属片以保护金属冷却翼，拆卸过之后可以使用水管和喷雾器清除累积的污垢和树叶。在做这些时，要注意确定该部件没有接通电源，否则会危及清洗者的人身安全。这些工作需要在每年炎热季节当你需要使用空调之前进行一次。如果你大部分时间生活在南方，那么最好一年进行两次。 房车内空调作为常用电器，应该着重注意保养，要经常清洁空调过滤器。尘土、污渍过多的空调过滤器会减少空调的制冷能力和效率。过滤器位于在房车里，在空调装置上的风板下方。大多数房车空调过滤器必须在温水里小心、彻底地冲洗。在将它们装回去前需要在空气中风干。如果过滤器撕裂或不干净，就应该更换房车空调过滤器。每月至少检查和清洁一次过滤器。大多数房车空调机组的过滤器被拆下后，可以看到里面的蒸发器盘管。用手电照射，检查这些盘管是否有任何污垢或碎屑，如果有，使用非常柔韧的真空吸尘器附件小心地清除灰尘和污垢。如果愿意爬上房车顶，应该把空调上的外部冷凝器盘管也清洗干净。这需要去掉空调上的护罩，通常是几个螺丝将它钉在上面。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">四、房车上的水电系统定期检查</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">房车冰箱利用热量来制冷，而且内部并没有可拆卸部件，依靠氨水而不是压缩机来使温度降低。冰箱通过顶部排气孔来散热。如果这个排气孔被堵，后果会很严重。所以要经常检查这些地方 　发电机、电瓶以及12伏照明电路系统都应该是日常定期进行的维修项目。除了冰箱，其余的电器及插座通常和在普通房屋里一样。房车的冰箱通常是燃气冰箱，依靠12伏、220伏电力或丙烷运作。留意车内一切设施工作时发出的声音是否正常。冰箱等电器发出的咝咝声很可能是由于电路连接错误所致。建议准备一个点击检测器来检查电路连接是否正确。 　房车的管路系统也非常不同。独立的水路系统应该是标配装置，并且应该定期进行清理。出行前的检查是非常重要的。水槽和淋浴设备除了比较小以外，与在住宅里的同类设备基本相似。柔韧、灵活、方便更换的水管是房车里最常用的。水压调节器很早之前就发明出来了，在房车上随时携带一个水压调节器可以避免室内水管爆裂的危险。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">五、保障厕所排污系统的良好使用</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">谁都不想自己的房车上有股奇怪的味道，所以房车排污系统一定要保持良好的工作状态。这需要我们时常检查卫生间所有的部件并更换橡胶密封圈，要确保冲水后密封处可以完全闭合。使用厕所时，不要将厕纸丢在马桶里，而要放在垃圾桶中，不然房车内污水系统的清洁工作量会非常大。 　要经常检查黑水箱是否有泄漏现象，更换箱体的密封胶圈与排水阀处的O型胶垫是很容易的。要确保黑水箱与排水管的连接管形状是否正常。随时准备一个新的备用软管以防万一是非常明智的。当然净水箱、灰水箱也是一样的。</span> \r\n</p>', '	 \r\n\r\n\r\n	一.房车车体保养不容忽视 \r\n\r\n\r\n	  \r\n\r\n\r\n	对于房车来说，车体保养是基础，由于房车车顶通常由金属覆板和各种各样的乙烯材料构成，长时间受到风吹、日晒、雨淋可能会产生渗漏。车身的各块金属板通常由胶、', '1521616500', '1526276929', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('25', '移动巴士咖啡——咖啡界的新网红', '', '', '', '', '', '', '<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;咖啡，在现代社会早已不是一种饮品，而是一种代表惬意休闲的生活方式。咖啡厅成为这个略显焦躁的社会中不多的一份宁静，也成为人们能够暂时躲避纷纷扰扰安静平和之地。被广大上班白领，大学生们所喜爱。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/uploads/kindedit/image/20180514/20180514054628_40805.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><a><span style=\"font-size:16px;\">厦龙房车</span></a><span style=\"font-size:16px;\">很早的时候便推出了巴士咖啡馆这样的产品，该巴士咖啡馆采用金龙大客车改装而来，既帮助消费者更便捷的享受这份惬意，也为经营者摆脱高额的房租，甚至可以聚齐一群人，边喝咖啡，一边来一场说走就走的旅行。又或者做一个将店铺开在五湖四海，潇洒的“咖啡厅”。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/uploads/kindedit/image/20180514/20180514054643_83149.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp; 金龙移动巴士咖啡厅的外观设计独具匠心，配上巴士咖啡的logo，加上独特、富有艺术气息的油漆喷绘，使外观大方，形成很强的视觉冲击效果，靓丽的外形流畅的线条还飘着浓郁的咖啡香，并具有液压支撑“驻扎”、探出和遮阳蓬展开等“变形”功能。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/uploads/kindedit/image/20180514/20180514054710_42909.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;厦龙的这款移动咖啡车，车内的配置不仅丰富，而且做工考究，用料精良，用恬静、舒适来形容恰如其分，考虑乘车的舒适性及实用性，整车采用大橱窗玻璃设计，可以欣赏旅途的靓丽风光，还配备了多张面对面式豪华贵宾真皮沙发卡座，顶部豪华流星灯，搭配全车简洁柔和灯光，此外卫生间、冰箱、电视等设备一应俱全。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/uploads/kindedit/image/20180514/20180514054722_50819.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp; 这么一家移动咖啡店可以到达任何地方，如果您在路边看到这样的一个咖啡店，要一杯浓浓的咖啡将是多么的惬意，它可以让您忘却“长途跋涉”中的劳苦。同时这样的咖啡店也将成为城市道路、乡间小路上的一道风景线。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;<img src=\"/uploads/kindedit/image/20180514/20180514054737_78859.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp; 如果这样的这样的咖啡车昂贵，不够亲民。金龙还能够提供更好的选择，金龙凯特移动咖啡车是采用金龙凯特服务车底盘改装流动的咖啡厅，整车外观呈咖啡色，采用左右上掀窗和电动遮阳蓬，搭配独特的内饰装修。车上配有蓝光保鲜一体操作台、制冰机、全进口半自动咖啡机、蛋糕机、开水机、封口机等先进水吧台操作设备。更重要的是，这款移动咖啡车采用最新的进排水系统技术与智能电源系统技术，可以外接饮用水，并配有应急供水系统，保证服务不中断。污水排放系统可以直接连接污水管道并设有应急污水箱。智能电源系统为装备保证充足的电源和保护装置，可以直接连接市电或启用备用发电机。此外，车上还有应急UPS电源系统，确保照明、冷藏柜、开水机、收银机等都有不间断的电源。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/uploads/kindedit/image/20180514/20180514054757_47254.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>', '	 咖啡，在现代社会早已不是一种饮品，而是一种代表惬意休闲的生活方式。咖啡厅成为这个略显焦躁的社会中不多的一份宁静，也成为人们能够暂时躲避纷纷扰扰安静平和之地。被广大上班白领，大学生们所喜爱。\r\n\r\n\r\n	\r\n\r\n\r\n	&amp;nb', '1521617455', '1526276881', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('26', '厦龙大巴房车改装产品', '', '', '', '', '', '', '<div class=\"newstitle\" style=\"margin:0px 15px;text-align:center;\">\r\n	<div class=\"newswenzi jiacu\" style=\"padding:15px 0px 10px;\">\r\n		<a href=\"http://www.saloonrv.com/\"><span style=\"font-size:16px;\">厦龙房车</span></a><span style=\"font-size:16px;\">是由厦门金龙与杭州厦龙合资在厦门成立的正规汽车改装企业，专业改装生产(10米，12米，14米)的</span><a href=\"http://www.saloonrv.com/product/29_22.html/\"><span style=\"font-size:16px;\">金龙大巴房车</span></a><span style=\"font-size:16px;\">，产品展示车(</span><a href=\"http://www.saloonrv.com/information/www.saloonrv.com\"><span style=\"font-size:16px;\">移动楼盘售楼车</span></a><span style=\"font-size:16px;\">)，&nbsp;</span><a href=\"http://www.saloonrv.com/product/34_22.html\"><span style=\"font-size:16px;\">商务接待车</span></a><span style=\"font-size:16px;\">等。</span>\r\n	</div>\r\n</div>\r\n<div class=\"newscont\" style=\"padding:10px;\">\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://image.16888.com/upload/Images/2016/10/2016102703011713678_550.jpg\" />\r\n	</p>\r\n	<p>\r\n		<span style=\"font-size:16px;\">厦龙移动售楼车，又叫移动售楼部(处)，即在这款车上就可以达到销售楼盘的效果，可以在车内直接放置沙盘，当然为了节约空间可以不放置，可以采用车内电视液晶大屏幕来显示或者采用其他办法来操作，让更多的客户看到您的楼盘情况。当前楼盘展示车尤为火热，金龙房车改装厂连续为广大客户改装了多辆楼盘车型，当然为了适应客户的需求，方案也是各异，非常适用房地产公司或者广告策划公司。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://image.16888.com/upload/Images/2016/11/2016111404084799183_550.jpg\" />\r\n	</p>\r\n	<p>\r\n		<a href=\"http://www.saloonrv.com/product/29_22.html/\"><span style=\"font-size:16px;\">金龙大巴房车</span></a><span style=\"font-size:16px;\">，是采用大金龙客车底盘进行改装，由于客车底盘长度的不同，且客车的空间比较大，则按照不同的需求，可以在车内配置多张床，而这一款车的亮点就在上下铺这一设计，充分利用客车内部空间。前后舱隔离，前舱亦可作商务接待、会议使用，隔墙上设置投影卷帘及大屏幕的液晶电视，配备传真、上网设备、豪华型多功能酒柜，车载电话、卡拉OK装置等合理分配，巧妙布局，每一个细节都精雕细选，便捷出行的同时，更显生活的奢华。后舱则是完整的一辆旅居车内饰装修配置，独立豪华的车载卫生间、厨房、卧室等让人仿佛置身于一个移动豪华“行宫”。此外整车控制系统更是让乘客对周围的环境与整车的情况了如指掌，让旅途更舒适更安心。</span>\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://image.16888.com/upload/Images/2016/11/2016111410291342395_550.jpg\" />\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://image.16888.com/upload/Images/2016/11/2016111410291247725_550.jpg\" />\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<img src=\"http://image.16888.com/upload/Images/2016/11/2016111410291269753_550.jpg\" />\r\n	</p>\r\n	<p>\r\n		<a href=\"http://www.zjkinglong.com/swc/\"><span style=\"font-size:16px;\">商务接待车</span></a><span style=\"font-size:16px;\">，外观朴实与普通金龙客车相差无异，但是车内却别有一番风景。不仅乘坐舒适，整车豪华装饰，并且配备有顶部氛围灯、效果灯、进口超纤整体包覆、大功率车内空调、高档视听娱乐系统、高科技星光顶、内置冰箱式水吧等。最大的亮点就是其配置了独立的VIP包厢，完全可以在私密商务包厢里接待贵宾、洽谈、签约。车内豪华真皮沙发、实木会议桌等家具和装饰采用直线条设计，简洁明快。超大的商务空间及可自由变换的格局，能满足商务活动中的多样需求。</span>\r\n	</p>\r\n</div>', '\r\n	\r\n		厦龙房车是由厦门金龙与杭州厦龙合资在厦门成立的正规汽车改装企业，专业改装生产(10米，12米，14米)的金龙大巴房车，产品展示车(移动楼盘售楼车)，&nbsp;商务接待车等。\r\n	\r\n\r\n\r\n	\r\n		\r\n	\r\n	\r\n		厦龙', '1522118340', '1522118340', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('27', '大巴改装快餐车-郑州小伙脑洞大开', '', '', '', '', '', '', '<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">如今的时代已经成为了创新的时代，脑洞大开的时代，“眼球经济”的时代。尤其是对于从事服务行业，一个新颖的模式，一个受到认可的创新之举或许会成为成败的关键。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/uploads/kindedit/image/20180514/20180514054406_32442.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;</span><span style=\"font-size:16px;\">&nbsp; 将大巴车改装成一个移动的“服务店”，这种模式已经越来越多的出现在我们的生活中。移动售楼车，移动酒吧车，移动KTV车层出不穷，受到人们的欢迎。如今郑州这位小伙子还改装了一辆“奇葩流动快餐车”。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/uploads/kindedit/image/20180514/20180514054419_78400.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;&nbsp; </span><span style=\"font-size:16px;\">&nbsp;河南省郑州市，东风路上一家商场门前的停车场内，一辆大巴车被改造成快餐店，经营凉皮、酸辣粉、肉夹馍等快餐。快餐店内装修十分温馨。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/uploads/kindedit/image/20180514/20180514054431_18352.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp; &nbsp;</span><span style=\"font-size:16px;\">这辆大巴车的车头和车尾均装有空调，车尾被改造成为简易厨房，餐桌上摆放着花草，十分温馨。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/uploads/kindedit/image/20180514/20180514054443_64157.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"font-size:16px;\">小编觉得这种的经营模式可能会得到越来越多的人的模仿，认可;经营的范围也会越来越广，早已拓展到食品、饮料、餐饮、粮油、日用品等多领域的流动售卖，如冰淇淋车、快餐车等.流动餐饮车与门面相比的优势：广告效应好，易引人注意;灵活、可流动，哪里生意好就开到哪里。</span> \r\n</p>', '	如今的时代已经成为了创新的时代，脑洞大开的时代，“眼球经济”的时代。尤其是对于从事服务行业，一个新颖的模式，一个受到认可的创新之举或许会成为成败的关键。\r\n\r\n\r\n	\r\n\r\n\r\n	   将大巴车改装成一个移动的“服', '1522287042', '1526276688', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('28', '房车的保养需要注意什么', '', '', '', '', '', '', '<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">房车像其他的车辆一样，都少不了维修、保养、保险等一系列活动，那么房车的保养维修需要注意什么。了解最基本的房车保养及维修常识非常重要，下面就跟着小编来看看房车的维修保养需要注意什么事项</span> \r\n</p>\r\n<p>\r\n	<div style=\"text-align:center;\">\r\n		<br />\r\n	</div>\r\n<span style=\"font-size:16px;\">\r\n	<div style=\"text-align:center;\">\r\n		　　1、常规保养不必换的别换\r\n	</div>\r\n</span>\r\n	<div style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">　　通常车主做常规保养时，都会更换四滤，其实在这四滤中，除了机油滤芯和机油一定要按行车里程进行更换外，像空气滤芯、汽油滤芯、空调滤芯等不一定每次都要换了，车主可以根据自己的行车路况，隔上一次或两次再更换。当然前提是，需要维修站的工作人员检查一下，确定部件没有损坏。</span>\r\n	</div>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<div style=\"text-align:center;\">\r\n		<img src=\"/uploads/kindedit/image/20180514/20180514054150_35622.jpg\" alt=\"\" />\r\n	</div>\r\n<span style=\"font-size:16px;\">\r\n	<div style=\"text-align:center;\">\r\n		　　2、建议更换部件时多留心\r\n	</div>\r\n</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n<span style=\"font-size:16px;\">　　有些维修站为追求利润，会建议车主更换一些不必要更换的部件，.增加车主负担。一些零部件能修复的应尽量修复，不能修复时再更换，比如前后保险杠、车门;机盖等，如果碰撞弯曲变形不严重，修复的成本要远远低于换的成本。</span><br />\r\n<span style=\"font-size:16px;\">　　<img src=\"/uploads/kindedit/image/20180514/20180514054203_34142.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">　　3、价格要货比三家</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/uploads/kindedit/image/20180514/20180514054218_11996.jpg\" alt=\"\" /><br />\r\n<span style=\"font-size:16px;\">　　在很多消费者印象中，同一品牌4S店的维修站和特约服务站的零部件价格和工时费应该都是一样的，其实不然。越是常用配件，全家店的价格越一致，因为厂家规定的常用配件在同一品牌不同4S店的价格都一样，但是一些“冷”配件，因为更换频率不高，各家店间价格还是有差别的，有些时候还会相差很多。不同维修站的进贷旦和时间等不同;就造成冷配件价格不一样。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">　　4、充分利用免费检测服务</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/uploads/kindedit/image/20180514/20180514054246_82960.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<div style=\"text-align:center;\">\r\n		<span style=\"font-size:16px;\">&nbsp; &nbsp; &nbsp;为了树立自己的品牌形象，吸引更多的消费者，如今国内各大房车生产厂家每年都会举办各种名目的免费检测活动。</span>\r\n	</div>\r\n<span style=\"font-size:16px;\">\r\n	<div style=\"text-align:center;\">\r\n		　　5、平常开车少磕碰\r\n	</div>\r\n</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n<span style=\"font-size:16px;\">　　对很多新手而言;除了正常保养外，维修费用才是大块头，记者从多家品牌维修站了解到;车主来店车辆中合相当一部分是做钣金和喷漆，仅这一项开支就比较大，因为随便给车喷个漆都得几 百块大洋。对这些车主来说，首先就是一定要找一个好的保险公司，给自己的车买个车损险，减少自己的损失;另外，就只能是自己开车时一定要小心，避免磕碰。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/uploads/kindedit/image/20180514/20180514054300_31708.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p>\r\n	<div style=\"text-align:center;\">\r\n		<br />\r\n	</div>\r\n<span style=\"font-size:16px;\">\r\n	<div style=\"text-align:center;\">\r\n		　　6、没事别老进维修站\r\n	</div>\r\n</span>\r\n</p>\r\n<p>\r\n	<div style=\"text-align:center;\">\r\n		<br />\r\n	</div>\r\n<span style=\"font-size:16px;\">\r\n	<div style=\"text-align:center;\">\r\n		　　“有些车主对车太过珍惜，比如保养期是5000公里;，但他才跑了3000或4000公里就要来换机油、三滤。”房车售后服务站的站长表示，车主完全没有必要这样做，只需按照厂家规定的保养里程正常保养就行，过早地保养更换就是浪费了。\r\n	</div>\r\n</span>\r\n</p>', '	房车像其他的车辆一样，都少不了维修、保养、保险等一系列活动，那么房车的保养维修需要注意什么。了解最基本的房车保养及维修常识非常重要，下面就跟着小编来看看房车的维修保养需要注意什么事项\r\n\r\n\r\n	\r\n　　1、常规保养不必换的别换\r\n　', '1522375661', '1526276587', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('29', '自驾推荐—一个逐渐消失的世外桃源', '', '', '', '', '', '', '<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;是不是觉得现在大部分的景点都被开发过度了呢，或者觉得许多著名的景点并不如传闻的那般美丽。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;&nbsp; &nbsp;有没有什么不为大多数人所知，而风景又绝对不会让人失望的地方呢。接下来我们就要为大家介绍一个风景如画，不为大多数所知，甚至因为不为大多数人所知，正在逐渐消失的世外桃源。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-size:16px;\">奇乾村地处额尔古纳河畔，大兴安岭北部原始森林腹地。条件非常的简陋，没有什么随处可栖的酒店，没有什么随时可供应的饭店，尤其适合房车游的朋友们。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180514/20180514053951_31063.png\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180514/20180514053952_26550.png\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180514/20180514053953_55247.png\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180514/20180514053953_56392.png\" alt=\"\" />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-size:16px;\">她在中俄交界，偏僻而美好！这里，没有信号，没有电，因为他的偏僻荒凉，所以很少有人光临，也得幸保持住了她最美丽，原汁原味的风情，</span><span style=\"font-size:16px;\">才得以深藏这旷世之美！</span><span style=\"font-size:16px;\">她位于大山深处，与世隔绝。因为搬迁，只剩下</span><span style=\"font-size:16px;\">8</span><span style=\"font-size:16px;\">户人家顽强地留守，守护神般守护着这个隐藏在原始森林深处的世外桃源。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\"><img src=\"/uploads/kindedit/image/20180514/20180514054005_56472.png\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;&nbsp; 赶紧开着自己的房车，带上自己的家人，去光临这旷世之美。</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>', '	 是不是觉得现在大部分的景点都被开发过度了呢，或者觉得许多著名的景点并不如传闻的那般美丽。\r\n\r\n\r\n	    有没有什么不为大多数人所知，而风景又绝对不会让人失望的地方呢。接下来我们就要为大家', '1522379591', '1526276407', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('30', '房车旅行——现在就出发', '', '', '', '', '', '', '<p align=\"left\" style=\"text-align:center;\">\r\n	&nbsp;可曾想在美丽的风景中流连忘返，然后可以任性的留下，不用担心风餐露宿，不担心雨吹风打。可曾想过躺在舒适的房间，一出门就可以看到满天的星光，听到最贴近大自然的虫鸣鸟语。在皎洁的月光下，与爱人相偎，与亲人同笑。家也在想回就立马能回的地方。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/uploads/kindedit/image/20180514/20180514053826_15262.jpg\" alt=\"\" />&nbsp;\r\n</p>\r\n<p align=\"left\" style=\"text-align:center;\">\r\n	&nbsp;&nbsp; 有多少因食宿不便而错过的美丽风景，有多少因不得不赶回酒店而再难再经历一次的机遇。这是在旅行中让多少人抱憾，随心而动，是多少旅行爱好者的期望。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	&nbsp;<img src=\"/uploads/kindedit/image/20180514/20180514053837_38138.jpg\" alt=\"\" /> \r\n</p>\r\n<p align=\"left\" style=\"text-align:center;\">\r\n	&nbsp;&nbsp;&nbsp; &nbsp;房车在圈内人的普及，让这些问题都得到了解决。房和车最佳的结合，逐步得到了许多热爱户外的都市新人类的追捧和认可。有了房车，你的家可以在风吹草低见牛羊的草原、可以在明月共潮生的海滨、可以在落霞与孤鹜齐飞的湖畔、可以在枯藤老树昏鸦的树林；有了房车，你可以说走就走，逃离不愉快的城市来带一个喜欢的地方。或静坐独思，或跳或跃，酣畅淋漓。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	&nbsp;<img src=\"/uploads/kindedit/image/20180514/20180514053843_12565.jpg\" alt=\"\" /> \r\n</p>\r\n<p align=\"left\" style=\"text-align:center;\">\r\n	&nbsp; &nbsp; 房车不仅是一种生活方式，更是一种生活态度。想走就走，想留就留，不要总是等时间走了，身边的人离开了，我们老了再出发。\r\n</p>', '	 可曾想在美丽的风景中流连忘返，然后可以任性的留下，不用担心风餐露宿，不担心雨吹风打。可曾想过躺在舒适的房间，一出门就可以看到满天的星光，听到最贴近大自然的虫鸣鸟语。在皎洁的月光下，与爱人相偎，与亲人同笑。家也在想回就立马能', '1522805040', '1526276325', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('31', '一台有“格调”的产品展示车', '', '', '', '', '', '', '<p style=\"text-align:center;\">\r\n	&nbsp; 现如今，各行各业的竞争都越来越激烈。为了吸引更多的客户，为了更佳效果宣传自己公司的产品。各个公司在宣传方式上不断的争相斗艳。其中由大巴改装的移动展示车受到了许多家居公司，卫浴公司，房地产等公司的欢迎。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/uploads/kindedit/image/20180514/20180514053643_55030.jpg\" alt=\"\" />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	&nbsp;&nbsp;&nbsp; 移动产品展示车流动性强，宣传方式佳，每天可以在人流量高的地方奔走或者驻扎。可以很好的宣传公司产品，并且移动产品展示车至今仍是一个较为新颖的东西，本身就是一个惹人注目的广告平台。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/uploads/kindedit/image/20180514/20180514053652_59144.jpg\" alt=\"\" />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 19日，在广东信宜市就有了一辆这样的产品展示车，吸引了人们的眼球。该车由大巴车改装而成，内部豪华，功能齐全，车厢内设有洗手盘、桌椅、客厅、卧室、电视等生活设备，车上的沙发等家居均来自“格调”品牌产品。据悉，该房车价值200万元。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	&nbsp;<img src=\"/uploads/kindedit/image/20180514/20180514053702_65480.jpg\" alt=\"\" /><img src=\"/uploads/kindedit/image/20180514/20180514053711_95080.jpg\" alt=\"\" /><img src=\"/uploads/kindedit/image/20180514/20180514053719_87648.jpg\" alt=\"\" />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>', '	  现如今，各行各业的竞争都越来越激烈。为了吸引更多的客户，为了更佳效果宣传自己公司的产品。各个公司在宣传方式上不断的争相斗艳。其中由大巴改装的移动展示车受到了许多家居公司，卫浴公司，房地产等公司的欢迎。\r\n\r\n\r\n	\r\n\r\n', '1523154450', '1526276244', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('32', '英国男子将装甲车改装成移动小酒吧', '', '', '', '', '', '', '<p style=\"text-align:center;\">\r\n	&nbsp;房车改装越来越受欢迎，我们见识过各种各样的改装房车，有宽敞豪华的大巴改装房车，内部设施分区工整，设施齐全，也有简单实用的，入手门槛低的小皮卡小商务车改装的C型房车，有大型的拖挂房车，也有精致的木屋房车。应该是脑洞已经极其的开阔了。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/uploads/kindedit/image/20180514/20180514053450_33420.jpg\" alt=\"\" />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	&nbsp;&nbsp;&nbsp; 可是你是否有见过旧的装甲车所改装的房车呢，说拉风，大概是没有哪个房车可以超过它.在英国，有一个男子购买了一辆淘汰的装甲运兵车,将之改装成房车。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/uploads/kindedit/image/20180514/20180514053459_89354.jpg\" alt=\"\" />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;据这位装甲车改装车主说，这辆车的内部空间非常大，非常的适合改装成房车，而且由于其酷炫的外表，开起来尤为的拉风。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	&nbsp;<img src=\"/uploads/kindedit/image/20180514/20180514053509_61693.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	&nbsp;&nbsp; 这位男子把这辆装甲车买来后将之改装成为一个小小的酒吧，配备了电视，影音系统，以及几个小小的沙发。很适合两三好友的小小的周末聚会。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/uploads/kindedit/image/20180514/20180514053517_12708.jpg\" alt=\"\" />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	&nbsp;&nbsp;&nbsp; 由于装甲车的高度较低，在车内的话只能坐着喝酒聊天，这位车主将车顶的车窗改装打了许多。随时可以打开透透风。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	&nbsp;&nbsp;&nbsp; 怎么样，这样的车开到户外，是不是一定会成为街头的焦点。\r\n</p>', '	 房车改装越来越受欢迎，我们见识过各种各样的改装房车，有宽敞豪华的大巴改装房车，内部设施分区工整，设施齐全，也有简单实用的，入手门槛低的小皮卡小商务车改装的C型房车，有大型的拖挂房车，也有精致的木屋房车。应该是脑洞已经极其的', '1523154570', '1526276129', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('33', '123', '32134', '', '', '', '', '', '122222222222', '122222222222', '1527058397', '1527058397', '0', '2', '0', '0', '', '1', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('34', '厦龙房车-最舒适的高档房车', '', '', '', '', '', '', '<p style=\"text-align:center;\">\r\n	<img src=\"http://cdn.135editor.com/html2images/3326986/296466.png\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"http://cdn.135editor.com/html2images/3326986/296468.png\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<span style=\"font-size:16px;\">2011年为适应新形势汽车市场需求，本公司与美国霆盛公司合作成立厦龙房车汇。主营进口豪华旅居车，进口房车，</span><span style=\"font-size:16px;\">面对汽车产业的迅速发展，公司秉承</span><span style=\"font-size:16px;\">“以质量求生存，以产品求发展”的经营理念和“用户至上，信誉第一”的宗旨，以合理的价格，优质的服务，不断地满足用户需求。通过近7年的发展，公司合计销售达到十几亿元，堪称史上最强大的多功能用途汽车。</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<img src=\"/uploads/kindedit/image/20180531/20180531040255_89285.png\" alt=\"\" /><span style=\"font-size:16px;\">&nbsp;</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<span style=\"font-size:16px;\">同时为了满足使用者的不同，我们提供了不同类型的房车供您选择。</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<span><br />\r\n</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<span><img src=\"http://www.saloonrv.com/uploads/kindedit/image/20180531/20180531040347_33749.png\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<span><br />\r\n</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<span style=\"font-size:16px;\">金龙超大房车作为首选。其内部个性化装饰深得广大顾客的喜爱。办公室拥有私人定制版的真皮座椅，为每一位客户提供最舒适的服务。多功能车载电视是放车上的必需品。卧室设计方案中，包含定制版双人床以及自动窗帘。实现了自动化与房车相结合的先进理念。会客厅中，摆放着进口定制茶水间和高档茶几柜，无时无刻显示着车主的不凡品味，地板为高级木材定制，展现高端舒适的会客场所。</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<img src=\"/uploads/kindedit/image/20180531/20180531040319_71553.png\" alt=\"\" /><span style=\"font-size:16px;\">&nbsp;</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<img src=\"/uploads/kindedit/image/20180531/20180531040327_19758.png\" alt=\"\" /><span style=\"font-size:16px;\">&nbsp;</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<img src=\"/uploads/kindedit/image/20180531/20180531040339_30566.png\" alt=\"\" /><span style=\"font-size:16px;\">&nbsp;</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<span style=\"font-size:16px;\">同样，金龙豪华大巴房车也是一款不错的选择。地板的设计别具一格，用细节来打动客户。安全性和私密性更是保障旅行质量的必要因素，其中客厅与卧室相互切合，互相独立，给您不一样的体验。房车两侧拥有可供展开的展板，户内外的交替空间让您的旅行得到优质的保障。内部超大空间有高级制定的吧台，使得整体内部空间独立而整洁。在旅途中为您的居住环境提供良好心情。下面为您提供金龙豪华大巴房车的内饰图片。</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<img src=\"/uploads/kindedit/image/20180531/20180531040359_66535.png\" alt=\"\" /><span style=\"font-size:16px;\">&nbsp;</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<img src=\"/uploads/kindedit/image/20180531/20180531040409_30041.png\" alt=\"\" /><span style=\"font-size:16px;\">&nbsp;</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<img src=\"/uploads/kindedit/image/20180531/20180531040419_35644.png\" alt=\"\" /><span style=\"font-size:16px;\">&nbsp;</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:28pt;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-size:16px;\">对于这样</span><span style=\"font-size:16px;\">几款房车，可以商务、野钓、摄影、家人旅行等都是非常适合。其优势不仅在于车源丰富，厂家直销，节约购买成本，保险齐全，更为优化的是王牌客服团队为您提供周到的服务，对于这样一款集商务家旅等多功能式房车你会喜欢吗？会选吗？</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '2011年为适应新形势汽车市场需求，本公司与美国霆盛公司合作成立厦龙房车汇。主营进口豪华旅居车，进口房车，面对汽车产业的迅速发展，公司秉承“以质量求生存，以产品求发展”的经营理念和“用户至上，信誉第一”的宗旨，以合理的价格，优质的服务，不断地满足用户需求。通过近7年的发展，公司合计销售达到十几亿元，堪称史上最强大的多功能用途汽车。\r\n	\r\n\r\n\r\n	\r\n\r\n\r\n	\r\n\r\n\r\n	\r\n\r\n\r\n	\r\n\r\n\r\n	\r\n\r\n\r\n	\r\n\r\n\r\n	\r\n\r\n\r\n	\r\n\r\n\r\n	\r\n\r\n\r\n	\r\n\r\n\r\n	\r\n\r\n\r\n	\r\n', '1527733799', '1527739632', '0', '2', '0', '0', '', '0', '0', '1', '0');

-- ----------------------------
-- Table structure for `tp_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `tp_attachment`;
CREATE TABLE `tp_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '' COMMENT '原文件名',
  `filepath` varchar(200) NOT NULL DEFAULT '',
  `filetype` smallint(6) NOT NULL DEFAULT '1',
  `filesize` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `haslitpic` tinyint(1) NOT NULL DEFAULT '1',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=769 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_attachment
-- ----------------------------
INSERT INTO `tp_attachment` VALUES ('1', 'ego_xjp.jpg', 'uploads/img1/20140925/5423d4e089544.jpg', '1', '94107', '1', '1411634400', '1', '0');
INSERT INTO `tp_attachment` VALUES ('2', 'image007.jpg', 'uploads/img1/20140928/54275eff418ad.jpg', '1', '88352', '1', '1411866367', '1', '0');
INSERT INTO `tp_attachment` VALUES ('3', 'image009.jpg', 'uploads/img1/20140928/54275eff63dfe.jpg', '1', '90439', '1', '1411866367', '1', '0');
INSERT INTO `tp_attachment` VALUES ('4', 'image011.jpg', 'uploads/img1/20140928/54275eff76f2b.jpg', '1', '78953', '1', '1411866367', '1', '0');
INSERT INTO `tp_attachment` VALUES ('5', '1.jpg', 'uploads/img1/20140929/5429054b07a12.jpg', '1', '150557', '1', '1411974475', '1', '0');
INSERT INTO `tp_attachment` VALUES ('6', '2.jpg', 'uploads/img1/20140929/5429054b29f63.jpg', '1', '286166', '1', '1411974475', '1', '0');
INSERT INTO `tp_attachment` VALUES ('7', '3.jpg', 'uploads/img1/20140929/5429054b40d99.jpg', '1', '106065', '1', '1411974475', '1', '0');
INSERT INTO `tp_attachment` VALUES ('8', '1.jpg', 'uploads/img1/20140929/5429072ce4e1c.jpg', '1', '288523', '1', '1411974956', '1', '0');
INSERT INTO `tp_attachment` VALUES ('9', '2.jpg', 'uploads/img1/20140929/5429072d0f424.jpg', '1', '281822', '1', '1411974957', '1', '0');
INSERT INTO `tp_attachment` VALUES ('10', '3.jpg', 'uploads/img1/20140929/5429072d22551.jpg', '1', '141774', '1', '1411974957', '1', '0');
INSERT INTO `tp_attachment` VALUES ('11', '地方淘宝特色中国馆.jpg', 'uploads/img1/20140929/542912d62625a.jpg', '1', '183250', '1', '1411977942', '1', '0');
INSERT INTO `tp_attachment` VALUES ('12', '同城购.jpg', 'uploads/img1/20140929/542912ea7270e.jpg', '1', '122509', '1', '1411977962', '1', '0');
INSERT INTO `tp_attachment` VALUES ('13', '旅游电商微商城.jpg', 'uploads/img1/20140929/542912fc5f5e1.jpg', '1', '148667', '1', '1411977980', '1', '0');
INSERT INTO `tp_attachment` VALUES ('14', '村E站.jpg', 'uploads/img1/20140929/5429130e89544.jpg', '1', '122379', '1', '1411977998', '1', '0');
INSERT INTO `tp_attachment` VALUES ('15', 'O2O生活广场.jpg', 'uploads/img1/20140929/5429131fd1cef.jpg', '1', '144039', '1', '1411978015', '1', '0');
INSERT INTO `tp_attachment` VALUES ('16', '阿里巴巴产业带.jpg', 'uploads/img1/20140929/5429132d57bcf.jpg', '1', '187110', '1', '1411978029', '1', '0');
INSERT INTO `tp_attachment` VALUES ('17', '智慧城市APP平台（潍V智慧城市平台）.jpg', 'uploads/img1/20140929/5429133bbaeb9.jpg', '1', '82045', '1', '1411978043', '1', '0');
INSERT INTO `tp_attachment` VALUES ('18', '智能化楼宇.jpg', 'uploads/img1/20140929/54291355baeb9.jpg', '1', '131758', '1', '1411978069', '1', '0');
INSERT INTO `tp_attachment` VALUES ('19', '微巢商学院.jpg', 'uploads/img1/20140929/542913680f424.jpg', '1', '81932', '1', '1411978088', '1', '0');
INSERT INTO `tp_attachment` VALUES ('20', '潍坊.jpg', 'uploads/img1/20140929/542920431ab3f.jpg', '1', '115656', '1', '1411981379', '1', '0');
INSERT INTO `tp_attachment` VALUES ('21', '黄山.jpg', 'uploads/img1/20140929/542920b9d59f8.jpg', '1', '194568', '1', '1411981497', '1', '0');
INSERT INTO `tp_attachment` VALUES ('22', '婺源.jpg', 'uploads/img1/20140929/5429211216e36.jpg', '1', '90578', '1', '1411981586', '1', '0');
INSERT INTO `tp_attachment` VALUES ('23', '临沂电子商务产业园.jpg', 'uploads/img1/20140929/542921670f424.jpg', '1', '175145', '1', '1411981671', '1', '0');
INSERT INTO `tp_attachment` VALUES ('24', '新疆国际电商产业园0920-3.jpg', 'uploads/img1/20140929/542921842dc6c.jpg', '1', '157363', '1', '1411981700', '1', '0');
INSERT INTO `tp_attachment` VALUES ('25', '石城.jpg', 'uploads/img1/20140929/542921ba501bd.jpg', '1', '172557', '1', '1411981754', '1', '0');
INSERT INTO `tp_attachment` VALUES ('26', '5423d4e089544.jpg', 'uploads/img1/20141008/5434d59abcd69.jpg', '1', '94107', '1', '1412748698', '1', '0');
INSERT INTO `tp_attachment` VALUES ('27', '5423d4e089544.jpg', 'uploads/img1/20141008/5434d6a1c95d4.jpg', '1', '94107', '1', '1412748961', '1', '0');
INSERT INTO `tp_attachment` VALUES ('28', '5423d4e089544.jpg', 'uploads/img1/20141008/5434d6b8e5529.jpg', '1', '94107', '1', '1412748984', '1', '0');
INSERT INTO `tp_attachment` VALUES ('29', '5423d4e089544.jpg', 'uploads/img1/20141008/5434d6bbb9b35.jpg', '1', '94107', '1', '1412748987', '1', '0');
INSERT INTO `tp_attachment` VALUES ('30', '5423d4e089544.jpg', 'uploads/img1/20141008/5434d6d91443e.jpg', '1', '94107', '1', '1412749017', '1', '0');
INSERT INTO `tp_attachment` VALUES ('31', '5423d4e089544.jpg', '/yigao2uploads/img1/20141008/5434ee1fe5905.jpg', '1', '94107', '1', '1412754975', '1', '0');
INSERT INTO `tp_attachment` VALUES ('32', '5423d4e089544.jpg', '/yigao2uploads/img1/20141008/5434ee7acd9a3.jpg', '1', '94107', '1', '1412755066', '1', '0');
INSERT INTO `tp_attachment` VALUES ('33', '5423d4e089544.jpg', '/yigao2/uploads/img1/20141008/5434eee1a7785.jpg', '1', '94107', '1', '1412755169', '1', '0');
INSERT INTO `tp_attachment` VALUES ('34', '5423d4e089544.jpg', '/yigao2/uploads/img1/20141008/5434ef5c6bc8b.jpg', '1', '94107', '1', '1412755292', '1', '0');
INSERT INTO `tp_attachment` VALUES ('35', '5423d4e089544.jpg', '/yigao2/uploads/img1/20141009/5436423ee64f0.jpg', '1', '94107', '1', '1412842047', '1', '0');
INSERT INTO `tp_attachment` VALUES ('36', '5423d4e089544.jpg', '/yigao2/uploads/img1/20141009/5436424fe4a83.jpg', '1', '94109', '1', '1412842063', '1', '0');
INSERT INTO `tp_attachment` VALUES ('37', '2.jpg', '/yigao2/uploads/img1/20141013/543b63496b487.jpg', '1', '206220', '1', '1413178185', '1', '0');
INSERT INTO `tp_attachment` VALUES ('38', '2.jpg', '/yigao2/uploads/img1/20141013/543b634bcade1.jpg', '1', '206220', '1', '1413178187', '1', '0');
INSERT INTO `tp_attachment` VALUES ('39', 'wqe.png', '/yigao2/uploads/img1/20141013/543b640ea223b.png', '1', '234518', '1', '1413178382', '1', '0');
INSERT INTO `tp_attachment` VALUES ('40', 'wqe.png', '/yigao2/uploads/img1/20141013/543b6443176ca.png', '1', '234518', '1', '1413178435', '1', '0');
INSERT INTO `tp_attachment` VALUES ('41', 'wqe.png', '/yigao2/uploads/img1/20141015/543decb1a123c.png', '1', '234520', '1', '1413344433', '1', '0');
INSERT INTO `tp_attachment` VALUES ('42', 'wqe.png', '/yigao2/uploads/img1/20141015/543df01084b64.png', '1', '234520', '1', '1413345296', '1', '0');
INSERT INTO `tp_attachment` VALUES ('43', 'wqe.png', '/yigao2/uploads/img1/20141015/543df07354171.png', '1', '234520', '1', '1413345395', '1', '0');
INSERT INTO `tp_attachment` VALUES ('44', 'wqe.png', '/yigao2/uploads/img1/20141015/543df1c5e43d7.png', '1', '234520', '1', '1413345733', '1', '0');
INSERT INTO `tp_attachment` VALUES ('45', 'wqe.png', '/yigao2/uploads/img1/20141015/543df2d50b545.png', '1', '234520', '1', '1413346005', '1', '0');
INSERT INTO `tp_attachment` VALUES ('46', 'wqe.png', '/yigao2/uploads/img1/20141015/543e13e9274b6.png', '1', '234520', '1', '1413354473', '1', '0');
INSERT INTO `tp_attachment` VALUES ('47', 'wqe.png', '/yigao2/uploads/img1/20141015/543e17c124ec0.png', '1', '234520', '1', '1413355457', '1', '0');
INSERT INTO `tp_attachment` VALUES ('48', '1-13110Q443520-L.png', '/datong/uploads/img1/20150225/54ed650b7ae8c.png', '1', '13006', '1', '1424844043', '1', '0');
INSERT INTO `tp_attachment` VALUES ('49', '1-131119162G00-L.jpg', '/datong/uploads/img1/20150225/54ed75340e11d.jpg', '1', '56582', '1', '1424848180', '1', '0');
INSERT INTO `tp_attachment` VALUES ('50', '1-1311191630280-L.png', '/datong/uploads/img1/20150225/54ed753c5c00d.png', '1', '79953', '1', '1424848188', '1', '0');
INSERT INTO `tp_attachment` VALUES ('51', '1-131119162T50-L.jpg', '/datong/uploads/img1/20150225/54ed7547163c3.jpg', '1', '46959', '1', '1424848199', '1', '0');
INSERT INTO `tp_attachment` VALUES ('52', '1-1311191625530-L.jpg', '/datong/uploads/img1/20150225/54ed75516082c.jpg', '1', '72557', '1', '1424848209', '1', '0');
INSERT INTO `tp_attachment` VALUES ('53', '1-131119162G00-L.jpg', '/datong/uploads/img1/20150225/54ed7560c2493.jpg', '1', '56582', '1', '1424848224', '1', '0');
INSERT INTO `tp_attachment` VALUES ('54', '54ed650b7ae8c.png', '/uploads/img1/20150305/54f7e662f3eed.png', '1', '13006', '1', '1425532515', '1', '0');
INSERT INTO `tp_attachment` VALUES ('55', '王悦新.jpg', '/uploads/img1/20150306/54f959d55548c.jpg', '1', '18158', '1', '1425627605', '1', '0');
INSERT INTO `tp_attachment` VALUES ('56', '吕菁.jpg', '/uploads/img1/20150309/54fd078fcd497.jpg', '1', '29871', '1', '1425868687', '1', '0');
INSERT INTO `tp_attachment` VALUES ('57', '包汝中.jpg', '/uploads/img1/20150309/54fd0877b3587.jpg', '1', '1899871', '1', '1425868919', '1', '0');
INSERT INTO `tp_attachment` VALUES ('58', '包汝中.jpg', '/uploads/img1/20150309/54fd0cf9dc370.jpg', '1', '25332', '1', '1425870073', '1', '0');
INSERT INTO `tp_attachment` VALUES ('59', '鲍严钟新4.jpg', '/uploads/img1/20150309/54fd0dc231873.jpg', '1', '19340', '1', '1425870274', '1', '0');
INSERT INTO `tp_attachment` VALUES ('60', '蔡雪芬新1_副本.jpg', '/uploads/img1/20150309/54fd0ec8d7577.jpg', '1', '22873', '1', '1425870536', '1', '0');
INSERT INTO `tp_attachment` VALUES ('61', '陈爱萍.jpg', '/uploads/img1/20150310/54fe2e6cceadb.jpg', '1', '15520', '1', '1425944172', '1', '0');
INSERT INTO `tp_attachment` VALUES ('62', '陈安仁.jpg', '/uploads/img1/20150310/54fe2f3f95d96.jpg', '1', '15239', '1', '1425944383', '1', '0');
INSERT INTO `tp_attachment` VALUES ('63', '陈德娜ok.jpg', '/uploads/img1/20150310/54fe305757245.jpg', '1', '18886', '1', '1425944663', '1', '0');
INSERT INTO `tp_attachment` VALUES ('64', '陈佳漪 - 副本.jpg', '/uploads/img1/20150310/54fe31606ab9d.jpg', '1', '34339', '1', '1425944928', '1', '0');
INSERT INTO `tp_attachment` VALUES ('65', '陈玉芳新_副本.jpg', '/uploads/img1/20150310/54fe31f456810.jpg', '1', '21513', '1', '1425945076', '1', '0');
INSERT INTO `tp_attachment` VALUES ('66', '邓云鹰.jpg', '/uploads/img1/20150310/54fe32aae74c2.jpg', '1', '16762', '1', '1425945258', '1', '0');
INSERT INTO `tp_attachment` VALUES ('67', '顾维东.jpg', '/uploads/img1/20150310/54fe3394ac3d1.jpg', '1', '23699', '1', '1425945492', '1', '0');
INSERT INTO `tp_attachment` VALUES ('68', '何庆丰_编辑.jpg', '/uploads/img1/20150310/54fe3487ebb37.jpg', '1', '22122', '1', '1425945735', '1', '0');
INSERT INTO `tp_attachment` VALUES ('69', '顾占卫.jpg', '/uploads/img1/20150310/54fe357e73be5.jpg', '1', '18313', '1', '1425945982', '1', '0');
INSERT INTO `tp_attachment` VALUES ('70', '何荣飞新_副本.jpg', '/uploads/img1/20150310/54fe360feb411.jpg', '1', '21412', '1', '1425946127', '1', '0');
INSERT INTO `tp_attachment` VALUES ('71', '贺杏清新2_副本.jpg', '/uploads/img1/20150310/54fe36b7550a2.jpg', '1', '23869', '1', '1425946295', '1', '0');
INSERT INTO `tp_attachment` VALUES ('72', '胡惠姑_副本.jpg', '/uploads/img1/20150310/54fe376eb925a.jpg', '1', '21911', '1', '1425946478', '1', '0');
INSERT INTO `tp_attachment` VALUES ('73', '金国梁2.jpg', '/uploads/img1/20150310/54fe381ba318c.jpg', '1', '61329', '1', '1425946651', '1', '0');
INSERT INTO `tp_attachment` VALUES ('74', '李承钿.jpg', '/uploads/img1/20150310/54fe3a380a9a5.jpg', '1', '15098', '1', '1425947192', '1', '0');
INSERT INTO `tp_attachment` VALUES ('75', '李济民.jpg', '/uploads/img1/20150310/54fe3ade90b4b.jpg', '1', '14796', '1', '1425947358', '1', '0');
INSERT INTO `tp_attachment` VALUES ('76', '刘昌富3.jpg', '/uploads/img1/20150310/54fe3b75cec82.jpg', '1', '18030', '1', '1425947509', '1', '0');
INSERT INTO `tp_attachment` VALUES ('77', '刘晓荣.jpg', '/uploads/img1/20150310/54fe3c154cb2a.jpg', '1', '34786', '1', '1425947669', '1', '0');
INSERT INTO `tp_attachment` VALUES ('78', '楼敏华.jpg', '/uploads/img1/20150310/54fe3cc137e0c.jpg', '1', '166304', '1', '1425947841', '1', '0');
INSERT INTO `tp_attachment` VALUES ('79', '陆建阳.jpg', '/uploads/img1/20150310/54fe3d8e810f1.jpg', '1', '28426', '1', '1425948046', '1', '0');
INSERT INTO `tp_attachment` VALUES ('80', '孟锐1.jpg', '/uploads/img1/20150310/54fe3e2ed51da.jpg', '1', '26042', '1', '1425948206', '1', '0');
INSERT INTO `tp_attachment` VALUES ('81', '潘春莲新.jpg', '/uploads/img1/20150310/54fe4805205ed.jpg', '1', '18406', '1', '1425950725', '1', '0');
INSERT INTO `tp_attachment` VALUES ('82', '瞿哲1_旋转.jpg', '/uploads/img1/20150310/54fe48c7918ab.jpg', '1', '15748', '1', '1425950919', '1', '0');
INSERT INTO `tp_attachment` VALUES ('83', '沈大水1.jpg', '/uploads/img1/20150310/54fe495677d5b.jpg', '1', '16257', '1', '1425951062', '1', '0');
INSERT INTO `tp_attachment` VALUES ('84', '图片1.jpg', '/uploads/img1/20150310/54fe49db79d0e.jpg', '1', '38166', '1', '1425951195', '1', '0');
INSERT INTO `tp_attachment` VALUES ('85', '史华.jpg', '/uploads/img1/20150310/54fe4a7595c46.jpg', '1', '29158', '1', '1425951349', '1', '0');
INSERT INTO `tp_attachment` VALUES ('86', '宋国忠新.jpg', '/uploads/img1/20150310/54fe4b59ae16a.jpg', '1', '24292', '1', '1425951577', '1', '0');
INSERT INTO `tp_attachment` VALUES ('87', '孙宝春.jpg', '/uploads/img1/20150310/54fe4bd56552e.jpg', '1', '17206', '1', '1425951701', '1', '0');
INSERT INTO `tp_attachment` VALUES ('88', '谭萍新.jpg', '/uploads/img1/20150310/54fe4c85affc5.jpg', '1', '18141', '1', '1425951877', '1', '0');
INSERT INTO `tp_attachment` VALUES ('89', '陶惠卿.jpg', '/uploads/img1/20150310/54fe4d087437b.jpg', '1', '17914', '1', '1425952008', '1', '0');
INSERT INTO `tp_attachment` VALUES ('90', '陶四青近_旋转.jpg', '/uploads/img1/20150310/54fe4d6ff158e.jpg', '1', '15875', '1', '1425952111', '1', '0');
INSERT INTO `tp_attachment` VALUES ('91', '王佳岚.jpg', '/uploads/img1/20150310/54fe4dd6939d2.jpg', '1', '20888', '1', '1425952214', '1', '0');
INSERT INTO `tp_attachment` VALUES ('92', '王志强_副本.jpg', '/uploads/img1/20150310/54fe4e73e99a2.jpg', '1', '49450', '1', '1425952371', '1', '0');
INSERT INTO `tp_attachment` VALUES ('93', '王祖安.jpg', '/uploads/img1/20150310/54fe4f14b846e.jpg', '1', '26501', '1', '1425952532', '1', '0');
INSERT INTO `tp_attachment` VALUES ('94', '吴兰珠ok.jpg', '/uploads/img1/20150310/54fe4fc2a115a.jpg', '1', '17662', '1', '1425952706', '1', '0');
INSERT INTO `tp_attachment` VALUES ('95', '吴宛莹.jpg', '/uploads/img1/20150310/54fe5050eb0f5.jpg', '1', '21059', '1', '1425952848', '1', '0');
INSERT INTO `tp_attachment` VALUES ('96', '吴志群_编辑.jpg', '/uploads/img1/20150310/54fe50c36bed2.jpg', '1', '16153', '1', '1425952963', '1', '0');
INSERT INTO `tp_attachment` VALUES ('97', '肖斯文.jpg', '/uploads/img1/20150310/54fe519092fc2.jpg', '1', '25913', '1', '1425953168', '1', '0');
INSERT INTO `tp_attachment` VALUES ('98', '杨樟辉新.jpg', '/uploads/img1/20150310/54fe523e0f2ba.jpg', '1', '16241', '1', '1425953342', '1', '0');
INSERT INTO `tp_attachment` VALUES ('99', '应炳兴ok.jpg', '/uploads/img1/20150310/54fe52a8a2eba.jpg', '1', '16010', '1', '1425953448', '1', '0');
INSERT INTO `tp_attachment` VALUES ('100', '余美献新0看.jpg', '/uploads/img1/20150310/54fe5343b29b2.jpg', '1', '21101', '1', '1425953603', '1', '0');
INSERT INTO `tp_attachment` VALUES ('101', '俞圭田.jpg', '/uploads/img1/20150310/54fe53cd72989.jpg', '1', '16120', '1', '1425953741', '1', '0');
INSERT INTO `tp_attachment` VALUES ('102', '张毓玲.jpg', '/uploads/img1/20150310/54fe5452b178b.jpg', '1', '21995', '1', '1425953874', '1', '0');
INSERT INTO `tp_attachment` VALUES ('103', '钟慧虹（新）.jpg', '/uploads/img1/20150310/54fe54ee7b807.jpg', '1', '30254', '1', '1425954030', '1', '0');
INSERT INTO `tp_attachment` VALUES ('104', '周成才ok.jpg', '/uploads/img1/20150310/54fe55cc78ab6.jpg', '1', '17215', '1', '1425954252', '1', '0');
INSERT INTO `tp_attachment` VALUES ('105', '周捷新2_副本.jpg', '/uploads/img1/20150310/54fe5645a1a96.jpg', '1', '21229', '1', '1425954373', '1', '0');
INSERT INTO `tp_attachment` VALUES ('106', '周少玲.jpg', '/uploads/img1/20150310/54fe56ab9a7e9.jpg', '1', '17224', '1', '1425954475', '1', '0');
INSERT INTO `tp_attachment` VALUES ('107', '朱娴如.jpg', '/uploads/img1/20150310/54fe583ba8c2d.jpg', '1', '17335', '1', '1425954875', '1', '0');
INSERT INTO `tp_attachment` VALUES ('108', '楼敏华.jpg', '/uploads/img1/20150310/54fe599ce9442.jpg', '1', '15230', '1', '1425955228', '1', '0');
INSERT INTO `tp_attachment` VALUES ('109', '金国梁2.jpg', '/uploads/img1/20150310/54fe59eb2531b.jpg', '1', '17608', '1', '1425955307', '1', '0');
INSERT INTO `tp_attachment` VALUES ('110', '王志强_副本_编辑.jpg', '/uploads/img1/20150310/54fe5a105ca7f.jpg', '1', '19593', '1', '1425955344', '1', '0');
INSERT INTO `tp_attachment` VALUES ('111', 'get (1)_副本.jpg', '/uploads/img1/20150310/54fe9f5d6ca1d.jpg', '1', '22482', '1', '1425973085', '1', '0');
INSERT INTO `tp_attachment` VALUES ('112', 'get (1).jpg', '/uploads/img1/20150310/54fe9fe66e791.jpg', '1', '11739', '1', '1425973222', '1', '0');
INSERT INTO `tp_attachment` VALUES ('113', 'get (5).jpg', '/uploads/img1/20150310/54fea01e11f12.jpg', '1', '16296', '1', '1425973278', '1', '0');
INSERT INTO `tp_attachment` VALUES ('114', '鹿茸.jpg', '/uploads/img1/20150310/54fea0621e21c.jpg', '1', '35638', '1', '1425973346', '1', '0');
INSERT INTO `tp_attachment` VALUES ('115', 'get.jpg', '/uploads/img1/20150310/54feb535e6528.jpg', '1', '23173', '1', '1425978677', '1', '0');
INSERT INTO `tp_attachment` VALUES ('116', '不孕症介绍相关图片+001.jpg', '/uploads/img1/20150312/5501345a5de2e.jpg', '1', '69700', '1', '1426142298', '1', '0');
INSERT INTO `tp_attachment` VALUES ('117', '不孕症介绍相关图片+002.jpg', '/uploads/img1/20150312/5501351c8f253.jpg', '1', '60358', '1', '1426142492', '1', '0');
INSERT INTO `tp_attachment` VALUES ('118', '田岩.jpg', '/uploads/img1/20150318/55090f3004692.jpg', '1', '23608', '1', '1426657072', '1', '0');
INSERT INTO `tp_attachment` VALUES ('119', '徐敏华原图.jpg', '/uploads/img1/20150318/5509105759b9a.jpg', '1', '24539', '1', '1426657367', '1', '0');
INSERT INTO `tp_attachment` VALUES ('120', '绞股蓝近.jpg', '/uploads/img1/20150319/550a23a86294a.jpg', '1', '108838', '1', '1426727848', '1', '0');
INSERT INTO `tp_attachment` VALUES ('121', '图片6.png', '/uploads/img1/20150324/5510ab53a3f49.png', '1', '465880', '1', '1427155795', '1', '0');
INSERT INTO `tp_attachment` VALUES ('122', '荷叶2.jpg', '/uploads/img1/20150325/551242e80e146.jpg', '1', '111728', '1', '1427260136', '1', '0');
INSERT INTO `tp_attachment` VALUES ('123', '图片12.jpg', '/uploads/img1/20150401/551b7cdbde0da.jpg', '1', '59860', '1', '1427864795', '1', '0');
INSERT INTO `tp_attachment` VALUES ('124', '张瓞安2.jpg', '/uploads/img1/20150406/5521d9fee9061.jpg', '1', '22475', '1', '1428281854', '1', '0');
INSERT INTO `tp_attachment` VALUES ('125', 'B超.jpg', '/uploads/img1/20150406/55221c57baef1.jpg', '1', '23514', '1', '1428298839', '1', '0');
INSERT INTO `tp_attachment` VALUES ('126', '韩富强.jpg', '/uploads/img1/20150418/5531c2834d6cc.jpg', '1', '23005', '1', '1429324419', '1', '0');
INSERT INTO `tp_attachment` VALUES ('127', '金志复.jpg', '/uploads/img1/20150418/5531c3c0264ff.jpg', '1', '15768', '1', '1429324736', '1', '0');
INSERT INTO `tp_attachment` VALUES ('128', '田艺2.jpg', '/uploads/img1/20150418/553201d7ad9e3.jpg', '1', '21192', '1', '1429340631', '1', '0');
INSERT INTO `tp_attachment` VALUES ('129', '史玛宁2.jpg', '/uploads/img1/20150418/553202f765895.jpg', '1', '18945', '1', '1429340919', '1', '0');
INSERT INTO `tp_attachment` VALUES ('130', '王赞平.jpg', '/uploads/img1/20150418/553203802c47f.jpg', '1', '22685', '1', '1429341056', '1', '0');
INSERT INTO `tp_attachment` VALUES ('131', '徐羹年.jpg', '/uploads/img1/20150418/553204a90b2f7.jpg', '1', '23741', '1', '1429341353', '1', '0');
INSERT INTO `tp_attachment` VALUES ('132', '邓磊.jpg', '/uploads/img1/20150426/553cd7a462b71.jpg', '1', '28261', '1', '1430050724', '1', '0');
INSERT INTO `tp_attachment` VALUES ('133', '1大同中医3.15.jpg', '/uploads/img1/20150426/553ce67f682bb.jpg', '1', '47050', '1', '1430054527', '1', '0');
INSERT INTO `tp_attachment` VALUES ('134', '1大同中医3.15_编辑.jpg', '/uploads/img1/20150426/553ce796d0a8d.jpg', '1', '63493', '1', '1430054806', '1', '0');
INSERT INTO `tp_attachment` VALUES ('135', '赵银萍.jpg', '/uploads/img1/20150428/553ee5a160ff2.jpg', '1', '16082', '1', '1430185377', '1', '0');
INSERT INTO `tp_attachment` VALUES ('136', '1大同中医3.15_编辑.jpg', '/uploads/img1/20150428/553ee79e29ae2.jpg', '1', '63493', '1', '1430185886', '1', '0');
INSERT INTO `tp_attachment` VALUES ('137', '倪世美.jpg', '/uploads/img1/20150510/554ee55231013.jpg', '1', '26108', '1', '1431233874', '1', '0');
INSERT INTO `tp_attachment` VALUES ('138', '靳旭红.jpg', '/uploads/img1/20150606/5572ad7941f17.jpg', '1', '24756', '1', '1433578873', '1', '0');
INSERT INTO `tp_attachment` VALUES ('139', '俞珊珊.jpg', '/uploads/img1/20150606/5572adf610508.jpg', '1', '25583', '1', '1433578998', '1', '0');
INSERT INTO `tp_attachment` VALUES ('140', '黄华.jpg', '/uploads/img1/20150709/559dc8d95fffb.jpg', '1', '15657', '1', '1436403929', '1', '0');
INSERT INTO `tp_attachment` VALUES ('141', '吴英萍2.jpg', '/uploads/img1/20150709/559dcafd5130f.jpg', '1', '18904', '1', '1436404477', '1', '0');
INSERT INTO `tp_attachment` VALUES ('142', '吴新萍_.jpg', '/uploads/img1/20150709/559dcb8ce6df3.jpg', '1', '45303', '1', '1436404620', '1', '0');
INSERT INTO `tp_attachment` VALUES ('143', '张智高.jpg', '/uploads/img1/20150709/559dcd9ee5192.jpg', '1', '16702', '1', '1436405150', '1', '0');
INSERT INTO `tp_attachment` VALUES ('144', '毛小华.jpg', '/uploads/img1/20150716/55a7120d52de6.jpg', '1', '3653', '1', '1437012493', '1', '0');
INSERT INTO `tp_attachment` VALUES ('145', '陈爱萍.jpg', '/uploads/img1/20150720/55ac9b55cb333.jpg', '1', '1354660', '1', '1437375317', '1', '0');
INSERT INTO `tp_attachment` VALUES ('146', '王金生.jpg', '/uploads/img1/20150720/55ac9c95e0232.jpg', '1', '1198178', '1', '1437375637', '1', '0');
INSERT INTO `tp_attachment` VALUES ('147', '陶四青近_旋转.jpg', '/uploads/img1/20150720/55aca1c1cc887.jpg', '1', '98049', '1', '1437376961', '1', '0');
INSERT INTO `tp_attachment` VALUES ('148', '倪世美.jpg', '/uploads/img1/20150720/55aca2ab9fa5a.jpg', '1', '1252934', '1', '1437377195', '1', '0');
INSERT INTO `tp_attachment` VALUES ('149', '毛小华_2345看图王.jpg', '/uploads/img1/20150720/55aca5577d0b3.jpg', '1', '43752', '1', '1437377879', '1', '0');
INSERT INTO `tp_attachment` VALUES ('150', '吴新萍.jpg', '/uploads/img1/20150908/55ee284947cb1.jpg', '1', '36544', '1', '1441671241', '1', '0');
INSERT INTO `tp_attachment` VALUES ('151', '吴新萍_2345看图王.jpg', '/uploads/img1/20150908/55ee29166ff5c.jpg', '1', '17526', '1', '1441671446', '1', '0');
INSERT INTO `tp_attachment` VALUES ('152', '毛延林.jpg', '/uploads/img1/20151109/56404fed556a6.jpg', '1', '1247858', '1', '1447055341', '1', '0');
INSERT INTO `tp_attachment` VALUES ('153', '毛延林.jpg', '/uploads/img1/20151109/564050757100c.jpg', '1', '1247858', '1', '1447055477', '1', '0');
INSERT INTO `tp_attachment` VALUES ('154', '毛延林.jpg', '/uploads/img1/20151109/564052cb952d9.jpg', '1', '2771', '1', '1447056075', '1', '0');
INSERT INTO `tp_attachment` VALUES ('155', '毛延林(1).jpg', '/uploads/img1/20151109/5640531ad1791.jpg', '1', '21584', '1', '1447056154', '1', '0');
INSERT INTO `tp_attachment` VALUES ('156', '毛延林.jpg', '/uploads/img1/20151109/5640534cd86a8.jpg', '1', '2890', '1', '1447056204', '1', '0');
INSERT INTO `tp_attachment` VALUES ('157', '毛延林(2).jpg', '/uploads/img1/20151109/5640537c6077d.jpg', '1', '4541', '1', '1447056252', '1', '0');
INSERT INTO `tp_attachment` VALUES ('158', '毛延林(3).jpg', '/uploads/img1/20151109/564053b44ce6c.jpg', '1', '3495', '1', '1447056308', '1', '0');
INSERT INTO `tp_attachment` VALUES ('159', '毛延林.jpg', '/uploads/img1/20151109/5640541955b66.jpg', '1', '3705', '1', '1447056409', '1', '0');
INSERT INTO `tp_attachment` VALUES ('160', '蔡雪芬.jpg', '/uploads/img1/20151217/56721963c0254.jpg', '1', '23841', '1', '1450318179', '1', '0');
INSERT INTO `tp_attachment` VALUES ('161', '当归.jpg', '/uploads/img1/20160706/577c61d003f28.jpg', '1', '120323', '1', '1467769296', '1', '0');
INSERT INTO `tp_attachment` VALUES ('162', '雪蛤.jpg', '/uploads/img1/20160706/577c623ff16ec.jpg', '1', '155661', '1', '1467769408', '1', '0');
INSERT INTO `tp_attachment` VALUES ('163', '冬虫夏草.jpg', '/uploads/img1/20160706/577c6250e918d.jpg', '1', '127159', '1', '1467769424', '1', '0');
INSERT INTO `tp_attachment` VALUES ('164', '1.jpg', '/uploads/img1/20160706/577c626c03bec.jpg', '1', '626802', '1', '1467769452', '1', '0');
INSERT INTO `tp_attachment` VALUES ('165', '栀子.jpg', '/uploads/img1/20160706/577c6b67d10e1.jpg', '1', '113016', '1', '1467771751', '1', '0');
INSERT INTO `tp_attachment` VALUES ('166', '红枣.jpg', '/uploads/img1/20160706/577c6be5acf1f.jpg', '1', '107848', '1', '1467771877', '1', '0');
INSERT INTO `tp_attachment` VALUES ('167', '宋歌.jpg', '/uploads/img1/20160707/577dcc390bb1f.jpg', '1', '22611', '1', '1467862073', '1', '0');
INSERT INTO `tp_attachment` VALUES ('168', '王金生.jpg', '/uploads/img1/20160707/577dccb62edca.jpg', '1', '32585', '1', '1467862198', '1', '0');
INSERT INTO `tp_attachment` VALUES ('169', '姚敏华.jpg', '/uploads/img1/20160707/577dcd1d8c4eb.jpg', '1', '45690', '1', '1467862301', '1', '0');
INSERT INTO `tp_attachment` VALUES ('170', '郑滨.jpg', '/uploads/img1/20160707/577dcd74c018a.jpg', '1', '92490', '1', '1467862388', '1', '0');
INSERT INTO `tp_attachment` VALUES ('171', '朱慧芳.jpg', '/uploads/img1/20160707/577dd4f101102.jpg', '1', '78083', '1', '1467864305', '1', '0');
INSERT INTO `tp_attachment` VALUES ('172', '孟春.jpg', '/uploads/img1/20160707/577dd55354a07.jpg', '1', '70641', '1', '1467864403', '1', '0');
INSERT INTO `tp_attachment` VALUES ('173', '郝沪生.jpg', '/uploads/img1/20160707/577dd598cb1f9.jpg', '1', '52912', '1', '1467864472', '1', '0');
INSERT INTO `tp_attachment` VALUES ('174', '陈亚琴.jpg', '/uploads/img1/20160707/577dd5d434627.jpg', '1', '21794', '1', '1467864532', '1', '0');
INSERT INTO `tp_attachment` VALUES ('175', '曹宝珍.jpg', '/uploads/img1/20160707/577dd5ff70b8c.jpg', '1', '817932', '1', '1467864575', '1', '0');
INSERT INTO `tp_attachment` VALUES ('176', '曹宝珍.jpg', '/uploads/img1/20160707/577dd63a63778.jpg', '1', '817932', '1', '1467864634', '1', '0');
INSERT INTO `tp_attachment` VALUES ('177', '曹宝珍.jpg', '/uploads/img1/20160707/577dd6d76c92e.jpg', '1', '817932', '1', '1467864791', '1', '0');
INSERT INTO `tp_attachment` VALUES ('178', '陈敏映.jpg', '/uploads/img1/20160707/577de8c1ef82f.jpg', '1', '30354', '1', '1467869378', '1', '0');
INSERT INTO `tp_attachment` VALUES ('179', '肖斯文.jpg', '/uploads/img1/20160707/577de90d3c057.jpg', '1', '65507', '1', '1467869453', '1', '0');
INSERT INTO `tp_attachment` VALUES ('180', '张志勇.jpg', '/uploads/img1/20160707/577de97d10ee9.jpg', '1', '72871', '1', '1467869565', '1', '0');
INSERT INTO `tp_attachment` VALUES ('181', '梅书旺.jpg', '/uploads/img1/20160707/577dea177e444.jpg', '1', '35078', '1', '1467869719', '1', '0');
INSERT INTO `tp_attachment` VALUES ('182', '杨国庆.jpg', '/uploads/img1/20160707/577deaa89b4d1.jpg', '1', '108715', '1', '1467869864', '1', '0');
INSERT INTO `tp_attachment` VALUES ('183', '泮柳燕.jpg', '/uploads/img1/20160707/577deaeb38bd4.jpg', '1', '66605', '1', '1467869931', '1', '0');
INSERT INTO `tp_attachment` VALUES ('184', '吕华_看图王.jpg', '/uploads/img1/20160707/577deb2e85326.jpg', '1', '265237', '1', '1467869998', '1', '0');
INSERT INTO `tp_attachment` VALUES ('185', '郑小伟.png', '/uploads/img1/20160707/577deb7fe51e0.png', '1', '98077', '1', '1467870079', '1', '0');
INSERT INTO `tp_attachment` VALUES ('186', '葛志芳.jpg', '/uploads/img1/20160707/577debe439969.jpg', '1', '99032', '1', '1467870180', '1', '0');
INSERT INTO `tp_attachment` VALUES ('187', '王悦.jpg', '/uploads/img1/20160707/577dec4b27778.jpg', '1', '94197', '1', '1467870283', '1', '0');
INSERT INTO `tp_attachment` VALUES ('188', '吴小明.jpg', '/uploads/img1/20160707/577dec81e8012.jpg', '1', '79793', '1', '1467870337', '1', '0');
INSERT INTO `tp_attachment` VALUES ('189', '周兴兆.jpg', '/uploads/img1/20160707/577decc60f487.jpg', '1', '70510', '1', '1467870406', '1', '0');
INSERT INTO `tp_attachment` VALUES ('190', '黄文定.jpg', '/uploads/img1/20160707/577ded19543fd.jpg', '1', '62631', '1', '1467870489', '1', '0');
INSERT INTO `tp_attachment` VALUES ('191', '陈乐.jpg', '/uploads/img1/20160707/577ded4b17e90.jpg', '1', '58457', '1', '1467870539', '1', '0');
INSERT INTO `tp_attachment` VALUES ('192', '沈宇峰.jpg', '/uploads/img1/20160707/577ded9fa2727.jpg', '1', '94400', '1', '1467870623', '1', '0');
INSERT INTO `tp_attachment` VALUES ('193', '戴志红.jpg', '/uploads/img1/20160707/577dee036b385.jpg', '1', '62240', '1', '1467870723', '1', '0');
INSERT INTO `tp_attachment` VALUES ('194', '王勇琴.jpg', '/uploads/img1/20160707/577dee56f363f.jpg', '1', '35781', '1', '1467870807', '1', '0');
INSERT INTO `tp_attachment` VALUES ('195', '林庚庭.jpg', '/uploads/img1/20160707/577dee8ea9f26.jpg', '1', '115845', '1', '1467870862', '1', '0');
INSERT INTO `tp_attachment` VALUES ('196', '史美臻.jpg', '/uploads/img1/20160707/577def568d3e6.jpg', '1', '85160', '1', '1467871062', '1', '0');
INSERT INTO `tp_attachment` VALUES ('197', '调整大小 戴志红.jpg', '/uploads/img1/20160803/57a198dfa75ae.jpg', '1', '10320', '1', '1470208223', '1', '0');
INSERT INTO `tp_attachment` VALUES ('198', '调整大小 王勇琴.jpg', '/uploads/img1/20160803/57a19adc226bf.jpg', '1', '5253', '1', '1470208732', '1', '0');
INSERT INTO `tp_attachment` VALUES ('199', '调整大小 调整大小 577dee8ea9f26.jpg', '/uploads/img1/20160803/57a19b615b204.jpg', '1', '8442', '1', '1470208865', '1', '0');
INSERT INTO `tp_attachment` VALUES ('200', '调整大小 调整大小 戴志红.jpg', '/uploads/img1/20160803/57a19d1183874.jpg', '1', '6542', '1', '1470209297', '1', '0');
INSERT INTO `tp_attachment` VALUES ('201', '调整大小 调整大小 史.jpg', '/uploads/img1/20160803/57a19dbe9a5f5.jpg', '1', '9535', '1', '1470209470', '1', '0');
INSERT INTO `tp_attachment` VALUES ('202', '调整大小 戴.jpg', '/uploads/img1/20160803/57a19e8a9fa58.jpg', '1', '6542', '1', '1470209674', '1', '0');
INSERT INTO `tp_attachment` VALUES ('203', '调整大小 调整大小 戴.jpg', '/uploads/img1/20160803/57a1a1bca6af4.jpg', '1', '3659', '1', '1470210492', '1', '0');
INSERT INTO `tp_attachment` VALUES ('204', '调整大小 史.jpg', '/uploads/img1/20160803/57a1a22a5594c.jpg', '1', '4592', '1', '1470210602', '1', '0');
INSERT INTO `tp_attachment` VALUES ('205', '调整大小 林.jpg', '/uploads/img1/20160803/57a1a2edc2240.jpg', '1', '5095', '1', '1470210797', '1', '0');
INSERT INTO `tp_attachment` VALUES ('206', '调整大小 王.jpg', '/uploads/img1/20160803/57a1a39eb2e91.jpg', '1', '3454', '1', '1470210974', '1', '0');
INSERT INTO `tp_attachment` VALUES ('207', '戴志红.jpg', '/uploads/img1/20160803/57a1a43cc3fef.jpg', '1', '3659', '1', '1470211132', '1', '0');
INSERT INTO `tp_attachment` VALUES ('208', '调整大小 泮柳燕.jpg', '/uploads/img1/20160803/57a1a4a3430d6.jpg', '1', '3389', '1', '1470211235', '1', '0');
INSERT INTO `tp_attachment` VALUES ('209', '调整大小 葛志芳.jpg', '/uploads/img1/20160803/57a1a53d1e2ab.jpg', '1', '3369', '1', '1470211389', '1', '0');
INSERT INTO `tp_attachment` VALUES ('210', '调整大小 王悦.jpg', '/uploads/img1/20160803/57a1a5c17af88.jpg', '1', '4526', '1', '1470211521', '1', '0');
INSERT INTO `tp_attachment` VALUES ('211', '调整大小 吴小明.jpg', '/uploads/img1/20160803/57a1a663650b9.jpg', '1', '3475', '1', '1470211683', '1', '0');
INSERT INTO `tp_attachment` VALUES ('212', '调整大小 周兴兆.jpg', '/uploads/img1/20160803/57a1a6e68dc16.jpg', '1', '3176', '1', '1470211814', '1', '0');
INSERT INTO `tp_attachment` VALUES ('213', '黄文定.jpg', '/uploads/img1/20160803/57a1a747d9955.jpg', '1', '62631', '1', '1470211911', '1', '0');
INSERT INTO `tp_attachment` VALUES ('214', '调整大小 黄文定.jpg', '/uploads/img1/20160803/57a1a7a6a5e96.jpg', '1', '3134', '1', '1470212006', '1', '0');
INSERT INTO `tp_attachment` VALUES ('215', '调整大小 郑小伟.png', '/uploads/img1/20160803/57a1a82108c32.png', '1', '31158', '1', '1470212129', '1', '0');
INSERT INTO `tp_attachment` VALUES ('216', '调整大小 陈乐.jpg', '/uploads/img1/20160803/57a1a87499cb2.jpg', '1', '3484', '1', '1470212212', '1', '0');
INSERT INTO `tp_attachment` VALUES ('217', '调整大小 郝沪生.jpg', '/uploads/img1/20160803/57a1a9146bb0f.jpg', '1', '3563', '1', '1470212372', '1', '0');
INSERT INTO `tp_attachment` VALUES ('218', '调整大小 肖斯文.jpg', '/uploads/img1/20160803/57a1a96c34be3.jpg', '1', '3492', '1', '1470212460', '1', '0');
INSERT INTO `tp_attachment` VALUES ('219', '调整大小 陈亚琴.jpg', '/uploads/img1/20160803/57a1a9bbed47b.jpg', '1', '2999', '1', '1470212539', '1', '0');
INSERT INTO `tp_attachment` VALUES ('220', '调整大小 陈敏因.jpg', '/uploads/img1/20160803/57a1aa2aa6c00.jpg', '1', '3308', '1', '1470212650', '1', '0');
INSERT INTO `tp_attachment` VALUES ('221', '调整大小 杨国庆.jpg', '/uploads/img1/20160803/57a1aa7de1125.jpg', '1', '3592', '1', '1470212733', '1', '0');
INSERT INTO `tp_attachment` VALUES ('222', '调整大小 梅.jpg', '/uploads/img1/20160803/57a1aad8e42b4.jpg', '1', '3939', '1', '1470212824', '1', '0');
INSERT INTO `tp_attachment` VALUES ('223', '调整大小 张志勇.jpg', '/uploads/img1/20160803/57a1abc80b671.jpg', '1', '3235', '1', '1470213064', '1', '0');
INSERT INTO `tp_attachment` VALUES ('224', '调整大小 曹.jpg', '/uploads/img1/20160803/57a1ac0458473.jpg', '1', '3889', '1', '1470213124', '1', '0');
INSERT INTO `tp_attachment` VALUES ('225', '调整大小 孟春.jpg', '/uploads/img1/20160803/57a1ac7482968.jpg', '1', '3292', '1', '1470213236', '1', '0');
INSERT INTO `tp_attachment` VALUES ('226', '调整大小 王金生.jpg', '/uploads/img1/20160803/57a1accc0a554.jpg', '1', '3233', '1', '1470213324', '1', '0');
INSERT INTO `tp_attachment` VALUES ('227', '调整大小 朱慧芳.jpg', '/uploads/img1/20160803/57a1ad8703da0.jpg', '1', '3440', '1', '1470213511', '1', '0');
INSERT INTO `tp_attachment` VALUES ('228', '调整大小 宋歌.jpg', '/uploads/img1/20160803/57a1adcd869e2.jpg', '1', '3078', '1', '1470213581', '1', '0');
INSERT INTO `tp_attachment` VALUES ('229', '调整大小 宋歌.jpg', '/uploads/img1/20160803/57a1adfe6986a.jpg', '1', '3078', '1', '1470213630', '1', '0');
INSERT INTO `tp_attachment` VALUES ('230', '姚敏华.jpg', '/uploads/img1/20160803/57a1aebfd40bc.jpg', '1', '24539', '1', '1470213823', '1', '0');
INSERT INTO `tp_attachment` VALUES ('231', '调整大小 郑斌.jpg', '/uploads/img1/20160803/57a1af34668bf.jpg', '1', '3535', '1', '1470213940', '1', '0');
INSERT INTO `tp_attachment` VALUES ('232', '徐健.png', '/uploads/img1/20160803/57a1b02954888.png', '1', '21533', '1', '1470214185', '1', '0');
INSERT INTO `tp_attachment` VALUES ('233', '调整大小 蔡雪芬.jpg', '/uploads/img1/20160803/57a1b09414f7b.jpg', '1', '3593', '1', '1470214292', '1', '0');
INSERT INTO `tp_attachment` VALUES ('234', '重新曝光 顾占卫.jpg', '/uploads/img1/20160804/57a2db7af386e.jpg', '1', '3394', '1', '1470290811', '1', '0');
INSERT INTO `tp_attachment` VALUES ('235', '调整大小 沈宇峰.jpg', '/uploads/img1/20160804/57a2f227681c5.jpg', '1', '4404', '1', '1470296615', '1', '0');
INSERT INTO `tp_attachment` VALUES ('236', '史美臻.jpg', '/uploads/img1/20160804/57a2fd778249d.jpg', '1', '4592', '1', '1470299511', '1', '0');
INSERT INTO `tp_attachment` VALUES ('237', '张跃琴.jpg', '/uploads/img1/20160825/57be7dd3c4d48.jpg', '1', '30605', '1', '1472101843', '1', '0');
INSERT INTO `tp_attachment` VALUES ('238', '张跃琴.jpg', '/uploads/img1/20160825/57be7e7b28eb0.jpg', '1', '8137', '1', '1472102011', '1', '0');
INSERT INTO `tp_attachment` VALUES ('239', '钟良玉.jpg', '/uploads/img1/20160825/57be8103b7efc.jpg', '1', '10849', '1', '1472102659', '1', '0');
INSERT INTO `tp_attachment` VALUES ('240', '1.jpg', '/uploads/img1/20160913/57d7ac2d11d34.jpg', '1', '47876', '1', '1473752109', '1', '0');
INSERT INTO `tp_attachment` VALUES ('241', '贺杏清.jpg', '/uploads/img1/20160929/57ec766e2098c.jpg', '1', '32608', '1', '1475114606', '1', '0');
INSERT INTO `tp_attachment` VALUES ('242', '贺杏清.jpg', '/uploads/img1/20160929/57ec776c87b68.jpg', '1', '32608', '1', '1475114860', '1', '0');
INSERT INTO `tp_attachment` VALUES ('243', '贺杏清.jpg', '/uploads/img1/20160929/57ec780d662d9.jpg', '1', '12875', '1', '1475115021', '1', '0');
INSERT INTO `tp_attachment` VALUES ('244', '史美臻.jpg', '/uploads/img1/20160929/57ec78c5b6d0c.jpg', '1', '9691', '1', '1475115205', '1', '0');
INSERT INTO `tp_attachment` VALUES ('245', '姚连兴.jpg', '/uploads/img1/20160929/57ec7db06949d.jpg', '1', '44590', '1', '1475116464', '1', '0');
INSERT INTO `tp_attachment` VALUES ('246', '姚连兴.jpg', '/uploads/img1/20160929/57ec7e6bddb7f.jpg', '1', '7909', '1', '1475116651', '1', '0');
INSERT INTO `tp_attachment` VALUES ('247', '姚连兴.jpg', '/uploads/img1/20160929/57ec7ef5f08fd.jpg', '1', '7909', '1', '1475116789', '1', '0');
INSERT INTO `tp_attachment` VALUES ('248', '大同交通图.jpg', '/uploads/img1/20161005/57f4a1124ac44.jpg', '1', '93731', '1', '1475649810', '1', '0');
INSERT INTO `tp_attachment` VALUES ('249', '大图1.jpg', '/uploads/img1/20161018/5805b8ef4ef94.jpg', '1', '101688', '1', '1476770031', '1', '0');
INSERT INTO `tp_attachment` VALUES ('250', '大图2.jpg', '/uploads/img1/20161018/5805de380b45a.jpg', '1', '41964', '1', '1476779576', '1', '0');
INSERT INTO `tp_attachment` VALUES ('251', 'QQ.png', '/datong2/uploads/img1/20161024/580e02ec300d5.png', '1', '28592', '1', '1477313260', '1', '0');
INSERT INTO `tp_attachment` VALUES ('252', '三折页正面.jpg', '/uploads/img1/20161027/58114769afb25.jpg', '1', '1418411', '1', '1477527401', '1', '0');
INSERT INTO `tp_attachment` VALUES ('253', '三折页正面.jpg', '/uploads/img1/20161027/58114829ae873.jpg', '1', '1418411', '1', '1477527593', '1', '0');
INSERT INTO `tp_attachment` VALUES ('254', '1.jpg', '/uploads/img1/20161027/58116fdaab9a3.jpg', '1', '251145', '1', '1477537754', '1', '0');
INSERT INTO `tp_attachment` VALUES ('255', '1.jpg', '/uploads/img1/20161027/5811731462e2b.jpg', '1', '219343', '1', '1477538580', '1', '0');
INSERT INTO `tp_attachment` VALUES ('256', '2.jpg', '/uploads/img1/20161027/5811755aa50aa.jpg', '1', '195899', '1', '1477539162', '1', '0');
INSERT INTO `tp_attachment` VALUES ('257', '3.png', '/uploads/img1/20161027/5811756486499.png', '1', '731622', '1', '1477539172', '1', '0');
INSERT INTO `tp_attachment` VALUES ('258', '4.png', '/uploads/img1/20161027/58117580eb687.png', '1', '608269', '1', '1477539201', '1', '0');
INSERT INTO `tp_attachment` VALUES ('259', '1.jpg', '/uploads/img1/20161027/5811a7347b16f.jpg', '1', '219343', '1', '1477551924', '1', '0');
INSERT INTO `tp_attachment` VALUES ('260', '2.jpg', '/uploads/img1/20161027/5811a73ea6692.jpg', '1', '195899', '1', '1477551934', '1', '0');
INSERT INTO `tp_attachment` VALUES ('261', '3.png', '/uploads/img1/20161027/5811a74ec7a9f.png', '1', '731622', '1', '1477551950', '1', '0');
INSERT INTO `tp_attachment` VALUES ('262', '4.png', '/uploads/img1/20161027/5811a75887420.png', '1', '608269', '1', '1477551960', '1', '0');
INSERT INTO `tp_attachment` VALUES ('263', '4.png', '/uploads/img1/20161028/5812ebe4066a1.png', '1', '608269', '1', '1477635044', '1', '0');
INSERT INTO `tp_attachment` VALUES ('264', '鲍严钟.jpg', '/uploads/img1/20161028/5812f982a0d98.jpg', '1', '101732', '1', '1477638530', '1', '0');
INSERT INTO `tp_attachment` VALUES ('265', '1111.jpg', '/uploads/img1/20161028/5812fe1aa249c.jpg', '1', '34873', '1', '1477639706', '1', '0');
INSERT INTO `tp_attachment` VALUES ('266', '222.jpg', '/uploads/img1/20161028/5812fe3d1857b.jpg', '1', '18696', '1', '1477639741', '1', '0');
INSERT INTO `tp_attachment` VALUES ('267', '蔡雪芬.jpg', '/uploads/img1/20161029/58144bdeb3508.jpg', '1', '38371', '1', '1477725150', '1', '0');
INSERT INTO `tp_attachment` VALUES ('268', '蔡雪芬.jpg', '/uploads/img1/20161029/58144cc54b92d.jpg', '1', '17471', '1', '1477725381', '1', '0');
INSERT INTO `tp_attachment` VALUES ('269', '王金生.jpg', '/uploads/img1/20161029/58144d85b2002.jpg', '1', '13757', '1', '1477725573', '1', '0');
INSERT INTO `tp_attachment` VALUES ('270', '胡惠姑.jpg', '/uploads/img1/20161029/58144ddab7e68.jpg', '1', '15529', '1', '1477725658', '1', '0');
INSERT INTO `tp_attachment` VALUES ('271', '李承钿.jpg', '/uploads/img1/20161029/58144e36acc30.jpg', '1', '11160', '1', '1477725750', '1', '0');
INSERT INTO `tp_attachment` VALUES ('272', '潘春莲.jpg', '/uploads/img1/20161029/58144ecb69989.jpg', '1', '13724', '1', '1477725899', '1', '0');
INSERT INTO `tp_attachment` VALUES ('273', '刘晓荣.jpg', '/uploads/img1/20161029/58144f0f34d06.jpg', '1', '13461', '1', '1477725967', '1', '0');
INSERT INTO `tp_attachment` VALUES ('274', '宋国忠.jpg', '/uploads/img1/20161029/58144f59af0b5.jpg', '1', '12228', '1', '1477726041', '1', '0');
INSERT INTO `tp_attachment` VALUES ('275', '陶惠卿.jpg', '/uploads/img1/20161029/58144f9478d8f.jpg', '1', '14088', '1', '1477726100', '1', '0');
INSERT INTO `tp_attachment` VALUES ('276', '吴宛莹.jpg', '/uploads/img1/20161029/58144ff5298d1.jpg', '1', '14123', '1', '1477726197', '1', '0');
INSERT INTO `tp_attachment` VALUES ('277', '鲍严钟.jpg', '/uploads/img1/20161029/58145014091ef.jpg', '1', '15460', '1', '1477726228', '1', '0');
INSERT INTO `tp_attachment` VALUES ('278', '王佳岚.jpg', '/uploads/img1/20161029/5814503ddc76c.jpg', '1', '16945', '1', '1477726269', '1', '0');
INSERT INTO `tp_attachment` VALUES ('279', '宋歌.jpg', '/uploads/img1/20161029/5814507f6f8a9.jpg', '1', '13258', '1', '1477726335', '1', '0');
INSERT INTO `tp_attachment` VALUES ('280', '钟慧虹.jpg', '/uploads/img1/20161029/581450af3905e.jpg', '1', '14842', '1', '1477726383', '1', '0');
INSERT INTO `tp_attachment` VALUES ('281', '张跃琴.jpg', '/uploads/img1/20161029/5814516dd9fa5.jpg', '1', '11561', '1', '1477726573', '1', '0');
INSERT INTO `tp_attachment` VALUES ('282', '余美献.jpg', '/uploads/img1/20161029/581451cf276d8.jpg', '1', '13784', '1', '1477726671', '1', '0');
INSERT INTO `tp_attachment` VALUES ('283', '史美臻.jpg', '/uploads/img1/20161029/581452228a42f.jpg', '1', '17137', '1', '1477726754', '1', '0');
INSERT INTO `tp_attachment` VALUES ('284', '鲍严钟.jpg', '/uploads/img1/20161029/581452a063020.jpg', '1', '15460', '1', '1477726880', '1', '0');
INSERT INTO `tp_attachment` VALUES ('285', '韩富强.jpg', '/uploads/img1/20161029/5814536a6b9cd.jpg', '1', '12363', '1', '1477727082', '1', '0');
INSERT INTO `tp_attachment` VALUES ('286', '朱慧芳.jpg', '/uploads/img1/20161029/581453ecf3474.jpg', '1', '12406', '1', '1477727213', '1', '0');
INSERT INTO `tp_attachment` VALUES ('287', '俞圭田.jpg', '/uploads/img1/20161029/58145416cc701.jpg', '1', '10993', '1', '1477727254', '1', '0');
INSERT INTO `tp_attachment` VALUES ('288', '周兴兆.jpg', '/uploads/img1/20161029/58145450bb362.jpg', '1', '11157', '1', '1477727312', '1', '0');
INSERT INTO `tp_attachment` VALUES ('289', '黄文定.jpg', '/uploads/img1/20161029/58145493653e4.jpg', '1', '10786', '1', '1477727379', '1', '0');
INSERT INTO `tp_attachment` VALUES ('290', '钟慧虹.jpg', '/uploads/img1/20161029/581454dd4995f.jpg', '1', '14829', '1', '1477727453', '1', '0');
INSERT INTO `tp_attachment` VALUES ('291', '肖斯文.jpg', '/uploads/img1/20161029/58145547a2cc9.jpg', '1', '11761', '1', '1477727559', '1', '0');
INSERT INTO `tp_attachment` VALUES ('292', '吴志群.jpg', '/uploads/img1/20161029/5814557de704d.jpg', '1', '15496', '1', '1477727613', '1', '0');
INSERT INTO `tp_attachment` VALUES ('293', '姚敏华.jpg', '/uploads/img1/20161029/581455b0ebd1d.jpg', '1', '17214', '1', '1477727664', '1', '0');
INSERT INTO `tp_attachment` VALUES ('294', '倪世美.jpg', '/uploads/img1/20161029/581455ec9832d.jpg', '1', '16779', '1', '1477727724', '1', '0');
INSERT INTO `tp_attachment` VALUES ('295', '邓云鹰.jpg', '/uploads/img1/20161029/58145626626fd.jpg', '1', '12850', '1', '1477727782', '1', '0');
INSERT INTO `tp_attachment` VALUES ('296', '杨樟辉新.jpg', '/uploads/img1/20161029/581456721f8d5.jpg', '1', '12432', '1', '1477727858', '1', '0');
INSERT INTO `tp_attachment` VALUES ('297', '陈佳漪.jpg', '/uploads/img1/20161029/581456adccd59.jpg', '1', '16536', '1', '1477727917', '1', '0');
INSERT INTO `tp_attachment` VALUES ('298', '孟春.jpg', '/uploads/img1/20161029/581457546adc9.jpg', '1', '11226', '1', '1477728084', '1', '0');
INSERT INTO `tp_attachment` VALUES ('299', '姚连兴.jpg', '/uploads/img1/20161029/581457936d97f.jpg', '1', '13184', '1', '1477728147', '1', '0');
INSERT INTO `tp_attachment` VALUES ('300', '陈爱萍.jpg', '/uploads/img1/20161029/581457cfe4b8b.jpg', '1', '11103', '1', '1477728207', '1', '0');
INSERT INTO `tp_attachment` VALUES ('301', '陆建阳.jpg', '/uploads/img1/20161029/581458044c574.jpg', '1', '15207', '1', '1477728260', '1', '0');
INSERT INTO `tp_attachment` VALUES ('302', '郝沪生.jpg', '/uploads/img1/20161029/581459e071f75.jpg', '1', '13204', '1', '1477728736', '1', '0');
INSERT INTO `tp_attachment` VALUES ('303', '黄文定.jpg', '/uploads/img1/20161029/58145a823408b.jpg', '1', '10797', '1', '1477728898', '1', '0');
INSERT INTO `tp_attachment` VALUES ('304', '张瓞安.jpg', '/uploads/img1/20161029/58145ab18dd89.jpg', '1', '10988', '1', '1477728945', '1', '0');
INSERT INTO `tp_attachment` VALUES ('305', '沈宇峰.jpg', '/uploads/img1/20161029/58145aeb7c75e.jpg', '1', '22936', '1', '1477729003', '1', '0');
INSERT INTO `tp_attachment` VALUES ('306', '王赞平.jpg', '/uploads/img1/20161029/58145b25d1998.jpg', '1', '12888', '1', '1477729061', '1', '0');
INSERT INTO `tp_attachment` VALUES ('307', '王祖安.jpg', '/uploads/img1/20161029/58145b5f7f112.jpg', '1', '12467', '1', '1477729119', '1', '0');
INSERT INTO `tp_attachment` VALUES ('308', '顾维东.jpg', '/uploads/img1/20161029/58145b98c7fd5.jpg', '1', '10202', '1', '1477729176', '1', '0');
INSERT INTO `tp_attachment` VALUES ('309', '贺杏清.jpg', '/uploads/img1/20161029/58145c026088c.jpg', '1', '17284', '1', '1477729282', '1', '0');
INSERT INTO `tp_attachment` VALUES ('310', '顾维东.jpg', '/uploads/img1/20161029/58145c4f37939.jpg', '1', '10190', '1', '1477729359', '1', '0');
INSERT INTO `tp_attachment` VALUES ('311', '王祖安.jpg', '/uploads/img1/20161029/58145c7894001.jpg', '1', '12485', '1', '1477729400', '1', '0');
INSERT INTO `tp_attachment` VALUES ('312', '李济民.jpg', '/uploads/img1/20161029/58145cc835fc9.jpg', '1', '9981', '1', '1477729480', '1', '0');
INSERT INTO `tp_attachment` VALUES ('313', '王悦.jpg', '/uploads/img1/20161029/58145cff9da0b.jpg', '1', '15230', '1', '1477729535', '1', '0');
INSERT INTO `tp_attachment` VALUES ('314', '沈宇峰.jpg', '/uploads/img1/20161029/58145d2d1a313.jpg', '1', '22936', '1', '1477729581', '1', '0');
INSERT INTO `tp_attachment` VALUES ('315', '张瓞安.jpg', '/uploads/img1/20161029/58145d57ae5b6.jpg', '1', '10988', '1', '1477729623', '1', '0');
INSERT INTO `tp_attachment` VALUES ('316', '郑小伟.png', '/uploads/img1/20161029/58145dba3c6b0.png', '1', '75219', '1', '1477729722', '1', '0');
INSERT INTO `tp_attachment` VALUES ('317', '吕菁.jpg', '/uploads/img1/20161029/58145e3a2fa82.jpg', '1', '12785', '1', '1477729850', '1', '0');
INSERT INTO `tp_attachment` VALUES ('318', '应炳兴.jpg', '/uploads/img1/20161029/58145e6e3cf35.jpg', '1', '11210', '1', '1477729902', '1', '0');
INSERT INTO `tp_attachment` VALUES ('319', '张跃琴医生一寸照.jpg', '/uploads/img1/20161029/58145e996cf1d.jpg', '1', '11561', '1', '1477729945', '1', '0');
INSERT INTO `tp_attachment` VALUES ('320', '史玛宁.jpg', '/uploads/img1/20161029/58145ec6769ba.jpg', '1', '16277', '1', '1477729990', '1', '0');
INSERT INTO `tp_attachment` VALUES ('321', '孙宝春.jpg', '/uploads/img1/20161029/58145f0fd2998.jpg', '1', '10285', '1', '1477730063', '1', '0');
INSERT INTO `tp_attachment` VALUES ('322', '周成才.jpg', '/uploads/img1/20161029/58145f4185e54.jpg', '1', '13254', '1', '1477730113', '1', '0');
INSERT INTO `tp_attachment` VALUES ('323', '郑小伟.png', '/uploads/img1/20161029/58145facceb00.png', '1', '75219', '1', '1477730220', '1', '0');
INSERT INTO `tp_attachment` VALUES ('324', '郑小伟.png', '/uploads/img1/20161029/58145fdedbcc5.png', '1', '75219', '1', '1477730270', '1', '0');
INSERT INTO `tp_attachment` VALUES ('325', '张瓞安.jpg', '/uploads/img1/20161029/58145fe2d0258.jpg', '1', '11011', '1', '1477730274', '1', '0');
INSERT INTO `tp_attachment` VALUES ('326', '徐羹年.jpg', '/uploads/img1/20161029/58146020a3cf9.jpg', '1', '11880', '1', '1477730336', '1', '0');
INSERT INTO `tp_attachment` VALUES ('327', '戴志红.jpg', '/uploads/img1/20161029/58146064bb0f3.jpg', '1', '14825', '1', '1477730404', '1', '0');
INSERT INTO `tp_attachment` VALUES ('328', '楼敏华.jpg', '/uploads/img1/20161029/5814608d58552.jpg', '1', '10551', '1', '1477730445', '1', '0');
INSERT INTO `tp_attachment` VALUES ('329', '田艺.jpg', '/uploads/img1/20161029/581460c2e496e.jpg', '1', '10856', '1', '1477730498', '1', '0');
INSERT INTO `tp_attachment` VALUES ('330', '王勇琴.jpg', '/uploads/img1/20161029/581460ef4e20f.jpg', '1', '14674', '1', '1477730543', '1', '0');
INSERT INTO `tp_attachment` VALUES ('331', '包汝中.jpg', '/uploads/img1/20161029/5814611f441f0.jpg', '1', '10334', '1', '1477730591', '1', '0');
INSERT INTO `tp_attachment` VALUES ('332', '王赞平.jpg', '/uploads/img1/20161029/5814615274370.jpg', '1', '12888', '1', '1477730642', '1', '0');
INSERT INTO `tp_attachment` VALUES ('333', '施维群.jpg', '/uploads/img1/20161029/581461b47da40.jpg', '1', '41216', '1', '1477730740', '1', '0');
INSERT INTO `tp_attachment` VALUES ('334', '吴小明.jpg', '/uploads/img1/20161029/581461e476411.jpg', '1', '11824', '1', '1477730788', '1', '0');
INSERT INTO `tp_attachment` VALUES ('335', '瞿哲.jpg', '/uploads/img1/20161029/581462157914f.jpg', '1', '11259', '1', '1477730837', '1', '0');
INSERT INTO `tp_attachment` VALUES ('336', '应炳兴.jpg', '/uploads/img1/20161029/5814625626f4f.jpg', '1', '11210', '1', '1477730902', '1', '0');
INSERT INTO `tp_attachment` VALUES ('337', '王悦.jpg', '/uploads/img1/20161029/581462e36f9b4.jpg', '1', '15251', '1', '1477731043', '1', '0');
INSERT INTO `tp_attachment` VALUES ('338', '王悦.jpg', '/uploads/img1/20161029/581462f9abbb0.jpg', '1', '15251', '1', '1477731065', '1', '0');
INSERT INTO `tp_attachment` VALUES ('339', '陈佳漪.jpg', '/uploads/img1/20161029/5814632fa2228.jpg', '1', '16537', '1', '1477731119', '1', '0');
INSERT INTO `tp_attachment` VALUES ('340', '施维群.jpg', '/uploads/img1/20161030/58154c80241ed.jpg', '1', '41220', '1', '1477790848', '1', '0');
INSERT INTO `tp_attachment` VALUES ('341', '余美献.jpg', '/uploads/img1/20161030/58154ccd63a6c.jpg', '1', '13783', '1', '1477790925', '1', '0');
INSERT INTO `tp_attachment` VALUES ('342', '楼敏华.jpg', '/uploads/img1/20161030/58154d271ffff.jpg', '1', '10551', '1', '1477791015', '1', '0');
INSERT INTO `tp_attachment` VALUES ('343', '张跃琴医生一寸照.jpg', '/uploads/img1/20161030/58154d6d23e7b.jpg', '1', '11561', '1', '1477791085', '1', '0');
INSERT INTO `tp_attachment` VALUES ('344', '史玛宁.jpg', '/uploads/img1/20161030/58154dac5108d.jpg', '1', '16277', '1', '1477791148', '1', '0');
INSERT INTO `tp_attachment` VALUES ('345', '孙宝春.jpg', '/uploads/img1/20161030/58154de74297f.jpg', '1', '10307', '1', '1477791207', '1', '0');
INSERT INTO `tp_attachment` VALUES ('346', '田艺.jpg', '/uploads/img1/20161030/58154e6ae72b0.jpg', '1', '10865', '1', '1477791338', '1', '0');
INSERT INTO `tp_attachment` VALUES ('347', '王悦.jpg', '/uploads/img1/20161030/58154e7a81144.jpg', '1', '15219', '1', '1477791354', '1', '0');
INSERT INTO `tp_attachment` VALUES ('348', '吴小明.jpg', '/uploads/img1/20161030/58154eb62c796.jpg', '1', '11824', '1', '1477791414', '1', '0');
INSERT INTO `tp_attachment` VALUES ('349', '王志强.jpg', '/uploads/img1/20161030/58154ee485d04.jpg', '1', '15123', '1', '1477791460', '1', '0');
INSERT INTO `tp_attachment` VALUES ('350', '陈德娜.jpg', '/uploads/img1/20161030/58154f1ca4045.jpg', '1', '13071', '1', '1477791516', '1', '0');
INSERT INTO `tp_attachment` VALUES ('351', '韩富强.jpg', '/uploads/img1/20161030/58154f56dd653.jpg', '1', '12353', '1', '1477791574', '1', '0');
INSERT INTO `tp_attachment` VALUES ('352', '陈佳漪.jpg', '/uploads/img1/20161030/58154f8491fd5.jpg', '1', '16505', '1', '1477791620', '1', '0');
INSERT INTO `tp_attachment` VALUES ('353', '史美臻.jpg', '/uploads/img1/20161030/58154fd32fd9b.jpg', '1', '17137', '1', '1477791699', '1', '0');
INSERT INTO `tp_attachment` VALUES ('354', '沈大水.jpg', '/uploads/img1/20161030/5815508626fa9.jpg', '1', '11381', '1', '1477791878', '1', '0');
INSERT INTO `tp_attachment` VALUES ('355', '顾维东.jpg', '/uploads/img1/20161030/581550d120053.jpg', '1', '10190', '1', '1477791953', '1', '0');
INSERT INTO `tp_attachment` VALUES ('356', '顾占卫.jpg', '/uploads/img1/20161030/581551072d198.jpg', '1', '13424', '1', '1477792007', '1', '0');
INSERT INTO `tp_attachment` VALUES ('357', '王祖安.jpg', '/uploads/img1/20161030/58155144a4dc6.jpg', '1', '12483', '1', '1477792068', '1', '0');
INSERT INTO `tp_attachment` VALUES ('358', '应炳兴.jpg', '/uploads/img1/20161030/581551756bf76.jpg', '1', '11210', '1', '1477792117', '1', '0');
INSERT INTO `tp_attachment` VALUES ('359', '黄文定.jpg', '/uploads/img1/20161030/581551b0ec630.jpg', '1', '10786', '1', '1477792176', '1', '0');
INSERT INTO `tp_attachment` VALUES ('360', '张跃琴医生一寸照.jpg', '/uploads/img1/20161030/581551e1b7e04.jpg', '1', '11561', '1', '1477792225', '1', '0');
INSERT INTO `tp_attachment` VALUES ('361', '钟良玉.jpg', '/uploads/img1/20161030/5815524567544.jpg', '1', '12317', '1', '1477792325', '1', '0');
INSERT INTO `tp_attachment` VALUES ('362', '陈亚琴.jpg', '/uploads/img1/20161030/58155272b8aa8.jpg', '1', '13008', '1', '1477792370', '1', '0');
INSERT INTO `tp_attachment` VALUES ('363', '顾维东.jpg', '/uploads/img1/20161030/581552d437b3c.jpg', '1', '10198', '1', '1477792468', '1', '0');
INSERT INTO `tp_attachment` VALUES ('364', '沈宇峰.jpg', '/uploads/img1/20161030/5815530c16668.jpg', '1', '22936', '1', '1477792524', '1', '0');
INSERT INTO `tp_attachment` VALUES ('365', '黄文定.jpg', '/uploads/img1/20161030/58155339ddfe8.jpg', '1', '10786', '1', '1477792569', '1', '0');
INSERT INTO `tp_attachment` VALUES ('366', '顾占卫.jpg', '/uploads/img1/20161030/5815537683f07.jpg', '1', '13424', '1', '1477792630', '1', '0');
INSERT INTO `tp_attachment` VALUES ('367', '张毓玲.jpg', '/uploads/img1/20161030/581553e844346.jpg', '1', '19926', '1', '1477792744', '1', '0');
INSERT INTO `tp_attachment` VALUES ('368', '朱娴如.jpg', '/uploads/img1/20161030/5815541e7d0f9.jpg', '1', '12456', '1', '1477792798', '1', '0');
INSERT INTO `tp_attachment` VALUES ('369', '史华.jpg', '/uploads/img1/20161030/5815544f72774.jpg', '1', '13068', '1', '1477792847', '1', '0');
INSERT INTO `tp_attachment` VALUES ('370', '金国梁.jpg', '/uploads/img1/20161030/58155494d176e.jpg', '1', '15908', '1', '1477792916', '1', '0');
INSERT INTO `tp_attachment` VALUES ('371', '刘昌富.jpg', '/uploads/img1/20161030/581554c316578.jpg', '1', '11945', '1', '1477792963', '1', '0');
INSERT INTO `tp_attachment` VALUES ('372', '陶四青.jpg', '/uploads/img1/20161030/581554f39cfb7.jpg', '1', '14317', '1', '1477793011', '1', '0');
INSERT INTO `tp_attachment` VALUES ('373', '吴兰珠.jpg', '/uploads/img1/20161030/58155533248b6.jpg', '1', '14828', '1', '1477793075', '1', '0');
INSERT INTO `tp_attachment` VALUES ('374', '谭萍.jpg', '/uploads/img1/20161030/581555779e8bf.jpg', '1', '12844', '1', '1477793143', '1', '0');
INSERT INTO `tp_attachment` VALUES ('375', '陈德娜.jpg', '/uploads/img1/20161030/581555a84f147.jpg', '1', '13071', '1', '1477793192', '1', '0');
INSERT INTO `tp_attachment` VALUES ('376', '周少玲.jpg', '/uploads/img1/20161030/581555d3c0a6c.jpg', '1', '12124', '1', '1477793235', '1', '0');
INSERT INTO `tp_attachment` VALUES ('377', '曹宝珍.jpg', '/uploads/img1/20161030/581556069fa11.jpg', '1', '19149', '1', '1477793286', '1', '0');
INSERT INTO `tp_attachment` VALUES ('378', '肖斯文.jpg', '/uploads/img1/20161030/58155665e7311.jpg', '1', '11787', '1', '1477793381', '1', '0');
INSERT INTO `tp_attachment` VALUES ('379', '张志勇.jpg', '/uploads/img1/20161030/581556954993d.jpg', '1', '11053', '1', '1477793429', '1', '0');
INSERT INTO `tp_attachment` VALUES ('380', '梅书旺.jpg', '/uploads/img1/20161030/581556c54e42b.jpg', '1', '13682', '1', '1477793477', '1', '0');
INSERT INTO `tp_attachment` VALUES ('381', '孟锐.jpg', '/uploads/img1/20161030/5815570485423.jpg', '1', '11233', '1', '1477793540', '1', '0');
INSERT INTO `tp_attachment` VALUES ('382', '何庆丰.jpg', '/uploads/img1/20161030/5815573308f2a.jpg', '1', '10774', '1', '1477793587', '1', '0');
INSERT INTO `tp_attachment` VALUES ('383', '杨国庆.jpg', '/uploads/img1/20161030/581557a081da1.jpg', '1', '13784', '1', '1477793696', '1', '0');
INSERT INTO `tp_attachment` VALUES ('384', '泮柳燕.jpg', '/uploads/img1/20161030/581557b20e663.jpg', '1', '11306', '1', '1477793714', '1', '0');
INSERT INTO `tp_attachment` VALUES ('385', '陈敏映.jpg', '/uploads/img1/20161030/581558ec521be.jpg', '1', '11632', '1', '1477794028', '1', '0');
INSERT INTO `tp_attachment` VALUES ('386', '吕华.jpg', '/uploads/img1/20161030/581559195d8b5.jpg', '1', '10414', '1', '1477794073', '1', '0');
INSERT INTO `tp_attachment` VALUES ('387', '沈宇峰.jpg', '/uploads/img1/20161030/581559b0d7467.jpg', '1', '22936', '1', '1477794224', '1', '0');
INSERT INTO `tp_attachment` VALUES ('388', '林庚庭.jpg', '/uploads/img1/20161030/581559e85f4d8.jpg', '1', '17018', '1', '1477794280', '1', '0');
INSERT INTO `tp_attachment` VALUES ('389', '顾维东.jpg', '/uploads/img1/20161030/58155a1d2b4a1.jpg', '1', '10198', '1', '1477794333', '1', '0');
INSERT INTO `tp_attachment` VALUES ('390', '顾维东.jpg', '/uploads/img1/20161030/58155a62f346f.jpg', '1', '10198', '1', '1477794403', '1', '0');
INSERT INTO `tp_attachment` VALUES ('391', '王祖安.jpg', '/uploads/img1/20161030/58155a9c0b822.jpg', '1', '12467', '1', '1477794460', '1', '0');
INSERT INTO `tp_attachment` VALUES ('392', '沈宇峰.jpg', '/uploads/img1/20161030/58155ad148273.jpg', '1', '22936', '1', '1477794513', '1', '0');
INSERT INTO `tp_attachment` VALUES ('393', '王悦.jpg', '/uploads/img1/20161030/58155afca48e0.jpg', '1', '15219', '1', '1477794556', '1', '0');
INSERT INTO `tp_attachment` VALUES ('394', '应炳兴.jpg', '/uploads/img1/20161030/58155b2643374.jpg', '1', '11210', '1', '1477794598', '1', '0');
INSERT INTO `tp_attachment` VALUES ('395', '施维群.jpg', '/uploads/img1/20161101/58184271012b4.jpg', '1', '41216', '1', '1477984881', '1', '0');
INSERT INTO `tp_attachment` VALUES ('396', '王悦.jpg', '/uploads/img1/20161101/581842b047f74.jpg', '1', '15219', '1', '1477984944', '1', '0');
INSERT INTO `tp_attachment` VALUES ('397', '张跃琴医生一寸照.jpg', '/uploads/img1/20161101/581842f313a12.jpg', '1', '11561', '1', '1477985011', '1', '0');
INSERT INTO `tp_attachment` VALUES ('398', '应炳兴.jpg', '/uploads/img1/20161101/58184324f381d.jpg', '1', '11210', '1', '1477985061', '1', '0');
INSERT INTO `tp_attachment` VALUES ('399', '瞿哲.jpg', '/uploads/img1/20161101/5818435bd8fa0.jpg', '1', '11259', '1', '1477985115', '1', '0');
INSERT INTO `tp_attachment` VALUES ('400', '顾维东.jpg', '/uploads/img1/20161101/58184398ebfbe.jpg', '1', '10190', '1', '1477985176', '1', '0');
INSERT INTO `tp_attachment` VALUES ('401', '陈敏映.jpg', '/uploads/img1/20161101/581843c9c03a0.jpg', '1', '11611', '1', '1477985225', '1', '0');
INSERT INTO `tp_attachment` VALUES ('402', '肖斯文.jpg', '/uploads/img1/20161101/581843fa44c80.jpg', '1', '11743', '1', '1477985274', '1', '0');
INSERT INTO `tp_attachment` VALUES ('403', '王祖安.jpg', '/uploads/img1/20161101/581844370b7e9.jpg', '1', '12467', '1', '1477985335', '1', '0');
INSERT INTO `tp_attachment` VALUES ('404', '何荣飞.jpg', '/uploads/img1/20161101/5818446487927.jpg', '1', '15674', '1', '1477985380', '1', '0');
INSERT INTO `tp_attachment` VALUES ('405', '陈安仁.jpg', '/uploads/img1/20161101/581852ec531f5.jpg', '1', '15141', '1', '1477989100', '1', '0');
INSERT INTO `tp_attachment` VALUES ('406', '1.jpg', '/uploads/img1/20161108/582177481c84e.jpg', '1', '1608908', '1', '1478588232', '1', '0');
INSERT INTO `tp_attachment` VALUES ('407', '12.jpg', '/uploads/img1/20161108/58217782aa0c9.jpg', '1', '212112', '1', '1478588290', '1', '0');
INSERT INTO `tp_attachment` VALUES ('408', '123.jpg', '/uploads/img1/20161108/582178e1d757b.jpg', '1', '154939', '1', '1478588641', '1', '0');
INSERT INTO `tp_attachment` VALUES ('409', 'v2-389b0ccb315311cc9311006a9cd88ae4_r.jpg', '/haige/uploads/img1/20170304/58ba3e15c72dd.jpg', '1', '54246', '1', '1488600597', '1', '0');
INSERT INTO `tp_attachment` VALUES ('410', '220217533711.jpg', '/haige/uploads/img1/20170304/58ba3e31008a7.jpg', '1', '13640', '1', '1488600625', '1', '0');
INSERT INTO `tp_attachment` VALUES ('411', '20150713161448_88746.jpg', '/haige/uploads/img1/20170305/58bb736f1e6c3.jpg', '1', '25921', '1', '1488679791', '1', '0');
INSERT INTO `tp_attachment` VALUES ('412', '55e569ee3c554.jpg', '/haige/uploads/img1/20170305/58bb738a4e357.jpg', '1', '34181', '1', '1488679818', '1', '0');
INSERT INTO `tp_attachment` VALUES ('413', 'm_5590ac77345ab.jpg', '/haige/uploads/img1/20170305/58bb73967ccc6.jpg', '1', '2274', '1', '1488679830', '1', '0');
INSERT INTO `tp_attachment` VALUES ('414', 'e3.jpg', '/cy/uploads/img1/20170727/59795225a3ebc.jpg', '1', '153030', '1', '1501123109', '1', '0');
INSERT INTO `tp_attachment` VALUES ('415', 'e3.jpg', '/cy/uploads/img1/20170727/597952c9ec6e9.jpg', '1', '153030', '1', '1501123273', '1', '0');
INSERT INTO `tp_attachment` VALUES ('416', 'M_service04_副本.jpg', '/uploads/img1/20180225/5a924a455ae7d.jpg', '1', '48798', '1', '1519536709', '1', '0');
INSERT INTO `tp_attachment` VALUES ('417', 'M_service01_副本.jpg', '/uploads/img1/20180225/5a924a4ae7f23.jpg', '1', '55935', '1', '1519536714', '1', '0');
INSERT INTO `tp_attachment` VALUES ('418', 'M_service04_副本.jpg', '/uploads/img1/20180225/5a924a4e295b6.jpg', '1', '48798', '1', '1519536718', '1', '0');
INSERT INTO `tp_attachment` VALUES ('419', 'M_service07_副本.jpg', '/uploads/img1/20180225/5a924a52353f0.jpg', '1', '58349', '1', '1519536722', '1', '0');
INSERT INTO `tp_attachment` VALUES ('420', 'M_service08_副本.jpg', '/uploads/img1/20180225/5a924a5588bfc.jpg', '1', '85700', '1', '1519536725', '1', '0');
INSERT INTO `tp_attachment` VALUES ('421', 'M_service11_副本.jpg', '/uploads/img1/20180225/5a924a58a38e7.jpg', '1', '55247', '1', '1519536728', '1', '0');
INSERT INTO `tp_attachment` VALUES ('422', 'V_police01_副本.jpg', '/uploads/img1/20180225/5a9250937684b.jpg', '1', '185704', '1', '1519538323', '1', '0');
INSERT INTO `tp_attachment` VALUES ('423', 'V_police05_副本.jpg', '/uploads/img1/20180225/5a92509731da8.jpg', '1', '262891', '1', '1519538327', '1', '0');
INSERT INTO `tp_attachment` VALUES ('424', 'V_police07_副本.jpg', '/uploads/img1/20180225/5a92509a6743f.jpg', '1', '301956', '1', '1519538330', '1', '0');
INSERT INTO `tp_attachment` VALUES ('425', 'V_police09_副本.jpg', '/uploads/img1/20180225/5a92509d91253.jpg', '1', '290507', '1', '1519538333', '1', '0');
INSERT INTO `tp_attachment` VALUES ('426', 'V_police10_副本.jpg', '/uploads/img1/20180225/5a9250a0766c0.jpg', '1', '308883', '1', '1519538336', '1', '0');
INSERT INTO `tp_attachment` VALUES ('427', 'C_storage01_副本.jpg', '/uploads/img1/20180225/5a925356573e7.jpg', '1', '180687', '1', '1519539030', '1', '0');
INSERT INTO `tp_attachment` VALUES ('428', 'C_storage02_副本.jpg', '/uploads/img1/20180225/5a925359434a5.jpg', '1', '182509', '1', '1519539033', '1', '0');
INSERT INTO `tp_attachment` VALUES ('429', 'C_storage01.jpg', '/uploads/img1/20180225/5a92536452234.jpg', '1', '146402', '1', '1519539044', '1', '0');
INSERT INTO `tp_attachment` VALUES ('430', 'C_storage02.jpg', '/uploads/img1/20180225/5a9253682ffab.jpg', '1', '116400', '1', '1519539048', '1', '0');
INSERT INTO `tp_attachment` VALUES ('431', 'C_storage03.jpg', '/uploads/img1/20180225/5a92536b4a95e.jpg', '1', '111256', '1', '1519539051', '1', '0');
INSERT INTO `tp_attachment` VALUES ('432', 'C_storage04.jpg', '/uploads/img1/20180225/5a92536e119af.jpg', '1', '106712', '1', '1519539054', '1', '0');
INSERT INTO `tp_attachment` VALUES ('433', 'C_storage05.jpg', '/uploads/img1/20180225/5a92537143013.jpg', '1', '110345', '1', '1519539057', '1', '0');
INSERT INTO `tp_attachment` VALUES ('434', 'V_te01.jpg', '/uploads/img1/20180225/5a9253e76e7a6.jpg', '1', '292649', '1', '1519539175', '1', '0');
INSERT INTO `tp_attachment` VALUES ('435', 'V_te02.jpg', '/uploads/img1/20180225/5a9253ea7a16f.jpg', '1', '318064', '1', '1519539178', '1', '0');
INSERT INTO `tp_attachment` VALUES ('436', 'V_te03.jpg', '/uploads/img1/20180225/5a9253ed3ba7b.jpg', '1', '196581', '1', '1519539181', '1', '0');
INSERT INTO `tp_attachment` VALUES ('437', 'V_te04.jpg', '/uploads/img1/20180225/5a9253f00a5de.jpg', '1', '282493', '1', '1519539184', '1', '0');
INSERT INTO `tp_attachment` VALUES ('438', 'V_te05.jpg', '/uploads/img1/20180225/5a9253f2dc202.jpg', '1', '316253', '1', '1519539186', '1', '0');
INSERT INTO `tp_attachment` VALUES ('439', 'V_te06.jpg', '/uploads/img1/20180225/5a925406698be.jpg', '1', '643626', '1', '1519539206', '1', '0');
INSERT INTO `tp_attachment` VALUES ('440', 'B_free01.jpg', '/uploads/img1/20180225/5a925453755a5.jpg', '1', '140483', '1', '1519539283', '1', '0');
INSERT INTO `tp_attachment` VALUES ('441', 'B_free02.jpg', '/uploads/img1/20180225/5a925458b7661.jpg', '1', '81888', '1', '1519539288', '1', '0');
INSERT INTO `tp_attachment` VALUES ('442', 'B_free04.jpg', '/uploads/img1/20180225/5a92545dcd2dd.jpg', '1', '137263', '1', '1519539293', '1', '0');
INSERT INTO `tp_attachment` VALUES ('443', 'B_free05.jpg', '/uploads/img1/20180225/5a925461132a1.jpg', '1', '117057', '1', '1519539297', '1', '0');
INSERT INTO `tp_attachment` VALUES ('444', 'B_free06.jpg', '/uploads/img1/20180225/5a92546402d7a.jpg', '1', '115569', '1', '1519539300', '1', '0');
INSERT INTO `tp_attachment` VALUES ('445', 'B_note01.jpg', '/uploads/img1/20180225/5a925493ef955.jpg', '1', '146369', '1', '1519539347', '1', '0');
INSERT INTO `tp_attachment` VALUES ('446', 'B_note02.jpg', '/uploads/img1/20180225/5a925496c3003.jpg', '1', '131281', '1', '1519539350', '1', '0');
INSERT INTO `tp_attachment` VALUES ('447', 'B_note03.jpg', '/uploads/img1/20180225/5a92549a4f466.jpg', '1', '104291', '1', '1519539354', '1', '0');
INSERT INTO `tp_attachment` VALUES ('448', 'B_note04.jpg', '/uploads/img1/20180225/5a9254a071e5c.jpg', '1', '154420', '1', '1519539360', '1', '0');
INSERT INTO `tp_attachment` VALUES ('449', 'B_note05.jpg', '/uploads/img1/20180225/5a9254a37d16b.jpg', '1', '204477', '1', '1519539363', '1', '0');
INSERT INTO `tp_attachment` VALUES ('450', 'L_enforcement01.jpg', '/uploads/img1/20180225/5a9254e29d060.jpg', '1', '144225', '1', '1519539426', '1', '0');
INSERT INTO `tp_attachment` VALUES ('451', 'L_enforcement02.jpg', '/uploads/img1/20180225/5a9254e56a54a.jpg', '1', '122543', '1', '1519539429', '1', '0');
INSERT INTO `tp_attachment` VALUES ('452', 'L_enforcement03.jpg', '/uploads/img1/20180225/5a9254e831135.jpg', '1', '99088', '1', '1519539432', '1', '0');
INSERT INTO `tp_attachment` VALUES ('453', 'L_enforcement04.jpg', '/uploads/img1/20180225/5a9254ebd4ebe.jpg', '1', '110994', '1', '1519539435', '1', '0');
INSERT INTO `tp_attachment` VALUES ('454', 'L_enforcement06.jpg', '/uploads/img1/20180225/5a9254ef97f69.jpg', '1', '105184', '1', '1519539439', '1', '0');
INSERT INTO `tp_attachment` VALUES ('455', 'V_medical01.jpg', '/uploads/img1/20180225/5a925571c0bcf.jpg', '1', '269575', '1', '1519539569', '1', '0');
INSERT INTO `tp_attachment` VALUES ('456', 'V_medical02.jpg', '/uploads/img1/20180225/5a92557729d84.jpg', '1', '191654', '1', '1519539575', '1', '0');
INSERT INTO `tp_attachment` VALUES ('457', 'V_medical03.jpg', '/uploads/img1/20180225/5a92557b81e9f.jpg', '1', '233291', '1', '1519539579', '1', '0');
INSERT INTO `tp_attachment` VALUES ('458', 'V_medical05.jpg', '/uploads/img1/20180225/5a925582a4009.jpg', '1', '265303', '1', '1519539586', '1', '0');
INSERT INTO `tp_attachment` VALUES ('459', 'V_medical07.jpg', '/uploads/img1/20180225/5a92558885647.jpg', '1', '342807', '1', '1519539592', '1', '0');
INSERT INTO `tp_attachment` VALUES ('460', 'M_service01.jpg', '/uploads/img1/20180225/5a9255e7e1c47.jpg', '1', '158894', '1', '1519539687', '1', '0');
INSERT INTO `tp_attachment` VALUES ('461', 'M_service02.jpg', '/uploads/img1/20180225/5a9255eb0048c.jpg', '1', '104189', '1', '1519539691', '1', '0');
INSERT INTO `tp_attachment` VALUES ('462', 'M_service03.jpg', '/uploads/img1/20180225/5a9255ee0058e.jpg', '1', '124339', '1', '1519539694', '1', '0');
INSERT INTO `tp_attachment` VALUES ('463', 'M_service06.jpg', '/uploads/img1/20180225/5a9255f39cf2f.jpg', '1', '170428', '1', '1519539699', '1', '0');
INSERT INTO `tp_attachment` VALUES ('464', 'M_service07.jpg', '/uploads/img1/20180225/5a9255f99cc51.jpg', '1', '136880', '1', '1519539705', '1', '0');
INSERT INTO `tp_attachment` VALUES ('465', 'V_police01.jpg', '/uploads/img1/20180225/5a9256325c5c1.jpg', '1', '255486', '1', '1519539762', '1', '0');
INSERT INTO `tp_attachment` VALUES ('466', 'V_police02.jpg', '/uploads/img1/20180225/5a92563b86281.jpg', '1', '237192', '1', '1519539771', '1', '0');
INSERT INTO `tp_attachment` VALUES ('467', 'V_police05.jpg', '/uploads/img1/20180225/5a925643c7343.jpg', '1', '246937', '1', '1519539779', '1', '0');
INSERT INTO `tp_attachment` VALUES ('468', 'V_police08.jpg', '/uploads/img1/20180225/5a9256488dfa8.jpg', '1', '308850', '1', '1519539784', '1', '0');
INSERT INTO `tp_attachment` VALUES ('469', 'V_police09.jpg', '/uploads/img1/20180225/5a92564c58a0d.jpg', '1', '311580', '1', '1519539788', '1', '0');
INSERT INTO `tp_attachment` VALUES ('470', '01.jpg', '/uploads/img1/20180225/5a9256dac4b41.jpg', '1', '66210', '1', '1519539930', '1', '0');
INSERT INTO `tp_attachment` VALUES ('471', '06.jpg', '/uploads/img1/20180225/5a9256e03e650.jpg', '1', '60647', '1', '1519539936', '1', '0');
INSERT INTO `tp_attachment` VALUES ('472', '09.jpg', '/uploads/img1/20180225/5a9256e4da75f.jpg', '1', '76603', '1', '1519539940', '1', '0');
INSERT INTO `tp_attachment` VALUES ('473', '13.jpg', '/uploads/img1/20180225/5a9256ec27719.jpg', '1', '70419', '1', '1519539948', '1', '0');
INSERT INTO `tp_attachment` VALUES ('474', '21.jpg', '/uploads/img1/20180225/5a9256f15916e.jpg', '1', '63706', '1', '1519539953', '1', '0');
INSERT INTO `tp_attachment` VALUES ('475', '01.jpg', '/uploads/img1/20180225/5a9257483a8c2.jpg', '1', '62012', '1', '1519540040', '1', '0');
INSERT INTO `tp_attachment` VALUES ('476', '02.jpg', '/uploads/img1/20180225/5a92574b054c2.jpg', '1', '61172', '1', '1519540043', '1', '0');
INSERT INTO `tp_attachment` VALUES ('477', '06.jpg', '/uploads/img1/20180225/5a92574f0cdf5.jpg', '1', '55780', '1', '1519540047', '1', '0');
INSERT INTO `tp_attachment` VALUES ('478', '08.jpg', '/uploads/img1/20180225/5a925754bd960.jpg', '1', '68527', '1', '1519540052', '1', '0');
INSERT INTO `tp_attachment` VALUES ('479', '10.jpg', '/uploads/img1/20180225/5a92575851b00.jpg', '1', '88133', '1', '1519540056', '1', '0');
INSERT INTO `tp_attachment` VALUES ('480', '02 (1).jpg', '/uploads/img1/20180225/5a92579e9b6ea.jpg', '1', '58134', '1', '1519540126', '1', '0');
INSERT INTO `tp_attachment` VALUES ('481', '03.jpg', '/uploads/img1/20180225/5a9257a314bdd.jpg', '1', '43230', '1', '1519540131', '1', '0');
INSERT INTO `tp_attachment` VALUES ('482', '04.jpg', '/uploads/img1/20180225/5a9257aaee497.jpg', '1', '46960', '1', '1519540138', '1', '0');
INSERT INTO `tp_attachment` VALUES ('483', '17.jpg', '/uploads/img1/20180225/5a9257af8f27d.jpg', '1', '63682', '1', '1519540143', '1', '0');
INSERT INTO `tp_attachment` VALUES ('484', '20.jpg', '/uploads/img1/20180225/5a9257b41cc97.jpg', '1', '72007', '1', '1519540148', '1', '0');
INSERT INTO `tp_attachment` VALUES ('485', '20150713141602616.jpg', '/uploads/img1/20180225/5a9258a29877e.jpg', '1', '179062', '1', '1519540386', '1', '0');
INSERT INTO `tp_attachment` VALUES ('486', '20150713141814452.jpg', '/uploads/img1/20180225/5a9258a862020.jpg', '1', '210306', '1', '1519540392', '1', '0');
INSERT INTO `tp_attachment` VALUES ('487', '20150713141814530.jpg', '/uploads/img1/20180225/5a9258ac0e3cf.jpg', '1', '346298', '1', '1519540396', '1', '0');
INSERT INTO `tp_attachment` VALUES ('488', '20150713141814905.jpg', '/uploads/img1/20180225/5a9258b552ebb.jpg', '1', '324935', '1', '1519540405', '1', '0');
INSERT INTO `tp_attachment` VALUES ('489', '20150713141814983.jpg', '/uploads/img1/20180225/5a9258b872795.jpg', '1', '322219', '1', '1519540408', '1', '0');
INSERT INTO `tp_attachment` VALUES ('490', '20150713110438329.png', '/uploads/img1/20180225/5a9258f290eda.png', '1', '285999', '1', '1519540466', '1', '0');
INSERT INTO `tp_attachment` VALUES ('491', '20150713110035733.jpg', '/uploads/img1/20180225/5a9258fab2630.jpg', '1', '324935', '1', '1519540474', '1', '0');
INSERT INTO `tp_attachment` VALUES ('492', '20150713110035811.jpg', '/uploads/img1/20180225/5a9258fd88512.jpg', '1', '272219', '1', '1519540477', '1', '0');
INSERT INTO `tp_attachment` VALUES ('493', '20150713110035483.jpg', '/uploads/img1/20180225/5a925902b62cb.jpg', '1', '279793', '1', '1519540482', '1', '0');
INSERT INTO `tp_attachment` VALUES ('494', '20150713110035561.jpg', '/uploads/img1/20180225/5a925908ef5a5.jpg', '1', '125951', '1', '1519540488', '1', '0');
INSERT INTO `tp_attachment` VALUES ('495', '20170815093242756.jpg', '/uploads/img1/20180225/5a9259c43dd1d.jpg', '1', '398561', '1', '1519540676', '1', '0');
INSERT INTO `tp_attachment` VALUES ('496', '20170815093242788.jpg', '/uploads/img1/20180225/5a9259c75016f.jpg', '1', '331685', '1', '1519540679', '1', '0');
INSERT INTO `tp_attachment` VALUES ('497', '20170815093242834.jpg', '/uploads/img1/20180225/5a9259cc26493.jpg', '1', '454338', '1', '1519540684', '1', '0');
INSERT INTO `tp_attachment` VALUES ('498', '20170815093242912.jpg', '/uploads/img1/20180225/5a9259d25c5e1.jpg', '1', '295402', '1', '1519540690', '1', '0');
INSERT INTO `tp_attachment` VALUES ('499', '20170815093242975.jpg', '/uploads/img1/20180225/5a9259d70b022.jpg', '1', '336604', '1', '1519540695', '1', '0');
INSERT INTO `tp_attachment` VALUES ('500', '20150814153236061.jpg', '/uploads/img1/20180225/5a925a1c5b970.jpg', '1', '182302', '1', '1519540764', '1', '0');
INSERT INTO `tp_attachment` VALUES ('501', '20150814153236124.jpg', '/uploads/img1/20180225/5a925a2c6ec20.jpg', '1', '395803', '1', '1519540780', '1', '0');
INSERT INTO `tp_attachment` VALUES ('502', '20150814153236327.jpg', '/uploads/img1/20180225/5a925a36505ae.jpg', '1', '231471', '1', '1519540790', '1', '0');
INSERT INTO `tp_attachment` VALUES ('503', '20150814153236358.jpg', '/uploads/img1/20180225/5a925a3b44c1b.jpg', '1', '204923', '1', '1519540795', '1', '0');
INSERT INTO `tp_attachment` VALUES ('504', '20150814153236155.jpg', '/uploads/img1/20180225/5a925a56e60a6.jpg', '1', '411540', '1', '1519540822', '1', '0');
INSERT INTO `tp_attachment` VALUES ('505', '20170815094516103.jpg', '/uploads/img1/20180225/5a925ab4d9615.jpg', '1', '449380', '1', '1519540916', '1', '0');
INSERT INTO `tp_attachment` VALUES ('506', '20170815094547396.jpg', '/uploads/img1/20180225/5a925abb35a38.jpg', '1', '379718', '1', '1519540923', '1', '0');
INSERT INTO `tp_attachment` VALUES ('507', '20170815094547505.jpg', '/uploads/img1/20180225/5a925ac091b4d.jpg', '1', '392421', '1', '1519540928', '1', '0');
INSERT INTO `tp_attachment` VALUES ('508', '20170815094547552.jpg', '/uploads/img1/20180225/5a925ac6ce23b.jpg', '1', '432282', '1', '1519540934', '1', '0');
INSERT INTO `tp_attachment` VALUES ('509', '20170815094547598.jpg', '/uploads/img1/20180225/5a925acadd5ef.jpg', '1', '419355', '1', '1519540938', '1', '0');
INSERT INTO `tp_attachment` VALUES ('510', '20150807083602990.jpg', '/uploads/img1/20180225/5a925b13e1ae9.jpg', '1', '335698', '1', '1519541011', '1', '0');
INSERT INTO `tp_attachment` VALUES ('511', '20150811142141966.jpg', '/uploads/img1/20180225/5a925b172e05c.jpg', '1', '340980', '1', '1519541015', '1', '0');
INSERT INTO `tp_attachment` VALUES ('512', '20150811142142122.jpg', '/uploads/img1/20180225/5a925b215fcaf.jpg', '1', '535603', '1', '1519541025', '1', '0');
INSERT INTO `tp_attachment` VALUES ('513', '20150811142142215.jpg', '/uploads/img1/20180225/5a925b274606f.jpg', '1', '417751', '1', '1519541031', '1', '0');
INSERT INTO `tp_attachment` VALUES ('514', '20150811142142262.jpg', '/uploads/img1/20180225/5a925b2cb7982.jpg', '1', '398499', '1', '1519541036', '1', '0');
INSERT INTO `tp_attachment` VALUES ('515', '2017EeRtLvAyNV.jpg', '/uploads/img1/20180225/5a925b735d90c.jpg', '1', '104867', '1', '1519541107', '1', '0');
INSERT INTO `tp_attachment` VALUES ('516', '2017EeRtj4BaNA.jpg', '/uploads/img1/20180225/5a925b777e2f0.jpg', '1', '86557', '1', '1519541111', '1', '0');
INSERT INTO `tp_attachment` VALUES ('517', '2017EeRteqrSkM.jpg', '/uploads/img1/20180225/5a925b7a1390c.jpg', '1', '107477', '1', '1519541114', '1', '0');
INSERT INTO `tp_attachment` VALUES ('518', '2017EeRtaVcWSZ.jpg', '/uploads/img1/20180225/5a925b7c9135e.jpg', '1', '104522', '1', '1519541116', '1', '0');
INSERT INTO `tp_attachment` VALUES ('519', '2017EeR0KTusBs.jpg', '/uploads/img1/20180225/5a925bb9009f6.jpg', '1', '136763', '1', '1519541177', '1', '0');
INSERT INTO `tp_attachment` VALUES ('520', '2017EeR0P0kDf0.jpg', '/uploads/img1/20180225/5a925bbbf1554.jpg', '1', '159363', '1', '1519541179', '1', '0');
INSERT INTO `tp_attachment` VALUES ('521', '2017EeR0SEHDGH.jpg', '/uploads/img1/20180225/5a925bbecc188.jpg', '1', '91456', '1', '1519541182', '1', '0');
INSERT INTO `tp_attachment` VALUES ('522', '2017KGQQ2H6raO.jpg', '/uploads/img1/20180225/5a925bead322f.jpg', '1', '143305', '1', '1519541226', '1', '0');
INSERT INTO `tp_attachment` VALUES ('523', '2017KGQQxFU0Ht.jpg', '/uploads/img1/20180225/5a925bee9d62c.jpg', '1', '135139', '1', '1519541230', '1', '0');
INSERT INTO `tp_attachment` VALUES ('524', '2017KGQQ7WwZoT.jpg', '/uploads/img1/20180225/5a925bf4097eb.jpg', '1', '196487', '1', '1519541236', '1', '0');
INSERT INTO `tp_attachment` VALUES ('525', '2017KGQRFztGHm.jpg', '/uploads/img1/20180225/5a925bfa1016e.jpg', '1', '179979', '1', '1519541242', '1', '0');
INSERT INTO `tp_attachment` VALUES ('526', '2017KGQRLpKBEc.jpg', '/uploads/img1/20180225/5a925bff641e8.jpg', '1', '191202', '1', '1519541247', '1', '0');
INSERT INTO `tp_attachment` VALUES ('527', '20170817082707324.jpg', '/uploads/img1/20180225/5a925c93974c4.jpg', '1', '54579', '1', '1519541395', '1', '0');
INSERT INTO `tp_attachment` VALUES ('528', '20170817082707370.jpg', '/uploads/img1/20180225/5a925c9768e07.jpg', '1', '157973', '1', '1519541399', '1', '0');
INSERT INTO `tp_attachment` VALUES ('529', '20170817082707636.jpg', '/uploads/img1/20180225/5a925c9b8bd07.jpg', '1', '442228', '1', '1519541403', '1', '0');
INSERT INTO `tp_attachment` VALUES ('530', '20170817082707948.jpg', '/uploads/img1/20180225/5a925c9f056dc.jpg', '1', '226626', '1', '1519541407', '1', '0');
INSERT INTO `tp_attachment` VALUES ('531', '20170817082708119.jpg', '/uploads/img1/20180225/5a925ca427d8a.jpg', '1', '201207', '1', '1519541412', '1', '0');
INSERT INTO `tp_attachment` VALUES ('532', '2017EeRwaIJu3b.jpg', '/uploads/img1/20180225/5a925cd85de13.jpg', '1', '149979', '1', '1519541464', '1', '0');
INSERT INTO `tp_attachment` VALUES ('533', '2017EeRwUClCiV.jpg', '/uploads/img1/20180225/5a925cdaf1d94.jpg', '1', '122867', '1', '1519541467', '1', '0');
INSERT INTO `tp_attachment` VALUES ('534', '2017EeRwXHWkEM.jpg', '/uploads/img1/20180225/5a925cdd876a6.jpg', '1', '123479', '1', '1519541469', '1', '0');
INSERT INTO `tp_attachment` VALUES ('535', '201750062-161026131404.jpg', '/uploads/img1/20180225/5a925fb207d3b.jpg', '1', '66338', '1', '1519542194', '1', '0');
INSERT INTO `tp_attachment` VALUES ('536', '201750062-161026131404-50.jpg', '/uploads/img1/20180225/5a925fb4ca74c.jpg', '1', '72322', '1', '1519542196', '1', '0');
INSERT INTO `tp_attachment` VALUES ('537', '201750062-161026131405-50.jpg', '/uploads/img1/20180225/5a925fb96add0.jpg', '1', '71541', '1', '1519542201', '1', '0');
INSERT INTO `tp_attachment` VALUES ('538', '201750062-161026131405-51.jpg', '/uploads/img1/20180225/5a925fbc57bfb.jpg', '1', '60104', '1', '1519542204', '1', '0');
INSERT INTO `tp_attachment` VALUES ('539', '201750062-161026131405-52.jpg', '/uploads/img1/20180225/5a925fbed9a94.jpg', '1', '64765', '1', '1519542206', '1', '0');
INSERT INTO `tp_attachment` VALUES ('540', '20175620600_400 (1).jpg', '/uploads/img1/20180225/5a9260a60d4b3.jpg', '1', '43685', '1', '1519542438', '1', '0');
INSERT INTO `tp_attachment` VALUES ('541', '201712062011092819300370203137[1].jpg', '/uploads/img1/20180225/5a9260a913ef4.jpg', '1', '72697', '1', '1519542441', '1', '0');
INSERT INTO `tp_attachment` VALUES ('542', '201712062011092819301370213041[1].jpg', '/uploads/img1/20180225/5a9260abe9c8f.jpg', '1', '84050', '1', '1519542443', '1', '0');
INSERT INTO `tp_attachment` VALUES ('543', '20175620600_400.jpg', '/uploads/img1/20180225/5a9260afb15d0.jpg', '1', '43685', '1', '1519542447', '1', '0');
INSERT INTO `tp_attachment` VALUES ('544', '201731092013050611144040480353.jpg', '/uploads/img1/20180305/5a9ca4e239af0.jpg', '1', '91950', '1', '1520215266', '1', '0');
INSERT INTO `tp_attachment` VALUES ('545', '201731092012110810391238352845.jpg', '/uploads/img1/20180305/5a9ca4e78c89f.jpg', '1', '119166', '1', '1520215271', '1', '0');
INSERT INTO `tp_attachment` VALUES ('546', '201731092012051117405663656265.jpg', '/uploads/img1/20180305/5a9ca4e9f389b.jpg', '1', '88393', '1', '1520215274', '1', '0');
INSERT INTO `tp_attachment` VALUES ('547', '201731092011092819104069040305.jpg', '/uploads/img1/20180305/5a9ca4ed5fdd1.jpg', '1', '81452', '1', '1520215277', '1', '0');
INSERT INTO `tp_attachment` VALUES ('548', '201731092013050611145840498465.jpg', '/uploads/img1/20180305/5a9ca51c29e3d.jpg', '1', '102378', '1', '1520215324', '1', '0');
INSERT INTO `tp_attachment` VALUES ('549', '20174013111.jpg', '/uploads/img1/20180305/5a9ca71720e70.jpg', '1', '627409', '1', '1520215831', '1', '0');
INSERT INTO `tp_attachment` VALUES ('550', '20174013微信图片_20170609141946.jpg', '/uploads/img1/20180305/5a9ca7192b6c2.jpg', '1', '295241', '1', '1520215833', '1', '0');
INSERT INTO `tp_attachment` VALUES ('551', '20174013微信图片_20170609141906.jpg', '/uploads/img1/20180305/5a9ca71e147ea.jpg', '1', '211091', '1', '1520215838', '1', '0');
INSERT INTO `tp_attachment` VALUES ('552', '20174013微信图片_20170609141821.jpg', '/uploads/img1/20180305/5a9ca7202b2c8.jpg', '1', '107412', '1', '1520215840', '1', '0');
INSERT INTO `tp_attachment` VALUES ('553', '20174013微信图片_20170609141919.jpg', '/uploads/img1/20180305/5a9ca722931e3.jpg', '1', '159238', '1', '1520215842', '1', '0');
INSERT INTO `tp_attachment` VALUES ('554', '2017150620111026111226268[1].jpg', '/uploads/img1/20180305/5a9ca87d81e1f.jpg', '1', '78869', '1', '1520216189', '1', '0');
INSERT INTO `tp_attachment` VALUES ('555', '201715062011102611124240362001[1].jpg', '/uploads/img1/20180305/5a9ca87f9fcbf.jpg', '1', '73916', '1', '1520216191', '1', '0');
INSERT INTO `tp_attachment` VALUES ('556', '201715062011102611124940369657[1].jpg', '/uploads/img1/20180305/5a9ca88162adb.jpg', '1', '93499', '1', '1520216193', '1', '0');
INSERT INTO `tp_attachment` VALUES ('557', '201715062011102611125540375329[1].jpg', '/uploads/img1/20180305/5a9ca8832490e.jpg', '1', '64826', '1', '1520216195', '1', '0');
INSERT INTO `tp_attachment` VALUES ('558', '201715062011102611130140381721[1].jpg', '/uploads/img1/20180305/5a9ca8873b999.jpg', '1', '80644', '1', '1520216199', '1', '0');
INSERT INTO `tp_attachment` VALUES ('559', '20170101IMG_7692.JPG', '/uploads/img1/20180305/5a9ca93fc5b03.JPG', '0', '231295', '1', '1520216383', '1', '0');
INSERT INTO `tp_attachment` VALUES ('560', '20170101IMG_7712-.jpg', '/uploads/img1/20180305/5a9ca94238602.jpg', '1', '221869', '1', '1520216386', '1', '0');
INSERT INTO `tp_attachment` VALUES ('561', '20170101IMG_7752.JPG', '/uploads/img1/20180305/5a9ca9432cd93.JPG', '0', '203814', '1', '1520216387', '1', '0');
INSERT INTO `tp_attachment` VALUES ('562', '20170101IMG_7760.JPG', '/uploads/img1/20180305/5a9ca944453ba.JPG', '0', '218327', '1', '1520216388', '1', '0');
INSERT INTO `tp_attachment` VALUES ('563', '20170101IMG_7764.JPG', '/uploads/img1/20180305/5a9ca947a52d3.JPG', '0', '214266', '1', '1520216391', '1', '0');
INSERT INTO `tp_attachment` VALUES ('564', '20171601640.webp (3).jpg', '/uploads/img1/20180305/5a9ca9e81bcb5.jpg', '1', '77536', '1', '1520216552', '1', '0');
INSERT INTO `tp_attachment` VALUES ('565', '20171601640.webp (4).jpg', '/uploads/img1/20180305/5a9ca9e9c760c.jpg', '1', '75656', '1', '1520216553', '1', '0');
INSERT INTO `tp_attachment` VALUES ('566', '20171601640.webp (8).jpg', '/uploads/img1/20180305/5a9ca9ed31257.jpg', '1', '63734', '1', '1520216557', '1', '0');
INSERT INTO `tp_attachment` VALUES ('567', '20171601640.webp (10).jpg', '/uploads/img1/20180305/5a9ca9f00b2de.jpg', '1', '51512', '1', '1520216560', '1', '0');
INSERT INTO `tp_attachment` VALUES ('568', '20171601640.webp (9).jpg', '/uploads/img1/20180305/5a9ca9f3493a5.jpg', '1', '58947', '1', '1520216563', '1', '0');
INSERT INTO `tp_attachment` VALUES ('569', '20150819IMG_1213.JPG', '/uploads/img1/20180305/5a9caa7fd3e62.JPG', '0', '415677', '1', '1520216703', '1', '0');
INSERT INTO `tp_attachment` VALUES ('570', '20150819IMG_1149.JPG', '/uploads/img1/20180305/5a9caa87a5e41.JPG', '0', '460428', '1', '1520216711', '1', '0');
INSERT INTO `tp_attachment` VALUES ('571', '20150819IMG_1145.JPG', '/uploads/img1/20180305/5a9caa899d906.JPG', '0', '517246', '1', '1520216713', '1', '0');
INSERT INTO `tp_attachment` VALUES ('572', '20150819IMG_1137.JPG', '/uploads/img1/20180305/5a9caa8c36ee6.JPG', '0', '570333', '1', '1520216716', '1', '0');
INSERT INTO `tp_attachment` VALUES ('573', '20150819IMG_1141.JPG', '/uploads/img1/20180305/5a9caa8e10908.JPG', '0', '568012', '1', '1520216718', '1', '0');
INSERT INTO `tp_attachment` VALUES ('574', '20153409DSC00915.JPG', '/uploads/img1/20180305/5a9cab222c606.JPG', '0', '339574', '1', '1520216866', '1', '0');
INSERT INTO `tp_attachment` VALUES ('575', '20153409DSC00908.JPG', '/uploads/img1/20180305/5a9cab2791d20.JPG', '0', '314951', '1', '1520216871', '1', '0');
INSERT INTO `tp_attachment` VALUES ('576', '20153409DSC00906.JPG', '/uploads/img1/20180305/5a9cab298b2e5.JPG', '0', '275510', '1', '1520216873', '1', '0');
INSERT INTO `tp_attachment` VALUES ('577', '20153409DSC00911.JPG', '/uploads/img1/20180305/5a9cab2b0fd6e.JPG', '0', '291774', '1', '1520216875', '1', '0');
INSERT INTO `tp_attachment` VALUES ('578', '20173701201415253338cz.jpg', '/uploads/img1/20180305/5a9cabab960b8.jpg', '1', '56011', '1', '1520217003', '1', '0');
INSERT INTO `tp_attachment` VALUES ('579', '20173701201415253.jpg', '/uploads/img1/20180305/5a9cabaed71df.jpg', '1', '118010', '1', '1520217006', '1', '0');
INSERT INTO `tp_attachment` VALUES ('580', '2017370120141525移动售楼车外观.jpg', '/uploads/img1/20180305/5a9cabb060700.jpg', '1', '117450', '1', '1520217008', '1', '0');
INSERT INTO `tp_attachment` VALUES ('581', '20173701201415251.jpg', '/uploads/img1/20180305/5a9cabb1de9e2.jpg', '1', '120627', '1', '1520217009', '1', '0');
INSERT INTO `tp_attachment` VALUES ('582', '20173701201415252.jpg', '/uploads/img1/20180305/5a9cabb35e0fe.jpg', '1', '71805', '1', '1520217011', '1', '0');
INSERT INTO `tp_attachment` VALUES ('583', '20145604jinlong8.jpg', '/uploads/img1/20180305/5a9cabf5200f7.jpg', '1', '87795', '1', '1520217077', '1', '0');
INSERT INTO `tp_attachment` VALUES ('584', '201458041(2).jpg', '/uploads/img1/20180305/5a9cabf961aa1.jpg', '1', '249583', '1', '1520217081', '1', '0');
INSERT INTO `tp_attachment` VALUES ('585', '2014580422.jpg', '/uploads/img1/20180305/5a9cabfa7caa1.jpg', '1', '229722', '1', '1520217082', '1', '0');
INSERT INTO `tp_attachment` VALUES ('586', '2014580433.jpg', '/uploads/img1/20180305/5a9cabfd4a68f.jpg', '1', '243452', '1', '1520217085', '1', '0');
INSERT INTO `tp_attachment` VALUES ('587', '20140025移动售楼车外观.jpg', '/uploads/img1/20180305/5a9caca4b5286.jpg', '1', '70975', '1', '1520217252', '1', '0');
INSERT INTO `tp_attachment` VALUES ('588', '201402251.jpg', '/uploads/img1/20180305/5a9caca71a1f6.jpg', '1', '85944', '1', '1520217255', '1', '0');
INSERT INTO `tp_attachment` VALUES ('589', '201424252008712101647.jpg', '/uploads/img1/20180305/5a9cacd312bd2.jpg', '1', '80853', '1', '1520217299', '1', '0');
INSERT INTO `tp_attachment` VALUES ('590', '20142225DSC_0058_改.jpg', '/uploads/img1/20180305/5a9cacd5d389e.jpg', '1', '296680', '1', '1520217301', '1', '0');
INSERT INTO `tp_attachment` VALUES ('591', '20142225DSC_0045-改.jpg', '/uploads/img1/20180305/5a9cacd74e259.jpg', '1', '218457', '1', '1520217303', '1', '0');
INSERT INTO `tp_attachment` VALUES ('592', '20142225DSC_0046-改.jpg', '/uploads/img1/20180305/5a9cacd9114f6.jpg', '1', '247003', '1', '1520217305', '1', '0');
INSERT INTO `tp_attachment` VALUES ('593', '20175931IMG_2565_副本.jpg', '/uploads/img1/20180305/5a9cadb8b9b90.jpg', '1', '176478', '1', '1520217528', '1', '0');
INSERT INTO `tp_attachment` VALUES ('594', '20170712DSC00379.jpg', '/uploads/img1/20180305/5a9cadbbefe1b.jpg', '1', '593854', '1', '1520217532', '1', '0');
INSERT INTO `tp_attachment` VALUES ('595', '20170712DSC00381.jpg', '/uploads/img1/20180305/5a9cadbe29dc0.jpg', '1', '594862', '1', '1520217534', '1', '0');
INSERT INTO `tp_attachment` VALUES ('596', '20170712DSC00382.JPG', '/uploads/img1/20180305/5a9cadc02c81e.JPG', '0', '741072', '1', '1520217536', '1', '0');
INSERT INTO `tp_attachment` VALUES ('597', '20170712DSC00410.JPG', '/uploads/img1/20180305/5a9cadc1e3b06.JPG', '0', '731609', '1', '1520217537', '1', '0');
INSERT INTO `tp_attachment` VALUES ('598', '20172806201193014336135[1].jpg', '/uploads/img1/20180305/5a9cae3d7a448.jpg', '1', '66512', '1', '1520217661', '1', '0');
INSERT INTO `tp_attachment` VALUES ('599', '201728062011093014332752407773[1].jpg', '/uploads/img1/20180305/5a9cae3f12239.jpg', '1', '97214', '1', '1520217663', '1', '0');
INSERT INTO `tp_attachment` VALUES ('600', '201728062011093014333552415477[1].jpg', '/uploads/img1/20180305/5a9cae40b2861.jpg', '1', '96981', '1', '1520217664', '1', '0');
INSERT INTO `tp_attachment` VALUES ('601', '201728062011093014334952429945[1].jpg', '/uploads/img1/20180305/5a9cae4234767.jpg', '1', '99179', '1', '1520217666', '1', '0');
INSERT INTO `tp_attachment` VALUES ('602', '201743062011928194440424[1].jpg', '/uploads/img1/20180305/5a9caeb1af156.jpg', '1', '70511', '1', '1520217777', '1', '0');
INSERT INTO `tp_attachment` VALUES ('603', '201743062011092819445071090649[1].jpg', '/uploads/img1/20180305/5a9caeb55865b.jpg', '1', '104752', '1', '1520217781', '1', '0');
INSERT INTO `tp_attachment` VALUES ('604', '201743062011092820065072410793[1].jpg', '/uploads/img1/20180305/5a9caeb706ff2.jpg', '1', '84909', '1', '1520217783', '1', '0');
INSERT INTO `tp_attachment` VALUES ('605', '201743062011092819450371103321[1].jpg', '/uploads/img1/20180305/5a9caeba4bbbb.jpg', '1', '81481', '1', '1520217786', '1', '0');
INSERT INTO `tp_attachment` VALUES ('606', '201743062011092819460071160977[1].jpg', '/uploads/img1/20180305/5a9caebbdcaa9.jpg', '1', '58525', '1', '1520217787', '1', '0');
INSERT INTO `tp_attachment` VALUES ('607', '201734062011092820041972259945[1].jpg', '/uploads/img1/20180305/5a9caf55e9c5f.jpg', '1', '84996', '1', '1520217941', '1', '0');
INSERT INTO `tp_attachment` VALUES ('608', '20173406201192820358355[1].jpg', '/uploads/img1/20180305/5a9caf578e857.jpg', '1', '107832', '1', '1520217943', '1', '0');
INSERT INTO `tp_attachment` VALUES ('609', '201734062011092820043072270105[1].jpg', '/uploads/img1/20180305/5a9caf5b4dbe8.jpg', '1', '89151', '1', '1520217947', '1', '0');
INSERT INTO `tp_attachment` VALUES ('610', '201734062011092820044572285497[1].jpg', '/uploads/img1/20180305/5a9caf5ca0331.jpg', '1', '102373', '1', '1520217948', '1', '0');
INSERT INTO `tp_attachment` VALUES ('611', '201734062011092820065072410793[1].jpg', '/uploads/img1/20180305/5a9caf5e0f37d.jpg', '1', '84909', '1', '1520217950', '1', '0');
INSERT INTO `tp_attachment` VALUES ('612', '201747062011930102733717[1].jpg', '/uploads/img1/20180305/5a9cafbf9148f.jpg', '1', '63559', '1', '1520218047', '1', '0');
INSERT INTO `tp_attachment` VALUES ('613', '201747062011093010280237682149[1].jpg', '/uploads/img1/20180305/5a9cafc35fd28.jpg', '1', '86131', '1', '1520218051', '1', '0');
INSERT INTO `tp_attachment` VALUES ('614', '201747062011093010282437704273[1].jpg', '/uploads/img1/20180305/5a9cafc55c754.jpg', '1', '91592', '1', '1520218053', '1', '0');
INSERT INTO `tp_attachment` VALUES ('615', '201747062011093010301737817369[1].jpg', '/uploads/img1/20180305/5a9cafc748da6.jpg', '1', '87325', '1', '1520218055', '1', '0');
INSERT INTO `tp_attachment` VALUES ('616', '201747062011093010295737797961[1].jpg', '/uploads/img1/20180305/5a9cafc8caa55.jpg', '1', '83657', '1', '1520218056', '1', '0');
INSERT INTO `tp_attachment` VALUES ('617', '2017390620111125162149201[1].jpg', '/uploads/img1/20180305/5a9cb01b1b67e.jpg', '1', '72167', '1', '1520218139', '1', '0');
INSERT INTO `tp_attachment` VALUES ('618', '201739062011112516221258932065[1].jpg', '/uploads/img1/20180305/5a9cb01cbbc65.jpg', '1', '82611', '1', '1520218140', '1', '0');
INSERT INTO `tp_attachment` VALUES ('619', '201739062011112516220458924265[1].jpg', '/uploads/img1/20180305/5a9cb02000a20.jpg', '1', '66912', '1', '1520218144', '1', '0');
INSERT INTO `tp_attachment` VALUES ('620', '201739062011112516222058940705[1].jpg', '/uploads/img1/20180305/5a9cb021b7c21.jpg', '1', '85215', '1', '1520218145', '1', '0');
INSERT INTO `tp_attachment` VALUES ('621', '201739062011112516222958949877[1].jpg', '/uploads/img1/20180305/5a9cb02a6b66c.jpg', '1', '88854', '1', '1520218154', '1', '0');
INSERT INTO `tp_attachment` VALUES ('622', '201739062011112516224058960861[1].jpg', '/uploads/img1/20180305/5a9cb02c87467.jpg', '1', '85338', '1', '1520218156', '1', '0');
INSERT INTO `tp_attachment` VALUES ('623', '20175506201252516554190[1].jpg', '/uploads/img1/20180305/5a9cb0dad84c9.jpg', '1', '177052', '1', '1520218330', '1', '0');
INSERT INTO `tp_attachment` VALUES ('624', '201755062011092818291566555945[1].jpg', '/uploads/img1/20180305/5a9cb0dc5ccf0.jpg', '1', '100371', '1', '1520218332', '1', '0');
INSERT INTO `tp_attachment` VALUES ('625', '201755062011092820065072410793[1].jpg', '/uploads/img1/20180305/5a9cb0dd6c6f0.jpg', '1', '84909', '1', '1520218333', '1', '0');
INSERT INTO `tp_attachment` VALUES ('626', '201755062011092911480042480821[1].jpg', '/uploads/img1/20180305/5a9cb0dedf8a2.jpg', '1', '86234', '1', '1520218334', '1', '0');
INSERT INTO `tp_attachment` VALUES ('627', '201755062011092911481542495289[1].jpg', '/uploads/img1/20180305/5a9cb0e02f2fa.jpg', '1', '94818', '1', '1520218336', '1', '0');
INSERT INTO `tp_attachment` VALUES ('628', '201704062011928191941660[1].jpg', '/uploads/img1/20180305/5a9cb14c11311.jpg', '1', '72992', '1', '1520218444', '1', '0');
INSERT INTO `tp_attachment` VALUES ('629', '201704062011092820065072410793[1].jpg', '/uploads/img1/20180305/5a9cb14eee2d1.jpg', '1', '84909', '1', '1520218446', '1', '0');
INSERT INTO `tp_attachment` VALUES ('630', '201704062011092819205069650225[1].jpg', '/uploads/img1/20180305/5a9cb1508b2d5.jpg', '1', '96708', '1', '1520218448', '1', '0');
INSERT INTO `tp_attachment` VALUES ('631', '201704062011092819195369593929[1].jpg', '/uploads/img1/20180305/5a9cb15205bf1.jpg', '1', '84674', '1', '1520218450', '1', '0');
INSERT INTO `tp_attachment` VALUES ('632', '201704062011092819201969619153[1].jpg', '/uploads/img1/20180305/5a9cb15428cf0.jpg', '1', '70036', '1', '1520218452', '1', '0');
INSERT INTO `tp_attachment` VALUES ('633', '201709092012511173944536.jpg', '/uploads/img1/20180305/5a9cb22d87ee9.jpg', '1', '82996', '1', '1520218669', '1', '0');
INSERT INTO `tp_attachment` VALUES ('634', '201709092011092819210069660601.jpg', '/uploads/img1/20180305/5a9cb231063a9.jpg', '1', '64034', '1', '1520218673', '1', '0');
INSERT INTO `tp_attachment` VALUES ('635', '201709092011092819381670696761.jpg', '/uploads/img1/20180305/5a9cb23262b2d.jpg', '1', '108933', '1', '1520218674', '1', '0');
INSERT INTO `tp_attachment` VALUES ('636', '201709092011092819384070720977.jpg', '/uploads/img1/20180305/5a9cb233b5982.jpg', '1', '81800', '1', '1520218675', '1', '0');
INSERT INTO `tp_attachment` VALUES ('637', '201709092012110810393538375681.jpg', '/uploads/img1/20180305/5a9cb2368ba1b.jpg', '1', '123379', '1', '1520218678', '1', '0');
INSERT INTO `tp_attachment` VALUES ('638', '20175401IMG_5849.jpg', '/uploads/img1/20180305/5a9cb29a98939.jpg', '1', '140131', '1', '1520218778', '1', '0');
INSERT INTO `tp_attachment` VALUES ('639', '20175601DSC_0179.jpg', '/uploads/img1/20180305/5a9cb29d5ade9.jpg', '1', '123663', '1', '1520218781', '1', '0');
INSERT INTO `tp_attachment` VALUES ('640', '20175601DSC_0184.jpg', '/uploads/img1/20180305/5a9cb29eb6042.jpg', '1', '257957', '1', '1520218782', '1', '0');
INSERT INTO `tp_attachment` VALUES ('641', '20175601DSC_0215.jpg', '/uploads/img1/20180305/5a9cb2a0a6d11.jpg', '1', '314171', '1', '1520218784', '1', '0');
INSERT INTO `tp_attachment` VALUES ('642', '20175601IMG_5825.jpg', '/uploads/img1/20180305/5a9cb2a1ebaf9.jpg', '1', '283435', '1', '1520218785', '1', '0');
INSERT INTO `tp_attachment` VALUES ('643', '201741092012118103852459.jpg', '/uploads/img1/20180305/5a9cb357cb327.jpg', '1', '116824', '1', '1520218967', '1', '0');
INSERT INTO `tp_attachment` VALUES ('644', '201741092011092818285066530917.jpg', '/uploads/img1/20180305/5a9cb3594fcb2.jpg', '1', '90102', '1', '1520218969', '1', '0');
INSERT INTO `tp_attachment` VALUES ('645', '201741092011092818291566555945.jpg', '/uploads/img1/20180305/5a9cb35b1e1aa.jpg', '1', '97900', '1', '1520218971', '1', '0');
INSERT INTO `tp_attachment` VALUES ('646', '201741092011092818304066640525.jpg', '/uploads/img1/20180305/5a9cb35e1b856.jpg', '1', '75030', '1', '1520218974', '1', '0');
INSERT INTO `tp_attachment` VALUES ('647', '201741092011092818331566795025.jpg', '/uploads/img1/20180305/5a9cb362a14ae.jpg', '1', '60339', '1', '1520218978', '1', '0');
INSERT INTO `tp_attachment` VALUES ('648', '201722092012118104854952.jpg', '/uploads/img1/20180305/5a9cb3c12d604.jpg', '1', '68010', '1', '1520219073', '1', '0');
INSERT INTO `tp_attachment` VALUES ('649', '201722092011092819305970259321.jpg', '/uploads/img1/20180305/5a9cb3c362f94.jpg', '1', '72170', '1', '1520219075', '1', '0');
INSERT INTO `tp_attachment` VALUES ('650', '201722092011092819200269602137.jpg', '/uploads/img1/20180305/5a9cb3c5448bc.jpg', '1', '70486', '1', '1520219077', '1', '0');
INSERT INTO `tp_attachment` VALUES ('651', '201722092011092819201069610369.jpg', '/uploads/img1/20180305/5a9cb3c7a3c94.jpg', '1', '75720', '1', '1520219079', '1', '0');
INSERT INTO `tp_attachment` VALUES ('652', '201722092011092819201969619153.jpg', '/uploads/img1/20180305/5a9cb3c9af7ca.jpg', '1', '67112', '1', '1520219081', '1', '0');
INSERT INTO `tp_attachment` VALUES ('653', '201736313.1.jpg', '/uploads/img1/20180305/5a9cb422e1612.jpg', '1', '78618', '1', '1520219170', '1', '0');
INSERT INTO `tp_attachment` VALUES ('654', '201736313.2.jpg', '/uploads/img1/20180305/5a9cb42431a8b.jpg', '1', '81440', '1', '1520219172', '1', '0');
INSERT INTO `tp_attachment` VALUES ('655', '201736313.3.jpg', '/uploads/img1/20180305/5a9cb42591353.jpg', '1', '79057', '1', '1520219173', '1', '0');
INSERT INTO `tp_attachment` VALUES ('656', '201736313.4.jpg', '/uploads/img1/20180305/5a9cb426d20f9.jpg', '1', '44213', '1', '1520219174', '1', '0');
INSERT INTO `tp_attachment` VALUES ('657', '20144228IMG_7378.JPG', '/uploads/img1/20180305/5a9cb46459c67.JPG', '0', '1252419', '1', '1520219236', '1', '0');
INSERT INTO `tp_attachment` VALUES ('658', '20142128电视p一下.jpg', '/uploads/img1/20180305/5a9cb464d458d.jpg', '1', '117093', '1', '1520219236', '1', '0');
INSERT INTO `tp_attachment` VALUES ('659', '201415283.jpg', '/uploads/img1/20180305/5a9cb466b4a61.jpg', '1', '84540', '1', '1520219238', '1', '0');
INSERT INTO `tp_attachment` VALUES ('660', '201442284.jpg', '/uploads/img1/20180305/5a9cb46b1b585.jpg', '1', '84147', '1', '1520219243', '1', '0');
INSERT INTO `tp_attachment` VALUES ('661', '20144228IMG_7378.JPG', '/uploads/img1/20180305/5a9cb499afbcc.JPG', '0', '1252419', '1', '1520219289', '1', '0');
INSERT INTO `tp_attachment` VALUES ('662', '20142128电视p一下.jpg', '/uploads/img1/20180305/5a9cb49b9df4d.jpg', '1', '117093', '1', '1520219291', '1', '0');
INSERT INTO `tp_attachment` VALUES ('663', '201415283.jpg', '/uploads/img1/20180305/5a9cb49d8237a.jpg', '1', '84540', '1', '1520219293', '1', '0');
INSERT INTO `tp_attachment` VALUES ('664', '201442284.jpg', '/uploads/img1/20180305/5a9cb49f1345e.jpg', '1', '84147', '1', '1520219295', '1', '0');
INSERT INTO `tp_attachment` VALUES ('665', '201409192009040217455868524.jpg', '/uploads/img1/20180305/5a9cb4f659993.jpg', '1', '48757', '1', '1520219382', '1', '0');
INSERT INTO `tp_attachment` VALUES ('666', '20140919图片1.jpg', '/uploads/img1/20180305/5a9cb4f9c0804.jpg', '1', '114259', '1', '1520219385', '1', '0');
INSERT INTO `tp_attachment` VALUES ('667', '20140919图片2.jpg', '/uploads/img1/20180305/5a9cb4fb2e5f4.jpg', '1', '121502', '1', '1520219387', '1', '0');
INSERT INTO `tp_attachment` VALUES ('668', '20140919图片3.jpg', '/uploads/img1/20180305/5a9cb4fc9968f.jpg', '1', '105902', '1', '1520219388', '1', '0');
INSERT INTO `tp_attachment` VALUES ('669', '20140919图片4.jpg', '/uploads/img1/20180305/5a9cb4fe18fba.jpg', '1', '100038', '1', '1520219390', '1', '0');
INSERT INTO `tp_attachment` VALUES ('670', '20144818ZIF_7252.JPG', '/uploads/img1/20180305/5a9cb54167c6f.JPG', '0', '329673', '1', '1520219457', '1', '0');
INSERT INTO `tp_attachment` VALUES ('671', '20144818ZIF_7175.JPG', '/uploads/img1/20180305/5a9cb544458c6.JPG', '0', '440302', '1', '1520219460', '1', '0');
INSERT INTO `tp_attachment` VALUES ('672', '20144818ZIF_7180.JPG', '/uploads/img1/20180305/5a9cb545e5f0e.JPG', '0', '318987', '1', '1520219461', '1', '0');
INSERT INTO `tp_attachment` VALUES ('673', '20144818ZIF_7192.JPG', '/uploads/img1/20180305/5a9cb5474d93c.JPG', '0', '426017', '1', '1520219463', '1', '0');
INSERT INTO `tp_attachment` VALUES ('674', '20144818ZIF_7194.JPG', '/uploads/img1/20180305/5a9cb54ab8264.JPG', '0', '428068', '1', '1520219466', '1', '0');
INSERT INTO `tp_attachment` VALUES ('675', '20145818大巴房车外观图.JPG', '/uploads/img1/20180305/5a9cb59d1d04a.JPG', '0', '308832', '1', '1520219549', '1', '0');
INSERT INTO `tp_attachment` VALUES ('676', '20145818大巴房车顶置空调.JPG', '/uploads/img1/20180305/5a9cb59ebd6c4.JPG', '0', '405363', '1', '1520219550', '1', '0');
INSERT INTO `tp_attachment` VALUES ('677', '20145818大巴房车内饰图1.jpg', '/uploads/img1/20180305/5a9cb5a05d115.jpg', '1', '100235', '1', '1520219552', '1', '0');
INSERT INTO `tp_attachment` VALUES ('678', '20145818大巴房车内饰图2.jpg', '/uploads/img1/20180305/5a9cb5a24d759.jpg', '1', '117399', '1', '1520219554', '1', '0');
INSERT INTO `tp_attachment` VALUES ('679', '20145818大巴房车内饰图3.jpg', '/uploads/img1/20180305/5a9cb5a3c7ae1.jpg', '1', '88484', '1', '1520219555', '1', '0');
INSERT INTO `tp_attachment` VALUES ('680', '2014252513_P_1348305568740.jpg', '/uploads/img1/20180305/5a9cb5e14602e.jpg', '1', '664479', '1', '1520219617', '1', '0');
INSERT INTO `tp_attachment` VALUES ('681', '201218062.jpg', '/uploads/img1/20180305/5a9cb5e3ede56.jpg', '1', '39730', '1', '1520219619', '1', '0');
INSERT INTO `tp_attachment` VALUES ('682', '201218063.jpg', '/uploads/img1/20180305/5a9cb5e549cb1.jpg', '1', '40804', '1', '1520219621', '1', '0');
INSERT INTO `tp_attachment` VALUES ('683', '201218064.jpg', '/uploads/img1/20180305/5a9cb5e6bb61b.jpg', '1', '40108', '1', '1520219622', '1', '0');
INSERT INTO `tp_attachment` VALUES ('684', '2016371811.jpg', '/uploads/img1/20180305/5a9cb67cd7def.jpg', '1', '69833', '1', '1520219772', '1', '0');
INSERT INTO `tp_attachment` VALUES ('685', '2016371811.jpg', '/uploads/img1/20180305/5a9cb729848de.jpg', '1', '69833', '1', '1520219945', '1', '0');
INSERT INTO `tp_attachment` VALUES ('686', '20175713Still0725_00003.jpg', '/uploads/img1/20180305/5a9cb72c474bf.jpg', '1', '467827', '1', '1520219948', '1', '0');
INSERT INTO `tp_attachment` VALUES ('687', '20175713Still0725_00006.jpg', '/uploads/img1/20180305/5a9cb72d8feef.jpg', '1', '358439', '1', '1520219949', '1', '0');
INSERT INTO `tp_attachment` VALUES ('688', '20175713Still0725_00015_副本.jpg', '/uploads/img1/20180305/5a9cb72f24fff.jpg', '1', '406957', '1', '1520219951', '1', '0');
INSERT INTO `tp_attachment` VALUES ('689', '2016371811.jpg', '/uploads/img1/20180305/5a9cb7d7c5ed5.jpg', '1', '69833', '1', '1520220119', '1', '0');
INSERT INTO `tp_attachment` VALUES ('690', '20175713Still0725_00003.jpg', '/uploads/img1/20180305/5a9cb7dce8570.jpg', '1', '467827', '1', '1520220124', '1', '0');
INSERT INTO `tp_attachment` VALUES ('691', '20175713Still0725_00006.jpg', '/uploads/img1/20180305/5a9cb7de361c2.jpg', '1', '358439', '1', '1520220126', '1', '0');
INSERT INTO `tp_attachment` VALUES ('692', '20175713Still0725_00015_副本.jpg', '/uploads/img1/20180305/5a9cb7e02a1f1.jpg', '1', '406957', '1', '1520220128', '1', '0');
INSERT INTO `tp_attachment` VALUES ('693', '20170312201723062011127164033296[1].jpg', '/uploads/img1/20180305/5a9cb8599d167.jpg', '1', '152833', '1', '1520220249', '1', '0');
INSERT INTO `tp_attachment` VALUES ('694', '201723062011092820180673086241[1].jpg', '/uploads/img1/20180305/5a9cb85ba114e.jpg', '1', '59285', '1', '1520220251', '1', '0');
INSERT INTO `tp_attachment` VALUES ('695', '201723062011092820181673096665[1].jpg', '/uploads/img1/20180305/5a9cb85faf495.jpg', '1', '55788', '1', '1520220255', '1', '0');
INSERT INTO `tp_attachment` VALUES ('696', '201723062011092820182673106289[1].jpg', '/uploads/img1/20180305/5a9cb860d565b.jpg', '1', '60911', '1', '1520220256', '1', '0');
INSERT INTO `tp_attachment` VALUES ('697', '201723062011092820183573115273[1].jpg', '/uploads/img1/20180305/5a9cb8633a4a8.jpg', '1', '60339', '1', '1520220259', '1', '0');
INSERT INTO `tp_attachment` VALUES ('698', '20145321IMG_20140819_095716.jpg', '/uploads/img1/20180305/5a9cb8b0acd32.jpg', '1', '531537', '1', '1520220336', '1', '0');
INSERT INTO `tp_attachment` VALUES ('699', '20145221IMG_20140819_095136.jpg', '/uploads/img1/20180305/5a9cb8b2f407e.jpg', '1', '509522', '1', '1520220339', '1', '0');
INSERT INTO `tp_attachment` VALUES ('700', '20145221IMG_20140819_094944.jpg', '/uploads/img1/20180305/5a9cb8b5409e6.jpg', '1', '456253', '1', '1520220341', '1', '0');
INSERT INTO `tp_attachment` VALUES ('701', '20145221IMG_20140819_094432.jpg', '/uploads/img1/20180305/5a9cb8b70f2a7.jpg', '1', '252509', '1', '1520220343', '1', '0');
INSERT INTO `tp_attachment` VALUES ('702', '20145221IMG_20140819_094314-2.jpg', '/uploads/img1/20180305/5a9cb8b87604a.jpg', '1', '264143', '1', '1520220344', '1', '0');
INSERT INTO `tp_attachment` VALUES ('703', '201718062011092820121172731337[1].jpg', '/uploads/img1/20180305/5a9cb8fbca7f7.jpg', '1', '88247', '1', '1520220411', '1', '0');
INSERT INTO `tp_attachment` VALUES ('704', '201718062011928201154969[1].jpg', '/uploads/img1/20180305/5a9cb900a0bac.jpg', '1', '76768', '1', '1520220416', '1', '0');
INSERT INTO `tp_attachment` VALUES ('705', '201718062011092820121172731337[1].jpg', '/uploads/img1/20180305/5a9cb90240d08.jpg', '1', '88247', '1', '1520220418', '1', '0');
INSERT INTO `tp_attachment` VALUES ('706', '201718062011092820122572745745[1].jpg', '/uploads/img1/20180305/5a9cb903911c7.jpg', '1', '71591', '1', '1520220419', '1', '0');
INSERT INTO `tp_attachment` VALUES ('707', '201718062011092820123572755945[1].jpg', '/uploads/img1/20180305/5a9cb904a52cc.jpg', '1', '62649', '1', '1520220420', '1', '0');
INSERT INTO `tp_attachment` VALUES ('708', '201718062011092820125072770601[1].jpg', '/uploads/img1/20180305/5a9cb90635a65.jpg', '1', '72414', '1', '1520220422', '1', '0');
INSERT INTO `tp_attachment` VALUES ('709', '20150809采血车.jpg', '/uploads/img1/20180305/5a9cb99196b42.jpg', '1', '159965', '1', '1520220561', '1', '0');
INSERT INTO `tp_attachment` VALUES ('710', '20150809IMG_4123.JPG', '/uploads/img1/20180305/5a9cb994107a3.JPG', '0', '340025', '1', '1520220564', '1', '0');
INSERT INTO `tp_attachment` VALUES ('711', '20150809IMG_4201.JPG', '/uploads/img1/20180305/5a9cb996059e9.JPG', '0', '350172', '1', '1520220566', '1', '0');
INSERT INTO `tp_attachment` VALUES ('712', '20145418献血车图片1.jpg', '/uploads/img1/20180305/5a9cb9d873828.jpg', '1', '59896', '1', '1520220632', '1', '0');
INSERT INTO `tp_attachment` VALUES ('713', '20145418献血车图片2.jpg', '/uploads/img1/20180305/5a9cb9dad307a.jpg', '1', '72942', '1', '1520220634', '1', '0');
INSERT INTO `tp_attachment` VALUES ('714', '20145418献血车图片3.jpg', '/uploads/img1/20180305/5a9cb9dc64540.jpg', '1', '57433', '1', '1520220636', '1', '0');
INSERT INTO `tp_attachment` VALUES ('715', '20145418献血车图片4.jpg', '/uploads/img1/20180305/5a9cb9dd8e3d7.jpg', '1', '103309', '1', '1520220637', '1', '0');
INSERT INTO `tp_attachment` VALUES ('716', '201415253338cz.jpg', '/uploads/img1/20180305/5a9cc1dd7e204.jpg', '1', '48045', '1', '1520222685', '1', '0');
INSERT INTO `tp_attachment` VALUES ('717', '201402221.jpg', '/uploads/img1/20180305/5a9cc21d2ed75.jpg', '1', '156683', '1', '1520222749', '1', '0');
INSERT INTO `tp_attachment` VALUES ('718', '20165919Still0725_00000_gaitubao_com__gaitubao_com_1067x600.', '/uploads/img1/20180305/5a9cc5fb0432f.jpg', '1', '259050', '1', '1520223739', '1', '0');
INSERT INTO `tp_attachment` VALUES ('719', '20165919Still0725_00000_gaitubao_com__gaitubao_com_1067x600.', '/uploads/img1/20180305/5a9cc62b62ea5.jpg', '1', '259050', '1', '1520223787', '1', '0');
INSERT INTO `tp_attachment` VALUES ('720', '20180305030959_53478_副本.jpg', '/uploads/img1/20180305/5a9cc93d4b49f.jpg', '1', '136554', '1', '1520224573', '1', '0');
INSERT INTO `tp_attachment` VALUES ('721', '20180305040407_47103_副本.jpg', '/uploads/img1/20180305/5a9cc9f5ba3a3.jpg', '1', '80624', '1', '1520224757', '1', '0');
INSERT INTO `tp_attachment` VALUES ('722', '20180305021303_42536_副本.jpg', '/uploads/img1/20180305/5a9ccdf192dda.jpg', '1', '144251', '1', '1520225777', '1', '0');
INSERT INTO `tp_attachment` VALUES ('723', '20180305021306_83872_副本.jpg', '/uploads/img1/20180305/5a9ccdf3da4b0.jpg', '1', '145842', '1', '1520225779', '1', '0');
INSERT INTO `tp_attachment` VALUES ('724', '20180305021317_20958_副本.jpg', '/uploads/img1/20180305/5a9ccdf5c8489.jpg', '1', '76582', '1', '1520225781', '1', '0');
INSERT INTO `tp_attachment` VALUES ('725', '20180305021318_14985_副本.jpg', '/uploads/img1/20180305/5a9ccdf746320.jpg', '1', '111067', '1', '1520225783', '1', '0');
INSERT INTO `tp_attachment` VALUES ('726', '20180305021318_49394_副本.jpg', '/uploads/img1/20180305/5a9ccdf97ed9e.jpg', '1', '113597', '1', '1520225785', '1', '0');
INSERT INTO `tp_attachment` VALUES ('727', '1.jpg', '/uploads/img1/20180306/5a9dfba9b82a2.jpg', '1', '18603', '1', '1520303017', '1', '0');
INSERT INTO `tp_attachment` VALUES ('728', '1.jpg', '/uploads/img1/20180306/5a9dfbd9770e9.jpg', '1', '18603', '1', '1520303065', '1', '0');
INSERT INTO `tp_attachment` VALUES ('729', '2.jpg', '/uploads/img1/20180306/5a9dfbe2c603c.jpg', '1', '18073', '1', '1520303074', '1', '0');
INSERT INTO `tp_attachment` VALUES ('730', '3.jpg', '/uploads/img1/20180306/5a9dfc04c67d3.jpg', '1', '19282', '1', '1520303108', '1', '0');
INSERT INTO `tp_attachment` VALUES ('731', '4.jpg', '/uploads/img1/20180306/5a9dfc187de73.jpg', '1', '18911', '1', '1520303128', '1', '0');
INSERT INTO `tp_attachment` VALUES ('732', '5.jpg', '/uploads/img1/20180306/5a9dfc25ec78b.jpg', '1', '18294', '1', '1520303141', '1', '0');
INSERT INTO `tp_attachment` VALUES ('733', '6.jpg', '/uploads/img1/20180306/5a9dfc351eb0d.jpg', '1', '19051', '1', '1520303157', '1', '0');
INSERT INTO `tp_attachment` VALUES ('734', '7.jpg', '/uploads/img1/20180306/5a9dfc49855e5.jpg', '1', '18840', '1', '1520303177', '1', '0');
INSERT INTO `tp_attachment` VALUES ('735', '8.jpg', '/uploads/img1/20180306/5a9dfc645bbe5.jpg', '1', '18664', '1', '1520303204', '1', '0');
INSERT INTO `tp_attachment` VALUES ('736', '9.jpg', '/uploads/img1/20180306/5a9dfc72e4d3e.jpg', '1', '18643', '1', '1520303218', '1', '0');
INSERT INTO `tp_attachment` VALUES ('737', '10.jpg', '/uploads/img1/20180306/5a9dfc80e55fc.jpg', '1', '18662', '1', '1520303232', '1', '0');
INSERT INTO `tp_attachment` VALUES ('738', 'timg.jpg', '/uploads/img1/20180418/5ad6d3ba7d5d3.jpg', '1', '218657', '1', '1524028346', '1', '0');
INSERT INTO `tp_attachment` VALUES ('739', 'u=2545296106,3540755957&fm=27&gp=0.jpg', '/uploads/img1/20180418/5ad6d4e239986.jpg', '1', '26619', '1', '1524028642', '1', '0');
INSERT INTO `tp_attachment` VALUES ('740', 'u=2545296106,3540755957&fm=27&gp=0.jpg', '/uploads/img1/20180419/5ad7ef3d2d709.jpg', '1', '26619', '1', '1524100925', '1', '0');
INSERT INTO `tp_attachment` VALUES ('741', '微信图片_20180502111815.png', '/uploads/img1/20180502/5ae92ef69d92e.png', '1', '842937', '1', '1525231350', '1', '0');
INSERT INTO `tp_attachment` VALUES ('742', '微信图片_20180502111815_副本.png', '/uploads/img1/20180502/5ae9305721134.png', '1', '1345368', '1', '1525231703', '1', '0');
INSERT INTO `tp_attachment` VALUES ('743', '微信图片_20180502111836_副本.png', '/uploads/img1/20180502/5ae9305f0617a.png', '1', '546873', '1', '1525231711', '1', '0');
INSERT INTO `tp_attachment` VALUES ('744', '微信图片_20180502111827_副本.png', '/uploads/img1/20180502/5ae9306a973d3.png', '1', '594176', '1', '1525231722', '1', '0');
INSERT INTO `tp_attachment` VALUES ('745', '微信图片_20180502111836_副本.png', '/uploads/img1/20180502/5ae9306e3772c.png', '1', '546873', '1', '1525231726', '1', '0');
INSERT INTO `tp_attachment` VALUES ('746', '微信图片_20180502111832_副本.png', '/uploads/img1/20180502/5ae930799a8a2.png', '1', '936869', '1', '1525231737', '1', '0');
INSERT INTO `tp_attachment` VALUES ('747', '1111.jpg', '/uploads/img1/20180502/5ae931cc626a6.jpg', '1', '323049', '1', '1525232076', '1', '0');
INSERT INTO `tp_attachment` VALUES ('748', '5 (2).jpg', '/uploads/img1/20180503/5aea766cd3b8a.jpg', '1', '90996', '1', '1525315180', '1', '0');
INSERT INTO `tp_attachment` VALUES ('749', '1 (2).jpg', '/uploads/img1/20180503/5aea7670d3997.jpg', '1', '104000', '1', '1525315184', '1', '0');
INSERT INTO `tp_attachment` VALUES ('750', '2 (2).jpg', '/uploads/img1/20180503/5aea767337057.jpg', '1', '105524', '1', '1525315187', '1', '0');
INSERT INTO `tp_attachment` VALUES ('751', '3 (2).jpg', '/uploads/img1/20180503/5aea76767bd5e.jpg', '1', '104422', '1', '1525315190', '1', '0');
INSERT INTO `tp_attachment` VALUES ('752', '4 (2).jpg', '/uploads/img1/20180503/5aea7679111f6.jpg', '1', '104422', '1', '1525315193', '1', '0');
INSERT INTO `tp_attachment` VALUES ('753', 'IMG_2397.JPG', '/uploads/img1/20180507/5aefc78408155.JPG', '0', '2052023', '1', '1525663620', '1', '0');
INSERT INTO `tp_attachment` VALUES ('754', 'X4.jpg', '/uploads/img1/20180507/5aefc87db7198.jpg', '1', '829162', '1', '1525663869', '1', '0');
INSERT INTO `tp_attachment` VALUES ('755', 'X5.jpg', '/uploads/img1/20180507/5aefc8821630b.jpg', '1', '895753', '1', '1525663874', '1', '0');
INSERT INTO `tp_attachment` VALUES ('756', 'X1.jpg', '/uploads/img1/20180507/5aefc88686527.jpg', '1', '750903', '1', '1525663878', '1', '0');
INSERT INTO `tp_attachment` VALUES ('757', 'X3.jpg', '/uploads/img1/20180507/5aefc88d5e655.jpg', '1', '1003812', '1', '1525663885', '1', '0');
INSERT INTO `tp_attachment` VALUES ('758', 'X6 (2).jpg', '/uploads/img1/20180507/5aefc9efdd9e6.jpg', '1', '1270549', '1', '1525664239', '1', '0');
INSERT INTO `tp_attachment` VALUES ('759', '20180508_140310_026.jpg', '/uploads/img1/20180508/5af13ed5061e1.jpg', '1', '143775', '1', '1525759701', '1', '0');
INSERT INTO `tp_attachment` VALUES ('760', '20180508_140310_025.jpg', '/uploads/img1/20180508/5af13f2991a3c.jpg', '1', '127389', '1', '1525759785', '1', '0');
INSERT INTO `tp_attachment` VALUES ('761', '20180508_140310_028.jpg', '/uploads/img1/20180508/5af13f32bc15c.jpg', '1', '150895', '1', '1525759794', '1', '0');
INSERT INTO `tp_attachment` VALUES ('762', '20180508_140310_032.jpg', '/uploads/img1/20180508/5af13f3a090cd.jpg', '1', '142959', '1', '1525759802', '1', '0');
INSERT INTO `tp_attachment` VALUES ('763', '20180508_140310_035.jpg', '/uploads/img1/20180508/5af13f3f7f7ee.jpg', '1', '92788', '1', '1525759807', '1', '0');
INSERT INTO `tp_attachment` VALUES ('764', '20180508_140310_034.jpg', '/uploads/img1/20180508/5af13f43a4c62.jpg', '1', '107357', '1', '1525759811', '1', '0');
INSERT INTO `tp_attachment` VALUES ('765', '图标.JPG', '/uploads/img1/20180530/5b0e3f93ea4c1.JPG', '0', '18627', '1', '1527660435', '1', '0');
INSERT INTO `tp_attachment` VALUES ('766', 'IMG_2593.JPG', '/uploads/img1/20180530/5b0e544aa9f69.JPG', '0', '20212', '1', '1527665738', '1', '0');
INSERT INTO `tp_attachment` VALUES ('767', 'IMG_2595.JPG', '/uploads/img1/20180531/5b0f5c23692ef.JPG', '0', '19812', '1', '1527733283', '1', '0');
INSERT INTO `tp_attachment` VALUES ('768', 'IMG_2596.JPG', '/uploads/img1/20180531/5b0f6ff76e3d2.JPG', '0', '19809', '1', '1527738359', '1', '0');

-- ----------------------------
-- Table structure for `tp_attachmentindex`
-- ----------------------------
DROP TABLE IF EXISTS `tp_attachmentindex`;
CREATE TABLE `tp_attachmentindex` (
  `attid` int(10) unsigned NOT NULL DEFAULT '0',
  `arcid` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` int(10) unsigned NOT NULL DEFAULT '0',
  `desc` varchar(20) NOT NULL DEFAULT '',
  KEY `attid` (`attid`),
  KEY `arcid` (`arcid`),
  KEY `modelid` (`modelid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_attachmentindex
-- ----------------------------
INSERT INTO `tp_attachmentindex` VALUES ('7', '35', '2', '');
INSERT INTO `tp_attachmentindex` VALUES ('6', '35', '2', '');
INSERT INTO `tp_attachmentindex` VALUES ('5', '35', '2', '');
INSERT INTO `tp_attachmentindex` VALUES ('10', '21', '2', '');
INSERT INTO `tp_attachmentindex` VALUES ('9', '21', '2', '');
INSERT INTO `tp_attachmentindex` VALUES ('8', '21', '2', '');
INSERT INTO `tp_attachmentindex` VALUES ('11', '9002', '2', '');
INSERT INTO `tp_attachmentindex` VALUES ('12', '9003', '2', '');
INSERT INTO `tp_attachmentindex` VALUES ('13', '9004', '2', '');
INSERT INTO `tp_attachmentindex` VALUES ('14', '9005', '2', '');
INSERT INTO `tp_attachmentindex` VALUES ('15', '9006', '2', '');
INSERT INTO `tp_attachmentindex` VALUES ('16', '9016', '2', '');
INSERT INTO `tp_attachmentindex` VALUES ('17', '9017', '2', '');
INSERT INTO `tp_attachmentindex` VALUES ('18', '9019', '2', '');
INSERT INTO `tp_attachmentindex` VALUES ('19', '9021', '2', '');
INSERT INTO `tp_attachmentindex` VALUES ('20', '9008', '2', '');
INSERT INTO `tp_attachmentindex` VALUES ('21', '9009', '2', '');
INSERT INTO `tp_attachmentindex` VALUES ('22', '9010', '2', '');
INSERT INTO `tp_attachmentindex` VALUES ('23', '9013', '2', '');
INSERT INTO `tp_attachmentindex` VALUES ('24', '9014', '2', '');
INSERT INTO `tp_attachmentindex` VALUES ('25', '9011', '2', '');
INSERT INTO `tp_attachmentindex` VALUES ('26', '1895', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('30', '1896', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('36', '2889', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('36', '2892', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('39', '2', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('433', '4', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('750', '72', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('52', '163', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('747', '71', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('748', '72', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('749', '72', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('548', '26', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('547', '26', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('758', '73', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('717', '30', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('740', '70', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('764', '74', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('763', '74', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('646', '46', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('762', '74', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('761', '74', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('757', '73', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('756', '73', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('637', '44', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('645', '46', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('755', '73', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('752', '72', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('751', '72', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('102', '52', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('719', '53', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('746', '71', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('739', '69', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('107', '57', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('111', '76', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('112', '75', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('113', '74', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('114', '72', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('115', '122', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('116', '299', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('117', '300', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('767', '59', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('120', '301', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('121', '302', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('122', '304', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('123', '313', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('729', '60', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('730', '61', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('765', '62', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('768', '63', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('733', '64', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('744', '71', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('232', '69', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('135', '70', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('743', '71', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('138', '72', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('754', '73', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('760', '74', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('141', '75', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('151', '76', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('143', '77', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('144', '78', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('145', '79', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('146', '80', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('147', '82', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('148', '83', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('149', '84', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('159', '85', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('253', '447', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('260', '448', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('259', '449', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('165', '360', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('166', '279', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('229', '86', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('226', '87', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('169', '88', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('231', '89', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('227', '90', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('225', '91', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('217', '92', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('219', '93', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('224', '94', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('220', '95', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('218', '96', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('223', '97', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('222', '98', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('221', '99', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('208', '100', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('215', '101', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('209', '102', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('210', '103', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('211', '104', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('212', '105', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('214', '106', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('216', '107', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('207', '109', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('206', '110', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('205', '111', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('244', '112', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('235', '108', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('238', '113', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('239', '114', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('546', '26', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('243', '115', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('247', '116', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('251', '125', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('252', '165', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('261', '164', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('408', '161', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('263', '475', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('277', '124', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('268', '177', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('269', '178', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('270', '179', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('271', '180', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('272', '299', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('273', '300', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('274', '301', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('275', '302', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('276', '303', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('278', '304', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('279', '305', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('280', '306', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('281', '308', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('282', '309', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('283', '310', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('284', '311', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('285', '313', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('286', '314', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('287', '315', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('288', '316', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('289', '317', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('290', '318', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('291', '319', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('292', '320', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('293', '321', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('294', '322', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('295', '323', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('296', '324', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('297', '325', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('298', '326', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('299', '327', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('300', '328', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('301', '329', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('302', '330', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('303', '331', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('304', '332', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('305', '333', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('306', '334', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('307', '335', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('308', '336', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('309', '337', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('310', '338', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('311', '339', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('312', '340', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('313', '341', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('314', '342', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('315', '343', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('316', '344', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('317', '345', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('318', '346', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('319', '347', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('320', '348', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('321', '349', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('322', '350', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('323', '351', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('325', '352', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('326', '353', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('327', '354', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('328', '355', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('329', '356', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('330', '357', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('331', '358', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('332', '359', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('333', '360', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('334', '361', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('335', '362', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('336', '363', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('338', '364', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('339', '365', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('340', '366', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('341', '367', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('342', '368', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('343', '369', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('344', '370', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('345', '371', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('346', '373', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('347', '372', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('348', '374', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('349', '375', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('350', '376', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('351', '377', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('352', '378', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('353', '379', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('354', '380', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('355', '381', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('356', '382', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('357', '383', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('358', '384', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('358', '385', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('359', '386', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('360', '387', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('361', '388', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('362', '389', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('363', '390', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('364', '391', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('365', '392', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('366', '393', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('367', '394', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('368', '395', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('369', '396', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('370', '397', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('371', '398', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('372', '399', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('373', '400', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('374', '401', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('375', '402', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('376', '403', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('377', '404', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('378', '405', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('379', '406', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('380', '407', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('381', '408', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('382', '409', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('383', '411', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('384', '410', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('385', '412', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('386', '414', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('387', '415', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('388', '416', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('389', '417', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('390', '418', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('391', '419', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('392', '420', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('393', '421', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('394', '422', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('395', '445', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('396', '446', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('397', '447', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('398', '448', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('399', '449', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('399', '450', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('400', '451', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('401', '452', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('402', '453', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('403', '454', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('404', '455', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('405', '307', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('415', '3', '0', 'link');
INSERT INTO `tp_attachmentindex` VALUES ('464', '1', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('463', '1', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('462', '1', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('461', '1', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('460', '1', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('469', '3', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('468', '3', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('467', '3', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('466', '3', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('465', '3', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('432', '4', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('431', '4', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('430', '4', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('429', '4', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('439', '5', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('438', '5', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('436', '5', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('435', '5', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('434', '5', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('444', '6', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('443', '6', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('442', '6', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('441', '6', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('440', '6', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('449', '7', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('448', '7', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('447', '7', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('446', '7', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('445', '7', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('454', '8', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('453', '8', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('452', '8', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('451', '8', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('450', '8', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('459', '9', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('458', '9', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('457', '9', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('456', '9', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('455', '9', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('474', '10', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('473', '10', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('472', '10', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('471', '10', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('470', '10', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('479', '11', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('478', '11', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('477', '11', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('476', '11', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('475', '11', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('484', '12', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('483', '12', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('482', '12', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('481', '12', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('480', '12', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('489', '13', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('488', '13', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('487', '13', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('486', '13', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('485', '13', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('494', '14', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('493', '14', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('492', '14', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('491', '14', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('490', '14', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('499', '15', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('498', '15', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('497', '15', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('496', '15', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('495', '15', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('504', '16', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('503', '16', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('502', '16', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('501', '16', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('500', '16', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('509', '17', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('508', '17', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('507', '17', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('506', '17', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('505', '17', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('514', '18', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('513', '18', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('512', '18', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('511', '18', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('510', '18', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('518', '19', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('517', '19', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('516', '19', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('515', '19', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('521', '20', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('520', '20', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('519', '20', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('526', '21', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('525', '21', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('524', '21', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('523', '21', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('522', '21', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('531', '22', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('530', '22', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('529', '22', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('528', '22', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('527', '22', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('534', '23', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('533', '23', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('532', '23', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('539', '24', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('538', '24', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('537', '24', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('536', '24', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('535', '24', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('543', '25', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('542', '25', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('541', '25', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('540', '25', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('545', '26', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('544', '26', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('726', '27', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('725', '27', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('724', '27', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('723', '27', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('722', '27', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('558', '28', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('557', '28', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('556', '28', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('555', '28', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('554', '28', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('563', '29', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('562', '29', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('561', '29', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('560', '29', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('559', '29', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('567', '30', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('566', '30', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('565', '30', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('564', '30', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('573', '31', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('572', '31', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('571', '31', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('570', '31', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('569', '31', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('577', '32', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('576', '32', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('575', '32', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('574', '32', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('582', '33', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('581', '33', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('580', '33', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('579', '33', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('578', '33', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('586', '34', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('585', '34', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('584', '34', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('583', '34', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('592', '35', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('591', '35', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('590', '35', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('589', '35', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('597', '36', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('596', '36', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('595', '36', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('594', '36', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('593', '36', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('601', '37', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('600', '37', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('599', '37', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('598', '37', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('606', '38', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('605', '38', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('604', '38', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('603', '38', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('602', '38', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('611', '39', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('610', '39', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('609', '39', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('608', '39', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('607', '39', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('616', '40', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('615', '40', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('614', '40', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('613', '40', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('612', '40', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('622', '41', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('621', '41', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('620', '41', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('618', '41', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('617', '41', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('627', '42', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('626', '42', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('625', '42', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('624', '42', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('623', '42', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('632', '43', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('631', '43', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('630', '43', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('629', '43', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('628', '43', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('636', '44', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('635', '44', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('634', '44', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('633', '44', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('721', '45', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('642', '45', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('641', '45', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('640', '45', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('639', '45', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('644', '46', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('643', '46', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('652', '47', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('651', '47', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('650', '47', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('649', '47', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('648', '47', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('720', '48', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('669', '48', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('668', '48', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('667', '48', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('666', '48', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('674', '49', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('673', '49', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('672', '49', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('671', '49', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('670', '49', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('679', '50', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('678', '50', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('677', '50', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('676', '50', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('675', '50', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('683', '51', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('682', '51', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('681', '51', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('680', '51', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('685', '52', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('686', '52', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('687', '52', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('688', '52', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('692', '53', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('691', '53', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('690', '53', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('689', '53', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('697', '54', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('696', '54', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('695', '54', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('694', '54', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('693', '54', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('702', '55', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('701', '55', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('700', '55', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('699', '55', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('698', '55', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('708', '56', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('707', '56', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('706', '56', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('705', '56', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('704', '56', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('709', '57', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('710', '57', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('711', '57', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('715', '58', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('714', '58', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('713', '58', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('712', '58', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('734', '65', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('735', '66', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('736', '67', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('737', '68', '3', '');

-- ----------------------------
-- Table structure for `tp_block`
-- ----------------------------
DROP TABLE IF EXISTS `tp_block`;
CREATE TABLE `tp_block` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `remark` varchar(200) NOT NULL DEFAULT '' COMMENT '说明',
  `content` text COMMENT '内容',
  `blocktype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_block
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_category`
-- ----------------------------
DROP TABLE IF EXISTS `tp_category`;
CREATE TABLE `tp_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目分类名称',
  `ename` varchar(200) NOT NULL DEFAULT '' COMMENT '别名',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类',
  `modelid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属模型',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类别',
  `seotitle` varchar(50) NOT NULL DEFAULT '',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `description` varchar(255) DEFAULT '' COMMENT '关键字',
  `template_category` varchar(60) NOT NULL DEFAULT '',
  `template_list` varchar(60) NOT NULL DEFAULT '',
  `template_show` varchar(60) NOT NULL DEFAULT '',
  `content` text COMMENT '内容',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '显示',
  `sort` smallint(6) NOT NULL DEFAULT '100' COMMENT '排序',
  `cata_pic` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='栏目分类表';

-- ----------------------------
-- Records of tp_category
-- ----------------------------
INSERT INTO `tp_category` VALUES ('1', '产品展示 ', 'chanpinzhongxin', '0', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', '');
INSERT INTO `tp_category` VALUES ('2', '新闻动态', 'xinwendongtai', '0', '1', '0', '', '', '', '', 'List_news.html', 'Show_article.html', null, '1', '1', '');
INSERT INTO `tp_category` VALUES ('3', '私人定制', 'qiyejieshao', '0', '2', '0', '', '', '	\r\n		厦龙房车简介INTRODUCTION官方生产   顶级改装\r\n	\r\n	\r\n	\r\n	\r\n		金龙豪华大巴房车\r\n	\r\n	\r\n		金龙大巴房车由厦门金龙联合汽车工业有限公司(简称&quot;大金龙&quot;)体系内的官', '', 'List_page.html', 'Show_article.html', '<p>\r\n	<img src=\"/uploads/kindedit/image/20180225/20180225133423_44856.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<div class=\"introduction\" style=\"margin:0px;padding:0px;font-family:Simsun;font-size:medium;background-color:#FFFFFF;\">\r\n	<div class=\"title\" style=\"margin:20px 0px 0px;padding:0px;background:url(http://www.saloonrv.com/kinglong_files/title_bg.png) no-repeat;\">\r\n		<span class=\"title_left float_left\" style=\"font-size:40px;line-height:70px;font-family:黑体, 微软雅黑;color:#545148;\">厦龙房车简介INTRODUCTION</span><span class=\"title_right float_left\" style=\"font-size:32px;line-height:68px;font-family:黑体, 微软雅黑;color:#FFFFFF;\">官方生产&nbsp;&nbsp;&nbsp;顶级改装</span> \r\n	</div>\r\n	<div class=\"clear\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n	<div class=\"title_2\" style=\"margin:35px 10px 20px;padding:0px 0px 0px 35px;font-size:24px;font-family:微软雅黑;color:#A18E70;\">\r\n		厦龙豪华大巴房车\r\n	</div>\r\n	<p class=\"p_intr\" style=\"font-size:18px;font-family:微软雅黑;color:#666666;text-indent:2em;\">\r\n		厦龙大巴房车由厦门金龙联合汽车工业有限公司(简称\"大金龙\")体系内的官方厦龙大巴房车改装单位，厦龙房车汇自属改装厂改装生产。采用大金龙客车底盘，噪音低；外观经典大气；内部空间大，可改装生产10米、12米等长度厦龙房车、厦龙大巴旅居房车（豪华房车）、商务接待房车（移动会议室、移动会所、移动KTV、移动办公、休闲旅游、高尔夫球车等）、产品展示车（移动售楼车、楼盘展示车、卫浴展示车等），特种专用车（通信警备车、医疗采血车、机场VIP的摆渡车辆以及政府机关企业的移动指挥车辆及办公车辆 ）等客户需求车型。\r\n	</p>\r\n</div>\r\n<div class=\"layout\" style=\"margin:0px;padding:0px;font-family:Simsun;font-size:medium;background-color:#FFFFFF;\">\r\n	<div class=\"clear\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n	<p class=\"p_layout\" style=\"font-size:32px;font-family:微软雅黑;color:#A18E70;text-align:center;\">\r\n		您的想法 我来实现\r\n	</p>\r\n	<div class=\"title\" style=\"margin:20px 0px 0px;padding:0px;background:url(http://www.saloonrv.com/kinglong_files/title_bg.png) no-repeat;\">\r\n		<span class=\"title_left float_left\" style=\"font-size:40px;line-height:70px;font-family:黑体, 微软雅黑;color:#545148;\">旅居房车INTRODUCTION</span><span class=\"title_right float_left\" style=\"font-size:32px;line-height:68px;font-family:黑体, 微软雅黑;color:#FFFFFF;\">极致奢华&nbsp;&nbsp;&nbsp;尽享尊贵</span> \r\n	</div>\r\n	<div class=\"clear\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n<span class=\"pic2 float_right\"><img src=\"http://www.saloonrv.com/kinglong_files/layout_12.jpg\" alt=\"金龙房车内饰图片\" title=\"金龙大巴房车内饰图片\" style=\"width:490px;height:320px;\" /></span><span class=\"pic2 float_left\"><img src=\"http://www.saloonrv.com/kinglong_files/layout_13.jpg\" alt=\"金龙房车餐厅图片\" title=\"金龙大巴房车餐厅图片\" style=\"width:490px;height:320px;\" /></span><span class=\"pic2 float_right\"><img src=\"http://www.saloonrv.com/kinglong_files/layout_14.jpg\" alt=\"金龙房车卧室图片\" title=\"金龙大巴房车卧室图片\" style=\"width:490px;height:320px;\" /></span><span class=\"pic2 float_left\"><img src=\"http://www.saloonrv.com/kinglong_files/layout_11.jpg\" alt=\"金龙房车卫生间图片\" title=\"金龙大巴房车卫生间图片\" style=\"width:490px;height:320px;\" /></span> \r\n	<div class=\"clear\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n	<div class=\"title_2\" style=\"margin:35px 10px 20px;padding:0px 0px 0px 35px;font-size:24px;font-family:微软雅黑;color:#A18E70;\">\r\n		厦龙房车 · 应用场景\r\n	</div>\r\n	<p class=\"p_intr\" style=\"font-size:18px;font-family:微软雅黑;color:#666666;text-indent:2em;\">\r\n		<span>1、厦龙总裁级超豪华房车——可用于政府、集团会议领袖接待房车、名流VIP客户接待房车，车内豪华移动总统套房可作为移动商业会晤、办公、洽谈，展现酒店实力、提升对外形象。</span> \r\n	</p>\r\n	<p class=\"p_intr\" style=\"font-size:18px;font-family:微软雅黑;color:#666666;text-indent:2em;\">\r\n		<span>2、高端俱乐部往来配套VIP专属房车——精英名流经常往返于各大高端俱乐部，清晨到高尔夫俱乐部挥杆，午后到马术俱乐部骑马，黄昏到游艇俱乐部出航，一路搭乘厦龙豪华房车，换衣、洗澡、休息、饮食、运动器具存放等问题轻松解决，带给您的将是前所未有的舒适、体面和便利。</span> \r\n	</p>\r\n	<div class=\"clear\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n	<div class=\"title\" style=\"margin:20px 0px 0px;padding:0px;background:url(http://www.saloonrv.com/kinglong_files/title_bg.png) no-repeat;\">\r\n		<span class=\"title_left float_left\" style=\"font-size:40px;line-height:70px;font-family:黑体, 微软雅黑;color:#545148;\"> \r\n		<h2 style=\"font-size:40px;font-weight:normal;\">\r\n			厦龙豪华房车\r\n		</h2>\r\nINTRODUCTION</span><span class=\"title_right float_left\" style=\"font-size:32px;line-height:68px;font-family:黑体, 微软雅黑;color:#FFFFFF;\">超大空间&nbsp;&nbsp;&nbsp;方便布局</span> \r\n	</div>\r\n	<div class=\"clear\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n	<div class=\"clear\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n<span class=\"pic2 float_left\"><img src=\"http://www.saloonrv.com/kinglong_files/layout_15.jpg\" alt=\"金龙房车外观图\" title=\"金龙房车外观图\" style=\"width:490px;height:320px;\" /></span><span class=\"pic2 float_right\"><img src=\"http://www.saloonrv.com/kinglong_files/layout_16.jpg\" alt=\"金龙房车卧室图\" title=\"金龙房车卧室图\" style=\"width:490px;height:320px;\" /></span><span class=\"pic2 float_left\"><img src=\"http://www.saloonrv.com/kinglong_files/layout_17.jpg\" alt=\"金龙房车餐厅图\" title=\"金龙房车餐厅图\" style=\"width:490px;height:320px;\" /></span><span class=\"pic2 float_right\"><img src=\"http://www.saloonrv.com/kinglong_files/layout_18.jpg\" alt=\"金龙房车高低床图\" title=\"金龙房车高低床图\" style=\"width:490px;height:320px;\" /></span> \r\n	<div class=\"clear\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n	<div class=\"title_2\" style=\"margin:35px 10px 20px;padding:0px 0px 0px 35px;font-size:24px;font-family:微软雅黑;color:#A18E70;\">\r\n		厦龙房车 · 应用场景\r\n	</div>\r\n	<p class=\"p_intr\" style=\"font-size:18px;font-family:微软雅黑;color:#666666;text-indent:2em;\">\r\n		<span>婚礼（迎亲、婚宴）、庆典VIP专属金龙房车——可应用于各类婚礼庆典，如拍摄婚纱照，婚礼迎亲时的新人临时化妆室、更衣间，蜜月旅行。房车婚礼不仅只是把房车游艇做为奢华婚车，也不仅只是让您的新房在移动，更让幸福归属感时时刻刻伴随自己。</span> \r\n	</p>\r\n	<div class=\"clear\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n	<div class=\"title\" style=\"margin:20px 0px 0px;padding:0px;background:url(http://www.saloonrv.com/kinglong_files/title_bg.png) no-repeat;\">\r\n		<span class=\"title_left float_left\" style=\"font-size:40px;line-height:70px;font-family:黑体, 微软雅黑;color:#545148;\">商务接待INTRODUCTION</span><span class=\"title_right float_left\" style=\"font-size:32px;line-height:68px;font-family:黑体, 微软雅黑;color:#FFFFFF;\">移动会所&nbsp;&nbsp;&nbsp;总裁行宫</span> \r\n	</div>\r\n	<div class=\"clear\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n<span class=\"pic2 float_left\"><img src=\"http://www.saloonrv.com/kinglong_files/layout_3.jpg\" alt=\"金龙大巴商务车会客区内饰图片\" title=\"金龙大巴商务车会客区内饰图片\" style=\"width:490px;height:320px;\" /></span><span class=\"pic2 float_right\"><img src=\"http://www.saloonrv.com/kinglong_files/layout_4.jpg\" alt=\"金龙大巴商务车会客区沙发图片\" title=\"金龙大巴商务车会客区沙发图片\" style=\"width:490px;height:320px;\" /></span><span class=\"pic2 float_left\"><img src=\"http://www.saloonrv.com/kinglong_files/layout_5.jpg\" alt=\"金龙大巴商务车会客区整体图片\" title=\"金龙大巴商务车会客区整体图片\" style=\"width:490px;height:320px;\" /></span><span class=\"pic2 float_right\"><img src=\"http://www.saloonrv.com/kinglong_files/layout_6.jpg\" alt=\"金龙大巴商务车会客区卡座图片\" title=\"金龙大巴商务车会客区卡座图片\" style=\"width:490px;height:320px;\" /></span> \r\n	<div class=\"clear\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n	<div class=\"title_2\" style=\"margin:35px 10px 20px;padding:0px 0px 0px 35px;font-size:24px;font-family:微软雅黑;color:#A18E70;\">\r\n		厦龙商务接待车\r\n	</div>\r\n	<p class=\"p_intr\" style=\"font-size:18px;font-family:微软雅黑;color:#666666;text-indent:2em;\">\r\n		<span>移动商业会晤房车、办公房车、洽谈房车，车内干净、明朗，有书桌、沙发、床铺，饮食起居面面俱到，企业开着这样的车子去机场接客户，给他倒杯茶，聊些开心事，等他累了，就安排他在房车舒适的床上睡上一觉。以后几天里，可以派司机带他跑遍景区，阅尽山川美景，然后再安排签合同之类的事宜，这是最为阳光和时尚的谈判方式，人情味十足。</span> \r\n	</p>\r\n	<div class=\"clear\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n	<div class=\"title\" style=\"margin:20px 0px 0px;padding:0px;background:url(http://www.saloonrv.com/kinglong_files/title_bg.png) no-repeat;\">\r\n		<span class=\"title_left float_left\" style=\"font-size:40px;line-height:70px;font-family:黑体, 微软雅黑;color:#545148;\">产品展示INTRODUCTION</span><span class=\"title_right float_left\" style=\"font-size:32px;line-height:68px;font-family:黑体, 微软雅黑;color:#FFFFFF;\">移动展厅&nbsp;&nbsp;&nbsp;完美展示</span> \r\n	</div>\r\n	<div class=\"clear\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n	<p class=\"p_intr\" style=\"font-size:18px;font-family:微软雅黑;color:#666666;text-indent:2em;\">\r\n		<span>厦龙豪华房车还可以作为企业移动看板、品牌形象墙、高端产品展示中心，打造您的销售精英作战主场。</span> \r\n	</p>\r\n<span class=\"pic2 float_left\"><img src=\"http://www.saloonrv.com/kinglong_files/yidong3.jpg\" alt=\"金龙房车改装展示车图片\" title=\"金龙大巴房车改装展示车图片\" style=\"width:490px;height:320px;\" /></span><span class=\"pic2 float_right\"><img src=\"http://www.saloonrv.com/kinglong_files/yidong2.jpg\" alt=\"金龙房车改装产品展示车图片\" title=\"金龙大客车改装产品展示车图片\" style=\"width:490px;height:320px;\" /></span><span class=\"pic2 float_left\"><img src=\"http://www.saloonrv.com/kinglong_files/yidong1.jpg\" alt=\"金龙房车改装厨具展示车图片\" title=\"金龙大巴房车改装厨具展示车图片\" style=\"width:490px;height:320px;\" /></span><span class=\"pic2 float_right\"><img src=\"http://www.saloonrv.com/kinglong_files/yidong4.jpg\" alt=\"金龙房车改装展示车图片\" title=\"金龙大巴房车改装展示车图片\" style=\"width:490px;height:320px;\" /></span> \r\n</div>\r\n<div class=\"clear\" style=\"margin:0px;padding:0px;font-family:Simsun;font-size:medium;background-color:#FFFFFF;\">\r\n</div>\r\n<div class=\"detail\" style=\"margin:0px;padding:0px;font-family:Simsun;font-size:medium;background-color:#FFFFFF;\">\r\n	<div class=\"title\" style=\"margin:20px 0px 0px;padding:0px;background:url(http://www.saloonrv.com/kinglong_files/title_bg.png) no-repeat;\">\r\n		<span class=\"title_left float_left\" style=\"font-size:40px;line-height:70px;font-family:黑体, 微软雅黑;color:#545148;\"> \r\n		<h2 style=\"font-size:40px;font-weight:normal;\">\r\n			厦龙特种专用车\r\n		</h2>\r\nDETAIL</span><span class=\"title_right float_left\" style=\"font-size:32px;line-height:68px;font-family:黑体, 微软雅黑;color:#FFFFFF;\">政府办公&nbsp;&nbsp;&nbsp;医疗系列</span> \r\n	</div>\r\n	<div class=\"left float_left\" style=\"margin:20px 0px 0px;padding:70px 60px 50px;background:#F0F0F0;\">\r\n		<span style=\"font-size:24px;line-height:35px;font-family:微软雅黑;color:#A18E70;\">警用通信指挥车</span> \r\n		<p style=\"font-size:16px;font-family:微软雅黑;color:#666666;\">\r\n			与美国特种车辆顶级制造商合作，定位于通信警备车、医疗采血车、机场VIP的摆渡车辆以及政府机关企业的移动指挥车辆及办公车辆\r\n		</p>\r\n	</div>\r\n<span class=\"pic float_right\"><img src=\"http://www.saloonrv.com/kinglong_files/detail_1.jpg\" alt=\"金龙房车改装警用通讯指挥车外观内饰图\" title=\"警用通讯指挥车外观内饰图\" /></span> \r\n	<div class=\"clear\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n	<div class=\"left float_left\" style=\"margin:20px 0px 0px;padding:70px 60px 50px;background:#F0F0F0;\">\r\n		<span style=\"font-size:24px;line-height:35px;font-family:微软雅黑;color:#A18E70;\">大巴医疗车系列</span> \r\n		<p style=\"font-size:16px;font-family:微软雅黑;color:#666666;\">\r\n			大巴体检车又称移动医疗车或\"流动医疗车\"是为医疗行业设计的可以满足常规体检、治疗、应急医疗救援等功能的专用车辆\r\n		</p>\r\n	</div>\r\n<span class=\"pic float_right\"><img src=\"http://www.saloonrv.com/kinglong_files/detail_2.jpg\" alt=\"金龙房车改装流动医院医疗献血车\" title=\"流动医院医疗献血车\" /></span> \r\n</div>\r\n<div class=\"clear\" style=\"margin:0px;padding:0px;font-family:Simsun;font-size:medium;background-color:#FFFFFF;\">\r\n</div>\r\n<div class=\"why\" style=\"margin:0px 0px 10px;padding:0px;font-family:Simsun;font-size:medium;background-color:#FFFFFF;\">\r\n	<div class=\"pic\" style=\"margin:0px auto;padding:0px;\">\r\n		<br />\r\n	</div>\r\n	<div class=\"txt\" style=\"margin:0px;padding:20px 50px;color:#5A5B5B;background:#F5F5F5;\">\r\n		<h3 style=\"font-size:26px;font-weight:normal;font-family:微软雅黑;color:#A56500;\">\r\n			五大保障：一线品牌、原厂质量、系统设计、原厂直销、全方位的售后服务\r\n		</h3>\r\n		<p style=\"font-size:18px;font-family:微软雅黑;\">\r\n			1、大金龙豪华客车的品质及服务的新标杆，具有更高的投资回报率、更稳定节油安全的金龙底盘、更高品位三大特性。<br />\r\n2、原厂的设计和制造，所有房车由厦龙房车汇根据客户的需求制定订单，设计方案，由大金龙公司系统制造原型车，然后由旗下的改装厂精工细作内饰并加装相应设备。<br />\r\n3、系统设计，包括钣金、电路、加装设备等都经过整体系统的设计，匹配性好，从娘胎里保证了没有先天性缺陷。厦龙房车汇是国内最专业的房车及高端金龙大巴房车制造商，设计师经历过美国最高水平的金龙旅居房车公司培训及工作。<br />\r\n4、原厂直销，通过电商手段，减少中间环节，直接为客户提供更高性价比的房车产品。<br />\r\n5、全方位的售后服务。售后服务体系采用服务网络齐全的金龙房车服务体系，确保了客户享受金龙正厂的优质服务。\r\n		</p>\r\n	</div>\r\n</div>\r\n<p>\r\n	<br />\r\n</p>', '1', '1', '');
INSERT INTO `tp_category` VALUES ('4', '关于我们', 'lianxiwomen', '0', '2', '0', '', '', '	厦龙房车\r\n\r\n销售总部地址：杭州市石祥路589号杭州国际会展中心（汽车城）\r\n\r\n改装厂地址：厦门市集美区灌口镇\r\n\r\n400全国免费咨询热线：400-858-0868\r\n \r\n\r\n\r\n	 \r\n', '', 'List_page.html', 'Show_article.html', '<img src=\"/uploads/kindedit/image/20180529/20180529012921_78244.png\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180409/20180409032951_65508.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180409/20180409032953_12532.png\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180409/20180409032954_16512.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180409/20180409032955_51253.png\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180409/20180409032957_18261.png\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180409/20180409032958_35870.png\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180409/20180409033000_44433.png\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180409/20180409033002_23680.png\" alt=\"\" />', '1', '1', '');
INSERT INTO `tp_category` VALUES ('5', '专项服务车', 'chanpinfenlei1', '1', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', '');
INSERT INTO `tp_category` VALUES ('6', '商务/旅居车系列', 'chanpinfenlei2', '1', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', '');
INSERT INTO `tp_category` VALUES ('7', '楼盘/产品展示车系列', 'zhongxingshangwuchegaizhuang', '1', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', '');
INSERT INTO `tp_category` VALUES ('8', '活动体验车系列', 'chanpinzhanshiche', '1', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', '');
INSERT INTO `tp_category` VALUES ('9', '其他特种车系列', 'xialongqiche', '1', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', '');
INSERT INTO `tp_category` VALUES ('10', '图书车', 'xinlanmu', '5', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', '');
INSERT INTO `tp_category` VALUES ('13', '首页图标', 'shouyetubiao', '0', '3', '0', '', '', '', '', 'List_product.html', 'Show_article.html', null, '0', '1', '');
INSERT INTO `tp_category` VALUES ('14', '楼盘展示车', 'loupanzhanshiche', '5', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', null);
INSERT INTO `tp_category` VALUES ('11', '房车生活', 'youhuihuodong', '0', '1', '0', '', '', '', '', 'List_article.html', 'Show_article.html', null, '0', '1', '');
INSERT INTO `tp_category` VALUES ('12', '售前咨询', 'shouqianzixun', '0', '2', '0', '', '', '咨询QQ：498588680\r\n\r\n售前电话：400-858-0868\r\n办公电话：0571-28801713\r\n\r\n微信公众号：厦龙房车汇', '', 'List_page.html', 'Show_article.html', '<span style=\"font-size:14px;\"><strong>咨询QQ：498588680</strong></span><br />\r\n<br />\r\n<span style=\"font-size:14px;\"><strong>售前电话：400-858-0868</strong></span><br />\r\n<span style=\"font-size:14px;\"><strong>办公电话：0571-28801713</strong></span><br />\r\n<br />\r\n<span style=\"font-size:14px;\"><strong>微信公众号：厦龙房车汇</strong></span><br />', '0', '1', '');
INSERT INTO `tp_category` VALUES ('15', '移动KTV车', 'yidongKTVche', '5', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', null);
INSERT INTO `tp_category` VALUES ('16', '移动指挥车', 'yidongzhihuiche', '5', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', null);
INSERT INTO `tp_category` VALUES ('17', '医用车', 'yiyongche', '5', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', null);
INSERT INTO `tp_category` VALUES ('18', '检测车', 'jianceche', '5', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', null);
INSERT INTO `tp_category` VALUES ('19', '10米豪华旅居车', '10mihaohualvjiche', '6', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', null);
INSERT INTO `tp_category` VALUES ('20', '12米豪华旅居车', '12mihaohualvjiche', '6', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', null);
INSERT INTO `tp_category` VALUES ('21', '10米豪华商务车', '10mishangwuche', '6', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', '');
INSERT INTO `tp_category` VALUES ('22', '12米豪华商务车', '12mihaohuashangwuche', '6', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', null);
INSERT INTO `tp_category` VALUES ('23', '楼盘展示车', 'loupanzhanshiche', '7', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', null);
INSERT INTO `tp_category` VALUES ('24', '卫浴展示车', 'weiyuzhanshiche', '7', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', null);
INSERT INTO `tp_category` VALUES ('25', '服装展示车', 'fuzhuangzhanshiche', '7', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', null);
INSERT INTO `tp_category` VALUES ('27', '大通系列车', 'datongxilieche', '5', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', null);
INSERT INTO `tp_category` VALUES ('28', '冷藏车', 'lingcangche', '5', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', null);
INSERT INTO `tp_category` VALUES ('29', '执法警用车', 'zhifajingyongche', '1', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', null);
INSERT INTO `tp_category` VALUES ('26', '升顶车', 'shengdingche', '1', '3', '0', '', '', '', '', 'List_product.html', 'Show_product.html', null, '1', '1', null);
INSERT INTO `tp_category` VALUES ('33', '联系我们', 'contactus', '0', '2', '0', '', '', '	\r\n		杭州厦龙汽车销售有限公司\r\n	\r\n	\r\n		报价热线：400-880-1713        \r\n	\r\n\r\n\r\n	\r\n\r\n\r\n	', '', 'List_page.html', 'Show_article.html', '<p>\r\n	<span style=\"font-size:24px;\"><b>厦龙房产汇</b></span>\r\n</p>\r\n<p>\r\n	<strong><span style=\"vertical-align:baseline;font-size:24px;\">杭州厦龙汽车销售有限公司</span></strong>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:24px;vertical-align:baseline;\"><strong><span style=\"font-size:24px;vertical-align:baseline;\">销售热线：</span></strong></span><span style=\"font-size:14.4444px;vertical-align:baseline;color:#FF0000;\"><span style=\"font-size:14.4444px;vertical-align:baseline;\"><strong><span style=\"font-size:22px;vertical-align:baseline;\"><span style=\"vertical-align:baseline;font-size:24px;color:#E53333;\">400-880-1713</span><span style=\"font-size:24px;color:#E53333;\">&nbsp;</span><span style=\"color:#E53333;\">&nbsp;</span> &nbsp;</span></strong></span></span><span style=\"font-size:14.4444px;vertical-align:baseline;color:#FF0000;\"><span style=\"font-size:14.4444px;vertical-align:baseline;\"><strong><span style=\"font-size:22px;vertical-align:baseline;\">&nbsp;</span></strong></span></span><span style=\"font-size:14.4444px;vertical-align:baseline;\">&nbsp; &nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:24px;\"><strong>办公电话：<span style=\"color:#E53333;\">0571-28801713</span></strong></span> \r\n</p>\r\n<div style=\"font-family:微软雅黑;margin:0px;padding:0px;border:0px;font-size:14.4444px;vertical-align:baseline;\">\r\n	<br />\r\n</div>\r\n<p>\r\n	<strong><span style=\"font-size:24px;vertical-align:baseline;\"><span style=\"font-size:24px;vertical-align:baseline;\">电子信箱：498588680@qq.com</span></span></strong> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:24px;vertical-align:baseline;line-height:27.9861px;\"><strong>地址：杭州市石祥路589号国际会展中心(汽车城)3400</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:large;vertical-align:baseline;line-height:27.9861px;\"><strong><br />\r\n</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:large;vertical-align:baseline;line-height:27.9861px;\"><strong> \r\n	<iframe src=\"http://www.saloonrv.com/Data/kindeditor417/plugins/baidumap/index.html?center=120.123065%2C30.330724&zoom=17&width=558&height=360&markers=120.123065%2C30.330724&markerStyles=l%2CA\" frameborder=\"0\" style=\"width:560px;height:362px;\">\r\n	</iframe>\r\n</strong></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '1', '1', null);

-- ----------------------------
-- Table structure for `tp_comment`
-- ----------------------------
DROP TABLE IF EXISTS `tp_comment`;
CREATE TABLE `tp_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `postid` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `agent` varchar(255) NOT NULL DEFAULT '',
  `posttime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `postid` (`postid`),
  KEY `modelid` (`modelid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_copyfrom`
-- ----------------------------
DROP TABLE IF EXISTS `tp_copyfrom`;
CREATE TABLE `tp_copyfrom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sitename` varchar(30) NOT NULL DEFAULT '',
  `siteurl` varchar(200) NOT NULL DEFAULT '',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_copyfrom
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_guestbook`
-- ----------------------------
DROP TABLE IF EXISTS `tp_guestbook`;
CREATE TABLE `tp_guestbook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `homepage` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(15) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `posttime` int(10) unsigned NOT NULL DEFAULT '0',
  `replytime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `content` text,
  `reply` text,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_guestbook
-- ----------------------------
INSERT INTO `tp_guestbook` VALUES ('1', '432', '432432', '432', '', '4324', '127.0.0.1', '1411812026', '0', '0', '432423', null, '0');
INSERT INTO `tp_guestbook` VALUES ('2', '432', '432432', '432', '', '4324', '127.0.0.1', '1411812048', '0', '0', '432423', null, '0');

-- ----------------------------
-- Table structure for `tp_itemgroup`
-- ----------------------------
DROP TABLE IF EXISTS `tp_itemgroup`;
CREATE TABLE `tp_itemgroup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `remark` varchar(20) DEFAULT '',
  `status` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_itemgroup
-- ----------------------------
INSERT INTO `tp_itemgroup` VALUES ('1', 'flagtype', '文档属性', '0');
INSERT INTO `tp_itemgroup` VALUES ('2', 'blocktype', '自由块类别', '0');
INSERT INTO `tp_itemgroup` VALUES ('3', 'softtype', '软件类型', '0');
INSERT INTO `tp_itemgroup` VALUES ('4', 'softlanguage', '软件语言', '0');
INSERT INTO `tp_itemgroup` VALUES ('5', 'star', '星座', '0');
INSERT INTO `tp_itemgroup` VALUES ('6', 'animal', '生肖', '0');
INSERT INTO `tp_itemgroup` VALUES ('7', 'education', '教育程度', '0');

-- ----------------------------
-- Table structure for `tp_iteminfo`
-- ----------------------------
DROP TABLE IF EXISTS `tp_iteminfo`;
CREATE TABLE `tp_iteminfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `group` varchar(20) NOT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_iteminfo
-- ----------------------------
INSERT INTO `tp_iteminfo` VALUES ('1', '图片', 'flagtype', '1', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('2', '头条', 'flagtype', '2', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('3', '推荐', 'flagtype', '4', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('4', '特荐', 'flagtype', '8', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('5', '幻灯', 'flagtype', '16', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('6', '跳转', 'flagtype', '32', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('7', '其他', 'flagtype', '64', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('8', '文字', 'blocktype', '1', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('9', '图片', 'blocktype', '2', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('10', '丰富', 'blocktype', '3', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('11', '国产', 'softtype', '1', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('12', '中文版', 'softlanguage', '1', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('13', '英文版', 'softlanguage', '2', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('14', '多语言版', 'softlanguage', '3', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('15', '白羊座', 'star', '1', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('16', '金牛座', 'star', '2', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('17', '双子座', 'star', '3', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('18', '巨蟹座', 'star', '4', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('19', '狮子座', 'star', '5', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('20', '处女座', 'star', '6', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('21', '天枰座', 'star', '7', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('22', '天蝎座', 'star', '8', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('23', '射手座', 'star', '9', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('24', '摩羯座', 'star', '10', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('25', '水瓶座', 'star', '11', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('26', '双鱼座', 'star', '12', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('27', '鼠', 'animal', '1', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('28', '牛', 'animal', '2', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('29', '虎', 'animal', '3', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('30', '兔', 'animal', '4', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('31', '龙', 'animal', '5', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('32', '蛇', 'animal', '6', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('33', '马', 'animal', '7', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('34', '羊', 'animal', '8', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('35', '猴', 'animal', '9', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('36', '鸡', 'animal', '10', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('37', '狗', 'animal', '11', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('38', '猪', 'animal', '12', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('39', '小学', 'education', '1', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('40', '初中', 'education', '2', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('41', '高中/中专', 'education', '3', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('42', '大学专科', 'education', '4', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('43', '大学本科', 'education', '5', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('44', '硕士', 'education', '6', '0', '0');
INSERT INTO `tp_iteminfo` VALUES ('45', '博士以上', 'education', '7', '0', '0');

-- ----------------------------
-- Table structure for `tp_job`
-- ----------------------------
DROP TABLE IF EXISTS `tp_job`;
CREATE TABLE `tp_job` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) unsigned NOT NULL DEFAULT '0',
  `number` int(10) NOT NULL DEFAULT '1',
  `sex` varchar(10) NOT NULL DEFAULT '不限',
  `education` varchar(10) NOT NULL DEFAULT '不限',
  `experience` varchar(20) NOT NULL DEFAULT '一年',
  `location` varchar(20) NOT NULL DEFAULT '杭州西湖区',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_job
-- ----------------------------
INSERT INTO `tp_job` VALUES ('1', '测试', '<p>岗位的描述<br/></p>', '0', '0', '1', '1411720441', '10', '男', '本科', '一年', '杭州西湖区');

-- ----------------------------
-- Table structure for `tp_link`
-- ----------------------------
DROP TABLE IF EXISTS `tp_link`;
CREATE TABLE `tp_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `ischeck` tinyint(1) NOT NULL DEFAULT '1' COMMENT '首页|内页',
  `posttime` int(10) unsigned NOT NULL,
  `sort` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_link
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_member`
-- ----------------------------
DROP TABLE IF EXISTS `tp_member`;
CREATE TABLE `tp_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `encrypt` varchar(6) NOT NULL DEFAULT '',
  `nickname` varchar(20) DEFAULT '',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '总金额',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `face` varchar(60) NOT NULL DEFAULT '' COMMENT '头像',
  `regtime` int(10) unsigned NOT NULL DEFAULT '0',
  `logintime` int(10) unsigned DEFAULT '0',
  `loginip` varchar(20) DEFAULT '',
  `loginnum` mediumint(8) unsigned DEFAULT '0',
  `groupid` smallint(6) unsigned DEFAULT '0',
  `message` tinyint(1) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `islock` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_memberdetail`
-- ----------------------------
DROP TABLE IF EXISTS `tp_memberdetail`;
CREATE TABLE `tp_memberdetail` (
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `realname` varchar(30) NOT NULL DEFAULT '',
  `birthday` date NOT NULL DEFAULT '1980-01-01',
  `province` int(10) unsigned NOT NULL DEFAULT '0',
  `area` int(10) unsigned NOT NULL DEFAULT '0',
  `address` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(12) NOT NULL DEFAULT '',
  `tel` varchar(15) NOT NULL DEFAULT '',
  `mobile` varchar(15) NOT NULL DEFAULT '',
  `animal` int(10) unsigned NOT NULL DEFAULT '0',
  `star` int(10) unsigned NOT NULL DEFAULT '0',
  `blood` int(10) unsigned NOT NULL DEFAULT '0',
  `marital` int(10) unsigned NOT NULL DEFAULT '0',
  `education` int(10) unsigned NOT NULL DEFAULT '0',
  `vocation` int(10) unsigned NOT NULL DEFAULT '0',
  `income` int(10) unsigned NOT NULL DEFAULT '0',
  `maxim` varchar(100) NOT NULL DEFAULT '',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_memberdetail
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_membergroup`
-- ----------------------------
DROP TABLE IF EXISTS `tp_membergroup`;
CREATE TABLE `tp_membergroup` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `status` tinyint(1) DEFAULT '0',
  `sort` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_membergroup
-- ----------------------------
INSERT INTO `tp_membergroup` VALUES ('1', '初级会员', '', '0', '0');
INSERT INTO `tp_membergroup` VALUES ('2', '中级会员', '', '0', '0');

-- ----------------------------
-- Table structure for `tp_model`
-- ----------------------------
DROP TABLE IF EXISTS `tp_model`;
CREATE TABLE `tp_model` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `tablename` varchar(30) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_category` varchar(60) NOT NULL DEFAULT '',
  `template_list` varchar(60) NOT NULL DEFAULT '',
  `template_show` varchar(60) NOT NULL DEFAULT '',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_model
-- ----------------------------
INSERT INTO `tp_model` VALUES ('1', '文章模型', '', 'article', '1', '', 'List_article.html', 'Show_article.html', '1');
INSERT INTO `tp_model` VALUES ('2', '单页模型', '', 'page', '1', '', 'List_page.html', 'Show_page.html', '2');
INSERT INTO `tp_model` VALUES ('3', '通用模型', '', 'product', '1', '', 'List_product.html', 'Show_product.html', '3');
INSERT INTO `tp_model` VALUES ('4', '图片模型', '', 'picture', '0', '', 'List_picture.html', 'Show_picture.html', '4');
INSERT INTO `tp_model` VALUES ('5', '软件下载模块', '', 'soft', '0', '', 'List_soft.html', 'Show_soft.html', '5');

-- ----------------------------
-- Table structure for `tp_node`
-- ----------------------------
DROP TABLE IF EXISTS `tp_node`;
CREATE TABLE `tp_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_node
-- ----------------------------
INSERT INTO `tp_node` VALUES ('1', 'Manage', '后台应用', '1', '', '1', '0', '1');
INSERT INTO `tp_node` VALUES ('2', 'Rbac', '用户权限管理', '1', '', '1', '1', '2');
INSERT INTO `tp_node` VALUES ('3', 'index', '用户列表', '1', '', '1', '2', '3');
INSERT INTO `tp_node` VALUES ('4', 'addUser', '添加用户', '1', '', '2', '2', '3');
INSERT INTO `tp_node` VALUES ('5', 'editUser', '编辑用户', '1', '', '3', '2', '3');
INSERT INTO `tp_node` VALUES ('6', 'delUser', '删除用户', '1', '', '4', '2', '3');
INSERT INTO `tp_node` VALUES ('7', 'Index', '前台应用', '1', '', '2', '0', '1');
INSERT INTO `tp_node` VALUES ('8', 'role', '用户组列表', '1', '', '5', '2', '3');
INSERT INTO `tp_node` VALUES ('9', 'addRole', '添加用户组', '1', '', '6', '2', '3');
INSERT INTO `tp_node` VALUES ('10', 'editRole', '编辑用户组', '1', '', '7', '2', '3');
INSERT INTO `tp_node` VALUES ('11', 'delRole', '删除用户组', '1', '', '8', '2', '3');
INSERT INTO `tp_node` VALUES ('12', 'access', '权限管理', '1', '', '9', '2', '3');
INSERT INTO `tp_node` VALUES ('13', 'node', '节点列表', '0', '', '10', '2', '3');
INSERT INTO `tp_node` VALUES ('14', 'addNode', '添加节点', '0', '', '11', '2', '3');
INSERT INTO `tp_node` VALUES ('15', 'editNode', '编辑节点', '0', '', '12', '2', '3');
INSERT INTO `tp_node` VALUES ('16', 'delNode', '删除节点', '0', '', '13', '2', '3');
INSERT INTO `tp_node` VALUES ('17', 'System', '系统设置', '1', '', '2', '1', '2');
INSERT INTO `tp_node` VALUES ('18', 'site', '网站设置', '1', '', '1', '17', '3');
INSERT INTO `tp_node` VALUES ('19', 'Model', '模型管理', '1', '', '3', '1', '2');
INSERT INTO `tp_node` VALUES ('20', 'index', '模型列表', '1', '', '1', '19', '3');
INSERT INTO `tp_node` VALUES ('21', 'add', '添加模型', '1', '', '2', '19', '3');
INSERT INTO `tp_node` VALUES ('22', 'edit', '模型修改', '1', '', '3', '19', '3');
INSERT INTO `tp_node` VALUES ('23', 'del', '删除模型', '1', '', '4', '19', '3');
INSERT INTO `tp_node` VALUES ('24', 'sort', '更新排序', '1', '', '5', '19', '3');
INSERT INTO `tp_node` VALUES ('25', 'Category', '栏目管理', '1', '', '4', '1', '2');
INSERT INTO `tp_node` VALUES ('26', 'index', '栏目列表', '1', '', '1', '25', '3');
INSERT INTO `tp_node` VALUES ('27', 'add', '添加栏目', '1', '', '2', '25', '3');
INSERT INTO `tp_node` VALUES ('28', 'edit', '修改栏目', '1', '', '3', '25', '3');
INSERT INTO `tp_node` VALUES ('29', 'del', '删除栏目', '1', '', '4', '25', '3');
INSERT INTO `tp_node` VALUES ('30', 'sort', '更新栏目排序', '1', '', '5', '25', '3');
INSERT INTO `tp_node` VALUES ('31', 'Member', '会员管理', '1', '', '5', '1', '2');
INSERT INTO `tp_node` VALUES ('32', 'index', '会员列表', '1', '', '1', '31', '3');
INSERT INTO `tp_node` VALUES ('33', 'add', '添加会员', '1', '', '2', '31', '3');
INSERT INTO `tp_node` VALUES ('34', 'edit', '编辑会员', '1', '', '3', '31', '3');
INSERT INTO `tp_node` VALUES ('35', 'del', '删除会员', '1', '', '4', '31', '3');
INSERT INTO `tp_node` VALUES ('36', 'Membergroup', '会员组管理', '1', '', '6', '1', '2');
INSERT INTO `tp_node` VALUES ('37', 'index', '会员组列表', '1', '', '1', '36', '3');
INSERT INTO `tp_node` VALUES ('38', 'add', '添加会员组', '1', '', '2', '36', '3');
INSERT INTO `tp_node` VALUES ('39', 'edit', '编辑会员组', '1', '', '3', '36', '3');
INSERT INTO `tp_node` VALUES ('40', 'del', '删除会员组', '1', '', '4', '36', '3');
INSERT INTO `tp_node` VALUES ('41', 'Announce', '公告管理', '1', '', '7', '1', '2');
INSERT INTO `tp_node` VALUES ('42', 'index', '公告列表', '1', '', '1', '41', '3');
INSERT INTO `tp_node` VALUES ('43', 'add', '添加公告', '1', '', '2', '41', '3');
INSERT INTO `tp_node` VALUES ('44', 'edit', '编辑公告', '1', '', '3', '41', '3');
INSERT INTO `tp_node` VALUES ('45', 'del', '删除公告', '1', '', '4', '41', '3');
INSERT INTO `tp_node` VALUES ('46', 'Link', '友情链接', '1', '', '8', '1', '2');
INSERT INTO `tp_node` VALUES ('47', 'index', '友情列表', '1', '', '1', '46', '3');
INSERT INTO `tp_node` VALUES ('48', 'add', '添加友情', '1', '', '2', '46', '3');
INSERT INTO `tp_node` VALUES ('49', 'edit', '编辑友情', '1', '', '3', '46', '3');
INSERT INTO `tp_node` VALUES ('50', 'del', '删除友情', '1', '', '4', '46', '3');
INSERT INTO `tp_node` VALUES ('51', 'Guestbook', '留言本管理', '1', '', '9', '1', '2');
INSERT INTO `tp_node` VALUES ('52', 'index', '留言本列表', '1', '', '1', '51', '3');
INSERT INTO `tp_node` VALUES ('53', 'reply', '回复留言', '1', '', '2', '51', '3');
INSERT INTO `tp_node` VALUES ('54', 'del', '删除留言', '1', '', '3', '51', '3');
INSERT INTO `tp_node` VALUES ('55', 'clearCache', '清除缓存', '1', '', '2', '17', '3');
INSERT INTO `tp_node` VALUES ('56', 'Personal', '我的账户', '1', '', '10', '1', '2');
INSERT INTO `tp_node` VALUES ('57', 'index', '修改资料', '1', '', '1', '56', '3');
INSERT INTO `tp_node` VALUES ('58', 'pwd', '修改密码', '1', '', '2', '56', '3');
INSERT INTO `tp_node` VALUES ('59', 'Comment', '评论管理', '1', '', '10', '1', '2');
INSERT INTO `tp_node` VALUES ('60', 'index', '评论列表', '1', '', '1', '59', '3');
INSERT INTO `tp_node` VALUES ('61', 'edit', '编辑评论', '1', '', '2', '59', '3');
INSERT INTO `tp_node` VALUES ('62', 'del', '删除评论', '1', '', '3', '59', '3');
INSERT INTO `tp_node` VALUES ('63', 'Area', '区域管理', '1', '', '12', '1', '2');
INSERT INTO `tp_node` VALUES ('64', 'index', '区域列表', '1', '', '1', '63', '3');
INSERT INTO `tp_node` VALUES ('65', 'add', '添加区域', '1', '', '2', '63', '3');
INSERT INTO `tp_node` VALUES ('66', 'edit', '编辑区域', '1', '', '3', '63', '3');
INSERT INTO `tp_node` VALUES ('67', 'del', '删除区域', '1', '', '4', '63', '3');
INSERT INTO `tp_node` VALUES ('68', 'Itemgroup', '联动组管理', '1', '', '13', '1', '2');
INSERT INTO `tp_node` VALUES ('69', 'index', '联动组列表', '1', '', '1', '68', '3');
INSERT INTO `tp_node` VALUES ('70', 'add', '添加联动组', '1', '', '2', '68', '3');
INSERT INTO `tp_node` VALUES ('71', 'edit', '编辑联动组', '1', '', '3', '68', '3');
INSERT INTO `tp_node` VALUES ('72', 'del', '删除联动组', '1', '', '4', '68', '3');
INSERT INTO `tp_node` VALUES ('73', 'Iteminfo', '联动管理', '1', '', '14', '1', '2');
INSERT INTO `tp_node` VALUES ('74', 'index', '联动列表', '1', '', '1', '73', '3');
INSERT INTO `tp_node` VALUES ('75', 'add', '添加联动', '1', '', '2', '73', '3');
INSERT INTO `tp_node` VALUES ('76', 'edit', '编辑联动', '1', '', '3', '73', '3');
INSERT INTO `tp_node` VALUES ('77', 'del', '删除联动', '1', '', '4', '73', '3');
INSERT INTO `tp_node` VALUES ('78', 'sort', '更新排序', '1', '', '5', '73', '3');
INSERT INTO `tp_node` VALUES ('79', 'Special', '专题管理', '1', '', '15', '1', '2');
INSERT INTO `tp_node` VALUES ('80', 'index', '专题列表', '1', '', '1', '79', '3');
INSERT INTO `tp_node` VALUES ('81', 'add', '添加专题', '1', '', '2', '79', '3');
INSERT INTO `tp_node` VALUES ('82', 'edit', '编辑专题', '1', '', '3', '79', '3');
INSERT INTO `tp_node` VALUES ('83', 'del', '删除专题', '1', '', '4', '79', '3');
INSERT INTO `tp_node` VALUES ('84', 'trach', '回收站', '1', '', '5', '79', '3');
INSERT INTO `tp_node` VALUES ('85', 'restore', '还原专题', '1', '', '6', '79', '3');
INSERT INTO `tp_node` VALUES ('86', 'clear', '彻底删除', '1', '', '7', '79', '3');
INSERT INTO `tp_node` VALUES ('87', 'Block', '自由块管理', '1', '', '16', '1', '2');
INSERT INTO `tp_node` VALUES ('88', 'index', '自由块列表', '1', '', '1', '87', '3');
INSERT INTO `tp_node` VALUES ('89', 'add', '添加自由块', '1', '', '2', '87', '3');
INSERT INTO `tp_node` VALUES ('90', 'edit', '编辑自由块', '1', '', '3', '87', '3');
INSERT INTO `tp_node` VALUES ('91', 'del', '删除自由块', '1', '', '4', '87', '3');
INSERT INTO `tp_node` VALUES ('92', 'Database', '数据库管理', '1', '', '17', '1', '2');
INSERT INTO `tp_node` VALUES ('93', 'index', '数据表列表', '1', '', '1', '92', '3');
INSERT INTO `tp_node` VALUES ('94', 'backup', '数据库备份', '1', '', '2', '92', '3');
INSERT INTO `tp_node` VALUES ('95', 'optimize', '数据表优化', '1', '', '3', '92', '3');
INSERT INTO `tp_node` VALUES ('96', 'repair', '数据表修复', '1', '', '4', '92', '3');
INSERT INTO `tp_node` VALUES ('97', 'restore', '还原管理', '1', '', '5', '92', '3');
INSERT INTO `tp_node` VALUES ('98', 'restoreData', '数据恢复', '1', '', '6', '92', '3');
INSERT INTO `tp_node` VALUES ('99', 'delSqlFiles', '删除文件', '1', '', '7', '92', '3');
INSERT INTO `tp_node` VALUES ('100', 'url', '伪静态缓存设置', '1', '', '3', '17', '3');
INSERT INTO `tp_node` VALUES ('101', 'ClearHtml', '静态缓存管理', '1', '', '18', '1', '2');
INSERT INTO `tp_node` VALUES ('102', 'all', '一键更新全站', '1', '', '1', '101', '3');
INSERT INTO `tp_node` VALUES ('103', 'home', '更新首页', '1', '', '2', '101', '3');
INSERT INTO `tp_node` VALUES ('104', 'lists', '更新栏目', '1', '', '3', '101', '3');
INSERT INTO `tp_node` VALUES ('105', 'shows', '更新文档', '1', '', '4', '101', '3');
INSERT INTO `tp_node` VALUES ('106', 'special', '更新专题', '1', '', '5', '101', '3');

-- ----------------------------
-- Table structure for `tp_order`
-- ----------------------------
DROP TABLE IF EXISTS `tp_order`;
CREATE TABLE `tp_order` (
  `orderid` varchar(80) NOT NULL,
  `memberid` int(10) unsigned NOT NULL,
  `paytype` tinyint(2) NOT NULL DEFAULT '1' COMMENT '支付方式',
  `expressprice` float(13,2) NOT NULL DEFAULT '0.00' COMMENT '邮费/运费',
  `price` float(13,2) NOT NULL DEFAULT '0.00' COMMENT '产品总价格',
  `priceCount` float(13,2) NOT NULL COMMENT '总价格',
  `consignee` varchar(30) DEFAULT NULL COMMENT '收件人',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` int(10) NOT NULL DEFAULT '0',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `stime` int(10) NOT NULL DEFAULT '0',
  KEY `stime` (`stime`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_order
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_orderdetail`
-- ----------------------------
DROP TABLE IF EXISTS `tp_orderdetail`;
CREATE TABLE `tp_orderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(50) DEFAULT NULL COMMENT '订单ID',
  `productid` int(11) DEFAULT NULL,
  `memberid` int(10) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `price` float(13,2) NOT NULL DEFAULT '0.00',
  `num` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_orderdetail
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_picplay`
-- ----------------------------
DROP TABLE IF EXISTS `tp_picplay`;
CREATE TABLE `tp_picplay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `pic` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `ischeck` tinyint(1) NOT NULL DEFAULT '1' COMMENT '首页|内页',
  `posttime` int(10) unsigned NOT NULL,
  `sort` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_picplay
-- ----------------------------
INSERT INTO `tp_picplay` VALUES ('4', '1', 'uploads/img1/index.jpg?t=1029', '', '', '0', '1518159066', '0');

-- ----------------------------
-- Table structure for `tp_picture`
-- ----------------------------
DROP TABLE IF EXISTS `tp_picture`;
CREATE TABLE `tp_picture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL DEFAULT '' COMMENT '标题',
  `color` char(10) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要描述',
  `copyfrom` varchar(100) NOT NULL DEFAULT '' COMMENT '来源',
  `template` varchar(30) NOT NULL DEFAULT '' COMMENT '模板',
  `pictureurls` text COMMENT '图片地址',
  `content` text COMMENT '内容',
  `publishtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `commentflag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jumpurl` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  `weight` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_picture
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_product`
-- ----------------------------
DROP TABLE IF EXISTS `tp_product`;
CREATE TABLE `tp_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL DEFAULT '' COMMENT '标题',
  `color` char(10) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `pictureurls` text COMMENT '图片地址',
  `content` text COMMENT '内容',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要描述',
  `price` float NOT NULL DEFAULT '0',
  `trueprice` float NOT NULL DEFAULT '0',
  `brand` varchar(50) NOT NULL DEFAULT '' COMMENT '品牌',
  `units` varchar(50) NOT NULL DEFAULT '' COMMENT '单位',
  `specification` varchar(50) NOT NULL DEFAULT '' COMMENT '规格',
  `publishtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `commentflag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jumpurl` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  `weight` int(20) NOT NULL DEFAULT '0',
  `subids` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product
-- ----------------------------
INSERT INTO `tp_product` VALUES ('1', '大通多功能服务车', '', '', '/uploads/img1/20180225/5a9255e7e1c47.jpg', '/uploads/img1/20180225/5a9255e7e1c47.jpg$$$$$$|||/uploads/img1/20180225/5a9255eb0048c.jpg$$$$$$|||/uploads/img1/20180225/5a9255ee0058e.jpg$$$$$$|||/uploads/img1/20180225/5a9255f39cf2f.jpg$$$$$$|||/uploads/img1/20180225/5a9255f99cc51.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062210_35795.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062210_96585.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062210_80999.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062211_75882.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062211_32104.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062211_45796.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062211_88159.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062212_11884.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062212_74286.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062212_73750.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062212_33947.jpg\" alt=\"\" />', '大通多功能服务车', '22', '0', '', '', '', '1497489791', '1523413932', '60', '5', '0', '1', '', '0', '0', '1', '0', ',18,27,');
INSERT INTO `tp_product` VALUES ('2', '房车', '', '房车', '', '', '', '房车', '0', '0', '', '', '', '1509095689', '1509095689', '42', '6', '0', '0', '', '1', '0', '1', '0', null);
INSERT INTO `tp_product` VALUES ('3', '大通警用囚车', '', '', '/uploads/img1/20180225/5a9256325c5c1.jpg', '/uploads/img1/20180225/5a9256325c5c1.jpg$$$$$$|||/uploads/img1/20180225/5a92563b86281.jpg$$$$$$|||/uploads/img1/20180225/5a925643c7343.jpg$$$$$$|||/uploads/img1/20180225/5a9256488dfa8.jpg$$$$$$|||/uploads/img1/20180225/5a92564c58a0d.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062330_81037.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062330_61470.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062331_35754.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062331_72091.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062332_71012.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062332_74588.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062332_69691.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062333_29495.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062334_39825.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062334_93339.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1519538339', '1523414348', '91', '5', '0', '5', '', '0', '0', '1', '0', ',29,');
INSERT INTO `tp_product` VALUES ('4', '大通冷藏车', '', '', '/uploads/img1/20180225/5a92536452234.jpg', '/uploads/img1/20180225/5a92536452234.jpg$$$$$$|||/uploads/img1/20180225/5a9253682ffab.jpg$$$$$$|||/uploads/img1/20180225/5a92536b4a95e.jpg$$$$$$|||/uploads/img1/20180225/5a92536e119af.jpg$$$$$$|||/uploads/img1/20180225/5a92537143013.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061117_93339.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061117_28531.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061117_61822.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061117_84435.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061117_27803.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1519539082', '1523414056', '33', '5', '0', '1', '', '0', '0', '1', '0', ',28,');
INSERT INTO `tp_product` VALUES ('5', '大通特种运兵车', '', '', '/uploads/img1/20180225/5a9253e76e7a6.jpg', '/uploads/img1/20180225/5a9253e76e7a6.jpg$$$$$$|||/uploads/img1/20180225/5a9253ea7a16f.jpg$$$$$$|||/uploads/img1/20180225/5a9253ed3ba7b.jpg$$$$$$|||/uploads/img1/20180225/5a9253f2dc202.jpg$$$$$$|||/uploads/img1/20180225/5a925406698be.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061342_93419.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061342_94808.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061342_43395.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061343_29193.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061345_94034.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1519539230', '1523418402', '39', '5', '0', '1', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('6', '大通无障碍车', '', '', '/uploads/img1/20180225/5a925453755a5.jpg', '/uploads/img1/20180225/5a925453755a5.jpg$$$$$$|||/uploads/img1/20180225/5a925458b7661.jpg$$$$$$|||/uploads/img1/20180225/5a92545dcd2dd.jpg$$$$$$|||/uploads/img1/20180225/5a925461132a1.jpg$$$$$$|||/uploads/img1/20180225/5a92546402d7a.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061514_94081.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061514_63033.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061514_10466.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061514_12554.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061514_53632.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1519539320', '1523417973', '26', '5', '0', '3', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('7', '大通运钞车', '', '', '/uploads/img1/20180225/5a925493ef955.jpg', '/uploads/img1/20180225/5a925493ef955.jpg$$$$$$|||/uploads/img1/20180225/5a925496c3003.jpg$$$$$$|||/uploads/img1/20180225/5a92549a4f466.jpg$$$$$$|||/uploads/img1/20180225/5a9254a071e5c.jpg$$$$$$|||/uploads/img1/20180225/5a9254a37d16b.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061627_50891.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061627_58238.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061627_15581.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061627_32653.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061628_94421.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1519539394', '1523417980', '43', '5', '0', '3', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('8', '大通执法车', '', '', '/uploads/img1/20180225/5a9254e29d060.jpg', '/uploads/img1/20180225/5a9254e29d060.jpg$$$$$$|||/uploads/img1/20180225/5a9254e56a54a.jpg$$$$$$|||/uploads/img1/20180225/5a9254e831135.jpg$$$$$$|||/uploads/img1/20180225/5a9254ebd4ebe.jpg$$$$$$|||/uploads/img1/20180225/5a9254ef97f69.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061736_98426.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061736_49325.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061736_36894.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061736_98214.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061736_20873.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225061737_13205.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1519539465', '1523414202', '91', '5', '0', '1', '', '0', '0', '1', '0', ',27,9,29,');
INSERT INTO `tp_product` VALUES ('9', '大通转动型救护车', '', '', '/uploads/img1/20180225/5a925571c0bcf.jpg', '/uploads/img1/20180225/5a925571c0bcf.jpg$$$$$$|||/uploads/img1/20180225/5a92557729d84.jpg$$$$$$|||/uploads/img1/20180225/5a92557b81e9f.jpg$$$$$$|||/uploads/img1/20180225/5a925582a4009.jpg$$$$$$|||/uploads/img1/20180225/5a92558885647.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062006_59740.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062006_93273.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062007_45944.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062007_45936.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062008_88387.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062008_82015.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062009_46708.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062009_88763.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062010_21804.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1519539616', '1523414227', '80', '5', '0', '1', '', '0', '0', '1', '0', ',17,27,');
INSERT INTO `tp_product` VALUES ('10', 'A型勤察车', '', '', '/uploads/img1/20180225/5a9256dac4b41.jpg', '/uploads/img1/20180225/5a9256dac4b41.jpg$$$$$$|||/uploads/img1/20180225/5a9256e03e650.jpg$$$$$$|||/uploads/img1/20180225/5a9256e4da75f.jpg$$$$$$|||/uploads/img1/20180225/5a9256ec27719.jpg$$$$$$|||/uploads/img1/20180225/5a9256f15916e.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062628_73127.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062629_89510.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062629_52302.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062629_29193.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062629_28355.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062629_15427.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062629_73547.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062629_16726.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062629_94081.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062629_50446.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062630_89425.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062630_11601.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1519539995', '1523417987', '60', '5', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('11', 'A型囚车', '', '', '/uploads/img1/20180225/5a9257483a8c2.jpg', '/uploads/img1/20180225/5a9257483a8c2.jpg$$$$$$|||/uploads/img1/20180225/5a92574b054c2.jpg$$$$$$|||/uploads/img1/20180225/5a92574f0cdf5.jpg$$$$$$|||/uploads/img1/20180225/5a925754bd960.jpg$$$$$$|||/uploads/img1/20180225/5a92575851b00.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062752_54285.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062752_51915.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062752_83174.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062752_10466.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062752_58238.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062752_32653.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062752_94421.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062752_98214.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062752_61693.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062753_20873.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062753_15548.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1519540078', '1523417996', '12', '5', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('12', '110巡逻车', '', '', '/uploads/img1/20180225/5a92579e9b6ea.jpg', '/uploads/img1/20180225/5a92579e9b6ea.jpg$$$$$$|||/uploads/img1/20180225/5a9257a314bdd.jpg$$$$$$|||/uploads/img1/20180225/5a9257aaee497.jpg$$$$$$|||/uploads/img1/20180225/5a9257af8f27d.jpg$$$$$$|||/uploads/img1/20180225/5a9257b41cc97.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062927_21398.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062927_17885.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062927_96489.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062927_40989.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062927_12708.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062927_55030.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062928_53813.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062928_49825.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062928_59254.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062928_27075.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062928_58729.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225062928_93273.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1519540184', '1523414333', '91', '5', '0', '1', '', '0', '0', '1', '0', ',9,29,');
INSERT INTO `tp_product` VALUES ('13', '厢式运输车', '', '', '/uploads/img1/20180225/5a9258a29877e.jpg', '/uploads/img1/20180225/5a9258a29877e.jpg$$$$$$|||/uploads/img1/20180225/5a9258a862020.jpg$$$$$$|||/uploads/img1/20180225/5a9258ac0e3cf.jpg$$$$$$|||/uploads/img1/20180225/5a9258b552ebb.jpg$$$$$$|||/uploads/img1/20180225/5a9258b872795.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063346_88387.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063346_88763.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063348_83372.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063348_17413.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063350_30569.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063350_15207.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063351_65480.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063352_15276.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1519540437', '1523414404', '91', '5', '0', '1', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('14', 'A型烟草车', '', '', '/uploads/img1/20180225/5a9258f290eda.png', '/uploads/img1/20180225/5a9258f290eda.png$$$$$$|||/uploads/img1/20180225/5a9258fab2630.jpg$$$$$$|||/uploads/img1/20180225/5a9258fd88512.jpg$$$$$$|||/uploads/img1/20180225/5a925902b62cb.jpg$$$$$$|||/uploads/img1/20180225/5a925908ef5a5.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063508_35480.png\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063625_29714.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063625_63780.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063626_71484.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063627_46699.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063629_36375.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063632_37957.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063634_41275.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1519540597', '1523418006', '15', '5', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('15', 'A型监护型救护车', '', '', '/uploads/img1/20180225/5a9259c43dd1d.jpg', '/uploads/img1/20180225/5a9259c43dd1d.jpg$$$$$$|||/uploads/img1/20180225/5a9259c75016f.jpg$$$$$$|||/uploads/img1/20180225/5a9259cc26493.jpg$$$$$$|||/uploads/img1/20180225/5a9259d25c5e1.jpg$$$$$$|||/uploads/img1/20180225/5a9259d70b022.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063831_26081.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063832_20217.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063834_28698.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063837_68318.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063839_76917.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225063841_66340.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1519540727', '1523414444', '30', '5', '0', '1', '', '0', '0', '1', '0', ',17,');
INSERT INTO `tp_product` VALUES ('16', 'A型指挥车', '', '', '/uploads/img1/20180225/5a925a1c5b970.jpg', '/uploads/img1/20180225/5a925a1c5b970.jpg$$$$$$|||/uploads/img1/20180225/5a925a2c6ec20.jpg$$$$$$|||/uploads/img1/20180225/5a925a36505ae.jpg$$$$$$|||/uploads/img1/20180225/5a925a3b44c1b.jpg$$$$$$|||/uploads/img1/20180225/5a925a56e60a6.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064048_89815.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064048_53190.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064049_29374.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064052_43527.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064052_19585.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064053_66063.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064053_73421.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064056_85423.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1519540860', '1523418024', '32', '5', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('17', 'B型监护型救护车', '', '', '/uploads/img1/20180225/5a925ab4d9615.jpg', '/uploads/img1/20180225/5a925ab4d9615.jpg$$$$$$|||/uploads/img1/20180225/5a925abb35a38.jpg$$$$$$|||/uploads/img1/20180225/5a925ac091b4d.jpg$$$$$$|||/uploads/img1/20180225/5a925ac6ce23b.jpg$$$$$$|||/uploads/img1/20180225/5a925acadd5ef.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064236_79329.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064238_26729.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064241_40695.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064242_27245.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064244_63209.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064247_57603.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1519540976', '1523414521', '89', '5', '0', '1', '', '0', '0', '1', '0', ',17,');
INSERT INTO `tp_product` VALUES ('18', 'B型动兵车', '', '', '/uploads/img1/20180225/5a925b13e1ae9.jpg', '/uploads/img1/20180225/5a925b13e1ae9.jpg$$$$$$|||/uploads/img1/20180225/5a925b172e05c.jpg$$$$$$|||/uploads/img1/20180225/5a925b215fcaf.jpg$$$$$$|||/uploads/img1/20180225/5a925b274606f.jpg$$$$$$|||/uploads/img1/20180225/5a925b2cb7982.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064413_28385.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064414_20123.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064414_82001.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064414_40992.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064415_95979.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064416_81474.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064417_73511.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064418_53585.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064419_40195.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1519541065', '1523418037', '42', '5', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('19', 'B型勘察车', '', '', '/uploads/img1/20180225/5a925b735d90c.jpg', '/uploads/img1/20180225/5a925b735d90c.jpg$$$$$$|||/uploads/img1/20180225/5a925b777e2f0.jpg$$$$$$|||/uploads/img1/20180225/5a925b7a1390c.jpg$$$$$$|||/uploads/img1/20180225/5a925b7c9135e.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064529_42681.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064536_47449.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064536_41322.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064536_66131.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1519541140', '1523414563', '58', '5', '0', '1', '', '0', '0', '1', '0', ',18,9,');
INSERT INTO `tp_product` VALUES ('20', '审判车', '', '', '/uploads/img1/20180225/5a925bb9009f6.jpg', '/uploads/img1/20180225/5a925bb9009f6.jpg$$$$$$|||/uploads/img1/20180225/5a925bbbf1554.jpg$$$$$$|||/uploads/img1/20180225/5a925bbecc188.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064636_14633.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064636_91979.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064637_24002.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1519541200', '1523418047', '34', '5', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('21', '食品检测车', '', '', '/uploads/img1/20180225/5a925bead322f.jpg', '/uploads/img1/20180225/5a925bead322f.jpg$$$$$$|||/uploads/img1/20180225/5a925bee9d62c.jpg$$$$$$|||/uploads/img1/20180225/5a925bf4097eb.jpg$$$$$$|||/uploads/img1/20180225/5a925bfa1016e.jpg$$$$$$|||/uploads/img1/20180225/5a925bff641e8.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064745_93570.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064745_10362.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064745_32799.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064745_13845.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064745_47007.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064746_25369.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225064746_24284.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1519541281', '1523414601', '13', '5', '0', '1', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('22', 'A型冷藏车', '', '', '/uploads/img1/20180225/5a925c93974c4.jpg', '/uploads/img1/20180225/5a925c93974c4.jpg$$$$$$|||/uploads/img1/20180225/5a925c9768e07.jpg$$$$$$|||/uploads/img1/20180225/5a925c9b8bd07.jpg$$$$$$|||/uploads/img1/20180225/5a925c9f056dc.jpg$$$$$$|||/uploads/img1/20180225/5a925ca427d8a.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225065027_84270.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225065027_36518.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225065027_10802.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225065027_49215.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225065028_35699.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225065028_57480.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225065029_23150.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225065029_48150.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225065029_99200.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1519541434', '1523414634', '14', '5', '0', '1', '', '0', '0', '1', '0', ',28,');
INSERT INTO `tp_product` VALUES ('23', '治超车', '', '', '/uploads/img1/20180225/5a925cd85de13.jpg', '/uploads/img1/20180225/5a925cd85de13.jpg$$$$$$|||/uploads/img1/20180225/5a925cdaf1d94.jpg$$$$$$|||/uploads/img1/20180225/5a925cdd876a6.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225065121_81946.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225065121_17256.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225065123_22049.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1519541486', '1523414653', '35', '5', '0', '1', '', '0', '0', '1', '0', ',18,29,');
INSERT INTO `tp_product` VALUES ('24', '十米商务车', '', '', '/uploads/img1/20180225/5a925fb207d3b.jpg', '/uploads/img1/20180225/5a925fb207d3b.jpg$$$$$$|||/uploads/img1/20180225/5a925fb4ca74c.jpg$$$$$$|||/uploads/img1/20180225/5a925fb96add0.jpg$$$$$$|||/uploads/img1/20180225/5a925fbc57bfb.jpg$$$$$$|||/uploads/img1/20180225/5a925fbed9a94.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225070338_96715.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225070338_62726.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225070339_46524.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225070339_21876.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225070339_17215.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225070339_72789.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1519542222', '1523417658', '91', '6', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('25', '商务旅居车', '', '', '/uploads/img1/20180225/5a9260a60d4b3.jpg', '/uploads/img1/20180225/5a9260a60d4b3.jpg$$$$$$|||/uploads/img1/20180225/5a9260a913ef4.jpg$$$$$$|||/uploads/img1/20180225/5a9260abe9c8f.jpg$$$$$$|||/uploads/img1/20180225/5a9260afb15d0.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225070747_28262.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225070747_71391.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225070747_30560.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180225/20180225070748_15358.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1519542471', '1523417667', '75', '6', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('26', '豪华改装大巴房车', '', '', '/uploads/img1/20180305/5a9ca4e239af0.jpg', '/uploads/img1/20180305/5a9ca4e239af0.jpg$$$$$$|||/uploads/img1/20180305/5a9ca4e78c89f.jpg$$$$$$|||/uploads/img1/20180305/5a9ca4e9f389b.jpg$$$$$$|||/uploads/img1/20180305/5a9ca4ed5fdd1.jpg$$$$$$|||/uploads/img1/20180305/5a9ca51c29e3d.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305020234_42662.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305020239_65978.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305020239_11068.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305020239_85986.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305020239_43670.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520215375', '1523414773', '71', '6', '0', '15', '', '0', '0', '1', '0', ',20,');
INSERT INTO `tp_product` VALUES ('27', '12米楼盘展示车', '', '', '/uploads/img1/20180305/5a9ccdf192dda.jpg', '/uploads/img1/20180305/5a9ccdf192dda.jpg$$$$$$|||/uploads/img1/20180305/5a9ccdf3da4b0.jpg$$$$$$|||/uploads/img1/20180305/5a9ccdf5c8489.jpg$$$$$$|||/uploads/img1/20180305/5a9ccdf746320.jpg$$$$$$|||/uploads/img1/20180305/5a9ccdf97ed9e.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305045641_73803.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305045642_55499.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305045642_48757.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305045642_80806.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305045642_83731.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305045642_44955.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520216030', '1523418076', '46', '7', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('28', '产品展示车', '', '', '/uploads/img1/20180305/5a9ca87d81e1f.jpg', '/uploads/img1/20180305/5a9ca87d81e1f.jpg$$$$$$|||/uploads/img1/20180305/5a9ca87f9fcbf.jpg$$$$$$|||/uploads/img1/20180305/5a9ca88162adb.jpg$$$$$$|||/uploads/img1/20180305/5a9ca8832490e.jpg$$$$$$|||/uploads/img1/20180305/5a9ca8873b999.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305021655_64882.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305021655_69713.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305021700_83701.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305021701_20640.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305021701_64588.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305021701_83564.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520216250', '1523414866', '42', '7', '0', '1', '', '0', '0', '1', '0', ',1,5,');
INSERT INTO `tp_product` VALUES ('29', '卫浴展示车', '', '', '/uploads/img1/20180305/5a9ca93fc5b03.JPG', '/uploads/img1/20180305/5a9ca93fc5b03.JPG$$$$$$|||/uploads/img1/20180305/5a9ca94238602.jpg$$$$$$|||/uploads/img1/20180305/5a9ca947a52d3.JPG$$$$$$|||/uploads/img1/20180305/5a9ca944453ba.JPG$$$$$$|||/uploads/img1/20180305/5a9ca9432cd93.JPG$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305022010_14383.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305022010_32337.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305022011_52962.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305022013_32705.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305022014_68296.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520216434', '1523418084', '53', '7', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('30', '卫浴展示车', '', '', '/uploads/img1/20180305/5a9cc21d2ed75.jpg', '/uploads/img1/20180305/5a9cc21d2ed75.jpg$$$$$$|||/uploads/img1/20180305/5a9ca9e81bcb5.jpg$$$$$$|||/uploads/img1/20180305/5a9ca9e9c760c.jpg$$$$$$|||/uploads/img1/20180305/5a9ca9ed31257.jpg$$$$$$|||/uploads/img1/20180305/5a9ca9f00b2de.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/uploads/kindedit/image/20180305/20180305044413_84803.jpg\" alt=\"\" /><br />\r\n</div>\r\n<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305022253_55115.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305022253_96786.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305022253_64917.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305022253_56447.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305022253_79334.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305022254_35870.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520216579', '1523418215', '16', '7', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('31', '移动售楼车 经典款', '', '', '/uploads/img1/20180305/5a9caa7fd3e62.JPG', '/uploads/img1/20180305/5a9caa7fd3e62.JPG$$$$$$|||/uploads/img1/20180305/5a9caa87a5e41.JPG$$$$$$|||/uploads/img1/20180305/5a9caa899d906.JPG$$$$$$|||/uploads/img1/20180305/5a9caa8c36ee6.JPG$$$$$$|||/uploads/img1/20180305/5a9caa8e10908.JPG$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305022551_93075.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305022556_47023.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305022557_63264.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305022558_93059.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305022559_54577.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520216764', '1523418106', '54', '7', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('32', '多功能售楼车', '', '', '/uploads/img1/20180305/5a9cab222c606.JPG', '/uploads/img1/20180305/5a9cab222c606.JPG$$$$$$|||/uploads/img1/20180305/5a9cab2791d20.JPG$$$$$$|||/uploads/img1/20180305/5a9cab298b2e5.JPG$$$$$$|||/uploads/img1/20180305/5a9cab2b0fd6e.JPG$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305044201_20412.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305044201_21502.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305044201_56285.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305044201_75722.jpg\" alt=\"\" /><br />\r\n</div>', '	\r\n', '0', '0', '', '', '', '1520216895', '1523418066', '67', '7', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('33', '楼盘展示车', '', '', '/uploads/img1/20180305/5a9cabab960b8.jpg', '/uploads/img1/20180305/5a9cabab960b8.jpg$$$$$$|||/uploads/img1/20180305/5a9cabaed71df.jpg$$$$$$|||/uploads/img1/20180305/5a9cabb060700.jpg$$$$$$|||/uploads/img1/20180305/5a9cabb1de9e2.jpg$$$$$$|||/uploads/img1/20180305/5a9cabb35e0fe.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305023022_37556.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305023022_83970.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305023022_68614.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305023022_91260.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305023022_64904.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520217028', '1523414995', '33', '7', '0', '1', '', '0', '0', '1', '0', ',1,5,14,23,');
INSERT INTO `tp_product` VALUES ('34', '多功能房车', '', '', '/uploads/img1/20180305/5a9cabf5200f7.jpg', '/uploads/img1/20180305/5a9cabf5200f7.jpg$$$$$$|||/uploads/img1/20180305/5a9cabf961aa1.jpg$$$$$$|||/uploads/img1/20180305/5a9cabfa7caa1.jpg$$$$$$|||/uploads/img1/20180305/5a9cabfd4a68f.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305023202_47238.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305023202_67216.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305023203_44428.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305023204_50525.jpg\" alt=\"\" /><br />\r\n</div>', '	\r\n', '0', '0', '', '', '', '1520217131', '1523418119', '60', '7', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('35', '楼盘展示车', '', '', '/uploads/img1/20180305/5a9cacd312bd2.jpg', '/uploads/img1/20180305/5a9cacd312bd2.jpg$$$$$$|||/uploads/img1/20180305/5a9cacd5d389e.jpg$$$$$$|||/uploads/img1/20180305/5a9cacd74e259.jpg$$$$$$|||/uploads/img1/20180305/5a9cacd9114f6.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305023516_96745.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305023516_52783.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305023516_48402.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305023517_39300.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520217326', '1523418129', '15', '7', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('36', '斯堪尼亚房车', '', '', '/uploads/img1/20180305/5a9cadb8b9b90.jpg', '/uploads/img1/20180305/5a9cadb8b9b90.jpg$$$$$$|||/uploads/img1/20180305/5a9cadbbefe1b.jpg$$$$$$|||/uploads/img1/20180305/5a9cadbe29dc0.jpg$$$$$$|||/uploads/img1/20180305/5a9cadc02c81e.JPG$$$$$$|||/uploads/img1/20180305/5a9cadc1e3b06.JPG$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305023910_84003.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305023910_10332.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305023911_25114.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305023913_70790.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305023914_16536.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520217573', '1523417684', '35', '6', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('37', '12米豪华房车', '', '', '/uploads/img1/20180305/5a9cae3d7a448.jpg', '/uploads/img1/20180305/5a9cae3d7a448.jpg$$$$$$|||/uploads/img1/20180305/5a9cae3f12239.jpg$$$$$$|||/uploads/img1/20180305/5a9cae40b2861.jpg$$$$$$|||/uploads/img1/20180305/5a9cae4234767.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024124_93910.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024124_11593.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024124_56224.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024125_22741.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520217692', '1523417692', '70', '6', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('38', '商务旅居车', '', '', '/uploads/img1/20180305/5a9caeb1af156.jpg', '/uploads/img1/20180305/5a9caeb1af156.jpg$$$$$$|||/uploads/img1/20180305/5a9caeb55865b.jpg$$$$$$|||/uploads/img1/20180305/5a9caeb706ff2.jpg$$$$$$|||/uploads/img1/20180305/5a9caeba4bbbb.jpg$$$$$$|||/uploads/img1/20180305/5a9caebbdcaa9.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024319_64549.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024319_31560.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024319_86415.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024319_40379.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024319_52039.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024319_95998.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520217806', '1523417703', '43', '6', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('39', '商务接待车', '', '', '/uploads/img1/20180305/5a9caf55e9c5f.jpg', '/uploads/img1/20180305/5a9caf55e9c5f.jpg$$$$$$|||/uploads/img1/20180305/5a9caf578e857.jpg$$$$$$|||/uploads/img1/20180305/5a9caf5b4dbe8.jpg$$$$$$|||/uploads/img1/20180305/5a9caf5ca0331.jpg$$$$$$|||/uploads/img1/20180305/5a9caf5e0f37d.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024612_79977.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024612_80507.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024612_32741.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024612_13131.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024612_59001.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520217978', '1523415144', '83', '6', '0', '1', '', '0', '0', '1', '0', ',21,');
INSERT INTO `tp_product` VALUES ('40', '豪华接待车', '', '', '/uploads/img1/20180305/5a9cafbf9148f.jpg', '/uploads/img1/20180305/5a9cafbf9148f.jpg$$$$$$|||/uploads/img1/20180305/5a9cafc35fd28.jpg$$$$$$|||/uploads/img1/20180305/5a9cafc55c754.jpg$$$$$$|||/uploads/img1/20180305/5a9cafc748da6.jpg$$$$$$|||/uploads/img1/20180305/5a9cafc8caa55.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024751_45205.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024751_62443.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024751_36781.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024751_84542.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024751_18385.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024751_95874.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520218077', '1523417635', '18', '6', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('41', '商务礼宾车', '', '', '/uploads/img1/20180305/5a9cb01b1b67e.jpg', '/uploads/img1/20180305/5a9cb01b1b67e.jpg$$$$$$|||/uploads/img1/20180305/5a9cb01cbbc65.jpg$$$$$$|||/uploads/img1/20180305/5a9cb021b7c21.jpg$$$$$$|||/uploads/img1/20180305/5a9cb02a6b66c.jpg$$$$$$|||/uploads/img1/20180305/5a9cb02c87467.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024930_65920.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024930_98514.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024930_91474.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024930_59638.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024930_75648.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305024930_24938.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520218177', '1523415189', '69', '6', '0', '1', '', '0', '0', '1', '0', ',21,');
INSERT INTO `tp_product` VALUES ('42', '12米旅居车', '', '', '/uploads/img1/20180305/5a9cb0dad84c9.jpg', '/uploads/img1/20180305/5a9cb0dad84c9.jpg$$$$$$|||/uploads/img1/20180305/5a9cb0dc5ccf0.jpg$$$$$$|||/uploads/img1/20180305/5a9cb0dd6c6f0.jpg$$$$$$|||/uploads/img1/20180305/5a9cb0dedf8a2.jpg$$$$$$|||/uploads/img1/20180305/5a9cb0e02f2fa.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305025227_70051.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305025228_53244.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305025228_97981.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305025228_42448.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305025228_87376.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520218355', '1523417648', '13', '6', '0', '15', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('43', '商务旅居车', '', '', '/uploads/img1/20180305/5a9cb14c11311.jpg', '/uploads/img1/20180305/5a9cb14c11311.jpg$$$$$$|||/uploads/img1/20180305/5a9cb14eee2d1.jpg$$$$$$|||/uploads/img1/20180305/5a9cb1508b2d5.jpg$$$$$$|||/uploads/img1/20180305/5a9cb15205bf1.jpg$$$$$$|||/uploads/img1/20180305/5a9cb15428cf0.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305025421_57128.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305025421_36595.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305025421_74830.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305025422_62286.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305025422_84814.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305025422_43623.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520218468', '1523417737', '15', '6', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('44', '金龙超大房车', '', '', '/uploads/img1/20180305/5a9cb22d87ee9.jpg', '/uploads/img1/20180305/5a9cb22d87ee9.jpg$$$$$$|||/uploads/img1/20180305/5a9cb231063a9.jpg$$$$$$|||/uploads/img1/20180305/5a9cb23262b2d.jpg$$$$$$|||/uploads/img1/20180305/5a9cb233b5982.jpg$$$$$$|||/uploads/img1/20180305/5a9cb2368ba1b.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305025808_30319.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305025808_44269.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305025808_63410.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305025809_14707.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305025809_59226.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305025809_84179.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520218693', '1523418238', '28', '6', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('45', '卫浴车', '', '', '/uploads/img1/20180305/5a9cc9f5ba3a3.jpg', '/uploads/img1/20180305/5a9cc9f5ba3a3.jpg$$$$$$|||/uploads/img1/20180305/5a9cb29d5ade9.jpg$$$$$$|||/uploads/img1/20180305/5a9cb29eb6042.jpg$$$$$$|||/uploads/img1/20180305/5a9cb2a0a6d11.jpg$$$$$$|||/uploads/img1/20180305/5a9cb2a1ebaf9.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/uploads/kindedit/image/20180305/20180305043933_10774.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305040407_27193.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305040407_42415.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305040407_89884.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305040407_53096.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305040407_81768.jpg\" alt=\"\" /><br />\r\n</div>', '	\r\n', '0', '0', '', '', '', '1520218801', '1523415273', '94', '7', '0', '15', '', '0', '0', '1', '0', ',1,5,24,');
INSERT INTO `tp_product` VALUES ('46', '豪华旅居车', '', '', '/uploads/img1/20180305/5a9cb357cb327.jpg', '/uploads/img1/20180305/5a9cb357cb327.jpg$$$$$$|||/uploads/img1/20180305/5a9cb3594fcb2.jpg$$$$$$|||/uploads/img1/20180305/5a9cb35b1e1aa.jpg$$$$$$|||/uploads/img1/20180305/5a9cb35e1b856.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305030310_37704.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305030311_70652.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305030311_45584.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305030312_58265.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305030312_72633.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305030313_47784.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520219018', '1523415298', '36', '6', '0', '1', '', '0', '0', '1', '0', ',20,');
INSERT INTO `tp_product` VALUES ('47', '金龙接待礼宾车', '', '', '/uploads/img1/20180305/5a9cb3c12d604.jpg', '/uploads/img1/20180305/5a9cb3c12d604.jpg$$$$$$|||/uploads/img1/20180305/5a9cb3c362f94.jpg$$$$$$|||/uploads/img1/20180305/5a9cb3c5448bc.jpg$$$$$$|||/uploads/img1/20180305/5a9cb3c7a3c94.jpg$$$$$$|||/uploads/img1/20180305/5a9cb3c9af7ca.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305030451_98552.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305030451_69589.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305030451_59199.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305030451_72748.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305030451_23796.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305030451_44085.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520219097', '1523417772', '15', '6', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('48', '金龙房车', '', '', '/uploads/img1/20180305/5a9cc93d4b49f.jpg', '/uploads/img1/20180305/5a9cc93d4b49f.jpg$$$$$$|||/uploads/img1/20180305/5a9cb4f9c0804.jpg$$$$$$|||/uploads/img1/20180305/5a9cb4fb2e5f4.jpg$$$$$$|||/uploads/img1/20180305/5a9cb4fc9968f.jpg$$$$$$|||/uploads/img1/20180305/5a9cb4fe18fba.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/uploads/kindedit/image/20180305/20180305043642_69894.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305030959_97835.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305030959_96553.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305030959_61122.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305030959_62937.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520219405', '1523417788', '47', '6', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('49', '豪华大巴改装', '', '', '/uploads/img1/20180305/5a9cb54167c6f.JPG', '/uploads/img1/20180305/5a9cb54167c6f.JPG$$$$$$|||/uploads/img1/20180305/5a9cb544458c6.JPG$$$$$$|||/uploads/img1/20180305/5a9cb545e5f0e.JPG$$$$$$|||/uploads/img1/20180305/5a9cb5474d93c.JPG$$$$$$|||/uploads/img1/20180305/5a9cb54ab8264.JPG$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305031116_13199.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305031116_25650.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305031117_59446.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305031118_49613.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305031118_43233.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520219485', '1523417626', '60', '6', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('50', '大巴商务接待车', '', '', '/uploads/img1/20180305/5a9cb59d1d04a.JPG', '/uploads/img1/20180305/5a9cb59d1d04a.JPG$$$$$$|||/uploads/img1/20180305/5a9cb59ebd6c4.JPG$$$$$$|||/uploads/img1/20180305/5a9cb5a05d115.jpg$$$$$$|||/uploads/img1/20180305/5a9cb5a24d759.jpg$$$$$$|||/uploads/img1/20180305/5a9cb5a3c7ae1.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305031246_75684.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305031246_97077.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305031246_21799.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305031246_85629.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305031247_75063.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520219572', '1523415552', '49', '6', '0', '1', '', '0', '0', '1', '0', ',21,');
INSERT INTO `tp_product` VALUES ('51', '金龙豪华大巴房车', '', '', '/uploads/img1/20180305/5a9cb5e14602e.jpg', '/uploads/img1/20180305/5a9cb5e14602e.jpg$$$$$$|||/uploads/img1/20180305/5a9cb5e3ede56.jpg$$$$$$|||/uploads/img1/20180305/5a9cb5e549cb1.jpg$$$$$$|||/uploads/img1/20180305/5a9cb5e6bb61b.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305043215_12958.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305043215_33054.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305043215_26864.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305043215_45318.jpg\" alt=\"\" /><br />\r\n</div>', '	\r\n', '0', '0', '', '', '', '1520219642', '1523416375', '78', '6', '0', '1', '', '0', '0', '1', '0', ',20,');
INSERT INTO `tp_product` VALUES ('52', '移动KTV车', '', '', '/uploads/img1/20180305/5a9cb729848de.jpg', '/uploads/img1/20180305/5a9cb729848de.jpg$$$$$$|||/uploads/img1/20180305/5a9cb72c474bf.jpg$$$$$$|||/uploads/img1/20180305/5a9cb72d8feef.jpg$$$$$$|||/uploads/img1/20180305/5a9cb72f24fff.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305031928_61429.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305031928_28967.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305031929_68647.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305031930_72344.jpg\" alt=\"\" />\r\n</div>', '\r\n	\r\n', '0', '0', '', '', '', '1520219981', '1520219981', '43', '5', '0', '15', '', '1', '0', '1', '0', null);
INSERT INTO `tp_product` VALUES ('53', '移动KTV车', '', '', '/uploads/img1/20180305/5a9cc62b62ea5.jpg', '/uploads/img1/20180305/5a9cc62b62ea5.jpg$$$$$$|||/uploads/img1/20180305/5a9cb7d7c5ed5.jpg$$$$$$|||/uploads/img1/20180305/5a9cb7dce8570.jpg$$$$$$|||/uploads/img1/20180305/5a9cb7de361c2.jpg$$$$$$|||/uploads/img1/20180305/5a9cb7e02a1f1.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305042656_98135.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305042656_91037.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305042656_21881.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305042656_41838.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305042656_83039.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520220206', '1523416520', '34', '9', '0', '15', '', '0', '0', '1', '0', ',5,15,');
INSERT INTO `tp_product` VALUES ('54', '移动指挥车', '', '', '/uploads/img1/20180305/5a9cb8599d167.jpg', '/uploads/img1/20180305/5a9cb8599d167.jpg$$$$$$|||/uploads/img1/20180305/5a9cb85ba114e.jpg$$$$$$|||/uploads/img1/20180305/5a9cb85faf495.jpg$$$$$$|||/uploads/img1/20180305/5a9cb860d565b.jpg$$$$$$|||/uploads/img1/20180305/5a9cb8633a4a8.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305032430_52165.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305032430_14419.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305032430_61199.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305032430_67579.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305032430_76945.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520220280', '1523416542', '14', '9', '0', '1', '', '0', '0', '1', '0', ',16,');
INSERT INTO `tp_product` VALUES ('55', '汽车图书馆', '', '', '/uploads/img1/20180305/5a9cb8b0acd32.jpg', '/uploads/img1/20180305/5a9cb8b0acd32.jpg$$$$$$|||/uploads/img1/20180305/5a9cb8b2f407e.jpg$$$$$$|||/uploads/img1/20180305/5a9cb8b5409e6.jpg$$$$$$|||/uploads/img1/20180305/5a9cb8b70f2a7.jpg$$$$$$|||/uploads/img1/20180305/5a9cb8b87604a.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180531/20180531033323_27605.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180531/20180531033323_81353.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180531/20180531033323_93375.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180531/20180531033323_77214.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180531/20180531033324_46521.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180531/20180531033324_58683.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180531/20180531033324_55840.jpg\" alt=\"\" />', '	\r\n', '0', '0', '', '', '', '1520220364', '1527737608', '51', '10', '0', '1', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('56', '移动献血车', '', '', '/uploads/img1/20180305/5a9cb900a0bac.jpg', '/uploads/img1/20180305/5a9cb900a0bac.jpg$$$$$$|||/uploads/img1/20180305/5a9cb90240d08.jpg$$$$$$|||/uploads/img1/20180305/5a9cb903911c7.jpg$$$$$$|||/uploads/img1/20180305/5a9cb904a52cc.jpg$$$$$$|||/uploads/img1/20180305/5a9cb90635a65.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305032713_93548.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305032713_31340.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305032713_75061.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305032713_16006.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305032713_50981.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305032713_41926.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520220439', '1523416591', '52', '9', '0', '15', '', '0', '0', '1', '0', ',17,');
INSERT INTO `tp_product` VALUES ('57', '豪华采血车', '', '', '/uploads/img1/20180305/5a9cb99196b42.jpg', '/uploads/img1/20180305/5a9cb99196b42.jpg$$$$$$|||/uploads/img1/20180305/5a9cb994107a3.JPG$$$$$$|||/uploads/img1/20180305/5a9cb996059e9.JPG$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305032938_79864.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305032938_69639.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305032939_83429.jpg\" alt=\"\" />\r\n</div>', '\r\n	\r\n', '0', '0', '', '', '', '1520220584', '1520220584', '59', '9', '0', '15', '', '1', '0', '1', '0', null);
INSERT INTO `tp_product` VALUES ('58', '献血车改装', '', '', '/uploads/img1/20180305/5a9cb9d873828.jpg', '/uploads/img1/20180305/5a9cb9d873828.jpg$$$$$$|||/uploads/img1/20180305/5a9cb9dad307a.jpg$$$$$$|||/uploads/img1/20180305/5a9cb9dc64540.jpg$$$$$$|||/uploads/img1/20180305/5a9cb9dd8e3d7.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305033047_47001.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305033047_47619.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305033047_72119.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180305/20180305033047_86019.jpg\" alt=\"\" /> \r\n</div>', '	\r\n', '0', '0', '', '', '', '1520220653', '1523416610', '22', '9', '0', '1', '', '0', '0', '1', '0', ',17,');
INSERT INTO `tp_product` VALUES ('59', '移动楼盘车', '', '', '/uploads/img1/20180531/5b0f5c23692ef.JPG', '/uploads/img1/20180531/5b0f5c23692ef.JPG$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530071303_50182.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530071303_27861.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530071304_79664.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530071304_94190.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530071304_56192.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530071304_81023.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530071304_89823.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1520303067', '1527733290', '78', '13', '0', '1', 'http://www.saloonrv.com/index.php?s=/List/index/cid/5.html', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('60', '房车', '', '', '/uploads/img1/20180306/5a9dfbe2c603c.jpg', '/uploads/img1/20180306/5a9dfbe2c603c.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530021911_29242.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530021911_15965.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530021911_28981.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530021912_61399.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530021912_52393.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530021912_48078.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530021912_24779.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530021912_88225.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1520303084', '1527646758', '93', '13', '0', '1', 'http://www.saloonrv.com/index.php?s=/List/index/cid/6.html', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('61', '服务车', '', '', '/uploads/img1/20180306/5a9dfc04c67d3.jpg', '/uploads/img1/20180306/5a9dfc04c67d3.jpg$$$$$$', '', '', '0', '0', '', '', '', '1520303113', '1523585076', '22', '13', '0', '33', 'http://www.saloonrv.com/index.php?s=/List/index/cid/5.html', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('62', '移动KTV车', '', '', '/uploads/img1/20180530/5b0e3f93ea4c1.JPG', '/uploads/img1/20180530/5b0e3f93ea4c1.JPG$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530055754_34818.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530055754_16069.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530055754_50218.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530055754_24721.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530055834_19091.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530055834_38278.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530055835_77546.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530055835_47658.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1520303136', '1527660441', '82', '13', '0', '1', 'http://www.saloonrv.com/index.php?s=/List/index/cid/9.html', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('63', '移动图书车', '', '', '/uploads/img1/20180531/5b0f6ff76e3d2.JPG', '/uploads/img1/20180531/5b0f6ff76e3d2.JPG$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180531/20180531034140_86368.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180531/20180531034140_88324.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180531/20180531034140_80471.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180531/20180531034140_23837.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180531/20180531034140_16270.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180531/20180531034140_25666.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180531/20180531034140_24982.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1520303147', '1527738363', '29', '13', '0', '1', 'http://www.saloonrv.com/index.php?s=/List/index/cid/18.html', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('64', '商务车', '', '', '/uploads/img1/20180306/5a9dfc351eb0d.jpg', '/uploads/img1/20180306/5a9dfc351eb0d.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530032435_93150.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530032436_63734.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530032436_36946.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530032436_63129.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530032436_52563.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530032436_34051.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530032439_46952.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180530/20180530032439_69543.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1520303162', '1527650684', '92', '13', '0', '1', 'http://www.saloonrv.com/index.php?s=/List/index/cid/6.html', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('65', '升顶车', '', '', '/uploads/img1/20180306/5a9dfc49855e5.jpg', '/uploads/img1/20180306/5a9dfc49855e5.jpg$$$$$$', '', '', '0', '0', '', '', '', '1520303192', '1523585217', '88', '13', '0', '33', 'http://www.saloonrv.com/index.php?s=/List/index/cid/26.html', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('66', '医疗车', '', '', '/uploads/img1/20180306/5a9dfc645bbe5.jpg', '/uploads/img1/20180306/5a9dfc645bbe5.jpg$$$$$$', '', '', '0', '0', '', '', '', '1520303215', '1523585235', '24', '13', '0', '33', 'http://www.saloonrv.com/index.php?s=/List/index/cid/17.html', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('67', '执法车', '', '', '/uploads/img1/20180306/5a9dfc72e4d3e.jpg', '/uploads/img1/20180306/5a9dfc72e4d3e.jpg$$$$$$', '', '', '0', '0', '', '', '', '1520303228', '1523585248', '30', '13', '0', '33', 'http://www.saloonrv.com/index.php?s=/List/index/cid/29.html', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('68', '个性定制', '', '', '/uploads/img1/20180306/5a9dfc80e55fc.jpg', '/uploads/img1/20180306/5a9dfc80e55fc.jpg$$$$$$', '', '', '0', '0', '', '', '', '1520303240', '1523585258', '67', '13', '0', '33', 'http://www.saloonrv.com/index.php?s=/List/index/cid/3.html', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('69', '尼奥普兰房车', '', '', '/uploads/img1/20180418/5ad6d4e239986.jpg', '/uploads/img1/20180418/5ad6d4e239986.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"http://www.saloonrv.com/uploads/kindedit/image/20180418/20180418052510_41772.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180418/20180418052325_80084.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180418/20180418052326_71089.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180418/20180418052326_17347.jpg\" alt=\"\" />\r\n</div>', '\r\n	\r\n', '0', '0', '', '', '', '1524029172', '1524029172', '19', '1', '0', '1', '', '1', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('70', '尼奥普兰房车', '', '', '/uploads/img1/20180419/5ad7ef3d2d709.jpg', '/uploads/img1/20180419/5ad7ef3d2d709.jpg$$$$$$', '<div style=\"text-align:center;\">\r\n	<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180419/20180419012220_52654.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180419/20180419012221_29662.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180419/20180419012222_66675.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180419/20180419012222_52341.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180419/20180419012224_80359.jpg\" alt=\"\" />\r\n</div>', '\r\n	\r\n', '0', '0', '', '', '', '1524100967', '1524100967', '70', '1', '0', '1', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('71', '尼奥普兰10米商务车', '', '', '/uploads/img1/20180502/5ae931cc626a6.jpg', '/uploads/img1/20180502/5ae931cc626a6.jpg$$$$$$|||/uploads/img1/20180502/5ae9305f0617a.png$$$$$$|||/uploads/img1/20180502/5ae9306a973d3.png$$$$$$|||/uploads/img1/20180502/5ae930799a8a2.png$$$$$$', '<img src=\"/uploads/kindedit/image/20180502/20180502033533_52676.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180502/20180502033243_89079.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180502/20180502033244_15907.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180502/20180502033244_72888.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1525231968', '1525232135', '73', '21', '0', '13', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('72', '12米金龙售楼车', '', '', '/uploads/img1/20180503/5aea766cd3b8a.jpg', '/uploads/img1/20180503/5aea766cd3b8a.jpg$$$$$$|||/uploads/img1/20180503/5aea7670d3997.jpg$$$$$$|||/uploads/img1/20180503/5aea767337057.jpg$$$$$$|||/uploads/img1/20180503/5aea76767bd5e.jpg$$$$$$|||/uploads/img1/20180503/5aea7679111f6.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180503/20180503024009_14062.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180503/20180503024009_60592.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180503/20180503024009_40314.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180503/20180503024009_73712.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1525315221', '1525315221', '44', '14', '0', '5', '', '0', '0', '1', '0', ',5,14,7,23,');
INSERT INTO `tp_product` VALUES ('76', '11111', '', '', '', '', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180531/20180531033528_72385.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180531/20180531033528_32033.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180531/20180531033528_52074.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180531/20180531033529_34903.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180531/20180531033529_76643.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180531/20180531033529_96750.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180531/20180531033529_41475.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1527737732', '1527737732', '90', '10', '0', '1', '', '1', '0', '1', '0', ',10,');
INSERT INTO `tp_product` VALUES ('73', '尼奥普兰移动KTV房车', '', '尼奥普兰移动KTV房车，双拓展仓', '/uploads/img1/20180507/5aefc9efdd9e6.jpg', '/uploads/img1/20180507/5aefc9efdd9e6.jpg$$$$$$|||/uploads/img1/20180507/5aefc87db7198.jpg$$$$$$|||/uploads/img1/20180507/5aefc8821630b.jpg$$$$$$|||/uploads/img1/20180507/5aefc88686527.jpg$$$$$$|||/uploads/img1/20180507/5aefc88d5e655.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180507/20180507034620_58565.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180507/20180507034620_28770.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180507/20180507034621_79397.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180507/20180507034621_98470.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180507/20180507034633_55307.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1525664379', '1525664797', '79', '15', '0', '13', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('74', '产品服装展示车', '', '', '/uploads/img1/20180508/5af13f2991a3c.jpg', '/uploads/img1/20180508/5af13f2991a3c.jpg$$$$$$|||/uploads/img1/20180508/5af13f32bc15c.jpg$$$$$$|||/uploads/img1/20180508/5af13f3a090cd.jpg$$$$$$|||/uploads/img1/20180508/5af13f3f7f7ee.jpg$$$$$$|||/uploads/img1/20180508/5af13f43a4c62.jpg$$$$$$', '<img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180508/20180508061032_64739.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180508/20180508061032_56436.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180508/20180508061032_14913.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180508/20180508061032_14023.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180508/20180508061032_54961.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180508/20180508061033_38762.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180508/20180508061033_98588.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180508/20180508061033_62737.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180508/20180508061033_87096.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180508/20180508061033_91493.jpg\" alt=\"\" /><img src=\"/Data/kindeditor417/php/../../../uploads/kindedit/image/20180508/20180508061034_85769.jpg\" alt=\"\" />', '', '0', '0', '', '', '', '1525759978', '1525760631', '35', '25', '0', '7', '', '0', '0', '1', '0', ',,');
INSERT INTO `tp_product` VALUES ('75', '产品测试0521', '', '4', '', '', '99', '99', '0', '0', '', '', '', '1526870043', '1526870043', '42', '1', '0', '0', '', '1', '0', '1', '0', ',,');

-- ----------------------------
-- Table structure for `tp_role`
-- ----------------------------
DROP TABLE IF EXISTS `tp_role`;
CREATE TABLE `tp_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_role
-- ----------------------------
INSERT INTO `tp_role` VALUES ('1', '管理员', '0', '1', '管理员');

-- ----------------------------
-- Table structure for `tp_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_role_user`;
CREATE TABLE `tp_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_soft`
-- ----------------------------
DROP TABLE IF EXISTS `tp_soft`;
CREATE TABLE `tp_soft` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL DEFAULT '' COMMENT '标题',
  `color` char(10) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `pictureurls` text,
  `content` text COMMENT '内容',
  `updatelog` text COMMENT '更新日志',
  `downlink` text COMMENT '下载地址',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要描述',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '版本号',
  `softtype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '软件类型',
  `copytype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '授权形式',
  `language` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '语言',
  `os` varchar(100) NOT NULL DEFAULT '' COMMENT '运行环境',
  `filesize` varchar(10) NOT NULL DEFAULT '' COMMENT '文件大小',
  `officialurl` varchar(100) NOT NULL DEFAULT '' COMMENT '官方网站',
  `publishtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `commentflag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jumpurl` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_soft
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_special`
-- ----------------------------
DROP TABLE IF EXISTS `tp_special`;
CREATE TABLE `tp_special` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '',
  `shorttitle` varchar(30) NOT NULL DEFAULT '' COMMENT '副标题',
  `color` char(10) NOT NULL DEFAULT '',
  `author` varchar(30) NOT NULL DEFAULT '',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` varchar(255) NOT NULL DEFAULT '',
  `content` text COMMENT '内容',
  `publishtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `commentflag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jumpurl` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `filename` varchar(60) DEFAULT '',
  `template` varchar(60) NOT NULL DEFAULT '',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_special
-- ----------------------------
