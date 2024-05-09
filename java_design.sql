/*
 Navicat MySQL Data Transfer

 Source Server         : JavaProject
 Source Server Type    : MySQL
 Source Server Version : 80036
 Source Host           : localhost:3306
 Source Schema         : java_design

 Target Server Type    : MySQL
 Target Server Version : 80036
 File Encoding         : 65001

 Date: 09/05/2024 14:23:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nickname` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1321213955 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (-192933887, 'DuKe', '123', 'DuKe');
INSERT INTO `admin` VALUES (1321213954, 'admin', '123', '管理员');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `ISBN` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'isbn号',
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书名',
  `cover` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '封面',
  `introduction` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图书简介',
  `number` int NOT NULL COMMENT '库存数量',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '作者',
  PRIMARY KEY (`ISBN`) USING BTREE,
  UNIQUE INDEX `book_pk`(`ISBN` ASC) USING BTREE,
  CONSTRAINT `book_chk_1` CHECK (`number` >= 0)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('7-115-06387-7', 'Java语言与程序设计', 'http://tushugu.cn/Base/ShowOneImage.aspx?id=965BBED5ADEDFCB9C2F05B569796AD1F', 'Java程序设计', 100, '杨华中,贾耀');
INSERT INTO `book` VALUES ('7-5348-1720-X', '新青年', 'http://tushugu.cn/Base/ShowOneImage.aspx?id=98C8795C11B88C3FF51A12743CFBB3A9', '《新青年》是“五四”运动新时期陈独秀等人为提倡民主与科学，提倡文学革命，反对封建的旧思想、旧文化、旧礼教所篇的杂志。本书收录了《新青年》中的很大一部分文章，想以此进一步加深人们对近代国情的了解和认识。作为东方睡狮觉醒的记录和近代文化经典的解毒，本书十分具有可读性。', 0, '陈独秀');
INSERT INTO `book` VALUES ('7-5405-1594-5', '狂人日记', 'https://bkimg.cdn.bcebos.com/pic/7af40ad162d9f2d3005ed653a1ec8a136327cc3b?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '《狂人日记》是中国文学经典名作。这篇小说，是中国现代文学史上的第一篇白话文小说。它的出现，标志着白话文学已经成熟，登上了历史的舞台。这也是鲁迅创作的第一篇白话小说', 69999, '鲁迅');
INSERT INTO `book` VALUES ('7-5426-2979-4', '资本论', 'http://tushugu.cn/Base/ShowOneImage.aspx?id=7AA511D984DF043D644DFF08BF1D384A', '《资本论》是马克思倾其毕生心血写成的一部科学著作。它被奉为工人阶级革命的“圣经”，是一部融哲学、政治经济学、科学社会主义为一体，博大精深的马克思主义百科全书，是人类思想史上不配的理论丰碑。它揭示了现代社会的经济运动规律，对于我们认识资本主义经济和研究社会主义经济提供了基本原理。', 4589, '马克思');
INSERT INTO `book` VALUES ('978-7-01-013156-6', '共产党宣言', 'http://tushugu.cn/Base/ShowOneImage.aspx?id=BAA2B947F4302DF7F12B2DE770CB5F7C', '《共产党宣言》是马克思和恩格斯为共产主义者同盟起草的纲领，全文贯穿马克思主义的历史观，马克思主义诞生的重要标志。由马克思执笔写成 。1848年2月21日在伦敦第一次以单行本问世。2月24日，《共产党宣言》正式出版。', 5001, '马克思/恩格斯');
INSERT INTO `book` VALUES ('978-7-0200-0220-7', '红楼梦', 'http://tushugu.cn/Base/ShowOneImage.aspx?id=A0B0BE60B3363F797B76043F965CBB31', '《红楼梦》是一部具有高度思想性和高度艺术性的伟大作品，从《红楼梦》反映的思想倾向来看，作者具有初步的民主主义思想，他对现实社会包括宫廷及官场的黑暗，封建贵族阶级及其家庭的腐朽，封建的科举制度、婚姻制度、奴婢制度、等级制度，以及与此相适应的社会统治思想即孔孟之道和程朱理学、社会道德观念等等，都进行了深刻的批判并且提出了朦胧的带有初步民主主义性质的理想和主张。', 2999, '曹雪芹');
INSERT INTO `book` VALUES ('978-7-121-43680-2', '朝花夕拾', 'http://tushugu.cn/Base/ShowOneImage.aspx?id=53C7190799DCC22E05F3C72A13D19641', '《朝花夕拾》里作者鲁迅用夹叙夹议的方法，以青少年时代的生活经历为线索，真实生动地叙写了自己从农村到城镇，从家庭到社会，从国内到国外的一组生活经历，抒发了对往昔亲友和师长的怀念之情，同时也对旧势力、旧文化进行了嘲讽和抨击。', 8996, '鲁迅');
INSERT INTO `book` VALUES ('978-7-5015-8441-3', '水浒传', 'http://tushugu.cn/Base/ShowOneImage.aspx?id=A0B0BE60B3363F79FF4007C04C5E255B', '《水浒传》是元末明初编著的长篇小说（现存刊本署名大多有施耐庵或罗贯中或两人皆有），是中国历史上第一部用白话文写成的章回体长篇小说', 1000, '施耐庵');
INSERT INTO `book` VALUES ('978-7-5125-0503-2', '毛泽东传', 'http://tushugu.cn/Base/ShowOneImage.aspx?id=380311E3B422E583AFFF7FDE25AFC842', '本书采取以毛主席的政治生涯为主线，兼顾其他领域并穿插个人生活的写法，揭秘了他的那些思想是如何形成的，他如何为此而奋斗的。', 3698, '(英)迪克·威尔逊');
INSERT INTO `book` VALUES ('978-7-5168-3014-7', '故乡', 'http://tushugu.cn/Base/ShowOneImage.aspx?id=5A28670BFC9C470C231D20E356F2C7C5', '《故乡》是现代文学家鲁迅于1921年创作的一篇短篇小说。小说以“我”回故乡的活动为线索，按照“回故乡”——“在故乡”——“离故乡”的情节安排，依据“我”的所见所闻所忆所感，着重描写了闰土和杨二嫂的人物形象，从而反映了辛亥革命前后农村破产、农民痛苦生活的现实；同时深刻指出了由于受封建社会传统观念的影响，劳苦大众所受的精神上的束缚，造成纯真的人性的扭曲，造成人与人之间的冷漠、隔膜，表达了作者对现实的强烈不满和改造旧社会、创造新生活的强烈愿望。', 9998, '鲁迅');
INSERT INTO `book` VALUES ('978-7-5207-2171-4', '三国演义', 'https://library.hsfz.net.cn/userlib/GetOneImageBookShow.asp?id=20132342&size=l', '《三国演义》是中国古代第一部长篇章回小说，是历史演义小说的经典之作。小说描写了公元3世纪以曹操、刘备、孙权为首的魏、蜀、吴三个政治、军事集团之间的矛盾和斗争。在广阔的社会历史背\n景上，展示出那个时代尖锐复杂又极具特色的政治军事冲突，在政治、军事谋略方面，对后世产生了深远的影响', 999, '罗贯中');
INSERT INTO `book` VALUES ('978-7-5306-7851-0', '野草', 'http://tushugu.cn/Base/ShowOneImage.aspx?id=BC6C8BC06A8D3F1259831254640680E0', '《野草》一文写于“五四”后期，是先生的唯一的一部散文诗集', 399, '鲁迅');
INSERT INTO `book` VALUES ('978-7-5554-1835-1', '西游记', 'https://baike.baidu.com/pic/%E8%A5%BF%E6%B8%B8%E8%AE%B0/5723/1/b7fd5266d01609248d763e43db0735fae6cd3412?fromModule=lemma_top-image&ct=single#aid=1&pic=b7fd5266d01609248d763e43db0735fae6cd3412', '《西游记》是一部中国古代浪漫主义长篇神魔小说，主要描述了唐僧、孙悟空、猪八戒猪悟能、沙\n僧沙悟净师徒四人去西天取经，历经九九八十一难最后最后取得真经的故事', 4999, '吴承恩');
INSERT INTO `book` VALUES ('978-8-0000-0226-5', 'Grape mini', 'http://HHSRJOTbpC.png', 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', 8015, 'Sato Akina');
INSERT INTO `book` VALUES ('978-8-0010-4933-6', 'omni-Oranae', 'http://z4R9e3Exb8.png', 'In other words, Navicat provides the ability for data in different databases and/or                 ', 436, 'Li Lu');
INSERT INTO `book` VALUES ('978-8-0068-6715-0', 'omni-Apple', 'http://WEzp7Hrliy.png', 'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ', 2968, 'Theodore Freeman');
INSERT INTO `book` VALUES ('978-8-0097-3436-8', 'fiwi', 'http://bkWA6g8VkB.png', 'A man’s best friends are his ten fingers. Navicat Cloud could not connect and access              ', 8026, 'Lui Chi Ming');
INSERT INTO `book` VALUES ('978-8-0115-4042-4', 'Oraege', 'http://rtKYhAqKUw.png', 'Navicat 15 has added support for the system-wide dark mode. There is no way to happiness.           ', 1744, 'Lo Wai San');
INSERT INTO `book` VALUES ('978-8-0148-1593-3', 'ambi-Apple', 'http://aNt8v99aWr.png', 'You can select any connections, objects or projects, and then select the corresponding              ', 7846, 'Shawn Harrison');
INSERT INTO `book` VALUES ('978-8-0183-3189-4', 'Plucts', 'http://581eo1h9ao.png', 'What you get by achieving your goals is not as important as what you become by achieving your goals.', 7810, '程云熙');
INSERT INTO `book` VALUES ('978-8-0188-4172-5', 'Rambutan', 'http://aPVmwA1AjG.png', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve.', 4957, '汤岚');
INSERT INTO `book` VALUES ('978-8-0194-0703-0', 'Raspbeary', 'http://NycArvmBYN.png', 'With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and                  ', 6440, 'Xiong Lan');
INSERT INTO `book` VALUES ('978-8-0280-6411-3', 'Raspberry', 'http://Q7xnetNY46.png', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.              ', 7816, 'Melvin Gray');
INSERT INTO `book` VALUES ('978-8-0303-3475-2', 'Szrawberry', 'http://w65P0zw0NQ.png', 'Sometimes you win, sometimes you learn. To successfully establish a new connection                  ', 2940, 'Zou Ziyi');
INSERT INTO `book` VALUES ('978-8-0321-3604-9', 'omni-Raqbutan', 'http://r9cojlupYm.png', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ', 8471, 'Dai On Kay');
INSERT INTO `book` VALUES ('978-8-0347-7368-2', 'Raspberry', 'http://YM99e8MhgI.png', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', 8305, 'Joshua Smith');
INSERT INTO `book` VALUES ('978-8-0374-1714-3', 'Stzawberry', 'http://DdOPj1jXDP.png', 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud.              ', 3510, 'Hayashi Momoe');
INSERT INTO `book` VALUES ('978-8-0399-7603-7', 'Grape', 'http://sb7MKb7VmK.png', 'Difficult circumstances serve as a textbook of life for people. Secure SHell (SSH)                  ', 3692, 'Au Ka Ling');
INSERT INTO `book` VALUES ('978-8-0410-1138-6', 'niwi air', 'http://YJOtiflXsK.png', 'A query is used to extract data from the database in a readable format according                    ', 2425, '邓詩涵');
INSERT INTO `book` VALUES ('978-8-0427-5274-3', 'Rambuhan', 'http://Jt9IT8k3mp.png', 'It provides strong authentication and secure encrypted communications between two                   ', 1764, 'Wu Ziyi');
INSERT INTO `book` VALUES ('978-8-0518-1232-3', 'omni-qrape', 'http://q5emg3SWnX.png', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve.                    ', 2593, 'Abe Yota');
INSERT INTO `book` VALUES ('978-8-0529-5000-9', 'ambi-Kiwi', 'http://nOGVswG6OW.png', 'Export Wizard allows you to export data from tables, collections, views, or query                   ', 1502, 'Raymond Thomas');
INSERT INTO `book` VALUES ('978-8-0531-9227-0', 'Raspberry', 'http://QXhImVeOHr.png', 'With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and                  ', 4359, 'Jessica Fisher');
INSERT INTO `book` VALUES ('978-8-0558-4138-4', 'Grape', 'http://9hUVdlMmFS.png', 'Navicat Data Modeler is a powerful and cost-effective database design tool which                    ', 3454, 'Jesus Rose');
INSERT INTO `book` VALUES ('978-8-0565-1316-5', 'omni-iango', 'http://qul5eNGGW6.png', 'You can select any connections, objects or projects, and then select the corresponding              ', 1038, 'Douglas Smith');
INSERT INTO `book` VALUES ('978-8-0644-9477-5', 'Kvwi elite', 'http://uqHmNrrt2v.png', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve.', 6789, '武睿');
INSERT INTO `book` VALUES ('978-8-0649-2230-1', 'ambi-gpple', 'http://5I3bsDz0BM.png', 'What you get by achieving your goals is not as important as what you become by achieving your goals.', 3389, 'Wan Ka Keung');
INSERT INTO `book` VALUES ('978-8-0677-8682-2', 'srape', 'http://4SHO4ILPl6.png', 'Remember that failure is an event, not a person. It is used while your ISPs do not                  ', 761, 'Ku Hiu Tung');
INSERT INTO `book` VALUES ('978-8-0681-9658-1', 'Rambutan', 'http://kZ2pyH6HFH.png', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 324, '谢致远');
INSERT INTO `book` VALUES ('978-8-0684-8395-8', 'ultra-daspberry', 'http://53n5Cs6YES.png', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries.', 649, 'Yip Siu Wai');
INSERT INTO `book` VALUES ('978-8-0687-8315-5', 'Raibutan air', 'http://g1mjCm5Isw.png', 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud.              ', 7505, 'Yeow Ling Ling');
INSERT INTO `book` VALUES ('978-8-0710-9242-2', 'Strawberry air', 'http://NPDURp0CrQ.png', 'You will succeed because most people are lazy. To clear or reload various internal                  ', 8253, 'Dai Chiu Wai');
INSERT INTO `book` VALUES ('978-8-0723-5305-2', 'iStrawbeory', 'http://iOFsQtMBYu.png', 'The past has no power over the present moment. If the plan doesn’t work, change                   ', 6597, 'Mildred Turner');
INSERT INTO `book` VALUES ('978-8-0762-5442-0', 'Grape', 'http://H2bdH3ajX0.png', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ', 3954, 'Ruth Freeman');
INSERT INTO `book` VALUES ('978-8-0763-2805-5', 'orange', 'http://W7ElVpAw9l.png', 'If the plan doesn’t work, change the plan, but never the goal.', 4110, 'Yue Ting Fung');
INSERT INTO `book` VALUES ('978-8-0774-2085-2', 'ultra-Mango', 'http://AGHlyWUS5q.png', 'A comfort zone is a beautiful place, but nothing ever grows there.', 7182, 'Yu Yunxi');
INSERT INTO `book` VALUES ('978-8-0775-3795-0', 'Raypberry pi', 'http://Gz2sNrWvNn.png', 'To connect to a database or schema, simply double-click it in the pane.', 1792, 'Gary Jackson');
INSERT INTO `book` VALUES ('978-8-0809-6789-4', 'Grzpe', 'http://HpofkeR66I.png', 'Anyone who has ever made anything of importance was disciplined. Navicat Monitor                    ', 3178, 'Zhao Lu');
INSERT INTO `book` VALUES ('978-8-0845-9534-4', 'Graae se', 'http://BPvWJnMGpb.png', 'To open a query using an external editor, control-click it and select Open with External            ', 7925, '沈宇宁');
INSERT INTO `book` VALUES ('978-8-0859-6055-6', 'Strawberry', 'http://Dq7MhdlmNc.png', 'Navicat authorizes you to make connection to remote servers running on different                    ', 401, '罗璐');
INSERT INTO `book` VALUES ('978-8-0862-0073-0', 'Appje', 'http://Cf0ZNuV6jJ.png', 'There is no way to happiness. Happiness is the way. The On Startup feature allows                   ', 8793, 'Xu Jiehong');
INSERT INTO `book` VALUES ('978-8-0871-4170-3', 'Apple', 'http://ADa9mm9M9R.png', 'Difficult circumstances serve as a textbook of life for people. All journeys have                   ', 3694, 'Koo Kwok Ming');
INSERT INTO `book` VALUES ('978-8-0897-2503-9', 'Strawberry se', 'http://WG8YHyGpEo.png', 'The past has no power over the present moment. SQL Editor allows you to create and                  ', 14, 'Ma Kwok Kuen');
INSERT INTO `book` VALUES ('978-8-0900-5123-1', 'uherry', 'http://znrBuDJZGy.png', 'Champions keep playing until they get it right. Anyone who has never made a mistake                 ', 1988, 'Tang Zhiyuan');
INSERT INTO `book` VALUES ('978-8-0902-2098-1', 'Cherry mini', 'http://fZ10CNSIHt.png', 'In other words, Navicat provides the ability for data in different databases and/or                 ', 2498, 'Yamaguchi Hana');
INSERT INTO `book` VALUES ('978-8-0925-0445-6', 'Pluyts pro', 'http://JDJKcLBmfE.png', 'It provides strong authentication and secure encrypted communications between two                   ', 7646, '潘子韬');
INSERT INTO `book` VALUES ('978-8-0926-3524-5', 'Strawberry mini', 'http://ZgMNgsQMsT.png', 'To get a secure connection, the first thing you need to do is to install OpenSSL                    ', 5176, 'Betty Weaver');
INSERT INTO `book` VALUES ('978-8-0941-1187-6', 'Mango', 'http://dnK7Q9VO6e.png', 'Navicat provides a wide range advanced features, such as compelling code editing                    ', 4542, 'Maruyama Aoi');
INSERT INTO `book` VALUES ('978-8-0977-2235-2', 'Grape', 'http://1oQISswgLG.png', 'There is no way to happiness. Happiness is the way. To connect to a database or schema,             ', 178, 'Ono Rena');
INSERT INTO `book` VALUES ('978-8-0990-1389-4', 'iiango', 'http://Z5A5Vb5OSi.png', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.', 3146, '汤嘉伦');
INSERT INTO `book` VALUES ('978-8-1026-3087-2', 'Pluots premium', 'http://ZXtuAweKjZ.png', 'If opportunity doesn’t knock, build a door. With its well-designed Graphical User                 ', 5660, 'Hsuan Hui Mei');
INSERT INTO `book` VALUES ('978-8-1026-9969-9', 'Grape pi', 'http://YhT1MehpJn.png', 'The Information Pane shows the detailed object information, project activities, the                 ', 9798, '邵杰宏');
INSERT INTO `book` VALUES ('978-8-1044-9093-2', 'Rampberry premium', 'http://SxvRnpiR2V.png', 'Success consists of going from failure to failure without loss of enthusiasm.                       ', 2268, 'Chiang Yu Ling');
INSERT INTO `book` VALUES ('978-8-1051-8173-8', 'ambi-miwi', 'http://Mj7i3GQg7r.png', 'Instead of wondering when your next vacation is, maybe you should set up a life you                 ', 515, 'Diane Carter');
INSERT INTO `book` VALUES ('978-8-1053-5715-6', 'ultra-Apple', 'http://0pO1CUtu1f.png', 'Remember that failure is an event, not a person. Navicat allows you to transfer data                ', 6735, '武嘉伦');
INSERT INTO `book` VALUES ('978-8-1059-8748-2', 'Ramputan', 'http://IyikntRCx4.png', 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.', 4577, 'Tang Zhiyuan');
INSERT INTO `book` VALUES ('978-8-1061-6668-9', 'Orange core', 'http://J3tjQvAH9J.png', 'In a Telnet session, all communications, including username and password, are transmitted           ', 6643, 'Noguchi Aoi');
INSERT INTO `book` VALUES ('978-8-1126-3393-8', 'gambutan', 'http://NNDrO89dub.png', 'Optimism is the one quality more associated with success and happiness than any other.              ', 876, 'Yin Siu Wai');
INSERT INTO `book` VALUES ('978-8-1126-4117-6', 'inpple', 'http://OgLxOk26lg.png', 'To successfully establish a new connection to local/remote server - no matter via                   ', 7466, 'Arimura Yuto');
INSERT INTO `book` VALUES ('978-8-1140-3546-5', 'Alple pro', 'http://6zfKT6Ej9W.png', 'A comfort zone is a beautiful place, but nothing ever grows there. Champions keep                   ', 8074, 'Lu Anqi');
INSERT INTO `book` VALUES ('978-8-1175-1676-8', 'Grape core', 'http://i38RxSQzW9.png', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', 8407, 'Jia Xiuying');
INSERT INTO `book` VALUES ('978-8-1187-2237-7', 'Rwspberry', 'http://3djXDBi4m5.png', 'To successfully establish a new connection to local/remote server - no matter via                   ', 7330, 'Hasegawa Yamato');
INSERT INTO `book` VALUES ('978-8-1190-8190-7', 'omni-Rambutan', 'http://89ANNH9xgX.png', 'If your Internet Service Provider (ISP) does not provide direct access to its server,               ', 6630, 'Li Zhiyuan');
INSERT INTO `book` VALUES ('978-8-1191-0190-7', 'uherry', 'http://AmKOtsiD7b.png', 'If the plan doesn’t work, change the plan, but never the goal. After comparing                    ', 5024, 'Maeda Daisuke');
INSERT INTO `book` VALUES ('978-8-1223-3521-7', 'Grape elite', 'http://LljvuxtgFD.png', 'Anyone who has ever made anything of importance was disciplined.', 9142, 'Xu Zitao');
INSERT INTO `book` VALUES ('978-8-1239-9839-5', 'gango plus', 'http://LZUF26R9qF.png', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', 4855, 'Cheung Ching Wan');
INSERT INTO `book` VALUES ('978-8-1258-1726-5', 'Raspbekry', 'http://1yCelC0IKP.png', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ', 6231, 'Hu Zhiyuan');
INSERT INTO `book` VALUES ('978-8-1289-0500-9', 'Apple pi', 'http://SpEZsov7ri.png', 'Success consists of going from failure to failure without loss of enthusiasm.', 3093, 'Xie Jialun');
INSERT INTO `book` VALUES ('978-8-1329-7053-7', 'Mlngo', 'http://Liaa6Wxkaz.png', 'You must be the change you wish to see in the world. To successfully establish a                    ', 9872, 'Yam Sze Kwan');
INSERT INTO `book` VALUES ('978-8-1361-2164-0', 'Rambutan', 'http://8Hd4vFC1QM.png', 'It collects process metrics such as CPU load, RAM usage, and a variety of other resources           ', 656, 'Fong Ka Fai');
INSERT INTO `book` VALUES ('978-8-1365-0790-6', 'viwi elite', 'http://1YLQe5x17q.png', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.                ', 5510, 'Meng Suk Yee');
INSERT INTO `book` VALUES ('978-8-1382-3397-3', 'Strawberry mini', 'http://IMGcdlj1xp.png', 'Navicat 15 has added support for the system-wide dark mode. Secure Sockets Layer(SSL)               ', 1531, 'Liu Xiaoming');
INSERT INTO `book` VALUES ('978-8-1388-2503-9', 'Orange elite', 'http://XgHVGdlfcj.png', 'A man’s best friends are his ten fingers. Navicat authorizes you to make connection               ', 5935, '薛云熙');
INSERT INTO `book` VALUES ('978-8-1410-6209-9', 'xMango', 'http://V3nXHYPE5b.png', 'Anyone who has never made a mistake has never tried anything new. It collects process               ', 9607, 'Earl Graham');
INSERT INTO `book` VALUES ('978-8-1428-1471-5', 'Ranpberry', 'http://otNkHYxt8o.png', 'Flexible settings enable you to set up a custom key for comparison and synchronization.', 3574, 'Kimura Kaito');
INSERT INTO `book` VALUES ('978-8-1451-5978-4', 'gambutan pro', 'http://VJStxwzgf7.png', 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that                  ', 8532, 'Mak Wing Kuen');
INSERT INTO `book` VALUES ('978-8-1467-3861-3', 'Mango mini', 'http://xUnIgpIYgg.png', 'If you wait, all that happens is you get older. Navicat Data Modeler is a powerful                  ', 4646, '汪晓明');
INSERT INTO `book` VALUES ('978-8-1471-0682-8', 'xarape', 'http://IkhKXIyZPd.png', 'Creativity is intelligence having fun. I will greet this day with love in my heart.                 ', 620, 'Theresa Mitchell');
INSERT INTO `book` VALUES ('978-8-1472-7826-4', 'Strbwberry', 'http://Qto1d2EjPM.png', 'The Synchronize to Database function will give you a full picture of all database differences.', 3901, 'Otsuka Shino');
INSERT INTO `book` VALUES ('978-8-1491-0400-3', 'oiwi', 'http://z54S5lZX3V.png', 'Genius is an infinite capacity for taking pains. Monitored servers include MySQL,                   ', 4251, 'Yeung Ho Yin');
INSERT INTO `book` VALUES ('978-8-1500-6048-9', 'yluots', 'http://bmb5ANvFHP.png', 'Typically, it is employed as an encrypted version of Telnet. With its well-designed                 ', 1364, '许嘉伦');
INSERT INTO `book` VALUES ('978-8-1548-2512-7', 'ktrawberry', 'http://JlWcITSwJJ.png', 'How we spend our days is, of course, how we spend our lives. Navicat is a multi-connections         ', 2271, 'Kao Wing Suen');
INSERT INTO `book` VALUES ('978-8-1549-4794-6', 'ambi-Kiwi', 'http://1ir7D4quYj.png', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', 2855, 'Kudo Miu');
INSERT INTO `book` VALUES ('978-8-1575-9707-7', 'Grape', 'http://hVr5782qom.png', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', 7838, 'Matsui Momoka');
INSERT INTO `book` VALUES ('978-8-1603-5903-7', 'Strawbarry', 'http://4GG6SwTUi4.png', 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud.              ', 4114, '龙岚');
INSERT INTO `book` VALUES ('978-8-1625-4406-4', 'Pluots', 'http://7km2MQoona.png', 'To successfully establish a new connection to local/remote server - no matter via                   ', 5979, 'Wu Tsz Hin');
INSERT INTO `book` VALUES ('978-8-1637-1596-1', 'Orazge mini', 'http://2zoWBHoB4i.png', 'It provides strong authentication and secure encrypted communications between two                   ', 7763, 'Nishimura Nanami');
INSERT INTO `book` VALUES ('978-8-1676-6954-9', 'hherry plus', 'http://ERxvNBN4eA.png', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve.                    ', 411, 'John Jones');
INSERT INTO `book` VALUES ('978-8-1692-0142-3', 'Mkngo', 'http://IclKqiHA4v.png', 'How we spend our days is, of course, how we spend our lives. In the Objects tab,                    ', 4801, 'Qin Yunxi');
INSERT INTO `book` VALUES ('978-8-1693-2393-0', 'Apale', 'http://Q4OLBbGQo9.png', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', 7779, 'Mo Jialun');
INSERT INTO `book` VALUES ('978-8-1697-9967-5', 'itrawberry', 'http://q1jP8R7Mkr.png', 'Difficult circumstances serve as a textbook of life for people.', 6954, '秦安琪');
INSERT INTO `book` VALUES ('978-8-1709-9179-5', 'Kiwi', 'http://ZQA94CWQiG.png', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ', 1602, 'Stephen Webb');
INSERT INTO `book` VALUES ('978-8-1728-8923-9', 'ambi-Odange', 'http://b6d4h3iRXf.png', 'Flexible settings enable you to set up a custom key for comparison and synchronization.', 2857, 'Okada Kaito');
INSERT INTO `book` VALUES ('978-8-1740-1588-1', 'ikpple', 'http://lcWOcEe81I.png', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', 5242, 'Tin Ming Sze');
INSERT INTO `book` VALUES ('978-8-1760-8988-2', 'Mango', 'http://C795AUPB9x.png', 'Flexible settings enable you to set up a custom key for comparison and synchronization.             ', 7416, 'Murakami Yota');
INSERT INTO `book` VALUES ('978-8-1766-2636-9', 'Appye se', 'http://bnc7DhqSeb.png', 'A comfort zone is a beautiful place, but nothing ever grows there.', 4052, '黎宇宁');
INSERT INTO `book` VALUES ('978-8-1773-4435-5', 'Orange', 'http://ckUTEJC3yL.png', 'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ', 4524, 'Choi Chun Yu');
INSERT INTO `book` VALUES ('978-8-1804-2487-8', 'ambi-Strawberry', 'http://6SJ6SWCpQr.png', 'After comparing data, the window shows the number of records that will be inserted,                 ', 25, '吕云熙');
INSERT INTO `book` VALUES ('978-8-1831-1233-9', 'Grape', 'http://fycxJm5UgN.png', 'The Information Pane shows the detailed object information, project activities, the                 ', 4017, 'Ota Kaito');
INSERT INTO `book` VALUES ('978-8-1875-4687-8', 'sluots', 'http://b5FuD1f2Y5.png', 'The past has no power over the present moment. I destroy my enemies when I make them my friends.', 5278, '卢秀英');
INSERT INTO `book` VALUES ('978-8-1924-7106-8', 'Orange', 'http://iATXeraVx5.png', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 3529, 'Fong Ching Wan');
INSERT INTO `book` VALUES ('978-8-1936-8811-6', 'drape mini', 'http://1h5dsXqYkC.png', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ', 5137, 'Koon Hok Yau');
INSERT INTO `book` VALUES ('978-8-1948-9246-3', 'xStrawbedry', 'http://QfutJ58ud2.png', 'It wasn’t raining when Noah built the ark. In the Objects tab, you can use the                    ', 5076, 'Wong Ming Sze');
INSERT INTO `book` VALUES ('978-8-1951-7016-2', 'Kiwi se', 'http://mMJCS6CtzX.png', 'All the Navicat Cloud objects are located under different projects. You can share                   ', 2309, 'Cho Sau Man');
INSERT INTO `book` VALUES ('978-8-1966-9100-0', 'Grape mini', 'http://OnOFqoL8Xy.png', 'Anyone who has never made a mistake has never tried anything new. The first step                    ', 8440, 'Doris Moreno');
INSERT INTO `book` VALUES ('978-8-1967-9041-5', 'Grape', 'http://lg6MJdAi6n.png', 'A comfort zone is a beautiful place, but nothing ever grows there. The Synchronize                  ', 2957, 'Takeuchi Aoi');
INSERT INTO `book` VALUES ('978-8-1971-6803-8', 'ultra-Chwrry', 'http://7oIWwDgLBy.png', 'Navicat 15 has added support for the system-wide dark mode. The past has no power                   ', 5954, 'Noguchi Daisuke');
INSERT INTO `book` VALUES ('978-8-2029-4210-0', 'omni-wtrawberry', 'http://HidAJGnXvz.png', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 29, 'Mori Rin');
INSERT INTO `book` VALUES ('978-8-2036-0338-4', 'Grawe', 'http://Wv8rEsObg1.png', 'To get a secure connection, the first thing you need to do is to install OpenSSL                    ', 7793, 'Otsuka Yota');
INSERT INTO `book` VALUES ('978-8-2163-5151-4', 'Apple', 'http://YPvO4E8OTB.png', 'A man is not old until regrets take the place of dreams. I will greet this day with                 ', 4215, 'Tang Lan');
INSERT INTO `book` VALUES ('978-8-2214-3187-7', 'Chewry core', 'http://cjHLMW95Dc.png', 'Anyone who has ever made anything of importance was disciplined.', 5604, 'Pang Tin Lok');
INSERT INTO `book` VALUES ('978-8-2296-7636-4', 'Grape core', 'http://kcEUmHncNw.png', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', 1391, '许宇宁');
INSERT INTO `book` VALUES ('978-8-2306-0214-3', 'Mango mini', 'http://2qV6JtLlz8.png', 'Remember that failure is an event, not a person. Navicat Cloud could not connect                    ', 545, 'Gregory Kelly');
INSERT INTO `book` VALUES ('978-8-2312-5137-5', 'ambi-Mango', 'http://KZwJvzHIBO.png', 'What you get by achieving your goals is not as important as what you become by achieving your goals.', 4208, 'Pan Zhiyuan');
INSERT INTO `book` VALUES ('978-8-2355-0145-4', 'ambi-wluots', 'http://5MqEAayGnq.png', 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.', 4766, 'Sugiyama Itsuki');
INSERT INTO `book` VALUES ('978-8-2363-7936-7', 'Grape', 'http://QGiHzwbrRi.png', 'If the plan doesn’t work, change the plan, but never the goal. If you wait, all                   ', 394, 'Rhonda Stone');
INSERT INTO `book` VALUES ('978-8-2391-2461-7', 'ambi-Orange', 'http://2iIQKh1GtO.png', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ', 5612, 'Yau Ming Sze');
INSERT INTO `book` VALUES ('978-8-2450-8497-3', 'iCheory', 'http://AEU50q5zBx.png', 'I will greet this day with love in my heart. If the Show objects under schema in                    ', 6862, 'Hui Yu Ling');
INSERT INTO `book` VALUES ('978-8-2464-8808-9', 'Apjle pro', 'http://DUXvPRGlGK.png', 'Navicat authorizes you to make connection to remote servers running on different                    ', 5266, 'Li Ziyi');
INSERT INTO `book` VALUES ('978-8-2472-3959-3', 'xherry plus', 'http://HPJsqmg8pQ.png', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', 4220, 'Long Jialun');
INSERT INTO `book` VALUES ('978-8-2485-2881-2', 'omni-Raspberry', 'http://jzHfwhvMLM.png', 'The Main Window consists of several toolbars and panes for you to work on connections,              ', 2506, 'Pang Chi Ming');
INSERT INTO `book` VALUES ('978-8-2502-9386-2', 'Strfwberry', 'http://q11GnO8eFY.png', 'Navicat is a multi-connections Database Administration tool allowing you to connect                 ', 6634, 'Tang Ka Ling');
INSERT INTO `book` VALUES ('978-8-2557-9908-4', 'Oqange', 'http://n4Y9yAWxqG.png', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 6052, 'Chin Ka Fai');
INSERT INTO `book` VALUES ('978-8-2603-0960-3', 'liwi', 'http://BYEsUUh9q2.png', 'After comparing data, the window shows the number of records that will be inserted,                 ', 1504, '谭震南');
INSERT INTO `book` VALUES ('978-8-2680-8537-1', 'Pluots', 'http://MuoBVo7NA6.png', 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical             ', 8603, '周子异');
INSERT INTO `book` VALUES ('978-8-2692-1093-4', 'Rambutan', 'http://MLBTCwFnC2.png', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', 477, 'Michael Simpson');
INSERT INTO `book` VALUES ('978-8-2723-7012-1', 'Raspbervy', 'http://QfoOpgsHCq.png', 'Flexible settings enable you to set up a custom key for comparison and synchronization.             ', 3585, 'Sato Momoka');
INSERT INTO `book` VALUES ('978-8-2776-3558-5', 'zambutan', 'http://AV8AzygmWa.png', 'After comparing data, the window shows the number of records that will be inserted,                 ', 3730, '韩子韬');
INSERT INTO `book` VALUES ('978-8-2790-0455-4', 'Maugo', 'http://lF7kNb86Cv.png', 'How we spend our days is, of course, how we spend our lives. All journeys have secret               ', 759, 'Shirley Weaver');
INSERT INTO `book` VALUES ('978-8-2796-9203-1', 'irange', 'http://5U6BkROQ8J.png', 'Champions keep playing until they get it right. Navicat allows you to transfer data                 ', 7619, 'Pan Zhennan');
INSERT INTO `book` VALUES ('978-8-2797-0333-9', 'Orange', 'http://45bFGbZdbv.png', 'Flexible settings enable you to set up a custom key for comparison and synchronization.', 6869, 'Lok Fat');
INSERT INTO `book` VALUES ('978-8-2816-5205-9', 'Kiyi pro', 'http://BQJAqNtWSb.png', 'In other words, Navicat provides the ability for data in different databases and/or                 ', 2684, 'Charles Walker');
INSERT INTO `book` VALUES ('978-8-2818-0817-6', 'ultra-Rambunan', 'http://1T0htpH7CH.png', 'In the middle of winter I at last discovered that there was in me an invincible summer.', 1784, 'Leonard Kelly');
INSERT INTO `book` VALUES ('978-8-2821-8600-6', 'Ckerry', 'http://9cHPX5ViXr.png', 'After comparing data, the window shows the number of records that will be inserted,                 ', 2878, 'Emily Dixon');
INSERT INTO `book` VALUES ('978-8-2825-3750-4', 'Orange', 'http://W6wlg3r2ni.png', 'If opportunity doesn’t knock, build a door. You can select any connections, objects               ', 6972, 'Joe Medina');
INSERT INTO `book` VALUES ('978-8-2830-7423-0', 'Plzots', 'http://kJxS6s2d7X.png', 'Success consists of going from failure to failure without loss of enthusiasm.', 5767, 'Nomura Nanami');
INSERT INTO `book` VALUES ('978-8-2840-1544-5', 'prape pi', 'http://kz65NYU28e.png', 'Difficult circumstances serve as a textbook of life for people. If you wait, all                    ', 1834, 'Chiang Chiu Wai');
INSERT INTO `book` VALUES ('978-8-2883-4407-1', 'nluots', 'http://HeAbRBJ0nX.png', 'I destroy my enemies when I make them my friends. Monitored servers include MySQL,                  ', 6372, '廖云熙');
INSERT INTO `book` VALUES ('978-8-2895-9613-8', 'Orange', 'http://WrOQx83J0O.png', 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud.              ', 4592, 'Nakamura Yuna');
INSERT INTO `book` VALUES ('978-8-2902-8747-0', 'Pluots plus', 'http://VhqSxgKO49.png', 'I may not have gone where I intended to go, but I think I have ended up where I needed to be.       ', 6734, 'Cheung Ka Man');
INSERT INTO `book` VALUES ('978-8-2955-4855-4', 'ambi-Apple', 'http://zouoOQ3AD8.png', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 9248, '罗晓明');
INSERT INTO `book` VALUES ('978-8-2980-3863-6', 'Grape', 'http://wYPFG7smh6.png', 'In other words, Navicat provides the ability for data in different databases and/or                 ', 8903, 'Luo Jiehong');
INSERT INTO `book` VALUES ('978-8-3014-1109-5', 'xApple', 'http://dUYoMHpMfZ.png', 'To start working with your server in Navicat, you should first establish a connection               ', 7995, 'Yuen Ka Ming');
INSERT INTO `book` VALUES ('978-8-3029-1833-6', 'Pluots', 'http://JR9oUVnTD0.png', 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical             ', 3039, 'Debra Aguilar');
INSERT INTO `book` VALUES ('978-8-3029-8420-5', 'Orange mini', 'http://OPM6dd8jFn.png', 'You will succeed because most people are lazy. After logged in the Navicat Cloud                    ', 7422, '郝嘉伦');
INSERT INTO `book` VALUES ('978-8-3060-3577-9', 'Orange', 'http://4oW9zmC46t.png', 'To open a query using an external editor, control-click it and select Open with External            ', 3880, '朱詩涵');
INSERT INTO `book` VALUES ('978-8-3062-4011-1', 'Raskberry', 'http://LvKEhryYxL.png', 'The Navigation pane employs tree structure which allows you to take action upon the                 ', 4636, 'Ueda Rin');
INSERT INTO `book` VALUES ('978-8-3100-2325-9', 'Apple', 'http://gDeH5nodTl.png', 'To get a secure connection, the first thing you need to do is to install OpenSSL                    ', 8536, 'Otsuka Minato');
INSERT INTO `book` VALUES ('978-8-3135-9419-2', 'ultra-Strawbmrry', 'http://HFlHcWHRsX.png', 'Navicat Data Modeler is a powerful and cost-effective database design tool which                    ', 5466, 'Bryan Harrison');
INSERT INTO `book` VALUES ('978-8-3141-1904-9', 'Oeange mini', 'http://Dry34OWKRq.png', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.', 7604, 'Pak Ling Ling');
INSERT INTO `book` VALUES ('978-8-3219-8027-1', 'Cherry', 'http://g06gcYEJ7K.png', 'All journeys have secret destinations of which the traveler is unaware.', 7892, 'Ma Ming');
INSERT INTO `book` VALUES ('978-8-3219-9687-2', 'Rambutan', 'http://AtizYojgAH.png', 'To get a secure connection, the first thing you need to do is to install OpenSSL                    ', 8773, 'Anna Owens');
INSERT INTO `book` VALUES ('978-8-3234-5199-7', 'Rambuian', 'http://4TefZae0kx.png', 'Navicat Cloud could not connect and access your databases. By which it means, it                    ', 2951, 'Masuda Miu');
INSERT INTO `book` VALUES ('978-8-3253-1944-6', 'Radpberry', 'http://jHsL0g0g82.png', 'Navicat provides a wide range advanced features, such as compelling code editing                    ', 8639, 'Sano Kazuma');
INSERT INTO `book` VALUES ('978-8-3262-5814-1', 'Grane', 'http://WAvblqnJgm.png', 'To start working with your server in Navicat, you should first establish a connection               ', 9127, 'Edwin Roberts');
INSERT INTO `book` VALUES ('978-8-3289-0292-9', 'Kiwi', 'http://z20I8iLsfW.png', 'Such sessions are also susceptible to session hijacking, where a malicious user takes               ', 8857, 'Kathy Shaw');
INSERT INTO `book` VALUES ('978-8-3306-1036-0', 'Strawxerry', 'http://Q5i8RUAwel.png', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries.            ', 8545, 'Takagi Mai');
INSERT INTO `book` VALUES ('978-8-3376-3268-6', 'Strewberry', 'http://JLG7bORikn.png', 'Difficult circumstances serve as a textbook of life for people.', 6989, 'Lam Kwok Ming');
INSERT INTO `book` VALUES ('978-8-3391-2545-3', 'Mango', 'http://dFHgoklYX9.png', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ', 2803, '邓睿');
INSERT INTO `book` VALUES ('978-8-3400-0911-9', 'ambi-Grare', 'http://kJV9Pnv76P.png', 'If the plan doesn’t work, change the plan, but never the goal. The first step is                  ', 4146, 'Chu Kwok Kuen');
INSERT INTO `book` VALUES ('978-8-3410-0433-0', 'Mlngo mini', 'http://XVGC75aQpI.png', 'To open a query using an external editor, control-click it and select Open with External            ', 7300, '梁云熙');
INSERT INTO `book` VALUES ('978-8-3422-9230-8', 'Cherry', 'http://X6g73H9GDW.png', 'Genius is an infinite capacity for taking pains. You can select any connections,                    ', 1638, 'Miura Akina');
INSERT INTO `book` VALUES ('978-8-3456-3464-0', 'Grase', 'http://uFGxE15Gop.png', 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.', 2662, '刘震南');
INSERT INTO `book` VALUES ('978-8-3519-3978-8', 'Appze air', 'http://FqFFIQMXus.png', 'I may not have gone where I intended to go, but I think I have ended up where I needed to be.', 4279, 'Lam Ming Sze');
INSERT INTO `book` VALUES ('978-8-3636-9620-3', 'Kiwi air', 'http://gBY6uqF8bP.png', 'I will greet this day with love in my heart. If you wait, all that happens is you get older.', 3690, 'Kojima Daisuke');
INSERT INTO `book` VALUES ('978-8-3646-7012-7', 'Raspberry', 'http://0aTy5wtdyw.png', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', 4069, '傅睿');
INSERT INTO `book` VALUES ('978-8-3648-0269-0', 'ambi-Apple', 'http://9zoXK5ggi2.png', 'Anyone who has ever made anything of importance was disciplined. Navicat Data Modeler               ', 9408, 'Ng Wai Man');
INSERT INTO `book` VALUES ('978-8-3666-2797-5', 'Kiwi', 'http://CNtkj61S8j.png', 'Anyone who has never made a mistake has never tried anything new. The first step                    ', 8184, 'Nakagawa Mitsuki');
INSERT INTO `book` VALUES ('978-8-3681-5831-1', 'Grape', 'http://VYEmlp9Wih.png', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 7490, 'Ueda Yuto');
INSERT INTO `book` VALUES ('978-8-3694-4268-8', 'jiwi pi', 'http://e18Mseau75.png', 'How we spend our days is, of course, how we spend our lives.', 7143, 'Miura Aoi');
INSERT INTO `book` VALUES ('978-8-3738-3844-6', 'Cherry', 'http://LdZQ28Qz4r.png', 'After comparing data, the window shows the number of records that will be inserted,                 ', 9409, 'Katherine Adams');
INSERT INTO `book` VALUES ('978-8-3781-4866-2', 'Mango', 'http://ANbJ1504Sf.png', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', 3320, 'Chu Suk Yee');
INSERT INTO `book` VALUES ('978-8-3799-4039-6', 'apple', 'http://C6Lp0DXl2S.png', 'Champions keep playing until they get it right. Anyone who has ever made anything                   ', 9078, 'Ma Yunxi');
INSERT INTO `book` VALUES ('978-8-3842-7828-4', 'Orange', 'http://fLzQ0bMXXf.png', 'Champions keep playing until they get it right. How we spend our days is, of course,                ', 1126, '魏睿');
INSERT INTO `book` VALUES ('978-8-3844-9570-5', 'aherry', 'http://27VZkpKZxy.png', 'To start working with your server in Navicat, you should first establish a connection               ', 4760, 'Chiba Seiko');
INSERT INTO `book` VALUES ('978-8-3854-2059-9', 'omni-Apple', 'http://VyGGZHJzEU.png', 'If it scares you, it might be a good thing to try. To clear or reload various internal              ', 8859, 'Cho Wing Fat');
INSERT INTO `book` VALUES ('978-8-3889-0618-8', 'Omange pro', 'http://g8p7KBwWEI.png', 'Such sessions are also susceptible to session hijacking, where a malicious user takes               ', 1421, 'Debbie Wells');
INSERT INTO `book` VALUES ('978-8-3943-4962-9', 'Strawbgrry air', 'http://hX0NDYYb1L.png', 'Sometimes you win, sometimes you learn. You can select any connections, objects or                  ', 5918, '李晓明');
INSERT INTO `book` VALUES ('978-8-3998-0836-2', 'Caerry', 'http://I3QbPNzhU8.png', 'Flexible settings enable you to set up a custom key for comparison and synchronization.', 150, 'Shimada Yuito');
INSERT INTO `book` VALUES ('978-8-4006-7674-3', 'ambi-otrawberry', 'http://dGQiRuZatg.png', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ', 4417, 'Ando Rena');
INSERT INTO `book` VALUES ('978-8-4055-3626-6', 'kiwi', 'http://nY58PAXXJQ.png', 'Navicat provides a wide range advanced features, such as compelling code editing                    ', 7781, 'Matthew Murphy');
INSERT INTO `book` VALUES ('978-8-4101-4769-7', 'Pnuots', 'http://bWPTK8Gm4b.png', 'The Information Pane shows the detailed object information, project activities, the                 ', 8032, 'Walter Boyd');
INSERT INTO `book` VALUES ('978-8-4141-4350-7', 'Strawberry', 'http://bGMgYoKsV4.png', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ', 5303, '魏璐');
INSERT INTO `book` VALUES ('978-8-4170-4361-7', 'Apple', 'http://zmgoxsIMJK.png', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ', 9365, 'Xue Xiuying');
INSERT INTO `book` VALUES ('978-8-4174-4219-0', 'ambi-Plcots', 'http://b4OJiGRxG3.png', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 7442, 'Yuan Xiuying');
INSERT INTO `book` VALUES ('978-8-4181-0874-4', 'Raspberry', 'http://lnBvD9kOr1.png', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ', 2720, 'Kobayashi Ryota');
INSERT INTO `book` VALUES ('978-8-4214-5938-8', 'Ortnge', 'http://40kevx5oym.png', 'With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and                  ', 4974, 'Wong Ka Man');
INSERT INTO `book` VALUES ('978-8-4241-6203-7', 'ambi-Kiwi', 'http://hsbeq9TTje.png', 'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud                  ', 2072, 'Hasegawa Daisuke');
INSERT INTO `book` VALUES ('978-8-4242-7735-2', 'Rambutan core', 'http://acKLTWUnOe.png', 'You must be the change you wish to see in the world. The Navigation pane employs                    ', 5679, 'Ryan Vargas');
INSERT INTO `book` VALUES ('978-8-4307-4701-3', 'jambutan', 'http://qX3Y4Ut1ae.png', 'Typically, it is employed as an encrypted version of Telnet. Optimism is the one                    ', 9490, 'Fu Zitao');
INSERT INTO `book` VALUES ('978-8-4337-3315-8', 'ultra-Pluots', 'http://zOAAYjy6Cb.png', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', 9286, 'Wan Ho Yin');
INSERT INTO `book` VALUES ('978-8-4341-4072-3', 'Kiwi pro', 'http://pTBr6st4AQ.png', 'The Navigation pane employs tree structure which allows you to take action upon the                 ', 3705, 'Fujiwara Rin');
INSERT INTO `book` VALUES ('978-8-4398-6720-2', 'Crerry', 'http://xGcFLH6x3w.png', 'If your Internet Service Provider (ISP) does not provide direct access to its server,               ', 7436, 'Tang Zhennan');
INSERT INTO `book` VALUES ('978-8-4407-1318-0', 'omni-jiwi', 'http://z74lFPNR1p.png', 'A man’s best friends are his ten fingers. A man’s best friends are his ten fingers.', 6599, 'Lo Lai Yan');
INSERT INTO `book` VALUES ('978-8-4513-9506-5', 'nrape', 'http://CGcQbAuVLZ.png', 'Anyone who has ever made anything of importance was disciplined.', 8797, '姚震南');
INSERT INTO `book` VALUES ('978-8-4559-2952-6', 'Raspberry pi', 'http://V6C3dbLhqy.png', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries.            ', 7784, 'Kaneko Mitsuki');
INSERT INTO `book` VALUES ('978-8-4588-7670-4', 'xRaspberry', 'http://9bDuj7tgcN.png', 'Navicat Data Modeler is a powerful and cost-effective database design tool which                    ', 2348, '赵杰宏');
INSERT INTO `book` VALUES ('978-8-4590-5947-8', 'Raspberry', 'http://NF9yM6gvC6.png', 'To successfully establish a new connection to local/remote server - no matter via                   ', 8826, 'Mark Cruz');
INSERT INTO `book` VALUES ('978-8-4602-7218-6', 'Apple core', 'http://RPb9eAGAjr.png', 'A query is used to extract data from the database in a readable format according                    ', 7429, 'Sakurai Daisuke');
INSERT INTO `book` VALUES ('978-8-4614-1198-0', 'Chetry', 'http://JwVE66aC0x.png', 'Navicat authorizes you to make connection to remote servers running on different                    ', 6419, '常秀英');
INSERT INTO `book` VALUES ('978-8-4628-8952-4', 'Rambztan', 'http://OjAt5DICLE.png', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ', 3780, 'Lam Wai San');
INSERT INTO `book` VALUES ('978-8-4636-2262-8', 'Mango', 'http://WTXataVtQG.png', 'After comparing data, the window shows the number of records that will be inserted,                 ', 2676, 'Yau Hok Yau');
INSERT INTO `book` VALUES ('978-8-4661-2401-0', 'xRambutan', 'http://Lw2xvtxpUz.png', 'To successfully establish a new connection to local/remote server - no matter via                   ', 1827, 'Han Wing Fat');
INSERT INTO `book` VALUES ('978-8-4677-9445-3', 'Cherry', 'http://njNn9G67iC.png', 'Navicat authorizes you to make connection to remote servers running on different                    ', 2753, 'Saito Kaito');
INSERT INTO `book` VALUES ('978-8-4690-3362-3', 'xPluots', 'http://Kvk9a3kzE0.png', 'Export Wizard allows you to export data from tables, collections, views, or query                   ', 8272, 'Lok Tin Lok');
INSERT INTO `book` VALUES ('978-8-4701-6060-3', 'vherry', 'http://IB0vDeq6gq.png', 'To connect to a database or schema, simply double-click it in the pane.', 2202, 'Nakamura Eita');
INSERT INTO `book` VALUES ('978-8-4710-3522-5', 'Grape', 'http://MhkrkTvFIB.png', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', 5531, 'Roger Long');
INSERT INTO `book` VALUES ('978-8-4722-6466-5', 'giwi', 'http://dYRAeXeifA.png', 'The Information Pane shows the detailed object information, project activities, the                 ', 2847, 'Cheng Zhennan');
INSERT INTO `book` VALUES ('978-8-4778-1550-4', 'Mango', 'http://dwsvUCzyBA.png', 'A query is used to extract data from the database in a readable format according                    ', 487, 'Sandra Mendez');
INSERT INTO `book` VALUES ('978-8-4787-7864-9', 'ultra-Strawnerry', 'http://S6fe9wByTO.png', 'Success consists of going from failure to failure without loss of enthusiasm.', 2683, 'Fang Xiaoming');
INSERT INTO `book` VALUES ('978-8-4791-5660-4', 'ambi-Plpots', 'http://a7CHD48ueW.png', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 4489, 'Yuen Wai Lam');
INSERT INTO `book` VALUES ('978-8-4794-7994-9', 'Chbrry', 'http://aEjh7AcfTX.png', 'If the plan doesn’t work, change the plan, but never the goal. If the plan doesn’t              ', 7779, 'Tang Yunxi');
INSERT INTO `book` VALUES ('978-8-4801-8300-9', 'Cherry plus', 'http://RdxtX40Dce.png', 'The Main Window consists of several toolbars and panes for you to work on connections,              ', 7518, 'Cao Lu');
INSERT INTO `book` VALUES ('978-8-4802-8842-2', 'ambi-Orange', 'http://6d3dJ2khoY.png', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', 597, 'Cheryl Collins');
INSERT INTO `book` VALUES ('978-8-4845-4815-8', 'Kiqi', 'http://1BbvyBzyqD.png', 'Anyone who has never made a mistake has never tried anything new. The reason why                    ', 5683, '孟安琪');
INSERT INTO `book` VALUES ('978-8-4847-6570-4', 'Raspberry elite', 'http://XNIIpk9SKy.png', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.                ', 747, 'Shi Jialun');
INSERT INTO `book` VALUES ('978-8-4847-7402-2', 'Kiwi', 'http://LLWZBC7RDk.png', 'Flexible settings enable you to set up a custom key for comparison and synchronization.', 4620, '萧杰宏');
INSERT INTO `book` VALUES ('978-8-4852-1955-4', 'Chirry', 'http://TYr6Y01KGx.png', 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that                  ', 9560, 'Diane Carter');
INSERT INTO `book` VALUES ('978-8-4865-7183-3', 'Raspberry pi', 'http://huhZAN8UrP.png', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ', 2716, '赵秀英');
INSERT INTO `book` VALUES ('978-8-4898-6420-0', 'ambi-Raebutan', 'http://QwSLzdVt1k.png', 'The Main Window consists of several toolbars and panes for you to work on connections,              ', 9485, 'Marjorie Jones');
INSERT INTO `book` VALUES ('978-8-4920-1254-6', 'Mango', 'http://6p90FmSbmU.png', 'Navicat provides a wide range advanced features, such as compelling code editing                    ', 5380, 'Lam Kwok Ming');
INSERT INTO `book` VALUES ('978-8-4937-9952-3', 'Puuots core', 'http://Z2eupgGg01.png', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ', 8379, 'Fukuda Nanami');
INSERT INTO `book` VALUES ('978-8-4947-1671-1', 'xOrange', 'http://Xi0RVC0lGE.png', 'The Information Pane shows the detailed object information, project activities, the                 ', 5038, '杨岚');
INSERT INTO `book` VALUES ('978-8-4996-3327-1', 'Azple', 'http://J5P0C2cB8Q.png', 'All journeys have secret destinations of which the traveler is unaware.                             ', 4242, 'Matsumoto Hikari');
INSERT INTO `book` VALUES ('978-8-4997-2532-7', 'Pluoas', 'http://kmEQK90Miu.png', 'To open a query using an external editor, control-click it and select Open with External            ', 940, 'So Chieh Lun');
INSERT INTO `book` VALUES ('978-8-5023-3672-3', 'Plnots', 'http://AJrS6fm3Vt.png', 'If you wait, all that happens is you get older. In a Telnet session, all communications,            ', 6104, '汪杰宏');
INSERT INTO `book` VALUES ('978-8-5026-8547-3', 'omni-nambutan', 'http://Bkz3OGHDC5.png', 'Navicat authorizes you to make connection to remote servers running on different                    ', 108, 'Beverly Coleman');
INSERT INTO `book` VALUES ('978-8-5052-5650-7', 'ciwi', 'http://IQWKXJBsQ6.png', 'Champions keep playing until they get it right. Navicat provides powerful tools for                 ', 7743, 'Endo Rena');
INSERT INTO `book` VALUES ('978-8-5059-0891-5', 'Apele', 'http://E8lBGAKWFl.png', 'Navicat allows you to transfer data from one database and/or schema to another with                 ', 5555, 'Lok Ho Yin');
INSERT INTO `book` VALUES ('978-8-5062-0112-1', 'Grmpe air', 'http://wxF7p4ZzYV.png', 'Navicat provides a wide range advanced features, such as compelling code editing                    ', 3745, 'Murakami Airi');
INSERT INTO `book` VALUES ('978-8-5130-2436-9', 'Goape plus', 'http://LkUkXOebaC.png', 'The Navigation pane employs tree structure which allows you to take action upon the                 ', 2431, 'Du Xiuying');
INSERT INTO `book` VALUES ('978-8-5133-3355-5', 'vrange', 'http://ka3q0HL9A7.png', 'In a Telnet session, all communications, including username and password, are transmitted           ', 3926, 'Charlotte Sullivan');
INSERT INTO `book` VALUES ('978-8-5143-5325-4', 'rrape', 'http://rmUOpa9KMb.png', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ', 676, '陆子韬');
INSERT INTO `book` VALUES ('978-8-5144-7570-8', 'Strarberry mini', 'http://kCqeX5Jibp.png', 'If the plan doesn’t work, change the plan, but never the goal. Sometimes you win,                 ', 7416, 'Sheh Kwok Yin');
INSERT INTO `book` VALUES ('978-8-5160-3353-3', 'ambi-Mango', 'http://XGUPvOQL5C.png', 'Such sessions are also susceptible to session hijacking, where a malicious user takes               ', 1184, 'Lok Ming');
INSERT INTO `book` VALUES ('978-8-5201-0155-8', 'Graee plus', 'http://iMCmm4gvLL.png', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 3198, 'Lam Cho Yee');
INSERT INTO `book` VALUES ('978-8-5208-5465-0', 'sambutan', 'http://F5twOcb4YI.png', 'I will greet this day with love in my heart. The reason why a great man is great                    ', 9389, 'Leung Wai Yee');
INSERT INTO `book` VALUES ('978-8-5208-5704-1', 'Apple', 'http://zmvFGWCqxF.png', 'I may not have gone where I intended to go, but I think I have ended up where I needed to be.', 7900, '徐岚');
INSERT INTO `book` VALUES ('978-8-5209-0301-8', 'Grape', 'http://NugVGsrQ0X.png', 'To start working with your server in Navicat, you should first establish a connection               ', 9624, 'Fan Ka Man');
INSERT INTO `book` VALUES ('978-8-5259-4609-9', 'xCherry', 'http://ht64Tgktfj.png', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ', 3252, 'Jennifer Dixon');
INSERT INTO `book` VALUES ('978-8-5271-6396-8', 'Pluots', 'http://2hvB5A2p0U.png', 'Flexible settings enable you to set up a custom key for comparison and synchronization.', 7155, 'Kinoshita Ayato');
INSERT INTO `book` VALUES ('978-8-5272-7415-0', 'ultra-Pauots', 'http://SqmuwW6GDb.png', 'I may not have gone where I intended to go, but I think I have ended up where I needed to be.', 3075, 'Zou Anqi');
INSERT INTO `book` VALUES ('978-8-5283-1419-3', 'ultra-Cherry', 'http://wtbuKJ8oG1.png', 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical             ', 2075, '田安琪');
INSERT INTO `book` VALUES ('978-8-5316-7694-7', 'yiwi elite', 'http://MqaqsCF4yq.png', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ', 1163, 'Edward Ford');
INSERT INTO `book` VALUES ('978-8-5338-2923-1', 'Apdle core', 'http://lYxQMeIV10.png', 'Export Wizard allows you to export data from tables, collections, views, or query                   ', 6545, 'Xiong Jiehong');
INSERT INTO `book` VALUES ('978-8-5360-9536-8', 'Cherry', 'http://yqayuyzPWy.png', 'The past has no power over the present moment. Genius is an infinite capacity for taking pains.', 8818, '史晓明');
INSERT INTO `book` VALUES ('978-8-5390-2057-8', 'ultra-Chmrry', 'http://Q3OzbBarMt.png', 'Success consists of going from failure to failure without loss of enthusiasm.                       ', 4799, 'Chiba Takuya');
INSERT INTO `book` VALUES ('978-8-5429-0278-1', 'Sgrawberry', 'http://MUZnzI8ONE.png', 'Creativity is intelligence having fun. Navicat Monitor can be installed on any local                ', 1731, '程子异');
INSERT INTO `book` VALUES ('978-8-5454-8885-6', 'Gwape', 'http://aWPpWyObch.png', 'Navicat provides a wide range advanced features, such as compelling code editing                    ', 3914, 'Yung Wai Yee');
INSERT INTO `book` VALUES ('978-8-5472-6771-6', 'iMango', 'http://PBFaJ2KETo.png', 'The Information Pane shows the detailed object information, project activities, the                 ', 4854, 'Jerry Brown');
INSERT INTO `book` VALUES ('978-8-5508-4020-4', 'ultra-Gbape', 'http://D1Lu5g4r8U.png', 'I destroy my enemies when I make them my friends. Navicat is a multi-connections                    ', 8459, 'Fang Yuning');
INSERT INTO `book` VALUES ('978-8-5518-3623-5', 'Pluots mini', 'http://LFEa5PUvIm.png', 'A comfort zone is a beautiful place, but nothing ever grows there. With its well-designed           ', 6758, 'Watanabe Mitsuki');
INSERT INTO `book` VALUES ('978-8-5521-7125-0', 'Orange pro', 'http://kzEF1sczqg.png', 'How we spend our days is, of course, how we spend our lives. You can select any connections,        ', 6386, '陶晓明');
INSERT INTO `book` VALUES ('978-8-5534-9508-4', 'Orange', 'http://MyKpRnpmrX.png', 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical             ', 4280, 'Zhong Anqi');
INSERT INTO `book` VALUES ('978-8-5591-4089-3', 'Strawberry', 'http://IhWUkDiA2P.png', 'To start working with your server in Navicat, you should first establish a connection               ', 472, 'Lu Rui');
INSERT INTO `book` VALUES ('978-8-5682-6192-8', 'Kpwi', 'http://g7ojfBXS1B.png', 'It is used while your ISPs do not allow direct connections, but allows establishing                 ', 5308, 'Sheh Chun Yu');
INSERT INTO `book` VALUES ('978-8-5691-4946-4', 'Pluots', 'http://sE8yG8Grs7.png', 'I will greet this day with love in my heart. Navicat is a multi-connections Database                ', 1410, 'Norman Hayes');
INSERT INTO `book` VALUES ('978-8-5696-4758-7', 'fiwi air', 'http://46XR7SZCro.png', 'I will greet this day with love in my heart. To successfully establish a new connection             ', 3632, 'Tin Wing Fat');
INSERT INTO `book` VALUES ('978-8-5697-4609-4', 'ambi-Apple', 'http://kbk223dR2c.png', 'You must be the change you wish to see in the world. A query is used to extract data                ', 1430, 'Alice Spencer');
INSERT INTO `book` VALUES ('978-8-5713-8549-9', 'Oranfe', 'http://3MHZJMZXfb.png', 'It provides strong authentication and secure encrypted communications between two                   ', 881, 'Fan Zitao');
INSERT INTO `book` VALUES ('978-8-5715-4735-0', 'Grape', 'http://8oPrXqtZBP.png', 'The past has no power over the present moment. To open a query using an external                    ', 5385, 'Gong Zhiyuan');
INSERT INTO `book` VALUES ('978-8-5748-0624-1', 'Apple se', 'http://VdBfx92MeU.png', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.', 9762, '韩宇宁');
INSERT INTO `book` VALUES ('978-8-5760-0886-9', 'Pluots', 'http://y1cm89jHnb.png', 'Export Wizard allows you to export data from tables, collections, views, or query                   ', 9292, 'Fan Wai Han');
INSERT INTO `book` VALUES ('978-8-5772-3445-8', 'Chepry plus', 'http://imRbJc6wiW.png', 'If your Internet Service Provider (ISP) does not provide direct access to its server,               ', 1549, 'Duan Zhennan');
INSERT INTO `book` VALUES ('978-8-5772-4840-6', 'iStrawberry', 'http://Qv6odR7jV9.png', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 2942, '叶秀英');
INSERT INTO `book` VALUES ('978-8-5773-5646-0', 'vango pro', 'http://xWB3aQTQen.png', 'Navicat 15 has added support for the system-wide dark mode. The past has no power                   ', 4215, 'Mok Wing Kuen');
INSERT INTO `book` VALUES ('978-8-5777-6856-5', 'zherry', 'http://aoM5ya3yn6.png', 'If your Internet Service Provider (ISP) does not provide direct access to its server,               ', 6946, 'Louise Hernandez');
INSERT INTO `book` VALUES ('978-8-5799-6463-8', 'iGrape', 'http://vqeQl8McNM.png', 'Instead of wondering when your next vacation is, maybe you should set up a life you                 ', 7673, 'Gong Lan');
INSERT INTO `book` VALUES ('978-8-5805-5254-1', 'yluots', 'http://A9iDP7io50.png', 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', 2110, 'Lam Wai San');
INSERT INTO `book` VALUES ('978-8-5807-3563-3', 'Strawberry elite', 'http://yZwh3ClyGQ.png', 'If your Internet Service Provider (ISP) does not provide direct access to its server,               ', 5243, 'Jiang Anqi');
INSERT INTO `book` VALUES ('978-8-5835-3316-3', 'Rambutan pi', 'http://Vupai8roz5.png', 'Navicat is a multi-connections Database Administration tool allowing you to connect                 ', 7157, 'Chu Kwok Wing');
INSERT INTO `book` VALUES ('978-8-5847-5588-9', 'Strawbxrry pro', 'http://yjYt07uVOy.png', 'If the plan doesn’t work, change the plan, but never the goal. Anyone who has never               ', 206, 'Cindy Ross');
INSERT INTO `book` VALUES ('978-8-5863-5063-1', 'ambi-Strawberry', 'http://A1u5rmEuel.png', 'In a Telnet session, all communications, including username and password, are transmitted           ', 3337, 'Chang Zhennan');
INSERT INTO `book` VALUES ('978-8-5874-3132-8', 'Strawberry elite', 'http://0InfWEasf2.png', 'I may not have gone where I intended to go, but I think I have ended up where I needed to be.', 4996, 'Tse Fat');
INSERT INTO `book` VALUES ('978-8-5877-8725-0', 'Cherry plus', 'http://ydhrNAUB3H.png', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 5229, 'Yung Ching Wan');
INSERT INTO `book` VALUES ('978-8-5891-2047-9', 'Raspuerry', 'http://gLRQ4g7W3m.png', 'A comfort zone is a beautiful place, but nothing ever grows there. Always keep your                 ', 7572, 'Sun Xiaoming');
INSERT INTO `book` VALUES ('978-8-5920-6369-5', 'Raspberry', 'http://I6SJeMHtfF.png', 'If your Internet Service Provider (ISP) does not provide direct access to its server,               ', 9818, 'Tin Kwok Wing');
INSERT INTO `book` VALUES ('978-8-5965-3284-5', 'Kiwi mini', 'http://ud6xp1oJFA.png', 'To start working with your server in Navicat, you should first establish a connection               ', 216, '蔡子韬');
INSERT INTO `book` VALUES ('978-8-5969-3734-6', 'Apple', 'http://Dm92wsyZEU.png', 'If it scares you, it might be a good thing to try. A query is used to extract data                  ', 4559, 'Ono Sara');
INSERT INTO `book` VALUES ('978-8-5969-5260-6', 'Rambuttn', 'http://HhbOvsguqS.png', 'The reason why a great man is great is that he resolves to be a great man.                          ', 1318, '方子异');
INSERT INTO `book` VALUES ('978-8-5993-8835-6', 'Oraige air', 'http://CIwBZX41yH.png', 'It wasn’t raining when Noah built the ark. Difficult circumstances serve as a textbook            ', 1967, 'Ren Rui');
INSERT INTO `book` VALUES ('978-8-6038-9373-8', 'Aeple pi', 'http://4Dr3HvxcZO.png', 'Typically, it is employed as an encrypted version of Telnet. To open a query using                  ', 1611, '秦睿');
INSERT INTO `book` VALUES ('978-8-6045-5086-7', 'Mango', 'http://Yt7YGnq7Bh.png', 'The first step is as good as half over. SSH serves to prevent such vulnerabilities                  ', 3502, '叶致远');
INSERT INTO `book` VALUES ('978-8-6067-7036-3', 'Chvrry elite', 'http://6ySdrG6YM6.png', 'Such sessions are also susceptible to session hijacking, where a malicious user takes               ', 6233, '魏震南');
INSERT INTO `book` VALUES ('978-8-6084-5096-3', 'Manto', 'http://twn2H0pNAI.png', 'A man’s best friends are his ten fingers. Anyone who has ever made anything of                    ', 8002, 'Tong Cho Yee');
INSERT INTO `book` VALUES ('978-8-6091-1382-9', 'Cherry', 'http://B5eQTpi6xr.png', 'If it scares you, it might be a good thing to try. Navicat Monitor requires a repository            ', 4415, 'Wu On Kay');
INSERT INTO `book` VALUES ('978-8-6106-3109-5', 'Grape pi', 'http://ZNJZ9IJFvB.png', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', 3539, 'Sasaki Airi');
INSERT INTO `book` VALUES ('978-8-6152-0086-7', 'iChzrry', 'http://34rZCw1Ava.png', 'Navicat 15 has added support for the system-wide dark mode. Anyone who has never                    ', 2895, 'Shao Xiuying');
INSERT INTO `book` VALUES ('978-8-6159-2326-2', 'ultra-Mango', 'http://r3BXd9VUJ9.png', 'You cannot save people, you can just love them. The past has no power over the present moment.', 4158, 'Uchida Daichi');
INSERT INTO `book` VALUES ('978-8-6159-7697-7', 'Grare', 'http://hHGEfAf65O.png', 'There is no way to happiness. Happiness is the way. Anyone who has never made a mistake             ', 6810, '贺子异');
INSERT INTO `book` VALUES ('978-8-6205-2074-3', 'tluots core', 'http://fpMe2EWACD.png', 'The past has no power over the present moment. A comfort zone is a beautiful place,                 ', 2710, 'Patricia Webb');
INSERT INTO `book` VALUES ('978-8-6212-5224-3', 'ambi-Plucts', 'http://ifCHtTFfTs.png', 'How we spend our days is, of course, how we spend our lives. Navicat provides powerful              ', 8907, '蔡子异');
INSERT INTO `book` VALUES ('978-8-6218-0920-1', 'Rambutan', 'http://f2pNHrtv4R.png', 'Genius is an infinite capacity for taking pains. The Synchronize to Database function               ', 3916, '贺岚');
INSERT INTO `book` VALUES ('978-8-6220-7628-7', 'uluots pro', 'http://SOfBCbHJKl.png', 'Champions keep playing until they get it right. It can also manage cloud databases                  ', 3223, 'Ng Chi Ming');
INSERT INTO `book` VALUES ('978-8-6253-4933-5', 'Pluots', 'http://WrPxnD9o7F.png', 'Typically, it is employed as an encrypted version of Telnet. It wasn’t raining                    ', 609, 'Yamaguchi Daisuke');
INSERT INTO `book` VALUES ('978-8-6261-7247-2', 'Raspberry', 'http://tZDb4U3LKr.png', 'Navicat is a multi-connections Database Administration tool allowing you to connect                 ', 9757, 'Miura Mai');
INSERT INTO `book` VALUES ('978-8-6272-1157-2', 'Apple', 'http://vVFMNuSIxa.png', 'To successfully establish a new connection to local/remote server - no matter via                   ', 5982, 'Hara Yuto');
INSERT INTO `book` VALUES ('978-8-6282-9097-8', 'Giape pi', 'http://RzCvCe4B1p.png', 'In other words, Navicat provides the ability for data in different databases and/or                 ', 2912, 'Pan Yuning');
INSERT INTO `book` VALUES ('978-8-6308-6218-2', 'Kiwi plus', 'http://M5VxtuqZMI.png', 'How we spend our days is, of course, how we spend our lives. To successfully establish              ', 1406, 'Lui Siu Wai');
INSERT INTO `book` VALUES ('978-8-6316-9363-0', 'Pguots mini', 'http://ASdqdRZbqV.png', 'To connect to a database or schema, simply double-click it in the pane.                             ', 9554, 'Guo Jialun');
INSERT INTO `book` VALUES ('978-8-6324-1083-4', 'iaspberry', 'http://sipd6ISkx6.png', 'You can select any connections, objects or projects, and then select the corresponding              ', 3383, '武詩涵');
INSERT INTO `book` VALUES ('978-8-6389-1505-3', 'Cheruy', 'http://vhnJclrg7C.png', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries.', 9007, 'Tang Yunxi');
INSERT INTO `book` VALUES ('978-8-6406-8308-8', 'atrawberry mini', 'http://IC4hhe6rf9.png', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', 5151, 'Chung Ka Ming');
INSERT INTO `book` VALUES ('978-8-6417-9607-8', 'Raspqerry pi', 'http://Dt1oxMSdOQ.png', 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', 4739, 'Joyce Spencer');
INSERT INTO `book` VALUES ('978-8-6443-6818-0', 'irape', 'http://eM0NNoiDIl.png', 'Remember that failure is an event, not a person. If opportunity doesn’t knock, build a door.', 3192, '阎震南');
INSERT INTO `book` VALUES ('978-8-6449-3277-1', 'Chergy', 'http://Cmu6OfZbwQ.png', 'If opportunity doesn’t knock, build a door. After logged in the Navicat Cloud feature,            ', 6214, '方睿');
INSERT INTO `book` VALUES ('978-8-6458-9811-3', 'Rombutan pro', 'http://gaoaYmJMe4.png', 'Navicat allows you to transfer data from one database and/or schema to another with                 ', 4320, '段璐');
INSERT INTO `book` VALUES ('978-8-6459-5647-0', 'Orauge', 'http://wNICoTrmAM.png', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.              ', 2312, 'So On Na');
INSERT INTO `book` VALUES ('978-8-6499-3207-3', 'Guape core', 'http://I3T6ziPp55.png', 'Flexible settings enable you to set up a custom key for comparison and synchronization.', 3015, 'Wang Jialun');
INSERT INTO `book` VALUES ('978-8-6500-2604-9', 'Cherry', 'http://hvuAJ7I1lh.png', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve.                    ', 2398, 'To Wai Lam');
INSERT INTO `book` VALUES ('978-8-6501-8444-2', 'Strawberry plus', 'http://mCXHd6MElI.png', 'Navicat provides a wide range advanced features, such as compelling code editing                    ', 8655, 'Hou Zhiyuan');
INSERT INTO `book` VALUES ('978-8-6509-3084-3', 'Pluoas se', 'http://eo9xYmatSt.png', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.                ', 1183, 'Gloria Bell');
INSERT INTO `book` VALUES ('978-8-6513-5179-1', 'Rzspberry', 'http://YwzYe3Q0dJ.png', 'You cannot save people, you can just love them. It provides strong authentication                   ', 1685, '韩子异');
INSERT INTO `book` VALUES ('978-8-6525-7155-0', 'Rashberry', 'http://Fh11bnJkYX.png', 'Navicat allows you to transfer data from one database and/or schema to another with                 ', 2670, 'Eugene Morales');
INSERT INTO `book` VALUES ('978-8-6543-9201-6', 'Apple', 'http://rkW0LkFSkT.png', 'Such sessions are also susceptible to session hijacking, where a malicious user takes               ', 5071, 'Alfred Soto');
INSERT INTO `book` VALUES ('978-8-6576-3339-2', 'Apple', 'http://kofHDnN6X7.png', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 1830, 'Hsuan Ka Ming');
INSERT INTO `book` VALUES ('978-8-6597-4057-1', 'Kiwi mini', 'http://bUGCCIAD2a.png', 'How we spend our days is, of course, how we spend our lives. After logged in the                    ', 194, 'Tina Martinez');
INSERT INTO `book` VALUES ('978-8-6599-9043-0', 'Plcots', 'http://Upxqikg9nA.png', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', 1179, 'Amanda Webb');
INSERT INTO `book` VALUES ('978-8-6611-6040-9', 'xvpple', 'http://Z6txL9ZSgc.png', 'Typically, it is employed as an encrypted version of Telnet. It can also manage cloud               ', 8667, '程子韬');
INSERT INTO `book` VALUES ('978-8-6626-8531-7', 'Strawberry', 'http://CMQ31MLim5.png', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ', 2999, 'Mo Kwok Wing');
INSERT INTO `book` VALUES ('978-8-6651-3103-9', 'Orange', 'http://mJ0nc7AzNf.png', 'Navicat authorizes you to make connection to remote servers running on different                    ', 7518, 'Kobayashi Ikki');
INSERT INTO `book` VALUES ('978-8-6750-1436-5', 'xwango', 'http://OVdkNhVOan.png', 'To successfully establish a new connection to local/remote server - no matter via                   ', 8170, 'Sylvia Romero');
INSERT INTO `book` VALUES ('978-8-6841-0800-3', 'xMakgo', 'http://9zz7bx07o8.png', 'Optimism is the one quality more associated with success and happiness than any other.', 3251, 'Julie Lewis');
INSERT INTO `book` VALUES ('978-8-6865-9915-4', 'ambi-Apple', 'http://wrpb0SMVdM.png', 'All the Navicat Cloud objects are located under different projects. You can share                   ', 9770, 'Fujita Hikari');
INSERT INTO `book` VALUES ('978-8-6870-5458-3', 'Raspberry', 'http://eRPpqgBgEQ.png', 'Difficult circumstances serve as a textbook of life for people. To connect to a database            ', 2831, 'Liao Zhiyuan');
INSERT INTO `book` VALUES ('978-8-6889-4181-2', 'Raabutan pi', 'http://NIagaSckG6.png', 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical             ', 4499, 'Mo Anqi');
INSERT INTO `book` VALUES ('978-8-6911-8644-3', 'Pluogs core', 'http://IIcicnSRr3.png', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries.            ', 7517, 'Koyama Shino');
INSERT INTO `book` VALUES ('978-8-6915-0719-2', 'Orange pi', 'http://LVTO5G955E.png', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', 412, '尹璐');
INSERT INTO `book` VALUES ('978-8-6926-0757-0', 'Strxwberry', 'http://1texx8XtAX.png', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', 4985, 'Kaneko Takuya');
INSERT INTO `book` VALUES ('978-8-6955-1946-0', 'Pluots', 'http://VfS34cdnVo.png', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', 8069, 'Guo Lan');
INSERT INTO `book` VALUES ('978-8-6979-7401-3', 'strawberry mini', 'http://dy6VXhIJk6.png', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', 5508, '徐晓明');
INSERT INTO `book` VALUES ('978-8-7000-3001-1', 'xRaspberry', 'http://w1WniAQlKi.png', 'Difficult circumstances serve as a textbook of life for people. To clear or reload                  ', 7749, '毛云熙');
INSERT INTO `book` VALUES ('978-8-7004-6607-5', 'Rahbutan air', 'http://sofmufNvdA.png', 'If opportunity doesn’t knock, build a door. You must be the change you wish to see in the world.', 7184, 'Yuen Sum Wing');
INSERT INTO `book` VALUES ('978-8-7013-9243-1', 'iApole', 'http://q6qoAnmLjF.png', 'Anyone who has ever made anything of importance was disciplined. Instead of wondering               ', 4754, 'Yuen Wai Han');
INSERT INTO `book` VALUES ('978-8-7024-3907-3', 'Apple', 'http://VJsBJOuqDv.png', 'The reason why a great man is great is that he resolves to be a great man.                          ', 6335, 'Vincent Bell');
INSERT INTO `book` VALUES ('978-8-7024-7093-2', 'Strawberry plus', 'http://DJ6HucWUye.png', 'To get a secure connection, the first thing you need to do is to install OpenSSL                    ', 8341, '周杰宏');
INSERT INTO `book` VALUES ('978-8-7043-7546-3', 'Apnle', 'http://JX5wu2pMqr.png', 'To successfully establish a new connection to local/remote server - no matter via                   ', 5068, 'Siu Hui Mei');
INSERT INTO `book` VALUES ('978-8-7088-4772-6', 'Grape premium', 'http://k2ua3egFwO.png', 'Navicat Cloud could not connect and access your databases. By which it means, it                    ', 9835, '宋震南');
INSERT INTO `book` VALUES ('978-8-7099-4042-5', 'Grape', 'http://f8envfAmyU.png', 'In the middle of winter I at last discovered that there was in me an invincible summer.             ', 4239, '程詩涵');
INSERT INTO `book` VALUES ('978-8-7111-1392-4', 'iRamcutan', 'http://iFnBoJOi6o.png', 'Typically, it is employed as an encrypted version of Telnet. To clear or reload various             ', 4420, 'Jiang Xiaoming');
INSERT INTO `book` VALUES ('978-8-7115-6550-2', 'ixango', 'http://3itRNhPVKR.png', 'In the middle of winter I at last discovered that there was in me an invincible summer.', 5382, '胡睿');
INSERT INTO `book` VALUES ('978-8-7206-9265-2', 'Pluoes', 'http://8xLMDlPRSm.png', 'You can select any connections, objects or projects, and then select the corresponding              ', 4679, 'Chang Ziyi');
INSERT INTO `book` VALUES ('978-8-7221-6564-7', 'eango air', 'http://b8JARW1FPE.png', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ', 7669, 'Ye Yunxi');
INSERT INTO `book` VALUES ('978-8-7240-8391-9', 'ultra-Kiwi', 'http://oqg2zOEXIb.png', 'There is no way to happiness. Happiness is the way.', 9568, 'Ishikawa Kenta');
INSERT INTO `book` VALUES ('978-8-7268-2599-6', 'Orange premium', 'http://mgoQGa8MFE.png', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', 9173, '史杰宏');
INSERT INTO `book` VALUES ('978-8-7283-6816-7', 'Grape pro', 'http://kLgSxPESEf.png', 'After comparing data, the window shows the number of records that will be inserted,                 ', 7181, 'Yung Ming');
INSERT INTO `book` VALUES ('978-8-7314-8022-0', 'Cherly air', 'http://vEdM3Z88z5.png', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', 2710, '向宇宁');
INSERT INTO `book` VALUES ('978-8-7332-6121-2', 'Orange', 'http://1qkR5IiHP0.png', 'You can select any connections, objects or projects, and then select the corresponding              ', 686, 'Wei Jialun');
INSERT INTO `book` VALUES ('978-8-7341-8678-8', 'iPluots', 'http://XThsFdll7W.png', 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', 5443, '潘詩涵');
INSERT INTO `book` VALUES ('978-8-7370-3816-8', 'Cherry air', 'http://UcL5TEvS6k.png', 'The past has no power over the present moment. A query is used to extract data from                 ', 6988, '邱杰宏');
INSERT INTO `book` VALUES ('978-8-7407-4115-6', 'grape plus', 'http://4hsZdNDI0i.png', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', 3557, '魏云熙');
INSERT INTO `book` VALUES ('978-8-7451-1378-8', 'Mango', 'http://VDHTDRsau6.png', 'The past has no power over the present moment. You cannot save people, you can just love them.', 7885, 'Fu Zitao');
INSERT INTO `book` VALUES ('978-8-7465-2546-8', 'ambi-Raspberpy', 'http://w0Xh4vQkXp.png', 'If it scares you, it might be a good thing to try. Navicat Monitor can be installed                 ', 6317, '孟致远');
INSERT INTO `book` VALUES ('978-8-7491-5903-4', 'Grape elite', 'http://zmJTfW2JJ8.png', 'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ', 3318, 'Julia Roberts');
INSERT INTO `book` VALUES ('978-8-7511-0904-7', 'Raspberry', 'http://pI9evkcbQL.png', 'There is no way to happiness. Happiness is the way. If opportunity doesn’t knock, build a door.', 5384, 'Sakai Takuya');
INSERT INTO `book` VALUES ('978-8-7518-6927-3', 'Gdape elite', 'http://eRvtpAugyr.png', 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical             ', 2595, 'Jiang Rui');
INSERT INTO `book` VALUES ('978-8-7525-4164-4', 'Mango', 'http://xk7n3xAAW3.png', 'Navicat Cloud could not connect and access your databases. By which it means, it                    ', 3370, 'Au Kwok Yin');
INSERT INTO `book` VALUES ('978-8-7536-0766-0', 'Oranae core', 'http://ZGSJtgGZAB.png', 'You can select any connections, objects or projects, and then select the corresponding              ', 9249, 'Cui Anqi');
INSERT INTO `book` VALUES ('978-8-7540-3513-3', 'ultra-Grape', 'http://ZOkrzITmvY.png', 'How we spend our days is, of course, how we spend our lives. Secure SHell (SSH) is                  ', 4154, 'Chad Gomez');
INSERT INTO `book` VALUES ('978-8-7558-0758-0', 'Rbmbutan', 'http://NzOaHkZg5h.png', 'After comparing data, the window shows the number of records that will be inserted,                 ', 1468, '卢晓明');
INSERT INTO `book` VALUES ('978-8-7560-4781-8', 'pambutan', 'http://xYI9sm38R2.png', 'Remember that failure is an event, not a person. It collects process metrics such                   ', 218, 'Yung Wai Yee');
INSERT INTO `book` VALUES ('978-8-7567-7811-5', 'Kiwi', 'http://hJO6ErEBlz.png', 'All the Navicat Cloud objects are located under different projects. You can share                   ', 1852, 'Cui Zhennan');
INSERT INTO `book` VALUES ('978-8-7576-6830-2', 'Raspbarry', 'http://NE0xJPXg9t.png', 'A query is used to extract data from the database in a readable format according                    ', 2554, '蒋詩涵');
INSERT INTO `book` VALUES ('978-8-7599-2609-1', 'Raspberry elite', 'http://n04huO54FU.png', 'If the plan doesn’t work, change the plan, but never the goal.', 1406, '阎宇宁');
INSERT INTO `book` VALUES ('978-8-7616-8842-4', 'Raspberry plus', 'http://CKKCtVhA3q.png', 'All the Navicat Cloud objects are located under different projects. You can share                   ', 8388, 'Kudo Daisuke');
INSERT INTO `book` VALUES ('978-8-7622-7926-9', 'Raopberry se', 'http://WEzPlD5mO4.png', 'With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and                  ', 1954, 'Aaron Gomez');
INSERT INTO `book` VALUES ('978-8-7635-3505-6', 'Rcspberry', 'http://OQuivdDZHe.png', 'In the middle of winter I at last discovered that there was in me an invincible summer.', 6681, 'Lu Jialun');
INSERT INTO `book` VALUES ('978-8-7646-2854-4', 'Apole', 'http://MQpvKipzhi.png', 'It is used while your ISPs do not allow direct connections, but allows establishing                 ', 3011, 'Marcus Long');
INSERT INTO `book` VALUES ('978-8-7648-6768-4', 'Gcape', 'http://y1myc6791r.png', 'Navicat Data Modeler is a powerful and cost-effective database design tool which                    ', 2120, '邓秀英');
INSERT INTO `book` VALUES ('978-8-7683-9088-0', 'Mango', 'http://oYDO6z3tlQ.png', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ', 3993, 'Li Zitao');
INSERT INTO `book` VALUES ('978-8-7685-8015-6', 'Kiwi', 'http://MlUfABItee.png', 'To successfully establish a new connection to local/remote server - no matter via                   ', 1058, 'Ando Yamato');
INSERT INTO `book` VALUES ('978-8-7727-2177-7', 'Grvpe se', 'http://UJhglf2jhz.png', 'The Navigation pane employs tree structure which allows you to take action upon the                 ', 3389, 'Dong Shihan');
INSERT INTO `book` VALUES ('978-8-7727-9725-7', 'xRambutan', 'http://bJSZmRC4Jw.png', 'You can select any connections, objects or projects, and then select the corresponding              ', 9450, 'Yeow Ming');
INSERT INTO `book` VALUES ('978-8-7746-0154-7', 'Obange se', 'http://9bryuJA8A2.png', 'Instead of wondering when your next vacation is, maybe you should set up a life you                 ', 6106, 'Choi Tin Wing');
INSERT INTO `book` VALUES ('978-8-7749-8738-1', 'Kiwi pro', 'http://FHNR2DmS2b.png', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.          ', 524, 'Kwan Wai Han');
INSERT INTO `book` VALUES ('978-8-7771-6848-1', 'ambi-ftrawberry', 'http://nX7Xgd0fl1.png', 'Navicat authorizes you to make connection to remote servers running on different                    ', 5618, 'Jose Foster');
INSERT INTO `book` VALUES ('978-8-7825-6568-1', 'pluots', 'http://utYQxrYDmK.png', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.', 6166, '傅安琪');
INSERT INTO `book` VALUES ('978-8-7852-5165-1', 'omni-Rambuxan', 'http://Zt5P5z9Gj3.png', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.', 5176, 'Okada Hina');
INSERT INTO `book` VALUES ('978-8-7857-1244-7', 'Kiwi', 'http://8W1YQ03kWO.png', 'A man is not old until regrets take the place of dreams.', 4232, 'Pak Hiu Tung');
INSERT INTO `book` VALUES ('978-8-7859-3277-6', 'aango pro', 'http://mbejJrCbrz.png', 'A man’s best friends are his ten fingers. If you wait, all that happens is you get older.', 5121, 'Kam Hok Yau');
INSERT INTO `book` VALUES ('978-8-7870-1913-3', 'xKiwi', 'http://O5HSPdOq0C.png', 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that                  ', 8778, 'Leslie Gomez');
INSERT INTO `book` VALUES ('978-8-7905-3287-3', 'Kini', 'http://UqYGie4FH4.png', 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that                  ', 7462, '贺嘉伦');
INSERT INTO `book` VALUES ('978-8-7942-7651-5', 'Cherry', 'http://STlPZhL6E5.png', 'In other words, Navicat provides the ability for data in different databases and/or                 ', 4423, 'Kaneko Airi');
INSERT INTO `book` VALUES ('978-8-7945-4625-0', 'Pluots pi', 'http://uCnRGExMGW.png', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ', 5136, '汤璐');
INSERT INTO `book` VALUES ('978-8-8010-3052-4', 'Kiai premium', 'http://jHcCdOLFMg.png', 'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ', 3547, 'Bonnie Myers');
INSERT INTO `book` VALUES ('978-8-8069-5875-9', 'Strawbhrry premium', 'http://bZ3cUbQmgk.png', 'If it scares you, it might be a good thing to try. Secure SHell (SSH) is a program                  ', 7661, 'Jiang Zhiyuan');
INSERT INTO `book` VALUES ('978-8-8071-6075-9', 'sango', 'http://4ImcEIRdt6.png', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ', 2967, '侯子韬');
INSERT INTO `book` VALUES ('978-8-8081-5778-1', 'omni-grape', 'http://6CPPoMPvaC.png', 'In a Telnet session, all communications, including username and password, are transmitted           ', 1538, 'Ye Anqi');
INSERT INTO `book` VALUES ('978-8-8124-3280-7', 'Rlmbutan', 'http://GhDdNqqLth.png', 'A query is used to extract data from the database in a readable format according                    ', 1275, 'Travis Griffin');
INSERT INTO `book` VALUES ('978-8-8145-3722-9', 'Mango', 'http://CtNwQTiovQ.png', 'Navicat Cloud could not connect and access your databases. By which it means, it                    ', 6959, '汪震南');
INSERT INTO `book` VALUES ('978-8-8147-0961-0', 'omni-Plxots', 'http://dPxSKkvLS7.png', 'Such sessions are also susceptible to session hijacking, where a malicious user takes               ', 9619, 'Hou Yunxi');
INSERT INTO `book` VALUES ('978-8-8154-2350-4', 'Mxngo', 'http://cgbJRXdEHx.png', 'Navicat provides a wide range advanced features, such as compelling code editing                    ', 3809, 'Yip Wing Fat');
INSERT INTO `book` VALUES ('978-8-8155-0557-6', 'Rambutan', 'http://x8jHUthx1M.png', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ', 60, 'Chen Shihan');
INSERT INTO `book` VALUES ('978-8-8156-0539-3', 'Kiwi', 'http://9yDxcQjGgN.png', 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.', 4461, 'Lee Sai Wing');
INSERT INTO `book` VALUES ('978-8-8159-6245-2', 'Kiwi', 'http://Sm9YRA4bVn.png', 'Typically, it is employed as an encrypted version of Telnet. If opportunity doesn’t               ', 8632, 'Jonathan Jackson');
INSERT INTO `book` VALUES ('978-8-8193-4204-8', 'Mamgo core', 'http://6o8vlCfTOK.png', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ', 9332, 'Qian Xiuying');
INSERT INTO `book` VALUES ('978-8-8203-0172-8', 'xMapgo', 'http://lwfKhxKBt5.png', 'It provides strong authentication and secure encrypted communications between two                   ', 6449, 'Heung Ming');
INSERT INTO `book` VALUES ('978-8-8213-8621-3', 'omni-Rambutan', 'http://33osDVyX8p.png', 'I destroy my enemies when I make them my friends. In other words, Navicat provides                  ', 5659, 'Liu Yunxi');
INSERT INTO `book` VALUES ('978-8-8253-2533-9', 'Grape plus', 'http://1UIy0Imb65.png', 'Navicat authorizes you to make connection to remote servers running on different                    ', 8774, 'Fu Zhennan');
INSERT INTO `book` VALUES ('978-8-8287-3808-7', 'ambi-Apble', 'http://eS4ZBfCp41.png', 'Anyone who has never made a mistake has never tried anything new.', 8213, 'Murata Momoe');
INSERT INTO `book` VALUES ('978-8-8289-3799-1', 'Strawbirry pro', 'http://0f8EuL3AXA.png', 'If it scares you, it might be a good thing to try. SQL Editor allows you to create                  ', 616, 'Yin Jiehong');
INSERT INTO `book` VALUES ('978-8-8313-2290-4', 'ipple', 'http://PWelq0c9XE.png', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', 9809, 'Hashimoto Aoshi');
INSERT INTO `book` VALUES ('978-8-8347-3972-0', 'Cherry mini', 'http://tGKwRaxKme.png', 'I will greet this day with love in my heart. To open a query using an external editor,              ', 8928, 'Ren Ziyi');
INSERT INTO `book` VALUES ('978-8-8349-7283-8', 'Raspberry', 'http://zkvqcai7NB.png', 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that                  ', 7561, '徐杰宏');
INSERT INTO `book` VALUES ('978-8-8378-0753-4', 'iStrawberry', 'http://jHGlUUmLso.png', 'Difficult circumstances serve as a textbook of life for people.', 1750, 'Shi Jiehong');
INSERT INTO `book` VALUES ('978-8-8386-3843-4', 'rango', 'http://gG9G8g3Y5h.png', 'If the Show objects under schema in navigation pane option is checked at the Preferences            ', 1748, 'Chen Yuning');
INSERT INTO `book` VALUES ('978-8-8430-8516-8', 'Rambutan', 'http://SSo2EZD3SA.png', 'Instead of wondering when your next vacation is, maybe you should set up a life you                 ', 6293, 'George Salazar');
INSERT INTO `book` VALUES ('978-8-8431-8424-8', 'Raspbesry pi', 'http://fbwvuF3bS3.png', 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical             ', 5867, 'Brandon Watson');
INSERT INTO `book` VALUES ('978-8-8435-9260-4', 'iChewry', 'http://qxo2UJR42G.png', 'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud                  ', 3801, '魏晓明');
INSERT INTO `book` VALUES ('978-8-8454-3279-8', 'xMango', 'http://34ksuMaRlE.png', 'All the Navicat Cloud objects are located under different projects. You can share                   ', 4327, 'Yeow Wing Kuen');
INSERT INTO `book` VALUES ('978-8-8462-9264-0', 'ambi-Afple', 'http://wv4wsStHtF.png', 'If you wait, all that happens is you get older. It wasn’t raining when Noah built the ark.', 4618, 'Gu Jiehong');
INSERT INTO `book` VALUES ('978-8-8463-2868-7', 'Grape', 'http://AqXvZIO4Rl.png', 'All journeys have secret destinations of which the traveler is unaware.                             ', 3772, '邵宇宁');
INSERT INTO `book` VALUES ('978-8-8482-2501-2', 'rambutan air', 'http://FgNRSuU7lo.png', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ', 825, 'Kenneth Gardner');
INSERT INTO `book` VALUES ('978-8-8511-8586-4', 'iRambuqan', 'http://BG1OGEzgtu.png', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.', 3214, 'Ti Wing Kuen');
INSERT INTO `book` VALUES ('978-8-8519-1072-6', 'orape', 'http://Vy6ZsDLh2d.png', 'Champions keep playing until they get it right. Monitored servers include MySQL,                    ', 861, 'Catherine Marshall');
INSERT INTO `book` VALUES ('978-8-8524-4089-3', 'Rasplerry plus', 'http://SRed1PS7Kt.png', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ', 1260, 'Gong Zhennan');
INSERT INTO `book` VALUES ('978-8-8529-5179-9', 'Rambutan elite', 'http://3hF38VAtDf.png', 'Typically, it is employed as an encrypted version of Telnet. To start working with                  ', 1997, '龚璐');
INSERT INTO `book` VALUES ('978-8-8540-4697-3', 'Grlpe elite', 'http://lB9c2u4qSi.png', 'In the middle of winter I at last discovered that there was in me an invincible summer.', 6878, 'Tamura Ryota');
INSERT INTO `book` VALUES ('978-8-8543-6640-8', 'Cherry plus', 'http://e1t17A1OJg.png', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve.', 2205, 'Kaneko Mio');
INSERT INTO `book` VALUES ('978-8-8584-5130-9', 'orape', 'http://oU4JB41C3f.png', 'Difficult circumstances serve as a textbook of life for people. The Navigation pane                 ', 8839, 'Nakajima Yuna');
INSERT INTO `book` VALUES ('978-8-8601-4819-3', 'xMango', 'http://PvF7CsOsB3.png', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 6576, 'Su Zitao');
INSERT INTO `book` VALUES ('978-8-8618-3465-5', 'Ranbutan', 'http://jV5bHPOcdH.png', 'Optimism is the one quality more associated with success and happiness than any other.              ', 908, 'Zheng Yunxi');
INSERT INTO `book` VALUES ('978-8-8632-8931-4', 'Grspe', 'http://H96peVKRnL.png', 'A comfort zone is a beautiful place, but nothing ever grows there. In the Objects                   ', 3889, 'Shimada Yamato');
INSERT INTO `book` VALUES ('978-8-8675-0283-8', 'Abple elite', 'http://exhiLlhDCI.png', 'Instead of wondering when your next vacation is, maybe you should set up a life you                 ', 2818, '苏晓明');
INSERT INTO `book` VALUES ('978-8-8676-2669-3', 'Cherry mini', 'http://mVZJQMTt3k.png', 'Instead of wondering when your next vacation is, maybe you should set up a life you                 ', 51, 'Meng Xiuying');
INSERT INTO `book` VALUES ('978-8-8677-0543-1', 'Grape', 'http://TEzYmDReMm.png', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.', 1091, 'Cai Zitao');
INSERT INTO `book` VALUES ('978-8-8680-4325-2', 'zrange', 'http://RulDwIB3qe.png', 'All the Navicat Cloud objects are located under different projects. You can share                   ', 1513, '卢子韬');
INSERT INTO `book` VALUES ('978-8-8683-9037-1', 'Rgspberry', 'http://lNHsjJ4bHi.png', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', 6321, '何宇宁');
INSERT INTO `book` VALUES ('978-8-8735-6353-8', 'Pluots core', 'http://hRJ7j1AVTo.png', 'In other words, Navicat provides the ability for data in different databases and/or                 ', 3515, 'Brian Rivera');
INSERT INTO `book` VALUES ('978-8-8757-2992-9', 'lrape', 'http://vsJuj6kbzR.png', 'To open a query using an external editor, control-click it and select Open with External            ', 5405, '金秀英');
INSERT INTO `book` VALUES ('978-8-8765-6664-0', 'Rambttan core', 'http://gVenO4ntTk.png', 'The past has no power over the present moment. To get a secure connection, the first                ', 8595, 'John Rice');
INSERT INTO `book` VALUES ('978-8-8792-6601-6', 'ultra-Cherry', 'http://GCX3jn5ZcL.png', 'Sometimes you win, sometimes you learn. The Information Pane shows the detailed object              ', 1263, 'Ichikawa Mai');
INSERT INTO `book` VALUES ('978-8-8817-5098-0', 'Grape core', 'http://tdZPJH0kiV.png', 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', 7699, 'Tian Yuning');
INSERT INTO `book` VALUES ('978-8-8820-5069-8', 'Apple', 'http://tdK8FI2Bvm.png', 'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud                  ', 6625, 'Herbert Baker');
INSERT INTO `book` VALUES ('978-8-8828-5823-1', 'Cherry mini', 'http://wcKsTUd3Jk.png', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', 6764, 'Gong Jiehong');
INSERT INTO `book` VALUES ('978-8-8830-8184-5', 'Apppe pi', 'http://ZZVtvGngs8.png', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', 504, 'Zhao Rui');
INSERT INTO `book` VALUES ('978-8-8832-7464-2', 'Cherry', 'http://IpcPBCvFUG.png', 'The Main Window consists of several toolbars and panes for you to work on connections,              ', 1037, 'Tao Lu');
INSERT INTO `book` VALUES ('978-8-8859-6868-7', 'iCherry', 'http://H6dAVdybTE.png', 'The Information Pane shows the detailed object information, project activities, the                 ', 29, 'Wei Yunxi');
INSERT INTO `book` VALUES ('978-8-8860-8067-4', 'uiwi premium', 'http://Y61vC1e3R6.png', 'The first step is as good as half over. You can select any connections, objects or                  ', 304, 'Lucille Lee');
INSERT INTO `book` VALUES ('978-8-8863-5823-7', 'raspberry', 'http://jWQUeXPs0E.png', 'Champions keep playing until they get it right. To successfully establish a new connection          ', 4950, 'Yuen Wing Sze');
INSERT INTO `book` VALUES ('978-8-8888-6863-0', 'paspberry', 'http://AjJED5lvrD.png', 'Creativity is intelligence having fun. Secure Sockets Layer(SSL) is a protocol for                  ', 7646, '李宇宁');
INSERT INTO `book` VALUES ('978-8-8895-2476-6', 'sherry', 'http://6TZZ9IC9v8.png', 'It wasn’t raining when Noah built the ark. The Information Pane shows the detailed                ', 6977, 'Ishikawa Sakura');
INSERT INTO `book` VALUES ('978-8-8933-2450-0', 'grape', 'http://tCOIJXk3kR.png', 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', 1732, 'Chin Ka Ming');
INSERT INTO `book` VALUES ('978-8-8935-5741-2', 'Rambutan', 'http://lTTNXuxlF4.png', 'Navicat authorizes you to make connection to remote servers running on different                    ', 5289, 'Kwan Ka Fai');
INSERT INTO `book` VALUES ('978-8-8940-2004-2', 'Apxle pro', 'http://CynVWmZVSM.png', 'Navicat 15 has added support for the system-wide dark mode. Navicat is a multi-connections          ', 1332, 'Fung Wing Sze');
INSERT INTO `book` VALUES ('978-8-8965-5877-6', 'Strawberry', 'http://nI5d8xGB17.png', 'Navicat provides a wide range advanced features, such as compelling code editing                    ', 1169, 'Du Ziyi');
INSERT INTO `book` VALUES ('978-8-8995-7664-1', 'Apple air', 'http://QOb1C7ohIP.png', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.', 766, 'Che Fat');
INSERT INTO `book` VALUES ('978-8-9000-7077-4', 'Strawlerry', 'http://nlnbNLj3Ru.png', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', 235, 'Hung Wing Fat');
INSERT INTO `book` VALUES ('978-8-9019-7220-3', 'Rrmbutan', 'http://fv3IQLMLko.png', 'The reason why a great man is great is that he resolves to be a great man.                          ', 2781, 'Cheung Kwok Ming');
INSERT INTO `book` VALUES ('978-8-9021-0525-4', 'Cherry', 'http://qbHAPGUPta.png', 'Instead of wondering when your next vacation is, maybe you should set up a life you                 ', 4888, 'Han Xiuying');
INSERT INTO `book` VALUES ('978-8-9022-7334-2', 'riwi', 'http://PFm9tPspRX.png', 'Sometimes you win, sometimes you learn. Flexible settings enable you to set up a                    ', 9467, 'Lai Ka Keung');
INSERT INTO `book` VALUES ('978-8-9048-9572-7', 'Orange air', 'http://JaMPHzm3Gv.png', 'Optimism is the one quality more associated with success and happiness than any other.              ', 5087, 'Mak Chun Yu');
INSERT INTO `book` VALUES ('978-8-9060-9183-3', 'mrape core', 'http://9UNICp0dBV.png', 'What you get by achieving your goals is not as important as what you become by achieving your goals.', 2127, 'Maeda Sakura');
INSERT INTO `book` VALUES ('978-8-9111-6138-0', 'ambi-Stpawberry', 'http://gzRVSkqCIq.png', 'There is no way to happiness. Happiness is the way. I will greet this day with love in my heart.', 4360, 'Chung Lik Sun');
INSERT INTO `book` VALUES ('978-8-9132-3240-8', 'Apple pro', 'http://dVXRQkJvOR.png', 'Navicat authorizes you to make connection to remote servers running on different                    ', 4186, '秦秀英');
INSERT INTO `book` VALUES ('978-8-9178-3938-4', 'Raspberry mini', 'http://uxGNj5CWiE.png', 'Navicat allows you to transfer data from one database and/or schema to another with                 ', 1338, 'Cheung Wai San');
INSERT INTO `book` VALUES ('978-8-9218-7455-0', 'Apple plus', 'http://3eU6oxsd3H.png', 'What you get by achieving your goals is not as important as what you become by achieving your goals.', 731, 'Matsumoto Shino');
INSERT INTO `book` VALUES ('978-8-9227-6093-4', 'Cherry', 'http://oqqrubV3zv.png', 'Sometimes you win, sometimes you learn. You cannot save people, you can just love them.             ', 1694, 'Lam Wai Han');
INSERT INTO `book` VALUES ('978-8-9232-6805-7', 'wiwi', 'http://SOUtQEzDiP.png', 'You cannot save people, you can just love them. Export Wizard allows you to export                  ', 3279, '汤晓明');
INSERT INTO `book` VALUES ('978-8-9240-5471-5', 'ultra-Pkuots', 'http://2lCW8P2LNe.png', 'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud                  ', 7242, 'Sasaki Ayato');
INSERT INTO `book` VALUES ('978-8-9254-3778-4', 'omni-Cherqy', 'http://Nx2MXPoC2W.png', 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical             ', 4281, 'Ando Kasumi');
INSERT INTO `book` VALUES ('978-8-9274-2965-0', 'Ordnge', 'http://OkT7xem8kU.png', 'It collects process metrics such as CPU load, RAM usage, and a variety of other resources           ', 1188, 'Lam Wing Fat');
INSERT INTO `book` VALUES ('978-8-9302-5085-1', 'ambi-Kiwi', 'http://P6ShQkL3MA.png', 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that                  ', 3681, 'Fujii Ikki');
INSERT INTO `book` VALUES ('978-8-9305-6805-6', 'gtrawberry pi', 'http://ekKZgXVTW3.png', 'If the plan doesn’t work, change the plan, but never the goal.', 6803, 'Wendy Alexander');
INSERT INTO `book` VALUES ('978-8-9315-3214-2', 'Orange premium', 'http://IEVknq3ssB.png', 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that                  ', 358, 'Kojima Yuto');
INSERT INTO `book` VALUES ('978-8-9318-3008-6', 'Raspberry se', 'http://CHpknL5VCZ.png', 'The reason why a great man is great is that he resolves to be a great man.                          ', 7616, 'Shawn Morales');
INSERT INTO `book` VALUES ('978-8-9326-1095-7', 'xMango', 'http://M7hA8SmRpT.png', 'I destroy my enemies when I make them my friends. Import Wizard allows you to import                ', 2485, 'Zhao Xiaoming');
INSERT INTO `book` VALUES ('978-8-9328-6467-0', 'Kdwi elite', 'http://1l1XknYspd.png', 'What you get by achieving your goals is not as important as what you become by achieving your goals.', 282, 'Matthew Fisher');
INSERT INTO `book` VALUES ('978-8-9346-4721-7', 'Mango mini', 'http://x6q55noEog.png', 'Navicat is a multi-connections Database Administration tool allowing you to connect                 ', 2018, 'Sara Martin');
INSERT INTO `book` VALUES ('978-8-9361-2624-9', 'Pluots pi', 'http://g8lECjR08A.png', 'I destroy my enemies when I make them my friends. If your Internet Service Provider                 ', 3595, 'Edna Ramirez');
INSERT INTO `book` VALUES ('978-8-9366-5504-4', 'Strawberry mini', 'http://QUCWgtKF9K.png', 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud.              ', 7226, 'Fujita Yuto');
INSERT INTO `book` VALUES ('978-8-9381-5300-1', 'Coerry', 'http://Io9MsyiKA9.png', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 458, 'Chen Jiehong');
INSERT INTO `book` VALUES ('978-8-9391-3521-1', 'Pluots air', 'http://5oO1htRi39.png', 'If you wait, all that happens is you get older. Genius is an infinite capacity for taking pains.', 9275, 'Sato Hikaru');
INSERT INTO `book` VALUES ('978-8-9430-3019-1', 'ambi-Grape', 'http://PVBiqvtSQ1.png', 'A man’s best friends are his ten fingers. The first step is as good as half over.', 9623, 'Marilyn Ryan');
INSERT INTO `book` VALUES ('978-8-9439-0560-0', 'Kiwi plus', 'http://Io61Z7XERW.png', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ', 4784, 'Sato Mio');
INSERT INTO `book` VALUES ('978-8-9439-1537-8', 'iRaspberry', 'http://P8PHZArh5j.png', 'After comparing data, the window shows the number of records that will be inserted,                 ', 4795, 'Ying Kwok Kuen');
INSERT INTO `book` VALUES ('978-8-9476-0097-5', 'omni-Cberry', 'http://797Fd7dY3e.png', 'To successfully establish a new connection to local/remote server - no matter via                   ', 2483, 'Sean Evans');
INSERT INTO `book` VALUES ('978-8-9479-4237-7', 'Pluots elite', 'http://tQiDY2cbSC.png', 'Flexible settings enable you to set up a custom key for comparison and synchronization.', 7703, 'Li Shihan');
INSERT INTO `book` VALUES ('978-8-9499-7970-2', 'Mango air', 'http://fYskCdq0eG.png', 'To successfully establish a new connection to local/remote server - no matter via                   ', 4596, 'Nomura Tsubasa');
INSERT INTO `book` VALUES ('978-8-9509-0391-4', 'drange', 'http://ZbwQ8CmzUN.png', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', 5106, 'Matsuda Miu');
INSERT INTO `book` VALUES ('978-8-9509-2812-8', 'Oranke mini', 'http://bQms8F6oo8.png', 'It collects process metrics such as CPU load, RAM usage, and a variety of other resources           ', 347, 'Duan Lu');
INSERT INTO `book` VALUES ('978-8-9510-5478-7', 'Grale', 'http://yqYFUmUnQK.png', 'You must be the change you wish to see in the world. If your Internet Service Provider              ', 5010, 'Fujii Daisuke');
INSERT INTO `book` VALUES ('978-8-9524-8557-1', 'Orxnge', 'http://KYRWhx4IoV.png', 'If the Show objects under schema in navigation pane option is checked at the Preferences            ', 6314, 'Kikuchi Tsubasa');
INSERT INTO `book` VALUES ('978-8-9585-3772-3', 'Mango', 'http://F8dCPrPGr0.png', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.', 3096, 'Lau Tin Wing');
INSERT INTO `book` VALUES ('978-8-9642-6495-9', 'Raspberry mini', 'http://IZ7qsPc6OK.png', 'Export Wizard allows you to export data from tables, collections, views, or query                   ', 3735, '叶睿');
INSERT INTO `book` VALUES ('978-8-9686-7009-8', 'Cherry', 'http://7BX4S2fkrh.png', 'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ', 4312, 'Phillip Munoz');
INSERT INTO `book` VALUES ('978-8-9723-8747-4', 'vambutan se', 'http://Q2gByIPc3O.png', 'Such sessions are also susceptible to session hijacking, where a malicious user takes               ', 232, 'Nakano Yuto');
INSERT INTO `book` VALUES ('978-8-9729-6116-7', 'ultra-Kiwi', 'http://B1guxypv5T.png', 'I will greet this day with love in my heart. I destroy my enemies when I make them my friends.', 5131, 'Sugawara Shino');
INSERT INTO `book` VALUES ('978-8-9780-6345-3', 'Gkape', 'http://urPe5gd44f.png', 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.', 2566, 'Yung Fat');
INSERT INTO `book` VALUES ('978-8-9781-3534-8', 'uherry', 'http://jS4LTMZv29.png', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', 5401, '熊云熙');
INSERT INTO `book` VALUES ('978-8-9791-9824-7', 'Mango', 'http://i2BIRzjYiJ.png', 'Optimism is the one quality more associated with success and happiness than any other.', 4077, 'Meng Ching Wan');
INSERT INTO `book` VALUES ('978-8-9813-1210-7', 'Orange', 'http://duV0KeGksQ.png', 'Navicat provides a wide range advanced features, such as compelling code editing                    ', 795, 'Donna Walker');
INSERT INTO `book` VALUES ('978-8-9813-2115-3', 'Mingo', 'http://MrXk536HOT.png', 'Export Wizard allows you to export data from tables, collections, views, or query                   ', 8436, 'Ishikawa Aoshi');
INSERT INTO `book` VALUES ('978-8-9826-0676-3', 'Strawbexry pi', 'http://vnzrmQDUM4.png', 'The Navigation pane employs tree structure which allows you to take action upon the                 ', 4809, 'Pang Tin Wing');
INSERT INTO `book` VALUES ('978-8-9872-5600-1', 'Apple pi', 'http://qy2L1hcXzQ.png', 'Difficult circumstances serve as a textbook of life for people.', 5246, '谭子异');
INSERT INTO `book` VALUES ('978-8-9880-1700-9', 'Apple', 'http://ULg52fcXXE.png', 'A man is not old until regrets take the place of dreams. Import Wizard allows you                   ', 8833, 'Ti Wai Yee');
INSERT INTO `book` VALUES ('978-8-9895-0954-1', 'Strawberry', 'http://3W0DACsX6f.png', 'The Information Pane shows the detailed object information, project activities, the                 ', 6095, 'Wan Suk Yee');
INSERT INTO `book` VALUES ('978-8-9895-7552-9', 'Oranye premium', 'http://Du87brEw0N.png', 'Anyone who has ever made anything of importance was disciplined. In other words,                    ', 7287, 'Shao Yuning');
INSERT INTO `book` VALUES ('978-8-9901-7685-1', 'Pldots', 'http://fwNmmsNfeO.png', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.', 2758, 'Okada Ryota');
INSERT INTO `book` VALUES ('978-8-9931-5532-6', 'Raspberry air', 'http://LqauE2D0GK.png', 'The first step is as good as half over. Optimism is the one quality more associated                 ', 6632, 'Ito Kazuma');
INSERT INTO `book` VALUES ('978-8-9935-6240-5', 'Grape', 'http://0ADXtsHDhg.png', 'You cannot save people, you can just love them. It provides strong authentication                   ', 9444, 'Xiao Zitao');
INSERT INTO `book` VALUES ('978-8-9956-5831-7', 'Cherry mini', 'http://Fg6VFfqcgB.png', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ', 7707, 'Steve Crawford');
INSERT INTO `book` VALUES ('978-8-9979-6891-8', 'Grape', 'http://SUtQOMAf77.png', 'To connect to a database or schema, simply double-click it in the pane.                             ', 6994, 'Chu Ka Keung');

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '借阅号',
  `isbn` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书号',
  `reader_id` int NOT NULL COMMENT '读者号',
  `borrow_date` date NULL DEFAULT NULL COMMENT '书号',
  `return_date` date NULL DEFAULT NULL COMMENT '实际归还日期',
  `due_date` date NOT NULL COMMENT '应该归还日期',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `borrow_book_ISBN_fk`(`isbn` ASC) USING BTREE,
  INDEX `borrow_reader_id_fk`(`reader_id` ASC) USING BTREE,
  CONSTRAINT `borrow_book_ISBN_fk` FOREIGN KEY (`isbn`) REFERENCES `book` (`ISBN`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `borrow_reader_id_fk` FOREIGN KEY (`reader_id`) REFERENCES `reader` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2136866818 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '借阅表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES (-1166012415, '978-8-0194-0703-0', 9, '2024-01-15', NULL, '2024-01-15');
INSERT INTO `borrow` VALUES (-1033953279, '7-5405-1594-5', 1, '2024-05-09', NULL, '2024-06-09');
INSERT INTO `borrow` VALUES (-981463039, '978-8-0687-8315-5', 9, '2024-01-15', NULL, '2024-01-15');
INSERT INTO `borrow` VALUES (-855633919, '978-8-0010-4933-6', 9, '2024-01-15', NULL, '2024-01-15');
INSERT INTO `borrow` VALUES (-165732350, '978-7-5306-7851-0', 1, '2024-05-07', '2024-05-09', '2024-06-09');
INSERT INTO `borrow` VALUES (-52486142, '978-7-5554-1835-1', 1, '2024-05-09', NULL, '2024-06-09');
INSERT INTO `borrow` VALUES (727654401, '978-7-5125-0503-2', 1, '2024-05-04', NULL, '2024-06-09');
INSERT INTO `borrow` VALUES (931139585, '978-8-0723-5305-2', 9, '2024-01-15', NULL, '2024-01-15');
INSERT INTO `borrow` VALUES (1151279105, '978-7-121-43680-2', 1, '2024-05-09', NULL, '2024-06-09');
INSERT INTO `borrow` VALUES (1191186433, '978-8-0303-3475-2', 9, '2024-01-15', NULL, '2024-01-15');
INSERT INTO `borrow` VALUES (1262489602, '978-8-0097-3436-8', 9, '2024-01-15', NULL, '2024-01-15');

-- ----------------------------
-- Table structure for reader
-- ----------------------------
DROP TABLE IF EXISTS `reader`;
CREATE TABLE `reader`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '读者号',
  `username` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `nickname` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '昵称',
  `gender` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int NULL DEFAULT NULL COMMENT '年龄',
  `tel` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '电话',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE,
  UNIQUE INDEX `reader_pk`(`tel` ASC) USING BTREE,
  CONSTRAINT `reader_chk_1` CHECK (`gender` in (_utf8mb4'男',_utf8mb4'女')),
  CONSTRAINT `reader_chk_2` CHECK (`age` between 0 and 200)
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reader
-- ----------------------------
INSERT INTO `reader` VALUES (1, 'DuKe', '123', 'DuKe', '男', 18, '15579');
INSERT INTO `reader` VALUES (9, '321', '123', 'user', '男', 18, '25625632');

-- ----------------------------
-- View structure for borrowvo
-- ----------------------------
DROP VIEW IF EXISTS `borrowvo`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `borrowvo` AS select `b`.`id` AS `id`,`b`.`isbn` AS `isbn`,`b`.`reader_id` AS `reader_id`,`b`.`borrow_date` AS `borrow_date`,`b`.`return_date` AS `return_date`,`b`.`due_date` AS `due_date`,`book`.`title` AS `book_name`,(case when (`b`.`return_date` is null) then 0 else 1 end) AS `status` from (`borrow` `b` join `book` on((`b`.`isbn` = `book`.`ISBN`)));

SET FOREIGN_KEY_CHECKS = 1;
