/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50537
Source Host           : 127.0.0.1:3306
Source Database       : newbus

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2018-02-09 17:22:41
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
INSERT INTO `tp_admin` VALUES ('1', 'admin', '0731a9e4628ba4dafe3c9b4e576ad7e2', 'umqvjg', '', '', '9', '1518156615', '127.0.0.1', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_article
-- ----------------------------
INSERT INTO `tp_article` VALUES ('1', '一分钟让你彻底了解平行进口车', '', '', '', '', '', '', '一分钟让你彻底了解平行进口车', '一分钟让你彻底了解平行进口车', '1497498669', '1497498669', '0', '2', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('2', '杭城首家平行进口车展示中心', '', '', '', '', '', '', '杭城首家平行进口车展示中心', '杭城首家平行进口车展示中心', '1497498690', '1497498690', '0', '2', '0', '0', '', '0', '0', '1', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=416 DEFAULT CHARSET=utf8;

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
INSERT INTO `tp_attachmentindex` VALUES ('413', '1', '1', '');
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
INSERT INTO `tp_attachmentindex` VALUES ('40', '3', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('54', '5', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('56', '7', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('118', '58', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('52', '163', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('58', '8', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('59', '9', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('233', '10', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('61', '11', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('62', '12', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('63', '13', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('64', '14', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('65', '15', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('66', '16', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('67', '17', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('68', '18', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('234', '19', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('70', '20', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('71', '21', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('72', '22', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('109', '23', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('74', '24', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('75', '25', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('76', '26', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('77', '27', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('108', '28', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('79', '29', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('80', '30', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('81', '31', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('82', '32', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('83', '33', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('84', '34', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('85', '35', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('86', '36', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('87', '37', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('88', '38', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('89', '39', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('90', '40', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('91', '41', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('110', '42', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('93', '43', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('94', '44', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('95', '45', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('96', '46', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('97', '47', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('98', '48', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('99', '49', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('100', '50', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('101', '51', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('102', '52', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('103', '53', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('104', '54', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('105', '55', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('106', '56', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('107', '57', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('111', '76', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('112', '75', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('113', '74', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('114', '72', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('115', '122', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('116', '299', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('117', '300', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('230', '59', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('120', '301', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('121', '302', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('122', '304', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('123', '313', '1', '');
INSERT INTO `tp_attachmentindex` VALUES ('124', '60', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('125', '61', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('126', '62', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('127', '63', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('128', '64', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('129', '65', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('130', '66', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('131', '67', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('132', '68', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('232', '69', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('135', '70', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('137', '71', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('138', '72', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('139', '73', '3', '');
INSERT INTO `tp_attachmentindex` VALUES ('140', '74', '3', '');
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
INSERT INTO `tp_attachmentindex` VALUES ('240', '1', '1', '');
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='栏目分类表';

-- ----------------------------
-- Records of tp_category
-- ----------------------------
INSERT INTO `tp_category` VALUES ('1', '产品展示 ', 'chanpinzhongxin', '0', '3', '0', '', '', '', '', 'List_product.html', 'Show_article.html', null, '1', '1', 'product.jpg');
INSERT INTO `tp_category` VALUES ('2', '新闻动态', 'xinwendongtai', '0', '1', '0', '', '', '', '', 'List_news.html', 'Show_article.html', null, '1', '1', 'news.jpg');
INSERT INTO `tp_category` VALUES ('3', '私人定制', 'qiyejieshao', '0', '2', '0', '', '', '', '', 'List_page.html', 'Show_article.html', null, '1', '1', 'kinglong.jpg');
INSERT INTO `tp_category` VALUES ('4', '联系我们', 'lianxiwomen', '0', '2', '0', '', '', '', '', 'List_page.html', 'Show_article.html', null, '1', '1', 'price.jpg');
INSERT INTO `tp_category` VALUES ('5', '高档车改装', 'chanpinfenlei1', '1', '3', '0', '', '', '', '', 'List_product.html', 'Show_article.html', null, '1', '1', 'product.jpg');
INSERT INTO `tp_category` VALUES ('6', '商务车改装', 'chanpinfenlei2', '1', '3', '0', '', '', '', '', 'List_product.html', 'Show_article.html', null, '1', '1', 'product.jpg');
INSERT INTO `tp_category` VALUES ('7', '中型商务车改装', 'zhongxingshangwuchegaizhuang', '1', '3', '0', '', '', '', '', 'List_product.html', 'Show_article.html', null, '1', '1', null);
INSERT INTO `tp_category` VALUES ('8', '产品展示车', 'chanpinzhanshiche', '1', '3', '0', '', '', '', '', 'List_product.html', 'Show_article.html', null, '1', '1', null);
INSERT INTO `tp_category` VALUES ('9', '厦龙汽车', 'xialongqiche', '1', '3', '0', '', '', '', '', 'List_product.html', 'Show_article.html', null, '1', '1', null);

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
INSERT INTO `tp_picplay` VALUES ('4', '1', 'uploads/img1/index.jpg', '', '', '0', '1518159066', '0');

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
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product
-- ----------------------------
INSERT INTO `tp_product` VALUES ('1', '宝马', '', '', '', '', '宝马', '宝马', '22', '0', '', '', '', '1497489791', '1497490329', '60', '5', '0', '0', '', '0', '0', '1', '0');
INSERT INTO `tp_product` VALUES ('2', '房车', '', '房车', '', '', '', '房车', '0', '0', '', '', '', '1509095689', '1509095689', '42', '6', '0', '0', '', '0', '0', '1', '0');

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
