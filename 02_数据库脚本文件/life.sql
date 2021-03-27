/*
Navicat MySQL Data Transfer

Source Server         : java-Web
Source Server Version : 80020
Source Host           : localhost:3306
Source Database       : life

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2020-06-27 16:36:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for collect_song_list_tb
-- ----------------------------
DROP TABLE IF EXISTS `collect_song_list_tb`;
CREATE TABLE `collect_song_list_tb` (
  `userId` int NOT NULL,
  `songListId` int DEFAULT NULL,
  `collectSongListId` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`collectSongListId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of collect_song_list_tb
-- ----------------------------
INSERT INTO `collect_song_list_tb` VALUES ('23', '2', '1');
INSERT INTO `collect_song_list_tb` VALUES ('23', '3', '2');

-- ----------------------------
-- Table structure for hotsong
-- ----------------------------
DROP TABLE IF EXISTS `hotsong`;
CREATE TABLE `hotsong` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hotSongIdString` varchar(255) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of hotsong
-- ----------------------------
INSERT INTO `hotsong` VALUES ('1', '1,4,10', '1');
INSERT INTO `hotsong` VALUES ('2', '13,21', '2');
INSERT INTO `hotsong` VALUES ('3', '31,25,27', '3');
INSERT INTO `hotsong` VALUES ('4', '36,34', '6');
INSERT INTO `hotsong` VALUES ('5', '38,40', '7');
INSERT INTO `hotsong` VALUES ('6', '44,47,48', '8');
INSERT INTO `hotsong` VALUES ('7', '53,54,56', '9');
INSERT INTO `hotsong` VALUES ('8', '68,72,73', '10');
INSERT INTO `hotsong` VALUES ('9', '62,63,64', '11');
INSERT INTO `hotsong` VALUES ('10', '80,81,83', '12');

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song` (
  `id` int NOT NULL AUTO_INCREMENT,
  `songName` varchar(255) DEFAULT NULL,
  `songSinger` varchar(255) DEFAULT NULL,
  `songAlbum` varchar(255) DEFAULT NULL,
  `Lyric` text,
  `songComment` text,
  `songAddress` varchar(255) DEFAULT NULL,
  `pictureAddress` varchar(255) DEFAULT NULL,
  `playTimes` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES ('1', 'Shall We Talk ', '陈奕迅', 'Get A Life 演唱会', '', '', '../static/media/陈奕迅 - Shall We Talk (Live).mp3', '', '0');
INSERT INTO `song` VALUES ('2', '白玫瑰', '陈奕迅', 'What\'s Going On...?', '', '', '../static/media/陈奕迅 - 白玫瑰.mp3', '', '0');
INSERT INTO `song` VALUES ('3', '不如不见', '陈奕迅', 'What\'s Going On...?', null, null, '../static/media/陈奕迅 - 不如不见.mp3', null, '0');
INSERT INTO `song` VALUES ('4', '不如承诺来的简单', '陈奕迅', 'rise & shine', null, null, '../static/media/陈奕迅 - 不如承诺来的简单.mp3', null, '0');
INSERT INTO `song` VALUES ('5', '单车', '陈奕迅', 'Get A Life 演唱会', null, null, '../static/media/陈奕迅 - 单车 (Live).mp3', null, '0');
INSERT INTO `song` VALUES ('6', '富士山下', '陈奕迅', 'What\'s Going On...?', null, null, '../static/media/陈奕迅 - 富士山下.mp3', null, '0');
INSERT INTO `song` VALUES ('7', '可以了', '陈奕迅', 'rise & shine', null, null, '../static/media/陈奕迅 - 可以了.mp3', null, '0');
INSERT INTO `song` VALUES ('8', '明年今日', '陈奕迅', 'Get A Life 演唱会', null, null, '../static/media/陈奕迅 - 明年今日 (Live).mp3', null, '0');
INSERT INTO `song` VALUES ('9', '你给我听好', '陈奕迅', 'rise & shine', null, null, '../static/media/陈奕迅 - 你给我听好.mp3', null, '0');
INSERT INTO `song` VALUES ('10', '葡萄成熟时', '陈奕迅', 'Get A Life 演唱会', null, null, '../static/media/陈奕迅 - 葡萄成熟时 (Live).mp3', null, '0');
INSERT INTO `song` VALUES ('11', '人来人往', '陈奕迅', 'Get A Life 演唱会', null, null, '../static/media/ 陈奕迅 - 人来人往 (Live).mp3', null, '0');
INSERT INTO `song` VALUES ('12', '时光隧道', '陈奕迅', 'rise & shine', null, null, '../static/media/陈奕迅 - 时光隧道.mp3', null, '0');
INSERT INTO `song` VALUES ('13', '阴天快乐', '陈奕迅', 'rise & shine', null, null, '../static/media/陈奕迅 - 阴天快乐.mp3', null, '0');
INSERT INTO `song` VALUES ('14', '最佳损友', '陈奕迅', 'Get A Life 演唱会', null, null, '../static/media/陈奕迅 - 最佳损友 (Live).mp3', null, '0');
INSERT INTO `song` VALUES ('15', '单行的轨道', 'G.E.M. 邓紫棋 ', '新的心跳', null, null, '../static/media/G.E.M. 邓紫棋 - 单行的轨道.mp', null, '0');
INSERT INTO `song` VALUES ('16', '倒数', 'G.E.M. 邓紫棋', '另一个童话', null, null, '../static/media/G.E.M. 邓紫棋 - 倒数.mp', null, '0');
INSERT INTO `song` VALUES ('17', '多远都要在一起', 'G.E.M. 邓紫棋', '新的心跳', null, null, '../static/media/G.E.M. 邓紫棋 - 多远都要在一起.mp', null, '0');
INSERT INTO `song` VALUES ('18', '光年之外', 'G.E.M. 邓紫棋', '光年之外', null, null, '../static/media/G.E.M. 邓紫棋 - 光年之外.mp', null, '0');
INSERT INTO `song` VALUES ('19', '后会无期', 'G.E.M. 邓紫棋', '后会无期 电影原声带', null, null, '../static/media/G.E.M. 邓紫棋 - 后会无期.mp', null, '0');
INSERT INTO `song` VALUES ('20', '另一个童话', 'G.E.M. 邓紫棋', '另一个童话', null, null, '../static/media/G.E.M. 邓紫棋 - 另一个童话.mp', null, '0');
INSERT INTO `song` VALUES ('21', '新的心跳', 'G.E.M. 邓紫棋', '新的心跳', null, null, '../static/media/G.E.M. 邓紫棋 - 新的心跳.mp', null, '0');
INSERT INTO `song` VALUES ('22', '好想爱这个世界啊', '华晨宇', '好想爱这个世界啊', null, null, '../static/media/好想爱这个世界啊 - 华晨宇.mp', null, '0');
INSERT INTO `song` VALUES ('23', '斗牛', '华晨宇', '新世界NEW WORLD', null, null, '../static/media/华晨宇 - 斗牛.mp', null, '0');
INSERT INTO `song` VALUES ('24', '疯人院', '华晨宇', '新世界NEW WORLD', null, null, '../static/media/华晨宇 - 疯人院.mp', null, '0');
INSERT INTO `song` VALUES ('25', '好想爱这个世界啊-', '华晨宇', '新世界NEW WORLD', null, null, '../static/media/华晨宇 - 好想爱这个世界啊.mp', null, '0');
INSERT INTO `song` VALUES ('26', '降临', '华晨宇', '新世界NEW WORLD', null, null, '../static/media/华晨宇 - 降临.mp', null, '0');
INSERT INTO `song` VALUES ('27', '七重人格', '华晨宇', '新世界NEW WORLD', null, null, '../static/media/华晨宇 - 七重人格.mp', null, '0');
INSERT INTO `song` VALUES ('28', '神树', '华晨宇', '新世界NEW WORLD', null, null, '../static/media/华晨宇 - 神树.mp', null, '0');
INSERT INTO `song` VALUES ('29', '新世界', '华晨宇', '新世界NEW WORLD', null, null, '../static/media/华晨宇 - 新世界.mp', null, '0');
INSERT INTO `song` VALUES ('30', '与火星的孩子对话', '华晨宇', '新世界NEW WORLD', null, null, '../static/media/华晨宇 - 与火星的孩子对话.mp', null, '0');
INSERT INTO `song` VALUES ('31', '你要相信这不是最后一天', '华晨宇', '你要相信这不是最后一天', null, null, '../static/media/你要相信这不是最后一天 - 华晨宇.mp', null, '0');
INSERT INTO `song` VALUES ('32', '像我这样的人', '毛不易', '平凡的一天', null, null, '../static/media/毛不易  - 像我这样的人 (Live).mp3', null, '0');
INSERT INTO `song` VALUES ('33', '二零三', '毛不易', '小王', null, null, '../static/media/毛不易 - 二零三 .mp3', null, '0');
INSERT INTO `song` VALUES ('34', '平凡的一天', '毛不易', '平凡的一天', null, null, '../static/media/毛不易 - 平凡的一天 (Live).mp3', null, '0');
INSERT INTO `song` VALUES ('35', '水乡', '毛不易', '小王', null, null, '../static/media/毛不易 - 水乡 (Live).mp3', null, '0');
INSERT INTO `song` VALUES ('36', '消愁', '毛不易', '平凡的一天', null, null, '../static/media/毛不易 - 消愁 (Live).mp3', null, '0');
INSERT INTO `song` VALUES ('37', '小王', '毛不易', '小王', null, null, '../static/media/毛不易 - 小王 (Live).mp3', null, '0');
INSERT INTO `song` VALUES ('38', '开始懂了', '孙燕姿', '我要的幸福', null, null, '../static/media/孙燕姿 - 开始懂了 (2005飞跃红磡演唱会).mp3', null, '0');
INSERT INTO `song` VALUES ('39', '逆光', '孙燕姿', '逆光', null, null, '../static/media/孙燕姿 - 逆光 (Live).mp3', null, '0');
INSERT INTO `song` VALUES ('40', '我怀念的', '孙燕姿', '逆光', null, null, '../static/media/孙燕姿 - 我怀念的 (Live).mp3', null, '0');
INSERT INTO `song` VALUES ('41', '遇见', '孙燕姿', '白羽毛之恋 华语典藏情歌 Vol.2', null, null, '../static/media/孙燕姿 - 遇见 (Live).mp3', null, '0');
INSERT INTO `song` VALUES ('42', '爱与痛的边缘', '王菲', '菲主打', null, null, '../static/media/王菲 - 爱与痛的边缘.mp3', null, '0');
INSERT INTO `song` VALUES ('43', '暧昧', '王菲', '菲主打', null, null, '../static/media/王菲 - 暧昧.mp3', null, '0');
INSERT INTO `song` VALUES ('44', '不得了', '王菲', '菲主打', null, null, '../static/media/王菲 - 不得了.mp3', null, '0');
INSERT INTO `song` VALUES ('45', '梦中人', '王菲', '阿菲正传', null, null, '../static/media/王菲 - 梦中人.mp3', null, '0');
INSERT INTO `song` VALUES ('46', '容易受伤的女人 (国语)', '王菲', '阿菲正传', null, null, '../static/media/王菲 - 容易受伤的女人 (国语).mp3', null, '0');
INSERT INTO `song` VALUES ('47', '容易受伤的女人', '王菲', '阿菲正传', null, null, '../static/media/王菲 - 容易受伤的女人 (粤语).mp3', null, '0');
INSERT INTO `song` VALUES ('48', '我愿意', '王菲', '阿菲正传', null, null, '../static/media/王菲 - 我愿意 (吉他弦乐版).mp3', null, '0');
INSERT INTO `song` VALUES ('49', '执迷不悔', '王菲', '阿菲正传', null, null, '../static/media/王菲 - 执迷不悔.mp3', null, '0');
INSERT INTO `song` VALUES ('50', 'Enrich Your Life', '五月天', '神的孩子都在跳舞', null, null, '../static/media/五月天 - Enrich Your Life.mp3', null, '0');
INSERT INTO `song` VALUES ('51', '倔强', '五月天', '神的孩子都在跳舞', null, null, '../static/media/五月天 - 倔强.mp3', null, '0');
INSERT INTO `song` VALUES ('52', '恋爱ing', '五月天', '知足 最真杰作选', null, null, '../static/media/五月天 - 恋爱ing.mp3', null, '0');
INSERT INTO `song` VALUES ('53', '人生海海', '五月天', '知足 最真杰作选', null, null, '../static/media/五月天 - 人生海海.mp3', null, '0');
INSERT INTO `song` VALUES ('54', '神的孩子都在跳舞', '五月天', '神的孩子都在跳舞', null, null, '../static/media/五月天 - 神的孩子都在跳舞.mp3', null, '0');
INSERT INTO `song` VALUES ('55', '晚安 地球人', '五月天', '神的孩子都在跳舞', null, null, '../static/media/五月天 - 晚安 地球人.mp3', null, '0');
INSERT INTO `song` VALUES ('56', '知足', '五月天', '知足 最真杰作选', null, null, '../static/media/五月天 - 知足.mp3', null, '0');
INSERT INTO `song` VALUES ('57', '志明与春娇', '五月天', '知足 最真杰作选', null, null, '../static/media/五月天 - 志明与春娇.mp3', null, '0');
INSERT INTO `song` VALUES ('58', '终结孤单', '五月天', '知足 最真杰作选', null, null, '../static/media/五月天 - 终结孤单.mp3', null, '0');
INSERT INTO `song` VALUES ('59', '奔向未来的日子', '张国荣', '电影歌曲101', null, null, '../static/media/张国荣 - 奔向未来日子 (电影_英雄本色续集_主题曲).mp3', null, '0');
INSERT INTO `song` VALUES ('60', '玻璃之情', '张国荣', 'I Am What I Am', null, null, '../static/media/张国荣 - 玻璃之情.mp3', null, '0');
INSERT INTO `song` VALUES ('61', '不要爱他', '张国荣', 'I Am What I Am', null, null, '../static/media/张国荣 - 不要爱他.mp3', null, '0');
INSERT INTO `song` VALUES ('62', '今生今世', '张国荣', 'I Am What I Am', null, null, '../static/media/张国荣 - 今生今世 (电影版).mp3', null, '0');
INSERT INTO `song` VALUES ('63', '梦死醉生', '张国荣', 'I Am What I Am', null, null, '../static/media/张国荣 - 梦死醉生.mp3', null, '0');
INSERT INTO `song` VALUES ('64', '倩女幽魂', '张国荣', 'Summer Romance', null, null, '../static/media/张国荣 - 倩女幽魂.mp3', null, '0');
INSERT INTO `song` VALUES ('65', '追', '张国荣', 'I Am What I Am', null, null, '../static/media/张国荣 - 追 (电影版).mp3', null, '0');
INSERT INTO `song` VALUES ('66', '阿刁', '赵雷', '无法长大', null, null, '../static/media/赵雷 - 阿刁.mp3', null, '0');
INSERT INTO `song` VALUES ('67', '成都', '赵雷', '成都', null, null, '../static/media/赵雷 - 成都.mp3', null, '0');
INSERT INTO `song` VALUES ('68', '鼓楼', '赵雷', '无法长大', null, null, '../static/media/赵雷 - 鼓楼.mp3', null, '0');
INSERT INTO `song` VALUES ('69', '画', '赵雷', '赵小雷', null, null, '../static/media/赵雷 - 画.mp3', null, '0');
INSERT INTO `song` VALUES ('70', '吉姆餐厅', '赵雷', '吉姆餐厅', null, null, '../static/media/赵雷 - 吉姆餐厅.mp3', null, '0');
INSERT INTO `song` VALUES ('71', '理想', '赵雷', '吉姆餐厅', null, null, '../static/media/赵雷 - 理想.mp3', null, '0');
INSERT INTO `song` VALUES ('72', '南方姑娘', '赵雷', '赵小雷', null, null, '../static/media/赵雷 - 南方姑娘.mp3', null, '0');
INSERT INTO `song` VALUES ('73', '三十岁的女人', '赵雷', '吉姆餐厅', null, null, '../static/media/赵雷 - 三十岁的女人.mp3', null, '0');
INSERT INTO `song` VALUES ('74', '十九岁', '赵雷', '十九岁', null, null, '../static/media/赵雷 - 十九岁.mp3', null, '0');
INSERT INTO `song` VALUES ('75', '我们的时光', '赵雷', '吉姆餐厅', null, null, '../static/media/赵雷 - 我们的时光.mp3', null, '0');
INSERT INTO `song` VALUES ('76', '无法长大', '赵雷', '无法长大', null, null, '../static/media/赵雷 - 无法长大.mp3', null, '0');
INSERT INTO `song` VALUES ('77', '稻香', '周杰伦', '魔杰座', null, null, '../static/media/周杰伦 - 稻香 (Live).mp3', null, '0');
INSERT INTO `song` VALUES ('78', '发如雪', '周杰伦', '十一月的肖邦', null, null, '../static/media/周杰伦 - 发如雪 (醇享版).mp3', null, '0');
INSERT INTO `song` VALUES ('79', '将军', '周杰伦', '七里香', null, null, '../static/media/周杰伦 - 将军 (Live).mp3', null, '0');
INSERT INTO `song` VALUES ('80', '困兽之斗', '周杰伦', '七里香', null, null, '../static/media/周杰伦 - 困兽之斗 (Live).mp3', null, '0');
INSERT INTO `song` VALUES ('81', '兰亭序', '周杰伦', '魔杰座', null, null, '../static/media/周杰伦 - 兰亭序 (Live).mp3', null, '0');
INSERT INTO `song` VALUES ('82', '外婆', '周杰伦', '七里香', null, null, '../static/media/周杰伦 - 外婆 (Live).mp3', null, '0');
INSERT INTO `song` VALUES ('83', '夜曲', '周杰伦', '十一月的肖邦', null, null, '../static/media/周杰伦 - 夜曲 (Live).mp3', null, '0');
INSERT INTO `song` VALUES ('84', '一路向北', '周杰伦', 'J III MP3 Player', null, null, '../static/media/周杰伦 - 一路向北 (Live).mp3', null, '0');
INSERT INTO `song` VALUES ('85', '给我一首歌的时间', '周杰伦 蔡依林', '魔杰座', null, null, '../static/media/周杰伦 _ 蔡依林 - 给我一首歌的时间 (Live).mp3', null, '0');
INSERT INTO `song` VALUES ('86', '墨宝 问琴', 'Aki阿杰', '问情', null, null, '../static/media/Aki阿杰 - 墨宝 问琴.mp3', null, '0');
INSERT INTO `song` VALUES ('87', '朱颜记', 'Aki阿杰', 'Aki阿杰翻唱专栏', null, null, '../static/media/Aki阿杰 - 朱颜记.mp3', null, '0');
INSERT INTO `song` VALUES ('88', 'HITA', 'Aki阿杰 - 千梦', '千梦（天下3同人）', null, null, '../static/media/HITA _ Aki阿杰 - 千梦.mp3', null, '0');
INSERT INTO `song` VALUES ('89', 'I Believe', '杨雪霏', 'Romance De Amor', null, null, '../static/media/杨雪霏 - I Believe (我相信).mp3', null, '0');
INSERT INTO `song` VALUES ('90', ' Lonely - 2NE1', '郑成河', 'Irony(讽刺)', null, null, '../static/media/郑成河  - Lonely - 2NE1.mp3', null, '0');
INSERT INTO `song` VALUES ('91', 'You Don\'t Know Nothing', 'The Brooklyn Funk Essentials', 'In The BuzzBag', null, null, '../static/media/The Brooklyn Funk Essentials - You Don\'t Know Nothing.mp3', null, '0');
INSERT INTO `song` VALUES ('92', 'Shadows Of Ourselves', 'Thievery Corporation', 'Shadows Of Ourselves', null, null, '../static/media/Thievery Corporation - Shadows Of Ourselves.mp3', null, '0');
INSERT INTO `song` VALUES ('93', '生活', '小皮', '我们都是岁月的孩子', null, null, '../static/media/小皮 - 生活.mp3', null, '0');
INSERT INTO `song` VALUES ('94', '唱歌的孩子', '谣乐队', '你是猴子请来的救兵吗', null, null, '../static/media/谣乐队 - 唱歌的孩子.mp3', null, '0');
INSERT INTO `song` VALUES ('95', '前方', '雨阳乐队', '众乐纪壹 迷城行歌', null, null, '../static/media/雨阳乐队 - 前方.mp3', null, '0');
INSERT INTO `song` VALUES ('96', 'Wolves', 'Foote _ Selena Gomez _ Marshmello', 'Foote Bootleg', null, null, '../static/media/Foote _ Selena Gomez _ Marshmello - Wolves(Foote Bootleg).mp3', null, '0');
INSERT INTO `song` VALUES ('97', 'iNvinCibLe', 'Marshmello', 'iNvinCibLe', null, null, '../static/media/Marshmello - iNvinCibLe.mp3', null, '0');
INSERT INTO `song` VALUES ('98', 'Pr0', 'Marshmello', 'Pr0', null, null, '../static/media/Marshmello - Pr0.mp3', null, '0');
INSERT INTO `song` VALUES ('99', 'Alone', 'Marshmello', 'Alone', null, null, '../static/media/Marshmello _ YOKAII - Alone (YOKAII Remix).mp3', null, '0');
INSERT INTO `song` VALUES ('100', 'Twinbow', 'Slushii', 'Twinbow', null, null, '../static/media/Slushii _ Marshmello - Twinbow (Jauz Remix).mp3', null, '0');
INSERT INTO `song` VALUES ('101', ' Recuerdos De La Alhambra', 'Nicolas Di Angelis', 'Jalouse', null, null, '../static/media/Nicolas Di Angelis - Recuerdos De La Alhambra (阿罕布拉宫的回忆).mp3', null, '0');
INSERT INTO `song` VALUES ('102', 'Clarinet Concertos No_ 1, Op_ 73 - II_ Adagio ma non troppo', 'Sabine Meyer ', 'Weber', null, null, '../static/media/Sabine Meyer - Clarinet Concertos No_ 1, Op_ 73 - II_ Adagio ma non troppo (第1号单簧管协奏曲，作品73 - 第二乐章 不过慢的柔板).mp3', null, '0');
INSERT INTO `song` VALUES ('103', 'Three Mazurkas - Mazurkas in C-Sharp Minor, Op_ 50 No_ 3 ', 'Vlado Perlemuter', 'Bach', null, null, '../static/media/Vlado Perlemuter - Three Mazurkas - Mazurkas in C-Sharp Minor, Op_ 50 No_ 3 (三首妈祖卡舞曲 - 升C小调玛祖卡舞曲，作品50第3首).mp3', null, '0');
INSERT INTO `song` VALUES ('104', '我和时间都不忙', '三福', '耳虫', null, null, '../static/media/三福 - 我和时间都不忙.mp3', null, '0');
INSERT INTO `song` VALUES ('105', '初冬的情诗', '温格华生 ', '来这里取暖', null, null, '../static/media/温格华生 - 初冬的情诗.mp3', null, '0');
INSERT INTO `song` VALUES ('106', 'Beautiful Star Of Bethlehem', 'Rhonda', 'Beautiful Star', null, null, '../static/media/Rhonda Vincent - Beautiful Star Of Bethlehem.mp3', null, '0');
INSERT INTO `song` VALUES ('107', 'Delta Dawn', 'Tanya Tucker ', 'Greatest Hits Encore', null, null, '../static/media/Tanya Tucker - Delta Dawn.mp3', null, '0');
INSERT INTO `song` VALUES ('108', 'Mendocino County Line', 'Willie', 'The Great Divide', null, null, '../static/media/Willie Nelson - Mendocino County Line.mp3', null, '0');
INSERT INTO `song` VALUES ('109', '人生路上，边走边唱', '秦超', '梦想清单', null, null, '../static/media/秦超 - 人生路上，边走边唱.mp3', null, '0');
INSERT INTO `song` VALUES ('110', '2 Mazurkas, Op_ 40_ No_ 1 in D-Flat Major_ Allegro', 'Artur Pizarro', 'Study Music for Study Session', null, null, '../static/media/Artur Pizarro - 2 Mazurkas, Op_ 40_ No_ 1 in D-Flat Major_ Allegro.mp3', null, '0');
INSERT INTO `song` VALUES ('111', 'Waltz for piano in E-Flat Major (spurious), KK IVa_14 (B_ 46)', 'Claudio Arrau', 'Chopin: Piano Work', null, null, '../static/media/Claudio Arrau - Waltz for piano in E-Flat Major (spurious), KK IVa_14 (B_ 46) (降E大调钢琴圆舞曲).mp3', null, '0');
INSERT INTO `song` VALUES ('112', 'Mazurka ', 'Edward Gerbard', 'Favourites Guitar', null, null, '../static/media/Edward Gerbard - Mazurka (马祖卡舞曲).mp3', null, '0');
INSERT INTO `song` VALUES ('113', 'Recuerdos de la Alhambra', 'Francisco Tarrega', 'Whispers of Love', null, null, '../static/media/Francisco Tarrega - Recuerdos de la Alhambra.mp3', null, '0');
INSERT INTO `song` VALUES ('114', '障月', '根小八', '小八原创合集', null, null, '../static/media/根小八 - 障月.mp3', null, '0');
INSERT INTO `song` VALUES ('115', '五禽戏 With_音频怪物', '音频怪物', '五禽戏 With.音频怪物', null, null, '../static/media/音频怪物 _ Aki阿杰 - 五禽戏 With_音频怪物.mp3', null, '0');
INSERT INTO `song` VALUES ('116', '牵丝戏', '银临', '牵丝戏', null, null, '../static/media/银临 _ Aki阿杰 - 牵丝戏.mp3', null, '0');
INSERT INTO `song` VALUES ('117', '瓷意千年', '只有影子', '瓷意千年', null, null, '../static/media/只有影子 _ 云の泣 _ 封茗囧菌 _ HITA _ Aki阿杰 _ 赵方婧 _ 玄觞 _ 王梓钰 - 瓷意千年.mp3', null, '0');
INSERT INTO `song` VALUES ('118', '天涯归隐', '紫凌孤君', '热门话语258', null, null, '../static/media/紫凌孤君 _ Aki阿杰 - 天涯归隐.mp3', null, '0');
INSERT INTO `song` VALUES ('119', 'Tartessos_ The Hidden Xenocryst', 'Allegaeon', 'Fromshifter', null, null, '../static/media/Allegaeon - Tartessos_ The Hidden Xenocryst.mp3', null, '0');
INSERT INTO `song` VALUES ('120', 'Colossal Human Consumption', 'ANALEPSY', 'Dehumanization by Supremacy', null, null, '../static/media/ANALEPSY - Colossal Human Consumption.mp3', null, '0');
INSERT INTO `song` VALUES ('121', 'Genetic Mutations', 'ANALEPSY', 'Dehumanization by Supremacy', null, null, '../static/media/ANALEPSY - Genetic Mutations.mp3', null, '0');
INSERT INTO `song` VALUES ('122', 'Groan of the Crucified Souls', 'Big End Bolt', 'Mechanical Race Createion', null, null, '../static/media/Big End Bolt - Groan of the Crucified Souls.mp3', null, '0');
INSERT INTO `song` VALUES ('123', 'Disemboweled Engorgement', 'Extermination Dismemberment', 'Serial Urbicide', null, null, '../static/media/Extermination Dismemberment - Disemboweled Engorgement.mp3', null, '0');
INSERT INTO `song` VALUES ('124', 'Let\'s not fall in love  (2015MADE世界巡演深圳站)', 'BIGBANG', 'Let\'s kick BIGBANG around', null, null, '../static/media/BIGBANG - Let\'s not fall in love  (2015MADE世界巡演深圳站).mp3', null, null);
INSERT INTO `song` VALUES ('125', 'Lies (谎言) (Korea Version)', 'BIGBANG', 'THE BEST OF BIGBANG', null, null, '../static/media/BIGBANG - Lies (谎言) (Korea Version).mp3', null, null);
INSERT INTO `song` VALUES ('126', 'LOSER (LOSER(2015 BIGBANG WORLD TOUR [MADE] IN SEOUL LIVE VER_))', 'BIGBANG', 'BIGBANG-LOSER', null, null, '../static/media/BIGBANG - LOSER (LOSER(2015 BIGBANG WORLD TOUR [MADE] IN SEOUL LIVE VER_)).mp3', null, null);
INSERT INTO `song` VALUES ('127', 'TONIGHT (TONIGHT)', 'BIGBANG', 'THE BEST OF BIGBANG', null, null, '../static/media/BIGBANG - TONIGHT (TONIGHT).mp3', null, null);
INSERT INTO `song` VALUES ('128', '(狂放) (Live)', 'G-DRAGON', 'BIGBANG WORLD TOUR', null, null, '../static/media/G-DRAGON -  (狂放) (Live).mp3', null, null);
INSERT INTO `song` VALUES ('129', 'Window', 'G-DRAGON', 'COUP D\'ETAT', null, null, '../static/media/G-DRAGON (权志龙) - Window.mp3', null, null);
INSERT INTO `song` VALUES ('130', 'Donalina', 'Blick Bassy', 'Putumayo Presents:Jazz Around The World', null, null, '../static/media/Blick Bassy - Donalina.mp3', null, null);
INSERT INTO `song` VALUES ('131', 'Too Much', 'Bossasonic', 'Club Life', null, null, '../static/media/Bossasonic - Too Much.mp3', null, null);
INSERT INTO `song` VALUES ('132', 'Blow Your Mind', 'Jamiroquai', '100% Acid Jazz', null, null, '../static/media/Jamiroquai - Blow Your Mind.mp3', null, null);
INSERT INTO `song` VALUES ('133', 'Dance With Me', 'Jonathan Fritzen ', 'Diamonds', null, null, '../static/media/Jonathan Fritzen - Dance With Me.mp3', null, null);
INSERT INTO `song` VALUES ('134', 'Ane Brun - Koop Island Blues', 'Koop', 'Breaking Bad (Original Soundtrack)', null, null, '../static/media/Koop _ Ane Brun - Koop Island Blues.mp3', null, null);
INSERT INTO `song` VALUES ('135', 'Get Next To Me', 'Arthur Adams & B_B_ King', '美国蓝调大全', null, null, '../static/media/Arthur Adams & B_B_ King - Get Next To Me.mp3', null, null);
INSERT INTO `song` VALUES ('136', 'Why Blues', 'Chris Thomas King', '美国蓝调大全', null, null, '../static/media/Chris Thomas King - Why Blues.mp3', null, null);
INSERT INTO `song` VALUES ('137', 'Needed Time', 'Eric Bibb', '美国蓝调大全', null, null, '../static/media/Eric Bibb - Needed Time.mp3', null, null);
INSERT INTO `song` VALUES ('138', 'How Could You Do It', 'Henry Gray', '美国蓝调大全', null, null, '../static/media/Koop _ Ane Brun - Koop Island Blues.mp3', null, null);
INSERT INTO `song` VALUES ('139', 'I Got The Blues', 'Otis Rush', '美国蓝调大全', null, null, '../static/media/Koop _ Ane Brun - Koop Island Blues.mp3', null, null);
INSERT INTO `song` VALUES ('140', 'Pit Of Vipers', 'Simon Curtis', 'RA', null, null, '../static/media/Simon Curtis - Pit Of Vipers.mp3', null, null);
INSERT INTO `song` VALUES ('141', 'Soul 4 Sale', 'Simon Curtis', 'RA', null, null, '../static/media/Simon Curtis - Soul 4 Sale.mp3', null, null);
INSERT INTO `song` VALUES ('142', 'Super Psycho Love', 'Simon Curtis', '8bit heart', null, null, '../static/media/Simon Curtis - Super Psycho Love.mp3', null, null);
INSERT INTO `song` VALUES ('143', 'Give It Up', 'Various Artists', 'Acid Jazz(Jazz Club)', null, null, '../static/media/Various Artists - Give It Up.mp3', null, null);
INSERT INTO `song` VALUES ('144', 'Tell Me', 'Wax Poetic', 'Nublu Sessions', null, null, '../static/media/Koop _ Ane Brun - Koop Island Blues.mp3', null, null);
INSERT INTO `song` VALUES ('145', 'Grind Me Down (Jawster Remix)', 'Jawster', 'Grind Me Down', null, null, '../static/media/Jawster - Grind Me Down (Jawster Remix).mp3', null, null);
INSERT INTO `song` VALUES ('146', 'Beat Drop', 'Simon Curtis', '8bit heart', null, null, '../static/media/Simon Curtis - Beat Drop.mp3', null, null);
INSERT INTO `song` VALUES ('147', 'Chip In Your Head', 'Simon Curtis', 'RA', null, null, '../static/media/Simon Curtis - Chip In Your Head.mp3', null, null);
INSERT INTO `song` VALUES ('148', 'D_T_M_', 'Simon Curtis', 'RA', null, null, '../static/media/Simon Curtis - D_T_M_.mp3', null, null);
INSERT INTO `song` VALUES ('149', 'Enemy', 'Simon Curtis', 'RA', null, null, '../static/media/Simon Curtis - Enemy.mp3', null, null);
INSERT INTO `song` VALUES ('150', 'Any Other Way', 'Daniela Andrade', 'Things We\'ve Said', null, null, '../static/media/Daniela Andrade - Any Other Way.mp3', null, null);
INSERT INTO `song` VALUES ('151', 'Hannah Georgas', 'Shortie', 'Hannah Georgas', null, null, '../static/media/Hannah Georgas - Shortie.mp3', null, null);
INSERT INTO `song` VALUES ('152', '沾青', '陈斐', '流浪的脚步声响', null, null, '../static/media/陈斐 - 沾青.mp3', null, null);
INSERT INTO `song` VALUES ('153', '愿山海皆平', '邻间少年', '山水可相逢', null, null, '../static/media/邻间少年 - 愿山海皆平.mp3', null, null);
INSERT INTO `song` VALUES ('154', '民谣在路上', '前冲', '民谣在路上', null, null, '../static/media/前冲 - 民谣在路上.mp3', null, null);
INSERT INTO `song` VALUES ('155', 'La mi realidad', 'Andrei Machado', 'Lacuna', null, null, '../static/media/Andrei Machado - La mi realidad.mp3', null, null);
INSERT INTO `song` VALUES ('156', 'いつかのわすれもの', 'Foxtail-Grass Studio', 'ときかけエオリア', null, null, '../static/media/Foxtail-Grass Studio - いつかのわすれもの.mp3', null, null);
INSERT INTO `song` VALUES ('157', 'Sonderling', 'Joep Beving', 'Sonderling', null, null, '../static/media/Joep Beving - Sonderling.mp3', null, null);
INSERT INTO `song` VALUES ('158', 'Oblivion II _ Moving Pieces', 'Sunset Wings', 'Lifetime as a Child at Play', null, null, '../static/media/Sunset Wings - Oblivion II _ Moving Pieces.mp3', null, null);
INSERT INTO `song` VALUES ('159', 'Roy Goodman - Orchestral Suite No_ 3 in D Major, BWV_ 1068 - II_ Air on the G String', 'The Brandenburg Consort ', 'Bach: The Four Orchestral Suites', null, null, '../static/media/The Brandenburg Consort _ Roy Goodman - Orchestral Suite No_ 3 in D Major, BWV_ 1068 - II_ Air on the G String.mp3', null, null);
INSERT INTO `song` VALUES ('160', 'Going Crazy Over You', '崛川丽美 (Remedios)', 'あの日見た花の名前を僕達はまだ知らない', null, null, '../static/media/崛川丽美 (Remedios) - Going Crazy Over You.mp3', null, null);
INSERT INTO `song` VALUES ('161', 'Camilla Kolchinsky _ Polish National Radio Symphony Orchestra - Violin Concerto in A Major, Op_ 53 - I_ Allegro Ma Non Troppo', 'Ilya Kaler', 'Dvořák & Glazunov: Violin Concertos', null, null, '../static/media/Ilya Kaler _ Camilla Kolchinsky _ Polish National Radio Symphony Orchestra - Violin Concerto in A Major, Op_ 53 - I_ Allegro Ma Non Troppo (A大调小提琴协奏曲，作品53 - 第一乐章 不过分的快板).mp3', null, null);
INSERT INTO `song` VALUES ('162', 'Studies in the Form of Canons for Organ, Op_ 56 - III_ Andantino', 'Joseph Berger', 'Schumann: Studies in the Form of Canons for Organ, Op. 56 (Digitally Remastered)', null, null, '../static/media/Joseph Berger - Studies in the Form of Canons for Organ, Op_ 56 - III_ Andantino.mp3', null, null);
INSERT INTO `song` VALUES ('163', 'Marshmello _ DJ Snake - U Snake (WuZQ Mix)', 'WuZQ', '无', null, null, '../static/media/WuZQ _ Marshmello _ DJ Snake - U Snake (WuZQ Mix).mp3', null, null);
INSERT INTO `song` VALUES ('164', 'Marshmello - Marshmello-Alone', 'Xwdit', 'Marshmello-Alone (Xwdit Bootleg)', null, null, '../static/media/Xwdit _ Marshmello - Marshmello-Alone.mp3', null, null);
INSERT INTO `song` VALUES ('165', 'I Hate U', 'Simon Curtis', 'RA', null, null, '../static/media/Simon Curtis - I Hate U.mp3', null, null);
INSERT INTO `song` VALUES ('166', 'Hello, San Francisco (Part I)', 'Sugar Pie DeSanto', '美国蓝调大全', null, null, '../static/media/Sugar Pie DeSanto - Hello, San Francisco (Part I).mp3', null, null);
INSERT INTO `song` VALUES ('167', 'Sunpie Barnes', 'Sunpie\'s Romp & Stomp', '美国蓝调大全', null, null, '../static/media/Sunpie Barnes - Sunpie\'s Romp & Stomp.mp3', null, null);
INSERT INTO `song` VALUES ('168', 'Pantaloons', 'Tape Five', 'Winter Jazz Collection', null, null, '../static/media/Tape Five - Pantaloons.mp3', null, null);
INSERT INTO `song` VALUES ('169', 'I Wish', 'Tok Tok Tok', 'Five Senses in Celebration of Grand Hyatt Tokyo\'s 5th Anniversary', null, null, '../static/Tok Tok Tok - I Wish.mp3', null, null);
INSERT INTO `song` VALUES ('170', '하루하루 (一天一天)', 'BIGBANG', 'ASIA BEST', null, null, '../static/BIGBANG - (一天一天).mp3', null, null);
INSERT INTO `song` VALUES ('171', 'BLUE (BLUE(2015 BIGBANG WORLD TOUR [MADE] IN SEOUL LIVE VER.))', 'BIGBANG', '2015 BIGBANG WORLD TOUR [MADE] IN SEOUL', null, null, '../static/BIGBANG - BLUE (BLUE(2015 BIGBANG WORLD TOUR [MADE] IN SEOUL LIVE VER_)).mp3', null, null);
INSERT INTO `song` VALUES ('172', 'FLOWER ROAD (꽃 길)', 'BIGBANG', 'FLOWER ROAD (꽃길)', null, null, '../static/BIGBANG - FLOWER ROAD.mp3', null, null);
INSERT INTO `song` VALUES ('173', 'IF YOU ', 'BIGBANG', 'BIGBANG 2017 CONCERT LAST DANCE IN SEOUL', null, null, '../static/BIGBANG - IF YOU (IF YOU(Live) (Live).mp3', null, null);
INSERT INTO `song` VALUES ('174', 'Black', 'G-DRAGON (权志龙)', 'G-DRAGON 2ND ALBUM : COUP D`ETAT', null, null, '../static/G-DRAGON (权志龙) _ Jennie - Black.mp3', null, null);
INSERT INTO `song` VALUES ('175', 'Light It Up (불 붙여봐라)', 'G-DRAGON (权志龙)', '1st Mini Album : One Of A Kind', null, null, '../static/G-DRAGON (权志龙) _ Tablo _ Dok2 - Light It Up.mp3', null, null);
INSERT INTO `song` VALUES ('176', 'Tócame', 'Elettra Lamborghini', 'Tócame', null, null, '../static/Elettra Lamborghini _ Childsplay _ Pitbull - Tócame.mp3', null, null);
INSERT INTO `song` VALUES ('177', 'Say It', 'Flume', 'Say It', null, null, '../static/Flume _ Tove Lo - Say It.mp3', null, null);
INSERT INTO `song` VALUES ('178', 'Man on a Mission', 'Oh The Larceny', 'Oh the Larceny', null, null, '../static/Oh The Larceny - Man on a Mission.mp3', null, null);
INSERT INTO `song` VALUES ('179', 'Cavalleria Rusticana - Intermezzo Sinfonico (乡村骑士 - 交响间奏曲)', 'Herbert von Karajan', 'Karajan - Very Best of Adagio', null, null, '../static/HITA _ Assen捷 _ Aki阿杰 _ W_K_ - 同道殊途 (剧情版).mp3', null, null);
INSERT INTO `song` VALUES ('180', '同道殊途', 'HITA', '魔道祖师同人合集', null, null, '../static/Herbert von Karajan _ Berliner Philharmoniker _ Wolfgang Meyer - Cavalleria Rusticana - Intermezzo Sinfonico (乡村骑士 - 交响间奏曲).mp3', null, null);
INSERT INTO `song` VALUES ('181', 'Revival', 'Martine Girault', 'Best Of Acid Jazz Vol.2', null, null, '../static/Martine Girault - Revival.mp3', null, null);
INSERT INTO `song` VALUES ('182', 'The Jackal', 'Ronny Jordan', 'Best Of Acid Jazz Vol.2', null, null, '../static/Ronny Jordan - The Jackal.mp3', null, null);
INSERT INTO `song` VALUES ('183', '盗橘令', '不才', '盗橘令', null, null, '../static/不才 _ 云の泣 _ 银临 _ Aki阿杰 - 盗橘令.mp3', null, null);
INSERT INTO `song` VALUES ('184', 'Let There Be Cowgirls', 'Chris Cagle', 'Back in the Saddle', null, null, '../static/Chris Cagle - Let There Be Cowgirls.mp3', null, null);
INSERT INTO `song` VALUES ('185', 'Florence', 'Crooked Still', 'Still Crooked', null, null, '../static/Crooked Still - Florence.mp3', null, null);
INSERT INTO `song` VALUES ('186', 'You Are My Sunshine', 'Elizabeth Mitchell', 'You Are My Sunshine', null, null, '../static/Elizabeth Mitchell - You Are My Sunshine.mp3', null, null);
INSERT INTO `song` VALUES ('187', 'Your Cheatin\' Heart', 'Hank Williams', 'The Very Best Of Hank Williams', null, null, '../static/Hank Williams - Your Cheatin\' Heart.mp3', null, null);
INSERT INTO `song` VALUES ('188', 'Take Me Home, Country Roads', 'John Denver', 'The Complete Collection', null, null, '../static/John Denver - Take Me Home, Country Roads.mp3', null, null);
INSERT INTO `song` VALUES ('189', '东风志', 'Aki阿杰', '东风志', null, null, '../static/Aki阿杰 - 东风志.mp3', null, null);
INSERT INTO `song` VALUES ('190', '何以歌', 'Aki阿杰', '何以歌', null, null, '../static/Aki阿杰 - 何以歌.mp3', null, null);
INSERT INTO `song` VALUES ('191', 'Campo de centeio', 'Andrei Machado', 'Lacuna', null, null, '../static/Andrei Machado - Campo de centeio.mp3', null, null);
INSERT INTO `song` VALUES ('192', 'Take Me Home,Country Road', 'John Denver', 'Take Me Home Country Roads', null, null, '../static/John Denver - Take Me Home,Country Road.mp3', null, null);
INSERT INTO `song` VALUES ('193', 'Long Hot Summer', 'Keith Urban', 'Get Closer', null, null, '../static/Keith Urban - Long Hot Summer.mp3', null, null);
INSERT INTO `song` VALUES ('194', 'Call Me Baby', 'Raful Neal', '美国蓝调大全', null, null, '../static/Raful Neal - Call Me Baby.mp3', null, null);
INSERT INTO `song` VALUES ('195', 'She\'s Into Something', 'Robert Cray & Albert Collins', '美国蓝调大全', null, null, '../static/Robert Cray & Albert Collins - She\'s Into Something.mp3', null, null);
INSERT INTO `song` VALUES ('196', 'Flesh', 'Simon Curtis', 'RA', null, null, '../static/Simon Curtis - Flesh.mp3', null, null);
INSERT INTO `song` VALUES ('197', 'LOVIN\' YOU (爱你)', 'tussie mussie', 'tussie mussie', null, null, '../static/押尾光太郎 (押尾コータロー) - LOVIN\' YOU (爱你).mp3', null, null);
INSERT INTO `song` VALUES ('198', '地方都市ロレント', 'Falcom Sound Team J_D_K_', '英雄伝説 空の軌跡FC Evolution オリジナルサウンドトラック', null, null, '../static/押尾光太郎 (押尾コータロー) - LOVIN\' YOU (爱你).mp3', null, null);
INSERT INTO `song` VALUES ('199', 'ソ・ラ・ソ・ミ (Piano ver.)', 'ko-ko-ya (コーコーヤ); ', '異国迷路のクロワーゼ The Animation オリジナルサウンドトラック', null, null, '../static/ko-ko-ya (Piano ver_).mp3', null, null);
INSERT INTO `song` VALUES ('200', '風の絵', 'Paniyolo (パニヨロ)', 'たまのこと', null, null, '../static/Paniyolo (パニヨロ) - 風の絵.mp3', null, null);
INSERT INTO `song` VALUES ('201', '幽雅に咲かせ、墨染の桜', 'TAMUSIC', '東方子守唄', null, null, '../static/TAMUSIC - 幽雅に咲かせ、墨染の桜.mp3', null, null);
INSERT INTO `song` VALUES ('202', '流星 (Falling Star)', '岸部真明 (Masaaki Kishibe) ', 'Ways (方式)', null, null, '../static/岸部真明 (Masaaki Kishibe) - 流星 (Falling Star).mp3', null, null);
INSERT INTO `song` VALUES ('203', 'いのちの名前 (生命之名)', '広橋真紀子 (ひろはしまきこ) ', 'リラクシング・ピアノ~宮崎駿コレクション (Relaxing Piano - Miyazaki Hayao Collection)', null, null, '../static/広橋真紀子 (ひろはしまきこ) - いのちの名前 (生命之名).mp3', null, null);

-- ----------------------------
-- Table structure for song_list_comment_tb
-- ----------------------------
DROP TABLE IF EXISTS `song_list_comment_tb`;
CREATE TABLE `song_list_comment_tb` (
  `songListId` int NOT NULL,
  `userName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `songListcommentId` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`songListcommentId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of song_list_comment_tb
-- ----------------------------
INSERT INTO `song_list_comment_tb` VALUES ('0', '123', '对对对', '2020-06-26 00:00:00', '1');
INSERT INTO `song_list_comment_tb` VALUES ('0', '123', '评论', '2020-06-27 00:00:00', '63');
INSERT INTO `song_list_comment_tb` VALUES ('0', '123', '评论', '2020-06-27 00:00:00', '64');

-- ----------------------------
-- Table structure for song_list_song_tb
-- ----------------------------
DROP TABLE IF EXISTS `song_list_song_tb`;
CREATE TABLE `song_list_song_tb` (
  `songListSongId` int NOT NULL AUTO_INCREMENT,
  `songId` int DEFAULT NULL,
  `songListId` int NOT NULL,
  PRIMARY KEY (`songListSongId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of song_list_song_tb
-- ----------------------------
INSERT INTO `song_list_song_tb` VALUES ('1', '1', '7');
INSERT INTO `song_list_song_tb` VALUES ('4', '5', '7');
INSERT INTO `song_list_song_tb` VALUES ('6', '8', '7');
INSERT INTO `song_list_song_tb` VALUES ('7', '10', '7');
INSERT INTO `song_list_song_tb` VALUES ('8', '14', '7');
INSERT INTO `song_list_song_tb` VALUES ('9', '2', '8');
INSERT INTO `song_list_song_tb` VALUES ('10', '3', '8');
INSERT INTO `song_list_song_tb` VALUES ('11', '6', '8');
INSERT INTO `song_list_song_tb` VALUES ('12', '4', '9');
INSERT INTO `song_list_song_tb` VALUES ('13', '7', '9');
INSERT INTO `song_list_song_tb` VALUES ('14', '9', '9');
INSERT INTO `song_list_song_tb` VALUES ('15', '12', '9');
INSERT INTO `song_list_song_tb` VALUES ('16', '13', '9');
INSERT INTO `song_list_song_tb` VALUES ('17', '15', '10');
INSERT INTO `song_list_song_tb` VALUES ('18', '17', '10');
INSERT INTO `song_list_song_tb` VALUES ('19', '21', '10');
INSERT INTO `song_list_song_tb` VALUES ('20', '18', '11');
INSERT INTO `song_list_song_tb` VALUES ('21', '19', '12');
INSERT INTO `song_list_song_tb` VALUES ('22', '20', '13');
INSERT INTO `song_list_song_tb` VALUES ('23', '16', '13');
INSERT INTO `song_list_song_tb` VALUES ('24', '22', '15');
INSERT INTO `song_list_song_tb` VALUES ('25', '31', '16');
INSERT INTO `song_list_song_tb` VALUES ('26', '23', '17');
INSERT INTO `song_list_song_tb` VALUES ('27', '24', '17');
INSERT INTO `song_list_song_tb` VALUES ('28', '25', '17');
INSERT INTO `song_list_song_tb` VALUES ('29', '26', '17');
INSERT INTO `song_list_song_tb` VALUES ('30', '27', '17');
INSERT INTO `song_list_song_tb` VALUES ('31', '28', '17');
INSERT INTO `song_list_song_tb` VALUES ('32', '29', '17');
INSERT INTO `song_list_song_tb` VALUES ('33', '30', '17');
INSERT INTO `song_list_song_tb` VALUES ('34', '32', '24');
INSERT INTO `song_list_song_tb` VALUES ('35', '34', '24');
INSERT INTO `song_list_song_tb` VALUES ('36', '36', '24');
INSERT INTO `song_list_song_tb` VALUES ('37', '33', '25');
INSERT INTO `song_list_song_tb` VALUES ('38', '35', '25');
INSERT INTO `song_list_song_tb` VALUES ('39', '37', '25');
INSERT INTO `song_list_song_tb` VALUES ('40', '39', '26');
INSERT INTO `song_list_song_tb` VALUES ('41', '38', '27');
INSERT INTO `song_list_song_tb` VALUES ('42', '40', '27');
INSERT INTO `song_list_song_tb` VALUES ('43', '41', '28');
INSERT INTO `song_list_song_tb` VALUES ('44', '45', '29');
INSERT INTO `song_list_song_tb` VALUES ('45', '46', '29');
INSERT INTO `song_list_song_tb` VALUES ('46', '47', '29');
INSERT INTO `song_list_song_tb` VALUES ('47', '48', '29');
INSERT INTO `song_list_song_tb` VALUES ('48', '49', '29');
INSERT INTO `song_list_song_tb` VALUES ('49', '42', '31');
INSERT INTO `song_list_song_tb` VALUES ('50', '43', '31');
INSERT INTO `song_list_song_tb` VALUES ('51', '44', '31');
INSERT INTO `song_list_song_tb` VALUES ('52', '50', '32');
INSERT INTO `song_list_song_tb` VALUES ('53', '51', '32');
INSERT INTO `song_list_song_tb` VALUES ('54', '54', '32');
INSERT INTO `song_list_song_tb` VALUES ('55', '55', '32');
INSERT INTO `song_list_song_tb` VALUES ('56', '52', '33');
INSERT INTO `song_list_song_tb` VALUES ('57', '53', '33');
INSERT INTO `song_list_song_tb` VALUES ('58', '56', '33');
INSERT INTO `song_list_song_tb` VALUES ('59', '57', '33');
INSERT INTO `song_list_song_tb` VALUES ('60', '58', '33');
INSERT INTO `song_list_song_tb` VALUES ('61', '60', '39');
INSERT INTO `song_list_song_tb` VALUES ('62', '61', '39');
INSERT INTO `song_list_song_tb` VALUES ('63', '62', '39');
INSERT INTO `song_list_song_tb` VALUES ('64', '63', '39');
INSERT INTO `song_list_song_tb` VALUES ('65', '65', '39');
INSERT INTO `song_list_song_tb` VALUES ('66', '59', '40');
INSERT INTO `song_list_song_tb` VALUES ('67', '64', '40');
INSERT INTO `song_list_song_tb` VALUES ('68', '70', '34');
INSERT INTO `song_list_song_tb` VALUES ('69', '71', '34');
INSERT INTO `song_list_song_tb` VALUES ('70', '73', '34');
INSERT INTO `song_list_song_tb` VALUES ('71', '75', '34');
INSERT INTO `song_list_song_tb` VALUES ('72', '69', '35');
INSERT INTO `song_list_song_tb` VALUES ('73', '72', '35');
INSERT INTO `song_list_song_tb` VALUES ('74', '67', '36');
INSERT INTO `song_list_song_tb` VALUES ('75', '66', '37');
INSERT INTO `song_list_song_tb` VALUES ('76', '68', '37');
INSERT INTO `song_list_song_tb` VALUES ('77', '76', '37');
INSERT INTO `song_list_song_tb` VALUES ('78', '74', '38');
INSERT INTO `song_list_song_tb` VALUES ('79', '77', '42');
INSERT INTO `song_list_song_tb` VALUES ('80', '81', '42');
INSERT INTO `song_list_song_tb` VALUES ('81', '85', '42');
INSERT INTO `song_list_song_tb` VALUES ('82', '79', '43');
INSERT INTO `song_list_song_tb` VALUES ('83', '80', '43');
INSERT INTO `song_list_song_tb` VALUES ('84', '82', '43');
INSERT INTO `song_list_song_tb` VALUES ('85', '78', '44');
INSERT INTO `song_list_song_tb` VALUES ('86', '83', '44');
INSERT INTO `song_list_song_tb` VALUES ('87', '84', '44');
INSERT INTO `song_list_song_tb` VALUES ('100', '85', '64');
INSERT INTO `song_list_song_tb` VALUES ('101', '86', '64');
INSERT INTO `song_list_song_tb` VALUES ('102', '87', '64');
INSERT INTO `song_list_song_tb` VALUES ('103', '88', '64');
INSERT INTO `song_list_song_tb` VALUES ('104', '89', '64');
INSERT INTO `song_list_song_tb` VALUES ('105', '90', '61');
INSERT INTO `song_list_song_tb` VALUES ('106', '91', '61');
INSERT INTO `song_list_song_tb` VALUES ('107', '92', '61');
INSERT INTO `song_list_song_tb` VALUES ('108', '93', '61');
INSERT INTO `song_list_song_tb` VALUES ('109', '94', '61');
INSERT INTO `song_list_song_tb` VALUES ('110', '95', '45');
INSERT INTO `song_list_song_tb` VALUES ('111', '96', '45');
INSERT INTO `song_list_song_tb` VALUES ('112', '97', '45');
INSERT INTO `song_list_song_tb` VALUES ('113', '98', '45');
INSERT INTO `song_list_song_tb` VALUES ('114', '99', '45');
INSERT INTO `song_list_song_tb` VALUES ('115', '100', '62');
INSERT INTO `song_list_song_tb` VALUES ('116', '101', '62');
INSERT INTO `song_list_song_tb` VALUES ('117', '102', '62');
INSERT INTO `song_list_song_tb` VALUES ('118', '103', '62');
INSERT INTO `song_list_song_tb` VALUES ('119', '104', '62');
INSERT INTO `song_list_song_tb` VALUES ('120', '105', '63');
INSERT INTO `song_list_song_tb` VALUES ('121', '106', '63');
INSERT INTO `song_list_song_tb` VALUES ('122', '107', '63');
INSERT INTO `song_list_song_tb` VALUES ('123', '108', '63');
INSERT INTO `song_list_song_tb` VALUES ('124', '109', '54');
INSERT INTO `song_list_song_tb` VALUES ('125', '110', '54');
INSERT INTO `song_list_song_tb` VALUES ('126', '111', '54');
INSERT INTO `song_list_song_tb` VALUES ('127', '112', '54');
INSERT INTO `song_list_song_tb` VALUES ('128', '113', '46');
INSERT INTO `song_list_song_tb` VALUES ('129', '114', '46');
INSERT INTO `song_list_song_tb` VALUES ('130', '115', '46');
INSERT INTO `song_list_song_tb` VALUES ('131', '116', '46');
INSERT INTO `song_list_song_tb` VALUES ('132', '117', '46');
INSERT INTO `song_list_song_tb` VALUES ('133', '118', '47');
INSERT INTO `song_list_song_tb` VALUES ('134', '119', '47');
INSERT INTO `song_list_song_tb` VALUES ('135', '120', '47');
INSERT INTO `song_list_song_tb` VALUES ('136', '121', '47');
INSERT INTO `song_list_song_tb` VALUES ('137', '122', '47');
INSERT INTO `song_list_song_tb` VALUES ('138', '123', '60');
INSERT INTO `song_list_song_tb` VALUES ('139', '124', '60');
INSERT INTO `song_list_song_tb` VALUES ('140', '125', '60');
INSERT INTO `song_list_song_tb` VALUES ('141', '126', '60');
INSERT INTO `song_list_song_tb` VALUES ('142', '127', '60');
INSERT INTO `song_list_song_tb` VALUES ('143', '128', '60');
INSERT INTO `song_list_song_tb` VALUES ('144', '129', '56');
INSERT INTO `song_list_song_tb` VALUES ('145', '130', '56');
INSERT INTO `song_list_song_tb` VALUES ('146', '131', '56');
INSERT INTO `song_list_song_tb` VALUES ('147', '132', '56');
INSERT INTO `song_list_song_tb` VALUES ('148', '133', '56');
INSERT INTO `song_list_song_tb` VALUES ('149', '134', '55');
INSERT INTO `song_list_song_tb` VALUES ('150', '135', '55');
INSERT INTO `song_list_song_tb` VALUES ('151', '136', '55');
INSERT INTO `song_list_song_tb` VALUES ('152', '137', '55');
INSERT INTO `song_list_song_tb` VALUES ('153', '138', '55');
INSERT INTO `song_list_song_tb` VALUES ('154', '139', '66');
INSERT INTO `song_list_song_tb` VALUES ('155', '140', '66');
INSERT INTO `song_list_song_tb` VALUES ('156', '141', '66');
INSERT INTO `song_list_song_tb` VALUES ('157', '142', '66');
INSERT INTO `song_list_song_tb` VALUES ('158', '143', '66');
INSERT INTO `song_list_song_tb` VALUES ('159', '144', '48');
INSERT INTO `song_list_song_tb` VALUES ('160', '145', '48');
INSERT INTO `song_list_song_tb` VALUES ('161', '146', '48');
INSERT INTO `song_list_song_tb` VALUES ('162', '147', '48');
INSERT INTO `song_list_song_tb` VALUES ('163', '148', '48');
INSERT INTO `song_list_song_tb` VALUES ('164', '149', '49');
INSERT INTO `song_list_song_tb` VALUES ('165', '150', '49');
INSERT INTO `song_list_song_tb` VALUES ('166', '151', '49');
INSERT INTO `song_list_song_tb` VALUES ('167', '152', '49');
INSERT INTO `song_list_song_tb` VALUES ('168', '153', '49');
INSERT INTO `song_list_song_tb` VALUES ('169', '154', '50');
INSERT INTO `song_list_song_tb` VALUES ('170', '155', '50');
INSERT INTO `song_list_song_tb` VALUES ('171', '156', '50');
INSERT INTO `song_list_song_tb` VALUES ('172', '157', '50');
INSERT INTO `song_list_song_tb` VALUES ('173', '158', '50');
INSERT INTO `song_list_song_tb` VALUES ('174', '159', '50');
INSERT INTO `song_list_song_tb` VALUES ('175', '160', '59');
INSERT INTO `song_list_song_tb` VALUES ('176', '161', '59');
INSERT INTO `song_list_song_tb` VALUES ('177', '162', '59');
INSERT INTO `song_list_song_tb` VALUES ('178', '163', '59');
INSERT INTO `song_list_song_tb` VALUES ('179', '164', '65');
INSERT INTO `song_list_song_tb` VALUES ('180', '165', '65');
INSERT INTO `song_list_song_tb` VALUES ('181', '166', '65');
INSERT INTO `song_list_song_tb` VALUES ('182', '167', '65');
INSERT INTO `song_list_song_tb` VALUES ('183', '168', '65');
INSERT INTO `song_list_song_tb` VALUES ('184', '169', '51');
INSERT INTO `song_list_song_tb` VALUES ('185', '170', '51');
INSERT INTO `song_list_song_tb` VALUES ('186', '171', '51');
INSERT INTO `song_list_song_tb` VALUES ('187', '172', '51');
INSERT INTO `song_list_song_tb` VALUES ('188', '173', '51');
INSERT INTO `song_list_song_tb` VALUES ('189', '174', '51');
INSERT INTO `song_list_song_tb` VALUES ('190', '175', '52');
INSERT INTO `song_list_song_tb` VALUES ('191', '176', '52');
INSERT INTO `song_list_song_tb` VALUES ('192', '177', '52');
INSERT INTO `song_list_song_tb` VALUES ('193', '178', '57');
INSERT INTO `song_list_song_tb` VALUES ('194', '179', '57');
INSERT INTO `song_list_song_tb` VALUES ('195', '180', '57');
INSERT INTO `song_list_song_tb` VALUES ('196', '181', '57');
INSERT INTO `song_list_song_tb` VALUES ('197', '182', '57');
INSERT INTO `song_list_song_tb` VALUES ('198', '183', '53');
INSERT INTO `song_list_song_tb` VALUES ('199', '184', '53');
INSERT INTO `song_list_song_tb` VALUES ('200', '185', '53');
INSERT INTO `song_list_song_tb` VALUES ('201', '186', '53');
INSERT INTO `song_list_song_tb` VALUES ('202', '187', '53');
INSERT INTO `song_list_song_tb` VALUES ('203', '188', '58');
INSERT INTO `song_list_song_tb` VALUES ('204', '189', '58');
INSERT INTO `song_list_song_tb` VALUES ('205', '190', '58');
INSERT INTO `song_list_song_tb` VALUES ('206', '191', '58');
INSERT INTO `song_list_song_tb` VALUES ('207', '192', '58');
INSERT INTO `song_list_song_tb` VALUES ('208', '193', '58');
INSERT INTO `song_list_song_tb` VALUES ('209', '194', '58');
INSERT INTO `song_list_song_tb` VALUES ('210', '195', '58');
INSERT INTO `song_list_song_tb` VALUES ('211', '196', '58');
INSERT INTO `song_list_song_tb` VALUES ('212', '197', '67');
INSERT INTO `song_list_song_tb` VALUES ('213', '198', '67');
INSERT INTO `song_list_song_tb` VALUES ('214', '199', '67');
INSERT INTO `song_list_song_tb` VALUES ('215', '200', '67');
INSERT INTO `song_list_song_tb` VALUES ('216', '201', '67');
INSERT INTO `song_list_song_tb` VALUES ('217', '202', '67');
INSERT INTO `song_list_song_tb` VALUES ('218', '190', '68');
INSERT INTO `song_list_song_tb` VALUES ('219', '141', '68');
INSERT INTO `song_list_song_tb` VALUES ('220', '99', '68');
INSERT INTO `song_list_song_tb` VALUES ('221', '100', '68');
INSERT INTO `song_list_song_tb` VALUES ('222', '198', '69');
INSERT INTO `song_list_song_tb` VALUES ('223', '199', '69');
INSERT INTO `song_list_song_tb` VALUES ('224', '184', '69');
INSERT INTO `song_list_song_tb` VALUES ('225', '186', '69');
INSERT INTO `song_list_song_tb` VALUES ('226', '113', '70');
INSERT INTO `song_list_song_tb` VALUES ('227', '115', '70');
INSERT INTO `song_list_song_tb` VALUES ('228', '149', '70');
INSERT INTO `song_list_song_tb` VALUES ('229', '151', '70');
INSERT INTO `song_list_song_tb` VALUES ('230', '101', '71');
INSERT INTO `song_list_song_tb` VALUES ('231', '104', '71');
INSERT INTO `song_list_song_tb` VALUES ('232', '190', '71');
INSERT INTO `song_list_song_tb` VALUES ('233', '192', '71');
INSERT INTO `song_list_song_tb` VALUES ('234', '179', '72');
INSERT INTO `song_list_song_tb` VALUES ('235', '181', '72');
INSERT INTO `song_list_song_tb` VALUES ('236', '188', '72');
INSERT INTO `song_list_song_tb` VALUES ('237', '154', '73');
INSERT INTO `song_list_song_tb` VALUES ('238', '156', '73');
INSERT INTO `song_list_song_tb` VALUES ('239', '196', '73');
INSERT INTO `song_list_song_tb` VALUES ('240', '149', '74');
INSERT INTO `song_list_song_tb` VALUES ('241', '153', '74');
INSERT INTO `song_list_song_tb` VALUES ('242', '23', '14');
INSERT INTO `song_list_song_tb` VALUES ('243', '24', '14');
INSERT INTO `song_list_song_tb` VALUES ('244', '34', '18');
INSERT INTO `song_list_song_tb` VALUES ('245', '43', '19');
INSERT INTO `song_list_song_tb` VALUES ('246', '25', '20');
INSERT INTO `song_list_song_tb` VALUES ('247', '45', '21');
INSERT INTO `song_list_song_tb` VALUES ('248', '12', '22');
INSERT INTO `song_list_song_tb` VALUES ('249', '34', '23');
INSERT INTO `song_list_song_tb` VALUES ('250', '36', '30');
INSERT INTO `song_list_song_tb` VALUES ('251', '76', '41');

-- ----------------------------
-- Table structure for song_list_tb
-- ----------------------------
DROP TABLE IF EXISTS `song_list_tb`;
CREATE TABLE `song_list_tb` (
  `songListId` int NOT NULL AUTO_INCREMENT,
  `songListName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `songListImg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updataTime` datetime DEFAULT NULL,
  `commentNumber` int DEFAULT NULL,
  PRIMARY KEY (`songListId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of song_list_tb
-- ----------------------------
INSERT INTO `song_list_tb` VALUES ('1', '电影', '20', '电影经典歌曲', '../static/images/songlist/电影.jpg', '2020-06-23 00:00:00', '2020-06-23 00:00:00', '0');
INSERT INTO `song_list_tb` VALUES ('2', '父亲节歌单', '21', '父亲节', '../static/images/songlist/父亲节.jpg', '2020-06-23 00:00:00', '2020-06-23 00:00:00', '0');
INSERT INTO `song_list_tb` VALUES ('3', '失恋星球', '21', '失恋', '../static/images/songlist/失恋星球.jpg', '2020-06-23 00:00:00', '2020-06-23 00:00:00', '0');
INSERT INTO `song_list_tb` VALUES ('4', '书店钢琴曲', '23', '书店 钢琴曲', '../static/images/songlist/书店书城钢琴曲.jpg', '2020-06-23 00:00:00', '2020-06-23 00:00:00', '0');
INSERT INTO `song_list_tb` VALUES ('5', '动漫中的旋律', '23', '动漫', '../static/images/songlist/动漫.jpg', '2020-06-23 00:00:00', '2020-06-23 00:00:00', '0');
INSERT INTO `song_list_tb` VALUES ('6', '英语学习', '7', '英语学习', '../static/images/songlist/英语学习.jpg', '2020-06-23 00:00:00', '2020-06-23 00:00:00', '0');
INSERT INTO `song_list_tb` VALUES ('7', 'Get A Life 演唱会', '1', 'Get A Life 演唱会', '../static/images/album/GetALife.jpg', '2006-04-01 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('8', 'What\'s Going On...?', '1', 'What\'s going on...?', '../static/images/album/what\'sgoingon.jpg', '2006-11-01 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('9', 'rice & shine', '1', 'rice & shine', '../static/images/album/riceshine.jpg', '2014-05-15 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('10', '新的心跳', '2', '新的心跳', '../static/images/album/新的心跳.jpg', '2015-11-05 00:00:00', '2020-06-27 14:34:17', '0');
INSERT INTO `song_list_tb` VALUES ('11', '光年之外', '2', '光年之外', '../static/images/album/光年之外.jpg', '2016-12-30 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('12', '后会无期', '2', '后会无期', '../static/images/album/后会无期.jpg', '2014-07-10 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('13', '另一个童话', '2', '另一个童话', '../static/images/album/另一个童话.jpg', '2018-08-16 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('14', '异类', '3', '异类', '../static/images/album/异类.jpg', '2015-12-18 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('15', '好想爱这个世界啊', '3', '好想爱这个世界啊', '../static/images/album/好想爱这个世界啊.jpg', '2019-12-04 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('16', '你要相信这不是最后一天', '3', '你要相信这不是最后一天', '../static/images/album/你要相信这不是最后一天.jpg', '2020-02-25 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('17', '新世界NEW WORLD', '3', '新世界NEW WORLD', '../static/images/album/新世界NEW WORLD.jpg', '2020-04-08 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('18', '烟火里的尘埃', '3', '烟火里的尘埃', '../static/images/album/烟火里的尘埃.jpg', '2014-08-26 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('19', '新地球', '4', '新地球', '../static/images/album/新地球.jpg', '2014-12-27 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('20', '她说', '4', '她说 概念自选辑', '../static/images/album/她说.jpg', '2010-12-08 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('21', '第二天堂', '4', '第二天堂（江南）', '../static/images/album/第二天堂.jpg', '2004-06-04 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('22', '蜀绣', '5', '蜀绣', '../static/images/album/蜀绣.jpg', '2008-07-15 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('23', '给女孩', '5', '给女孩（单曲）', '../static/images/album/给女孩.jpg', '2020-03-08 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('24', '平凡的一天', '6', '平凡的一天', '../static/images/album/平凡的一天.jpg', '2018-07-03 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('25', '小王', '6', '小王', '../static/images/album/小王.jpg', '2020-02-20 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('26', '逆光', '7', '逆光', '../static/images/album/逆光.jpg', '2007-03-22 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('27', '我要的幸福', '7', '我要的幸福', '../static/images/album/我要的幸福.jpg', '2000-12-07 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('28', 'The Moment', '7', 'The Moment（关键时刻）', '../static/images/album/themoment.jpg', '2003-08-22 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('29', '阿菲正传', '8', '阿菲正传', '../static/images/album/阿菲正传.jpg', '2009-06-23 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('30', '我和我的祖国', '8', '我和我的祖国', '../static/images/album/我和我的祖国.jpg', '2019-09-25 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('31', '菲主打', '8', '菲主打', '../static/images/album/菲主打.jpg', '1998-08-08 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('32', '神的孩子都在跳舞', '9', '神的孩子都在跳舞', '../static/images/album/神的孩子都在跳舞.jpg', '2004-11-05 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('33', '知足', '9', '知足（最真杰作选）', '../static/images/album/知足.jpg', '2005-08-15 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('34', '吉姆餐厅', '10', '吉姆餐厅', '../static/images/album/吉姆餐厅.jpg', '2014-10-19 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('35', '赵小雷', '10', '赵小雷', '../static/images/album/赵小雷.jpg', '2011-08-07 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('36', '成都', '10', '成都', '../static/images/album/成都.jpg', '2016-10-24 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('37', '无法长大', '10', '无法长大', '../static/images/album/无法长大.jpg', '2016-12-21 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('38', '十九岁', '10', '十九岁', '../static/images/album/十九岁.jpg', '2018-01-19 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('39', 'I Am What I Am', '11', 'I Am What I Am', '../static/images/album/iamwhatiam.jp', '2010-03-23 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('40', '钟情张国荣', '11', '钟情张国荣', '../static/images/album/钟情张国荣.jpg', '2004-04-01 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('41', '我很忙', '12', '我很忙', '../static/images/album/我很忙.jpg', '2007-11-02 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('42', '魔杰座', '12', '魔杰座', '../static/images/album/魔杰座.jpg', '2008-10-15 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('43', '七里香', '12', '七里香', '../static/images/album/七里香.jpg', '2004-08-03 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('44', '十一月的肖邦', '12', '十一月的肖邦', '../static/images/album/十一月的肖邦.jpg', '2005-11-01 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('45', '电音', '100', null, '../static/images/classify/电音.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('46', '古风', '100', null, '../static/images/classify/古风.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('47', '金属', '100', null, '../static/images/classify/金属.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('48', '流行', '100', null, '../static/images/classify/流行.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('49', '民谣', '100', null, '../static/images/classify/民谣.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('50', '轻音乐', '100', null, '../static/images/classify/轻音乐.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('51', '说唱', '100', null, '../static/images/classify/说唱.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('52', '舞曲', '100', null, '../static/images/classify/舞曲.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('53', '乡村', '100', null, '../static/images/classify/乡村.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('54', '古典', '100', null, '../static/images/classify/古典.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('55', '蓝调', '100', null, '../static/images/classify/蓝调.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('56', '爵士', '100', null, '../static/images/classify/爵士.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('57', '下午茶', '100', null, '../static/images/classify/说唱.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('58', '学习', '100', null, '../static/images/classify/舞曲.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('59', '散步', '100', null, '../static/images/classify/乡村.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('60', '酒吧', '100', null, '../static/images/classify/古典.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('61', '地铁', '100', null, '../static/images/classify/蓝调.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('62', '工作', '100', null, '../static/images/classify/爵士.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('63', '孤独', '100', null, '../static/images/classify/电音.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('64', '安静', '100', null, '../static/images/classify/古风.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('65', '伤感', '100', null, '../static/images/classify/金属.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('66', '浪漫', '100', null, '../static/images/classify/流行.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('67', '治愈', '100', null, '../static/images/classify/民谣.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('68', '一周新歌推荐 ', '100', null, '../static/images/songlist/一周新歌.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('69', '失恋星球|当初的所有喜欢 都变成了心酸', '100', null, '../static/images/songlist/失恋星球.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('70', '电影中的经典歌曲', '100', null, '../static/images/songlist/电影.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('71', '适合英语学习的安静歌曲', '100', null, '../static/images/songlist/英语学习.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('72', '书店书城中常用钢琴曲', '100', null, '../static/images/songlist/书店书城钢琴曲.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('73', '动漫中的那些动人心弦的旋律', '100', null, '../static/images/songlist/动漫.jpg', '2020-06-29 00:00:00', null, '0');
INSERT INTO `song_list_tb` VALUES ('74', '父亲节|感谢你不是超人却变成了我的万能', '100', null, '../static/images/songlist/父亲节.jpg', '2020-06-29 00:00:00', null, '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '用户密码',
  `email` varchar(255) DEFAULT NULL COMMENT '用户邮箱',
  `date` varchar(255) DEFAULT NULL COMMENT '用户创建日期',
  `introduction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '陈奕迅', '', '', '', '陈奕迅（Eason Chan），1974年7月27日出生于香港，中国香港男歌手、演员，毕业于英国金斯顿大学。 1995年因获得第14届新秀歌唱大赛冠军而正式出道。1996年发行个人首张专辑《陈奕迅》。1997年主演个人首部电影《旺角大家姐》。1998年凭借歌曲《天下无双》在乐坛获得关注。2000年发行的歌曲《K歌之王》奠定其在歌坛的地位。2001年发行流行摇滚风格的专辑《反正是我》。2003年发行个人首张概念专辑《黑·白·灰》；专辑中的歌曲《十年》获得第4届百事音乐风云榜十大金曲奖。2005年发行的歌曲《浮夸》成为其歌唱生涯的代表作品之一。2006年起，连续9年获得叱咤乐坛流行榜颁奖典礼叱咤乐坛我最喜爱的男歌手奖。2008年1月，获得十大劲歌金曲最受欢迎男歌星奖”。2010年凭借剧情片《金钱帝国》获得星光大典港台年度电影男演员奖 。2012年发行舞曲风格的粤语专辑《…3mm》。2015年凭借专辑《米·闪》获得第26届台湾金曲奖最佳国语男歌手奖。2016年举行“Another Eason\'s LIFE世界巡回演唱会”。同年10月，发行单曲《I Do》。11月，演唱电影《摆渡人》爱情版主题曲《让我留在你身边》。 2017年5月18日，陈奕迅发行国语EP《放&披风》，包含两首全新国语双单曲《放》和《披风》。同年，确认加盟原创专业音乐节目《中国新歌声第二季》。10月9日，发行国语专辑《C\'mon in~》。2018年发行专辑《L.O.V.E.》。', '../static/images/singers/chenyixun.jpg');
INSERT INTO `user` VALUES ('2', '邓紫棋', '', '', '', '邓紫棋（Gloria Tang Tsz-Kei），又名G.E.M.，原名邓诗颖，1991年8月16日生于中国上海，4岁移居中国香港，中国香港创作型女歌手。 2008年7月10日以16岁之龄出道。同年10月16日发行首张EP《G.E.M.》，取得香港各大乐坛颁奖礼新人金奖。2011年5月，以19岁之龄在香港红馆举行5场个人演唱会。2012年7月，发行第四张个人专辑《Xposed》，凭借该专辑邓紫棋在2013年获得IFPI香港唱片销量大奖全年最高销量女歌手奖、最高销量国语唱片奖，并入围第24届金曲奖最佳国语女歌手奖。2014年1月，参加湖南卫视《我是歌手第二季》节目，获得总决赛亚军。3月31日，获第27届KCA美国儿童选择奖“最受欢迎亚洲艺人”。12月10日，邓紫棋的蜡像入驻香港杜莎夫人蜡像馆。2015年2月18日，参加2015年中央电视台春节联欢晚会，自弹自唱其自创的歌曲《多远都要在一起》。5月12日，再登福布斯中国名人榜，排名升至第11位 。2015年7月，未满24岁便完成80场个人演唱会。截至北京时间2015年11月22日伦敦温布利终站，《G.E.M.X.X.X.Live”世界巡回演唱会》已经完成73场。打破之前华语乐坛女歌手单轮巡演59场的记录。8月15日，确认加盟中国好声音第四季担任梦想导师。同年，成为首位在瑞士阿尔卑斯山脉少女峰11月6日，获MTV欧洲音乐奖“中国内地及香港地区最佳艺人奖”。 2018年11月4日，受邀参加美国NASA“科学突破奖”颁奖典礼，担任颁奖及表演嘉宾，演唱个人原创歌曲《光年之外》；11月19日，入选BBC“年度百大女性”举办音乐会的中国音乐人。2016年1月5日，邓紫棋入选《福布斯》\"全球30岁以下30位最具潜力杰出音乐人\" 。2019年12月，推出音乐专辑《摩天动物园》。', '../static/images/singers/dengziqi.jpg');
INSERT INTO `user` VALUES ('3', '华晨宇', '', '', '', '华晨宇，1990年2月7日生于湖北十堰 ，中国男歌手，毕业于武汉音乐学院。 2013年参加湖南卫视《快乐男声》获年度总冠军出道。同年12月6日，获第六届音乐风云榜新人盛典最受欢迎男歌手奖。2014年1月30日，华晨宇登上马年央视春晚并献唱《在那遥远的地方》。3月31日，获第21届东方风云榜最佳新锐歌手奖。4月参加大型户外真人秀节目《花儿与少年》。9月6日及7日，华晨宇2014年“火星”演唱会在北京万事达中心连开两场，并采用“场馆演唱，线上直播”的全新模式 。9月19日，首张个人专辑《卡西莫多的礼物》全球同步发行。10月，以华语音乐人代表之姿登上《L’Uomo Vogue》\"\"THE MUSIC ISSUE“专题。12月，发行第二张专辑《异类》，获2016酷音乐亚洲盛典年度最佳专辑等奖项。 2016年7-9月，2016火星演唱会相继在北上深三个城市举办。9月27日，出席亚洲新歌榜2016年度盛典，揽获最佳男歌手奖。10月，加盟东方卫视《天籁之战》。12月2日，获2016MAMA亚洲最佳艺人奖。2017年3月14日，专辑《H》发行。6月，参加旅行真人秀节目《旅途的花样》。2018年2月，加盟《歌手2018》。获总决赛亚军；同年9月8日-9日在鸟巢体育场连开两场2018火星演唱会。2019年2月担任浙江卫视《王牌对王牌第四季》固定MC；同年8月福布斯发布中国100名人榜，华晨宇位列33位；同年11月15日-17日在海口五源河体育场连开3场2019火星演唱会。 2020年4月8日发行第四张个人专辑《新世界NEW WORLD》。', '../static/images/singers/huachenyu.jpg');
INSERT INTO `user` VALUES ('4', '林俊杰', '', '', '', '林俊杰（JJ Lin），新加坡人，流行歌手、词曲创作者、音乐制作人。2003年发行首张创作专辑《乐行者》 ，2004年凭《江南》一曲成名 。2014年以专辑《因你而在 Stories Untold》夺得第25届台湾金曲奖最佳国语男歌手奖 。 2007年成立个人音乐制作公司JFJ Productions，负责单曲及专辑制作；2008年创立潮流品牌SMG；2012年发行故事影像书《记得》，成功跻身畅销书作家行列 。 除演艺事业外，林俊杰还担任了2008年北京奥运会 及2010年新加坡青奥会 火炬手，为2010年上海世博会新加坡馆创作并演唱了主题曲《感动每一刻》 。凭借在音乐创作与慈善公益等方面的表现，林俊杰于2009年荣获“新加坡杰出青年奖” ，2014年获得第5届“通商中国青年奖” 。 林俊杰第十一张创作专辑《新地球GENESIS》于2014年12月27日正式发行 。2013年开启的“时线TimeLine世界巡回演唱会”横跨四大洲、24个城市。12月19日携“时线：新地球世界巡回演唱会”登陆高雄巨蛋；12月25日发行首张实验专辑《和自己对话》。2016年1月15日首次正式参演的电影《消失的爱人》上映。 2017年8月23日，携虚拟乐团“消除联萌”推出的全新单曲《丹宁执着》上线。2017年10月27日，二度担任常驻导师的浙江卫视音乐综艺《梦想的声音第二季》开播；11月，受邀与Luis Fonsi合作推出2017年度热单《Despacito》中文版；12月29日将推出个人第13张创作专辑《伟大的渺小》。 2018年3月17日，林俊杰“圣所”世界巡回演唱会将从上海起跑。；6月16日，“圣所”演唱会将在济南奥体中心体育馆开唱。', '../static/images/singers/linjunjie.jpg');
INSERT INTO `user` VALUES ('5', '李宇春', '', '', '', '李宇春（Chris Lee），1984年3月10日出生于成都，中国流行女歌手，词曲创作人，电影演员，演唱会导演。 2005年，李宇春获得“超级女声”比赛全国总冠军，同年10月登上美国《时代周刊》封面。2006年推出首张个人专辑《皇后与梦想》，年终销量137万张，创立个人品牌演唱会“WhyMe”。2007年推出第二张专辑《我的》并首次开展全国巡演，凭此再登美国《时代周刊》。2008年推出概念专辑《少年中国》，获得MTV亚洲音乐大奖中国最受欢迎歌手奖。2009年发行原创专辑《李宇春》，入驻杜莎夫人蜡像馆。2010年成立个人工作室。2011年推出专辑《会跳舞的文艺青年》。2012年举行疯狂世界巡演，获得韩国MAMA亚洲最佳歌手奖。2013年凭原创作品《再不疯狂我们就老了》获得EMA欧洲音乐大奖全球最佳艺人奖。2014年发行原创专辑《1987我不知会遇见你》，二度受邀出席戛纳电影节亮相闭幕式担任颁奖嘉宾，获得WMA世界音乐大奖大中华区最高销量奖和APEC最杰出女性奖。2015年首登央视春晚独唱个人作品《蜀绣》。2016年与经济公司约满成为独立艺人。李宇春涉足影视，主演了《十月围城》《龙门飞甲》《血滴子》《澳门风云3》，两度入围香港金像奖最佳原创电影歌曲，凭《十月围城》获得香港导演会最佳新演员金奖及亚洲电影大奖、香港金像奖、大众电影百花奖最佳新演员提名。2013年主演赖声川话剧《如梦之梦》。2014年担任戛纳电影节颁奖嘉宾，同年发行专辑《1987我不知会遇见你》，获WMA世界音乐大奖大中华区最高销量奖和APEC杰出女性奖。2016年发行专辑《野蛮生长》并举行巡回演唱会，专辑年度销量超656万张。2017年发行专辑《流行》，销量登顶巅峰畅销榜总冠军。2018年举行李宇春流行（liú xíng）巡演。2019年，发行全新创作专辑《哇》，获2019年度专辑销售额冠军（不含EP和单曲）。李宇春是玉米爱心基金终身形象代言人。', '../static/images/singers/liyuchun.jpg');
INSERT INTO `user` VALUES ('6', '毛不易', '', '', '', '毛不易，男，原名王维家，黑龙江齐齐哈尔人。综艺节目《明日之子》的参赛选手，以一首逗趣的原创歌曲《如果有一天我变得很有钱》进入薛之谦盛世独秀赛道；后以一曲《消愁》实力圈粉，为大家所喜爱。现为《明日之子》九大厂牌之一，厂牌名：巨星不易工作室。 2017年，参加腾讯视频选秀娱乐节目《明日之子》的比赛，获得全国总决赛冠军，从而正式进入演艺圈；9月1日，推出首张个人音乐专辑《巨星不易工作室 No.1》；11月11日，推出个人原创单曲《项羽虞姬》；12月28日，获得腾讯娱乐白皮书音乐年度之星奖。2018年1月7日，获得首届金鲛奖年度十佳网络新星奖。4月，作为“无限唱作人”参加江苏卫视音乐唱作类真人秀节目《无限歌谣季》；5月31日，推出首张个人录音室专辑《平凡的一天》。同年，获得亚洲新歌榜年度盛典年度最佳音乐人奖、亚洲音乐盛典最具潜力男歌手奖、年度最佳唱作人奖。2019年3月25日，其演唱的歌曲《平凡的一天》获得第26届东方风云榜音乐盛典十大金曲奖、最佳作词奖；8月，获2019福布斯中国100名人榜荣誉。2020年1月，以首发歌手身份加盟湖南卫视音乐竞技节目《歌手·当打之年》；2月20日，推出第2张个人音乐专辑《小王》。', '../static/images/singers/maobuyi.jpg');
INSERT INTO `user` VALUES ('7', '孙燕姿', '', '', '', '孙燕姿（Stefanie Sun），新加坡人，华语流行女歌手，以独特的嗓音和唱腔、扎实的音乐功底著称。她的歌积极向上、给人力量，个人风格明显，深受听众喜爱。 2000年签约华纳唱片，发行首张专辑《孙燕姿同名专辑》，以《天黑黑》一曲成名，获得包括台湾金曲奖在内的亚洲各地15个最佳新人奖，至今仍为华语歌坛之纪录。同年发行专辑《我要的幸福》，以新人之姿，入围金曲奖最佳女演唱人奖。 2001年发行专辑《风筝》，自己作曲的《任性》获得hito百大单曲第一名。2003年发行专辑《The Moment》，新歌《遇见》再次拿下hito百大单曲第一名。在连年囊括各地颁奖礼最佳女歌手之际，身处事业巅峰期的她暂别歌坛一年。 2004年携《Stefanie》专辑完美复出，全亚洲热卖220万张，并凭此专辑获得第16届台湾金曲奖最佳国语女演唱人奖、MTV日本音乐录像带奖最佳大中华艺人奖。 之后又发表《逆光》(2007)、《是时候》(2011)等数张经典专辑。并在2009年获得光线传媒娱乐大典-十年港台最具影响力女歌手奖、2010年获得音乐风云榜十年盛典-十年十大最具影响力音乐人物奖。 生涯多次获得各地音乐奖项，六次入围台湾金曲奖最佳女歌手、四次入围最佳专辑、七次获得香港IFPI十大销量国语唱片奖；获得香港十大中文金曲最佳女歌手五次、全球华语歌曲排行榜最受欢迎五次、MTV亚洲大奖地区最受欢迎五次、音乐风云榜最佳女歌手和最受欢迎女歌手各四次。 2014年发行新专辑《克卜勒》，并展开新一轮的克卜勒巡回演唱会。凭借《克卜勒》获得香港十大中文金曲颁奖礼全国最佳女歌手奖 。2016年4月发布新单曲《在，也不见》。', '../static/images/user/sunyanzi.jpg');
INSERT INTO `user` VALUES ('8', '王菲', '', '', '', '王菲（Faye Wong），1969年8月8日出生于北京，中国流行乐女歌手、影视演员。 1989年凭借歌曲《仍是旧句子》在香港歌坛出道，同年发行首张个人专辑《王靖雯》。1992年因演唱歌曲《容易受伤的女人》而被听众所熟知。1993年在专辑《十万个为什么？》 中尝试另类音乐的风格。1994年凭借专辑《天空》奠定其在华语歌坛的地位，并获得十大劲歌金曲最受欢迎女歌星奖；同年在香港红磡体育馆举办18场“最精彩演唱会”，打破中国香港歌手初次开演唱会的场次纪录。1996年成为首位登上美国《时代周刊》封面的华人歌手。1998年因在央视春晚上演唱歌曲《相约1998》而在中国内地获得更多的关注；同年发行专辑《唱游》，通过运用颤音、拖音等技巧确立其个人风格，并于次年获得新加坡SPVA唱片畅销排行榜年度销量冠军。 1999年凭借歌曲《Eyes on Me》获得第41届日本唱片大奖亚洲音乐奖，同年在日本武道馆举行个人演唱会。2002年获得吉尼斯世界纪录大全颁发的“唱片销量最高的粤语女歌手”证书 。2003年出演喜剧电影《天下无双》。2004年凭借专辑《将爱》获得第15届台湾金曲奖最佳国语女演唱人奖。2005年在结束“菲比寻常巡回演唱会”后淡出乐坛。2010年复出乐坛并在央视春晚上演唱歌曲《传奇》，同年举办巡回演唱会。2012年再度登上央视春晚，并演唱歌曲《因为爱情》。2016年发行歌曲《尘埃》。 演艺事业外，王菲热心公益慈善。2006年11月，成立嫣然基金会 。2012年5月，成为北京嫣然天使儿童医院的创始人之一。', '../static/images/singers/wangfei.jpg');
INSERT INTO `user` VALUES ('9', '五月天', '', '', '', '五月天，台湾摇滚乐团，由乐队团长兼吉他手怪兽（温尚翊）、主唱阿信（陈信宏）、吉他手石头（石锦航）、贝斯玛莎（蔡升晏）和鼓手冠佑（刘谚明）组成，前身为“So Band”乐团，在1997年3月29日更名为“五月天”。至2016年，四次拿下\"台湾金曲奖\"和“最佳乐团奖”。 1999年，发行首张专辑《第一张创作专辑》。2000年7月7日，发行了第二张创作专辑《爱情万岁》。2001年7月6日，推出暂别歌坛之作第三张创作专辑《人生海海》。2003年11月11日，发行第四张专辑《时光机》。2004年11月5日，推出第五张专辑《神的孩子都在跳舞》。2005年8月，推出精选辑《知足Just My Pride最真杰作选》。2006年12月29日，发行第六张专辑《为爱而生》。2008年10月23日，发行第七张专辑《后青春期的诗》。2011年12月16日，发行第八张专辑《第二人生》。2016年7月21日，发行第九张专辑《自传》。乐团成员也积极为其他歌手创作歌曲，并参与歌曲的编曲、演奏、和声等幕后制作。2017年5月2日，为电影《春娇救志明》演唱主题曲《春娇救志明》，这也是歌曲《志明与春娇》的国语版。 2019年4月25日，五月天演唱会电影《人生无限公司》宣布定档5月24日,同时影片发布了定档预告和海报。', '../static/images/singers/wuyuetian.jpg');
INSERT INTO `user` VALUES ('10', '赵雷', '', '', '', '民谣音乐人赵雷，中国内地新生代民谣歌手。1986年7月20日生于北京，高中时间接触音乐，开始学习吉他。年纪轻轻便踏遍祖国的大江南北，山河东西，足迹遍布陕甘、云藏，为自己的音乐之路积累了大量时代底蕴与人文滋养。赵雷的音乐，虽然没有诗句般的柔情感动，但痞子气的调侃，单纯率真直达你的内心。词作、编曲朴实坦诚以描写生活中细微见长，每一首歌都像一部短剧，折射出他自己的生活、他眼中的社会、甚至他心底的梦想，画面感极强，是最具北京胡同文化气质的新生代音乐人之一。', '../static/images/singers/zhaolei.jpg');
INSERT INTO `user` VALUES ('11', '张国荣', '', '', '', '张国荣1956年9月12日生于香港，歌手、演员、音乐人，演艺圈影视歌多栖发展的代表之一。 1977年参加亚洲歌唱大赛出道，1983年以《风继续吹》在歌坛成名。1984年凭借《Monica》奠定其在香港歌坛的地位。1987年凭借专辑《爱慕》成为首位打入韩国音乐市场的粤语歌手，华语唱片在韩国销量纪录保持者。1988年，1989年获得十大劲歌金曲最受欢迎男歌星奖。1999年获得香港乐坛最高荣誉奖金针奖。2000年获得CCTV-MTV音乐盛典亚洲最杰出艺人奖。010年入选美国CNN评出的“过去五十年里全球最知名的20位歌手或者乐团”。他涉猎不同风格的音乐题材，除擅长词曲创作外，他亦担任过MTV导演、唱片监制、演唱会艺术总监等。978年开始参演电视剧，在《我家的女人》中展现细腻的表演风格。80年代后期将事业重心移至影坛，成功诠释了宁采臣、旭仔、程蝶衣、欧阳锋等不同类型的角色。991年凭借《阿飞正传》当选香港电影金像奖影帝；1993年主演的《霸王别姬》是中国电影史上首部获得戛纳国际电影节金棕榈大奖的电影，打破中国内地文艺片在美国的票房纪录，他亦凭此片受到国际影坛的广泛关注，获得日本影评人大奖最佳男主角奖以及中国电影表演艺术学会奖特别贡献奖。1993年担任东京国际电影节评委；1998年成为首位担任柏林国际电影节评委的亚洲男演员；2005年入选中国电影百年百位优秀演员；2010年入选美国CNN评出的“史上最伟大的25位亚洲演员”。 演艺事业外，他热心公益慈善，2000年执导公益电影《烟飞烟灭》。', '../static/images/singers/zhangguorong.jpg');
INSERT INTO `user` VALUES ('12', '周杰伦', '', '', '', '周杰伦（Jay Chou），1979年1月18日出生于台湾省新北市，华语流行男歌手、演员、词曲创作人、MV及电影导演、编剧及制作人。2000年被吴宗宪发掘，发行首张个人专辑《Jay》。 2001年发行专辑《范特西》。2002年在中国、新加坡、马来西亚、美国等地举办首场个人世界巡回演唱会。 2003年登上美国《时代周刊》亚洲版封面人物。 周杰伦的音乐融合中西方元素，风格多变，四次获得世界音乐大奖最畅销亚洲艺人。凭借专辑《Jay》、《范特西》、《叶惠美》及《跨时代》四次获得金曲奖\"最佳国语专辑\"奖，并凭借《魔杰座》、《跨时代》获得第20届和第22届金曲奖“最佳国语男歌手”奖； 2005年开始涉足影视，以电影《头文字D》获第42届台湾电影金马奖及第25届香港电影金像奖“最佳新人”奖。 2006年起连续三年获得世界音乐大奖中国区最畅销艺人奖。 2007年自立门户，成立JVR（杰威尔）有限公司，自编自导自演的电影《不能说的秘密》获得第44届台湾电影金马奖“年度台湾杰出电影”奖。 2008年凭借歌曲《青花瓷》获得第19届金曲奖最佳作曲人奖。 2009年入选美国CNN亚洲极具影响力人物；同年凭借专辑《魔杰座》获得第20届金曲奖最佳国语男歌手奖。 2010年入选美国《Fast Company》评出的“全球百大创意人物”。 2011年凭借专辑《跨时代》再度获得金曲奖最佳国语男歌手奖，并且第4次获得金曲奖最佳国语专辑奖；同年主演好莱坞电影《青蜂侠》。 2012年登福布斯中国名人榜榜首。 2013年自编自导自演第二部电影《天台爱情》取得了不俗的票房与口碑。 2014年加盟好莱坞电影《惊天魔盗团2》；同年发行华语乐坛首张数字音乐专辑《哎呦，不错哦》。 娱乐圈外，周杰伦在2011年跨界担任华硕（ASUS）笔电外观设计师并入股香港文化传信集团。2012在中国内地开设真爱范特西连锁KTV。 除了力拼自己的事业，周杰伦还热心公益慈善活动，多次向内地灾区捐款并与众多艺人募款新建希望小学。 2014年获QQ音乐年度盛典“港台最受欢迎男歌手”及压轴大奖“最佳全能艺人”。 2015年担任《中国好声音 第四季》导师。 2016年发行演唱会专辑《周杰伦魔天伦世界巡回演唱会》；同年推出专辑《周杰伦的床边故事》。 2017年，确认加盟原创专业音乐节目《中国新歌声第二季》。', '../static/images/singers/zhoujielun.jpg');
INSERT INTO `user` VALUES ('20', 'jacklove', '123456', 'jacklove@echoBuzzing.com', '2020-06-27 23:21:29', null, null);
INSERT INTO `user` VALUES ('21', '海底', '1234567', '海底@echoBuzzing.com', '2020-06-28 15:13:16', null, null);
INSERT INTO `user` VALUES ('22', '顾城', '1234567', '顾城@echoBuzzing.com', '2020-06-28 17:14:41', null, null);
INSERT INTO `user` VALUES ('23', 'Tom', '123456', 'Tom@echoBuzzing.com', '2020-06-27 23:21:09', '', '../static/images/user/user.png');
INSERT INTO `user` VALUES ('100', '官方', null, null, null, null, null);
