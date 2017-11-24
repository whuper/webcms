# -----------------------------------------------------------
# Description:备份的数据表[结构] tp_access,tp_active,tp_admin,tp_announce,tp_area,tp_article,tp_attachment,tp_attachmentindex,tp_block,tp_category,tp_comment,tp_copyfrom,tp_guestbook,tp_itemgroup,tp_iteminfo,tp_link,tp_member,tp_memberdetail,tp_membergroup,tp_model,tp_node,tp_order,tp_orderdetail,tp_picture,tp_product,tp_role,tp_role_user,tp_soft,tp_special
# Description:备份的数据表[数据] tp_access,tp_active,tp_admin,tp_announce,tp_area,tp_article,tp_attachment,tp_attachmentindex,tp_block,tp_category,tp_comment,tp_copyfrom,tp_guestbook,tp_itemgroup,tp_iteminfo,tp_link,tp_member,tp_memberdetail,tp_membergroup,tp_model,tp_node,tp_order,tp_orderdetail,tp_picture,tp_product,tp_role,tp_role_user,tp_soft,tp_special
# Time: 2014-07-26 10:54:23
# -----------------------------------------------------------
# SQLFile Label：#1
# -----------------------------------------------------------


# 表的结构 tp_access 
DROP TABLE IF EXISTS `tp_access`;
CREATE TABLE `tp_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) default NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 tp_active 
DROP TABLE IF EXISTS `tp_active`;
CREATE TABLE `tp_active` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `userid` int(10) unsigned NOT NULL default '0',
  `type` tinyint(1) unsigned NOT NULL default '0' COMMENT '类型',
  `code` varchar(11) NOT NULL default '' COMMENT '激活码',
  `expire` int(10) unsigned NOT NULL default '0',
  `email` varchar(50) NOT NULL default '',
  `updatetime` int(10) unsigned NOT NULL COMMENT '激活时间',
  PRIMARY KEY  (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 tp_admin 
DROP TABLE IF EXISTS `tp_admin`;
CREATE TABLE `tp_admin` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(20) NOT NULL default '' COMMENT '登录名',
  `password` varchar(32) NOT NULL default '' COMMENT '密码',
  `encrypt` varchar(6) NOT NULL default '',
  `realname` varchar(20) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `usertype` tinyint(4) NOT NULL default '0',
  `logintime` int(10) unsigned NOT NULL COMMENT '登录时间',
  `loginip` varchar(30) NOT NULL COMMENT '登录IP',
  `islock` tinyint(1) unsigned NOT NULL default '0' COMMENT '锁定状态',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='网站后台管理员表' ;

# 表的结构 tp_announce 
DROP TABLE IF EXISTS `tp_announce`;
CREATE TABLE `tp_announce` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `starttime` int(10) unsigned NOT NULL default '0',
  `endtime` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `posttime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 tp_area 
DROP TABLE IF EXISTS `tp_area`;
CREATE TABLE `tp_area` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL default '',
  `sname` varchar(10) NOT NULL default '' COMMENT '简称',
  `ename` varchar(50) NOT NULL default '',
  `pid` int(10) unsigned NOT NULL default '0',
  `sort` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 tp_article 
DROP TABLE IF EXISTS `tp_article`;
CREATE TABLE `tp_article` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(60) NOT NULL default '' COMMENT '标题',
  `shorttitle` varchar(30) NOT NULL default '' COMMENT '副标题',
  `color` char(10) NOT NULL default '' COMMENT '标题颜色',
  `copyfrom` varchar(30) NOT NULL default '',
  `author` varchar(30) NOT NULL default '',
  `keywords` varchar(50) default '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL default '' COMMENT '缩略图',
  `content` text COMMENT '内容',
  `description` varchar(255) NOT NULL default '' COMMENT '摘要描述',
  `publishtime` int(10) unsigned NOT NULL default '0' COMMENT '发布时间',
  `updatetime` int(10) unsigned NOT NULL default '0' COMMENT '更新时间',
  `click` smallint(6) unsigned NOT NULL default '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `commentflag` tinyint(1) NOT NULL default '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL default '0' COMMENT '属性',
  `jumpurl` varchar(200) NOT NULL default '',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '1回收站',
  `userid` int(10) unsigned NOT NULL default '0',
  `aid` int(10) unsigned NOT NULL default '0' COMMENT 'admin',
  `weight` int(20) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ;

# 表的结构 tp_attachment 
DROP TABLE IF EXISTS `tp_attachment`;
CREATE TABLE `tp_attachment` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(60) NOT NULL default '' COMMENT '原文件名',
  `filepath` varchar(200) NOT NULL default '',
  `filetype` smallint(6) NOT NULL default '1',
  `filesize` mediumint(8) unsigned NOT NULL default '0',
  `haslitpic` tinyint(1) NOT NULL default '1',
  `uploadtime` int(10) unsigned NOT NULL default '0',
  `aid` int(10) unsigned NOT NULL default '0',
  `userid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 tp_attachmentindex 
DROP TABLE IF EXISTS `tp_attachmentindex`;
CREATE TABLE `tp_attachmentindex` (
  `attid` int(10) unsigned NOT NULL default '0',
  `arcid` int(10) unsigned NOT NULL default '0',
  `modelid` int(10) unsigned NOT NULL default '0',
  `desc` varchar(20) NOT NULL default '',
  KEY `attid` (`attid`),
  KEY `arcid` (`arcid`),
  KEY `modelid` (`modelid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 tp_block 
DROP TABLE IF EXISTS `tp_block`;
CREATE TABLE `tp_block` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '' COMMENT '名称',
  `remark` varchar(200) NOT NULL default '' COMMENT '说明',
  `content` text COMMENT '内容',
  `blocktype` int(10) unsigned NOT NULL default '0' COMMENT '类型',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 tp_category 
DROP TABLE IF EXISTS `tp_category`;
CREATE TABLE `tp_category` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(30) NOT NULL default '' COMMENT '栏目分类名称',
  `ename` varchar(200) NOT NULL default '' COMMENT '别名',
  `pid` int(10) unsigned NOT NULL default '0' COMMENT '上级分类',
  `modelid` int(10) unsigned NOT NULL default '0' COMMENT '所属模型',
  `type` tinyint(4) NOT NULL default '0' COMMENT '类别',
  `seotitle` varchar(50) NOT NULL default '',
  `keywords` varchar(50) default '' COMMENT '关键字',
  `description` varchar(255) default '' COMMENT '关键字',
  `template_category` varchar(60) NOT NULL default '',
  `template_list` varchar(60) NOT NULL default '',
  `template_show` varchar(60) NOT NULL default '',
  `content` text COMMENT '内容',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '显示',
  `sort` smallint(6) NOT NULL default '100' COMMENT '排序',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='栏目分类表' ;

# 表的结构 tp_comment 
DROP TABLE IF EXISTS `tp_comment`;
CREATE TABLE `tp_comment` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `postid` int(10) unsigned NOT NULL default '0',
  `modelid` int(10) unsigned NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `username` varchar(30) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `ip` varchar(20) NOT NULL default '',
  `agent` varchar(255) NOT NULL default '',
  `posttime` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  `pid` int(10) unsigned NOT NULL default '0',
  `userid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `postid` (`postid`),
  KEY `modelid` (`modelid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 tp_copyfrom 
DROP TABLE IF EXISTS `tp_copyfrom`;
CREATE TABLE `tp_copyfrom` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `sitename` varchar(30) NOT NULL default '',
  `siteurl` varchar(200) NOT NULL default '',
  `sort` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 tp_guestbook 
DROP TABLE IF EXISTS `tp_guestbook`;
CREATE TABLE `tp_guestbook` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(30) NOT NULL default '',
  `tel` varchar(50) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `homepage` varchar(50) NOT NULL default '',
  `qq` varchar(15) NOT NULL default '',
  `ip` varchar(20) NOT NULL default '',
  `posttime` int(10) unsigned NOT NULL default '0',
  `replytime` int(10) unsigned NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `content` text,
  `reply` text,
  `userid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 tp_itemgroup 
DROP TABLE IF EXISTS `tp_itemgroup`;
CREATE TABLE `tp_itemgroup` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `remark` varchar(20) default '',
  `status` tinyint(1) unsigned default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ;

# 表的结构 tp_iteminfo 
DROP TABLE IF EXISTS `tp_iteminfo`;
CREATE TABLE `tp_iteminfo` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `group` varchar(20) NOT NULL,
  `value` int(11) NOT NULL default '0',
  `pid` int(10) unsigned NOT NULL default '0',
  `sort` smallint(6) NOT NULL default '0' COMMENT '排序',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 ;

# 表的结构 tp_link 
DROP TABLE IF EXISTS `tp_link`;
CREATE TABLE `tp_link` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `logo` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '' COMMENT '描述',
  `ischeck` tinyint(1) NOT NULL default '1' COMMENT '首页|内页',
  `posttime` int(10) unsigned NOT NULL,
  `sort` smallint(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ;

# 表的结构 tp_member 
DROP TABLE IF EXISTS `tp_member`;
CREATE TABLE `tp_member` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `email` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `encrypt` varchar(6) NOT NULL default '',
  `nickname` varchar(20) default '',
  `amount` decimal(8,2) unsigned NOT NULL default '0.00' COMMENT '总金额',
  `score` int(10) unsigned NOT NULL default '0' COMMENT '积分',
  `face` varchar(60) NOT NULL default '' COMMENT '头像',
  `regtime` int(10) unsigned NOT NULL default '0',
  `logintime` int(10) unsigned default '0',
  `loginip` varchar(20) default '',
  `loginnum` mediumint(8) unsigned default '0',
  `groupid` smallint(6) unsigned default '0',
  `message` tinyint(1) default '0',
  `status` tinyint(1) NOT NULL default '0',
  `islock` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 tp_memberdetail 
DROP TABLE IF EXISTS `tp_memberdetail`;
CREATE TABLE `tp_memberdetail` (
  `userid` int(10) unsigned NOT NULL default '0',
  `sex` tinyint(1) unsigned NOT NULL default '0',
  `realname` varchar(30) NOT NULL default '',
  `birthday` date NOT NULL default '1980-01-01',
  `province` int(10) unsigned NOT NULL default '0',
  `area` int(10) unsigned NOT NULL default '0',
  `address` varchar(50) NOT NULL default '',
  `qq` varchar(12) NOT NULL default '',
  `tel` varchar(15) NOT NULL default '',
  `mobile` varchar(15) NOT NULL default '',
  `animal` int(10) unsigned NOT NULL default '0',
  `star` int(10) unsigned NOT NULL default '0',
  `blood` int(10) unsigned NOT NULL default '0',
  `marital` int(10) unsigned NOT NULL default '0',
  `education` int(10) unsigned NOT NULL default '0',
  `vocation` int(10) unsigned NOT NULL default '0',
  `income` int(10) unsigned NOT NULL default '0',
  `maxim` varchar(100) NOT NULL default '',
  `updatetime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 tp_membergroup 
DROP TABLE IF EXISTS `tp_membergroup`;
CREATE TABLE `tp_membergroup` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL default '',
  `description` varchar(255) default '',
  `status` tinyint(1) default '0',
  `sort` tinyint(3) unsigned default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ;

# 表的结构 tp_model 
DROP TABLE IF EXISTS `tp_model`;
CREATE TABLE `tp_model` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(30) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `tablename` varchar(30) NOT NULL default '',
  `status` tinyint(1) unsigned NOT NULL default '0',
  `template_category` varchar(60) NOT NULL default '',
  `template_list` varchar(60) NOT NULL default '',
  `template_show` varchar(60) NOT NULL default '',
  `sort` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ;

# 表的结构 tp_node 
DROP TABLE IF EXISTS `tp_node`;
CREATE TABLE `tp_node` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) default NULL,
  `status` tinyint(1) default '0',
  `remark` varchar(255) default NULL,
  `sort` smallint(6) unsigned default NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 ;

# 表的结构 tp_order 
DROP TABLE IF EXISTS `tp_order`;
CREATE TABLE `tp_order` (
  `orderid` varchar(80) NOT NULL,
  `memberid` int(10) unsigned NOT NULL,
  `paytype` tinyint(2) NOT NULL default '1' COMMENT '支付方式',
  `expressprice` float(13,2) NOT NULL default '0.00' COMMENT '邮费/运费',
  `price` float(13,2) NOT NULL default '0.00' COMMENT '产品总价格',
  `priceCount` float(13,2) NOT NULL COMMENT '总价格',
  `consignee` varchar(30) default NULL COMMENT '收件人',
  `address` varchar(255) NOT NULL default '',
  `zip` int(10) NOT NULL default '0',
  `tel` varchar(60) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `state` tinyint(1) NOT NULL default '0',
  `ip` char(15) NOT NULL default '',
  `stime` int(10) NOT NULL default '0',
  KEY `stime` (`stime`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 tp_orderdetail 
DROP TABLE IF EXISTS `tp_orderdetail`;
CREATE TABLE `tp_orderdetail` (
  `id` int(11) NOT NULL auto_increment,
  `orderid` varchar(50) default NULL COMMENT '订单ID',
  `productid` int(11) default NULL,
  `memberid` int(10) NOT NULL,
  `title` varchar(50) NOT NULL default '',
  `price` float(13,2) NOT NULL default '0.00',
  `num` int(10) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 tp_picture 
DROP TABLE IF EXISTS `tp_picture`;
CREATE TABLE `tp_picture` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(30) NOT NULL default '' COMMENT '标题',
  `color` char(10) NOT NULL default '' COMMENT '标题颜色',
  `keywords` varchar(50) default '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL default '' COMMENT '缩略图',
  `description` varchar(255) NOT NULL default '' COMMENT '摘要描述',
  `copyfrom` varchar(100) NOT NULL default '' COMMENT '来源',
  `template` varchar(30) NOT NULL default '' COMMENT '模板',
  `pictureurls` text COMMENT '图片地址',
  `content` text COMMENT '内容',
  `publishtime` int(10) unsigned NOT NULL default '0' COMMENT '发布时间',
  `updatetime` int(10) unsigned NOT NULL default '0' COMMENT '更新时间',
  `click` smallint(6) unsigned NOT NULL default '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `commentflag` tinyint(1) NOT NULL default '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL default '0' COMMENT '属性',
  `jumpurl` varchar(200) NOT NULL default '',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '1回收站',
  `userid` int(10) unsigned NOT NULL default '0',
  `aid` int(10) unsigned NOT NULL default '0' COMMENT 'admin',
  `weight` int(20) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 tp_product 
DROP TABLE IF EXISTS `tp_product`;
CREATE TABLE `tp_product` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(30) NOT NULL default '' COMMENT '标题',
  `color` char(10) NOT NULL default '' COMMENT '标题颜色',
  `keywords` varchar(50) default '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL default '' COMMENT '缩略图',
  `pictureurls` text COMMENT '图片地址',
  `content` text COMMENT '内容',
  `description` varchar(255) NOT NULL default '' COMMENT '摘要描述',
  `price` float NOT NULL default '0',
  `trueprice` float NOT NULL default '0',
  `brand` varchar(50) NOT NULL default '' COMMENT '品牌',
  `units` varchar(50) NOT NULL default '' COMMENT '单位',
  `specification` varchar(50) NOT NULL default '' COMMENT '规格',
  `publishtime` int(10) unsigned NOT NULL default '0' COMMENT '发布时间',
  `updatetime` int(10) unsigned NOT NULL default '0' COMMENT '更新时间',
  `click` smallint(6) unsigned NOT NULL default '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `commentflag` tinyint(1) NOT NULL default '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL default '0' COMMENT '属性',
  `jumpurl` varchar(200) NOT NULL default '',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '1回收站',
  `userid` int(10) unsigned NOT NULL default '0',
  `aid` int(10) unsigned NOT NULL default '0' COMMENT 'admin',
  `weight` int(20) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 tp_role 
DROP TABLE IF EXISTS `tp_role`;
CREATE TABLE `tp_role` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) default NULL,
  `status` tinyint(1) unsigned default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ;

# 表的结构 tp_role_user 
DROP TABLE IF EXISTS `tp_role_user`;
CREATE TABLE `tp_role_user` (
  `role_id` mediumint(9) unsigned default NULL,
  `user_id` char(32) default NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 tp_soft 
DROP TABLE IF EXISTS `tp_soft`;
CREATE TABLE `tp_soft` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(30) NOT NULL default '' COMMENT '标题',
  `color` char(10) NOT NULL default '' COMMENT '标题颜色',
  `keywords` varchar(50) default '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL default '' COMMENT '缩略图',
  `pictureurls` text,
  `content` text COMMENT '内容',
  `updatelog` text COMMENT '更新日志',
  `downlink` text COMMENT '下载地址',
  `description` varchar(255) NOT NULL default '' COMMENT '摘要描述',
  `version` varchar(20) NOT NULL default '' COMMENT '版本号',
  `softtype` int(10) unsigned NOT NULL default '0' COMMENT '软件类型',
  `copytype` int(10) unsigned NOT NULL default '0' COMMENT '授权形式',
  `language` int(10) unsigned NOT NULL default '0' COMMENT '语言',
  `os` varchar(100) NOT NULL default '' COMMENT '运行环境',
  `filesize` varchar(10) NOT NULL default '' COMMENT '文件大小',
  `officialurl` varchar(100) NOT NULL default '' COMMENT '官方网站',
  `publishtime` int(10) unsigned NOT NULL default '0' COMMENT '发布时间',
  `updatetime` int(10) unsigned NOT NULL default '0' COMMENT '更新时间',
  `click` smallint(6) unsigned NOT NULL default '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `commentflag` tinyint(1) NOT NULL default '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL default '0' COMMENT '属性',
  `jumpurl` varchar(200) NOT NULL default '',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '1回收站',
  `userid` int(10) unsigned NOT NULL default '0',
  `aid` int(10) unsigned NOT NULL default '0' COMMENT 'admin',
  PRIMARY KEY  (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 tp_special 
DROP TABLE IF EXISTS `tp_special`;
CREATE TABLE `tp_special` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(60) NOT NULL default '',
  `shorttitle` varchar(30) NOT NULL default '' COMMENT '副标题',
  `color` char(10) NOT NULL default '',
  `author` varchar(30) NOT NULL default '',
  `keywords` varchar(50) default '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL default '' COMMENT '缩略图',
  `description` varchar(255) NOT NULL default '',
  `content` text COMMENT '内容',
  `publishtime` int(10) unsigned NOT NULL default '0',
  `updatetime` int(10) unsigned NOT NULL default '0',
  `click` smallint(6) unsigned NOT NULL default '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `commentflag` tinyint(1) NOT NULL default '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL default '0' COMMENT '属性',
  `jumpurl` varchar(200) NOT NULL default '',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '1回收站',
  `filename` varchar(60) default '',
  `template` varchar(60) NOT NULL default '',
  `aid` int(10) unsigned NOT NULL default '0' COMMENT 'admin',
  PRIMARY KEY  (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;



# 转存表中的数据：tp_access 
INSERT INTO `tp_access` VALUES ('1','11','3','');
INSERT INTO `tp_access` VALUES ('1','10','3','');
INSERT INTO `tp_access` VALUES ('1','9','3','');
INSERT INTO `tp_access` VALUES ('1','8','3','');
INSERT INTO `tp_access` VALUES ('1','6','3','');
INSERT INTO `tp_access` VALUES ('1','5','3','');
INSERT INTO `tp_access` VALUES ('1','4','3','');
INSERT INTO `tp_access` VALUES ('1','3','3','');
INSERT INTO `tp_access` VALUES ('1','2','2','');
INSERT INTO `tp_access` VALUES ('1','1','1','');
INSERT INTO `tp_access` VALUES ('1','12','3','');
INSERT INTO `tp_access` VALUES ('1','17','2','');
INSERT INTO `tp_access` VALUES ('1','18','3','');
INSERT INTO `tp_access` VALUES ('1','55','3','');
INSERT INTO `tp_access` VALUES ('1','19','2','');
INSERT INTO `tp_access` VALUES ('1','20','3','');
INSERT INTO `tp_access` VALUES ('1','21','3','');
INSERT INTO `tp_access` VALUES ('1','22','3','');
INSERT INTO `tp_access` VALUES ('1','23','3','');
INSERT INTO `tp_access` VALUES ('1','24','3','');
INSERT INTO `tp_access` VALUES ('1','25','2','');
INSERT INTO `tp_access` VALUES ('1','26','3','');
INSERT INTO `tp_access` VALUES ('1','27','3','');
INSERT INTO `tp_access` VALUES ('1','28','3','');
INSERT INTO `tp_access` VALUES ('1','29','3','');
INSERT INTO `tp_access` VALUES ('1','30','3','');
INSERT INTO `tp_access` VALUES ('1','31','2','');
INSERT INTO `tp_access` VALUES ('1','32','3','');
INSERT INTO `tp_access` VALUES ('1','33','3','');
INSERT INTO `tp_access` VALUES ('1','34','3','');
INSERT INTO `tp_access` VALUES ('1','35','3','');
INSERT INTO `tp_access` VALUES ('1','36','2','');
INSERT INTO `tp_access` VALUES ('1','37','3','');
INSERT INTO `tp_access` VALUES ('1','38','3','');
INSERT INTO `tp_access` VALUES ('1','39','3','');
INSERT INTO `tp_access` VALUES ('1','40','3','');
INSERT INTO `tp_access` VALUES ('1','41','2','');
INSERT INTO `tp_access` VALUES ('1','42','3','');
INSERT INTO `tp_access` VALUES ('1','43','3','');
INSERT INTO `tp_access` VALUES ('1','44','3','');
INSERT INTO `tp_access` VALUES ('1','45','3','');
INSERT INTO `tp_access` VALUES ('1','46','2','');
INSERT INTO `tp_access` VALUES ('1','47','3','');
INSERT INTO `tp_access` VALUES ('1','48','3','');
INSERT INTO `tp_access` VALUES ('1','49','3','');
INSERT INTO `tp_access` VALUES ('1','50','3','');
INSERT INTO `tp_access` VALUES ('1','51','2','');
INSERT INTO `tp_access` VALUES ('1','52','3','');
INSERT INTO `tp_access` VALUES ('1','53','3','');
INSERT INTO `tp_access` VALUES ('1','54','3','');


# 转存表中的数据：tp_active 


# 转存表中的数据：tp_admin 
INSERT INTO `tp_admin` VALUES ('1','admin','0731a9e4628ba4dafe3c9b4e576ad7e2','umqvjg','','','9','1406341440','127.0.0.1','0');


# 转存表中的数据：tp_announce 


# 转存表中的数据：tp_area 
INSERT INTO `tp_area` VALUES ('1','北京市','北京','','0','0');
INSERT INTO `tp_area` VALUES ('2','上海市','上海','','0','0');
INSERT INTO `tp_area` VALUES ('3','天津市','天津','','0','0');
INSERT INTO `tp_area` VALUES ('4','重庆市','重庆','','0','0');
INSERT INTO `tp_area` VALUES ('5','广东省','广东','','0','0');
INSERT INTO `tp_area` VALUES ('6','福建省','福建','','0','0');
INSERT INTO `tp_area` VALUES ('7','浙江省','浙江','','0','0');
INSERT INTO `tp_area` VALUES ('8','江苏省','江苏','','0','0');
INSERT INTO `tp_area` VALUES ('9','山东省','山东','','0','0');
INSERT INTO `tp_area` VALUES ('10','辽宁省','辽宁','','0','0');
INSERT INTO `tp_area` VALUES ('11','江西省','江西','','0','0');
INSERT INTO `tp_area` VALUES ('12','四川省','四川','','0','0');
INSERT INTO `tp_area` VALUES ('13','陕西省','陕西','','0','0');
INSERT INTO `tp_area` VALUES ('14','湖北省','湖北','','0','0');
INSERT INTO `tp_area` VALUES ('15','河南省','河南','','0','0');
INSERT INTO `tp_area` VALUES ('16','河北省','河北','','0','0');
INSERT INTO `tp_area` VALUES ('17','山西省','山西','','0','0');
INSERT INTO `tp_area` VALUES ('18','内蒙古','内蒙古','','0','0');
INSERT INTO `tp_area` VALUES ('19','吉林省','吉林','','0','0');
INSERT INTO `tp_area` VALUES ('20','黑龙江','黑龙江','','0','0');
INSERT INTO `tp_area` VALUES ('21','安徽省','安徽','','0','0');
INSERT INTO `tp_area` VALUES ('22','湖南省','湖南','','0','0');
INSERT INTO `tp_area` VALUES ('23','广西','广西','','0','0');
INSERT INTO `tp_area` VALUES ('24','海南省','海南','','0','0');
INSERT INTO `tp_area` VALUES ('25','云南省','云南','','0','0');
INSERT INTO `tp_area` VALUES ('26','贵州省','贵州','','0','0');
INSERT INTO `tp_area` VALUES ('27','西藏','西藏','','0','0');
INSERT INTO `tp_area` VALUES ('28','甘肃省','甘肃','','0','0');
INSERT INTO `tp_area` VALUES ('29','宁夏区','宁夏区','','0','0');
INSERT INTO `tp_area` VALUES ('30','青海省','青海','','0','0');
INSERT INTO `tp_area` VALUES ('31','新疆','新疆','','0','0');
INSERT INTO `tp_area` VALUES ('32','香港','香港','','0','0');
INSERT INTO `tp_area` VALUES ('33','澳门','澳门','','0','0');
INSERT INTO `tp_area` VALUES ('34','台湾省','台湾','','0','0');
INSERT INTO `tp_area` VALUES ('60','海外','海外','','0','0');
INSERT INTO `tp_area` VALUES ('101','东城区','东城区','','1','0');
INSERT INTO `tp_area` VALUES ('102','西城区','西城区','','1','0');
INSERT INTO `tp_area` VALUES ('103','崇文区','崇文区','','1','0');
INSERT INTO `tp_area` VALUES ('104','宣武区','宣武区','','1','0');
INSERT INTO `tp_area` VALUES ('105','朝阳区','朝阳区','','1','0');
INSERT INTO `tp_area` VALUES ('106','海淀区','海淀区','','1','0');
INSERT INTO `tp_area` VALUES ('107','丰台区','丰台区','','1','0');
INSERT INTO `tp_area` VALUES ('108','石景山区','石景山区','','1','0');
INSERT INTO `tp_area` VALUES ('109','门头沟区','门头沟区','','1','0');
INSERT INTO `tp_area` VALUES ('110','房山区','房山区','','1','0');
INSERT INTO `tp_area` VALUES ('111','通州区','通区','','1','0');
INSERT INTO `tp_area` VALUES ('112','顺义区','顺义区','','1','0');
INSERT INTO `tp_area` VALUES ('113','昌平区','昌平区','','1','0');
INSERT INTO `tp_area` VALUES ('114','大兴区','大兴区','','1','0');
INSERT INTO `tp_area` VALUES ('115','平谷县','平谷县','','1','0');
INSERT INTO `tp_area` VALUES ('116','怀柔县','怀柔县','','1','0');
INSERT INTO `tp_area` VALUES ('117','密云县','密云县','','1','0');
INSERT INTO `tp_area` VALUES ('118','延庆县','延庆县','','1','0');
INSERT INTO `tp_area` VALUES ('201','黄浦区','黄浦区','','2','0');
INSERT INTO `tp_area` VALUES ('202','卢湾区','卢湾区','','2','0');
INSERT INTO `tp_area` VALUES ('203','徐汇区','徐汇区','','2','0');
INSERT INTO `tp_area` VALUES ('204','长宁区','长宁区','','2','0');
INSERT INTO `tp_area` VALUES ('205','静安区','静安区','','2','0');
INSERT INTO `tp_area` VALUES ('206','普陀区','普陀区','','2','0');
INSERT INTO `tp_area` VALUES ('207','闸北区','闸北区','','2','0');
INSERT INTO `tp_area` VALUES ('208','虹口区','虹口区','','2','0');
INSERT INTO `tp_area` VALUES ('209','杨浦区','杨浦区','','2','0');
INSERT INTO `tp_area` VALUES ('210','宝山区','宝山区','','2','0');
INSERT INTO `tp_area` VALUES ('211','闵行区','闵行区','','2','0');
INSERT INTO `tp_area` VALUES ('212','嘉定区','嘉定区','','2','0');
INSERT INTO `tp_area` VALUES ('213','浦东新区','浦东新区','','2','0');
INSERT INTO `tp_area` VALUES ('214','松江区','松江区','','2','0');
INSERT INTO `tp_area` VALUES ('215','金山区','金山区','','2','0');
INSERT INTO `tp_area` VALUES ('216','青浦区','青浦区','','2','0');
INSERT INTO `tp_area` VALUES ('217','南汇区','南汇区','','2','0');
INSERT INTO `tp_area` VALUES ('218','奉贤区','奉贤区','','2','0');
INSERT INTO `tp_area` VALUES ('219','崇明县','崇明县','','2','0');
INSERT INTO `tp_area` VALUES ('301','和平区','和平区','','3','0');
INSERT INTO `tp_area` VALUES ('302','河东区','河东区','','3','0');
INSERT INTO `tp_area` VALUES ('303','河西区','河西区','','3','0');
INSERT INTO `tp_area` VALUES ('304','南开区','南开区','','3','0');
INSERT INTO `tp_area` VALUES ('305','河北区','河北区','','3','0');
INSERT INTO `tp_area` VALUES ('306','红桥区','红桥区','','3','0');
INSERT INTO `tp_area` VALUES ('307','塘沽区','塘沽区','','3','0');
INSERT INTO `tp_area` VALUES ('308','汉沽区','汉沽区','','3','0');
INSERT INTO `tp_area` VALUES ('309','大港区','大港区','','3','0');
INSERT INTO `tp_area` VALUES ('310','东丽区','东丽区','','3','0');
INSERT INTO `tp_area` VALUES ('311','西青区','西青区','','3','0');
INSERT INTO `tp_area` VALUES ('312','北辰区','北辰区','','3','0');
INSERT INTO `tp_area` VALUES ('313','津南区','津南区','','3','0');
INSERT INTO `tp_area` VALUES ('314','武清区','武清区','','3','0');
INSERT INTO `tp_area` VALUES ('315','宝坻区','宝坻区','','3','0');
INSERT INTO `tp_area` VALUES ('316','静海县','静海县','','3','0');
INSERT INTO `tp_area` VALUES ('317','宁河县','宁河县','','3','0');
INSERT INTO `tp_area` VALUES ('318','蓟县','蓟县','','3','0');
INSERT INTO `tp_area` VALUES ('401','渝中区','渝中区','','4','0');
INSERT INTO `tp_area` VALUES ('402','大渡口区','大渡口区','','4','0');
INSERT INTO `tp_area` VALUES ('403','江北区','江北区','','4','0');
INSERT INTO `tp_area` VALUES ('404','沙坪坝区','沙坪坝区','','4','0');
INSERT INTO `tp_area` VALUES ('405','九龙坡区','九龙坡区','','4','0');
INSERT INTO `tp_area` VALUES ('406','南岸区','南岸区','','4','0');
INSERT INTO `tp_area` VALUES ('407','北碚区','北碚区','','4','0');
INSERT INTO `tp_area` VALUES ('408','万盛区','万盛区','','4','0');
INSERT INTO `tp_area` VALUES ('409','双桥区','双桥区','','4','0');
INSERT INTO `tp_area` VALUES ('410','渝北区','渝北区','','4','0');
INSERT INTO `tp_area` VALUES ('411','巴南区','巴南区','','4','0');
INSERT INTO `tp_area` VALUES ('412','万州区','万区','','4','0');
INSERT INTO `tp_area` VALUES ('413','涪陵区','涪陵区','','4','0');
INSERT INTO `tp_area` VALUES ('414','黔江区','黔江区','','4','0');
INSERT INTO `tp_area` VALUES ('415','永川市','永川','','4','0');
INSERT INTO `tp_area` VALUES ('416','合川市','合川','','4','0');
INSERT INTO `tp_area` VALUES ('417','江津市','江津','','4','0');
INSERT INTO `tp_area` VALUES ('418','南川市','南川','','4','0');
INSERT INTO `tp_area` VALUES ('419','长寿县','长寿县','','4','0');
INSERT INTO `tp_area` VALUES ('420','綦江县','綦江县','','4','0');
INSERT INTO `tp_area` VALUES ('421','潼南县','潼南县','','4','0');
INSERT INTO `tp_area` VALUES ('422','荣昌县','荣昌县','','4','0');
INSERT INTO `tp_area` VALUES ('423','璧山县','璧山县','','4','0');
INSERT INTO `tp_area` VALUES ('424','大足县','大足县','','4','0');
INSERT INTO `tp_area` VALUES ('425','铜梁县','铜梁县','','4','0');
INSERT INTO `tp_area` VALUES ('426','梁平县','梁平县','','4','0');
INSERT INTO `tp_area` VALUES ('427','城口县','城口县','','4','0');
INSERT INTO `tp_area` VALUES ('428','垫江县','垫江县','','4','0');
INSERT INTO `tp_area` VALUES ('429','武隆县','武隆县','','4','0');
INSERT INTO `tp_area` VALUES ('430','丰都县','丰都县','','4','0');
INSERT INTO `tp_area` VALUES ('431','奉节县','奉节县','','4','0');
INSERT INTO `tp_area` VALUES ('432','开县','开县','','4','0');
INSERT INTO `tp_area` VALUES ('433','云阳县','云阳县','','4','0');
INSERT INTO `tp_area` VALUES ('434','忠县','忠县','','4','0');
INSERT INTO `tp_area` VALUES ('435','巫溪县','巫溪县','','4','0');
INSERT INTO `tp_area` VALUES ('436','巫山县','巫山县','','4','0');
INSERT INTO `tp_area` VALUES ('437','石柱县','石柱县','','4','0');
INSERT INTO `tp_area` VALUES ('438','秀山县','秀山县','','4','0');
INSERT INTO `tp_area` VALUES ('439','酉阳县','酉阳县','','4','0');
INSERT INTO `tp_area` VALUES ('440','彭水县','彭水县','','4','0');
INSERT INTO `tp_area` VALUES ('501','广州市','广州','','5','0');
INSERT INTO `tp_area` VALUES ('502','深圳市','深圳','','5','0');
INSERT INTO `tp_area` VALUES ('503','珠海市','珠海','','5','0');
INSERT INTO `tp_area` VALUES ('504','汕头市','汕头','','5','0');
INSERT INTO `tp_area` VALUES ('505','韶关市','韶关','','5','0');
INSERT INTO `tp_area` VALUES ('506','河源市','河源','','5','0');
INSERT INTO `tp_area` VALUES ('507','梅州市','梅州','','5','0');
INSERT INTO `tp_area` VALUES ('508','惠州市','惠州','','5','0');
INSERT INTO `tp_area` VALUES ('509','汕尾市','汕尾','','5','0');
INSERT INTO `tp_area` VALUES ('510','东莞市','东莞','','5','0');
INSERT INTO `tp_area` VALUES ('511','中山市','中山','','5','0');
INSERT INTO `tp_area` VALUES ('512','江门市','江门','','5','0');
INSERT INTO `tp_area` VALUES ('513','佛山市','佛山','','5','0');
INSERT INTO `tp_area` VALUES ('514','阳江市','阳江','','5','0');
INSERT INTO `tp_area` VALUES ('515','湛江市','湛江','','5','0');
INSERT INTO `tp_area` VALUES ('516','茂名市','茂名','','5','0');
INSERT INTO `tp_area` VALUES ('517','肇庆市','肇庆','','5','0');
INSERT INTO `tp_area` VALUES ('518','清远市','清远','','5','0');
INSERT INTO `tp_area` VALUES ('519','潮州市','潮州','','5','0');
INSERT INTO `tp_area` VALUES ('520','揭阳市','揭阳','','5','0');
INSERT INTO `tp_area` VALUES ('521','云浮市','云浮','','5','0');
INSERT INTO `tp_area` VALUES ('601','福州市','福州','','6','0');
INSERT INTO `tp_area` VALUES ('602','厦门市','厦门','','6','0');
INSERT INTO `tp_area` VALUES ('603','三明市','三明','','6','0');
INSERT INTO `tp_area` VALUES ('604','莆田市','莆田','','6','0');
INSERT INTO `tp_area` VALUES ('605','泉州市','泉州','','6','0');
INSERT INTO `tp_area` VALUES ('606','漳州市','漳州','','6','0');
INSERT INTO `tp_area` VALUES ('607','南平市','南平','','6','0');
INSERT INTO `tp_area` VALUES ('608','龙岩市','龙岩','','6','0');
INSERT INTO `tp_area` VALUES ('609','宁德市','宁德','','6','0');
INSERT INTO `tp_area` VALUES ('701','杭州市','杭州','','7','0');
INSERT INTO `tp_area` VALUES ('702','宁波市','宁波','','7','0');
INSERT INTO `tp_area` VALUES ('703','温州市','温州','','7','0');
INSERT INTO `tp_area` VALUES ('704','嘉兴市','嘉兴','','7','0');
INSERT INTO `tp_area` VALUES ('705','湖州市','湖州','','7','0');
INSERT INTO `tp_area` VALUES ('706','绍兴市','绍兴','','7','0');
INSERT INTO `tp_area` VALUES ('707','金华市','金华','','7','0');
INSERT INTO `tp_area` VALUES ('708','衢州市','衢州','','7','0');
INSERT INTO `tp_area` VALUES ('709','舟山市','舟山','','7','0');
INSERT INTO `tp_area` VALUES ('710','台州市','台州','','7','0');
INSERT INTO `tp_area` VALUES ('711','丽水市','丽水','','7','0');
INSERT INTO `tp_area` VALUES ('801','南京市','南京','','8','0');
INSERT INTO `tp_area` VALUES ('802','徐州市','徐州','','8','0');
INSERT INTO `tp_area` VALUES ('803','连云港市','连云港','','8','0');
INSERT INTO `tp_area` VALUES ('804','淮安市','淮安','','8','0');
INSERT INTO `tp_area` VALUES ('805','宿迁市','宿迁','','8','0');
INSERT INTO `tp_area` VALUES ('806','盐城市','盐城','','8','0');
INSERT INTO `tp_area` VALUES ('807','扬州市','扬州','','8','0');
INSERT INTO `tp_area` VALUES ('808','泰州市','泰州','','8','0');
INSERT INTO `tp_area` VALUES ('809','南通市','南通','','8','0');
INSERT INTO `tp_area` VALUES ('810','镇江市','镇江','','8','0');
INSERT INTO `tp_area` VALUES ('811','常州市','常州','','8','0');
INSERT INTO `tp_area` VALUES ('812','无锡市','无锡','','8','0');
INSERT INTO `tp_area` VALUES ('813','苏州市','苏州','','8','0');
INSERT INTO `tp_area` VALUES ('901','济南市','济南','','9','0');
INSERT INTO `tp_area` VALUES ('902','青岛市','青岛','','9','0');
INSERT INTO `tp_area` VALUES ('903','淄博市','淄博','','9','0');
INSERT INTO `tp_area` VALUES ('904','枣庄市','枣庄','','9','0');
INSERT INTO `tp_area` VALUES ('905','东营市','东营','','9','0');
INSERT INTO `tp_area` VALUES ('906','潍坊市','潍坊','','9','0');
INSERT INTO `tp_area` VALUES ('907','烟台市','烟台','','9','0');
INSERT INTO `tp_area` VALUES ('908','威海市','威海','','9','0');
INSERT INTO `tp_area` VALUES ('909','济宁市','济宁','','9','0');
INSERT INTO `tp_area` VALUES ('910','泰安市','泰安','','9','0');
INSERT INTO `tp_area` VALUES ('911','日照市','日照','','9','0');
INSERT INTO `tp_area` VALUES ('912','莱芜市','莱芜','','9','0');
INSERT INTO `tp_area` VALUES ('913','德州市','德州','','9','0');
INSERT INTO `tp_area` VALUES ('914','临沂市','临沂','','9','0');
INSERT INTO `tp_area` VALUES ('915','聊城市','聊城','','9','0');
INSERT INTO `tp_area` VALUES ('916','滨州市','滨州','','9','0');
INSERT INTO `tp_area` VALUES ('917','菏泽市','菏泽','','9','0');
INSERT INTO `tp_area` VALUES ('1001','沈阳市','沈阳','','10','0');
INSERT INTO `tp_area` VALUES ('1002','大连市','大连','','10','0');
INSERT INTO `tp_area` VALUES ('1003','鞍山市','鞍山','','10','0');
INSERT INTO `tp_area` VALUES ('1004','抚顺市','抚顺','','10','0');
INSERT INTO `tp_area` VALUES ('1005','本溪市','本溪','','10','0');
INSERT INTO `tp_area` VALUES ('1006','丹东市','丹东','','10','0');
INSERT INTO `tp_area` VALUES ('1007','锦州市','锦州','','10','0');
INSERT INTO `tp_area` VALUES ('1008','葫芦岛市','葫芦岛','','10','0');
INSERT INTO `tp_area` VALUES ('1009','营口市','营口','','10','0');
INSERT INTO `tp_area` VALUES ('1010','盘锦市','盘锦','','10','0');
INSERT INTO `tp_area` VALUES ('1011','阜新市','阜新','','10','0');
INSERT INTO `tp_area` VALUES ('1012','辽阳市','辽阳','','10','0');
INSERT INTO `tp_area` VALUES ('1013','铁岭市','铁岭','','10','0');
INSERT INTO `tp_area` VALUES ('1014','朝阳市','朝阳','','10','0');
INSERT INTO `tp_area` VALUES ('1101','南昌市','南昌','','11','0');
INSERT INTO `tp_area` VALUES ('1102','景德镇市','景德镇','','11','0');
INSERT INTO `tp_area` VALUES ('1103','萍乡市','萍乡','','11','0');
INSERT INTO `tp_area` VALUES ('1104','新余市','新余','','11','0');
INSERT INTO `tp_area` VALUES ('1105','九江市','九江','','11','0');
INSERT INTO `tp_area` VALUES ('1106','鹰潭市','鹰潭','','11','0');
INSERT INTO `tp_area` VALUES ('1107','赣州市','赣州','','11','0');
INSERT INTO `tp_area` VALUES ('1108','吉安市','吉安','','11','0');
INSERT INTO `tp_area` VALUES ('1109','宜春市','宜春','','11','0');
INSERT INTO `tp_area` VALUES ('1110','抚州市','抚州','','11','0');
INSERT INTO `tp_area` VALUES ('1111','上饶市','上饶','','11','0');
INSERT INTO `tp_area` VALUES ('1201','成都市','成都','','12','0');
INSERT INTO `tp_area` VALUES ('1202','自贡市','自贡','','12','0');
INSERT INTO `tp_area` VALUES ('1203','攀枝花市','攀枝花','','12','0');
INSERT INTO `tp_area` VALUES ('1204','泸州市','泸州','','12','0');
INSERT INTO `tp_area` VALUES ('1205','德阳市','德阳','','12','0');
INSERT INTO `tp_area` VALUES ('1206','绵阳市','绵阳','','12','0');
INSERT INTO `tp_area` VALUES ('1207','广元市','广元','','12','0');
INSERT INTO `tp_area` VALUES ('1208','遂宁市','遂宁','','12','0');
INSERT INTO `tp_area` VALUES ('1209','内江市','内江','','12','0');
INSERT INTO `tp_area` VALUES ('1210','乐山市','乐山','','12','0');
INSERT INTO `tp_area` VALUES ('1211','南充市','南充','','12','0');
INSERT INTO `tp_area` VALUES ('1212','宜宾市','宜宾','','12','0');
INSERT INTO `tp_area` VALUES ('1213','广安市','广安','','12','0');
INSERT INTO `tp_area` VALUES ('1214','达州市','达州','','12','0');
INSERT INTO `tp_area` VALUES ('1215','巴中市','巴中','','12','0');
INSERT INTO `tp_area` VALUES ('1216','雅安市','雅安','','12','0');
INSERT INTO `tp_area` VALUES ('1217','眉山市','眉山','','12','0');
INSERT INTO `tp_area` VALUES ('1218','资阳市','资阳','','12','0');
INSERT INTO `tp_area` VALUES ('1219','阿坝州','阿坝','','12','0');
INSERT INTO `tp_area` VALUES ('1220','甘孜州','甘孜','','12','0');
INSERT INTO `tp_area` VALUES ('1221','凉山州','凉山','','12','0');
INSERT INTO `tp_area` VALUES ('3114','西安市','西安','','13','0');
INSERT INTO `tp_area` VALUES ('1302','铜川市','铜川','','13','0');
INSERT INTO `tp_area` VALUES ('1303','宝鸡市','宝鸡','','13','0');
INSERT INTO `tp_area` VALUES ('1304','咸阳市','咸阳','','13','0');
INSERT INTO `tp_area` VALUES ('1305','渭南市','渭南','','13','0');
INSERT INTO `tp_area` VALUES ('1306','延安市','延安','','13','0');
INSERT INTO `tp_area` VALUES ('1307','汉中市','汉中','','13','0');
INSERT INTO `tp_area` VALUES ('1308','榆林市','榆林','','13','0');
INSERT INTO `tp_area` VALUES ('1309','安康市','安康','','13','0');
INSERT INTO `tp_area` VALUES ('1310','商洛地区','商洛地区','','13','0');
INSERT INTO `tp_area` VALUES ('1401','武汉市','武汉','','14','0');
INSERT INTO `tp_area` VALUES ('1402','黄石市','黄石','','14','0');
INSERT INTO `tp_area` VALUES ('1403','襄樊市','襄樊','','14','0');
INSERT INTO `tp_area` VALUES ('1404','十堰市','十堰','','14','0');
INSERT INTO `tp_area` VALUES ('1405','荆州市','荆州','','14','0');
INSERT INTO `tp_area` VALUES ('1406','宜昌市','宜昌','','14','0');
INSERT INTO `tp_area` VALUES ('1407','荆门市','荆门','','14','0');
INSERT INTO `tp_area` VALUES ('1408','鄂州市','鄂州','','14','0');
INSERT INTO `tp_area` VALUES ('1409','孝感市','孝感','','14','0');
INSERT INTO `tp_area` VALUES ('1410','黄冈市','黄冈','','14','0');
INSERT INTO `tp_area` VALUES ('1411','咸宁市','咸宁','','14','0');
INSERT INTO `tp_area` VALUES ('1412','随州市','随州','','14','0');
INSERT INTO `tp_area` VALUES ('1413','仙桃市','仙桃','','14','0');
INSERT INTO `tp_area` VALUES ('1414','天门市','天门','','14','0');
INSERT INTO `tp_area` VALUES ('1415','潜江市','潜江','','14','0');
INSERT INTO `tp_area` VALUES ('1416','神农架','神农架','','14','0');
INSERT INTO `tp_area` VALUES ('1417','恩施州','恩施','','14','0');
INSERT INTO `tp_area` VALUES ('1501','郑州市','郑州','','15','0');
INSERT INTO `tp_area` VALUES ('1502','开封市','开封','','15','0');
INSERT INTO `tp_area` VALUES ('1503','洛阳市','洛阳','','15','0');
INSERT INTO `tp_area` VALUES ('1504','平顶山市','平顶山','','15','0');
INSERT INTO `tp_area` VALUES ('1505','焦作市','焦作','','15','0');
INSERT INTO `tp_area` VALUES ('1506','鹤壁市','鹤壁','','15','0');
INSERT INTO `tp_area` VALUES ('1507','新乡市','新乡','','15','0');
INSERT INTO `tp_area` VALUES ('1508','安阳市','安阳','','15','0');
INSERT INTO `tp_area` VALUES ('1509','濮阳市','濮阳','','15','0');
INSERT INTO `tp_area` VALUES ('1510','许昌市','许昌','','15','0');
INSERT INTO `tp_area` VALUES ('1511','漯河市','漯河','','15','0');
INSERT INTO `tp_area` VALUES ('1512','三门峡市','三门峡','','15','0');
INSERT INTO `tp_area` VALUES ('1513','南阳市','南阳','','15','0');
INSERT INTO `tp_area` VALUES ('1514','商丘市','商丘','','15','0');
INSERT INTO `tp_area` VALUES ('1515','信阳市','信阳','','15','0');
INSERT INTO `tp_area` VALUES ('1516','周口市','周口','','15','0');
INSERT INTO `tp_area` VALUES ('1517','驻马店市','驻马店','','15','0');
INSERT INTO `tp_area` VALUES ('1518','济源市','济源','','15','0');
INSERT INTO `tp_area` VALUES ('1601','石家庄市','石家庄','','16','0');
INSERT INTO `tp_area` VALUES ('1602','唐山市','唐山','','16','0');
INSERT INTO `tp_area` VALUES ('1603','秦皇岛市','秦皇岛','','16','0');
INSERT INTO `tp_area` VALUES ('1604','邯郸市','邯郸','','16','0');
INSERT INTO `tp_area` VALUES ('1605','邢台市','邢台','','16','0');
INSERT INTO `tp_area` VALUES ('1606','保定市','保定','','16','0');
INSERT INTO `tp_area` VALUES ('1607','张家口市','张家口','','16','0');
INSERT INTO `tp_area` VALUES ('1608','承德市','承德','','16','0');
INSERT INTO `tp_area` VALUES ('1609','沧州市','沧州','','16','0');
INSERT INTO `tp_area` VALUES ('1610','廊坊市','廊坊','','16','0');
INSERT INTO `tp_area` VALUES ('1611','衡水市','衡水','','16','0');
INSERT INTO `tp_area` VALUES ('1701','太原市','太原','','17','0');
INSERT INTO `tp_area` VALUES ('1702','大同市','大同','','17','0');
INSERT INTO `tp_area` VALUES ('1703','阳泉市','阳泉','','17','0');
INSERT INTO `tp_area` VALUES ('1704','长治市','长治','','17','0');
INSERT INTO `tp_area` VALUES ('1705','晋城市','晋城','','17','0');
INSERT INTO `tp_area` VALUES ('1706','朔州市','朔州','','17','0');
INSERT INTO `tp_area` VALUES ('1707','晋中市','晋中','','17','0');
INSERT INTO `tp_area` VALUES ('1708','忻州市','忻州','','17','0');
INSERT INTO `tp_area` VALUES ('1709','临汾市','临汾','','17','0');
INSERT INTO `tp_area` VALUES ('1710','运城市','运城','','17','0');
INSERT INTO `tp_area` VALUES ('1711','吕梁地区','吕梁地区','','17','0');
INSERT INTO `tp_area` VALUES ('1801','呼和浩特','呼和浩特','','18','0');
INSERT INTO `tp_area` VALUES ('1802','包头市','包头','','18','0');
INSERT INTO `tp_area` VALUES ('1803','乌海市','乌海','','18','0');
INSERT INTO `tp_area` VALUES ('1804','赤峰市','赤峰','','18','0');
INSERT INTO `tp_area` VALUES ('1805','通辽市','通辽','','18','0');
INSERT INTO `tp_area` VALUES ('1806','鄂尔多斯','鄂尔多斯','','18','0');
INSERT INTO `tp_area` VALUES ('1807','乌兰察布','乌兰察布','','18','0');
INSERT INTO `tp_area` VALUES ('1808','锡林郭勒','锡林郭勒','','18','0');
INSERT INTO `tp_area` VALUES ('1809','呼伦贝尔','呼伦贝尔','','18','0');
INSERT INTO `tp_area` VALUES ('1810','巴彦淖尔','巴彦淖尔','','18','0');
INSERT INTO `tp_area` VALUES ('1811','阿拉善盟','阿拉善盟','','18','0');
INSERT INTO `tp_area` VALUES ('1812','兴安盟','兴安盟','','18','0');
INSERT INTO `tp_area` VALUES ('1901','长春市','长春','','19','0');
INSERT INTO `tp_area` VALUES ('1902','吉林市','吉林','','19','0');
INSERT INTO `tp_area` VALUES ('1903','四平市','四平','','19','0');
INSERT INTO `tp_area` VALUES ('1904','辽源市','辽源','','19','0');
INSERT INTO `tp_area` VALUES ('1905','通化市','通化','','19','0');
INSERT INTO `tp_area` VALUES ('1906','白山市','白山','','19','0');
INSERT INTO `tp_area` VALUES ('1907','松原市','松原','','19','0');
INSERT INTO `tp_area` VALUES ('1908','白城市','白城','','19','0');
INSERT INTO `tp_area` VALUES ('1909','延边州','延边','','19','0');
INSERT INTO `tp_area` VALUES ('2001','哈尔滨市','哈尔滨','','20','0');
INSERT INTO `tp_area` VALUES ('2002','齐齐哈尔','齐齐哈尔','','20','0');
INSERT INTO `tp_area` VALUES ('2003','鹤岗市','鹤岗','','20','0');
INSERT INTO `tp_area` VALUES ('2004','双鸭山市','双鸭山','','20','0');
INSERT INTO `tp_area` VALUES ('2005','鸡西市','鸡西','','20','0');
INSERT INTO `tp_area` VALUES ('2006','大庆市','大庆','','20','0');
INSERT INTO `tp_area` VALUES ('2007','伊春市','伊春','','20','0');
INSERT INTO `tp_area` VALUES ('2008','牡丹江市','牡丹江','','20','0');
INSERT INTO `tp_area` VALUES ('2009','佳木斯市','佳木斯','','20','0');
INSERT INTO `tp_area` VALUES ('2010','七台河市','七台河','','20','0');
INSERT INTO `tp_area` VALUES ('2011','黑河市','黑河','','20','0');
INSERT INTO `tp_area` VALUES ('2012','绥化市','绥化','','20','0');
INSERT INTO `tp_area` VALUES ('2013','大兴安岭','大兴安岭','','20','0');
INSERT INTO `tp_area` VALUES ('2101','合肥市','合肥','','21','0');
INSERT INTO `tp_area` VALUES ('2102','芜湖市','芜湖','','21','0');
INSERT INTO `tp_area` VALUES ('2103','蚌埠市','蚌埠','','21','0');
INSERT INTO `tp_area` VALUES ('2104','淮南市','淮南','','21','0');
INSERT INTO `tp_area` VALUES ('2105','马鞍山市','马鞍山','','21','0');
INSERT INTO `tp_area` VALUES ('2106','淮北市','淮北','','21','0');
INSERT INTO `tp_area` VALUES ('2107','铜陵市','铜陵','','21','0');
INSERT INTO `tp_area` VALUES ('2108','安庆市','安庆','','21','0');
INSERT INTO `tp_area` VALUES ('2109','黄山市','黄山','','21','0');
INSERT INTO `tp_area` VALUES ('2110','滁州市','滁州','','21','0');
INSERT INTO `tp_area` VALUES ('2111','阜阳市','阜阳','','21','0');
INSERT INTO `tp_area` VALUES ('2112','宿州市','宿州','','21','0');
INSERT INTO `tp_area` VALUES ('2113','巢湖市','巢湖','','21','0');
INSERT INTO `tp_area` VALUES ('2114','六安市','六安','','21','0');
INSERT INTO `tp_area` VALUES ('2115','亳州市','亳州','','21','0');
INSERT INTO `tp_area` VALUES ('2116','宣城市','宣城','','21','0');
INSERT INTO `tp_area` VALUES ('2117','池州市','池州','','21','0');
INSERT INTO `tp_area` VALUES ('2201','长沙市','长沙','','22','0');
INSERT INTO `tp_area` VALUES ('2202','株州市','株州','','22','0');
INSERT INTO `tp_area` VALUES ('2203','湘潭市','湘潭','','22','0');
INSERT INTO `tp_area` VALUES ('2204','衡阳市','衡阳','','22','0');
INSERT INTO `tp_area` VALUES ('2205','邵阳市','邵阳','','22','0');
INSERT INTO `tp_area` VALUES ('2206','岳阳市','岳阳','','22','0');
INSERT INTO `tp_area` VALUES ('2207','常德市','常德','','22','0');
INSERT INTO `tp_area` VALUES ('2208','张家界市','张家界','','22','0');
INSERT INTO `tp_area` VALUES ('2209','益阳市','益阳','','22','0');
INSERT INTO `tp_area` VALUES ('2210','郴州市','郴州','','22','0');
INSERT INTO `tp_area` VALUES ('2211','永州市','永州','','22','0');
INSERT INTO `tp_area` VALUES ('2212','怀化市','怀化','','22','0');
INSERT INTO `tp_area` VALUES ('2213','娄底市','娄底','','22','0');
INSERT INTO `tp_area` VALUES ('2214','湘西州','湘西','','22','0');
INSERT INTO `tp_area` VALUES ('2301','南宁市','南宁','','23','0');
INSERT INTO `tp_area` VALUES ('2302','柳州市','柳州','','23','0');
INSERT INTO `tp_area` VALUES ('2303','桂林市','桂林','','23','0');
INSERT INTO `tp_area` VALUES ('2304','梧州市','梧州','','23','0');
INSERT INTO `tp_area` VALUES ('2305','北海市','北海','','23','0');
INSERT INTO `tp_area` VALUES ('2306','防城港市','防城港','','23','0');
INSERT INTO `tp_area` VALUES ('2307','钦州市','钦州','','23','0');
INSERT INTO `tp_area` VALUES ('2308','贵港市','贵港','','23','0');
INSERT INTO `tp_area` VALUES ('2309','玉林市','玉林','','23','0');
INSERT INTO `tp_area` VALUES ('2310','南宁地区','南宁地区','','23','0');
INSERT INTO `tp_area` VALUES ('2311','柳州地区','柳地区','','23','0');
INSERT INTO `tp_area` VALUES ('2312','贺州地区','贺地区','','23','0');
INSERT INTO `tp_area` VALUES ('2313','百色地区','百色地区','','23','0');
INSERT INTO `tp_area` VALUES ('2314','河池地区','河池地区','','23','0');
INSERT INTO `tp_area` VALUES ('2401','海口市','海口','','24','0');
INSERT INTO `tp_area` VALUES ('2402','三亚市','三亚','','24','0');
INSERT INTO `tp_area` VALUES ('2403','五指山市','五指山','','24','0');
INSERT INTO `tp_area` VALUES ('2404','琼海市','琼海','','24','0');
INSERT INTO `tp_area` VALUES ('2405','儋州市','儋州','','24','0');
INSERT INTO `tp_area` VALUES ('2406','琼山市','琼山','','24','0');
INSERT INTO `tp_area` VALUES ('2407','文昌市','文昌','','24','0');
INSERT INTO `tp_area` VALUES ('2408','万宁市','万宁','','24','0');
INSERT INTO `tp_area` VALUES ('2409','东方市','东方','','24','0');
INSERT INTO `tp_area` VALUES ('2410','澄迈县','澄迈县','','24','0');
INSERT INTO `tp_area` VALUES ('2411','定安县','定安县','','24','0');
INSERT INTO `tp_area` VALUES ('2412','屯昌县','屯昌县','','24','0');
INSERT INTO `tp_area` VALUES ('2413','临高县','临高县','','24','0');
INSERT INTO `tp_area` VALUES ('2414','白沙县','白沙县','','24','0');
INSERT INTO `tp_area` VALUES ('2415','昌江县','昌江县','','24','0');
INSERT INTO `tp_area` VALUES ('2416','乐东县','乐东县','','24','0');
INSERT INTO `tp_area` VALUES ('2417','陵水县','陵水县','','24','0');
INSERT INTO `tp_area` VALUES ('2418','保亭县','保亭县','','24','0');
INSERT INTO `tp_area` VALUES ('2419','琼中县','琼中县','','24','0');
INSERT INTO `tp_area` VALUES ('2501','昆明市','昆明','','25','0');
INSERT INTO `tp_area` VALUES ('2502','曲靖市','曲靖','','25','0');
INSERT INTO `tp_area` VALUES ('2503','玉溪市','玉溪','','25','0');
INSERT INTO `tp_area` VALUES ('2504','保山市','保山','','25','0');
INSERT INTO `tp_area` VALUES ('2505','昭通市','昭通','','25','0');
INSERT INTO `tp_area` VALUES ('2506',' 普洱市',' 普洱','','25','0');
INSERT INTO `tp_area` VALUES ('2507','临沧市','临沧','','25','0');
INSERT INTO `tp_area` VALUES ('2508','丽江市','丽江','','25','0');
INSERT INTO `tp_area` VALUES ('2509','文山州','文山','','25','0');
INSERT INTO `tp_area` VALUES ('2510','红河州','红河','','25','0');
INSERT INTO `tp_area` VALUES ('2511','西双版纳','西双版纳','','25','0');
INSERT INTO `tp_area` VALUES ('2512','楚雄州','楚雄','','25','0');
INSERT INTO `tp_area` VALUES ('2513','大理州','大理','','25','0');
INSERT INTO `tp_area` VALUES ('2514','德宏州','德宏','','25','0');
INSERT INTO `tp_area` VALUES ('2515','怒江州','怒江','','25','0');
INSERT INTO `tp_area` VALUES ('2516','迪庆州','迪庆','','25','0');
INSERT INTO `tp_area` VALUES ('2601','贵阳市','贵阳','','26','0');
INSERT INTO `tp_area` VALUES ('2602','六盘水市','六盘水','','26','0');
INSERT INTO `tp_area` VALUES ('2603','遵义市','遵义','','26','0');
INSERT INTO `tp_area` VALUES ('2604','安顺市','安顺','','26','0');
INSERT INTO `tp_area` VALUES ('2605','铜仁地区','铜仁地区','','26','0');
INSERT INTO `tp_area` VALUES ('2606','毕节地区','毕节地区','','26','0');
INSERT INTO `tp_area` VALUES ('2607','黔西南州','黔西南','','26','0');
INSERT INTO `tp_area` VALUES ('2608','黔东南州','黔东南','','26','0');
INSERT INTO `tp_area` VALUES ('2609','黔南州','黔南','','26','0');
INSERT INTO `tp_area` VALUES ('2701','拉萨市','拉萨','','27','0');
INSERT INTO `tp_area` VALUES ('2702','那曲地区','那曲地区','','27','0');
INSERT INTO `tp_area` VALUES ('2703','昌都地区','昌都地区','','27','0');
INSERT INTO `tp_area` VALUES ('2704','山南地区','山南地区','','27','0');
INSERT INTO `tp_area` VALUES ('2705','日喀则','日喀则','','27','0');
INSERT INTO `tp_area` VALUES ('2706','阿里地区','阿里地区','','27','0');
INSERT INTO `tp_area` VALUES ('2707','林芝地区','林芝地区','','27','0');
INSERT INTO `tp_area` VALUES ('2801','兰州市','兰州','','28','0');
INSERT INTO `tp_area` VALUES ('2802','金昌市','金昌','','28','0');
INSERT INTO `tp_area` VALUES ('2803','白银市','白银','','28','0');
INSERT INTO `tp_area` VALUES ('2804','天水市','天水','','28','0');
INSERT INTO `tp_area` VALUES ('2805','嘉峪关市','嘉峪关','','28','0');
INSERT INTO `tp_area` VALUES ('2806','武威市','武威','','28','0');
INSERT INTO `tp_area` VALUES ('2807','定西地区','定西地区','','28','0');
INSERT INTO `tp_area` VALUES ('2808','平凉地区','平凉地区','','28','0');
INSERT INTO `tp_area` VALUES ('2809','庆阳地区','庆阳地区','','28','0');
INSERT INTO `tp_area` VALUES ('2810','陇南地区','陇南地区','','28','0');
INSERT INTO `tp_area` VALUES ('2811','张掖地区','张掖地区','','28','0');
INSERT INTO `tp_area` VALUES ('2812','酒泉地区','酒泉地区','','28','0');
INSERT INTO `tp_area` VALUES ('2813','甘南州','甘南','','28','0');
INSERT INTO `tp_area` VALUES ('2814','临夏州','临夏','','28','0');
INSERT INTO `tp_area` VALUES ('2901','银川市','银川','','29','0');
INSERT INTO `tp_area` VALUES ('2902','石嘴山市','石嘴山','','29','0');
INSERT INTO `tp_area` VALUES ('2903','吴忠市','吴忠','','29','0');
INSERT INTO `tp_area` VALUES ('2904','固原市','固原','','29','0');
INSERT INTO `tp_area` VALUES ('3001','西宁市','西宁','','30','0');
INSERT INTO `tp_area` VALUES ('3002','海东地区','海东地区','','30','0');
INSERT INTO `tp_area` VALUES ('3003','海北州','海北','','30','0');
INSERT INTO `tp_area` VALUES ('3004','黄南州','黄南','','30','0');
INSERT INTO `tp_area` VALUES ('3005','海南州','海南','','30','0');
INSERT INTO `tp_area` VALUES ('3006','果洛州','果洛','','30','0');
INSERT INTO `tp_area` VALUES ('3007','玉树州','玉树','','30','0');
INSERT INTO `tp_area` VALUES ('3008','海西州','海西','','30','0');
INSERT INTO `tp_area` VALUES ('3101','乌鲁木齐','乌鲁木齐','','31','0');
INSERT INTO `tp_area` VALUES ('3102','克拉玛依','克拉玛依','','31','0');
INSERT INTO `tp_area` VALUES ('3103','石河子市','石河子','','31','0');
INSERT INTO `tp_area` VALUES ('3104','吐鲁番','吐鲁番','','31','0');
INSERT INTO `tp_area` VALUES ('3105','哈密地区','哈密地区','','31','0');
INSERT INTO `tp_area` VALUES ('3106','和田地区','和田地区','','31','0');
INSERT INTO `tp_area` VALUES ('3107','阿克苏','阿克苏','','31','0');
INSERT INTO `tp_area` VALUES ('3108','喀什地区','喀什地区','','31','0');
INSERT INTO `tp_area` VALUES ('3109','克孜勒苏','克孜勒苏','','31','0');
INSERT INTO `tp_area` VALUES ('3110','巴音郭楞','巴音郭楞','','31','0');
INSERT INTO `tp_area` VALUES ('3111','昌吉州','昌吉','','31','0');
INSERT INTO `tp_area` VALUES ('3112','博尔塔拉','博尔塔拉','','31','0');
INSERT INTO `tp_area` VALUES ('3113','伊犁州','伊犁','','31','0');
INSERT INTO `tp_area` VALUES ('3201','香港岛','香港岛','','32','0');
INSERT INTO `tp_area` VALUES ('3202','九龙','九龙','','32','0');
INSERT INTO `tp_area` VALUES ('3203','新界','新界','','32','0');
INSERT INTO `tp_area` VALUES ('3301','澳门半岛','澳门半岛','','33','0');
INSERT INTO `tp_area` VALUES ('3302','离岛','离岛','','33','0');
INSERT INTO `tp_area` VALUES ('3401','台北市','台北','','34','0');
INSERT INTO `tp_area` VALUES ('3402','高雄市','高雄','','34','0');
INSERT INTO `tp_area` VALUES ('3403','台南市','台南','','34','0');
INSERT INTO `tp_area` VALUES ('3404','台中市','台中','','34','0');
INSERT INTO `tp_area` VALUES ('3405','金门县','金门县','','34','0');
INSERT INTO `tp_area` VALUES ('3406','南投县','南投县','','34','0');
INSERT INTO `tp_area` VALUES ('3407','基隆市','基隆','','34','0');
INSERT INTO `tp_area` VALUES ('3408','新竹市','新竹','','34','0');
INSERT INTO `tp_area` VALUES ('3409','嘉义市','嘉义','','34','0');
INSERT INTO `tp_area` VALUES ('3410','新北市','新北','','34','0');
INSERT INTO `tp_area` VALUES ('3411','宜兰县','宜兰县','','34','0');
INSERT INTO `tp_area` VALUES ('3412','新竹县','新竹县','','34','0');
INSERT INTO `tp_area` VALUES ('3413','桃园县','桃园县','','34','0');
INSERT INTO `tp_area` VALUES ('3414','苗栗县','苗栗县','','34','0');
INSERT INTO `tp_area` VALUES ('3415','彰化县','彰化县','','34','0');
INSERT INTO `tp_area` VALUES ('3416','嘉义县','嘉义县','','34','0');
INSERT INTO `tp_area` VALUES ('3417','云林县','云林县','','34','0');
INSERT INTO `tp_area` VALUES ('3418','屏东县','屏东县','','34','0');
INSERT INTO `tp_area` VALUES ('3419','台东县','台东县','','34','0');
INSERT INTO `tp_area` VALUES ('3420','花莲县','花莲县','','34','0');
INSERT INTO `tp_area` VALUES ('3421','澎湖县','澎湖县','','34','0');
INSERT INTO `tp_area` VALUES ('6001','美国','美国','','60','0');
INSERT INTO `tp_area` VALUES ('6002','英国','英国','','60','0');
INSERT INTO `tp_area` VALUES ('6003','法国','法国','','60','0');
INSERT INTO `tp_area` VALUES ('6004','俄罗斯','俄罗斯','','60','0');
INSERT INTO `tp_area` VALUES ('6005','加拿大','加拿大','','60','0');
INSERT INTO `tp_area` VALUES ('6006','巴西','巴西','','60','0');
INSERT INTO `tp_area` VALUES ('6007','澳大利亚','澳大利亚','','60','0');
INSERT INTO `tp_area` VALUES ('6008','印尼','印尼','','60','0');
INSERT INTO `tp_area` VALUES ('6009','马来西亚','马来西亚','','60','0');
INSERT INTO `tp_area` VALUES ('6010','新加坡','新加坡','','60','0');
INSERT INTO `tp_area` VALUES ('6011','菲律宾','菲律宾','','60','0');
INSERT INTO `tp_area` VALUES ('6012','越南','越南','','60','0');
INSERT INTO `tp_area` VALUES ('6013','印度','印度','','60','0');
INSERT INTO `tp_area` VALUES ('6014','日本','日本','','60','0');
INSERT INTO `tp_area` VALUES ('6015','韩国','韩国','','60','0');
INSERT INTO `tp_area` VALUES ('6016','泰国','泰国','','60','0');
INSERT INTO `tp_area` VALUES ('6017','缅甸','缅甸','','60','0');
INSERT INTO `tp_area` VALUES ('6018','其他','其他','','60','0');


# 转存表中的数据：tp_article 
INSERT INTO `tp_article` VALUES ('1','Centos 6.3使用yum搭建LAMP环境','','','','','','','<p>1. 安装Apahce, PHP, MySQL以及php连接mysql库组件。
#yum -y install httpd php mysql mysql-server php-mysql
yum会到指定的服务器(mirror:163.com服务器)下载对应的软件版本，并自动处理依赖关系，并进行安装。 <br/></p><p>2. 安装apache扩展
#yum -y install httpd-manual mod_ssl mod_perl mod_auth_mysql
让apache更好的支持其他的软件。 <br/></p><p>3. 安装php的扩展
#yum -y install php-gd php-xml php-mbstring php-ldap php-pear php-xmlrpc
apache本身并不支持php文件，要安装对应的php软件，然后进行http.conf配置；让apache能解析.php文件。 <br/></p><p>4. 安装MySQL的扩展

#yum -y install mysql-connector-odbc mysql-devel libdbi-dbd-mysql <br/></p><p>第五步：启动apache及MySQL
/etc/init.d/httpd restart
/etc/init.d/mysqld restart
至此，我们的LAMP环境已经搭建了。现在就是测试一下环境是否搭建成功，以及查看配置信息吧。
vi /var/www/html/info.php</p><!--?php--><p>上传/var/www/html/目录，以http://yourip/info.php访问，查看php信息。
是没有打开短标签模式，所以才不能正常显示，你可以在php,ini中找到short_open_tag，然后把他的值改成on就可以了。 <br/></p><p>第六步：设置httpd和MySQL开机启动。
chkconfig httpd on
chkconfig mysqld on <br/></p><p>补充：各配置文件位置 <br/></p><p>/etc/my.cnf &nbsp; &nbsp; MySQL配置文件 <br/></p><p>/etc/httpd/ &nbsp; &nbsp; apache配置文件 <br/></p><p>/etc/php.ini &nbsp; &nbsp;php配置文件 <br/></p><p>/var/www/html/ &nbsp;网站存放目录</p><!--?php-->','1. 安装Apahce, PHP, MySQL以及php连接mysql库组件。
#yum -y install httpd php mysql mysql-server php-mysql
yum会到指定的服务器(mirror:163.','1405325326','1405325326','75','1','1','0','','0','0','1','0');
INSERT INTO `tp_article` VALUES ('2','MySQL批量替换','','','','','','','<p>MySQL批量替换指定字段字符串语句

　　</p><p>UPDATE 数据表名 SET 字段名 = replace(字段名， &#39;要替换的字符串&#39;, &#39;替换为&#39;) WHERE 设定条件;

　　</p><p>UPDATE `linuxso_archives` SET `title` = replace(title, &#39;linux下&#39;, &#39;linux &#39;) WHERE `typeid` =18;</p>','MySQL批量替换指定字段字符串语句

　　UPDATE 数据表名 SET 字段名 = replace(字段名， &#39;要替换的字符串&#39;, &#39;替换为&#39;) WHERE 设定条件;

　　UPDATE `li','1405325419','1405325419','85','1','1','0','','0','0','1','0');
INSERT INTO `tp_article` VALUES ('3','js常用正则表达式','','','','','js常用正则表达式','','<p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">整数或者小数：^[0-9]+\.{0,1}[0-9]{0,2}$</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">只能输入数字：&quot;^[0-9]*$&quot;。</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">只能输入n位的数字：&quot;^\d{n}$&quot;。</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">只能输入至少n位的数字：&quot;^\d{n,}$&quot;。</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">只能输入m~n位的数字：。&quot;^\d{m,n}$&quot;</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">只能输入零和非零开头的数字：&quot;^(0|[1-9][0-9]*)$&quot;。</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">只能输入有两位小数的正实数：&quot;^[0-9]+(.[0-9]{2})?$&quot;。</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">只能输入有1~3位小数的正实数：&quot;^[0-9]+(.[0-9]{1,3})?$&quot;。</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">只能输入非零的正整数：&quot;^\+?[1-9][0-9]*$&quot;。</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">只能输入非零的负整数：&quot;^\-[1-9][]0-9&quot;*$。</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">只能输入长度为3的字符：&quot;^.{3}$&quot;。</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">只能输入由26个英文字母组成的字符串：&quot;^[A-Za-z]+$&quot;。</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">只能输入由26个大写英文字母组成的字符串：&quot;^[A-Z]+$&quot;。</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">只能输入由26个小写英文字母组成的字符串：&quot;^[a-z]+$&quot;。</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">只能输入由数字和26个英文字母组成的字符串：&quot;^[A-Za-z0-9]+$&quot;。</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">只能输入由数字、26个英文字母或者下划线组成的字符串：&quot;^\w+$&quot;。</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">验证用户密码：&quot;^[a-zA-Z]\w{5,17}$&quot;正确格式为：以字母开头，长度在6~18之间，只能包含字符、数字和下划线。</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">验证是否含有^%&amp;&#39;,;=?$\&quot;等字符：&quot;[^%&amp;&#39;,;=?$\x22]+&quot;。</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">只能输入汉字：&quot;^[\u4e00-\u9fa5]{0,}$&quot;</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">验证Email地址：&quot;^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$&quot;。</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">验证InternetURL：&quot;^http://([\w-]+\.)+[\w-]+(/[\w-./?%&amp;=]*)?$&quot;。</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">验证电话号码：&quot;^(\(\d{3,4}-)|\d{3.4}-)?\d{7,8}$&quot;正确格式为：&quot;XXX-XXXXXXX&quot;、&quot;XXXX-XXXXXXXX&quot;、&quot;XXX-XXXXXXX&quot;、&quot;XXX-XXXXXXXX&quot;、&quot;XXXXXXX&quot;和&quot;XXXXXXXX&quot;。</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">验证身份证号（15位或18位数字）：&quot;^\d{15}|\d{18}$&quot;。</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">验证一年的12个月：&quot;^(0?[1-9]|1[0-2])$&quot;正确格式为：&quot;01&quot;～&quot;09&quot;和&quot;1&quot;～&quot;12&quot;。</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">验证一个月的31天：&quot;^((0?[1-9])|((1|2)[0-9])|30|31)$&quot;正确格式为；&quot;01&quot;～&quot;09&quot;和&quot;1&quot;～&quot;31&quot;。</span><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配中文字符的正则表达式： [\u4e00-\u9fa5]</span><br/><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配双字节字符(包括汉字在内)：[^\x00-\xff]</span><br/><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">应用：计算字符串的长度（一个双字节字符长度计2，ASCII字符计1）</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">String.prototype.len=function(){return this.replace(/[^\x00-\xff]/g,&quot;aa&quot;).length;}</span><br/><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配空行的正则表达式：\n[\s| ]*\r</span><br/><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配html标签的正则表达式：&lt;(.*)&gt;(.*)&lt;\/(.*)&gt;|&lt;(.*)\/&gt;</span><br/><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配首尾空格的正则表达式：(^\s*)|(\s*$)</span><br/><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">应用：javascript中没有像vbscript那样的trim函数，我们就可以利用这个表达式来实现，如下：</span><br/><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">String.prototype.trim = function()</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">{</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">return this.replace(/(^\s*)|(\s*$)/g, &quot;&quot;);</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">}</span><br/><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">利用正则表达式分解和转换IP地址：</span><br/><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">下面是利用正则表达式匹配IP地址，并将IP地址转换成对应数值的Javascript程序：</span><br/><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">function IP2V(ip)</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">{</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">re=/(\d+)\.(\d+)\.(\d+)\.(\d+)/g //匹配IP地址的正则表达式</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">if(re.test(ip))</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">{</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">return RegExp.$1*Math.pow(255,3))+RegExp.$2*Math.pow(255,2))+RegExp.$3*255+RegExp.$4*1</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">}</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">else</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">{</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">throw new Error(&quot;Not a valid IP address!&quot;)</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">}</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">}</span><br/><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">不过上面的程序如果不用正则表达式，而直接用split函数来分解可能更简单，程序如下：</span><br/><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">var ip=&quot;10.100.20.168&quot;</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">ip=ip.split(&quot;.&quot;)</span><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">alert(&quot;IP值是：&quot;+(ip[0]*255*255*255+ip[1]*255*255+ip[2]*255+ip[3]*1))</span><br/><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配Email地址的正则表达式：\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*</span><br/><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配网址URL的正则表达式：http://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?</span><br/><br/><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">利用正则表达式限制网页表单里的文本框输入内容：</span><br/><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">用正则表达式限制只能输入中文：onkeyup=&quot;value=value.replace(/[^\u4E00-\u9FA5]/g,&#39;&#39;)&quot;
 
onbeforepaste=&quot;clipboardData.setData(&#39;text&#39;,clipboardData.getData(&#39;text&#39;).replace(/[^\u4E00-\u9FA5]/g,&#39;&#39;))&quot;</span><br/><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">用正则表达式限制只能输入全角字符：
 onkeyup=&quot;value=value.replace(/[^\uFF00-\uFFFF]/g,&#39;&#39;)&quot; 
onbeforepaste=&quot;clipboardData.setData(&#39;text&#39;,clipboardData.getData(&#39;text&#39;).replace(/[^\uFF00-\uFFFF]/g,&#39;&#39;))&quot;</span><br/><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">用正则表达式限制只能输入数字：onkeyup=&quot;value=value.replace(/[^\d]/g,&#39;&#39;)
 
&quot;onbeforepaste=&quot;clipboardData.setData(&#39;text&#39;,clipboardData.getData(&#39;text&#39;).replace(/[^\d]/g,&#39;&#39;))&quot;</span><br/><br/><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">用正则表达式限制只能输入数字和英文：onkeyup=&quot;value=value.replace(/[\W]/g,&#39;&#39;)
 
&quot;onbeforepaste=&quot;clipboardData.setData(&#39;text&#39;,clipboardData.getData(&#39;text&#39;).replace(/[^\d]/g,&#39;&#39;))&quot;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配中文字符的正则表达式： [\u4e00-\u9fa5]</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">评注：匹配中文还真是个头疼的事，有了这个表达式就好办了</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配双字节字符(包括汉字在内)：[^\x00-\xff]</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">评注：可以用来计算字符串的长度（一个双字节字符长度计2，ASCII字符计1）</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配空白行的正则表达式：\n\s*\r</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">评注：可以用来删除空白行</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配HTML标记的正则表达式：&lt;(\S*?)[^&gt;]*&gt;.*?|&lt;.*? /&gt;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">评注：网上流传的版本太糟糕，上面这个也仅仅能匹配部分，对于复杂的嵌套标记依旧无能为力</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配首尾空白字符的正则表达式：^\s*|\s*$</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">评注：可以用来删除行首行尾的空白字符(包括空格、制表符、换页符等等)，非常有用的表达式</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配Email地址的正则表达式：\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">评注：表单验证时很实用</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配网址URL的正则表达式：[a-zA-z]+://[^\s]*</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">评注：网上流传的版本功能很有限，上面这个基本可以满足需求</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配帐号是否合法(字母开头，允许5-16字节，允许字母数字下划线)：^[a-zA-Z][a-zA-Z0-9_]{4,15}$</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">评注：表单验证时很实用</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配国内电话号码：\d{3}-\d{8}|\d{4}-\d{7}</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">评注：匹配形式如 0511-4405222 或 021-87888822</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配腾讯QQ号：[1-9][0-9]{4,}</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">评注：腾讯QQ号从10000开始</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配中国邮政编码：[1-9]\d{5}(?!\d)</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">评注：中国邮政编码为6位数字</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配身份证：\d{15}|\d{18}</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">评注：中国的身份证为15位或18位</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配ip地址：\d+\.\d+\.\d+\.\d+</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">评注：提取ip地址时有用</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配特定数字：</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">^[1-9]\d*$　 　 //匹配正整数</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">^-[1-9]\d*$ 　 //匹配负整数</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">^-?[1-9]\d*$　　 //匹配整数</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">^[1-9]\d*|0$　 //匹配非负整数（正整数 + 0）</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">^-[1-9]\d*|0$　　 //匹配非正整数（负整数 + 0）</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">^[1-9]\d*\.\d*|0\.\d*[1-9]\d*$　　 //匹配正浮点数</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">^-([1-9]\d*\.\d*|0\.\d*[1-9]\d*)$　 //匹配负浮点数</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">^-?([1-9]\d*\.\d*|0\.\d*[1-9]\d*|0?\.0+|0)$　 //匹配浮点数</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">^[1-9]\d*\.\d*|0\.\d*[1-9]\d*|0?\.0+|0$　　 //匹配非负浮点数（正浮点数 + 0）</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">^(-([1-9]\d*\.\d*|0\.\d*[1-9]\d*))|0?\.0+|0$　　//匹配非正浮点数（负浮点数 + 0）</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">评注：处理大量数据时有用，具体应用时注意修正</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配特定字符串：</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">^[A-Za-z]+$　　//匹配由26个英文字母组成的字符串</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">^[A-Z]+$　　//匹配由26个英文字母的大写组成的字符串</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">^[a-z]+$　　//匹配由26个英文字母的小写组成的字符串</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">^[A-Za-z0-9]+$　　//匹配由数字和26个英文字母组成的字符串</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">^\w+$　　//匹配由数字、26个英文字母或者下划线组成的字符串</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">评注：最基本也是最常用的一些表达式 </span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">整理出来的一些常用的正则表达式所属分类: JScript&nbsp; (三)</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">Email : /^\w+([-+.]\w+)*@\w+([-.]\\w+)*\.\w+([-.]\w+)*$/</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">isEmail1 : /^\w+([\.\-]\w+)*\@\w+([\.\-]\w+)*\.\w+$/;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">isEmail2 : /^.*@[^_]*$/;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">Phone : /^((\(\d{3}\))|(\d{3}\-))?(\(0\d{2,3}\)|0\d{2,3}-)?[1-9]\d{6,7}$/</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">Mobile : /^((\(\d{3}\))|(\d{3}\-))?13\d{9}$/</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">Url : /^http:\/\/[A-Za-z0-9]+\.[A-Za-z0-9]+[\/=\?%\-&amp;_~`@[\]\&#39;:+!]*([^&lt;&gt;\&quot;\&quot;])*$/</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">IdCard : /^\d{15}(\d{2}[A-Za-z0-9])?$/</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">Currency : /^\d+(\.\d+)?$/</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">Number : /^\d+$/</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">Code : /^[1-9]\d{5}$/</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">QQ : /^[1-9]\d{4,8}$/</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">Integer : /^[-\+]?\d+$/</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">Double : /^[-\+]?\d+(\.\d+)?$/</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">English : /^[A-Za-z]+$/</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">Chinese : /^[\u0391-\uFFE5]+$/</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">UnSafe : /^(([A-Z]*|[a-z]*|\d*|[-_\~!@#\$%\^&amp;\*\.\(\)\[\]\{\}&lt;&gt;\?\\\/\&#39;\&quot;]*)|.{0,5})$|\s/</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">PassWord :^[\\w]{6,12}$</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">ZipCode : ^[\\d]{6}</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">/^(\+\d+ )?(\(\d+\) )?[\d ]+$/; //这个是国际通用的电话号码判断</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">/^(1[0-2]\d|\d{1,2})$/; //这个是年龄的判断</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">/^\d+\.\d{2}$/;&nbsp; //这个是判断输入的是否为货币值</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;&lt;!-- IP地址有效性验证函数--&gt;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;&lt;script language=javascript runat=server&gt;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;&nbsp;&nbsp; ip_ip = &#39;(25[0-5]|2[0-4]\\d|1\\d\\d|\\d\\d|\\d)&#39;;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;&nbsp;&nbsp; ip_ipdot = ip + &#39;\\.&#39;;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;&nbsp;&nbsp; isIPaddress = new RegExp(&#39;^&#39;+ip_ipdot+ip_ipdot+ipdot+ip_ip+&#39;$&#39;);</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&lt;/script&gt;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">应用：计算字符串的长度（一个双字节字符长度计2，ASCII字符计1）</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">String.prototype.len=function(){return this.replace([^\x00-\xff]/g,&quot;aa&quot;).length;}</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">应用：javascript中没有像vbscript那样的trim函数，我们就可以利用这个表达式来实现，如下：</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">String.prototype.trim = function()</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">{</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;&nbsp;&nbsp; return this.replace(/(^\s*)|(\s*$)/g, &quot;&quot;);</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">}</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配空行的正则表达式：\n[\s| ]*\r</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配HTML标记的正则表达式：/&lt;(.*)&gt;.*&lt;\/\1&gt;|&lt;(.*) \/&gt;/ </span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配首尾空格的正则表达式：(^\s*)|(\s*$)</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配Email地址的正则表达式：\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">匹配网址URL的正则表达式：http://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">&nbsp;</span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">^\d+$　　//匹配非负整数（正整数 + 0） </span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">^[0-9]*[1-9][0-9]*$　　//匹配正整数 </span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">^((-\d+)|(0+))$　　//匹配非正整数（负整数 + 0） </span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">^-[0-9]*[1-9][0-9]*$　　//匹配负整数 </span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">^-?\d+$　　　　//匹配整数 </span></p><p><span style="font-family: &#39;courier new&#39;, courier; font-size: 14px;">^\d+(\.\d+)?$　　//匹配非负浮点数（正浮点数 + 0） </span></p><p><br/></p>','整数或者小数：^[0-9]+\.{0,1}[0-9]{0,2}$只能输入数字：&quot;^[0-9]*$&quot;。只能输入n位的数字：&quot;^\d{n}$&quot;。只能输入至少n位的数字：&quot;^\d{n,}$&quo','1405334043','1405334043','49','1','1','0','','0','0','1','0');
INSERT INTO `tp_article` VALUES ('4','每个程序员都应该读的非编程书','','','','','','','<p>五年前有网友在 Stackoverflow&nbsp;发帖提问：『<a href="http://stackoverflow.com/questions/38210/what-non-programming-books-should-programmers-read" target="_blank">程序员应该读哪些非编程方面的书？</a>』。有很多程序员响应，他们在推荐的同时也写下了自己的评语。本文摘编其中 29 本书，下面就按照各书的推荐数排列。另外，本月初我们在伯乐头条也发起了相同的讨论帖《<a href="http://top.jobbole.com/4000/" target="_blank">你最喜欢的非编程书是哪一本？</a>》，已有很多的朋友推荐了他们喜欢的书。</p><p>&nbsp;</p><h2>1.《<a href="http://www.amazon.cn/gp/product/B00590XCO2/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B00590XCO2&linkCode=as2&tag=vastwork-23" target="_blank">银河系漫游指南</a>》by&nbsp;Douglas Adams</h2><p>推荐数：480</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065519_ueXA.jpg"/></p><p>生活，宇宙，所有的一切。</p><p>“看在前，思考在后，然后去实践。但是看总是在最前面。否则，你只能看到你以为的样子。大多数的科学家忘记了这一点。”–<a href="http://www.wonko.com/" target="_blank">Wonko</a>的智慧</p><p>作为开发者以及曾经的技术支持，从这本书（以及整个系列）中我们能学到一件事情：不要恐慌！！！另外，这本书读起来的舒适程度远胜于你自己存在的问题。–&nbsp;&nbsp;<a title="1236 reputation" href="http://stackoverflow.com/users/80813/sirdemon" target="_blank">SirDemon</a></p><p>&nbsp;</p><h2>2.《<a href="http://www.amazon.cn/gp/product/B00BLYQAC6/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B00BLYQAC6&linkCode=as2&tag=vastwork-23" target="_blank">人性的弱点</a>》&nbsp;by Dale Carnegie</h2><p>推荐数：322</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065519_l1C4.jpg"/></p><p>尽管这本书是在1936年首次出版的，书中给出的建议仍然是一如既往的新鲜和适当。不要被它的名字误导。这并不是给未知情的受害者找到自己做人的方式的欺骗性指南，而是关于如何与人相处，如何培养人际关系并充分利用你自己和你的男人（女人）方面很有意义的建议。</p><p>众所周知，技术宅（包括程序员）经常被认为并不是非常的”以人为本（善于交际）“（这是不是一个合理的成见是另一个讨论的话题），那么这本书是一个教你更好的与人打交道方面的无价的资源。</p><p>它温暖，真诚，全面，直白，持续写成。强烈推荐。</p><p>&nbsp;</p><h2>3.《<a href="http://www.amazon.cn/gp/product/B009QVEA8M/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B009QVEA8M&linkCode=as2&tag=vastwork-23" target="_blank">别逗了，费曼先生</a>》</h2><p>推荐数：317</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065519_ybxV.jpg"/></p><p>这本书将启发每一位读者思考，并回归原始。</p><p>绝对惊奇的一本书！体现思考和与众不同的乐趣。他不只是赞美它，作者的生活本就如此并爱着它。这本书如此有趣。（另外，作者是如此有才，以至于本书深刻并让人着迷。）–&nbsp;&nbsp;<a title="6707 reputation" href="http://stackoverflow.com/users/57120/beska" target="_blank">Beska</a></p><p>&nbsp;</p><h2>4.《<a href="http://www.amazon.cn/gp/product/B002EVOBNU/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B002EVOBNU&linkCode=as2&tag=vastwork-23" target="_blank">一九八四</a>》&nbsp;by George Orwell</h2><p>推荐数：312</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065520_8VaE.jpg"/></p><p>需要买来读吗？哼，我总觉得你会错过它的要点。&nbsp;–&nbsp;&nbsp;<a title="1537 reputation" href="http://stackoverflow.com/users/44996/applepieisgood" target="_blank">ApplePieIsGood</a></p><p>&nbsp;</p><h2>5.《<a href="http://www.amazon.cn/gp/product/B0049MPCAS/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B0049MPCAS&linkCode=as2&tag=vastwork-23" target="_blank">哥德尔、艾舍尔、巴赫:集异璧之大成</a>》&nbsp;by Douglas Hofstadter</h2><p>推荐数：275</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065520_uQ7N.jpg"/></p><p>我读到一半，并认为它被高估了。作者总是重复一些概念但这往往会变得烦人。很多时候我都想朝着作者大吼：”我已经懂了一次又一次！“。&nbsp;–&nbsp;&nbsp;<a title="1716 reputation" href="http://stackoverflow.com/users/38893/heeen" target="_blank">heeen</a></p><p>&nbsp;</p><h2>6.《<a href="http://www.amazon.cn/gp/product/B008F4ZHQK/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B008F4ZHQK&linkCode=as2&tag=vastwork-23" target="_blank">设计心理学</a>》&nbsp;by Donald A. Norman</h2><p>推荐数：243</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065520_UOyO.jpg"/></p><p>很棒的书，会让你更欣赏很棒的设计！&nbsp;–&nbsp;&nbsp;<a title="562 reputation" href="http://stackoverflow.com/users/39040/danielb" target="_blank">Danielb</a></p><p>我大概从上个月开始读这本书。真的会让你以不同的眼光（大多是愤怒）来看待事物。&nbsp;–&nbsp;&nbsp;<a title="1776 reputation" href="http://stackoverflow.com/users/984/jammus" target="_blank">jammus</a></p><p>&nbsp;</p><h2>7.《<a href="http://www.amazon.cn/gp/product/B007XPTAIS/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B007XPTAIS&linkCode=as2&tag=vastwork-23" target="_blank">搞定：无压工作的艺术</a>》by David Allen</h2><p>推荐数：230</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065520_kaYL.jpg"/></p><p>我一直想读的一本书。–&nbsp;&nbsp;<a title="3429 reputation" href="http://stackoverflow.com/users/24913/kaz-dragon" target="_blank">Kaz Dragon</a></p><p>我强烈推荐这本。它不会改变你的生活，但是它会帮助你思考解决效率和拖延的问题，而不再是你生活中必须忍受的固有的问题。这种心态的转变让像我这样的懒惰者变得很不一样。&nbsp;–&nbsp;&nbsp;<a title="8383 reputation" href="http://stackoverflow.com/users/81491/brandon-yarbrough" target="_blank">Brandon Yarbrough</a></p><p>&nbsp;</p><h2>8.《<a href="http://www.amazon.cn/gp/product/B0011C2P7W/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B0011C2P7W&linkCode=as2&tag=vastwork-23" target="_blank">人月神话</a>》by Fred Brooks</h2><p>推荐数：216</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065520_nEAs.jpg"/></p><p>这怎么是非编程方面的书呢？&nbsp;–&nbsp;&nbsp;<a title="49068 reputation" href="http://stackoverflow.com/users/14606/musigenesis" target="_blank">MusiGenesis</a></p><p>&nbsp;</p><h2>9.《<a href="http://www.amazon.cn/gp/product/B0011BTJV8/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B0011BTJV8&linkCode=as2&tag=vastwork-23" target="_blank">点石成金：访客至上的网页设计秘笈</a>》by Steve Krug</h2><p>推荐数：200</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065520_yhh7.jpg"/></p><p>web应用方面很有意义的一本书。正如作者所说：”常识并不总是显而易见的“。</p><p>&nbsp;</p><h2>10.《<a href="http://www.amazon.cn/gp/product/0321934113/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=0321934113&linkCode=as2&tag=vastwork-23" target="_blank">人件：生产性项目和团队</a>》by Tom DeMarco and Timothy Lister</h2><p>推荐数：186</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065520_dR2a.jpg"/></p><p>这本经典的书鼓励我们来思考人的重要性，而不是过程。它里面充满了关于团队建设，生产率以及办公环境的实践建议。它是一本必须读的书，不管是项目管理者还是任意的软件开发参与者。</p><p>搞两本，一本自己读，一本给你的主管。</p><p>&nbsp;</p><h2>11.《<a href="http://www.amazon.cn/gp/product/B005O4PUFC/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B005O4PUFC&linkCode=as2&tag=vastwork-23" target="_blank">禅与摩托车维修的艺术</a>》by Robert M. Pirsig</h2><p>推荐数：183</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065520_qETf.jpg"/></p><p>这本书讲了很多东西，但是你可以认为它是呈现”神交“在哲学上的意义。</p><p>来自于<a href="http://stackoverflow.com/users/9119/garth-gilmour" target="_blank">Garth Gilmore</a>的评论：</p><p style="padding-left: 30px;"><span style="color: #888888;">我敢笃定，这本书教会我的有关软件开发方面的东西远比其他任何一本编程书都多。</span></p><p style="padding-left: 30px;"><span style="color: #888888;">这本书的主线是关于我们对于世界上浪漫主义（艺术）和现实主义（科学/理性）的认知是如何来自于，我们是怎样看待我们周围的环境的。这种理解然后被应用于一般性的任务,比如摩托车维修。</span></p><p style="padding-left: 30px;"><span style="color: #888888;">给出几个这个理论如何应用于编程的例子：</span></p><p style="padding-left: 30px;"><span style="color: #888888;">如何处理摩托车的”质量理念“以引导进程的章节,也同样适用于编程区域。</span></p><p style="padding-left: 30px;"><span style="color: #888888;">”进取心的陷阱（欲速则不达）“阻止了进程并导致你损坏机器的章节是无价的。解决方案也同样能在修改遗留代码而不引入新的bug中有效果。</span></p><p style="padding-left: 30px;"><span style="color: #888888;">有一个纯粹描述发动机部分的经典章节是无用的（因为它没有任何地方可以让用户提出异议），但应该被每一个被卷入需求分析的人来阅读。</span></p><p style="padding-left: 30px;"><span style="color: #888888;">总之它是一本好书。</span></p><p>（编注：关于这本书，也可以看看<a href="http://blog.jobbole.com/10309/" target="_blank">阮一峰的读后感</a>。）</p><p>&nbsp;</p><h2>12.《<a href="http://www.amazon.cn/gp/product/B00HMX9AR2/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B00HMX9AR2&linkCode=as2&tag=vastwork-23" target="_blank">安德的游戏</a>》&nbsp;by Orson Scott Card</h2><p>推荐数：183</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065520_E28z.jpg"/></p><p>这本书被高估了，除非你在你还是一个性格阴郁的怪胎少年的时候第一次读它。我知道没有人（包括我自己）在自己年纪比较大的时候读完它会觉得它是一本必读的书。–&nbsp;<a title="10493 reputation" href="http://stackoverflow.com/users/44065/jmucchiello" target="_blank">jmucchiello</a></p><p>&nbsp;</p><h2>13.《&nbsp;<a href="http://www.amazon.cn/gp/product/0060512806/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=0060512806&linkCode=as2&tag=vastwork-23" target="_blank">Cryptonomicon | 编码宝典</a>&nbsp;》 by Neal Stephenson</h2><p>推荐数：158</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065520_TX7S.jpg"/></p><p>这本书讲述的是关于第二次世界大战密码破解的真实故事，今天他的后代致力于计算机的发展（阿兰·图灵在书里单独作为一章来讲解）。是极客必读之书。</p><p>&nbsp;</p><h2>14.《<a href="http://www.amazon.com/dp/096139210X/?tag=job0ae-20" target="_blank">The Visual Display of Quantitative Information</a>》by Edward Tufte</h2><p>推荐数：158</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065520_Snd1.jpg"/></p><p>讨论了如何以图形方式表示不同类型的复杂的数据。</p><p>书中对于PPT的危害简短而又简单的评论也很有优秀。–&nbsp;&nbsp;<a title="4052 reputation" href="http://stackoverflow.com/users/112614/chet" target="_blank">Chet</a></p><p>&nbsp;</p><h2>15.《<a href="http://www.amazon.cn/gp/product/B008H0PQPE/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B008H0PQPE&linkCode=as2&tag=vastwork-23" target="_blank">风格的要素</a>》by William Strunk &amp; E.B. White</h2><p>推荐数：156</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065520_wUMS.jpg"/></p><p>在看过Joshua Bloch（因《Effective Java》而名言四海）对于此书的推荐后我们也在我们的R&amp;D（研究与开发）图书馆引进了一本：</p><p>这本薄薄的小册子宣扬简单性和清晰性的信条,因为它适用于英语散文。如果你谨记在心，它不只会提高你写诗的水平，也会提高你的编码水平。</p><p>在<a href="http://www.oracle.com/technetwork/java/index.html" target="_blank">另一个专访</a>中，Bloch阐述了为什么它对程序员有好处：</p><p style="padding-left: 30px;"><span style="color: #888888;">我认为阅读斯特伦克和怀
 
特（作者）会让你成为一名更优秀的程序员，因为好的编程与好的书写都是关于词句的简单性与简洁性的。如果你不知道你要表达什么，你是写不出好的代码和好的
 散文的。斯特伦克和怀特里很多的警告在编程中也是类似的。比如，斯特伦克和怀特说：“去掉不必要的语句”。Andy Hunt 和Dave 
Thomas（“实效程序员”）也说：“不要重复造轮子”。斯特伦克和怀特说：“要推敲和重写”，马丁·福勒说：“要重构”。还有等等诸如此类的。</span></p><p style="padding-left: 30px;"><span style="color: #888888;">现在，我个人认为《风格的要素》这本书中很多建议有点过时了，因为英语的使用出现了演化（比如，现在以”Hoverever”作为一个句子的开头是完全可以的，或者使用hopefully代替“I hope”）。但是大多数的地方我还是同意作者的，而且很享受阅读此书。</span></p><p style="padding-left: 30px;"><span style="color: #888888;"><a href="http://www.codinghorror.com/blog/archives/001184.html" target="_blank"><span style="color: #888888;">这里</span></a>是阿特伍德对于《风格的要素》不得不说的更多的信息。也许它是比约书亚·布洛克说的更好的 更好的阅读指南。</span></p><p>&nbsp;</p><h2>16.《<a href="http://www.amazon.com/dp/0441013597/?tag=job0ae-20" target="_blank">沙丘魔堡</a>》by Frank Herbert</h2><p>推荐数：152</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065520_SHzs.jpg"/></p><p>《沙丘魔堡》是科幻小说的顶峰。</p><p>&nbsp;</p><h2>17《<a href="http://www.amazon.cn/gp/product/B0011CT3HW/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B0011CT3HW&linkCode=as2&tag=vastwork-23" target="_blank">孙子兵法</a>》</h2><p>这个就不需要介绍了</p><p>&nbsp;</p><h2>18.《<a href="http://www.amazon.cn/gp/product/0241953189/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=0241953189&linkCode=as2&tag=vastwork-23" target="_blank">雪崩</a>》By Neal Stephenson</h2><p>推荐数：120</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065520_ZMcI.jpg"/></p><p>最近我在某人的推荐下阅读了这本书，我非常失望，它都过时了。–&nbsp;<a title="7901 reputation" href="http://stackoverflow.com/users/6716/ian-dickinson" target="_blank">Ian Dickinson</a></p><p>&nbsp;</p><h2>19.《<a href="http://www.amazon.cn/gp/product/B00AYBWRLA/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B00AYBWRLA&linkCode=as2&tag=vastwork-23" target="_blank">爱丽丝漫游奇境记</a>》by&nbsp;Lewis Carroll</h2><p>推荐数：114</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065520_FMkf.jpg"/></p><p>“《爱丽丝梦游仙境》是门外汉最好的编程书”，是因为对门外汉来说，对于任何事物它都是最好的。–&nbsp;&nbsp;<a title="16337 reputation" href="http://stackoverflow.com/users/131930/jeremy-friesner" target="_blank">Jeremy Friesner</a></p><p>&nbsp;</p><h2>20.《<a href="http://www.vavatch.co.uk/books/asimov/" target="_blank">基地系列</a>》by&nbsp;Isaac Asimov’s</h2><p>推荐数：114</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065521_0Xdv.jpg"/></p><p>很棒的图书。我发现这本书里的理论像是通过通过混沌理论来介绍社会学。关于社会发展很好的阐述。简单有趣，就是有点厚。–&nbsp;&nbsp;<a title="6707 reputation" href="http://stackoverflow.com/users/57120/beska" target="_blank">Beska</a></p><p>&nbsp;</p><h2>21.《<a href="http://www.amazon.cn/gp/product/B0069HL656/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B0069HL656&linkCode=as2&tag=vastwork-23" target="_blank">魔戒</a>》</h2><p>推荐数：114</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065521_yq5s.jpg"/></p><p>除了它之一本科幻巨作外，这也是(几乎所有)的现代幻想小说的基础。（而且，对于一群计算机程序员来说更有意义的是，它也是龙与地下城的核心启示之一）</p><p>退几步说,为了能在午餐的时候加入到话题中，每个程序员必读的三本书是指环王,沙丘,银河系漫游指南。（这个有点夸张）</p><p>如果你只是看过电影，那么试着去读下书。</p><p>从科技的角度，书里的不重要的人物能对世界有深刻而积极的影响的基本信息，以及他们周边的组织让大公司的编程看到了希望。</p><p>我需要补充的是团队协作是很重要的，甚至是在团队里有些人有破坏作用，有的人很自私或者不能融入团队，当到了最后的期限或者索隆即将出现的时候，你仍然可以让他们做的很好而扭转战局。–&nbsp;<a title="3323 reputation" href="http://stackoverflow.com/users/26196/anonymous-coward" target="_blank">anonymous coward</a></p><p>&nbsp;</p><h2>22.《<a href="http://www.amazon.cn/gp/product/B00BOELK6E/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B00BOELK6E&linkCode=as2&tag=vastwork-23" target="_blank">平面国</a>》by Abbott</h2><p>推荐数：111</p><p>这本书太旧了，以至于它现在都不出版了。你可以在这里阅读全书：<a href="http://www.geom.uiuc.edu/%7Ebanchoff/Flatland/" target="_blank" rel="nofollow">geom.uiuc.edu/~banchoff/Flatland</a>&nbsp;–&nbsp;<a title="34581 reputation" href="http://stackoverflow.com/users/2635/simucal" target="_blank">Simucal</a></p><p>&nbsp;</p><h2>23.《<a href="http://www.amazon.cn/gp/product/B00116OR88/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B00116OR88&linkCode=as2&tag=vastwork-23" target="_blank">时间简史</a>》by&nbsp;Stephen Hawking</h2><p>推荐数：104</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065521_SAnb.jpg"/></p><p>&nbsp;</p><h2>24.《<a href="http://en.wikipedia.org/wiki/The_Screwtape_Letters" target="_blank">地狱来鸿</a>》by C. S. Lewis</h2><p>推荐数：83</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065521_D9nH.jpg"/></p><p>想象一个恶魔在编写一个关于人的程序…..</p><p>&nbsp;</p><h2>25.《<a href="http://www.amazon.cn/gp/product/B00DUNOVD6/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B00DUNOVD6&linkCode=as2&tag=vastwork-23" target="_blank">神经漫游者</a>》By William Gibson</h2><p>推荐数：74</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065521_GSf5.jpg" height="360" width="217"/></p><p>他创造了网络空间这个词，它延伸的三部曲是我想当一个编码仔的原因。</p><p>具有讽刺意味的是，他写的这些书打击了技术迷，并渗透到社会的今天（和未来）–&nbsp;&nbsp;<a title="6505 reputation" href="http://stackoverflow.com/users/64976/j-steen" target="_blank">J. Steen</a></p><p>&nbsp;</p><h2>26.《<a href="http://www.amazon.cn/gp/product/0099470438/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=0099470438&linkCode=as2&tag=vastwork-23" target="_blank">深夜小狗神秘习题</a>》by Mark Haddon</h2><p>推荐数：73</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065521_EBc8.jpg"/></p><p>它给出了有关你古怪同事的一些看法。</p><p>这本书真的很不错。他帮助我认识了孤独症和阿斯伯格综合症患者（作者为了写书和孤独症患者一起工作了一些时间，从我和一些阿斯伯格综合症患者儿童的相处来看，它非常真实）。–&nbsp;<a title="1327 reputation" href="http://stackoverflow.com/users/46523/mongoose" target="_blank">Mongoose</a></p><p>&nbsp;</p><h2>27.《<a href="http://www.amazon.cn/gp/product/B00FDJWLB4/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B00FDJWLB4&linkCode=as2&tag=vastwork-23" target="_blank">仿生人会梦见电子羊吗</a>》by&nbsp;Philip K. Dick</h2><p>推荐数：66</p><p>作者写的其他东西当然也很棒。</p><p>他的离奇古怪的故事肯定帮助人们有更多的思考。</p><p>对于程序员来说是奇幻的一本书和一部电影。而且，对于PKD的其他书（也不尽然只是书，还有必须的电影，比如《致命报酬》）也很不错。不过显然总记得是一个很棒的电影。–&nbsp;<a title="615 reputation" href="http://stackoverflow.com/users/88218/troy-nichols" target="_blank">Troy Nichols</a></p><p>&nbsp;</p><h2>28.《<a href="http://www.amazon.cn/gp/product/B007Q2XXXG/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B007Q2XXXG&linkCode=as2&tag=vastwork-23" target="_blank">交互设计之路</a>》by Alan Cooper</h2><p>推荐数：66</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065521_ZhXb.jpg"/></p><p>它讲述的用正确的语言来谈论项目–用故事（和角色模型）代替产品特点来谈论我们需要认识到的东西。还有一些在交互设计以及相关活动上的强调，要提供用户需要的而不是要求的。</p><p>&nbsp;</p><h2>29.《<a href="http://www.amazon.cn/gp/product/B00B4NTCT2/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B00B4NTCT2&linkCode=as2&tag=vastwork-23" target="_blank">高效能人士的7个习惯</a>》by Stephen Covey</h2><p>推荐数：61</p><p><img alt="" src="http://static.oschina.net/uploads/img/201407/16065521_jvdV.jpg"/></p><p>如果你没有读过这本，你会错过很多你潜在的能力–最初摘自John Channing的文章。</p><p>编辑：你可以获取它的<a href="http://www.audible.com/pderror" target="_blank">免费有声读物</a>。</p><p>来自<a href="http://stackoverflow.com/users/8217/julie" target="_blank">Julie</a>的评论：</p><p>这本书具有普世价值–不仅仅是对于软件开发者来说。鉴于你做很多事来帮助你处理日常的事务，7个习惯能帮助你保持高效的生活和一个你需要转化为日常细节的普世方法论。这本书是从这方面考虑来处理事情的完美补充。</p><p>原文链接： <a target="_blank" href="http://stackoverflow.com/questions/38210/what-non-programming-books-should-programmers-read">Stackoverflow</a>&nbsp;&nbsp;&nbsp;翻译： <a href="http://blog.jobbole.com"> 伯乐在线 </a> - <a href="http://blog.jobbole.com/author/abell123/">abell123</a><br/>译文链接： <a href="http://blog.jobbole.com/72365/">http://blog.jobbole.com/72365/</a></p><p><br/></p>','五年前有网友在 Stackoverflow&nbsp;发帖提问：『程序员应该读哪些非编程方面的书？』。有很多程序员响应，他们在推荐的同时也写下了自己的评语。本文摘编其中 29 本书，下面就按照各书的推荐数排列。另外，本月初我们在伯乐头条也发','1405471344','1405471344','58','1','1','0','','0','0','1','0');
INSERT INTO `tp_article` VALUES ('5',' MySQL性能优化','','','','','','','<p>今天，数据库的操作越来越成为整个应用的性能瓶颈了，这点对于Web应用尤其明显。关于数据库的性能，这并不只是DBA才需要担心的事，而这更是我 
们程序员需要去关注的事情。当我们去设计数据库表结构，对操作数据库时（尤其是查表时的SQL语句），我们都需要注意数据操作的性能。这里，我们不会讲过
 多的SQL语句的优化，而只是针对MySQL这一Web应用最多的数据库。希望下面的这些优化技巧对你有用。<br/><br/><strong>1. 为查询缓存优化你的查询</strong><br/>大多数的MySQL服务器都开启了查询缓存。这是提高性最有效的方法之一，而且这是被MySQL的数据库引擎处理的。当有很多相同的查询被执行了多次的时候，这些查询结果会被放到一个缓存中，这样，后续的相同的查询就不用操作表而直接访问缓存结果了。<br/><br/>这里最主要的问题是，对于程序员来说，这个事情是很容易被忽略的。因为，我们某些查询语句会让MySQL不使用缓存。请看下面的示例：<code style="" class="prettyprint linenums lang-php prettyprinted"><ol class="linenums"><li><span class="com">//&nbsp;查询缓存不开启</span></li><li><span class="pln"> $r&nbsp;</span><span class="pun">=</span><span class="pln">&nbsp;mysql_query</span><span class="pun">(</span><span class="str">&quot;SELECT&nbsp;username&nbsp;FROM&nbsp;user&nbsp;WHERE&nbsp;signup_date&nbsp;&gt;=&nbsp;CURDATE()&quot;</span><span class="pun">);</span></li><li><span class="pln"> </span><br/></li><li><span class="pln"> </span><span class="com">//&nbsp;开启查询缓存</span></li><li><span class="pln"> $today&nbsp;</span><span class="pun">=</span><span class="pln">&nbsp;date</span><span class="pun">(</span><span class="str">&quot;Y-m-d&quot;</span><span class="pun">);</span></li><li><span class="pln"> $r&nbsp;</span><span class="pun">=</span><span class="pln">&nbsp;mysql_query</span><span class="pun">(</span><span class="str">&quot;SELECT&nbsp;username&nbsp;FROM&nbsp;user&nbsp;WHERE&nbsp;signup_date&nbsp;&gt;=&nbsp;&#39;$today&#39;&quot;</span><span class="pun">);</span></li></ol><p>复制代码</p></code>上
面两条SQL语句的差别就是 CURDATE() ，MySQL的查询缓存对这个函数不起作用。所以，像 NOW() 和 RAND() 
或是其它的诸如此类的SQL函数都不会开启查询缓存，因为这些函数的返回是会不定的易变的。所以，你所需要的就是用一个变量来代替MySQL的函数，从而
 开启缓存。<br/><br/><strong>2. EXPLAIN 你的 SELECT 查询</strong><br/><br/>使用 EXPLAIN 关键字可以让你知道MySQL是如何处理你的SQL语句的。这可以帮你分析你的查询语句或是表结构的性能瓶颈。<br/><br/>EXPLAIN 的查询结果还会告诉你你的索引主键被如何利用的，你的数据表是如何被搜索和排序的……等等，等等。<br/><br/>挑一个你的SELECT语句（推荐挑选那个最复杂的，有多表联接的），把关键字EXPLAIN加到前面。你可以使用phpmyadmin来做这个事。然后，你会看到一张表格。下面的这个示例中，我们忘记加上了group_id索引，并且有表联接：<br/><a href="http://www.thinkphp.cn/Uploads/editor/2013-07-26/51f216f6e467f.jpg" target="_blank"><img src="http://www.thinkphp.cn/Uploads/editor/2013-07-26/51f216f6e467f.jpg"/></a><br/>当我们为 group_id 字段加上索引后：<br/><a href="http://www.thinkphp.cn/Uploads/editor/2013-07-26/51f21715a0838.jpg" target="_blank"><img src="http://www.thinkphp.cn/Uploads/editor/2013-07-26/51f21715a0838.jpg"/></a><br/>我们可以看到，前一个结果显示搜索了 7883 行，而后一个只是搜索了两个表的 9 和 16 行。查看rows列可以让我们找到潜在的性能问题。<br/><br/><strong>3. 当只要一行数据时使用 LIMIT 1</strong><br/><br/>当你查询表的有些时候，你已经知道结果只会有一条结果，但因为你可能需要去fetch游标，或是你也许会去检查返回的记录数。<br/><br/>在这种情况下，加上 LIMIT 1 可以增加性能。这样一样，MySQL数据库引擎会在找到一条数据后停止搜索，而不是继续往后查少下一条符合记录的数据。<br/><br/>下面的示例，只是为了找一下是否有“中国”的用户，很明显，后面的会比前面的更有效率。（请注意，第一条中是Select *，第二条是Select 1）<code style="" class="prettyprint linenums lang-php prettyprinted"><ol class="linenums"><li><span class="com">//&nbsp;没有效率的：</span></li><li><span class="pln"> $r&nbsp;</span><span class="pun">=</span><span class="pln">&nbsp;mysql_query</span><span class="pun">(</span><span class="str">&quot;SELECT&nbsp;*&nbsp;FROM&nbsp;user&nbsp;WHERE&nbsp;country&nbsp;=&nbsp;&#39;China&#39;&quot;</span><span class="pun">);</span></li><li><span class="pln"> </span><span class="kwd">if</span><span class="pln">&nbsp;</span><span class="pun">(</span><span class="pln">mysql_num_rows</span><span class="pun">(</span><span class="pln">$r</span><span class="pun">)</span><span class="pln">&nbsp;</span><span class="pun">&gt;</span><span class="pln">&nbsp;</span><span class="lit">0</span><span class="pun">)</span><span class="pln">&nbsp;</span><span class="pun">{</span></li><li><span class="pln"> &nbsp;&nbsp;&nbsp;&nbsp;</span><span class="com">//&nbsp;...</span></li><li><span class="pln"> </span><span class="pun">}</span></li><li><span class="pln"> </span><br/></li><li><span class="pln"> </span><span class="com">//&nbsp;有效率的：</span></li><li><span class="pln"> $r&nbsp;</span><span class="pun">=</span><span class="pln">&nbsp;mysql_query</span><span class="pun">(</span><span class="str">&quot;SELECT&nbsp;1&nbsp;FROM&nbsp;user&nbsp;WHERE&nbsp;country&nbsp;=&nbsp;&#39;China&#39;&nbsp;LIMIT&nbsp;1&quot;</span><span class="pun">);</span></li><li><span class="pln"> </span><span class="kwd">if</span><span class="pln">&nbsp;</span><span class="pun">(</span><span class="pln">mysql_num_rows</span><span class="pun">(</span><span class="pln">$r</span><span class="pun">)</span><span class="pln">&nbsp;</span><span class="pun">&gt;</span><span class="pln">&nbsp;</span><span class="lit">0</span><span class="pun">)</span><span class="pln">&nbsp;</span><span class="pun">{</span></li><li><span class="pln"> &nbsp;&nbsp;&nbsp;&nbsp;</span><span class="com">//&nbsp;...</span></li><li><span class="pln"> </span><span class="pun">}</span></li></ol><p>复制代码</p></code><strong>4. 为搜索字段建索引</strong><br/><br/>索引并不一定就是给主键或是唯一的字段。如果在你的表中，有某个字段你总要会经常用来做搜索，那么，请为其建立索引吧。<br/><a href="http://www.thinkphp.cn/Uploads/editor/2013-07-26/51f2174d245c3.jpg" target="_blank"><img src="http://www.thinkphp.cn/Uploads/editor/2013-07-26/51f2174d245c3.jpg"/></a><br/>从上图你可以看到那个搜索字串 “last_name LIKE ‘a%’”，一个是建了索引，一个是没有索引，性能差了4倍左右。<br/><br/>另外，你应该也需要知道什么样的搜索是不能使用正常的索引的。例如，当你需要在一篇大的文章中搜索一个词时，如： “WHERE 
post_content LIKE ‘%apple%’”，索引可能是没有意义的。你可能需要使用MySQL全文索引 
或是自己做一个索引（比如说：搜索关键词或是Tag什么的）<br/><br/><strong>5. 在Join表的时候使用相当类型的例，并将其索引</strong><br/><br/>如果你的应用程序有很多 JOIN 查询，你应该确认两个表中Join的字段是被建过索引的。这样，MySQL内部会启动为你优化Join的SQL语句的机制。<br/><br/>而且，这些被用来Join的字段，应该是相同的类型的。例如：如果你要把 DECIMAL 字段和一个 INT 字段Join在一起，MySQL就无法使用它们的索引。对于那些STRING类型，还需要有相同的字符集才行。（两个表的字符集有可能不一样）<code style="" class="prettyprint linenums lang-php prettyprinted"><ol class="linenums"><li><span class="com">//&nbsp;在state中查找company</span></li><li><span class="pln"> $r&nbsp;</span><span class="pun">=</span><span class="pln">&nbsp;mysql_query</span><span class="pun">(</span><span class="str">&quot;SELECT&nbsp;company_name&nbsp;FROM&nbsp;users</span></li><li><span class="str"> &nbsp;&nbsp;&nbsp;&nbsp;LEFT&nbsp;JOIN&nbsp;companies&nbsp;ON&nbsp;(users.state&nbsp;=&nbsp;companies.state)</span></li><li><span class="str"> &nbsp;&nbsp;&nbsp;&nbsp;WHERE&nbsp;users.id&nbsp;=&nbsp;$user_id&quot;</span><span class="pun">);</span></li><li><span class="pln"> </span><br/></li><li><span class="pln"> </span><span class="com">//&nbsp;两个&nbsp;state&nbsp;字段应该是被建过索引的，而且应该是相当的类型，相同的字符集。</span></li></ol><p>复制代码</p></code><strong>6. 千万不要 ORDER BY RAND()</strong><br/><br/>想打乱返回的数据行？随机挑一个数据？真不知道谁发明了这种用法，但很多新手很喜欢这样用。但你确不了解这样做有多么可怕的性能问题。<br/><br/>如果你真的想把返回的数据行打乱了，你有N种方法可以达到这个目的。这样使用只让你的数据库的性能呈指数级的下降。这里的问题是：MySQL会不得 
不去执行RAND()函数（很耗CPU时间），而且这是为了每一行记录去记行，然后再对其排序。就算是你用了Limit 1也无济于事（因为要排序）<br/><br/>下面的示例是随机挑一条记录<code style="" class="prettyprint linenums lang-php prettyprinted"><ol class="linenums"><li><span class="com">//&nbsp;千万不要这样做：</span></li><li><span class="pln"> $r&nbsp;</span><span class="pun">=</span><span class="pln">&nbsp;mysql_query</span><span class="pun">(</span><span class="str">&quot;SELECT&nbsp;username&nbsp;FROM&nbsp;user&nbsp;ORDER&nbsp;BY&nbsp;RAND()&nbsp;LIMIT&nbsp;1&quot;</span><span class="pun">);</span></li><li><span class="pln"> </span><br/></li><li><span class="pln"> </span><span class="com">//&nbsp;这要会更好：</span></li><li><span class="pln"> $r&nbsp;</span><span class="pun">=</span><span class="pln">&nbsp;mysql_query</span><span class="pun">(</span><span class="str">&quot;SELECT&nbsp;count(*)&nbsp;FROM&nbsp;user&quot;</span><span class="pun">);</span></li><li><span class="pln"> $d&nbsp;</span><span class="pun">=</span><span class="pln">&nbsp;mysql_fetch_row</span><span class="pun">(</span><span class="pln">$r</span><span class="pun">);</span></li><li><span class="pln"> $rand&nbsp;</span><span class="pun">=</span><span class="pln">&nbsp;mt_rand</span><span class="pun">(</span><span class="lit">0</span><span class="pun">,</span><span class="pln">$d</span><span class="pun">[</span><span class="lit">0</span><span class="pun">]</span><span class="pln">&nbsp;</span><span class="pun">-</span><span class="pln">&nbsp;</span><span class="lit">1</span><span class="pun">);</span></li><li><span class="pln"> </span><br/></li><li><span class="pln"> $r&nbsp;</span><span class="pun">=</span><span class="pln">&nbsp;mysql_query</span><span class="pun">(</span><span class="str">&quot;SELECT&nbsp;username&nbsp;FROM&nbsp;user&nbsp;LIMIT&nbsp;$rand,&nbsp;1&quot;</span><span class="pun">);</span></li></ol><p>复制代码</p></code><strong>7. 避免 SELECT *</strong><br/><br/>从数据库里读出越多的数据，那么查询就会变得越慢。并且，如果你的数据库服务器和WEB服务器是两台独立的服务器的话，这还会增加网络传输的负载。<br/><br/>所以，你应该养成一个需要什么就取什么的好的习惯。<code style="" class="prettyprint linenums lang-php prettyprinted"><ol class="linenums"><li><span class="com">//&nbsp;不推荐</span></li><li><span class="pln"> $r&nbsp;</span><span class="pun">=</span><span class="pln">&nbsp;mysql_query</span><span class="pun">(</span><span class="str">&quot;SELECT&nbsp;*&nbsp;FROM&nbsp;user&nbsp;WHERE&nbsp;user_id&nbsp;=&nbsp;1&quot;</span><span class="pun">);</span></li><li><span class="pln"> $d&nbsp;</span><span class="pun">=</span><span class="pln">&nbsp;mysql_fetch_assoc</span><span class="pun">(</span><span class="pln">$r</span><span class="pun">);</span></li><li><span class="pln"> echo&nbsp;</span><span class="str">&quot;Welcome&nbsp;{$d[&#39;username&#39;]}&quot;</span><span class="pun">;</span></li><li><span class="pln"> </span><br/></li><li><span class="pln"> </span><span class="com">//&nbsp;推荐</span></li><li><span class="pln"> $r&nbsp;</span><span class="pun">=</span><span class="pln">&nbsp;mysql_query</span><span class="pun">(</span><span class="str">&quot;SELECT&nbsp;username&nbsp;FROM&nbsp;user&nbsp;WHERE&nbsp;user_id&nbsp;=&nbsp;1&quot;</span><span class="pun">);</span></li><li><span class="pln"> $d&nbsp;</span><span class="pun">=</span><span class="pln">&nbsp;mysql_fetch_assoc</span><span class="pun">(</span><span class="pln">$r</span><span class="pun">);</span></li><li><span class="pln"> echo&nbsp;</span><span class="str">&quot;Welcome&nbsp;{$d[&#39;username&#39;]}&quot;</span><span class="pun">;</span></li></ol><p>复制代码</p></code><strong>8. 永远为每张表设置一个ID</strong><br/><br/>我们应该为数据库里的每张表都设置一个ID做为其主键，而且最好的是一个INT型的（推荐使用UNSIGNED），并设置上自动增加的AUTO_INCREMENT标志。<br/><br/>就算是你 users 表有一个主键叫 “email”的字段，你也别让它成为主键。使用 VARCHAR 类型来当主键会使用得性能下降。另外，在你的程序中，你应该使用表的ID来构造你的数据结构。<br/><br/>而且，在MySQL数据引擎下，还有一些操作需要使用主键，在这些情况下，主键的性能和设置变得非常重要，比如，集群，分区……<br/><br/>在这里，只有一个情况是例外，那就是“关联表”的“外键”，也就是说，这个表的主键，通过若干个别的表的主键构成。我们把这个情况叫做“外键”。比 
如：有一个“学生表”有学生的ID，有一个“课程表”有课程ID，那么，“成绩表”就是“关联表”了，其关联了学生表和课程表，在成绩表中，学生ID和课
 程ID叫“外键”其共同组成主键。<br/><br/><strong>9. 使用 ENUM 而不是 VARCHAR</strong><br/><br/>ENUM 类型是非常快和紧凑的。在实际上，其保存的是 TINYINT，但其外表上显示为字符串。这样一来，用这个字段来做一些选项列表变得相当的完美。<br/><br/>如果你有一个字段，比如“性别”，“国家”，“民族”，“状态”或“部门”，你知道这些字段的取值是有限而且固定的，那么，你应该使用 ENUM 而不是 VARCHAR。<br/><br/>MySQL也有一个“建议”（见第十条）告诉你怎么去重新组织你的表结构。当你有一个 VARCHAR 字段时，这个建议会告诉你把其改成 ENUM 类型。使用 PROCEDURE ANALYSE() 你可以得到相关的建议。<br/><br/><strong>10. 从 PROCEDURE ANALYSE() 取得建议</strong><br/><br/>PROCEDURE ANALYSE() 会让 MySQL 帮你去分析你的字段和其实际的数据，并会给你一些有用的建议。只有表中有实际的数据，这些建议才会变得有用，因为要做一些大的决定是需要有数据作为基础的。<br/><br/>例如，如果你创建了一个 INT 字段作为你的主键，然而并没有太多的数据，那么，PROCEDURE ANALYSE()会建议你把这个字段的类型改成
 MEDIUMINT 。或是你使用了一个 VARCHAR 字段，因为数据不多，你可能会得到一个让你把它改成 ENUM 
的建议。这些建议，都是可能因为数据不够多，所以决策做得就不够准。<br/><br/>在phpmyadmin里，你可以在查看表时，点击 “Propose table structure” 来查看这些建议<br/><a href="http://www.thinkphp.cn/Uploads/editor/2013-07-26/51f217becf0a8.jpg" target="_blank"><img src="http://www.thinkphp.cn/Uploads/editor/2013-07-26/51f217becf0a8.jpg"/></a><br/>一定要注意，这些只是建议，只有当你的表里的数据越来越多时，这些建议才会变得准确。一定要记住，你才是最终做决定的人。<br/><br/><strong>11. 尽可能的使用 NOT NULL</strong><br/>除非你有一个很特别的原因去使用 NULL 值，你应该总是让你的字段保持 NOT NULL。这看起来好像有点争议，请往下看。<br/><br/>首先，问问你自己“Empty”和“NULL”有多大的区别（如果是INT，那就是0和NULL）？如果你觉得它们之间没有什么区别，那么你就不要使用NULL。（你知道吗？在 Oracle 里，NULL 和 Empty 的字符串是一样的！)<br/><br/>不要以为 NULL 不需要空间，其需要额外的空间，并且，在你进行比较的时候，你的程序会更复杂。 当然，这里并不是说你就不能使用NULL了，现实情况是很复杂的，依然会有些情况下，你需要使用NULL值。<br/><br/>下面摘自MySQL自己的文档：<code style="" class="prettyprint linenums lang-php prettyprinted"><ol class="linenums"><li><span class="pun">“</span><span class="pln">NULL&nbsp;columns&nbsp;</span><span class="kwd">require</span><span class="pln">&nbsp;additional&nbsp;space&nbsp;</span><span class="kwd">in</span><span class="pln">&nbsp;the&nbsp;row&nbsp;to&nbsp;record&nbsp;whether&nbsp;their&nbsp;values&nbsp;are&nbsp;NULL</span><span class="pun">.</span><span class="pln">&nbsp;</span><span class="typ">For</span><span class="pln">&nbsp;</span><span class="typ">MyISAM</span><span class="pln">&nbsp;tables</span><span class="pun">,</span><span class="pln">&nbsp;each&nbsp;NULL&nbsp;column&nbsp;takes&nbsp;one&nbsp;bit&nbsp;extra</span><span class="pun">,</span><span class="pln">&nbsp;rounded&nbsp;up&nbsp;to&nbsp;the&nbsp;nearest&nbsp;</span><span class="kwd">byte</span><span class="pun">.”</span></li></ol><p>复制代码</p></code><strong>12. Prepared Statements</strong><br/><br/>Prepared Statements很像存储过程，是一种运行在后台的SQL语句集合，我们可以从使用 prepared statements 获得很多好处，无论是性能问题还是安全问题。<br/><br/>Prepared Statements 
可以检查一些你绑定好的变量，这样可以保护你的程序不会受到“SQL注入式”攻击。当然，你也可以手动地检查你的这些变量，然而，手动的检查容易出问题，
 而且很经常会被程序员忘了。当我们使用一些framework或是ORM的时候，这样的问题会好一些。<br/><br/>在性能方面，当一个相同的查询被使用多次的时候，这会为你带来可观的性能优势。你可以给这些Prepared Statements定义一些参数，而MySQL只会解析一次。<br/><br/>虽然最新版本的MySQL在传输Prepared Statements是使用二进制形势，所以这会使得网络传输非常有效率。<br/><br/>当然，也有一些情况下，我们需要避免使用Prepared Statements，因为其不支持查询缓存。但据说版本5.1后支持了。<br/><br/>在PHP中要使用prepared statements，你可以查看其使用手册：mysqli 扩展 或是使用数据库抽象层，如： PDO.<code style="" class="prettyprint linenums lang-php prettyprinted"><ol class="linenums"><li><span class="com">//&nbsp;创建&nbsp;prepared&nbsp;statement</span></li><li><span class="pln"> </span><span class="kwd">if</span><span class="pln">&nbsp;</span><span class="pun">(</span><span class="pln">$stmt&nbsp;</span><span class="pun">=</span><span class="pln">&nbsp;$mysqli</span><span class="pun">-&gt;</span><span class="pln">prepare</span><span class="pun">(</span><span class="str">&quot;SELECT&nbsp;username&nbsp;FROM&nbsp;user&nbsp;WHERE&nbsp;state=?&quot;</span><span class="pun">))</span><span class="pln">&nbsp;</span><span class="pun">{</span></li><li><span class="pln"> </span><br/></li><li><span class="pln"> &nbsp;&nbsp;&nbsp;&nbsp;</span><span class="com">//&nbsp;绑定参数</span></li><li><span class="pln"> &nbsp;&nbsp;&nbsp;&nbsp;$stmt</span><span class="pun">-&gt;</span><span class="pln">bind_param</span><span class="pun">(</span><span class="str">&quot;s&quot;</span><span class="pun">,</span><span class="pln">&nbsp;$state</span><span class="pun">);</span></li><li><span class="pln"> </span><br/></li><li><span class="pln"> &nbsp;&nbsp;&nbsp;&nbsp;</span><span class="com">//&nbsp;执行</span></li><li><span class="pln"> &nbsp;&nbsp;&nbsp;&nbsp;$stmt</span><span class="pun">-&gt;</span><span class="pln">execute</span><span class="pun">();</span></li><li><span class="pln"> </span><br/></li><li><span class="pln"> &nbsp;&nbsp;&nbsp;&nbsp;</span><span class="com">//&nbsp;绑定结果</span></li><li><span class="pln"> &nbsp;&nbsp;&nbsp;&nbsp;$stmt</span><span class="pun">-&gt;</span><span class="pln">bind_result</span><span class="pun">(</span><span class="pln">$username</span><span class="pun">);</span></li><li><span class="pln"> </span><br/></li><li><span class="pln"> &nbsp;&nbsp;&nbsp;&nbsp;</span><span class="com">//&nbsp;移动游标</span></li><li><span class="pln"> &nbsp;&nbsp;&nbsp;&nbsp;$stmt</span><span class="pun">-&gt;</span><span class="pln">fetch</span><span class="pun">();</span></li><li><span class="pln"> </span><br/></li><li><span class="pln"> &nbsp;&nbsp;&nbsp;&nbsp;printf</span><span class="pun">(</span><span class="str">&quot;%s&nbsp;is&nbsp;from&nbsp;%s\n&quot;</span><span class="pun">,</span><span class="pln">&nbsp;$username</span><span class="pun">,</span><span class="pln">&nbsp;$state</span><span class="pun">);</span></li><li><span class="pln"> </span><br/></li><li><span class="pln"> &nbsp;&nbsp;&nbsp;&nbsp;$stmt</span><span class="pun">-&gt;</span><span class="pln">close</span><span class="pun">();</span></li><li><span class="pln"> </span><span class="pun">}</span></li></ol><p>复制代码</p></code><strong>13. 无缓冲的查询</strong><br/><br/>正常的情况下，当你在当你在你的脚本中执行一个SQL语句的时候，你的程序会停在那里直到没这个SQL语句返回，然后你的程序再往下继续执行。你可以使用无缓冲查询来改变这个行为。<br/><br/>关于这个事情，在PHP的文档中有一个非常不错的说明： mysql_unbuffered_query() 函数：<code style="" class="prettyprint linenums lang-php prettyprinted"><ol class="linenums"><li><span class="pun">“</span><span class="pln">mysql_unbuffered_query</span><span class="pun">()</span><span class="pln">&nbsp;sends&nbsp;the&nbsp;SQL&nbsp;query&nbsp;query&nbsp;to&nbsp;</span><span class="typ">MySQL</span><span class="pln">&nbsp;without&nbsp;automatically&nbsp;fetching&nbsp;</span><span class="kwd">and</span><span class="pln">&nbsp;buffering&nbsp;the&nbsp;result&nbsp;rows&nbsp;</span><span class="kwd">as</span><span class="pln">&nbsp;mysql_query</span><span class="pun">()</span><span class="pln">&nbsp;does</span><span class="pun">.</span><span class="pln">&nbsp;</span><span class="typ">This</span><span class="pln">&nbsp;saves&nbsp;a&nbsp;considerable&nbsp;amount&nbsp;of&nbsp;memory&nbsp;</span><span class="kwd">with</span><span class="pln">&nbsp;SQL&nbsp;queries&nbsp;that&nbsp;produce&nbsp;large&nbsp;result&nbsp;sets</span><span class="pun">,</span><span class="pln">&nbsp;</span><span class="kwd">and</span><span class="pln">&nbsp;you&nbsp;can&nbsp;start&nbsp;working&nbsp;on&nbsp;the&nbsp;result&nbsp;</span><span class="kwd">set</span><span class="pln">&nbsp;immediately&nbsp;after&nbsp;the&nbsp;first&nbsp;row&nbsp;has&nbsp;been&nbsp;retrieved&nbsp;</span><span class="kwd">as</span><span class="pln">&nbsp;you&nbsp;don</span><span class="pun">’</span><span class="pln">t&nbsp;have&nbsp;to&nbsp;wait&nbsp;</span><span class="kwd">until</span><span class="pln">&nbsp;the&nbsp;complete&nbsp;SQL&nbsp;query&nbsp;has&nbsp;been&nbsp;performed</span><span class="pun">.”</span></li></ol><p>复制代码</p></code>上
面那句话翻译过来是说，mysql_unbuffered_query() 
发送一个SQL语句到MySQL而并不像mysql_query()一样去自动fethch和缓存结果。这会相当节约很多可观的内存，尤其是那些会产生大
 量结果的查询语句，并且，你不需要等到所有的结果都返回，只需要第一行数据返回的时候，你就可以开始马上开始工作于查询结果了。<br/><br/>然而，这会有一些限制。因为你要么把所有行都读走，或是你要在进行下一次的查询前调用 mysql_free_result() 清除结果。而且， 
mysql_num_rows() 或 mysql_data_seek() 将无法使用。所以，是否使用无缓冲的查询你需要仔细考虑。<br/><br/><strong>14. 把IP地址存成 UNSIGNED INT</strong><br/><br/>很多程序员都会创建一个 VARCHAR(15) 
字段来存放字符串形式的IP而不是整形的IP。如果你用整形来存放，只需要4个字节，并且你可以有定长的字段。而且，这会为你带来查询上的优势，尤其是当
 你需要使用这样的WHERE条件：IP between ip1 and ip2。<br/><br/>我们必需要使用UNSIGNED INT，因为 IP地址会使用整个32位的无符号整形。<br/><br/>而你的查询，你可以使用 INET_ATON() 来把一个字符串IP转成一个整形，并使用 INET_NTOA() 把一个整形转成一个字符串IP。在PHP中，也有这样的函数 ip2long() 和 long2ip()。<code style="" class="prettyprint linenums lang-php prettyprinted"><ol class="linenums"><li><span class="pln">$r&nbsp;</span><span class="pun">=</span><span class="pln">&nbsp;</span><span class="str">&quot;UPDATE&nbsp;users&nbsp;SET&nbsp;ip&nbsp;=&nbsp;INET_ATON(&#39;{$_SERVER[&#39;REMOTE_ADDR&#39;]}&#39;)&nbsp;WHERE&nbsp;user_id&nbsp;=&nbsp;$user_id&quot;</span><span class="pun">;</span></li></ol><p>复制代码</p></code><strong>15. 固定长度的表会更快</strong><br/><br/>如果表中的所有字段都是“固定长度”的，整个表会被认为是 “static” 或 “fixed-length”。 例如，表中没有如下类型的字段： 
VARCHAR，TEXT，BLOB。只要你包括了其中一个这些字段，那么这个表就不是“固定长度静态表”了，这样，MySQL 
引擎会用另一种方法来处理。<br/><br/>固定长度的表会提高性能，因为MySQL搜寻得会更快一些，因为这些固定的长度是很容易计算下一个数据的偏移量的，所以读取的自然也会很快。而如果字段不是定长的，那么，每一次要找下一条的话，需要程序找到主键。<br/><br/>并且，固定长度的表也更容易被缓存和重建。不过，唯一的副作用是，固定长度的字段会浪费一些空间，因为定长的字段无论你用不用，他都是要分配那么多的空间。<br/><br/>使用“垂直分割”技术（见下一条），你可以分割你的表成为两个一个是定长的，一个则是不定长的。<br/><br/><strong>16. 垂直分割</strong><br/>“垂直分割”是一种把数据库中的表按列变成几张表的方法，这样可以降低表的复杂度和字段的数目，从而达到优化的目的。（以前，在银行做过项目，见过一张表有100多个字段，很恐怖）<br/><br/>示例一：在Users表中有一个字段是家庭地址，这个字段是可选字段，相比起，而且你在数据库操作的时候除了个 
人信息外，你并不需要经常读取或是改写这个字段。那么，为什么不把他放到另外一张表中呢？ 
这样会让你的表有更好的性能，大家想想是不是，大量的时候，我对于用户表来说，只有用户ID，用户名，口令，用户角色等会被经常使用。小一点的表总是会有
 好的性能。<br/><br/>示例二： 你有一个叫 “last_login” 
的字段，它会在每次用户登录时被更新。但是，每次更新时会导致该表的查询缓存被清空。所以，你可以把这个字段放到另一个表中，这样就不会影响你对用户
ID，用户名，用户角色的不停地读取了，因为查询缓存会帮你增加很多性能。<br/><br/>另外，你需要注意的是，这些被分出去的字段所形成的表，你不会经常性地去Join他们，不然的话，这样的性能会比不分割时还要差，而且，会是极数级的下降。<br/><br/><strong>17. 拆分大的 DELETE 或 INSERT 语句</strong><br/>如果你需要在一个在线的网站上去执行一个大的 DELETE 或 INSERT 查询，你需要非常小心，要避免你的操作让你的整个网站停止相应。因为这两个操作是会锁表的，表一锁住了，别的操作都进不来了。<br/><br/>Apache 会有很多的子进程或线程。所以，其工作起来相当有效率，而我们的服务器也不希望有太多的子进程，线程和数据库链接，这是极大的占服务器资源的事情，尤其是内存。<br/><br/>如果你把你的表锁上一段时间，比如30秒钟，那么对于一个有很高访问量的站点来说，这30秒所积累的访问进程/线程，数据库链接，打开的文件数，可能不仅仅会让你泊WEB服务Crash，还可能会让你的整台服务器马上掛了。<br/><br/>所以，如果你有一个大的处理，你定你一定把其拆分，使用 LIMIT 条件是一个好的方法。下面是一个示例：<code style="" class="prettyprint linenums lang-php prettyprinted"><ol class="linenums"><li><span class="kwd">while</span><span class="pln">&nbsp;</span><span class="pun">(</span><span class="lit">1</span><span class="pun">)</span><span class="pln">&nbsp;</span><span class="pun">{</span></li><li><span class="pln"> &nbsp;&nbsp;&nbsp;&nbsp;</span><span class="com">//每次只做1000条</span></li><li><span class="pln"> &nbsp;&nbsp;&nbsp;&nbsp;mysql_query</span><span class="pun">(</span><span class="str">&quot;DELETE&nbsp;FROM&nbsp;logs&nbsp;WHERE&nbsp;log_date&nbsp;&lt;=&nbsp;&#39;2009-11-01&#39;&nbsp;LIMIT&nbsp;1000&quot;</span><span class="pun">);</span></li><li><span class="pln"> &nbsp;&nbsp;&nbsp;&nbsp;</span><span class="kwd">if</span><span class="pln">&nbsp;</span><span class="pun">(</span><span class="pln">mysql_affected_rows</span><span class="pun">()</span><span class="pln">&nbsp;</span><span class="pun">==</span><span class="pln">&nbsp;</span><span class="lit">0</span><span class="pun">)</span><span class="pln">&nbsp;</span><span class="pun">{</span></li><li><span class="pln"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="com">//&nbsp;没得可删了，退出！</span></li><li><span class="pln"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="kwd">break</span><span class="pun">;</span></li><li><span class="pln"> &nbsp;&nbsp;&nbsp;&nbsp;</span><span class="pun">}</span></li><li><span class="pln"> &nbsp;&nbsp;&nbsp;&nbsp;</span><span class="com">//&nbsp;每次都要休息一会儿</span></li><li><span class="pln"> &nbsp;&nbsp;&nbsp;&nbsp;usleep</span><span class="pun">(</span><span class="lit">50000</span><span class="pun">);</span></li><li><span class="pln"> </span><span class="pun">}</span></li></ol><p>复制代码</p></code><strong>18. 越小的列会越快</strong><br/><br/>对于大多数的数据库引擎来说，硬盘操作可能是最重大的瓶颈。所以，把你的数据变得紧凑会对这种情况非常有帮助，因为这减少了对硬盘的访问。<br/><br/>参看 MySQL 的文档 Storage Requirements 查看所有的数据类型。<br/><br/>如果一个表只会有几列罢了（比如说字典表，配置表），那么，我们就没有理由使用 INT 来做主键，使用 MEDIUMINT, SMALLINT 或是更小的 TINYINT 会更经济一些。如果你不需要记录时间，使用 DATE 要比 DATETIME 好得多。<br/><br/>当然，你也需要留够足够的扩展空间，不然，你日后来干这个事，你会死的很难看，参看Slashdot的例子（2009年11月06日），一个简单的ALTER TABLE语句花了3个多小时，因为里面有一千六百万条数据。<br/><br/><strong>19. 选择正确的存储引擎</strong><br/><br/>在 MySQL 中有两个存储引擎 MyISAM 和 InnoDB，每个引擎都有利有弊。酷壳以前文章《MySQL: InnoDB 还是 MyISAM?》讨论和这个事情。<br/><br/>MyISAM 
适合于一些需要大量查询的应用，但其对于有大量写操作并不是很好。甚至你只是需要update一个字段，整个表都会被锁起来，而别的进程，就算是读进程都
 无法操作直到读操作完成。另外，MyISAM 对于 SELECT COUNT(*) 这类的计算是超快无比的。<br/><br/>InnoDB 的趋势会是一个非常复杂的存储引擎，对于一些小的应用，它会比 MyISAM 还慢。他是它支持“行锁” ，于是在写操作比较多的时候，会更优秀。并且，他还支持更多的高级应用，比如：事务。<br/><br/>下面是MySQL的手册<br/>target=”_blank”MyISAM Storage Engine<br/>InnoDB Storage Engine<br/><strong>20. 使用一个对象关系映射器（Object Relational Mapper）</strong><br/><br/>使用 ORM (Object Relational Mapper)，你能够获得可靠的性能增涨。一个ORM可以做的所有事情，也能被手动的编写出来。但是，这需要一个高级专家。<br/><br/>ORM 的最重要的是“Lazy Loading”，也就是说，只有在需要的去取值的时候才会去真正的去做。但你也需要小心这种机制的副作用，因为这很有可能会因为要去创建很多很多小的查询反而会降低性能。<br/><br/>ORM 还可以把你的SQL语句打包成一个事务，这会比单独执行他们快得多得多。<br/><br/>目前，个人最喜欢的PHP的ORM是：Doctrine。<br/><br/><strong>21. 小心“永久链接”</strong><br/><br/>“永久链接”的目的是用来减少重新创建MySQL链接的次数。当一个链接被创建了，它会永远处在连接的状态，就算是数据库操作已经结束了。而且，自 
从我们的Apache开始重用它的子进程后——也就是说，下一次的HTTP请求会重用Apache的子进程，并重用相同的 MySQL 链接。<br/>PHP手册：mysql_pconnect() <br/><br/>在理论上来说，这听起来非常的不错。但是从个人经验（也是大多数人的）上来说，这个功能制造出来的麻烦事更多。因为，你只有有限的链接数，内存问题，文件句柄数，等等。<br/><br/>而且，Apache 运行在极端并行的环境中，会创建很多很多的了进程。这就是为什么这种“永久链接”的机制工作地不好的原因。在你决定要使用“永久链接”之前，你需要好好地考虑一下你的整个系统的架构。<br/>转载自：酷壳网</p>','今天，数据库的操作越来越成为整个应用的性能瓶颈了，这点对于Web应用尤其明显。关于数据库的性能，这并不只是DBA才需要担心的事，而这更是我 
们程序员需要去关注的事情。当我们去设计数据库表结构，对操作数据库时（尤其是查表时的SQL语句），','1405490470','1405490470','95','1','1','0','','0','0','1','0');
INSERT INTO `tp_article` VALUES ('6','jqueyr tabs插件','','','','','','','','','1405566037','1405566037','33','1','1','0','','0','0','1','0');
INSERT INTO `tp_article` VALUES ('7','php采集淘宝商品','','','','','','','<h2>
    
			<a id="cb_post_title_url" href="http://www.cnblogs.com/lywy510/p/3613528.html">PHP采集淘宝商品</a>
		
</h2>
<p>
    
		
</p>
<p>
    项目需求:
</p>
<p>
    　　1.通过PHP程序更新所采集淘宝商品的价格以及是否停售
</p>
<p>
    数据表:
</p>
<p>
    　　
</p>
<p>
    <span class="cnblogs_code_copy"><a title="复制代码"><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码"/></a></span>
</p>
<pre>CREATE TABLE `goods` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`type`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT &#39;&#39; ,
`keyid`  varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT &#39;&#39; ,
`shop_id`  int(11) NULL DEFAULT 0 ,
`cid`  smallint(6) NULL DEFAULT 0 ,
`img_id`  int(11) NULL DEFAULT 0 ,
`imgs`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT &#39;&#39; ,
`url`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT &#39;&#39; ,
`taoke_url`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT &#39;&#39; ,
`price`  decimal(10,2) NULL DEFAULT 0.00 ,
`sellerid`  int(11) UNSIGNED NULL DEFAULT NULL ,
`is_off_sale`  tinyint(1) UNSIGNED NULL DEFAULT 0 ,
`delist_time`  int(11) NULL DEFAULT 0 ,
`create_time`  int(11) NULL DEFAULT 0 ,
`ctime`  int(11) NULL DEFAULT NULL ,
`cache_data`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`create_day`  int(11) NULL DEFAULT 0 ,
`commission`  decimal(10,2) NULL DEFAULT 0.00 ,
`comment_collect_time`  int(11) NULL DEFAULT 0 ,
`color`  smallint(6) NULL DEFAULT 0 ,
`content`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`taobao_desc_url`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT &#39;\&#39;\&#39;&#39; COMMENT &#39;淘宝商品详细介绍地址&#39; ,PRIMARY KEY (`id`),UNIQUE INDEX `keyid` (`keyid`) USING BTREE ,INDEX `shop_id` (`shop_id`) USING BTREE ,INDEX `delist_time` (`delist_time`) USING BTREE ,INDEX `cid` (`cid`) USING BTREE ,INDEX `create_day` (`create_day`) USING BTREE 
)
ENGINE=InnoDBDEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=40614ROW_FORMAT=COMPACT
;</pre>
<p>
    <span class="cnblogs_code_copy"><a title="复制代码"><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码"/></a></span>
</p>
<p>
    PHP文件:
</p>
<p>
    <span class="cnblogs_code_copy"><a title="复制代码"><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码"/></a></span>
</p>
<pre>&lt;?php$con=mysql_connect(&#39;localhost&#39;,&#39;root&#39;,&#39;&#39;); 
mysql_select_db(&quot;fanwe&quot;, $con);$start_time=microtime(1);$sql=&quot;SELECT id,price,url FROM s_goods WHERE url!=&#39;&#39; AND keyid like &#39;taobao%&#39; AND is_off_sale=0 ORDER BY id LIMIT 10&quot;;//更新前10个$rs=mysql_query($sql);echo &#39;COUNT:&#39;.mysql_num_rows($rs).&quot;\n&quot;;$error=array();$i=0;$h=fopen(&#39;d:/mydomain/updateprice.log&#39;,&#39;a+&#39;);while ($r=mysql_fetch_array($rs)){    $s=microtime(1);    echo $i++.&#39;:&#39;.$r[&#39;id&#39;].&quot;\t&quot;;    $price=getPrice($r[&#39;url&#39;]);    $t=microtime(1)-$s;    echo (ceil($t*1000)/1000).&quot;\t&quot;;    if($price===false) echo &#39;FALSE&#39;;    elseif(bccomp($price,$r[&#39;price&#39;])==0) echo &#39;EQUAL&#39;;    else{        echo &quot;UPDATE\t&quot;.$r[&#39;price&#39;].&quot;\t&quot;.$price;        mysql_query(&quot;UPDATE s_goods SET price=&quot;.$price.&quot; WHERE id=&quot;.$r[&#39;id&#39;]);
        fputcsv($h,array(date(&#39;Y-m-d H:i:s&#39;),$r[&#39;id&#39;],$r[&#39;price&#39;],$price));
    }    echo &quot;\n&quot;;
}fclose($h);echo &#39;COUNT:&#39;.mysql_num_rows($rs).&quot;\tTIME:&quot;.ceil(microtime(1)-$start_time);function getPrice($url,$time=1){    $des_url=&#39;&#39;;    $ch = curl_init();
    curl_setopt($ch, CURLOPT_USERAGENT,&#39;Mozilla/5.0 (Windows NT 6.2; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0&#39;);
    curl_setopt($ch, CURLOPT_REFERER,&#39;http://www.tmall.com/&#39;);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION,1);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);//设置输出方式, 0为自动输出返回的内容, 1为返回输出的内容,但不自动输出.
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 30); //timeout on connect
    curl_setopt($ch, CURLOPT_TIMEOUT, 30); //timeout on response
    curl_setopt($ch, CURLOPT_HEADER, 1);//是否输出头信息，0为不输出，非零则输出
    curl_setopt($ch, CURLOPT_MAXREDIRS, 10 );
    curl_setopt($ch, CURLOPT_URL, $url);    $content = curl_exec($ch);
    curl_close($ch);    if(preg_match(&quot;/&#39;reservePrice&#39;\s*:\s*&#39;([\d\.]+?)&#39;,/&quot;,$content,$price)){        $price = (float)$price[1];
    }elseif(preg_match(&#39;/price:([\d\.]+?),/&#39;,$content,$price)){        $price = (float)$price[1];
    }    if(!$price&amp;&amp;preg_match(&#39;/tmall/&#39;,$url)){//天猫促销价 add LiuYang 2014-02-24 15:10
        preg_match(&#39;/id=(\d+)+/&#39;,$url,$temp);        $url2=&quot;http://mdskip.taobao.com/core/initItemDetail.htm?itemId=&quot;.$temp[1];        $ch = curl_init();
        curl_setopt( $ch, CURLOPT_USERAGENT, &quot;Mozilla/5.0 (Windows; U; Windows NT 5.1; rv:1.7.3) Gecko/20041001 Firefox/0.10.1&quot; );
        curl_setopt( $ch, CURLOPT_URL, $url2 );
        curl_setopt( $ch, CURLOPT_FOLLOWLOCATION, true );
        curl_setopt( $ch, CURLOPT_ENCODING, &quot;&quot; );
        curl_setopt( $ch, CURLOPT_RETURNTRANSFER, true );
        curl_setopt( $ch, CURLOPT_REFERER, &#39;http://www.tmall.com&#39; );
        curl_setopt( $ch, CURLOPT_AUTOREFERER, true );
        curl_setopt( $ch, CURLOPT_SSL_VERIFYPEER, false );   
        curl_setopt( $ch, CURLOPT_CONNECTTIMEOUT, 10 );
        curl_setopt( $ch, CURLOPT_TIMEOUT, 10 );
        curl_setopt( $ch, CURLOPT_MAXREDIRS, 10 );        $price_content = curl_exec( $ch );        $response = curl_getinfo( $ch );
        curl_close ( $ch );        $price_content=json_decode(iconv(&#39;gbk&#39;,&#39;utf-8&#39;,preg_replace(&#39;/(\d{10,}):/&#39;,&#39;&quot;${1}&quot;:&#39;,$price_content)),true);        $priceinfo=$price_content[&#39;defaultModel&#39;][&#39;itemPriceResultDO&#39;][&#39;priceInfo&#39;];        $price=array();        foreach ($priceinfo as $v){            $price[]=$v[&#39;price&#39;];            if(is_array($v[&#39;promotionList&#39;])){                foreach ($v[&#39;promotionList&#39;] as $v2){                    $price[]=$v2[&#39;extraPromPrice&#39;]?$v2[&#39;extraPromPrice&#39;]:$v2[&#39;price&#39;];
                }
            }            if(is_array($v[&#39;suggestivePromotionList&#39;])){                foreach ($v[&#39;suggestivePromotionList&#39;] as $v2){                    $price[]=$v2[&#39;extraPromPrice&#39;]?$v2[&#39;extraPromPrice&#39;]:$v2[&#39;price&#39;];
                }
            }
        }        $price=count($price)&gt;0?min($price):false;
    }    if($price) return $price;    elseif($time==1) return getPrice($url,2);    else return false;
}?&gt;</pre>
<p>
    <span class="cnblogs_code_copy"><a title="复制代码"><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码"/></a></span>
</p>
<p>
    &nbsp;
</p>
<p>
    执行方式如果采用apache或nginx等服务器,会因为各个服务器的最大响应时间而受影响.如果只更新10个那可能会完成,如果是上百个肯定是不能完全更新的.
</p>
<p>
    可以采用PHP命令的等式来执行.
</p>
<p>
    <span class="cnblogs_code_copy"><a title="复制代码"><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码"/></a></span>
</p>
<pre>D:\mydomain&gt;php updateprice.php
COUNT:100:36599 0.232   EQUAL1:36600 1.091   EQUAL2:36601 1.039   EQUAL3:36603 1.08    EQUAL4:36604 0.984   EQUAL5:36605 0.972   EQUAL6:36610 1.019   EQUAL7:36611 0.971   EQUAL8:36612 1.048   EQUAL9:36613 1.149   EQUAL
COUNT:10        TIME:10</pre>
<p>
    <span class="cnblogs_code_copy"><a title="复制代码"><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码"/></a></span>
</p>
<p>
    如此既清晰又明了,而且会一直执行到程序完成,不会担心服务器没有响应.
</p>
<p>
    上面是在windows下面执行,如果输入php提示:
</p>
<p>
    <span style="background-color: #99ccff;">&#39;php&#39; 不是内部或外部命令，也不是可运行的程序</span><br/><span style="background-color: #99ccff;">或批处理文件。</span>
</p>
<p>
    就必须把php.exe所在的地址补全
</p>
<p>
    D:\mydomain&gt;D:\AppServ\php5\php updatePrice.php
</p>
<p>
    或者把php.exe所在的地址加入全局变量
</p>
<p>
    此方法在Linux下同样有用只用修改对应的地址即可,在linux中php命令是可以直接用的.
</p>
<p>
    [root@liu ~]# php updatePrice.php
</p>
<p>
    &nbsp;
</p>
<p>
    此方法有一个缺点,就是执行效率问题.一个商品采集平均需要0.8秒.那10000个商品采集完需要2个半小时.
</p>
<p>
    <br/>
</p>','
    
			PHP采集淘宝商品
		


    
		


    项目需求:


    　　1.通过PHP程序更新所采集淘宝商品的价格以及是否停售


    数据表:


    　　
','1406189245','1406189245','95','1','1','0','','0','0','1','0');
INSERT INTO `tp_article` VALUES ('8','Linux下利用Shell使PHP并发采集淘宝产品','','','','','','','<h2>
			<a id="cb_post_title_url" href="http://www.cnblogs.com/lywy510/p/3613522.html">Linux下利用Shell使PHP并发采集淘宝产品</a>
		</h2><p>
		</p><p>上次项目中用到<a title="通过PHP程序更新所采集淘宝商品的价格以及是否停售" href="http://www.cnblogs.com/lywy510/p/3613528.html" target="_blank">&lt;&lt;PHP采集淘宝商品&gt;&gt;</a></p><p>此方法有一个缺点,就是执行效率问题.一个商品采集平均需要0.8秒.那10000个商品采集完需要2个半小时.</p><p>首先想到的解决办法是并发.</p><p>但是PHP不支持并发(这里是指通过PHP命令执行PHP文件,如果通过apache或nginx等做服务器是可以并发的,是并发访问,不能在程序中实现并发).</p><p>通过Shell把对php命令推到后台执行,以达到并发的效果.</p><p>整体思路:</p><p>　　1.在Shell中连接数据库,取出需要更新的产品</p><p>　　2.Shell中对数据进行循环,把商品id,price,url传递给PHP执行,将执行过程推到后台</p><p>　　3.每循环20条使程序暂停5秒,达到控制并发数的目的</p><p>　　4.php得到id,price,url参数后,通过URL进行采集,并返回现价</p><p>　　5.将现价和原数据库中的价格进行比较,如果有变化或下架则更新.</p><p>　　6.将执行结果写入日志文件.</p><p>Shell</p><p><span class="cnblogs_code_copy"><a title="复制代码"><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码"/></a></span></p><pre>#!/bin/<span style="color: #0000ff;">sh</span><span style="color: #000000;">#updateprice.</span><span style="color: #0000ff;">sh</span><span style="color: #000000;">j</span>=<span style="color: #800080;">0</span><span style="color: #000000;">currcyline</span>=<span style="color: #800080;">0</span><span style="color: #000000;">;
#查询数据库</span><span style="color: #0000ff;">for</span> i <span style="color: #0000ff;">in</span> `/usr/local/bin/mysql -uroot -pshop123 shop -e<span style="color: #800000;">&quot;</span><span style="color: #800000;">SELECT id,price,url FROM s_goods WHERE url!=&#39;&#39; AND keyid like &#39;taobao%&#39; AND is_off_sale=0 ORDER BY id DESC &nbsp;</span><span style="color: #800000;">&quot;</span><span style="color: #000000;">` 
</span><span style="color: #0000ff;">do</span>
        <span style="color: #0000ff;">if</span> [ $j -gt <span style="color: #800080;">2</span> ]; <span style="color: #0000ff;">then</span><span style="color: #000000;">
 &nbsp; &nbsp; &nbsp; &nbsp;#前3个循环分别为id,price,url这相当于表头,不需要进行操作,所以从第3开始.
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;line</span>=$(($j%<span style="color: #800080;">3</span><span style="color: #000000;">)) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #0000ff;">case</span> $line <span style="color: #0000ff;">in</span>
                <span style="color: #800080;">0</span><span style="color: #000000;">)
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;currcyline</span>=$(($currcyline+<span style="color: #800080;">1</span><span style="color: #000000;">))

 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;s</span>=$(($currcyline%<span style="color: #800080;">20</span><span style="color: #000000;">)) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #0000ff;">if</span> [ $s -eq <span style="color: #800080;">0</span> ]; <span style="color: #0000ff;">then</span>
                                <span style="color: #0000ff;">sleep</span> <span style="color: #800080;">5</span><span style="color: #000000;"> &nbsp;#每循环20次休息5秒,以此来控制避免产生过多的后台进行,使服务器压力过大或死机. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #0000ff;">fi</span>
                        <span style="color: #0000ff;">id</span>=<span style="color: #000000;">$i;; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">1</span><span style="color: #000000;">)
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;price</span>=<span style="color: #000000;">$i;; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">2</span><span style="color: #000000;">)
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;url</span>=<span style="color: #000000;">$i;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;#</span><span style="color: #0000ff;">echo</span> <span style="color: #0000ff;">id</span>:${<span style="color: #0000ff;">id</span><span style="color: #000000;">} &nbsp;price:${price} &nbsp;url:${url}

 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;#调用php命令执行PHP文件.
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;re</span>=`/usr/local/bin/php /var/www/9384shop/cron/goodsupdate.php ${<span style="color: #0000ff;">id</span>} ${price} <span style="color: #800000;">&quot;</span><span style="color: #800000;">${url}</span><span style="color: #800000;">&quot;</span><span style="color: #000000;">` 
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</span>&amp;<span style="color: #000000;">
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;#此</span>&amp;<span style="color: #000000;">为推到后台执行, 关键 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #0000ff;">esac</span>


        <span style="color: #0000ff;">fi</span><span style="color: #000000;">
 &nbsp; &nbsp; &nbsp; &nbsp;j</span>=$(($j+<span style="color: #800080;">1</span><span style="color: #000000;">))</span><span style="color: #0000ff;">done</span><span style="color: #0000ff;">wait</span><span style="color: #000000;">#等待后台进行执行完成</span></pre><p><span class="cnblogs_code_copy"><a title="复制代码"><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码"/></a></span></p><p>&nbsp;</p><p>PHP:</p><p><span class="cnblogs_code_copy"><a title="复制代码"><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码"/></a></span></p><pre>&lt;?<span style="color: #000000;">php</span><span style="color: #008000;">/*</span><span style="color: #008000;">
 ============================================================================
 Name &nbsp; &nbsp; &nbsp; &nbsp;: goodsupdate.php
 Author &nbsp; &nbsp; &nbsp;: 风飘无痕
 Version &nbsp; &nbsp; :
 Copyright &nbsp; : Your copyright notice
 Description : Collect taobao goods
 ============================================================================ </span><span style="color: #008000;">*/</span><span style="color: #008000;">//</span><span style="color: #008000;">$argv为获取命令中的参数</span><span style="color: #800080;">$s</span>=<span style="color: #008080;">microtime</span>(1<span style="color: #000000;">);</span><span style="color: #800080;">$id</span>=<span style="color: #800080;">$argv</span>[1<span style="color: #000000;">];</span><span style="color: #800080;">$oldprice</span>=<span style="color: #800080;">$argv</span>[2<span style="color: #000000;">];</span><span style="color: #800080;">$price</span>=getPrice(<span style="color: #800080;">$argv</span>[3<span style="color: #000000;">]);</span><span style="color: #800080;">$t</span>=<span style="color: #008080;">microtime</span>(1)-<span style="color: #800080;">$s</span><span style="color: #000000;">;</span><span style="color: #800080;">$r</span>=<span style="color: #0000ff;">array</span><span style="color: #000000;">();</span><span style="color: #800080;">$r</span>[]=<span style="color: #008080;">date</span>(&#39;Y-m-d H:i:s&#39;<span style="color: #000000;">);</span><span style="color: #800080;">$r</span>[]=<span style="color: #800080;">$id</span><span style="color: #000000;">;</span><span style="color: #800080;">$r</span>[]=<span style="color: #008080;">ceil</span>(<span style="color: #800080;">$t</span>*1000)/1000<span style="color: #000000;">;</span><span style="color: #0000ff;">if</span>(<span style="color: #800080;">$price</span>==&#39;soldout&#39;<span style="color: #000000;">){ &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$r</span>[]=&quot;OutStock&quot;<span style="color: #000000;">; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$con</span>=<span style="color: #008080;">mysql_connect</span>(&#39;localhost&#39;,&#39;shop&#39;,&#39;shop123&#39;<span style="color: #000000;">); &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #008080;">mysql_select_db</span>(&quot;shop&quot;, <span style="color: #800080;">$con</span><span style="color: #000000;">); &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #008080;">mysql_query</span>(&quot;UPDATE s_goods SET is_off_sale=1 WHERE id=&quot;.<span style="color: #800080;">$id</span><span style="color: #000000;">); &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #008080;">mysql_close</span>(<span style="color: #800080;">$con</span><span style="color: #000000;">);
}</span><span style="color: #0000ff;">elseif</span>(<span style="color: #800080;">$price</span>===<span style="color: #0000ff;">false</span>) <span style="color: #800080;">$r</span>[]= &#39;FALSE&#39;<span style="color: #000000;">;</span><span style="color: #0000ff;">elseif</span>(<span style="color: #800080;">$price</span>==<span style="color: #800080;">$oldprice</span>) <span style="color: #800080;">$r</span>[]=&#39;EQUAL&#39;<span style="color: #000000;">;</span><span style="color: #0000ff;">else</span><span style="color: #000000;">{ &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$r</span>[]=&quot;UPDATE&quot;<span style="color: #000000;">; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$r</span>[]=<span style="color: #800080;">$oldprice</span><span style="color: #000000;">; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$r</span>[]=<span style="color: #800080;">$price</span><span style="color: #000000;">; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$con</span>=<span style="color: #008080;">mysql_connect</span>(&#39;localhost&#39;,&#39;shop&#39;,&#39;shop123&#39;<span style="color: #000000;">); &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #008080;">mysql_select_db</span>(&quot;shop&quot;, <span style="color: #800080;">$con</span><span style="color: #000000;">); &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #008080;">mysql_query</span>(&quot;UPDATE s_goods SET price=&quot;.<span style="color: #800080;">$price</span>.&quot; WHERE id=&quot;.<span style="color: #800080;">$id</span><span style="color: #000000;">); &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #008080;">mysql_close</span>(<span style="color: #800080;">$con</span><span style="color: #000000;">);
}</span><span style="color: #008000;">//</span><span style="color: #008000;">以日志的形式保存执行过程</span><span style="color: #800080;">$h</span>=<span style="color: #008080;">fopen</span>(&#39;/home/staff/www/9384shop/log/goodsUpdate.log&#39;,&#39;a+&#39;<span style="color: #000000;">);

fputcsv(</span><span style="color: #800080;">$h</span>,<span style="color: #800080;">$r</span><span style="color: #000000;">);</span><span style="color: #008080;">fclose</span>(<span style="color: #800080;">$h</span><span style="color: #000000;">);</span><span style="color: #0000ff;">function</span> getPrice(<span style="color: #800080;">$url</span>,<span style="color: #800080;">$time</span>=1<span style="color: #000000;">){ &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$des_url</span>=&#39;&#39;<span style="color: #000000;">; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$ch</span> =<span style="color: #000000;"> curl_init();
 &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt(</span><span style="color: #800080;">$ch</span>, CURLOPT_USERAGENT,&#39;Mozilla/5.0 (Windows NT 6.2; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0&#39;<span style="color: #000000;">);
 &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt(</span><span style="color: #800080;">$ch</span>, CURLOPT_REFERER,&#39;http://www.tmall.com/&#39;);<span style="color: #008000;">//</span><span style="color: #008000;">采集淘宝商品必须设置此项</span>
        curl_setopt(<span style="color: #800080;">$ch</span>, CURLOPT_FOLLOWLOCATION,1<span style="color: #000000;">);
 &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt(</span><span style="color: #800080;">$ch</span>, CURLOPT_RETURNTRANSFER, 1);<span style="color: #008000;">//</span><span style="color: #008000;">设置输出方式, 0为自动输出返回的内容, 1为返回输出的内容,但不自动输出.</span>
        curl_setopt(<span style="color: #800080;">$ch</span>, CURLOPT_CONNECTTIMEOUT, 30); <span style="color: #008000;">//</span><span style="color: #008000;">timeout on connect</span>
        curl_setopt(<span style="color: #800080;">$ch</span>, CURLOPT_TIMEOUT, 30); <span style="color: #008000;">//</span><span style="color: #008000;">timeout on response</span>
        curl_setopt(<span style="color: #800080;">$ch</span>, CURLOPT_HEADER, 1);<span style="color: #008000;">//</span><span style="color: #008000;">是否输出头信息，0为不输出，非零则输出</span>
        curl_setopt(<span style="color: #800080;">$ch</span>, CURLOPT_MAXREDIRS, 10<span style="color: #000000;"> );
 &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt(</span><span style="color: #800080;">$ch</span>, CURLOPT_URL, <span style="color: #800080;">$url</span><span style="color: #000000;">); &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$content</span> = curl_exec(<span style="color: #800080;">$ch</span><span style="color: #000000;">);
 &nbsp; &nbsp; &nbsp; &nbsp;curl_close(</span><span style="color: #800080;">$ch</span><span style="color: #000000;">); &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #0000ff;">if</span>(<span style="color: #008080;">preg_match</span>(&#39;/noitem\.htm/&#39;,<span style="color: #800080;">$content</span><span style="color: #000000;">)){ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #0000ff;">return</span> &#39;soldout&#39;<span style="color: #000000;">;
 &nbsp; &nbsp; &nbsp; &nbsp;}</span><span style="color: #0000ff;">elseif</span>(<span style="color: #008080;">preg_match</span>(&quot;/&#39;reservePrice&#39;\s*:\s*&#39;([\d\.]+?)&#39;,/&quot;,<span style="color: #800080;">$content</span>,<span style="color: #800080;">$price</span><span style="color: #000000;">)){ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$price</span> = (<span style="color: #0000ff;">float</span>)<span style="color: #800080;">$price</span>[1<span style="color: #000000;">];
 &nbsp; &nbsp; &nbsp; &nbsp;}</span><span style="color: #0000ff;">elseif</span>(<span style="color: #008080;">preg_match</span>(&#39;/price:([\d\.]+?),/&#39;,<span style="color: #800080;">$content</span>,<span style="color: #800080;">$price</span><span style="color: #000000;">)){ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$price</span> = (<span style="color: #0000ff;">float</span>)<span style="color: #800080;">$price</span>[1<span style="color: #000000;">];
 &nbsp; &nbsp; &nbsp; &nbsp;} &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #0000ff;">if</span>(!<span style="color: #800080;">$price</span><span style="color: #000000;">){ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #008080;">preg_match</span>(&#39;/id=(\d+)+/&#39;,<span style="color: #800080;">$url</span>,<span style="color: #800080;">$temp</span><span style="color: #000000;">); &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$url2</span>=&quot;http://mdskip.taobao.com/core/initItemDetail.htm?itemId=&quot;.<span style="color: #800080;">$temp</span>[1<span style="color: #000000;">]; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$ch</span> =<span style="color: #000000;"> curl_init();
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt( </span><span style="color: #800080;">$ch</span>, CURLOPT_USERAGENT, &quot;Mozilla/5.0 (Windows; U; Windows NT 5.1; rv:1.7.3) Gecko/20041001 Firefox/0.10.1&quot;<span style="color: #000000;"> );
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt( </span><span style="color: #800080;">$ch</span>, CURLOPT_URL, <span style="color: #800080;">$url2</span><span style="color: #000000;"> );
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt( </span><span style="color: #800080;">$ch</span>, CURLOPT_FOLLOWLOCATION, <span style="color: #0000ff;">true</span><span style="color: #000000;"> );
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt( </span><span style="color: #800080;">$ch</span>, CURLOPT_ENCODING, &quot;&quot;<span style="color: #000000;"> );
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt( </span><span style="color: #800080;">$ch</span>, CURLOPT_RETURNTRANSFER, <span style="color: #0000ff;">true</span><span style="color: #000000;"> );
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt( </span><span style="color: #800080;">$ch</span>, CURLOPT_REFERER, &#39;http://www.tmall.com&#39;<span style="color: #000000;"> );
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt( </span><span style="color: #800080;">$ch</span>, CURLOPT_AUTOREFERER, <span style="color: #0000ff;">true</span><span style="color: #000000;"> );
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt( </span><span style="color: #800080;">$ch</span>, CURLOPT_SSL_VERIFYPEER, <span style="color: #0000ff;">false</span><span style="color: #000000;"> ); &nbsp; 
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt( </span><span style="color: #800080;">$ch</span>, CURLOPT_CONNECTTIMEOUT, 10<span style="color: #000000;"> );
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt( </span><span style="color: #800080;">$ch</span>, CURLOPT_TIMEOUT, 10<span style="color: #000000;"> );
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt( </span><span style="color: #800080;">$ch</span>, CURLOPT_MAXREDIRS, 10<span style="color: #000000;"> ); &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$price_content</span> = curl_exec( <span style="color: #800080;">$ch</span><span style="color: #000000;"> ); &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$response</span> = curl_getinfo( <span style="color: #800080;">$ch</span><span style="color: #000000;"> );
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;curl_close ( </span><span style="color: #800080;">$ch</span><span style="color: #000000;"> ); &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$price_content</span>=json_decode(<span style="color: #008080;">iconv</span>(&#39;gbk&#39;,&#39;utf-8&#39;,<span style="color: #008080;">preg_replace</span>(&#39;/(\d{10,}):/&#39;,&#39;&quot;${1}&quot;:&#39;,<span style="color: #800080;">$price_content</span>)),<span style="color: #0000ff;">true</span><span style="color: #000000;">); &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$priceinfo</span>=<span style="color: #800080;">$price_content</span>[&#39;defaultModel&#39;][&#39;itemPriceResultDO&#39;][&#39;priceInfo&#39;<span style="color: #000000;">]; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$price</span>=<span style="color: #0000ff;">array</span><span style="color: #000000;">(); &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #0000ff;">if</span>(<span style="color: #008080;">is_array</span>(<span style="color: #800080;">$priceinfo</span><span style="color: #000000;">)){ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #0000ff;">foreach</span> (<span style="color: #800080;">$priceinfo</span> <span style="color: #0000ff;">as</span> <span style="color: #800080;">$v</span><span style="color: #000000;">){ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$price</span>[]=<span style="color: #800080;">$v</span>[&#39;price&#39;<span style="color: #000000;">]; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #0000ff;">if</span>(<span style="color: #008080;">is_array</span>(<span style="color: #800080;">$v</span>[&#39;promotionList&#39;<span style="color: #000000;">])){ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #0000ff;">foreach</span> (<span style="color: #800080;">$v</span>[&#39;promotionList&#39;] <span style="color: #0000ff;">as</span> <span style="color: #800080;">$v2</span><span style="color: #000000;">){ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$price</span>[]=<span style="color: #800080;">$v2</span>[&#39;extraPromPrice&#39;]?<span style="color: #800080;">$v2</span>[&#39;extraPromPrice&#39;]:<span style="color: #800080;">$v2</span>[&#39;price&#39;<span style="color: #000000;">];
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #0000ff;">if</span>(<span style="color: #008080;">is_array</span>(<span style="color: #800080;">$v</span>[&#39;suggestivePromotionList&#39;<span style="color: #000000;">])){ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #0000ff;">foreach</span> (<span style="color: #800080;">$v</span>[&#39;suggestivePromotionList&#39;] <span style="color: #0000ff;">as</span> <span style="color: #800080;">$v2</span><span style="color: #000000;">){ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$price</span>[]=<span style="color: #800080;">$v2</span>[&#39;extraPromPrice&#39;]?<span style="color: #800080;">$v2</span>[&#39;extraPromPrice&#39;]:<span style="color: #800080;">$v2</span>[&#39;price&#39;<span style="color: #000000;">];
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #800080;">$price</span>=<span style="color: #008080;">count</span>(<span style="color: #800080;">$price</span>)&gt;0?<span style="color: #008080;">min</span>(<span style="color: #800080;">$price</span>):<span style="color: #0000ff;">false</span><span style="color: #000000;">;

 &nbsp; &nbsp; &nbsp; &nbsp;} &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #0000ff;">if</span>(<span style="color: #800080;">$price</span>) <span style="color: #0000ff;">return</span> <span style="color: #800080;">$price</span><span style="color: #000000;">; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #0000ff;">elseif</span>(<span style="color: #800080;">$time</span>&lt;3) <span style="color: #0000ff;">return</span> getPrice(<span style="color: #800080;">$url</span>,<span style="color: #800080;">$time</span>+1);<span style="color: #008000;">//</span><span style="color: #008000;">如果没有取到价格递归执行,最多执行3次.</span>
        <span style="color: #0000ff;">else</span> <span style="color: #0000ff;">return</span> <span style="color: #0000ff;">false</span><span style="color: #000000;">;
}</span></pre><p><span class="cnblogs_code_copy"><a title="复制代码"><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码"/></a></span></p><p>执行结果:</p><p><span class="cnblogs_code_copy"><a title="复制代码"><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码"/></a></span></p><pre><span style="color: #0000ff;">tail</span> -<span style="color: #800080;">10</span><span style="color: #000000;"> goodsUpdate.log</span><span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-03-21 13:45:34</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">13357</span>,<span style="color: #800080;">0.273</span><span style="color: #000000;">,EQUAL</span><span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-03-21 13:45:35</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">13380</span>,<span style="color: #800080;">5.883</span><span style="color: #000000;">,EQUAL</span><span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-03-21 13:45:35</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">13343</span>,<span style="color: #800080;">0.914</span><span style="color: #000000;">,EQUAL</span><span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-03-21 13:45:35</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">13344</span>,<span style="color: #800080;">0.923</span><span style="color: #000000;">,EQUAL</span><span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-03-21 13:45:35</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">13347</span>,<span style="color: #800080;">0.927</span>,UPDATE,<span style="color: #800080;">599.00</span>,<span style="color: #800080;">181.00</span><span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-03-21 13:45:35</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">13339</span>,<span style="color: #800080;">0.908</span><span style="color: #000000;">,EQUAL</span><span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-03-21 13:45:35</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">13342</span>,<span style="color: #800080;">0.93</span><span style="color: #000000;">,EQUAL</span><span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-03-21 13:45:35</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">13348</span>,<span style="color: #800080;">0.933</span><span style="color: #000000;">,EQUAL</span><span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-03-21 13:45:35</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">13349</span>,<span style="color: #800080;">0.946</span>,UPDATE,<span style="color: #800080;">1547.00</span>,<span style="color: #800080;">1877.00</span><span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-03-21 13:45:35</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">13338</span>,<span style="color: #800080;">0.947</span>,EQUAL</pre><p><span class="cnblogs_code_copy"><a title="复制代码"><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码"/></a></span></p><p>此方法比只用PHP更新大大节约了时间,更新2万个商品大约是半小时.但是线程数非常不好控制</p><p><br/></p>','
			Linux下利用Shell使PHP并发采集淘宝产品
		
		上次项目中用到&lt;&lt;PHP采集淘宝商品&gt;&gt;此方法有一个缺点,就是执行效率问题.一个商品采集平均需要0.8秒.那10000个商品采集完需要2个半','1406190788','1406190788','37','1','1','0','','0','0','1','0');
INSERT INTO `tp_article` VALUES ('9','Linux C程序操作Mysql 调用PHP采集淘宝商品','','','','','','','<h2>
			<a id="cb_post_title_url" href="http://www.cnblogs.com/lywy510/p/3696177.html">Linux C程序操作Mysql 调用PHP采集淘宝商品</a>
		</h2><p>
		</p><p>还是继续这个项目。</p><p>在上一篇<a id="cb_post_title_url" href="http://www.cnblogs.com/lywy510/p/3613522.html">Linux下利用Shell使PHP并发采集淘宝产品</a>中，采用shell将对PHP的调用推到后台执行，模拟多线程。</p><p>此方法有一致命缺点，只能人工预判每个程序执行时间。如果判断时间少于执行时间，则会生成大量进程，如果判断时间多于执行时间，则会浪费时间资源。</p><p>所以，在此我们采用C程序来控制并发数。</p><p>整体思路和用shell调用相似，只是把shell控制改成了C。</p><p>下面是C程序：</p><p><span class="cnblogs_code_copy"><a title="复制代码"><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码"/></a></span></p><pre><span style="color: #008080;"> 1</span> #include &lt;stdio.h&gt;<span style="color: #008080;"> 2</span> #include &lt;stdlib.h&gt;  
<span style="color: #008080;"> 3</span> #include &lt;<span style="color: #0000ff;">string</span>.h&gt;  
<span style="color: #008080;"> 4</span> #include &lt;sys/time.h&gt;<span style="color: #008080;"> 5</span> #include <span style="color: #800000;">&quot;</span><span style="color: #800000;">/usr/local/include/mysql/mysql.h</span><span style="color: #800000;">&quot;</span>  <span style="color: #008080;"> 6</span> <span style="color: #0000ff;">#define</span> MAX_COLUMN_LEN  32 
<span style="color: #008080;"> 7</span> <span style="color: #0000ff;">#define</span> THREAD_NUM 20<span style="color: #008000;">//</span><span style="color: #008000;">线程数</span><span style="color: #008080;"> 8</span> <span style="color: #0000ff;">int</span> threads = <span style="color: #800080;">0</span><span style="color: #000000;">;</span><span style="color: #008080;"> 9</span> <span style="color: #000000;">pthread_t thread[THREAD_NUM];</span><span style="color: #008080;">10</span> pthread_mutex_t mut;<span style="color: #008000;">//</span><span style="color: #008000;">线程锁 </span><span style="color: #008080;">11</span> <span style="color: #0000ff;">int</span> count=<span style="color: #800080;">0</span>,vod_count=<span style="color: #800080;">0</span>,number = <span style="color: #800080;">0</span><span style="color: #000000;">;</span><span style="color: #008080;">12</span> <span style="color: #0000ff;">int</span> *goods_id[<span style="color: #800080;">1000000</span><span style="color: #000000;">];</span><span style="color: #008080;">13</span> <span style="color: #0000ff;">void</span> *thread1(<span style="color: #0000ff;">int</span><span style="color: #000000;"> thread_id)</span><span style="color: #008080;">14</span> <span style="color: #000000;">{</span><span style="color: #008080;">15</span>     <span style="color: #0000ff;">int</span><span style="color: #000000;"> sleepsec;</span><span style="color: #008080;">16</span>     <span style="color: #0000ff;">while</span> (number &lt;<span style="color: #000000;"> count){;</span><span style="color: #008080;">17</span>         <span style="color: #0000ff;">char</span> shell_cmd[<span style="color: #800080;">50</span><span style="color: #000000;">];</span><span style="color: #008080;">18</span>         printf(<span style="color: #800000;">&quot;</span><span style="color: #800000;">number:%d\tthread_id=%d\tid=%s\n</span><span style="color: #800000;">&quot;</span><span style="color: #000000;">, number, thread_id, goods_id[number]);</span><span style="color: #008080;">19</span>         sprintf(shell_cmd, <span style="color: #800000;">&quot;</span><span style="color: #800000;">/usr/local/bin/php /var/www/9384shop/cron/goodsupdate.php %s</span><span style="color: #800000;">&quot;</span>, goods_id[number]);<span style="color: #008000;">//</span><span style="color: #008000;">生成shell命令</span><span style="color: #008080;">20</span>         system(shell_cmd);<span style="color: #008000;">//</span><span style="color: #008000;">调用shell</span><span style="color: #008080;">21</span>         pthread_mutex_lock(&amp;<span style="color: #000000;">mut);</span><span style="color: #008080;">22</span>         number++<span style="color: #000000;">;</span><span style="color: #008080;">23</span>         pthread_mutex_unlock(&amp;<span style="color: #000000;">mut); &nbsp; &nbsp; &nbsp; &nbsp; 
</span><span style="color: #008080;">24</span> <span style="color: #000000;"> &nbsp; &nbsp;}</span><span style="color: #008080;">25</span> <span style="color: #000000;"> &nbsp; &nbsp;pthread_exit(NULL);</span><span style="color: #008080;">26</span> <span style="color: #000000;">}</span><span style="color: #008080;">27</span> <span style="color: #008080;">28</span> <span style="color: #0000ff;">void</span> create_thread(<span style="color: #0000ff;">void</span><span style="color: #000000;">){</span><span style="color: #008080;">29</span>     <span style="color: #0000ff;">int</span><span style="color: #000000;"> i,temp;</span><span style="color: #008080;">30</span>     <span style="color: #0000ff;">for</span> (i = <span style="color: #800080;">0</span>; i &lt; THREAD_NUM; i++<span style="color: #000000;">){</span><span style="color: #008080;">31</span>         <span style="color: #0000ff;">if</span> (thread[i] == <span style="color: #800080;">0</span><span style="color: #000000;">){</span><span style="color: #008080;">32</span>             <span style="color: #0000ff;">if</span> ((temp = pthread_create(&amp;thread[i], NULL, thread1, i)) != <span style="color: #800080;">0</span><span style="color: #000000;">){</span><span style="color: #008080;">33</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</span><span style="color: #008080;">34</span>             <span style="color: #0000ff;">else</span><span style="color: #000000;">{</span><span style="color: #008080;">35</span>                 threads++<span style="color: #000000;">;</span><span style="color: #008080;">36</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</span><span style="color: #008080;">37</span>             <span style="color: #0000ff;">break</span><span style="color: #000000;">;</span><span style="color: #008080;">38</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp;}</span><span style="color: #008080;">39</span> <span style="color: #000000;"> &nbsp; &nbsp;}</span><span style="color: #008080;">40</span>     sleep(<span style="color: #800080;">1</span><span style="color: #000000;">);</span><span style="color: #008080;">41</span> <span style="color: #000000;">}</span><span style="color: #008080;">42</span> <span style="color: #0000ff;">void</span> thread_wait(<span style="color: #0000ff;">void</span><span style="color: #000000;">)</span><span style="color: #008080;">43</span> <span style="color: #000000;">{</span><span style="color: #008080;">44</span>     <span style="color: #0000ff;">int</span><span style="color: #000000;"> i;</span><span style="color: #008080;">45</span>     <span style="color: #008000;">/*</span><span style="color: #008000;">等待线程结束</span><span style="color: #008000;">*/</span><span style="color: #008080;">46</span>     <span style="color: #0000ff;">for</span> (i = <span style="color: #800080;">0</span>; i &lt; THREAD_NUM; i++<span style="color: #000000;">){</span><span style="color: #008080;">47</span>         <span style="color: #0000ff;">if</span> (thread[i] != <span style="color: #800080;">0</span><span style="color: #000000;">) {</span><span style="color: #008080;">48</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;pthread_join(thread[i], NULL);</span><span style="color: #008080;">49</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp;}</span><span style="color: #008080;">50</span> <span style="color: #000000;"> &nbsp; &nbsp;}</span><span style="color: #008080;">51</span> <span style="color: #000000;">}</span><span style="color: #008080;">52</span> <span style="color: #0000ff;">int</span> main(<span style="color: #0000ff;">int</span> argc, <span style="color: #0000ff;">char</span> *<span style="color: #000000;">argv[]){</span><span style="color: #008080;">53</span> <span style="color: #000000;"> &nbsp; &nbsp;MYSQL my_connection;</span><span style="color: #008080;">54</span>     MYSQL_RES *<span style="color: #000000;">result;</span><span style="color: #008080;">55</span> <span style="color: #000000;"> &nbsp; &nbsp;MYSQL_ROW sql_row;</span><span style="color: #008080;">56</span>     MYSQL_FIELD *<span style="color: #000000;">fd;</span><span style="color: #008080;">57</span>     <span style="color: #0000ff;">char</span><span style="color: #000000;"> column[MAX_COLUMN_LEN][MAX_COLUMN_LEN];</span><span style="color: #008080;">58</span>     <span style="color: #0000ff;">int</span><span style="color: #000000;"> res,flag;</span><span style="color: #008080;">59</span>     mysql_init(&amp;<span style="color: #000000;">my_connection);</span><span style="color: #008080;">60</span>     <span style="color: #0000ff;">if</span> (mysql_real_connect(&amp;my_connection, <span style="color: #800000;">&quot;</span><span style="color: #800000;">localhost</span><span style="color: #800000;">&quot;</span><span style="color: #008080;">61</span>         , <span style="color: #800000;">&quot;</span><span style="color: #800000;">root</span><span style="color: #800000;">&quot;</span>, <span style="color: #800000;">&quot;</span><span style="color: #800000;">202.133</span><span style="color: #800000;">&quot;</span>, <span style="color: #800000;">&quot;</span><span style="color: #800000;">shop</span><span style="color: #800000;">&quot;</span>, <span style="color: #800080;">3306</span>, NULL, <span style="color: #800080;">0</span><span style="color: #000000;">)){</span><span style="color: #008080;">62</span>         printf(<span style="color: #800000;">&quot;</span><span style="color: #800000;">connected to mysql.\n</span><span style="color: #800000;">&quot;</span><span style="color: #000000;">); &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color: #008080;">63</span>         res = mysql_query(&amp;my_connection, <span style="color: #800000;">&quot;</span><span style="color: #800000;">select id from s_goods where is_off_sale=0 order by id desc limit 1000000</span><span style="color: #800000;">&quot;</span>);<span style="color: #008000;">//</span><span style="color: #008000;">查询</span><span style="color: #008080;">64</span>         printf(<span style="color: #800000;">&quot;</span><span style="color: #800000;">select id from s_goods where is_off_sale=0 order by id desc limit 1000000\n</span><span style="color: #800000;">&quot;</span><span style="color: #000000;">);</span><span style="color: #008080;">65</span>         <span style="color: #0000ff;">if</span> (!<span style="color: #000000;">res){</span><span style="color: #008080;">66</span>             <span style="color: #0000ff;">int</span> i = <span style="color: #800080;">0</span><span style="color: #000000;">, j;</span><span style="color: #008080;">67</span>             result = mysql_store_result(&amp;my_connection);<span style="color: #008000;">//</span><span style="color: #008000;">保存查询到的数据到result &nbsp;</span><span style="color: #008080;">68</span>             printf(<span style="color: #800000;">&quot;</span><span style="color: #800000;">the result number is %lu\n</span><span style="color: #800000;">&quot;</span>, (unsigned <span style="color: #0000ff;">long</span><span style="color: #000000;">)mysql_num_rows(result));</span><span style="color: #008080;">69</span>             count = (unsigned <span style="color: #0000ff;">long</span><span style="color: #000000;">)mysql_num_rows(result);</span><span style="color: #008080;">70</span>             <span style="color: #0000ff;">while</span> (sql_row = mysql_fetch_row(result))<span style="color: #008000;">//</span><span style="color: #008000;">获取具体的数据 &nbsp;</span><span style="color: #008080;">71</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{</span><span style="color: #008080;">72</span>                 goods_id[i] = (unsigned <span style="color: #0000ff;">long</span>)sql_row[<span style="color: #800080;">0</span><span style="color: #000000;">];</span><span style="color: #008080;">73</span>                 i++<span style="color: #000000;">;</span><span style="color: #008080;">74</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;} 
</span><span style="color: #008080;">75</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp;}</span><span style="color: #008080;">76</span>         mysql_close(&amp;my_connection);<span style="color: #008000;">//</span><span style="color: #008000;">断开连接 </span><span style="color: #008080;">77</span>         <span style="color: #0000ff;">while</span> (threads &lt;<span style="color: #000000;"> THREAD_NUM)</span><span style="color: #008080;">78</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;create_thread();</span><span style="color: #008080;">79</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp;thread_wait();</span><span style="color: #008080;">80</span> <span style="color: #000000;"> &nbsp; &nbsp;}</span><span style="color: #008080;">81</span>     <span style="color: #0000ff;">else</span><span style="color: #000000;">{</span><span style="color: #008080;">82</span>         mysql_close(&amp;my_connection);<span style="color: #008000;">//</span><span style="color: #008000;">断开连接 &nbsp;</span><span style="color: #008080;">83</span>         printf(<span style="color: #800000;">&quot;</span><span style="color: #800000;">ERROR:can not connect to mysql\n</span><span style="color: #800000;">&quot;</span><span style="color: #000000;">);</span><span style="color: #008080;">84</span> <span style="color: #000000;"> &nbsp; &nbsp;}</span><span style="color: #008080;">85</span>     <span style="color: #008080;">86</span> }</pre><p><span class="cnblogs_code_copy"><a title="复制代码"><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码"/></a></span></p><p>PHP:</p><p><span class="cnblogs_code_copy"><a title="复制代码"><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码"/></a></span></p><pre><span style="color: #008080;"> &nbsp;1</span> &lt;?<span style="color: #000000;">php</span><span style="color: #008080;"> &nbsp;2</span> <span style="color: #008080;">define</span>(&quot;OTHER&quot;,<span style="color: #0000ff;">true</span><span style="color: #000000;">);</span><span style="color: #008080;"> &nbsp;3</span> <span style="color: #800080;">$host</span>=&#39;localhost&#39;<span style="color: #000000;">;</span><span style="color: #008080;"> &nbsp;4</span> <span style="color: #800080;">$username</span>=&#39;root&#39;<span style="color: #000000;">;</span><span style="color: #008080;"> &nbsp;5</span> <span style="color: #800080;">$password</span>=&#39;123456&#39;<span style="color: #000000;">;</span><span style="color: #008080;"> &nbsp;6</span> <span style="color: #800080;">$db_name</span>=&#39;taobao&#39;<span style="color: #000000;">;</span><span style="color: #008080;"> &nbsp;7</span> <span style="color: #800080;">$s</span>=<span style="color: #008080;">microtime</span>(1<span style="color: #000000;">);</span><span style="color: #008080;"> &nbsp;8</span> <span style="color: #800080;">$id</span>=<span style="color: #800080;">$argv</span>[1<span style="color: #000000;">];</span><span style="color: #008080;"> &nbsp;9</span> <span style="color: #008080;"> 10</span> <span style="color: #008080;"> 11</span> <span style="color: #800080;">$con</span>=<span style="color: #008080;">mysql_connect</span>(<span style="color: #800080;">$host</span>,<span style="color: #800080;">$username</span>,<span style="color: #800080;">$password</span><span style="color: #000000;">);</span><span style="color: #008080;"> 12</span> <span style="color: #008080;">mysql_select_db</span>(<span style="color: #800080;">$db_name</span>, <span style="color: #800080;">$con</span><span style="color: #000000;">);</span><span style="color: #008080;"> 13</span> <span style="color: #800080;">$r</span>=<span style="color: #008080;">mysql_fetch_array</span>(<span style="color: #008080;">mysql_query</span>(&#39;SELECT url,price FROM s_goods where id=&#39;.<span style="color: #800080;">$id</span>),<span style="color: #000000;">MYSQL_ASSOC);</span><span style="color: #008080;"> 14</span> <span style="color: #008080;">mysql_close</span>(<span style="color: #800080;">$con</span><span style="color: #000000;">);</span><span style="color: #008080;"> 15</span> <span style="color: #800080;">$oldprice</span>=<span style="color: #800080;">$r</span>[&#39;price&#39;<span style="color: #000000;">];</span><span style="color: #008080;"> 16</span> <span style="color: #800080;">$rs</span>=getPrice(<span style="color: #800080;">$r</span>[&#39;url&#39;<span style="color: #000000;">]);</span><span style="color: #008080;"> 17</span> <span style="color: #800080;">$t</span>=<span style="color: #008080;">microtime</span>(1)-<span style="color: #800080;">$s</span><span style="color: #000000;">;</span><span style="color: #008080;"> 18</span> <span style="color: #800080;">$r</span>=<span style="color: #0000ff;">array</span><span style="color: #000000;">();</span><span style="color: #008080;"> 19</span> <span style="color: #800080;">$r</span>[]=<span style="color: #008080;">date</span>(&#39;Y-m-d H:i:s&#39;<span style="color: #000000;">);</span><span style="color: #008080;"> 20</span> <span style="color: #800080;">$r</span>[]=<span style="color: #800080;">$id</span><span style="color: #000000;">;</span><span style="color: #008080;"> 21</span> <span style="color: #800080;">$r</span>[]=<span style="color: #008080;">ceil</span>(<span style="color: #800080;">$t</span>*1000)/1000<span style="color: #000000;">;</span><span style="color: #008080;"> 22</span> <span style="color: #0000ff;">if</span>(<span style="color: #800080;">$rs</span>==&#39;soldout&#39;<span style="color: #000000;">){</span><span style="color: #008080;"> 23</span>     <span style="color: #800080;">$r</span>[]=&quot;OutStock&quot;<span style="color: #000000;">;</span><span style="color: #008080;"> 24</span>     <span style="color: #800080;">$con</span>=<span style="color: #008080;">mysql_connect</span>(<span style="color: #800080;">$host</span>,<span style="color: #800080;">$username</span>,<span style="color: #800080;">$password</span><span style="color: #000000;">);</span><span style="color: #008080;"> 25</span>     <span style="color: #008080;">mysql_select_db</span>(<span style="color: #800080;">$db_name</span>, <span style="color: #800080;">$con</span><span style="color: #000000;">);</span><span style="color: #008080;"> 26</span>     <span style="color: #008080;">mysql_query</span>(&quot;UPDATE s_goods SET is_off_sale=1 WHERE id=&quot;.<span style="color: #800080;">$id</span><span style="color: #000000;">);</span><span style="color: #008080;"> 27</span>     <span style="color: #008080;">mysql_close</span>(<span style="color: #800080;">$con</span><span style="color: #000000;">);</span><span style="color: #008080;"> 28</span> <span style="color: #000000;">}</span><span style="color: #008080;"> 29</span> <span style="color: #0000ff;">elseif</span>(<span style="color: #800080;">$rs</span>===<span style="color: #0000ff;">false</span>) <span style="color: #800080;">$r</span>[]= &#39;FALSE&#39;<span style="color: #000000;">;</span><span style="color: #008080;"> 30</span> <span style="color: #0000ff;">else</span><span style="color: #000000;">{</span><span style="color: #008080;"> 31</span>         <span style="color: #800080;">$r</span>[]=<span style="color: #800080;">$oldprice</span><span style="color: #000000;">;</span><span style="color: #008080;"> 32</span>         <span style="color: #800080;">$r</span>[]=<span style="color: #0000ff;">isset</span>(<span style="color: #800080;">$rs</span>[&#39;price&#39;])?<span style="color: #800080;">$rs</span>[&#39;price&#39;]:&#39;&#39;<span style="color: #000000;">;</span><span style="color: #008080;"> 33</span>         <span style="color: #800080;">$r</span>[]=<span style="color: #0000ff;">isset</span>(<span style="color: #800080;">$rs</span>[&#39;seller_nick&#39;])?<span style="color: #800080;">$rs</span>[&#39;seller_nick&#39;]:&#39;&#39;<span style="color: #000000;">;</span><span style="color: #008080;"> 34</span>         <span style="color: #800080;">$r</span>[]=<span style="color: #0000ff;">isset</span>(<span style="color: #800080;">$rs</span>[&#39;taobao_shop_id&#39;])?<span style="color: #800080;">$rs</span>[&#39;taobao_shop_id&#39;]:&#39;&#39;<span style="color: #000000;">;</span><span style="color: #008080;"> 35</span>         <span style="color: #800080;">$r</span>[]=<span style="color: #0000ff;">isset</span>(<span style="color: #800080;">$rs</span>[&#39;shop_name&#39;])?<span style="color: #800080;">$rs</span>[&#39;shop_name&#39;]:&#39;&#39;<span style="color: #000000;">;</span><span style="color: #008080;"> 36</span>         <span style="color: #800080;">$r</span>[]=<span style="color: #0000ff;">isset</span>(<span style="color: #800080;">$rs</span>[&#39;sales&#39;])?<span style="color: #800080;">$rs</span>[&#39;sales&#39;]:&#39;&#39;<span style="color: #000000;">;</span><span style="color: #008080;"> 37</span>         <span style="color: #800080;">$r</span>[]=<span style="color: #0000ff;">isset</span>(<span style="color: #800080;">$rs</span>[&#39;taobao_cid&#39;])?<span style="color: #800080;">$rs</span>[&#39;taobao_cid&#39;]:&#39;&#39;<span style="color: #000000;">;</span><span style="color: #008080;"> 38</span>         <span style="color: #800080;">$r</span>[]=<span style="color: #0000ff;">isset</span>(<span style="color: #800080;">$rs</span>[&#39;merchandis_score&#39;])?<span style="color: #800080;">$rs</span>[&#39;merchandis_score&#39;]:&#39;&#39;<span style="color: #000000;">;</span><span style="color: #008080;"> 39</span>         <span style="color: #800080;">$r</span>[]=<span style="color: #0000ff;">isset</span>(<span style="color: #800080;">$rs</span>[&#39;merchandis_total&#39;])?<span style="color: #800080;">$rs</span>[&#39;merchandis_total&#39;]:&#39;&#39;<span style="color: #000000;">;</span><span style="color: #008080;"> 40</span>         <span style="color: #800080;">$a</span>=<span style="color: #0000ff;">array</span><span style="color: #000000;">();</span><span style="color: #008080;"> 41</span>         <span style="color: #008000;">//</span><span style="color: #008000;">$rs[&#39;is_off_sale&#39;]=0;</span><span style="color: #008080;"> 42</span>         <span style="color: #0000ff;">foreach</span> (<span style="color: #800080;">$rs</span> <span style="color: #0000ff;">as</span> <span style="color: #800080;">$k</span>=&gt;<span style="color: #800080;">$v</span><span style="color: #000000;">){</span><span style="color: #008080;"> 43</span>             <span style="color: #0000ff;">if</span>(!<span style="color: #0000ff;">empty</span>(<span style="color: #800080;">$v</span><span style="color: #000000;">)){</span><span style="color: #008080;"> 44</span>                  <span style="color: #800080;">$a</span>[]=&quot;<span style="color: #800080;">$k</span>=&#39;<span style="color: #800080;">$v</span>&#39;&quot;<span style="color: #000000;">;</span><span style="color: #008080;"> 45</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</span><span style="color: #008080;"> 46</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp;}</span><span style="color: #008080;"> 47</span>         <span style="color: #800080;">$a</span>[]=&quot;update_time=&#39;&quot;.<span style="color: #008080;">date</span>(&#39;Y-m-d H:i:s&#39;).&quot;&#39;&quot;<span style="color: #000000;">;</span><span style="color: #008080;"> 48</span>         <span style="color: #800080;">$con</span>=<span style="color: #008080;">mysql_connect</span>(<span style="color: #800080;">$host</span>,<span style="color: #800080;">$username</span>,<span style="color: #800080;">$password</span><span style="color: #000000;">);</span><span style="color: #008080;"> 49</span>         <span style="color: #008080;">mysql_select_db</span>(<span style="color: #800080;">$db_name</span>, <span style="color: #800080;">$con</span><span style="color: #000000;">);</span><span style="color: #008080;"> 50</span>         <span style="color: #008080;">mysql_query</span>(&quot;set names utf8&quot;<span style="color: #000000;">);</span><span style="color: #008080;"> 51</span>         <span style="color: #008080;">mysql_query</span>(&quot;UPDATE s_goods SET &quot;.<span style="color: #008080;">implode</span>(&#39;,&#39;,<span style="color: #800080;">$a</span>).&quot; WHERE id=&quot;.<span style="color: #800080;">$id</span><span style="color: #000000;">);</span><span style="color: #008080;"> 52</span>         <span style="color: #008080;">mysql_close</span>(<span style="color: #800080;">$con</span><span style="color: #000000;">);</span><span style="color: #008080;"> 53</span> <span style="color: #000000;">}</span><span style="color: #008080;"> 54</span> <span style="color: #800080;">$h</span>=<span style="color: #008080;">fopen</span>(&#39;/home/staff/www/9384shop/cron/goodsUpdate.log&#39;,&#39;a+&#39;<span style="color: #000000;">);</span><span style="color: #008080;"> 55</span> <span style="color: #008080;"> 56</span> fputcsv(<span style="color: #800080;">$h</span>,<span style="color: #800080;">$r</span><span style="color: #000000;">);</span><span style="color: #008080;"> 57</span> <span style="color: #008080;">fclose</span>(<span style="color: #800080;">$h</span><span style="color: #000000;">);</span><span style="color: #008080;"> 58</span> <span style="color: #008080;"> 59</span> <span style="color: #0000ff;">function</span> getPrice(<span style="color: #800080;">$url</span><span style="color: #000000;">){</span><span style="color: #008080;"> 60</span>     <span style="color: #800080;">$rs</span>=<span style="color: #0000ff;">array</span><span style="color: #000000;">();</span><span style="color: #008080;"> 61</span>     <span style="color: #008080;">preg_match</span>(&#39;/[&amp;|\?]id=(\d+)/&#39;,<span style="color: #800080;">$url</span>,<span style="color: #800080;">$id</span><span style="color: #000000;">);</span><span style="color: #008080;"> 62</span>     <span style="color: #800080;">$id</span>=<span style="color: #800080;">$id</span>[1<span style="color: #000000;">];</span><span style="color: #008080;"> 63</span>     <span style="color: #800080;">$c</span>=curls(<span style="color: #800080;">$url</span>,<span style="color: #0000ff;">true</span><span style="color: #000000;">);</span><span style="color: #008080;"> 64</span>     <span style="color: #800080;">$content</span> = <span style="color: #800080;">$c</span>[&#39;content&#39;<span style="color: #000000;">];</span><span style="color: #008080;"> 65</span>     <span style="color: #0000ff;">if</span>(<span style="color: #0000ff;">empty</span>(<span style="color: #800080;">$content</span>)) <span style="color: #0000ff;">exit</span><span style="color: #000000;">;</span><span style="color: #008080;"> 66</span>     <span style="color: #800080;">$content</span>=mb_convert_encoding(<span style="color: #800080;">$content</span>,&quot;UTF-8&quot;,&quot;gbk&quot;<span style="color: #000000;">);</span><span style="color: #008080;"> 67</span>     <span style="color: #800080;">$lastredirectaddr</span> = <span style="color: #800080;">$c</span>[&#39;lastredirectaddr&#39;<span style="color: #000000;">]; &nbsp; &nbsp;</span><span style="color: #008080;"> 68</span>     <span style="color: #0000ff;">if</span>(<span style="color: #008080;">preg_match</span>(&#39;/noitem\.htm/&#39;,<span style="color: #800080;">$content</span>)||<span style="color: #008080;">preg_match</span>(&#39;/&lt;strong&gt;此宝贝已下架&lt;\/strong&gt;|您查看的商品找不到了|您查看的宝贝不存在，可能已下架或者被转移/&#39;,<span style="color: #800080;">$content</span><span style="color: #000000;">)){ &nbsp; &nbsp;</span><span style="color: #008080;"> 69</span>         <span style="color: #0000ff;">return</span> &#39;soldout&#39;<span style="color: #000000;">;</span><span style="color: #008080;"> 70</span>     }<span style="color: #0000ff;">elseif</span>(<span style="color: #008080;">preg_match</span>(&quot;/&#39;reservePrice&#39;\s*:\s*&#39;([\d\.]+?)&#39;,/&quot;,<span style="color: #800080;">$content</span>,<span style="color: #800080;">$price</span><span style="color: #000000;">)){</span><span style="color: #008080;"> 71</span>         <span style="color: #800080;">$price</span> = (<span style="color: #0000ff;">float</span>)<span style="color: #800080;">$price</span>[1<span style="color: #000000;">];</span><span style="color: #008080;"> 72</span>     }<span style="color: #0000ff;">elseif</span>(<span style="color: #008080;">preg_match</span>(&#39;/price:([\d\.]+?),/&#39;,<span style="color: #800080;">$content</span>,<span style="color: #800080;">$price</span><span style="color: #000000;">)){</span><span style="color: #008080;"> 73</span>         <span style="color: #800080;">$price</span> = (<span style="color: #0000ff;">float</span>)<span style="color: #800080;">$price</span>[1<span style="color: #000000;">];</span><span style="color: #008080;"> 74</span> <span style="color: #000000;"> &nbsp; &nbsp;}</span><span style="color: #008080;"> 75</span>     <span style="color: #0000ff;">if</span>(<span style="color: #008080;">preg_match</span>(&#39;/&quot;sellerNickName&quot;\s*:\s*&quot;(.*?)&quot;,/&#39;,<span style="color: #800080;">$content</span>,<span style="color: #800080;">$nick</span><span style="color: #000000;">)){</span><span style="color: #008080;"> 76</span>         <span style="color: #800080;">$rs</span>[&#39;seller_nick&#39;] = <span style="color: #008080;">urldecode</span>(<span style="color: #800080;">$nick</span>[1<span style="color: #000000;">]);</span><span style="color: #008080;"> 77</span>     }<span style="color: #0000ff;">elseif</span>(<span style="color: #008080;">preg_match</span>(&#39;/sellerNick\s*:\s*&quot;(.*?)&quot;,/&#39;,<span style="color: #800080;">$content</span>,<span style="color: #800080;">$nick</span><span style="color: #000000;">)){</span><span style="color: #008080;"> 78</span>         <span style="color: #800080;">$rs</span>[&#39;seller_nick&#39;] = <span style="color: #800080;">$nick</span>[1<span style="color: #000000;">];</span><span style="color: #008080;"> 79</span> <span style="color: #000000;"> &nbsp; &nbsp;}</span><span style="color: #008080;"> 80</span>     <span style="color: #0000ff;">if</span>(<span style="color: #008080;">preg_match</span>(&#39;/shopId:&quot;(\d+?)&quot;,/&#39;,<span style="color: #800080;">$content</span>,<span style="color: #800080;">$shopid</span><span style="color: #000000;">)){</span><span style="color: #008080;"> 81</span>         <span style="color: #800080;">$rs</span>[&#39;taobao_shop_id&#39;]=<span style="color: #800080;">$shopid</span>[1<span style="color: #000000;">];</span><span style="color: #008080;"> 82</span>     }<span style="color: #0000ff;">elseif</span>(<span style="color: #008080;">preg_match</span>(&#39;/&amp;shopId=(\d+)&amp;/&#39;,<span style="color: #800080;">$content</span>,<span style="color: #800080;">$shopid</span><span style="color: #000000;">)){</span><span style="color: #008080;"> 83</span>         <span style="color: #800080;">$rs</span>[&#39;taobao_shop_id&#39;]=<span style="color: #800080;">$shopid</span>[1<span style="color: #000000;">];</span><span style="color: #008080;"> 84</span> <span style="color: #000000;"> &nbsp; &nbsp;}</span><span style="color: #008080;"> 85</span>     <span style="color: #0000ff;">if</span>(<span style="color: #008080;">preg_match</span>(&quot;/&#39;categoryId&#39;\s*:\s*&#39;(\d+?)&#39;,/&quot;,<span style="color: #800080;">$content</span>,<span style="color: #800080;">$cid</span><span style="color: #000000;">)){</span><span style="color: #008080;"> 86</span>         <span style="color: #800080;">$rs</span>[&#39;taobao_cid&#39;] = (<span style="color: #0000ff;">float</span>)<span style="color: #800080;">$cid</span>[1<span style="color: #000000;">];</span><span style="color: #008080;"> 87</span>     }<span style="color: #0000ff;">elseif</span>(<span style="color: #008080;">preg_match</span>(&#39;/&quot;categoryId&quot;\s*:\s*&quot;(\d+?)&quot;,/&#39;,<span style="color: #800080;">$content</span>,<span style="color: #800080;">$cid</span><span style="color: #000000;">)){</span><span style="color: #008080;"> 88</span>         <span style="color: #800080;">$rs</span>[&#39;taobao_cid&#39;] = (<span style="color: #0000ff;">float</span>)<span style="color: #800080;">$cid</span>[1<span style="color: #000000;">];</span><span style="color: #008080;"> 89</span>     }<span style="color: #0000ff;">elseif</span>(<span style="color: #008080;">preg_match</span>(&quot;/\scid:&#39;(\d+?)&#39;,/&quot;,<span style="color: #800080;">$content</span>,<span style="color: #800080;">$cid</span><span style="color: #000000;">)){</span><span style="color: #008080;"> 90</span>         <span style="color: #800080;">$rs</span>[&#39;taobao_cid&#39;] = (<span style="color: #0000ff;">float</span>)<span style="color: #800080;">$cid</span>[1<span style="color: #000000;">];</span><span style="color: #008080;"> 91</span> <span style="color: #000000;"> &nbsp; &nbsp;}</span><span style="color: #008080;"> 92</span>     <span style="color: #0000ff;">if</span><span style="color: #000000;">(OTHER){</span><span style="color: #008080;"> 93</span>         <span style="color: #0000ff;">if</span>(<span style="color: #008080;">preg_match</span>(&#39;/tmall\.com/&#39;,<span style="color: #800080;">$lastredirectaddr</span><span style="color: #000000;">)){</span><span style="color: #008080;"> 94</span>             <span style="color: #0000ff;">if</span>(<span style="color: #008080;">preg_match</span>(&#39;/slogo-shopname.*?&gt;(.*?)&lt;\/a&gt;/&#39;,<span style="color: #800080;">$content</span>,<span style="color: #800080;">$shopname</span><span style="color: #000000;">)){</span><span style="color: #008080;"> 95</span>                 <span style="color: #800080;">$rs</span>[&#39;shop_name&#39;]=json_decode(&#39;&quot;&#39;.<span style="color: #800080;">$shopname</span>[1].&#39;&quot;&#39;<span style="color: #000000;">);</span><span style="color: #008080;"> 96</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</span><span style="color: #008080;"> 97</span>             <span style="color: #0000ff;">if</span>(<span style="color: #0000ff;">empty</span>(<span style="color: #800080;">$rs</span>[&#39;shop_name&#39;])&amp;&amp;!<span style="color: #0000ff;">empty</span>(<span style="color: #800080;">$shopname</span>[1])) <span style="color: #800080;">$rs</span>[&#39;shop_name&#39;]=<span style="color: #800080;">$shopname</span>[1<span style="color: #000000;">]; 
</span><span style="color: #008080;"> 98</span>             <span style="color: #0000ff;">if</span>(<span style="color: #0000ff;">empty</span>(<span style="color: #800080;">$rs</span>[&#39;shop_name&#39;])&amp;&amp;!<span style="color: #0000ff;">empty</span>(<span style="color: #800080;">$rs</span>[&#39;seller_nick&#39;])) <span style="color: #800080;">$rs</span>[&#39;shop_name&#39;]=<span style="color: #800080;">$rs</span>[&#39;seller_nick&#39;<span style="color: #000000;">];</span><span style="color: #008080;"> 99</span>             <span style="color: #800080;">$url2</span>=&#39;http://mdskip.taobao.com/core/initItemDetail.htm?itemId=&#39;.<span style="color: #800080;">$id</span><span style="color: #000000;">;</span><span style="color: #008080;">100</span>             <span style="color: #800080;">$tmall_info</span> = curls(<span style="color: #800080;">$url2</span><span style="color: #000000;">);</span><span style="color: #008080;">101</span>             <span style="color: #008080;">preg_match</span>(&#39;/&quot;sellCount&quot;\s*:\s*(\d+)/&#39;,<span style="color: #800080;">$tmall_info</span>,<span style="color: #800080;">$temp</span><span style="color: #000000;">);</span><span style="color: #008080;">102</span>             <span style="color: #0000ff;">if</span> (<span style="color: #800080;">$temp</span>[1]!=&#39;&#39;) <span style="color: #800080;">$rs</span>[&#39;sales&#39;]=<span style="color: #800080;">$temp</span>[1<span style="color: #000000;">];</span><span style="color: #008080;">103</span>             <span style="color: #800080;">$merchandis</span>=curls(&quot;http://dsr.rate.tmall.com/list_dsr_info.htm?callback=a&amp;itemId=&quot;.<span style="color: #800080;">$id</span><span style="color: #000000;">);</span><span style="color: #008080;">104</span>             <span style="color: #0000ff;">if</span>(<span style="color: #008080;">preg_match</span>(&#39;/gradeAvg&quot;\s*:\s*([0-9\.]+)/&#39;,<span style="color: #800080;">$merchandis</span>,<span style="color: #800080;">$m_t</span><span style="color: #000000;">))</span><span style="color: #008080;">105</span>                 <span style="color: #800080;">$rs</span>[&#39;merchandis_score&#39;]=<span style="color: #800080;">$m_t</span>[1<span style="color: #000000;">];</span><span style="color: #008080;">106</span>             <span style="color: #0000ff;">if</span>(<span style="color: #008080;">preg_match</span>(&#39;/rateTotal&quot;\s*:\s*([0-9]+)/&#39;,<span style="color: #800080;">$merchandis</span>,<span style="color: #800080;">$m_t2</span><span style="color: #000000;">))</span><span style="color: #008080;">107</span>                 <span style="color: #800080;">$rs</span>[&#39;merchandis_total&#39;]=<span style="color: #800080;">$m_t2</span>[1<span style="color: #000000;">];</span><span style="color: #008080;">108</span>         }<span style="color: #0000ff;">else</span><span style="color: #000000;">{</span><span style="color: #008080;">109</span>             <span style="color: #0000ff;">if</span>(<span style="color: #008080;">preg_match</span>(&#39;/shopName\s*:\s*&quot;(.*?)&quot;,/&#39;,<span style="color: #800080;">$content</span>,<span style="color: #800080;">$shopname</span><span style="color: #000000;">)){</span><span style="color: #008080;">110</span> <span style="color: #008080;">111</span>                 <span style="color: #800080;">$rs</span>[&#39;shop_name&#39;]=json_decode(&#39;&quot;&#39;.<span style="color: #800080;">$shopname</span>[1].&#39;&quot;&#39;<span style="color: #000000;">);</span><span style="color: #008080;">112</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</span><span style="color: #008080;">113</span>             <span style="color: #0000ff;">if</span>(<span style="color: #0000ff;">empty</span>(<span style="color: #800080;">$rs</span>[&#39;shop_name&#39;])&amp;&amp;!<span style="color: #0000ff;">empty</span>(<span style="color: #800080;">$rs</span>[&#39;seller_nick&#39;])) <span style="color: #800080;">$rs</span>[&#39;shop_name&#39;]=<span style="color: #800080;">$rs</span>[&#39;seller_nick&#39;<span style="color: #000000;">];</span><span style="color: #008080;">114</span>             <span style="color: #0000ff;">if</span>(<span style="color: #008080;">preg_match</span>(&#39;/sellerId\s*:\s*&quot;(.*?)&quot;/&#39;,<span style="color: #800080;">$content</span>,<span style="color: #800080;">$sellerid</span>)||<span style="color: #008080;">preg_match</span>(&#39;/userId\&#39;:\&#39;(\d+)\&#39;/&#39;,<span style="color: #800080;">$content</span>,<span style="color: #800080;">$sellerid</span><span style="color: #000000;">)){</span><span style="color: #008080;">115</span>                 <span style="color: #800080;">$sellerid</span> = <span style="color: #800080;">$sellerid</span>[1<span style="color: #000000;">];</span><span style="color: #008080;">116</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</span><span style="color: #008080;">117</span>             <span style="color: #0000ff;">if</span>(<span style="color: #008080;">preg_match</span>(&#39;/sbn=([0-9a-z]+)/&#39;,<span style="color: #800080;">$content</span>,<span style="color: #800080;">$sbn</span><span style="color: #000000;">))</span><span style="color: #008080;">118</span>                 <span style="color: #800080;">$sbn</span>=<span style="color: #800080;">$sbn</span>[1<span style="color: #000000;">];</span><span style="color: #008080;">119</span>             <span style="color: #800080;">$url2</span>=&#39;http://detailskip.taobao.com/json/ifq.htm?id=&#39;.<span style="color: #800080;">$id</span>.&#39;&amp;sid=&#39;.<span style="color: #800080;">$sellerid</span>.&#39;&amp;sbn=&#39;.<span style="color: #800080;">$sbn</span>.&#39;&amp;q=1&amp;callback=a&#39;<span style="color: #000000;">;</span><span style="color: #008080;">120</span>             <span style="color: #800080;">$count_rs</span> = curls(<span style="color: #800080;">$url2</span><span style="color: #000000;">);</span><span style="color: #008080;">121</span>             <span style="color: #008080;">preg_match</span>(&#39;/quanity\s*:\s*(\d+)/&#39;,<span style="color: #800080;">$count_rs</span>,<span style="color: #800080;">$temp</span><span style="color: #000000;">);</span><span style="color: #008080;">122</span>             <span style="color: #0000ff;">if</span> (<span style="color: #800080;">$temp</span>[1]!=&#39;&#39;) <span style="color: #800080;">$rs</span>[&#39;sales&#39;]=<span style="color: #800080;">$temp</span>[1<span style="color: #000000;">];</span><span style="color: #008080;">123</span>             <span style="color: #800080;">$merchandis</span>=curls(&quot;http://rate.taobao.com/detail_rate.htm?userNumId=<span style="color: #800080;">$sellerid</span>&amp;auctionNumId=<span style="color: #800080;">$id</span>&amp;currentPage=1&amp;rateType=1&quot;<span style="color: #000000;">);</span><span style="color: #008080;">124</span>             <span style="color: #0000ff;">if</span>(<span style="color: #008080;">preg_match</span>(&#39;/merchandisScore&quot;\s*:\s*&quot;([0-9\.]+)/&#39;,<span style="color: #800080;">$merchandis</span>,<span style="color: #800080;">$m_t</span>)) <span style="color: #800080;">$rs</span>[&#39;merchandis_score&#39;]=<span style="color: #800080;">$m_t</span>[1<span style="color: #000000;">];</span><span style="color: #008080;">125</span>             <span style="color: #0000ff;">else</span> <span style="color: #800080;">$rs</span>[&#39;merchandis_score&#39;]=6<span style="color: #000000;">;</span><span style="color: #008080;">126</span>             <span style="color: #0000ff;">if</span>(<span style="color: #008080;">preg_match</span>(&#39;/merchandisTotal&quot;\s*:\s*([0-9]+)/&#39;,<span style="color: #800080;">$merchandis</span>,<span style="color: #800080;">$m_t</span>)) <span style="color: #800080;">$rs</span>[&#39;merchandis_total&#39;]=<span style="color: #800080;">$m_t</span>[1<span style="color: #000000;">];</span><span style="color: #008080;">127</span>             <span style="color: #0000ff;">else</span> <span style="color: #800080;">$rs</span>[&#39;merchandis_total&#39;]=0<span style="color: #000000;">;</span><span style="color: #008080;">128</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp;}</span><span style="color: #008080;">129</span> <span style="color: #000000;"> &nbsp; &nbsp;}</span><span style="color: #008080;">130</span>     <span style="color: #0000ff;">if</span>(!<span style="color: #800080;">$price</span><span style="color: #000000;">){</span><span style="color: #008080;">131</span>         <span style="color: #0000ff;">if</span>(!<span style="color: #0000ff;">isset</span>(<span style="color: #800080;">$tmall_info</span><span style="color: #000000;">)){</span><span style="color: #008080;">132</span>             <span style="color: #800080;">$url2</span>=&quot;http://mdskip.taobao.com/core/initItemDetail.htm?itemId=&quot;.<span style="color: #800080;">$id</span><span style="color: #000000;">;</span><span style="color: #008080;">133</span>             <span style="color: #800080;">$tmall_info</span>=curls(<span style="color: #800080;">$url2</span><span style="color: #000000;">);</span><span style="color: #008080;">134</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp;}</span><span style="color: #008080;">135</span>         <span style="color: #800080;">$price_content</span>=json_decode(<span style="color: #008080;">iconv</span>(&#39;gbk&#39;,&#39;utf-8&#39;,<span style="color: #008080;">preg_replace</span>(&#39;/(\d{10,}):/&#39;,&#39;&quot;${1}&quot;:&#39;,<span style="color: #800080;">$tmall_info</span>)),<span style="color: #0000ff;">true</span><span style="color: #000000;">);</span><span style="color: #008080;">136</span>         <span style="color: #800080;">$priceinfo</span>=<span style="color: #800080;">$price_content</span>[&#39;defaultModel&#39;][&#39;itemPriceResultDO&#39;][&#39;priceInfo&#39;<span style="color: #000000;">];</span><span style="color: #008080;">137</span>         <span style="color: #800080;">$price</span>=<span style="color: #0000ff;">array</span><span style="color: #000000;">();</span><span style="color: #008080;">138</span>         <span style="color: #0000ff;">if</span>(<span style="color: #008080;">is_array</span>(<span style="color: #800080;">$priceinfo</span><span style="color: #000000;">)){</span><span style="color: #008080;">139</span>             <span style="color: #0000ff;">foreach</span> (<span style="color: #800080;">$priceinfo</span> <span style="color: #0000ff;">as</span> <span style="color: #800080;">$v</span><span style="color: #000000;">){</span><span style="color: #008080;">140</span>                 <span style="color: #0000ff;">if</span>(<span style="color: #800080;">$v</span>[&#39;price&#39;]&gt;0<span style="color: #000000;">)</span><span style="color: #008080;">141</span>                     <span style="color: #800080;">$price</span>[]=<span style="color: #800080;">$v</span>[&#39;price&#39;<span style="color: #000000;">];</span><span style="color: #008080;">142</span>                 <span style="color: #0000ff;">if</span>(<span style="color: #008080;">is_array</span>(<span style="color: #800080;">$v</span>[&#39;promotionList&#39;<span style="color: #000000;">])){</span><span style="color: #008080;">143</span>                     <span style="color: #0000ff;">foreach</span> (<span style="color: #800080;">$v</span>[&#39;promotionList&#39;] <span style="color: #0000ff;">as</span> <span style="color: #800080;">$v2</span><span style="color: #000000;">){</span><span style="color: #008080;">144</span>                         <span style="color: #800080;">$p</span>=<span style="color: #800080;">$v2</span>[&#39;extraPromPrice&#39;]?<span style="color: #800080;">$v2</span>[&#39;extraPromPrice&#39;]:<span style="color: #800080;">$v2</span>[&#39;price&#39;<span style="color: #000000;">];</span><span style="color: #008080;">145</span>                         <span style="color: #0000ff;">if</span>(<span style="color: #800080;">$p</span>&gt;0) <span style="color: #800080;">$price</span>[]=<span style="color: #800080;">$p</span><span style="color: #000000;">;</span><span style="color: #008080;">146</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</span><span style="color: #008080;">147</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</span><span style="color: #008080;">148</span>                 <span style="color: #0000ff;">if</span>(<span style="color: #008080;">is_array</span>(<span style="color: #800080;">$v</span>[&#39;suggestivePromotionList&#39;<span style="color: #000000;">])){</span><span style="color: #008080;">149</span>                     <span style="color: #0000ff;">foreach</span> (<span style="color: #800080;">$v</span>[&#39;suggestivePromotionList&#39;] <span style="color: #0000ff;">as</span> <span style="color: #800080;">$v2</span><span style="color: #000000;">){</span><span style="color: #008080;">150</span>                         <span style="color: #800080;">$p</span>=<span style="color: #800080;">$v2</span>[&#39;extraPromPrice&#39;]?<span style="color: #800080;">$v2</span>[&#39;extraPromPrice&#39;]:<span style="color: #800080;">$v2</span>[&#39;price&#39;<span style="color: #000000;">];</span><span style="color: #008080;">151</span>                         <span style="color: #0000ff;">if</span>(<span style="color: #800080;">$p</span>&gt;0) <span style="color: #800080;">$price</span>[]=<span style="color: #800080;">$p</span><span style="color: #000000;">;</span><span style="color: #008080;">152</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</span><span style="color: #008080;">153</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</span><span style="color: #008080;">154</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</span><span style="color: #008080;">155</span> <span style="color: #000000;"> &nbsp; &nbsp; &nbsp; &nbsp;}</span><span style="color: #008080;">156</span>         <span style="color: #800080;">$price</span>=<span style="color: #008080;">count</span>(<span style="color: #800080;">$price</span>)&gt;0?<span style="color: #008080;">min</span>(<span style="color: #800080;">$price</span>):<span style="color: #0000ff;">false</span><span style="color: #000000;">;</span><span style="color: #008080;">157</span> <span style="color: #000000;"> &nbsp; &nbsp;}</span><span style="color: #008080;">158</span>     <span style="color: #800080;">$rs</span>[&#39;price&#39;]=<span style="color: #800080;">$price</span><span style="color: #000000;">;</span><span style="color: #008080;">159</span>     <span style="color: #0000ff;">if</span>(<span style="color: #008080;">count</span>(<span style="color: #800080;">$rs</span>)) <span style="color: #0000ff;">return</span> <span style="color: #800080;">$rs</span><span style="color: #000000;">;</span><span style="color: #008080;">160</span>     <span style="color: #0000ff;">else</span> <span style="color: #0000ff;">return</span> <span style="color: #0000ff;">false</span><span style="color: #000000;">;</span><span style="color: #008080;">161</span> <span style="color: #000000;">}</span><span style="color: #008080;">162</span> <span style="color: #0000ff;">function</span> curls(<span style="color: #800080;">$url</span>,<span style="color: #800080;">$lastredirectaddr</span>=<span style="color: #0000ff;">false</span>,<span style="color: #800080;">$head</span>=<span style="color: #0000ff;">false</span>,<span style="color: #800080;">$times</span>=1<span style="color: #000000;">){</span><span style="color: #008080;">163</span>     <span style="color: #800080;">$ch</span> =<span style="color: #000000;"> curl_init();</span><span style="color: #008080;">164</span>     curl_setopt(<span style="color: #800080;">$ch</span>, CURLOPT_USERAGENT,&#39;Mozilla/5.0 (Windows NT 6.2; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0&#39;<span style="color: #000000;">);</span><span style="color: #008080;">165</span>     curl_setopt(<span style="color: #800080;">$ch</span>, CURLOPT_REFERER,&#39;http://www.tmall.com/&#39;<span style="color: #000000;">);</span><span style="color: #008080;">166</span>     curl_setopt(<span style="color: #800080;">$ch</span>, CURLOPT_FOLLOWLOCATION,1<span style="color: #000000;">);</span><span style="color: #008080;">167</span>     curl_setopt(<span style="color: #800080;">$ch</span>, CURLOPT_RETURNTRANSFER, 1);<span style="color: #008000;">//</span><span style="color: #008000;">设置输出方式, 0为自动输出返回的内容, 1为返回输出的内容,但不自动输出.</span><span style="color: #008080;">168</span>     curl_setopt(<span style="color: #800080;">$ch</span>, CURLOPT_CONNECTTIMEOUT, 30); <span style="color: #008000;">//</span><span style="color: #008000;">timeout on connect</span><span style="color: #008080;">169</span>     curl_setopt(<span style="color: #800080;">$ch</span>, CURLOPT_TIMEOUT, 30); <span style="color: #008000;">//</span><span style="color: #008000;">timeout on response</span><span style="color: #008080;">170</span>     curl_setopt(<span style="color: #800080;">$ch</span>, CURLOPT_HEADER, <span style="color: #800080;">$head</span>);<span style="color: #008000;">//</span><span style="color: #008000;">是否输出头信息，0为不输出，非零则输出</span><span style="color: #008080;">171</span>     curl_setopt(<span style="color: #800080;">$ch</span>, CURLOPT_MAXREDIRS, 50<span style="color: #000000;"> );</span><span style="color: #008080;">172</span>     curl_setopt(<span style="color: #800080;">$ch</span>, CURLOPT_URL, <span style="color: #800080;">$url</span><span style="color: #000000;">);</span><span style="color: #008080;">173</span>     <span style="color: #800080;">$count_rs</span> = curl_exec(<span style="color: #800080;">$ch</span><span style="color: #000000;">);</span><span style="color: #008080;">174</span>     <span style="color: #0000ff;">if</span>(<span style="color: #800080;">$count_rs</span> === <span style="color: #0000ff;">false</span><span style="color: #000000;">){</span><span style="color: #008080;">175</span>         <span style="color: #0000ff;">echo</span> &#39;Curl error: &#39; . curl_error(<span style="color: #800080;">$ch</span>).&quot;\n&quot;<span style="color: #000000;">;</span><span style="color: #008080;">176</span>         <span style="color: #0000ff;">exit</span><span style="color: #000000;">; &nbsp; &nbsp;</span><span style="color: #008080;">177</span> <span style="color: #000000;"> &nbsp; &nbsp;}</span><span style="color: #008080;">178</span>     <span style="color: #0000ff;">if</span>(<span style="color: #800080;">$lastredirectaddr</span>) <span style="color: #800080;">$count_rs</span>=<span style="color: #0000ff;">array</span>(&#39;content&#39;=&gt;<span style="color: #800080;">$count_rs</span>,&#39;lastredirectaddr&#39;=&gt;curl_getinfo(<span style="color: #800080;">$ch</span>,<span style="color: #000000;">CURLINFO_EFFECTIVE_URL));</span><span style="color: #008080;">179</span>     curl_close(<span style="color: #800080;">$ch</span><span style="color: #000000;">);</span><span style="color: #008080;">180</span>     <span style="color: #0000ff;">if</span>(<span style="color: #800080;">$count_rs</span>!=&#39;&#39;||<span style="color: #800080;">$count_rs</span>[&#39;content&#39;]!=&#39;&#39;) <span style="color: #0000ff;">return</span> <span style="color: #800080;">$count_rs</span><span style="color: #000000;">;</span><span style="color: #008080;">181</span>     <span style="color: #0000ff;">elseif</span>(<span style="color: #800080;">$times</span>&lt;3) <span style="color: #0000ff;">return</span> curls(<span style="color: #800080;">$url</span>,<span style="color: #800080;">$lastredirectaddr</span>,<span style="color: #800080;">$head</span>,<span style="color: #800080;">$times</span>+1<span style="color: #000000;">);</span><span style="color: #008080;">182</span>     <span style="color: #0000ff;">else</span> <span style="color: #0000ff;">return</span> <span style="color: #0000ff;">false</span><span style="color: #000000;">;</span><span style="color: #008080;">183</span> }</pre><p><span class="cnblogs_code_copy"><a title="复制代码"><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码"/></a></span></p><p>程序执行结果:</p><p><span class="cnblogs_code_copy"><a title="复制代码"><img src="http://common.cnblogs.com/images/copycode.gif" alt="复制代码"/></a></span></p><pre><span style="color: #008080;"> 1</span> <span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-04-28 12:55:17</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">36656</span>,<span style="color: #800080;">0.967</span>,<span style="color: #800080;">200.00</span>,<span style="color: #800080;">200.00</span>,力挺服饰专营店,<span style="color: #800080;">71777969</span>,力挺服饰专营店,<span style="color: #800080;">0</span>,<span style="color: #800080;">162201</span>,<span style="color: #800080;">0.0</span>,<span style="color: #800080;">0</span><span style="color: #008080;"> 2</span> <span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-04-28 12:55:17</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">36657</span>,<span style="color: #800080;">1.018</span>,<span style="color: #800080;">250.00</span>,<span style="color: #800080;">250.00</span>,力挺服饰专营店,<span style="color: #800080;">71777969</span>,力挺服饰专营店,<span style="color: #800080;">3</span>,<span style="color: #800080;">50008897</span>,<span style="color: #800080;">5.0</span>,<span style="color: #800080;">4</span><span style="color: #008080;"> 3</span> <span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-04-28 12:55:17</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">36655</span>,<span style="color: #800080;">1.001</span>,<span style="color: #800080;">189.00</span>,<span style="color: #800080;">189.00</span>,兴铭服饰专营店,<span style="color: #800080;">104640942</span>,兴铭服饰专营店,<span style="color: #800080;">0</span>,<span style="color: #800080;">162205</span>,<span style="color: #800080;">0.0</span>,<span style="color: #800080;">0</span><span style="color: #008080;"> 4</span> <span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-04-28 12:55:17</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">36654</span>,<span style="color: #800080;">0.979</span>,<span style="color: #800080;">500.00</span>,<span style="color: #800080;">500.00</span>,力挺服饰专营店,<span style="color: #800080;">71777969</span>,力挺服饰专营店,<span style="color: #800080;">1</span>,<span style="color: #800080;">50008900</span>,<span style="color: #800080;">5.0</span>,<span style="color: #800080;">1</span><span style="color: #008080;"> 5</span> <span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-04-28 12:55:17</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">36653</span>,<span style="color: #800080;">0.982</span>,<span style="color: #800080;">150.00</span>,<span style="color: #800080;">150.00</span>,力挺服饰专营店,<span style="color: #800080;">71777969</span>,力挺服饰专营店,<span style="color: #800080;">0</span>,<span style="color: #800080;">50000697</span>,<span style="color: #800080;">5.0</span>,<span style="color: #800080;">2</span><span style="color: #008080;"> 6</span> <span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-04-28 12:55:17</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">36650</span>,<span style="color: #800080;">0.874</span>,<span style="color: #800080;">138.00</span>,<span style="color: #800080;">138</span>,美品坊,<span style="color: #800080;">64228914</span>,精致女装美品坊,<span style="color: #800080;">1</span>,<span style="color: #800080;">162205</span>,<span style="color: #800080;">6</span>,<span style="color: #800080;">0</span><span style="color: #008080;"> 7</span> <span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-04-28 12:55:17</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">36652</span>,<span style="color: #800080;">1.008</span>,<span style="color: #800080;">229.00</span>,<span style="color: #800080;">229.00</span>,兴铭服饰专营店,<span style="color: #800080;">104640942</span>,兴铭服饰专营店,<span style="color: #800080;">0</span>,<span style="color: #800080;">50011277</span>,<span style="color: #800080;">0.0</span>,<span style="color: #800080;">0</span><span style="color: #008080;"> 8</span> <span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-04-28 12:55:17</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">36647</span>,<span style="color: #800080;">0.962</span>,<span style="color: #800080;">259.00</span>,<span style="color: #800080;">259.00</span>,爱购叁陆陆服饰专营店,<span style="color: #800080;">102120067</span>,爱购叁陆陆服饰专营店,<span style="color: #800080;">0</span>,<span style="color: #800080;">162205</span>,<span style="color: #800080;">0.0</span>,<span style="color: #800080;">0</span><span style="color: #008080;"> 9</span> <span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-04-28 12:55:17</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">36648</span>,<span style="color: #800080;">1.017</span>,<span style="color: #800080;">273.42</span>,<span style="color: #800080;">273.42</span>,力挺服饰专营店,<span style="color: #800080;">71777969</span>,力挺服饰专营店,<span style="color: #800080;">0</span>,<span style="color: #800080;">50000697</span>,<span style="color: #800080;">0.0</span>,<span style="color: #800080;">0</span><span style="color: #008080;">10</span> <span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-04-28 12:55:17</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">36645</span>,<span style="color: #800080;">0.961</span>,<span style="color: #800080;">646.80</span>,<span style="color: #800080;">646.80</span>,羽戈旗舰店,<span style="color: #800080;">100216434</span>,羽戈旗舰店,<span style="color: #800080;">0</span>,<span style="color: #800080;">50008779</span>,<span style="color: #800080;">4.7</span>,<span style="color: #800080;">29</span><span style="color: #008080;">11</span> <span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-04-28 12:55:17</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">36646</span>,<span style="color: #800080;">1.011</span>,<span style="color: #800080;">239.00</span>,<span style="color: #800080;">239.00</span>,兴铭服饰专营店,<span style="color: #800080;">104640942</span>,兴铭服饰专营店,<span style="color: #800080;">0</span>,<span style="color: #800080;">162205</span>,<span style="color: #800080;">0.0</span>,<span style="color: #800080;">0</span><span style="color: #008080;">12</span> <span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-04-28 12:55:17</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">36644</span>,<span style="color: #800080;">1.009</span>,<span style="color: #800080;">235.12</span>,<span style="color: #800080;">235.12</span>,恋尚妮家纺旗舰店,<span style="color: #800080;">67154794</span>,恋尚妮家纺旗舰店,<span style="color: #800080;">38</span>,<span style="color: #800080;">50008779</span>,<span style="color: #800080;">4.5</span>,<span style="color: #800080;">795</span><span style="color: #008080;">13</span> <span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-04-28 12:55:17</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">36643</span>,<span style="color: #800080;">0.968</span>,<span style="color: #800080;">320.68</span>,<span style="color: #800080;">320.68</span>,恋尚妮家纺旗舰店,<span style="color: #800080;">67154794</span>,恋尚妮家纺旗舰店,<span style="color: #800080;">143</span>,<span style="color: #800080;">50008779</span>,<span style="color: #800080;">4.8</span>,<span style="color: #800080;">2342</span><span style="color: #008080;">14</span> <span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-04-28 12:55:17</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">36641</span>,<span style="color: #800080;">0.946</span>,<span style="color: #800080;">19.50</span>,<span style="color: #800080;">19.50</span>,淘公馆数码专营店,<span style="color: #800080;">105992505</span>,淘公馆数码专营店,<span style="color: #800080;">0</span>,<span style="color: #800080;">50018926</span>,<span style="color: #800080;">4.6</span>,<span style="color: #800080;">15708</span><span style="color: #008080;">15</span> <span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-04-28 12:55:17</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">36642</span>,<span style="color: #800080;">0.985</span>,<span style="color: #800080;">482.92</span>,<span style="color: #800080;">482.92</span>,恋尚妮家纺旗舰店,<span style="color: #800080;">67154794</span>,恋尚妮家纺旗舰店,<span style="color: #800080;">80</span>,<span style="color: #800080;">50008779</span>,<span style="color: #800080;">4.8</span>,<span style="color: #800080;">493</span><span style="color: #008080;">16</span> <span style="color: #800000;">&quot;</span><span style="color: #800000;">2014-04-28 12:55:17</span><span style="color: #800000;">&quot;</span>,<span style="color: #800080;">36640</span>,<span style="color: #800080;">0.968</span>,<span style="color: #800080;">125.00</span>,<span style="color: #800080;">128.00</span>,忆红妆旗舰店,<span style="color: #800080;">64376787</span>,忆红妆旗舰店,','
			Linux C程序操作Mysql 调用PHP采集淘宝商品
		
		还是继续这个项目。在上一篇Linux下利用Shell使PHP并发采集淘宝产品中，采用shell将对PHP的调用推到后台执行，模拟多线程。此方法有一致命缺点，只','1406191260','1406191260','64','1','1','0','','0','0','1','0');


# 转存表中的数据：tp_attachment 


# 转存表中的数据：tp_attachmentindex 


# 转存表中的数据：tp_block 


# 转存表中的数据：tp_category 
INSERT INTO `tp_category` VALUES ('1','文章','wenzhang','0','1','0','','','','','List_article.html','Show_article.html','','1','1');
INSERT INTO `tp_category` VALUES ('2','爱好','aihao','0','1','0','','','','','List_index.html','Show_article.html','','1','1');
INSERT INTO `tp_category` VALUES ('3','CODE','CODE','0','1','0','','','','','List_code.html','Show_article.html','','1','1');
INSERT INTO `tp_category` VALUES ('4','美文','meiwen','0','1','0','美文欣赏','美文欣赏','','','List_article.html','Show_article.html','','1','1');
INSERT INTO `tp_category` VALUES ('5','图片','tupian','0','4','0','','','','','List_picture.html','Show_picture.html','','1','1');


# 转存表中的数据：tp_comment 


# 转存表中的数据：tp_copyfrom 


# 转存表中的数据：tp_guestbook 


# 转存表中的数据：tp_itemgroup 
INSERT INTO `tp_itemgroup` VALUES ('1','flagtype','文档属性','0');
INSERT INTO `tp_itemgroup` VALUES ('2','blocktype','自由块类别','0');
INSERT INTO `tp_itemgroup` VALUES ('3','softtype','软件类型','0');
INSERT INTO `tp_itemgroup` VALUES ('4','softlanguage','软件语言','0');
INSERT INTO `tp_itemgroup` VALUES ('5','star','星座','0');
INSERT INTO `tp_itemgroup` VALUES ('6','animal','生肖','0');
INSERT INTO `tp_itemgroup` VALUES ('7','education','教育程度','0');


# 转存表中的数据：tp_iteminfo 
INSERT INTO `tp_iteminfo` VALUES ('1','图片','flagtype','1','0','0');
INSERT INTO `tp_iteminfo` VALUES ('2','头条','flagtype','2','0','0');
INSERT INTO `tp_iteminfo` VALUES ('3','推荐','flagtype','4','0','0');
INSERT INTO `tp_iteminfo` VALUES ('4','特荐','flagtype','8','0','0');
INSERT INTO `tp_iteminfo` VALUES ('5','幻灯','flagtype','16','0','0');
INSERT INTO `tp_iteminfo` VALUES ('6','跳转','flagtype','32','0','0');
INSERT INTO `tp_iteminfo` VALUES ('7','其他','flagtype','64','0','0');
INSERT INTO `tp_iteminfo` VALUES ('8','文字','blocktype','1','0','0');
INSERT INTO `tp_iteminfo` VALUES ('9','图片','blocktype','2','0','0');
INSERT INTO `tp_iteminfo` VALUES ('10','丰富','blocktype','3','0','0');
INSERT INTO `tp_iteminfo` VALUES ('11','国产','softtype','1','0','0');
INSERT INTO `tp_iteminfo` VALUES ('12','中文版','softlanguage','1','0','0');
INSERT INTO `tp_iteminfo` VALUES ('13','英文版','softlanguage','2','0','0');
INSERT INTO `tp_iteminfo` VALUES ('14','多语言版','softlanguage','3','0','0');
INSERT INTO `tp_iteminfo` VALUES ('15','白羊座','star','1','0','0');
INSERT INTO `tp_iteminfo` VALUES ('16','金牛座','star','2','0','0');
INSERT INTO `tp_iteminfo` VALUES ('17','双子座','star','3','0','0');
INSERT INTO `tp_iteminfo` VALUES ('18','巨蟹座','star','4','0','0');
INSERT INTO `tp_iteminfo` VALUES ('19','狮子座','star','5','0','0');
INSERT INTO `tp_iteminfo` VALUES ('20','处女座','star','6','0','0');
INSERT INTO `tp_iteminfo` VALUES ('21','天枰座','star','7','0','0');
INSERT INTO `tp_iteminfo` VALUES ('22','天蝎座','star','8','0','0');
INSERT INTO `tp_iteminfo` VALUES ('23','射手座','star','9','0','0');
INSERT INTO `tp_iteminfo` VALUES ('24','摩羯座','star','10','0','0');
INSERT INTO `tp_iteminfo` VALUES ('25','水瓶座','star','11','0','0');
INSERT INTO `tp_iteminfo` VALUES ('26','双鱼座','star','12','0','0');
INSERT INTO `tp_iteminfo` VALUES ('27','鼠','animal','1','0','0');
INSERT INTO `tp_iteminfo` VALUES ('28','牛','animal','2','0','0');
INSERT INTO `tp_iteminfo` VALUES ('29','虎','animal','3','0','0');
INSERT INTO `tp_iteminfo` VALUES ('30','兔','animal','4','0','0');
INSERT INTO `tp_iteminfo` VALUES ('31','龙','animal','5','0','0');
INSERT INTO `tp_iteminfo` VALUES ('32','蛇','animal','6','0','0');
INSERT INTO `tp_iteminfo` VALUES ('33','马','animal','7','0','0');
INSERT INTO `tp_iteminfo` VALUES ('34','羊','animal','8','0','0');
INSERT INTO `tp_iteminfo` VALUES ('35','猴','animal','9','0','0');
INSERT INTO `tp_iteminfo` VALUES ('36','鸡','animal','10','0','0');
INSERT INTO `tp_iteminfo` VALUES ('37','狗','animal','11','0','0');
INSERT INTO `tp_iteminfo` VALUES ('38','猪','animal','12','0','0');
INSERT INTO `tp_iteminfo` VALUES ('39','小学','education','1','0','0');
INSERT INTO `tp_iteminfo` VALUES ('40','初中','education','2','0','0');
INSERT INTO `tp_iteminfo` VALUES ('41','高中/中专','education','3','0','0');
INSERT INTO `tp_iteminfo` VALUES ('42','大学专科','education','4','0','0');
INSERT INTO `tp_iteminfo` VALUES ('43','大学本科','education','5','0','0');
INSERT INTO `tp_iteminfo` VALUES ('44','硕士','education','6','0','0');
INSERT INTO `tp_iteminfo` VALUES ('45','博士以上','education','7','0','0');


# 转存表中的数据：tp_link 
INSERT INTO `tp_link` VALUES ('1','阳阳CMS','http://www.0871k.com','','','0','1396255203','1');
INSERT INTO `tp_link` VALUES ('2','许愿网','http://www.yuanabc.com','','','0','1396255203','1');


# 转存表中的数据：tp_member 


# 转存表中的数据：tp_memberdetail 


# 转存表中的数据：tp_membergroup 
INSERT INTO `tp_membergroup` VALUES ('1','初级会员','','0','0');
INSERT INTO `tp_membergroup` VALUES ('2','中级会员','','0','0');


# 转存表中的数据：tp_model 
INSERT INTO `tp_model` VALUES ('1','文章模型','','article','1','','List_article.html','Show_article.html','1');
INSERT INTO `tp_model` VALUES ('2','单页模型','','page','1','','List_page.html','Show_page.html','2');
INSERT INTO `tp_model` VALUES ('3','产品模型','','product','1','','List_product.html','Show_product.html','3');
INSERT INTO `tp_model` VALUES ('4','图片模型','','picture','1','','List_picture.html','Show_picture.html','4');
INSERT INTO `tp_model` VALUES ('5','软件下载模块','','soft','1','','List_soft.html','Show_soft.html','5');


# 转存表中的数据：tp_node 
INSERT INTO `tp_node` VALUES ('1','Manage','后台应用','1','','1','0','1');
INSERT INTO `tp_node` VALUES ('2','Rbac','用户权限管理','1','','1','1','2');
INSERT INTO `tp_node` VALUES ('3','index','用户列表','1','','1','2','3');
INSERT INTO `tp_node` VALUES ('4','addUser','添加用户','1','','2','2','3');
INSERT INTO `tp_node` VALUES ('5','editUser','编辑用户','1','','3','2','3');
INSERT INTO `tp_node` VALUES ('6','delUser','删除用户','1','','4','2','3');
INSERT INTO `tp_node` VALUES ('7','Index','前台应用','1','','2','0','1');
INSERT INTO `tp_node` VALUES ('8','role','用户组列表','1','','5','2','3');
INSERT INTO `tp_node` VALUES ('9','addRole','添加用户组','1','','6','2','3');
INSERT INTO `tp_node` VALUES ('10','editRole','编辑用户组','1','','7','2','3');
INSERT INTO `tp_node` VALUES ('11','delRole','删除用户组','1','','8','2','3');
INSERT INTO `tp_node` VALUES ('12','access','权限管理','1','','9','2','3');
INSERT INTO `tp_node` VALUES ('13','node','节点列表','0','','10','2','3');
INSERT INTO `tp_node` VALUES ('14','addNode','添加节点','0','','11','2','3');
INSERT INTO `tp_node` VALUES ('15','editNode','编辑节点','0','','12','2','3');
INSERT INTO `tp_node` VALUES ('16','delNode','删除节点','0','','13','2','3');
INSERT INTO `tp_node` VALUES ('17','System','系统设置','1','','2','1','2');
INSERT INTO `tp_node` VALUES ('18','site','网站设置','1','','1','17','3');
INSERT INTO `tp_node` VALUES ('19','Model','模型管理','1','','3','1','2');
INSERT INTO `tp_node` VALUES ('20','index','模型列表','1','','1','19','3');
INSERT INTO `tp_node` VALUES ('21','add','添加模型','1','','2','19','3');
INSERT INTO `tp_node` VALUES ('22','edit','模型修改','1','','3','19','3');
INSERT INTO `tp_node` VALUES ('23','del','删除模型','1','','4','19','3');
INSERT INTO `tp_node` VALUES ('24','sort','更新排序','1','','5','19','3');
INSERT INTO `tp_node` VALUES ('25','Category','栏目管理','1','','4','1','2');
INSERT INTO `tp_node` VALUES ('26','index','栏目列表','1','','1','25','3');
INSERT INTO `tp_node` VALUES ('27','add','添加栏目','1','','2','25','3');
INSERT INTO `tp_node` VALUES ('28','edit','修改栏目','1','','3','25','3');
INSERT INTO `tp_node` VALUES ('29','del','删除栏目','1','','4','25','3');
INSERT INTO `tp_node` VALUES ('30','sort','更新栏目排序','1','','5','25','3');
INSERT INTO `tp_node` VALUES ('31','Member','会员管理','1','','5','1','2');
INSERT INTO `tp_node` VALUES ('32','index','会员列表','1','','1','31','3');
INSERT INTO `tp_node` VALUES ('33','add','添加会员','1','','2','31','3');
INSERT INTO `tp_node` VALUES ('34','edit','编辑会员','1','','3','31','3');
INSERT INTO `tp_node` VALUES ('35','del','删除会员','1','','4','31','3');
INSERT INTO `tp_node` VALUES ('36','Membergroup','会员组管理','1','','6','1','2');
INSERT INTO `tp_node` VALUES ('37','index','会员组列表','1','','1','36','3');
INSERT INTO `tp_node` VALUES ('38','add','添加会员组','1','','2','36','3');
INSERT INTO `tp_node` VALUES ('39','edit','编辑会员组','1','','3','36','3');
INSERT INTO `tp_node` VALUES ('40','del','删除会员组','1','','4','36','3');
INSERT INTO `tp_node` VALUES ('41','Announce','公告管理','1','','7','1','2');
INSERT INTO `tp_node` VALUES ('42','index','公告列表','1','','1','41','3');
INSERT INTO `tp_node` VALUES ('43','add','添加公告','1','','2','41','3');
INSERT INTO `tp_node` VALUES ('44','edit','编辑公告','1','','3','41','3');
INSERT INTO `tp_node` VALUES ('45','del','删除公告','1','','4','41','3');
INSERT INTO `tp_node` VALUES ('46','Link','友情链接','1','','8','1','2');
INSERT INTO `tp_node` VALUES ('47','index','友情列表','1','','1','46','3');
INSERT INTO `tp_node` VALUES ('48','add','添加友情','1','','2','46','3');
INSERT INTO `tp_node` VALUES ('49','edit','编辑友情','1','','3','46','3');
INSERT INTO `tp_node` VALUES ('50','del','删除友情','1','','4','46','3');
INSERT INTO `tp_node` VALUES ('51','Guestbook','留言本管理','1','','9','1','2');
INSERT INTO `tp_node` VALUES ('52','index','留言本列表','1','','1','51','3');
INSERT INTO `tp_node` VALUES ('53','reply','回复留言','1','','2','51','3');
INSERT INTO `tp_node` VALUES ('54','del','删除留言','1','','3','51','3');
INSERT INTO `tp_node` VALUES ('55','clearCache','清除缓存','1','','2','17','3');
INSERT INTO `tp_node` VALUES ('56','Personal','我的账户','1','','10','1','2');
INSERT INTO `tp_node` VALUES ('57','index','修改资料','1','','1','56','3');
INSERT INTO `tp_node` VALUES ('58','pwd','修改密码','1','','2','56','3');
INSERT INTO `tp_node` VALUES ('59','Comment','评论管理','1','','10','1','2');
INSERT INTO `tp_node` VALUES ('60','index','评论列表','1','','1','59','3');
INSERT INTO `tp_node` VALUES ('61','edit','编辑评论','1','','2','59','3');
INSERT INTO `tp_node` VALUES ('62','del','删除评论','1','','3','59','3');
INSERT INTO `tp_node` VALUES ('63','Area','区域管理','1','','12','1','2');
INSERT INTO `tp_node` VALUES ('64','index','区域列表','1','','1','63','3');
INSERT INTO `tp_node` VALUES ('65','add','添加区域','1','','2','63','3');
INSERT INTO `tp_node` VALUES ('66','edit','编辑区域','1','','3','63','3');
INSERT INTO `tp_node` VALUES ('67','del','删除区域','1','','4','63','3');
INSERT INTO `tp_node` VALUES ('68','Itemgroup','联动组管理','1','','13','1','2');
INSERT INTO `tp_node` VALUES ('69','index','联动组列表','1','','1','68','3');
INSERT INTO `tp_node` VALUES ('70','add','添加联动组','1','','2','68','3');
INSERT INTO `tp_node` VALUES ('71','edit','编辑联动组','1','','3','68','3');
INSERT INTO `tp_node` VALUES ('72','del','删除联动组','1','','4','68','3');
INSERT INTO `tp_node` VALUES ('73','Iteminfo','联动管理','1','','14','1','2');
INSERT INTO `tp_node` VALUES ('74','index','联动列表','1','','1','73','3');
INSERT INTO `tp_node` VALUES ('75','add','添加联动','1','','2','73','3');
INSERT INTO `tp_node` VALUES ('76','edit','编辑联动','1','','3','73','3');
INSERT INTO `tp_node` VALUES ('77','del','删除联动','1','','4','73','3');
INSERT INTO `tp_node` VALUES ('78','sort','更新排序','1','','5','73','3');
INSERT INTO `tp_node` VALUES ('79','Special','专题管理','1','','15','1','2');
INSERT INTO `tp_node` VALUES ('80','index','专题列表','1','','1','79','3');
INSERT INTO `tp_node` VALUES ('81','add','添加专题','1','','2','79','3');
INSERT INTO `tp_node` VALUES ('82','edit','编辑专题','1','','3','79','3');
INSERT INTO `tp_node` VALUES ('83','del','删除专题','1','','4','79','3');
INSERT INTO `tp_node` VALUES ('84','trach','回收站','1','','5','79','3');
INSERT INTO `tp_node` VALUES ('85','restore','还原专题','1','','6','79','3');
INSERT INTO `tp_node` VALUES ('86','clear','彻底删除','1','','7','79','3');
INSERT INTO `tp_node` VALUES ('87','Block','自由块管理','1','','16','1','2');
INSERT INTO `tp_node` VALUES ('88','index','自由块列表','1','','1','87','3');
INSERT INTO `tp_node` VALUES ('89','add','添加自由块','1','','2','87','3');
INSERT INTO `tp_node` VALUES ('90','edit','编辑自由块','1','','3','87','3');
INSERT INTO `tp_node` VALUES ('91','del','删除自由块','1','','4','87','3');
INSERT INTO `tp_node` VALUES ('92','Database','数据库管理','1','','17','1','2');
INSERT INTO `tp_node` VALUES ('93','index','数据表列表','1','','1','92','3');
INSERT INTO `tp_node` VALUES ('94','backup','数据库备份','1','','2','92','3');
INSERT INTO `tp_node` VALUES ('95','optimize','数据表优化','1','','3','92','3');
INSERT INTO `tp_node` VALUES ('96','repair','数据表修复','1','','4','92','3');
INSERT INTO `tp_node` VALUES ('97','restore','还原管理','1','','5','92','3');
INSERT INTO `tp_node` VALUES ('98','restoreData','数据恢复','1','','6','92','3');
INSERT INTO `tp_node` VALUES ('99','delSqlFiles','删除文件','1','','7','92','3');
INSERT INTO `tp_node` VALUES ('100','url','伪静态缓存设置','1','','3','17','3');
INSERT INTO `tp_node` VALUES ('101','ClearHtml','静态缓存管理','1','','18','1','2');
INSERT INTO `tp_node` VALUES ('102','all','一键更新全站','1','','1','101','3');
INSERT INTO `tp_node` VALUES ('103','home','更新首页','1','','2','101','3');
INSERT INTO `tp_node` VALUES ('104','lists','更新栏目','1','','3','101','3');
INSERT INTO `tp_node` VALUES ('105','shows','更新文档','1','','4','101','3');
INSERT INTO `tp_node` VALUES ('106','special','更新专题','1','','5','101','3');


# 转存表中的数据：tp_order 


# 转存表中的数据：tp_orderdetail 


# 转存表中的数据：tp_picture 


# 转存表中的数据：tp_product 


# 转存表中的数据：tp_role 
INSERT INTO `tp_role` VALUES ('1','管理员','0','1','管理员');


# 转存表中的数据：tp_role_user 


# 转存表中的数据：tp_soft 


# 转存表中的数据：tp_special 
