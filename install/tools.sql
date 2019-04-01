/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : tools

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2019-04-01 18:40:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ms_tools_admin`
-- ----------------------------
DROP TABLE IF EXISTS `ms_tools_admin`;
CREATE TABLE `ms_tools_admin` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ms_tools_admin
-- ----------------------------
INSERT INTO `ms_tools_admin` VALUES ('1', '123@123.com', 'b8d9ab78f76573b3d753547c9ce28b12', '默笙', '304366');

-- ----------------------------
-- Table structure for `ms_tools_class`
-- ----------------------------
DROP TABLE IF EXISTS `ms_tools_class`;
CREATE TABLE `ms_tools_class` (
  `id` int(200) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(200) DEFAULT NULL,
  `classid` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ms_tools_class
-- ----------------------------
INSERT INTO `ms_tools_class` VALUES ('1', '有趣网站', 'fun');
INSERT INTO `ms_tools_class` VALUES ('2', '实用工具', 'tools');
INSERT INTO `ms_tools_class` VALUES ('3', '网页特效', 'web');
INSERT INTO `ms_tools_class` VALUES ('4', '微信应用', 'wx');
INSERT INTO `ms_tools_class` VALUES ('5', 'API应用', 'api');
INSERT INTO `ms_tools_class` VALUES ('6', '网页游戏', 'game');

-- ----------------------------
-- Table structure for `ms_tools_links`
-- ----------------------------
DROP TABLE IF EXISTS `ms_tools_links`;
CREATE TABLE `ms_tools_links` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `descc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ms_tools_links
-- ----------------------------
INSERT INTO `ms_tools_links` VALUES ('1', '小Y资源网', 'https://www.iamy.vip', '干货共分享');
INSERT INTO `ms_tools_links` VALUES ('2', '默笙官网', 'http://www.tecms.net', '官网');

-- ----------------------------
-- Table structure for `ms_tools_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ms_tools_menu`;
CREATE TABLE `ms_tools_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `descc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ms_tools_menu
-- ----------------------------
INSERT INTO `ms_tools_menu` VALUES ('1', '默笙官网', 'http://www.tecms.net', '官网官网大大官网');
INSERT INTO `ms_tools_menu` VALUES ('2', '小Y资源网', 'https://www.iamy.vip', '旗下资源网');

-- ----------------------------
-- Table structure for `ms_tools_system`
-- ----------------------------
DROP TABLE IF EXISTS `ms_tools_system`;
CREATE TABLE `ms_tools_system` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `descc` varchar(255) DEFAULT NULL,
  `t1` varchar(255) DEFAULT NULL,
  `t2` varchar(255) DEFAULT NULL,
  `t3` varchar(255) DEFAULT NULL,
  `t4` varchar(255) DEFAULT NULL,
  `t5` varchar(255) DEFAULT NULL,
  `t6` varchar(255) DEFAULT NULL,
  `ftitle` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `wx` varchar(255) DEFAULT NULL,
  `weibo` varchar(255) DEFAULT NULL,
  `footer` varchar(255) DEFAULT NULL,
  `bb` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ms_tools_system
-- ----------------------------
INSERT INTO `ms_tools_system` VALUES ('1', '默笙工具', '默笙工具箱V2.0', '默笙', '分享有趣www.tecms.net', '默', '笙', '工', '具', '箱', '2', '回归现实-发现有趣', '3494490', '3494490', '不知道', 'Copyright ? 2018 By:Mosheng<a href=\"http://www.miitbeian.gov.cn\" title=\"备案\" target=\"_blank\">鄂ICP备17035777号-1</a>', '2.0', 'boot/index');

-- ----------------------------
-- Table structure for `ms_tools_temp`
-- ----------------------------
DROP TABLE IF EXISTS `ms_tools_temp`;
CREATE TABLE `ms_tools_temp` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ms_tools_temp
-- ----------------------------
INSERT INTO `ms_tools_temp` VALUES ('1', '官方模版', 'index/index', '/Public/images/temp2.jpg');
INSERT INTO `ms_tools_temp` VALUES ('2', '杨小杰工具箱模版', 'boot/index', '/Public/images/temp1.jpg');

-- ----------------------------
-- Table structure for `ms_tools_tool`
-- ----------------------------
DROP TABLE IF EXISTS `ms_tools_tool`;
CREATE TABLE `ms_tools_tool` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `yd` varchar(255) DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `cid` int(255) DEFAULT NULL,
  `color` varchar(120) DEFAULT NULL,
  `zan` int(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ms_tools_tool
-- ----------------------------
INSERT INTO `ms_tools_tool` VALUES ('1', '球', '玩个球吧', '0', '/T/qiu/', '默笙', '1', 'open open5', '1');
INSERT INTO `ms_tools_tool` VALUES ('2', '百', '让我帮你百度', '0', '/T/baidu/', '默笙', '1', 'open open4', '1');
INSERT INTO `ms_tools_tool` VALUES ('3', '光', '在线光效生成', '0', '/T/gxsc/', '默笙', '3', 'open open1', '2');
INSERT INTO `ms_tools_tool` VALUES ('4', '字', '3D字体生成', '0', '/T/3dfont/', '默笙', '1', 'open open2', '0');
INSERT INTO `ms_tools_tool` VALUES ('5', '九', '九宫格解锁', '0', '/T/NineSquares/', '默笙', '1', 'open open3', '0');
INSERT INTO `ms_tools_tool` VALUES ('6', '滑', '全屏滑稽', '0', '/T/doge/', '默笙', '1', 'open open4', '0');
INSERT INTO `ms_tools_tool` VALUES ('7', '摩', '摩斯密码', '0', '/T/fumosi/', '默笙', '2', 'open open5', '0');
INSERT INTO `ms_tools_tool` VALUES ('8', '飞', '飞行棋', '0', '/T/fxq/', '默笙', '6', 'open open6', '0');
INSERT INTO `ms_tools_tool` VALUES ('9', '鬼', '在线鬼畜', '0', '/T/guichu/', '默笙', '2', 'open open3', '0');
INSERT INTO `ms_tools_tool` VALUES ('10', '进', '在线进制转换', '0', '/T/hexconvert/', '默笙', '2', 'open open1', '0');
INSERT INTO `ms_tools_tool` VALUES ('11', '图', '在线图片转换', '0', '/T/imgbase64/', '默笙', '2', 'open open4', '0');
INSERT INTO `ms_tools_tool` VALUES ('12', '尖', '尖叫字体生成', '0', '/T/jianjiao/', '默笙', '4', 'open open2', '0');
INSERT INTO `ms_tools_tool` VALUES ('13', 'J', '在线Json格式化', '0', '/T/json/', '默笙', '2', 'open open6', '0');
INSERT INTO `ms_tools_tool` VALUES ('14', '雷', '雷达扫描特效', '0', '/T/leida/', '默笙', '3', 'open open1', '0');
INSERT INTO `ms_tools_tool` VALUES ('15', '加', '在线MD5加密', '0', '/T/md5/', '默笙', '2', 'open open3', '0');
INSERT INTO `ms_tools_tool` VALUES ('16', '迷', '迷宫', '0', '/T/mg/', '默笙', '1', 'open open2', '0');
INSERT INTO `ms_tools_tool` VALUES ('17', '听', '在线听歌', '0', '/T/mkplayer/', '默笙', '2', 'open open5', '0');
INSERT INTO `ms_tools_tool` VALUES ('18', '搜', '在线搜索音乐', '0', '/T/music-master/', '默笙', '2', 'open open4', '0');
INSERT INTO `ms_tools_tool` VALUES ('19', 'P', '在线PS', '0', '/T/photoshop/', '默笙', '2', 'open open3', '0');
INSERT INTO `ms_tools_tool` VALUES ('20', '扇', '扇子导航', '0', '/T/shanzi/', '默笙', '3', 'open open6', '0');
INSERT INTO `ms_tools_tool` VALUES ('21', '色', '色盲测试', '0', '/T/smcs/', '默笙', '6', 'open open2', '0');
INSERT INTO `ms_tools_tool` VALUES ('22', '视', '在线视频解析', '0', '/T/stonetv/', '默笙', '2', 'open open4', '0');
INSERT INTO `ms_tools_tool` VALUES ('23', '贪', '贪吃蛇', '0', '/T/tcs/', '默笙', '6', 'open open3', '0');
INSERT INTO `ms_tools_tool` VALUES ('24', '弹', '弹跳球', '0', '/T/ttq/', '默笙', '1', 'open open1', '0');
INSERT INTO `ms_tools_tool` VALUES ('25', '床', '在线图床', '0', '/T/tuchuang/', '默笙', '2', 'open open5', '0');
INSERT INTO `ms_tools_tool` VALUES ('26', '文', '在线文本对比', '0', '/T/wbdb/', '默笙', '2', 'open open2', '0');
INSERT INTO `ms_tools_tool` VALUES ('27', '悦', '在线音悦台解析', '0', '/T/yinyuetai/', '默笙', '2', 'open open3', '0');
INSERT INTO `ms_tools_tool` VALUES ('28', '整', '在线生成整人', '0', '/T/zhengren/', '默笙', '2', 'open open6', '0');
INSERT INTO `ms_tools_tool` VALUES ('29', '纸', '胜利纸牌', '0', '/T/zhipai/', '默笙', '1', 'open open1', '0');
INSERT INTO `ms_tools_tool` VALUES ('30', '二', '在线生成二维码', '0', '/T/zxewm/', '默笙', '2', 'open open4', '0');
INSERT INTO `ms_tools_tool` VALUES ('31', '爆', '爆炸代码', '0', '/T/bzdm/', '默笙', '1', 'open open2', '0');
