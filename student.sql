/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50629
Source Host           : localhost:3306
Source Database       : student

Target Server Type    : MYSQL
Target Server Version : 50629
File Encoding         : 65001

Date: 2019-01-03 11:58:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `agroup`
-- ----------------------------
DROP TABLE IF EXISTS `agroup`;
CREATE TABLE `agroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agroup
-- ----------------------------
INSERT INTO `agroup` VALUES ('2', '1');

-- ----------------------------
-- Table structure for `auser`
-- ----------------------------
DROP TABLE IF EXISTS `auser`;
CREATE TABLE `auser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_name` varchar(255) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `groupId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK58DD3AC6F177140` (`groupId`),
  KEY `FK58DD3AC7BC88841` (`group_id`),
  CONSTRAINT `FK58DD3AC6F177140` FOREIGN KEY (`groupId`) REFERENCES `agroup` (`id`),
  CONSTRAINT `FK58DD3AC7BC88841` FOREIGN KEY (`group_id`) REFERENCES `agroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auser
-- ----------------------------
INSERT INTO `auser` VALUES ('1', 'name1', null, '2');
INSERT INTO `auser` VALUES ('2', 'name2', null, '2');
INSERT INTO `auser` VALUES ('3', 'name8', null, '2');
INSERT INTO `auser` VALUES ('4', 'name7', null, '2');
INSERT INTO `auser` VALUES ('5', 'name0', null, '2');
INSERT INTO `auser` VALUES ('6', 'name3', null, '2');
INSERT INTO `auser` VALUES ('7', 'name4', null, '2');
INSERT INTO `auser` VALUES ('8', 'name5', null, '2');
INSERT INTO `auser` VALUES ('9', 'name9', null, '2');
INSERT INTO `auser` VALUES ('10', 'name6', null, '2');

-- ----------------------------
-- Table structure for `stu`
-- ----------------------------
DROP TABLE IF EXISTS `stu`;
CREATE TABLE `stu` (
  `stuId` int(10) NOT NULL AUTO_INCREMENT,
  `stuName` varchar(20) NOT NULL,
  `stuAge` int(10) NOT NULL,
  `stuMajor` varchar(20) NOT NULL,
  `id` int(10) NOT NULL,
  PRIMARY KEY (`stuId`),
  KEY `id` (`id`),
  CONSTRAINT `id` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu
-- ----------------------------
INSERT INTO `stu` VALUES ('1', '史坤', '22', '软件工程', '1');
INSERT INTO `stu` VALUES ('2', '徐富豪', '22', '计算机', '1');
INSERT INTO `stu` VALUES ('3', '滕继钰', '12', '信管', '1');
INSERT INTO `stu` VALUES ('4', '逯其鲁', '21', '软工', '1');
INSERT INTO `stu` VALUES ('5', '李冬杰', '22', '软工', '1');
INSERT INTO `stu` VALUES ('6', '张岳强', '23', '软工', '1');
INSERT INTO `stu` VALUES ('7', '曹恒阳', '20', '软工', '1');
INSERT INTO `stu` VALUES ('8', '何立意', '21', '自然科学', '1');
INSERT INTO `stu` VALUES ('9', '高佳丽', '22', '软工', '1');
INSERT INTO `stu` VALUES ('10', '张蕊', '21', '软工', '1');
INSERT INTO `stu` VALUES ('11', '李猛', '22', '电子', '1');
INSERT INTO `stu` VALUES ('12', '刘雪丽', '21', '软件工程', '1');
INSERT INTO `stu` VALUES ('13', '刘雪丽', '21', '软件工程', '1');
INSERT INTO `stu` VALUES ('14', '方亚平', '22', '高分子材料科学', '1');
INSERT INTO `stu` VALUES ('15', '方亚平', '22', '高分子材料科学', '1');
INSERT INTO `stu` VALUES ('16', '周恒全', '23', '化学与科学', '1');
INSERT INTO `stu` VALUES ('17', '张三', '11', '信电', '1');
INSERT INTO `stu` VALUES ('18', '李四', '11', '软工', '1');
INSERT INTO `stu` VALUES ('19', '王五', '9', '信电', '1');
INSERT INTO `stu` VALUES ('20', '赵六', '23', '交通', '1');
INSERT INTO `stu` VALUES ('21', '李新雨', '21', '软件工程', '1');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` varchar(40) NOT NULL DEFAULT '',
  `name` varchar(20) DEFAULT NULL,
  `gender` varchar(4) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `cellphone` varchar(20) DEFAULT NULL,
  `sno` varchar(40) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('04ced40a-0bf5-4a0c-a50f-ea6ef860e91d', 'Mary', '女', '1900-01-01', '', '', '', '', '老外');
INSERT INTO `student` VALUES ('06c6577d-dd82-4458-9d49-25a06564286c', '地方话', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('072dea0b-323c-46b1-aedb-5b1fb4a3191e', '圣斗士', '男', '1900-01-01', '13001766116', '', '', '', '天马流星拳');
INSERT INTO `student` VALUES ('09d2ee95-e312-4cfa-b610-7ee5ce2660c9', '富贵花', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('0dcd0c64-608a-43c9-802f-15827c80cafe', '哈士奇', '男', '2014-05-14', '110', '', '', '', '一枚哈士奇');
INSERT INTO `student` VALUES ('0f8d3312-3db0-4b31-bb95-a8fe99f1b052', '重v', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('1375af13-6ad3-4d5a-a2c3-12078f138378', '豆腐干地方', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('183192cd-948c-4f1c-bd3d-a0ad2943acd0', '打发士大夫', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('19be5231-288c-45ed-b0df-ec9f82ef5786', '巅峰时代', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('1ce8c6eb-f537-4f5b-9db4-6b2cbd465bfc', '明日', null, '1900-01-01', '', '', '', '', '');
INSERT INTO `student` VALUES ('21ddace0-9545-451a-bc22-1d0cb5ed4a95', '饭馆吃饭', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('236a7b8b-c21b-4e5f-88cc-89e38896005b', '道士', null, '1900-01-01', '', '', '', '', '');
INSERT INTO `student` VALUES ('23876058-f3d5-4e28-bbea-91c185360e64', '史蒂芬森', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('24326c6d-922c-490c-832a-3f997e92e1f5', '重vbcv', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('24e170be-b90a-4405-aa6b-d1b506122ba9', '福临', null, '1900-01-01', '', '', '', null, '福临福临福临福临福临福临福临福临福临福临福临福临福临福临福临福临福临福临福临福临福临福临福临福临福临福临福临');
INSERT INTO `student` VALUES ('2543f32e-9d8e-4a3a-98a9-6e88eca97527', '非公费出国', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('27e66108-0c19-4151-8baa-0b1d849edd84', '马霄峰', '男', '1996-06-25', '17853467755', '201411011006', '2014', '理工类', '');
INSERT INTO `student` VALUES ('28ae903a-0d95-4dac-b415-d4252bae5e60', '古崖居', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('28cacefa-cd61-4bee-bebb-ac802bdcf6dc', '海景房', '女', '1900-01-01', '', '', '', '', '');
INSERT INTO `student` VALUES ('2b5291df-0b5d-4508-89d7-481eb50254d3', '顺德房地产', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('30439af7-5b9c-48e6-b090-d390a0cd1389', '都摔飞', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('30ce4551-d66f-447c-8086-088b46f43b62', '关于就', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('31b79483-2bf4-487d-b25a-e82259a3fef3', '路鸣泽', '男', '1995-05-15', '13001766116', '', '', '', '路鸣泽路鸣泽');
INSERT INTO `student` VALUES ('34d71b63-f7d5-47c6-8004-1488290d602a', '多个', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('3661dff8-f785-4abe-a7e5-90c3bb3425f2', '黄金', '男', '1900-01-01', '', '', '', '', '');
INSERT INTO `student` VALUES ('3669bd1e-f81f-4c3d-ac02-0ffdc2541598', '留言留言', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('37a4f94e-e913-4aee-9462-4a9bf3afcfb8', '111', '男', '1900-01-01', '111', '111', null, '理工类', '111');
INSERT INTO `student` VALUES ('386fcc51-74b8-4bbd-91db-744b1bf11a48', '豆腐干豆腐干', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('39940f77-0d27-4e4c-bdde-824e90d3b437', '士大夫但是', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('3d046928-71c0-4a80-ad38-3703f6e59a60', '梵蒂冈', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('3d762f03-7ac7-4f59-a34c-abc346f14318', '是多少啊', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('43737d2f-1553-4a53-80cf-91557b7d8742', '啊啊啊啊', null, '1900-01-01', '11111', '20140123', null, null, '');
INSERT INTO `student` VALUES ('43e20b85-897d-48e5-84dc-3e02148a787f', '骨灰级', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('4dade709-610e-472e-9f4e-e0ea749a3b49', 'aaa', '男', '1900-01-01', '', '20140129', null, null, '');
INSERT INTO `student` VALUES ('4f0c023a-55cd-4ab9-a1e4-4429b96cb2aa', '雇佣军', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('50a08d7f-5f8f-4da1-9ce5-33f6536dd1c4', '雇佣军', '男', '1900-01-01', '13001766116', '912031125@qq.com', '', '', '大啊啊是');
INSERT INTO `student` VALUES ('53e3af67-3a3d-48f8-8f37-dbdaf835a359', '多个vcv', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('570b7fa3-645c-4836-80a1-42ba9077fe4a', '豆腐花的', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('57eee434-9529-4a9b-9478-c258314caf2b', '吖', null, '1900-01-01', '', '', '', '', '');
INSERT INTO `student` VALUES ('5f0c3e6f-613f-4382-921e-17b684e0b9a8', '非官方', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('620b1f29-a4f5-4087-8cfb-0b5b84943090', 'qwqqq', null, '1900-01-01', 'q', '', '', null, 'q');
INSERT INTO `student` VALUES ('65ae90dd-724e-4ac5-a6a1-47bb1923cae2', '放个', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('66e265e7-b10e-44cc-a18f-193e13030719', '电风扇', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('6a88f311-517c-4905-9752-e2b1ee84c5d7', '住宿费', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('6e910a7c-3565-416b-b214-780b1b0803ca', '撒旦方', null, '1900-01-01', '', '', '', '', '');
INSERT INTO `student` VALUES ('6ea35876-9972-4b6c-9b5f-fe3ba39d401a', '复古风', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('7576c935-3246-4839-9589-608bbe224754', 'aa', null, '1900-01-01', '', '', null, null, '');
INSERT INTO `student` VALUES ('7951a68b-9a06-45b2-8eb4-60ac6c557e48', '倪光南', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('7a514274-20b8-451e-8ed1-f165001cb987', '梵蒂冈方法', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('7a7c8d5e-374e-4e0b-bcfa-0362fa306564', '大范甘迪', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('7b56aed1-71d9-4d83-bff1-4470efe24582', 'vbf', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('7d5fe846-642e-42e2-b42a-5b28fdf23dbe', '豆腐干地方', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('7d63458e-455b-4b6e-ac21-36760d64a0b9', '格斗三国', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('7ec20c8d-2d0f-49b0-b16a-36d4118197f8', 'Bob', '男', '1900-01-01', '', '', '', '', '');
INSERT INTO `student` VALUES ('832f775e-820c-4739-9b3c-60ceabe5c1a7', '合家福', null, '1900-01-01', '', '', '', '', '');
INSERT INTO `student` VALUES ('8cbca908-b332-4a11-8596-fc438c935f21', '大富豪', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('90ba495e-90ad-4500-b0b0-aa13dadd6595', '风格化', null, '1900-01-01', '', '', '', '', '');
INSERT INTO `student` VALUES ('94004943-1261-42c6-8eb0-acda9d945c72', '第三方', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('959db991-1c13-46ee-ba2d-d285e6e8e591', '大上', '男', '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('9663fcbb-b3b1-4052-985c-f7ad235a8506', '大富豪发的', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('97d9d92a-ba86-4d47-b33c-871d9128556d', '', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('9a33d6a1-0392-4701-a165-0d78a976d788', '这是啥', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('9be346e3-18eb-4e5d-b533-fe2258a7bd6a', '路明非', '男', '1995-03-12', '13001766116', '912031125@qq.com', '', '', '路明非路明非路明非路明非');
INSERT INTO `student` VALUES ('9e4fcf61-ac39-47de-bcb6-682582770140', '顺丰萨芬', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('9f18ace4-c28a-4f56-b6f4-1d5f3653ffeb', '兔斯基', '男', '1996-06-25', '13001766116', '912031125@qq.com', '', '', '一枚兔斯基');
INSERT INTO `student` VALUES ('9fd16652-be1b-4a05-aa14-b80178adf9dc', '四岛', null, '1900-02-08', '', '', '', '', '');
INSERT INTO `student` VALUES ('a2b41f55-85d4-441d-adaa-25557d2bc887', '电饭锅的f', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('a2f5deab-5d70-4014-91d9-17ef7b2f1289', '豆腐干', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('a33f8864-29d6-4c1f-9a03-f587ea2db62b', 'xiaomi', '男', '1900-01-01', '11111111', '111111111', '2012', '理工类', '111');
INSERT INTO `student` VALUES ('a346f659-d502-411f-ba13-fbd446202cdc', '韦小宝', '男', '1900-01-01', '13001766116', '912031125@qq.com', '', '', '千万千万千万千万');
INSERT INTO `student` VALUES ('a5135eb1-a382-499e-b088-4233b8cfd796', '雇佣军', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('a59fa664-96d8-46f6-a083-229bda268185', '一股有', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('a5a6a337-471d-49c9-94c6-96fe266f5bde', '啦啦', null, '1900-01-01', '', '', '', '', '');
INSERT INTO `student` VALUES ('a5c76cee-961f-45f4-9708-ef8526282c82', '大丰收', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('a78d4a4b-d072-44b1-a5d6-a589ef3ccdb0', '普京', '男', '2013-09-11', '111111111', '20140130', '2013', '文史类', 'AAAA');
INSERT INTO `student` VALUES ('a9e0dc81-65bb-47a0-8e21-c1a2e3d928da', '大幅', null, '1900-01-01', '', '', '', '', '');
INSERT INTO `student` VALUES ('ac02c3ef-e5b0-4b3e-9fac-5bb1c7edd472', '改价格', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('acab8ef6-cffa-44ec-bdfb-15af83325020', '应根据', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('aecd2264-ff3b-4a09-8715-be39c25a61ed', '阿三', null, '1900-01-01', '', '', '', '', '');
INSERT INTO `student` VALUES ('b1335a19-b3be-429b-b84b-7dbc9b958c11', '拿铁', null, '2007-06-06', '111111', '20140128', '2013', '理工类', 'AAA');
INSERT INTO `student` VALUES ('b1e1c1dc-54e8-4435-9e85-251aa7f0c2a9', '奥巴马', null, '2005-08-08', '11111111', '20140129', '2013', '理工类', 'AAA');
INSERT INTO `student` VALUES ('b574113f-85d5-4f40-8c01-cfbfad21e3f7', '史蒂芬d', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('be68dc13-6765-4f44-bf28-b16e6d1e42ed', '柔软她', null, '1900-01-01', '', '', '', '', '');
INSERT INTO `student` VALUES ('bed4d651-40cc-4163-8cb2-505b7ba0249b', '阿迪', null, '1900-01-01', '', '', '', '', '');
INSERT INTO `student` VALUES ('bf41e082-c1cb-4d65-b056-0ad94ea3609b', 'qwq', null, '1900-01-01', '', '', '2013', '文史类', '');
INSERT INTO `student` VALUES ('c4498b6e-a964-495d-b478-318cf5196025', '电饭锅的', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('c50749ba-ef49-4ed1-bdec-227597748de9', '吖阿文', null, '1900-01-01', '', '', '', '', '');
INSERT INTO `student` VALUES ('c5d0ce53-e7c2-4054-beac-9c2d9bee811a', '梵蒂冈地方', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('c62e88c8-bf1f-46aa-a2dc-f63a5a751a59', '工业局关于', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('c9085bbe-f582-4b53-8170-bd13cd9bb11c', '丰都鬼帝', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('cc3da8f0-de67-46f1-a5a1-c19676da385a', '重vb', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('cc92e16b-819d-4fca-951f-9e7b957c2879', '企鹅', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('cf1b5cb6-a36f-4bb7-8298-26bf38ac9889', '布拉多', null, '1900-01-01', '121', '1212', '2012', '理工类', '12');
INSERT INTO `student` VALUES ('d149e2ef-e7d0-4161-91d5-98210a38c391', '过于', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('d21529a9-e860-4552-8eb6-adef68b2321c', '股东分红', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('d26197a1-e900-4e8c-a8a6-68a31be5d992', '关于', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('d2dc2233-0b72-4257-9e0b-e6ae8af3684c', '的沙发上的', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('d3bbd4aa-3025-465b-a885-031030354e6e', '留言留言', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('d8ea81a9-4869-46ed-af76-ef2905039110', '龙龟', '男', '1900-01-01', '', '', '', '', '');
INSERT INTO `student` VALUES ('dd9ab66e-b2db-4c2d-97dd-2101d79d9ed7', '后感觉', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('dfd67778-7807-4886-8e02-f4b7a7ec9f68', '东方红', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('e161e67a-dde4-4a69-81bc-f214545884a1', '', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('e205c149-4f31-427f-824d-adcb7b169adb', '方法从', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('e5b5aede-a359-4cc4-bebb-f4dadc2b0c6f', '是多少', null, '2016-01-01', '', '', '2012', '理工类', '');
INSERT INTO `student` VALUES ('ed3801cf-5c49-4c6e-98c0-ad34952f3c42', '阿萨', null, '1900-01-01', '', '', '', '', '');
INSERT INTO `student` VALUES ('eff6ca4a-f94b-4210-89c7-e15397017357', '现代感', null, '1900-01-01', '', '', '', '', '');
INSERT INTO `student` VALUES ('f0cb3b6e-68e8-4976-97fb-22965d2d0fca', '犯嘀咕', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('f21c49d8-5f51-4911-b330-f5f42494beae', '豆腐干反对', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('f2ff1707-6855-4cd4-b49d-beb74db58f72', '121212', '男', '1900-01-01', '', '', '', null, '111111111111111');
INSERT INTO `student` VALUES ('f3605dce-738c-42f1-90eb-a2ced88c6d5f', '随风倒', null, '1900-05-01', '', '', '', '', '');
INSERT INTO `student` VALUES ('f4e613f5-96ba-4cc5-812c-12be12ceb5f5', '各有一个', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('f4ed0a35-2874-4dc3-b1f8-effb22ceae2c', '真实的', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('f51e4d0e-1e8f-4661-b6b5-3e17cbc836e6', '骨灰存放', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('f66368de-e5d1-4ace-9520-86fdf0232b3d', '二恶烷', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('f6fc7732-a028-4469-ad0a-66e4ee630c22', '达斯', null, '1900-01-01', '', '', '', '', '');
INSERT INTO `student` VALUES ('f70f64ee-e084-42e8-b59e-2b623da7f0b0', '额威威', null, '1900-01-01', '', '912031125@qq.com', '', '', '');
INSERT INTO `student` VALUES ('f8440bc9-3016-485c-8565-28afbf34fd57', '山东人', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('f9fe10f8-a79c-4985-8631-abd269328641', '去问问', null, '1900-01-01', '', '', '', null, '');
INSERT INTO `student` VALUES ('fcdce384-e50d-4635-beba-19b90b7f300a', '啊沙发上', null, '1900-01-01', '', '', '', null, '');

-- ----------------------------
-- Table structure for `studentinformation`
-- ----------------------------
DROP TABLE IF EXISTS `studentinformation`;
CREATE TABLE `studentinformation` (
  `stuId` int(10) NOT NULL AUTO_INCREMENT,
  `stuName` varchar(20) NOT NULL,
  `stuSex` varchar(20) NOT NULL,
  PRIMARY KEY (`stuId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studentinformation
-- ----------------------------
INSERT INTO `studentinformation` VALUES ('1', '??', '?');

-- ----------------------------
-- Table structure for `stu_info`
-- ----------------------------
DROP TABLE IF EXISTS `stu_info`;
CREATE TABLE `stu_info` (
  `studentNumber` varchar(225) DEFAULT NULL,
  `studentName` varchar(225) DEFAULT NULL,
  `studentSex` varchar(225) DEFAULT NULL,
  `studentAge` int(5) DEFAULT NULL,
  `studentWeight` float(50,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_info
-- ----------------------------
INSERT INTO `stu_info` VALUES ('101', '史坤', '男', '20', '50');
INSERT INTO `stu_info` VALUES ('102', '何立意', '女', '19', '52');
INSERT INTO `stu_info` VALUES ('104', '王五', '男', null, null);
INSERT INTO `stu_info` VALUES ('105', '孙静蕾', '女', '20', '52');
INSERT INTO `stu_info` VALUES ('106', '个散热管', '男', null, null);
INSERT INTO `stu_info` VALUES ('107', '个人', '男', '9', null);
INSERT INTO `stu_info` VALUES ('108', '罚罚恶恶', '男', '9', null);
INSERT INTO `stu_info` VALUES ('109', '哭有', '男', '878', null);
INSERT INTO `stu_info` VALUES ('255', '788', '男', '87', '74');
INSERT INTO `stu_info` VALUES ('254', '78', '男', '6', null);
INSERT INTO `stu_info` VALUES ('362', '86', '男', '257', '56');
INSERT INTO `stu_info` VALUES ('216', '676', '男', '8', null);
INSERT INTO `stu_info` VALUES ('123', '864', '男', null, '23');
INSERT INTO `stu_info` VALUES ('147', null, '男', '7', null);
INSERT INTO `stu_info` VALUES ('236', '786', '男', '9', '21');
INSERT INTO `stu_info` VALUES ('324', '786', '男', null, null);
INSERT INTO `stu_info` VALUES ('214', '78', '男', '7', '12');
INSERT INTO `stu_info` VALUES ('369', '78', '男', '5', null);
INSERT INTO `stu_info` VALUES ('145', '456', '男', '8', null);
INSERT INTO `stu_info` VALUES ('145', '876', '男', null, '12');
INSERT INTO `stu_info` VALUES ('985', '4578', '男', null, '456');
INSERT INTO `stu_info` VALUES ('968', '876', null, null, null);
INSERT INTO `stu_info` VALUES ('654', '86', '男', null, null);

-- ----------------------------
-- Table structure for `t_student`
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(16) NOT NULL,
  `gender` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('1', '王小军', '1', '17', '北京市东城区');
INSERT INTO `t_student` VALUES ('2', '李雷雷', '1', '16', '北京市朝阳区');
INSERT INTO `t_student` VALUES ('3', '张静', '2', '16', '北京市昌平区');
INSERT INTO `t_student` VALUES ('4', '王晓萌', '2', '17', '北京市顺义区');
INSERT INTO `t_student` VALUES ('5', '韩梅梅', '2', '16', '北京市朝阳区');
INSERT INTO `t_student` VALUES ('6', '李小军', '1', '17', '北京市海淀区');
INSERT INTO `t_student` VALUES ('7', '成龙', '1', '16', '北京市石景山区');
INSERT INTO `t_student` VALUES ('8', '李海飞', '2', '16', '北京市海淀区');
INSERT INTO `t_student` VALUES ('9', '罗红', '2', '16', '北京市朝阳区');
INSERT INTO `t_student` VALUES ('10', '孙海杰', '1', '16', '北京市石景山区');
INSERT INTO `t_student` VALUES ('11', '王海龙', '1', '16', '北京市东城区');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'hlk1135', '123456');
