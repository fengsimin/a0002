DROP TABLE IF EXISTS `a0002_admin`;
CREATE TABLE `a0002_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` tinyint(1) DEFAULT '0',
  `ctime` int(11) DEFAULT '0',
  `utime` int(11) DEFAULT '0',
  `name` varchar(20) DEFAULT '',
  `pass` varchar(100) DEFAULT '',
  `face` varchar(10) DEFAULT '',
  `realname` varchar(20) DEFAULT '',
  `address` varchar(255) DEFAULT '',
  `mobile` varchar(20) DEFAULT '',
  `intro` varchar(255) DEFAULT '',
  `qq` varchar(20) DEFAULT '',
  `sex` char(2) DEFAULT '',
  `rbac` varchar(255) DEFAULT '',
  `json` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `a0002_item`;
CREATE TABLE `a0002_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `nid` int(11) DEFAULT '0',
  `state` tinyint(1) DEFAULT '1',
  `sortby` int(11) DEFAULT '100',
  `ctime` int(11) DEFAULT '0',
  `utime` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `title_color` varchar(255) DEFAULT '',
  `image` varchar(500) DEFAULT '',
  `image_path` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `url_title` varchar(255) DEFAULT '',
  `url_target` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT '',
  `summary_color` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `a0002_item` VALUES("1","0","1","1","100","1421745741","1487059590","延迟加载","","bg.jpg","data/photo/1","","","_self","当页面切换时加载需要的图片，从而更快展示页面。","");
INSERT INTO `a0002_item` VALUES("2","0","1","1","99","1421745871","1490520523","简单轻型","","bg.jpg","data/photo/2","","","_self","简单带来更多自由，轻型网站更适合更远的未来。","");
INSERT INTO `a0002_item` VALUES("3","0","1","1","98","1421745882","1487059644","全屏欣赏","","bg.jpg","data/photo/3","http://www.ifeiwu.com/","了解详细&gt;&gt;","_blank","就是要大，就是要全屏！全屏滚动大图展示， 用图片说出你的故事。","");
INSERT INTO `a0002_item` VALUES("8","0","1","1","97","1444980177","1487059665","多种效果","","bg.jpg","data/photo/8","","","_self","不止一种效果，其他更酷的效果，等着你来定制。","");


DROP TABLE IF EXISTS `a0002_log`;
CREATE TABLE `a0002_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `state` tinyint(1) DEFAULT '0',
  `ctime` int(11) DEFAULT '0',
  `utime` int(11) DEFAULT '0',
  `admin_id` int(11) DEFAULT '0',
  `admin_name` varchar(20) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `table` varchar(20) DEFAULT '',
  `table_id` int(11) DEFAULT '0',
  `ip` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `a0002_site`;
CREATE TABLE `a0002_site` (
  `state` tinyint(1) DEFAULT '1',
  `name` varchar(100) DEFAULT '',
  `value` varchar(1000) DEFAULT '',
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `a0002_site` VALUES("1","favicon","");
INSERT INTO `a0002_site` VALUES("1","touch_icon","");
INSERT INTO `a0002_site` VALUES("1","domain","qing.com/a0002");
INSERT INTO `a0002_site` VALUES("1","title","a0002");
INSERT INTO `a0002_site` VALUES("1","logo","logo.png");
INSERT INTO `a0002_site` VALUES("1","keywords","");
INSERT INTO `a0002_site` VALUES("1","swiper_autoplay","0");
INSERT INTO `a0002_site` VALUES("1","swiper_speed","800");
INSERT INTO `a0002_site` VALUES("1","swiper_effect","fade");
INSERT INTO `a0002_site` VALUES("1","swiper_direction","horizontal");
INSERT INTO `a0002_site` VALUES("1","guide_bg","guide-bg.jpg");
INSERT INTO `a0002_site` VALUES("1","description","");
INSERT INTO `a0002_site` VALUES("1","skin","default");
INSERT INTO `a0002_site` VALUES("1","theme-skin","001-default");
INSERT INTO `a0002_site` VALUES("1","version","1495422499");
INSERT INTO `a0002_site` VALUES("1","theme","001");


DROP TABLE IF EXISTS `a0002_stats`;
CREATE TABLE `a0002_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `screen` varchar(20) DEFAULT '',
  `cookie` varchar(32) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `referer` varchar(255) DEFAULT '',
  `keyword` varchar(255) DEFAULT '',
  `os` varchar(20) DEFAULT '',
  `os_version` varchar(20) DEFAULT '',
  `mobile` varchar(20) DEFAULT '',
  `browser` varchar(20) DEFAULT '',
  `browser_version` varchar(20) DEFAULT '',
  `ip` varchar(20) DEFAULT '',
  `ip_isp` varchar(20) DEFAULT '',
  `ip_country` varchar(20) DEFAULT '',
  `ip_region` varchar(20) DEFAULT '',
  `ip_area` varchar(20) DEFAULT '',
  `ip_city` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `a0002_trash`;
CREATE TABLE `a0002_trash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` tinyint(1) DEFAULT '0',
  `ctime` int(11) DEFAULT '0',
  `utime` int(11) DEFAULT '0',
  `admin_id` int(11) DEFAULT '0',
  `admin_name` varchar(255) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `path` varchar(255) DEFAULT '',
  `note` varchar(255) DEFAULT '',
  `table` varchar(255) DEFAULT '',
  `data` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



