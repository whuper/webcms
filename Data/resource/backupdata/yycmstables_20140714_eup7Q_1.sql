# -----------------------------------------------------------
# Description:备份的数据表[结构] tp_access,tp_active,tp_admin,tp_announce,tp_area,tp_article,tp_attachment,tp_attachmentindex,tp_block,tp_category,tp_comment,tp_copyfrom,tp_guestbook,tp_itemgroup,tp_iteminfo,tp_link,tp_member,tp_memberdetail,tp_membergroup,tp_model,tp_node,tp_order,tp_orderdetail,tp_picture,tp_product,tp_role,tp_role_user,tp_soft,tp_special
# Description:备份的数据表[数据] tp_access,tp_active,tp_admin,tp_announce,tp_area,tp_article,tp_attachment,tp_attachmentindex,tp_block,tp_category,tp_comment,tp_copyfrom,tp_guestbook,tp_itemgroup,tp_iteminfo,tp_link,tp_member,tp_memberdetail,tp_membergroup,tp_model,tp_node,tp_order,tp_orderdetail,tp_picture,tp_product,tp_role,tp_role_user,tp_soft,tp_special
# Time: 2014-07-14 16:25:21
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ;

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='栏目分类表' ;

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
INSERT INTO `tp_admin` VALUES ('1','admin','0731a9e4628ba4dafe3c9b4e576ad7e2','umqvjg','','','9','1405324785','127.0.0.1','0');


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


# 转存表中的数据：tp_attachment 


# 转存表中的数据：tp_attachmentindex 


# 转存表中的数据：tp_block 


# 转存表中的数据：tp_category 
INSERT INTO `tp_category` VALUES ('1','文章','wenzhang','0','1','0','','','','','List_article.html','Show_article.html','','1','1');
INSERT INTO `tp_category` VALUES ('2','爱好','aihao','0','1','0','','','','','List_index.html','Show_article.html','','1','1');
INSERT INTO `tp_category` VALUES ('3','CODE','CODE','0','1','0','','','','','List_code.html','Show_article.html','','1','1');


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
