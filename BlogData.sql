CREATE DATABASE IF NOT EXISTS `BlogBase` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `BlogBase`;

CREATE TABLE IF NOT EXISTS `blog_admin` (
  `admin_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `lastloginip` varchar(15) DEFAULT '0',
  `lastlogintime` int(10) unsigned DEFAULT '0',
  `email` varchar(40) DEFAULT '',
  `realname` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`admin_id`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;


INSERT INTO `blog_admin` (`admin_id`, `username`, `password`, `lastloginip`, `lastlogintime`, `email`, `realname`, `status`) VALUES
(1, 'superXu', 'd099d126030d3207ba102efa8e60630a', '0', 1461135752, '2560478803@qq.com', 'ChenXu', 1);

CREATE TABLE IF NOT EXISTS `blog_menu` (
  `menu_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `parentid` smallint(6) NOT NULL DEFAULT '0',
  `model` varchar(20) NOT NULL DEFAULT '',
  `category` varchar(20) NOT NULL DEFAULT '',
  `method` varchar(20) NOT NULL DEFAULT '',
  `data` varchar(100) NOT NULL DEFAULT '',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_id`),
  KEY `listorder` (`listorder`),
  KEY `parentid` (`parentid`),
  KEY `module` (`model`,`category`,`method`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

INSERT INTO `blog_menu` (`menu_id`, `name`, `parentid`, `model`, `category`, `method`, `data`, `listorder`, `status`, `type`) VALUES
						(1, '菜单管理', 0, 'admin', 'menu', 'index', '', 10, 1, 1),
						(2, '文章管理', 0, 'admin', 'Content', 'index', '', 0, -1, 1),
						(3, '体育', 0, 'home', 'cat', 'index', '', 3, 1, 0),
						(4, '科技', 0, 'home', 'cat ', 'index', '', 0, -1, 0),
						(5, '汽车', 0, 'home', 'cat', 'index', '', 0, -1, 0),
						(6, '文章管理', 0, 'admin', 'content', 'index', '', 9, 1, 1),
						(7, '用户管理', 0, 'admin', 'user', 'index', '', 0, -1, 1),
						(8, '科技', 0, 'home', 'cat', 'index', '', 0, 1, 0),
						(9, '推荐位管理', 0, 'admin', 'position', 'index', '', 4, 1, 1),
						(10, '推荐位内容管理', 0, 'admin', 'positioncontent', 'index', '', 1, 1, 1),
						(11, '基本管理', 0, 'admin', 'basic', 'index', '', 0, 1, 1),
						(12, '新闻', 0, 'home', 'cat', 'index', '', 0, 1, 0),
						(13, '用户管理', 0, 'admin', 'admin', 'index', '', 0, 1, 1);