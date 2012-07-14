/*
Navicat MySQL Data Transfer

Source Server         : iact
Source Server Version : 50087
Source Host           : localhost:3306
Source Database       : iact

Target Server Type    : MYSQL
Target Server Version : 50087
File Encoding         : 65001

Date: 2012-07-14 18:46:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `accountlog`
-- ----------------------------
DROP TABLE IF EXISTS `accountlog`;
CREATE TABLE `accountlog` (
  `ID` bigint(11) NOT NULL auto_increment,
  `User` bigint(11) NOT NULL,
  `OrderID` varchar(32) default NULL,
  `TransactionID` bigint(11) default NULL,
  `AddTime` datetime default NULL,
  `AlterMode` varchar(16) default NULL,
  `AlterContext` varchar(64) default NULL,
  `ExpendAmount` decimal(10,2) NOT NULL default '0.00',
  `IncomeAmount` decimal(10,2) NOT NULL default '0.00',
  `Balance` decimal(10,2) NOT NULL default '0.00',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accountlog
-- ----------------------------

-- ----------------------------
-- Table structure for `area`
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `ID` bigint(11) NOT NULL auto_increment,
  `Parent` bigint(11) default NULL,
  `Level` int(4) NOT NULL,
  `SequenceID` varchar(32) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Description` varchar(32) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3928 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('1', null, '1', '100001', '北京', '');
INSERT INTO `area` VALUES ('2', null, '1', '100002', '天津', '');
INSERT INTO `area` VALUES ('3', null, '1', '100003', '河北', '');
INSERT INTO `area` VALUES ('4', null, '1', '100004', '山西', '');
INSERT INTO `area` VALUES ('5', null, '1', '100005', '内蒙古', '');
INSERT INTO `area` VALUES ('6', null, '1', '100006', '辽宁', '');
INSERT INTO `area` VALUES ('7', null, '1', '100007', '吉林', '');
INSERT INTO `area` VALUES ('8', null, '1', '100008', '黑龙江', '');
INSERT INTO `area` VALUES ('9', null, '1', '100009', '上海', '');
INSERT INTO `area` VALUES ('10', null, '1', '100010', '江苏', '');
INSERT INTO `area` VALUES ('11', null, '1', '100011', '浙江', '');
INSERT INTO `area` VALUES ('12', null, '1', '100012', '安徽', '');
INSERT INTO `area` VALUES ('13', null, '1', '100013', '福建', '');
INSERT INTO `area` VALUES ('14', null, '1', '100014', '江西', '');
INSERT INTO `area` VALUES ('15', null, '1', '100015', '山东', '');
INSERT INTO `area` VALUES ('16', null, '1', '100016', '河南', '');
INSERT INTO `area` VALUES ('17', null, '1', '100017', '湖北', '');
INSERT INTO `area` VALUES ('18', null, '1', '100018', '湖南', '');
INSERT INTO `area` VALUES ('19', null, '1', '100019', '广东', '');
INSERT INTO `area` VALUES ('20', null, '1', '100020', '广西', '');
INSERT INTO `area` VALUES ('21', null, '1', '100021', '海南', '');
INSERT INTO `area` VALUES ('22', null, '1', '100022', '重庆', '');
INSERT INTO `area` VALUES ('23', null, '1', '100023', '四川', '');
INSERT INTO `area` VALUES ('24', null, '1', '100024', '贵州', '');
INSERT INTO `area` VALUES ('25', null, '1', '100025', '云南', '');
INSERT INTO `area` VALUES ('26', null, '1', '100026', '西藏', '');
INSERT INTO `area` VALUES ('27', null, '1', '100027', '陕西', '');
INSERT INTO `area` VALUES ('28', null, '1', '100028', '甘肃', '');
INSERT INTO `area` VALUES ('29', null, '1', '100029', '青海', '');
INSERT INTO `area` VALUES ('30', null, '1', '100030', '宁夏', '');
INSERT INTO `area` VALUES ('31', null, '1', '100031', '新疆', '');
INSERT INTO `area` VALUES ('32', null, '1', '100032', '台湾', '');
INSERT INTO `area` VALUES ('33', null, '1', '100033', '香港', '');
INSERT INTO `area` VALUES ('34', null, '1', '100034', '澳门', '');
INSERT INTO `area` VALUES ('35', '1', '2', '200001', '市辖区', '');
INSERT INTO `area` VALUES ('36', '1', '2', '200002', '县', '');
INSERT INTO `area` VALUES ('37', '2', '2', '200003', '市辖区', '');
INSERT INTO `area` VALUES ('38', '2', '2', '200004', '县', '');
INSERT INTO `area` VALUES ('39', '3', '2', '200005', '石家庄市', '');
INSERT INTO `area` VALUES ('40', '3', '2', '200006', '唐山市', '');
INSERT INTO `area` VALUES ('41', '3', '2', '200007', '秦皇岛市', '');
INSERT INTO `area` VALUES ('42', '3', '2', '200008', '邯郸市', '');
INSERT INTO `area` VALUES ('43', '3', '2', '200009', '邢台市', '');
INSERT INTO `area` VALUES ('44', '3', '2', '200010', '保定市', '');
INSERT INTO `area` VALUES ('45', '3', '2', '200011', '张家口市', '');
INSERT INTO `area` VALUES ('46', '3', '2', '200012', '承德市', '');
INSERT INTO `area` VALUES ('47', '3', '2', '200013', '沧州市', '');
INSERT INTO `area` VALUES ('48', '3', '2', '200014', '廊坊市', '');
INSERT INTO `area` VALUES ('49', '3', '2', '200015', '衡水市', '');
INSERT INTO `area` VALUES ('50', '4', '2', '200016', '太原市', '');
INSERT INTO `area` VALUES ('51', '4', '2', '200017', '大同市', '');
INSERT INTO `area` VALUES ('52', '4', '2', '200018', '阳泉市', '');
INSERT INTO `area` VALUES ('53', '4', '2', '200019', '长治市', '');
INSERT INTO `area` VALUES ('54', '4', '2', '200020', '晋城市', '');
INSERT INTO `area` VALUES ('55', '4', '2', '200021', '朔州市', '');
INSERT INTO `area` VALUES ('56', '4', '2', '200022', '晋中市', '');
INSERT INTO `area` VALUES ('57', '4', '2', '200023', '运城市', '');
INSERT INTO `area` VALUES ('58', '4', '2', '200024', '忻州市', '');
INSERT INTO `area` VALUES ('59', '4', '2', '200025', '临汾市', '');
INSERT INTO `area` VALUES ('60', '4', '2', '200026', '吕梁市', '');
INSERT INTO `area` VALUES ('61', '5', '2', '200027', '呼和浩特市', '');
INSERT INTO `area` VALUES ('62', '5', '2', '200028', '包头市', '');
INSERT INTO `area` VALUES ('63', '5', '2', '200029', '乌海市', '');
INSERT INTO `area` VALUES ('64', '5', '2', '200030', '赤峰市', '');
INSERT INTO `area` VALUES ('65', '5', '2', '200031', '通辽市', '');
INSERT INTO `area` VALUES ('66', '5', '2', '200032', '鄂尔多斯市', '');
INSERT INTO `area` VALUES ('67', '5', '2', '200033', '呼伦贝尔市', '');
INSERT INTO `area` VALUES ('68', '5', '2', '200034', '巴彦淖尔市', '');
INSERT INTO `area` VALUES ('69', '5', '2', '200035', '乌兰察布市', '');
INSERT INTO `area` VALUES ('70', '5', '2', '200036', '兴安盟', '');
INSERT INTO `area` VALUES ('71', '5', '2', '200037', '锡林郭勒盟', '');
INSERT INTO `area` VALUES ('72', '5', '2', '200038', '阿拉善盟', '');
INSERT INTO `area` VALUES ('73', '6', '2', '200039', '沈阳市', '');
INSERT INTO `area` VALUES ('74', '6', '2', '200040', '大连市', '');
INSERT INTO `area` VALUES ('75', '6', '2', '200041', '鞍山市', '');
INSERT INTO `area` VALUES ('76', '6', '2', '200042', '抚顺市', '');
INSERT INTO `area` VALUES ('77', '6', '2', '200043', '本溪市', '');
INSERT INTO `area` VALUES ('78', '6', '2', '200044', '丹东市', '');
INSERT INTO `area` VALUES ('79', '6', '2', '200045', '锦州市', '');
INSERT INTO `area` VALUES ('80', '6', '2', '200046', '营口市', '');
INSERT INTO `area` VALUES ('81', '6', '2', '200047', '阜新市', '');
INSERT INTO `area` VALUES ('82', '6', '2', '200048', '辽阳市', '');
INSERT INTO `area` VALUES ('83', '6', '2', '200049', '盘锦市', '');
INSERT INTO `area` VALUES ('84', '6', '2', '200050', '铁岭市', '');
INSERT INTO `area` VALUES ('85', '6', '2', '200051', '朝阳市', '');
INSERT INTO `area` VALUES ('86', '6', '2', '200052', '葫芦岛市', '');
INSERT INTO `area` VALUES ('87', '7', '2', '200053', '长春市', '');
INSERT INTO `area` VALUES ('88', '7', '2', '200054', '吉林市', '');
INSERT INTO `area` VALUES ('89', '7', '2', '200055', '四平市', '');
INSERT INTO `area` VALUES ('90', '7', '2', '200056', '辽源市', '');
INSERT INTO `area` VALUES ('91', '7', '2', '200057', '通化市', '');
INSERT INTO `area` VALUES ('92', '7', '2', '200058', '白山市', '');
INSERT INTO `area` VALUES ('93', '7', '2', '200059', '松原市', '');
INSERT INTO `area` VALUES ('94', '7', '2', '200060', '白城市', '');
INSERT INTO `area` VALUES ('95', '7', '2', '200061', '延边朝鲜族自治州', '');
INSERT INTO `area` VALUES ('96', '8', '2', '200062', '哈尔滨市', '');
INSERT INTO `area` VALUES ('97', '8', '2', '200063', '齐齐哈尔市', '');
INSERT INTO `area` VALUES ('98', '8', '2', '200064', '鸡西市', '');
INSERT INTO `area` VALUES ('99', '8', '2', '200065', '鹤岗市', '');
INSERT INTO `area` VALUES ('100', '8', '2', '200066', '双鸭山市', '');
INSERT INTO `area` VALUES ('101', '8', '2', '200067', '大庆市', '');
INSERT INTO `area` VALUES ('102', '8', '2', '200068', '伊春市', '');
INSERT INTO `area` VALUES ('103', '8', '2', '200069', '佳木斯市', '');
INSERT INTO `area` VALUES ('104', '8', '2', '200070', '七台河市', '');
INSERT INTO `area` VALUES ('105', '8', '2', '200071', '牡丹江市', '');
INSERT INTO `area` VALUES ('106', '8', '2', '200072', '黑河市', '');
INSERT INTO `area` VALUES ('107', '8', '2', '200073', '绥化市', '');
INSERT INTO `area` VALUES ('108', '8', '2', '200074', '大兴安岭地区', '');
INSERT INTO `area` VALUES ('109', '9', '2', '200075', '市辖区', '');
INSERT INTO `area` VALUES ('110', '9', '2', '200076', '县', '');
INSERT INTO `area` VALUES ('111', '10', '2', '200077', '南京市', '');
INSERT INTO `area` VALUES ('112', '10', '2', '200078', '无锡市', '');
INSERT INTO `area` VALUES ('113', '10', '2', '200079', '徐州市', '');
INSERT INTO `area` VALUES ('114', '10', '2', '200080', '常州市', '');
INSERT INTO `area` VALUES ('115', '10', '2', '200081', '苏州市', '');
INSERT INTO `area` VALUES ('116', '10', '2', '200082', '南通市', '');
INSERT INTO `area` VALUES ('117', '10', '2', '200083', '连云港市', '');
INSERT INTO `area` VALUES ('118', '10', '2', '200084', '淮安市', '');
INSERT INTO `area` VALUES ('119', '10', '2', '200085', '盐城市', '');
INSERT INTO `area` VALUES ('120', '10', '2', '200086', '扬州市', '');
INSERT INTO `area` VALUES ('121', '10', '2', '200087', '镇江市', '');
INSERT INTO `area` VALUES ('122', '10', '2', '200088', '泰州市', '');
INSERT INTO `area` VALUES ('123', '10', '2', '200089', '宿迁市', '');
INSERT INTO `area` VALUES ('124', '11', '2', '200090', '杭州市', '');
INSERT INTO `area` VALUES ('125', '11', '2', '200091', '宁波市', '');
INSERT INTO `area` VALUES ('126', '11', '2', '200092', '温州市', '');
INSERT INTO `area` VALUES ('127', '11', '2', '200093', '嘉兴市', '');
INSERT INTO `area` VALUES ('128', '11', '2', '200094', '湖州市', '');
INSERT INTO `area` VALUES ('129', '11', '2', '200095', '绍兴市', '');
INSERT INTO `area` VALUES ('130', '11', '2', '200096', '金华市', '');
INSERT INTO `area` VALUES ('131', '11', '2', '200097', '衢州市', '');
INSERT INTO `area` VALUES ('132', '11', '2', '200098', '舟山市', '');
INSERT INTO `area` VALUES ('133', '11', '2', '200099', '台州市', '');
INSERT INTO `area` VALUES ('134', '11', '2', '200100', '丽水市', '');
INSERT INTO `area` VALUES ('135', '12', '2', '200101', '合肥市', '');
INSERT INTO `area` VALUES ('136', '12', '2', '200102', '芜湖市', '');
INSERT INTO `area` VALUES ('137', '12', '2', '200103', '蚌埠市', '');
INSERT INTO `area` VALUES ('138', '12', '2', '200104', '淮南市', '');
INSERT INTO `area` VALUES ('139', '12', '2', '200105', '马鞍山市', '');
INSERT INTO `area` VALUES ('140', '12', '2', '200106', '淮北市', '');
INSERT INTO `area` VALUES ('141', '12', '2', '200107', '铜陵市', '');
INSERT INTO `area` VALUES ('142', '12', '2', '200108', '安庆市', '');
INSERT INTO `area` VALUES ('143', '12', '2', '200109', '黄山市', '');
INSERT INTO `area` VALUES ('144', '12', '2', '200110', '滁州市', '');
INSERT INTO `area` VALUES ('145', '12', '2', '200111', '阜阳市', '');
INSERT INTO `area` VALUES ('146', '12', '2', '200112', '宿州市', '');
INSERT INTO `area` VALUES ('147', '12', '2', '200113', '巢湖市', '');
INSERT INTO `area` VALUES ('148', '12', '2', '200114', '六安市', '');
INSERT INTO `area` VALUES ('149', '12', '2', '200115', '亳州市', '');
INSERT INTO `area` VALUES ('150', '12', '2', '200116', '池州市', '');
INSERT INTO `area` VALUES ('151', '12', '2', '200117', '宣城市', '');
INSERT INTO `area` VALUES ('152', '13', '2', '200118', '福州市', '');
INSERT INTO `area` VALUES ('153', '13', '2', '200119', '厦门市', '');
INSERT INTO `area` VALUES ('154', '13', '2', '200120', '莆田市', '');
INSERT INTO `area` VALUES ('155', '13', '2', '200121', '三明市', '');
INSERT INTO `area` VALUES ('156', '13', '2', '200122', '泉州市', '');
INSERT INTO `area` VALUES ('157', '13', '2', '200123', '漳州市', '');
INSERT INTO `area` VALUES ('158', '13', '2', '200124', '南平市', '');
INSERT INTO `area` VALUES ('159', '13', '2', '200125', '龙岩市', '');
INSERT INTO `area` VALUES ('160', '13', '2', '200126', '宁德市', '');
INSERT INTO `area` VALUES ('161', '14', '2', '200127', '南昌市', '');
INSERT INTO `area` VALUES ('162', '14', '2', '200128', '景德镇市', '');
INSERT INTO `area` VALUES ('163', '14', '2', '200129', '萍乡市', '');
INSERT INTO `area` VALUES ('164', '14', '2', '200130', '九江市', '');
INSERT INTO `area` VALUES ('165', '14', '2', '200131', '新余市', '');
INSERT INTO `area` VALUES ('166', '14', '2', '200132', '鹰潭市', '');
INSERT INTO `area` VALUES ('167', '14', '2', '200133', '赣州市', '');
INSERT INTO `area` VALUES ('168', '14', '2', '200134', '吉安市', '');
INSERT INTO `area` VALUES ('169', '14', '2', '200135', '宜春市', '');
INSERT INTO `area` VALUES ('170', '14', '2', '200136', '抚州市', '');
INSERT INTO `area` VALUES ('171', '14', '2', '200137', '上饶市', '');
INSERT INTO `area` VALUES ('172', '15', '2', '200138', '济南市', '');
INSERT INTO `area` VALUES ('173', '15', '2', '200139', '青岛市', '');
INSERT INTO `area` VALUES ('174', '15', '2', '200140', '淄博市', '');
INSERT INTO `area` VALUES ('175', '15', '2', '200141', '枣庄市', '');
INSERT INTO `area` VALUES ('176', '15', '2', '200142', '东营市', '');
INSERT INTO `area` VALUES ('177', '15', '2', '200143', '烟台市', '');
INSERT INTO `area` VALUES ('178', '15', '2', '200144', '潍坊市', '');
INSERT INTO `area` VALUES ('179', '15', '2', '200145', '济宁市', '');
INSERT INTO `area` VALUES ('180', '15', '2', '200146', '泰安市', '');
INSERT INTO `area` VALUES ('181', '15', '2', '200147', '威海市', '');
INSERT INTO `area` VALUES ('182', '15', '2', '200148', '日照市', '');
INSERT INTO `area` VALUES ('183', '15', '2', '200149', '莱芜市', '');
INSERT INTO `area` VALUES ('184', '15', '2', '200150', '临沂市', '');
INSERT INTO `area` VALUES ('185', '15', '2', '200151', '德州市', '');
INSERT INTO `area` VALUES ('186', '15', '2', '200152', '聊城市', '');
INSERT INTO `area` VALUES ('187', '15', '2', '200153', '滨州市', '');
INSERT INTO `area` VALUES ('188', '15', '2', '200154', '荷泽市', '');
INSERT INTO `area` VALUES ('189', '16', '2', '200155', '郑州市', '');
INSERT INTO `area` VALUES ('190', '16', '2', '200156', '开封市', '');
INSERT INTO `area` VALUES ('191', '16', '2', '200157', '洛阳市', '');
INSERT INTO `area` VALUES ('192', '16', '2', '200158', '平顶山市', '');
INSERT INTO `area` VALUES ('193', '16', '2', '200159', '安阳市', '');
INSERT INTO `area` VALUES ('194', '16', '2', '200160', '鹤壁市', '');
INSERT INTO `area` VALUES ('195', '16', '2', '200161', '新乡市', '');
INSERT INTO `area` VALUES ('196', '16', '2', '200162', '焦作市', '');
INSERT INTO `area` VALUES ('197', '16', '2', '200163', '濮阳市', '');
INSERT INTO `area` VALUES ('198', '16', '2', '200164', '许昌市', '');
INSERT INTO `area` VALUES ('199', '16', '2', '200165', '漯河市', '');
INSERT INTO `area` VALUES ('200', '16', '2', '200166', '三门峡市', '');
INSERT INTO `area` VALUES ('201', '16', '2', '200167', '南阳市', '');
INSERT INTO `area` VALUES ('202', '16', '2', '200168', '商丘市', '');
INSERT INTO `area` VALUES ('203', '16', '2', '200169', '信阳市', '');
INSERT INTO `area` VALUES ('204', '16', '2', '200170', '周口市', '');
INSERT INTO `area` VALUES ('205', '16', '2', '200171', '驻马店市', '');
INSERT INTO `area` VALUES ('206', '17', '2', '200172', '武汉市', '');
INSERT INTO `area` VALUES ('207', '17', '2', '200173', '黄石市', '');
INSERT INTO `area` VALUES ('208', '17', '2', '200174', '十堰市', '');
INSERT INTO `area` VALUES ('209', '17', '2', '200175', '宜昌市', '');
INSERT INTO `area` VALUES ('210', '17', '2', '200176', '襄樊市', '');
INSERT INTO `area` VALUES ('211', '17', '2', '200177', '鄂州市', '');
INSERT INTO `area` VALUES ('212', '17', '2', '200178', '荆门市', '');
INSERT INTO `area` VALUES ('213', '17', '2', '200179', '孝感市', '');
INSERT INTO `area` VALUES ('214', '17', '2', '200180', '荆州市', '');
INSERT INTO `area` VALUES ('215', '17', '2', '200181', '黄冈市', '');
INSERT INTO `area` VALUES ('216', '17', '2', '200182', '咸宁市', '');
INSERT INTO `area` VALUES ('217', '17', '2', '200183', '随州市', '');
INSERT INTO `area` VALUES ('218', '17', '2', '200184', '恩施土家族苗族自治州', '');
INSERT INTO `area` VALUES ('219', '17', '2', '200185', '省直辖行政单位', '');
INSERT INTO `area` VALUES ('220', '18', '2', '200186', '长沙市', '');
INSERT INTO `area` VALUES ('221', '18', '2', '200187', '株洲市', '');
INSERT INTO `area` VALUES ('222', '18', '2', '200188', '湘潭市', '');
INSERT INTO `area` VALUES ('223', '18', '2', '200189', '衡阳市', '');
INSERT INTO `area` VALUES ('224', '18', '2', '200190', '邵阳市', '');
INSERT INTO `area` VALUES ('225', '18', '2', '200191', '岳阳市', '');
INSERT INTO `area` VALUES ('226', '18', '2', '200192', '常德市', '');
INSERT INTO `area` VALUES ('227', '18', '2', '200193', '张家界市', '');
INSERT INTO `area` VALUES ('228', '18', '2', '200194', '益阳市', '');
INSERT INTO `area` VALUES ('229', '18', '2', '200195', '郴州市', '');
INSERT INTO `area` VALUES ('230', '18', '2', '200196', '永州市', '');
INSERT INTO `area` VALUES ('231', '18', '2', '200197', '怀化市', '');
INSERT INTO `area` VALUES ('232', '18', '2', '200198', '娄底市', '');
INSERT INTO `area` VALUES ('233', '18', '2', '200199', '湘西土家族苗族自治州', '');
INSERT INTO `area` VALUES ('234', '19', '2', '200200', '广州市', '');
INSERT INTO `area` VALUES ('235', '19', '2', '200201', '韶关市', '');
INSERT INTO `area` VALUES ('236', '19', '2', '200202', '深圳市', '');
INSERT INTO `area` VALUES ('237', '19', '2', '200203', '珠海市', '');
INSERT INTO `area` VALUES ('238', '19', '2', '200204', '汕头市', '');
INSERT INTO `area` VALUES ('239', '19', '2', '200205', '佛山市', '');
INSERT INTO `area` VALUES ('240', '19', '2', '200206', '江门市', '');
INSERT INTO `area` VALUES ('241', '19', '2', '200207', '湛江市', '');
INSERT INTO `area` VALUES ('242', '19', '2', '200208', '茂名市', '');
INSERT INTO `area` VALUES ('243', '19', '2', '200209', '肇庆市', '');
INSERT INTO `area` VALUES ('244', '19', '2', '200210', '惠州市', '');
INSERT INTO `area` VALUES ('245', '19', '2', '200211', '梅州市', '');
INSERT INTO `area` VALUES ('246', '19', '2', '200212', '汕尾市', '');
INSERT INTO `area` VALUES ('247', '19', '2', '200213', '河源市', '');
INSERT INTO `area` VALUES ('248', '19', '2', '200214', '阳江市', '');
INSERT INTO `area` VALUES ('249', '19', '2', '200215', '清远市', '');
INSERT INTO `area` VALUES ('250', '19', '2', '200216', '东莞市', '');
INSERT INTO `area` VALUES ('251', '19', '2', '200217', '中山市', '');
INSERT INTO `area` VALUES ('252', '19', '2', '200218', '潮州市', '');
INSERT INTO `area` VALUES ('253', '19', '2', '200219', '揭阳市', '');
INSERT INTO `area` VALUES ('254', '19', '2', '200220', '云浮市', '');
INSERT INTO `area` VALUES ('255', '20', '2', '200221', '南宁市', '');
INSERT INTO `area` VALUES ('256', '20', '2', '200222', '柳州市', '');
INSERT INTO `area` VALUES ('257', '20', '2', '200223', '桂林市', '');
INSERT INTO `area` VALUES ('258', '20', '2', '200224', '梧州市', '');
INSERT INTO `area` VALUES ('259', '20', '2', '200225', '北海市', '');
INSERT INTO `area` VALUES ('260', '20', '2', '200226', '防城港市', '');
INSERT INTO `area` VALUES ('261', '20', '2', '200227', '钦州市', '');
INSERT INTO `area` VALUES ('262', '20', '2', '200228', '贵港市', '');
INSERT INTO `area` VALUES ('263', '20', '2', '200229', '玉林市', '');
INSERT INTO `area` VALUES ('264', '20', '2', '200230', '百色市', '');
INSERT INTO `area` VALUES ('265', '20', '2', '200231', '贺州市', '');
INSERT INTO `area` VALUES ('266', '20', '2', '200232', '河池市', '');
INSERT INTO `area` VALUES ('267', '20', '2', '200233', '来宾市', '');
INSERT INTO `area` VALUES ('268', '20', '2', '200234', '崇左市', '');
INSERT INTO `area` VALUES ('269', '21', '2', '200235', '海口市', '');
INSERT INTO `area` VALUES ('270', '21', '2', '200236', '三亚市', '');
INSERT INTO `area` VALUES ('271', '21', '2', '200237', '省直辖县级行政单位', '');
INSERT INTO `area` VALUES ('272', '22', '2', '200238', '市辖区', '');
INSERT INTO `area` VALUES ('273', '22', '2', '200239', '县', '');
INSERT INTO `area` VALUES ('274', '22', '2', '200240', '市', '');
INSERT INTO `area` VALUES ('275', '23', '2', '200241', '成都市', '');
INSERT INTO `area` VALUES ('276', '23', '2', '200242', '自贡市', '');
INSERT INTO `area` VALUES ('277', '23', '2', '200243', '攀枝花市', '');
INSERT INTO `area` VALUES ('278', '23', '2', '200244', '泸州市', '');
INSERT INTO `area` VALUES ('279', '23', '2', '200245', '德阳市', '');
INSERT INTO `area` VALUES ('280', '23', '2', '200246', '绵阳市', '');
INSERT INTO `area` VALUES ('281', '23', '2', '200247', '广元市', '');
INSERT INTO `area` VALUES ('282', '23', '2', '200248', '遂宁市', '');
INSERT INTO `area` VALUES ('283', '23', '2', '200249', '内江市', '');
INSERT INTO `area` VALUES ('284', '23', '2', '200250', '乐山市', '');
INSERT INTO `area` VALUES ('285', '23', '2', '200251', '南充市', '');
INSERT INTO `area` VALUES ('286', '23', '2', '200252', '眉山市', '');
INSERT INTO `area` VALUES ('287', '23', '2', '200253', '宜宾市', '');
INSERT INTO `area` VALUES ('288', '23', '2', '200254', '广安市', '');
INSERT INTO `area` VALUES ('289', '23', '2', '200255', '达州市', '');
INSERT INTO `area` VALUES ('290', '23', '2', '200256', '雅安市', '');
INSERT INTO `area` VALUES ('291', '23', '2', '200257', '巴中市', '');
INSERT INTO `area` VALUES ('292', '23', '2', '200258', '资阳市', '');
INSERT INTO `area` VALUES ('293', '23', '2', '200259', '阿坝藏族羌族自治州', '');
INSERT INTO `area` VALUES ('294', '23', '2', '200260', '甘孜藏族自治州', '');
INSERT INTO `area` VALUES ('295', '23', '2', '200261', '凉山彝族自治州', '');
INSERT INTO `area` VALUES ('296', '24', '2', '200262', '贵阳市', '');
INSERT INTO `area` VALUES ('297', '24', '2', '200263', '六盘水市', '');
INSERT INTO `area` VALUES ('298', '24', '2', '200264', '遵义市', '');
INSERT INTO `area` VALUES ('299', '24', '2', '200265', '安顺市', '');
INSERT INTO `area` VALUES ('300', '24', '2', '200266', '铜仁地区', '');
INSERT INTO `area` VALUES ('301', '24', '2', '200267', '黔西南布依族苗族自治州', '');
INSERT INTO `area` VALUES ('302', '24', '2', '200268', '毕节地区', '');
INSERT INTO `area` VALUES ('303', '24', '2', '200269', '黔东南苗族侗族自治州', '');
INSERT INTO `area` VALUES ('304', '24', '2', '200270', '黔南布依族苗族自治州', '');
INSERT INTO `area` VALUES ('305', '25', '2', '200271', '昆明市', '');
INSERT INTO `area` VALUES ('306', '25', '2', '200272', '曲靖市', '');
INSERT INTO `area` VALUES ('307', '25', '2', '200273', '玉溪市', '');
INSERT INTO `area` VALUES ('308', '25', '2', '200274', '保山市', '');
INSERT INTO `area` VALUES ('309', '25', '2', '200275', '昭通市', '');
INSERT INTO `area` VALUES ('310', '25', '2', '200276', '丽江市', '');
INSERT INTO `area` VALUES ('311', '25', '2', '200277', '思茅市', '');
INSERT INTO `area` VALUES ('312', '25', '2', '200278', '临沧市', '');
INSERT INTO `area` VALUES ('313', '25', '2', '200279', '楚雄彝族自治州', '');
INSERT INTO `area` VALUES ('314', '25', '2', '200280', '红河哈尼族彝族自治州', '');
INSERT INTO `area` VALUES ('315', '25', '2', '200281', '文山壮族苗族自治州', '');
INSERT INTO `area` VALUES ('316', '25', '2', '200282', '西双版纳傣族自治州', '');
INSERT INTO `area` VALUES ('317', '25', '2', '200283', '大理白族自治州', '');
INSERT INTO `area` VALUES ('318', '25', '2', '200284', '德宏傣族景颇族自治州', '');
INSERT INTO `area` VALUES ('319', '25', '2', '200285', '怒江傈僳族自治州', '');
INSERT INTO `area` VALUES ('320', '25', '2', '200286', '迪庆藏族自治州', '');
INSERT INTO `area` VALUES ('321', '26', '2', '200287', '拉萨市', '');
INSERT INTO `area` VALUES ('322', '26', '2', '200288', '昌都地区', '');
INSERT INTO `area` VALUES ('323', '26', '2', '200289', '山南地区', '');
INSERT INTO `area` VALUES ('324', '26', '2', '200290', '日喀则地区', '');
INSERT INTO `area` VALUES ('325', '26', '2', '200291', '那曲地区', '');
INSERT INTO `area` VALUES ('326', '26', '2', '200292', '阿里地区', '');
INSERT INTO `area` VALUES ('327', '26', '2', '200293', '林芝地区', '');
INSERT INTO `area` VALUES ('328', '27', '2', '200294', '西安市', '');
INSERT INTO `area` VALUES ('329', '27', '2', '200295', '铜川市', '');
INSERT INTO `area` VALUES ('330', '27', '2', '200296', '宝鸡市', '');
INSERT INTO `area` VALUES ('331', '27', '2', '200297', '咸阳市', '');
INSERT INTO `area` VALUES ('332', '27', '2', '200298', '渭南市', '');
INSERT INTO `area` VALUES ('333', '27', '2', '200299', '延安市', '');
INSERT INTO `area` VALUES ('334', '27', '2', '200300', '汉中市', '');
INSERT INTO `area` VALUES ('335', '27', '2', '200301', '榆林市', '');
INSERT INTO `area` VALUES ('336', '27', '2', '200302', '安康市', '');
INSERT INTO `area` VALUES ('337', '27', '2', '200303', '商洛市', '');
INSERT INTO `area` VALUES ('338', '28', '2', '200304', '兰州市', '');
INSERT INTO `area` VALUES ('339', '28', '2', '200305', '嘉峪关市', '');
INSERT INTO `area` VALUES ('340', '28', '2', '200306', '金昌市', '');
INSERT INTO `area` VALUES ('341', '28', '2', '200307', '白银市', '');
INSERT INTO `area` VALUES ('342', '28', '2', '200308', '天水市', '');
INSERT INTO `area` VALUES ('343', '28', '2', '200309', '武威市', '');
INSERT INTO `area` VALUES ('344', '28', '2', '200310', '张掖市', '');
INSERT INTO `area` VALUES ('345', '28', '2', '200311', '平凉市', '');
INSERT INTO `area` VALUES ('346', '28', '2', '200312', '酒泉市', '');
INSERT INTO `area` VALUES ('347', '28', '2', '200313', '庆阳市', '');
INSERT INTO `area` VALUES ('348', '28', '2', '200314', '定西市', '');
INSERT INTO `area` VALUES ('349', '28', '2', '200315', '陇南市', '');
INSERT INTO `area` VALUES ('350', '28', '2', '200316', '临夏回族自治州', '');
INSERT INTO `area` VALUES ('351', '28', '2', '200317', '甘南藏族自治州', '');
INSERT INTO `area` VALUES ('352', '29', '2', '200318', '西宁市', '');
INSERT INTO `area` VALUES ('353', '29', '2', '200319', '海东地区', '');
INSERT INTO `area` VALUES ('354', '29', '2', '200320', '海北藏族自治州', '');
INSERT INTO `area` VALUES ('355', '29', '2', '200321', '黄南藏族自治州', '');
INSERT INTO `area` VALUES ('356', '29', '2', '200322', '海南藏族自治州', '');
INSERT INTO `area` VALUES ('357', '29', '2', '200323', '果洛藏族自治州', '');
INSERT INTO `area` VALUES ('358', '29', '2', '200324', '玉树藏族自治州', '');
INSERT INTO `area` VALUES ('359', '29', '2', '200325', '海西蒙古族藏族自治州', '');
INSERT INTO `area` VALUES ('360', '30', '2', '200326', '银川市', '');
INSERT INTO `area` VALUES ('361', '30', '2', '200327', '石嘴山市', '');
INSERT INTO `area` VALUES ('362', '30', '2', '200328', '吴忠市', '');
INSERT INTO `area` VALUES ('363', '30', '2', '200329', '固原市', '');
INSERT INTO `area` VALUES ('364', '30', '2', '200330', '中卫市', '');
INSERT INTO `area` VALUES ('365', '31', '2', '200331', '乌鲁木齐市', '');
INSERT INTO `area` VALUES ('366', '31', '2', '200332', '克拉玛依市', '');
INSERT INTO `area` VALUES ('367', '31', '2', '200333', '吐鲁番地区', '');
INSERT INTO `area` VALUES ('368', '31', '2', '200334', '哈密地区', '');
INSERT INTO `area` VALUES ('369', '31', '2', '200335', '昌吉回族自治州', '');
INSERT INTO `area` VALUES ('370', '31', '2', '200336', '博尔塔拉蒙古自治州', '');
INSERT INTO `area` VALUES ('371', '31', '2', '200337', '巴音郭楞蒙古自治州', '');
INSERT INTO `area` VALUES ('372', '31', '2', '200338', '阿克苏地区', '');
INSERT INTO `area` VALUES ('373', '31', '2', '200339', '克孜勒苏柯尔克孜自治州', '');
INSERT INTO `area` VALUES ('374', '31', '2', '200340', '喀什地区', '');
INSERT INTO `area` VALUES ('375', '31', '2', '200341', '和田地区', '');
INSERT INTO `area` VALUES ('376', '31', '2', '200342', '伊犁哈萨克自治州', '');
INSERT INTO `area` VALUES ('377', '31', '2', '200343', '塔城地区', '');
INSERT INTO `area` VALUES ('378', '31', '2', '200344', '阿勒泰地区', '');
INSERT INTO `area` VALUES ('379', '31', '2', '200345', '省直辖行政单位', '');
INSERT INTO `area` VALUES ('380', '33', '2', '200346', '香港', '');
INSERT INTO `area` VALUES ('381', '34', '2', '200347', '澳门', '');
INSERT INTO `area` VALUES ('382', '32', '2', '200348', '台北', '');
INSERT INTO `area` VALUES ('383', '32', '2', '200349', '高雄', '');
INSERT INTO `area` VALUES ('384', '32', '2', '200350', '基隆', '');
INSERT INTO `area` VALUES ('385', '32', '2', '200351', '台中', '');
INSERT INTO `area` VALUES ('386', '32', '2', '200352', '台南', '');
INSERT INTO `area` VALUES ('387', '32', '2', '200353', '新竹', '');
INSERT INTO `area` VALUES ('388', '32', '2', '200354', '嘉义', '');
INSERT INTO `area` VALUES ('389', '32', '2', '200355', '台北县', '');
INSERT INTO `area` VALUES ('390', '32', '2', '200356', '宜兰县', '');
INSERT INTO `area` VALUES ('391', '32', '2', '200357', '桃园县', '');
INSERT INTO `area` VALUES ('392', '32', '2', '200358', '新竹县', '');
INSERT INTO `area` VALUES ('393', '32', '2', '200359', '苗栗县', '');
INSERT INTO `area` VALUES ('394', '32', '2', '200360', '台中县', '');
INSERT INTO `area` VALUES ('395', '32', '2', '200361', '彰化县', '');
INSERT INTO `area` VALUES ('396', '32', '2', '200362', '南投县', '');
INSERT INTO `area` VALUES ('397', '32', '2', '200363', '云林县', '');
INSERT INTO `area` VALUES ('398', '32', '2', '200364', '嘉义县', '');
INSERT INTO `area` VALUES ('399', '32', '2', '200365', '台南县', '');
INSERT INTO `area` VALUES ('400', '32', '2', '200366', '高雄县', '');
INSERT INTO `area` VALUES ('401', '32', '2', '200367', '屏东县', '');
INSERT INTO `area` VALUES ('402', '32', '2', '200368', '台东县', '');
INSERT INTO `area` VALUES ('403', '32', '2', '200369', '花莲县', '');
INSERT INTO `area` VALUES ('404', '32', '2', '200370', '澎湖县', '');
INSERT INTO `area` VALUES ('405', '35', '3', '300001', '东城区', '');
INSERT INTO `area` VALUES ('406', '35', '3', '300002', '西城区', '');
INSERT INTO `area` VALUES ('407', '35', '3', '300003', '崇文区', '');
INSERT INTO `area` VALUES ('408', '35', '3', '300004', '宣武区', '');
INSERT INTO `area` VALUES ('409', '35', '3', '300005', '朝阳区', '');
INSERT INTO `area` VALUES ('410', '35', '3', '300006', '丰台区', '');
INSERT INTO `area` VALUES ('411', '35', '3', '300007', '石景山区', '');
INSERT INTO `area` VALUES ('412', '35', '3', '300008', '海淀区', '');
INSERT INTO `area` VALUES ('413', '35', '3', '300009', '门头沟区', '');
INSERT INTO `area` VALUES ('414', '35', '3', '300010', '房山区', '');
INSERT INTO `area` VALUES ('415', '35', '3', '300011', '通州区', '');
INSERT INTO `area` VALUES ('416', '35', '3', '300012', '顺义区', '');
INSERT INTO `area` VALUES ('417', '35', '3', '300013', '昌平区', '');
INSERT INTO `area` VALUES ('418', '35', '3', '300014', '大兴区', '');
INSERT INTO `area` VALUES ('419', '35', '3', '300015', '怀柔区', '');
INSERT INTO `area` VALUES ('420', '35', '3', '300016', '平谷区', '');
INSERT INTO `area` VALUES ('421', '36', '3', '300017', '密云县', '');
INSERT INTO `area` VALUES ('422', '36', '3', '300018', '延庆县', '');
INSERT INTO `area` VALUES ('423', '37', '3', '300019', '和平区', '');
INSERT INTO `area` VALUES ('424', '37', '3', '300020', '河东区', '');
INSERT INTO `area` VALUES ('425', '37', '3', '300021', '河西区', '');
INSERT INTO `area` VALUES ('426', '37', '3', '300022', '南开区', '');
INSERT INTO `area` VALUES ('427', '37', '3', '300023', '河北区', '');
INSERT INTO `area` VALUES ('428', '37', '3', '300024', '红桥区', '');
INSERT INTO `area` VALUES ('429', '37', '3', '300025', '塘沽区', '');
INSERT INTO `area` VALUES ('430', '37', '3', '300026', '汉沽区', '');
INSERT INTO `area` VALUES ('431', '37', '3', '300027', '大港区', '');
INSERT INTO `area` VALUES ('432', '37', '3', '300028', '东丽区', '');
INSERT INTO `area` VALUES ('433', '37', '3', '300029', '西青区', '');
INSERT INTO `area` VALUES ('434', '37', '3', '300030', '津南区', '');
INSERT INTO `area` VALUES ('435', '37', '3', '300031', '北辰区', '');
INSERT INTO `area` VALUES ('436', '37', '3', '300032', '武清区', '');
INSERT INTO `area` VALUES ('437', '37', '3', '300033', '宝坻区', '');
INSERT INTO `area` VALUES ('438', '38', '3', '300034', '宁河县', '');
INSERT INTO `area` VALUES ('439', '38', '3', '300035', '静海县', '');
INSERT INTO `area` VALUES ('440', '38', '3', '300036', '蓟　县', '');
INSERT INTO `area` VALUES ('441', '39', '3', '300037', '市辖区', '');
INSERT INTO `area` VALUES ('442', '39', '3', '300038', '长安区', '');
INSERT INTO `area` VALUES ('443', '39', '3', '300039', '桥东区', '');
INSERT INTO `area` VALUES ('444', '39', '3', '300040', '桥西区', '');
INSERT INTO `area` VALUES ('445', '39', '3', '300041', '新华区', '');
INSERT INTO `area` VALUES ('446', '39', '3', '300042', '井陉矿区', '');
INSERT INTO `area` VALUES ('447', '39', '3', '300043', '裕华区', '');
INSERT INTO `area` VALUES ('448', '39', '3', '300044', '井陉县', '');
INSERT INTO `area` VALUES ('449', '39', '3', '300045', '正定县', '');
INSERT INTO `area` VALUES ('450', '39', '3', '300046', '栾城县', '');
INSERT INTO `area` VALUES ('451', '39', '3', '300047', '行唐县', '');
INSERT INTO `area` VALUES ('452', '39', '3', '300048', '灵寿县', '');
INSERT INTO `area` VALUES ('453', '39', '3', '300049', '高邑县', '');
INSERT INTO `area` VALUES ('454', '39', '3', '300050', '深泽县', '');
INSERT INTO `area` VALUES ('455', '39', '3', '300051', '赞皇县', '');
INSERT INTO `area` VALUES ('456', '39', '3', '300052', '无极县', '');
INSERT INTO `area` VALUES ('457', '39', '3', '300053', '平山县', '');
INSERT INTO `area` VALUES ('458', '39', '3', '300054', '元氏县', '');
INSERT INTO `area` VALUES ('459', '39', '3', '300055', '赵　县', '');
INSERT INTO `area` VALUES ('460', '39', '3', '300056', '辛集市', '');
INSERT INTO `area` VALUES ('461', '39', '3', '300057', '藁城市', '');
INSERT INTO `area` VALUES ('462', '39', '3', '300058', '晋州市', '');
INSERT INTO `area` VALUES ('463', '39', '3', '300059', '新乐市', '');
INSERT INTO `area` VALUES ('464', '39', '3', '300060', '鹿泉市', '');
INSERT INTO `area` VALUES ('465', '40', '3', '300061', '市辖区', '');
INSERT INTO `area` VALUES ('466', '40', '3', '300062', '路南区', '');
INSERT INTO `area` VALUES ('467', '40', '3', '300063', '路北区', '');
INSERT INTO `area` VALUES ('468', '40', '3', '300064', '古冶区', '');
INSERT INTO `area` VALUES ('469', '40', '3', '300065', '开平区', '');
INSERT INTO `area` VALUES ('470', '40', '3', '300066', '丰南区', '');
INSERT INTO `area` VALUES ('471', '40', '3', '300067', '丰润区', '');
INSERT INTO `area` VALUES ('472', '40', '3', '300068', '滦　县', '');
INSERT INTO `area` VALUES ('473', '40', '3', '300069', '滦南县', '');
INSERT INTO `area` VALUES ('474', '40', '3', '300070', '乐亭县', '');
INSERT INTO `area` VALUES ('475', '40', '3', '300071', '迁西县', '');
INSERT INTO `area` VALUES ('476', '40', '3', '300072', '玉田县', '');
INSERT INTO `area` VALUES ('477', '40', '3', '300073', '唐海县', '');
INSERT INTO `area` VALUES ('478', '40', '3', '300074', '遵化市', '');
INSERT INTO `area` VALUES ('479', '40', '3', '300075', '迁安市', '');
INSERT INTO `area` VALUES ('480', '41', '3', '300076', '市辖区', '');
INSERT INTO `area` VALUES ('481', '41', '3', '300077', '海港区', '');
INSERT INTO `area` VALUES ('482', '41', '3', '300078', '山海关区', '');
INSERT INTO `area` VALUES ('483', '41', '3', '300079', '北戴河区', '');
INSERT INTO `area` VALUES ('484', '41', '3', '300080', '青龙满族自治县', '');
INSERT INTO `area` VALUES ('485', '41', '3', '300081', '昌黎县', '');
INSERT INTO `area` VALUES ('486', '41', '3', '300082', '抚宁县', '');
INSERT INTO `area` VALUES ('487', '41', '3', '300083', '卢龙县', '');
INSERT INTO `area` VALUES ('488', '42', '3', '300084', '市辖区', '');
INSERT INTO `area` VALUES ('489', '42', '3', '300085', '邯山区', '');
INSERT INTO `area` VALUES ('490', '42', '3', '300086', '丛台区', '');
INSERT INTO `area` VALUES ('491', '42', '3', '300087', '复兴区', '');
INSERT INTO `area` VALUES ('492', '42', '3', '300088', '峰峰矿区', '');
INSERT INTO `area` VALUES ('493', '42', '3', '300089', '邯郸县', '');
INSERT INTO `area` VALUES ('494', '42', '3', '300090', '临漳县', '');
INSERT INTO `area` VALUES ('495', '42', '3', '300091', '成安县', '');
INSERT INTO `area` VALUES ('496', '42', '3', '300092', '大名县', '');
INSERT INTO `area` VALUES ('497', '42', '3', '300093', '涉　县', '');
INSERT INTO `area` VALUES ('498', '42', '3', '300094', '磁　县', '');
INSERT INTO `area` VALUES ('499', '42', '3', '300095', '肥乡县', '');
INSERT INTO `area` VALUES ('500', '42', '3', '300096', '永年县', '');
INSERT INTO `area` VALUES ('501', '42', '3', '300097', '邱　县', '');
INSERT INTO `area` VALUES ('502', '42', '3', '300098', '鸡泽县', '');
INSERT INTO `area` VALUES ('503', '42', '3', '300099', '广平县', '');
INSERT INTO `area` VALUES ('504', '42', '3', '300100', '馆陶县', '');
INSERT INTO `area` VALUES ('505', '42', '3', '300101', '魏　县', '');
INSERT INTO `area` VALUES ('506', '42', '3', '300102', '曲周县', '');
INSERT INTO `area` VALUES ('507', '42', '3', '300103', '武安市', '');
INSERT INTO `area` VALUES ('508', '43', '3', '300104', '市辖区', '');
INSERT INTO `area` VALUES ('509', '43', '3', '300105', '桥东区', '');
INSERT INTO `area` VALUES ('510', '43', '3', '300106', '桥西区', '');
INSERT INTO `area` VALUES ('511', '43', '3', '300107', '邢台县', '');
INSERT INTO `area` VALUES ('512', '43', '3', '300108', '临城县', '');
INSERT INTO `area` VALUES ('513', '43', '3', '300109', '内丘县', '');
INSERT INTO `area` VALUES ('514', '43', '3', '300110', '柏乡县', '');
INSERT INTO `area` VALUES ('515', '43', '3', '300111', '隆尧县', '');
INSERT INTO `area` VALUES ('516', '43', '3', '300112', '任　县', '');
INSERT INTO `area` VALUES ('517', '43', '3', '300113', '南和县', '');
INSERT INTO `area` VALUES ('518', '43', '3', '300114', '宁晋县', '');
INSERT INTO `area` VALUES ('519', '43', '3', '300115', '巨鹿县', '');
INSERT INTO `area` VALUES ('520', '43', '3', '300116', '新河县', '');
INSERT INTO `area` VALUES ('521', '43', '3', '300117', '广宗县', '');
INSERT INTO `area` VALUES ('522', '43', '3', '300118', '平乡县', '');
INSERT INTO `area` VALUES ('523', '43', '3', '300119', '威　县', '');
INSERT INTO `area` VALUES ('524', '43', '3', '300120', '清河县', '');
INSERT INTO `area` VALUES ('525', '43', '3', '300121', '临西县', '');
INSERT INTO `area` VALUES ('526', '43', '3', '300122', '南宫市', '');
INSERT INTO `area` VALUES ('527', '43', '3', '300123', '沙河市', '');
INSERT INTO `area` VALUES ('528', '44', '3', '300124', '市辖区', '');
INSERT INTO `area` VALUES ('529', '44', '3', '300125', '新市区', '');
INSERT INTO `area` VALUES ('530', '44', '3', '300126', '北市区', '');
INSERT INTO `area` VALUES ('531', '44', '3', '300127', '南市区', '');
INSERT INTO `area` VALUES ('532', '44', '3', '300128', '满城县', '');
INSERT INTO `area` VALUES ('533', '44', '3', '300129', '清苑县', '');
INSERT INTO `area` VALUES ('534', '44', '3', '300130', '涞水县', '');
INSERT INTO `area` VALUES ('535', '44', '3', '300131', '阜平县', '');
INSERT INTO `area` VALUES ('536', '44', '3', '300132', '徐水县', '');
INSERT INTO `area` VALUES ('537', '44', '3', '300133', '定兴县', '');
INSERT INTO `area` VALUES ('538', '44', '3', '300134', '唐　县', '');
INSERT INTO `area` VALUES ('539', '44', '3', '300135', '高阳县', '');
INSERT INTO `area` VALUES ('540', '44', '3', '300136', '容城县', '');
INSERT INTO `area` VALUES ('541', '44', '3', '300137', '涞源县', '');
INSERT INTO `area` VALUES ('542', '44', '3', '300138', '望都县', '');
INSERT INTO `area` VALUES ('543', '44', '3', '300139', '安新县', '');
INSERT INTO `area` VALUES ('544', '44', '3', '300140', '易　县', '');
INSERT INTO `area` VALUES ('545', '44', '3', '300141', '曲阳县', '');
INSERT INTO `area` VALUES ('546', '44', '3', '300142', '蠡　县', '');
INSERT INTO `area` VALUES ('547', '44', '3', '300143', '顺平县', '');
INSERT INTO `area` VALUES ('548', '44', '3', '300144', '博野县', '');
INSERT INTO `area` VALUES ('549', '44', '3', '300145', '雄　县', '');
INSERT INTO `area` VALUES ('550', '44', '3', '300146', '涿州市', '');
INSERT INTO `area` VALUES ('551', '44', '3', '300147', '定州市', '');
INSERT INTO `area` VALUES ('552', '44', '3', '300148', '安国市', '');
INSERT INTO `area` VALUES ('553', '44', '3', '300149', '高碑店市', '');
INSERT INTO `area` VALUES ('554', '45', '3', '300150', '市辖区', '');
INSERT INTO `area` VALUES ('555', '45', '3', '300151', '桥东区', '');
INSERT INTO `area` VALUES ('556', '45', '3', '300152', '桥西区', '');
INSERT INTO `area` VALUES ('557', '45', '3', '300153', '宣化区', '');
INSERT INTO `area` VALUES ('558', '45', '3', '300154', '下花园区', '');
INSERT INTO `area` VALUES ('559', '45', '3', '300155', '宣化县', '');
INSERT INTO `area` VALUES ('560', '45', '3', '300156', '张北县', '');
INSERT INTO `area` VALUES ('561', '45', '3', '300157', '康保县', '');
INSERT INTO `area` VALUES ('562', '45', '3', '300158', '沽源县', '');
INSERT INTO `area` VALUES ('563', '45', '3', '300159', '尚义县', '');
INSERT INTO `area` VALUES ('564', '45', '3', '300160', '蔚　县', '');
INSERT INTO `area` VALUES ('565', '45', '3', '300161', '阳原县', '');
INSERT INTO `area` VALUES ('566', '45', '3', '300162', '怀安县', '');
INSERT INTO `area` VALUES ('567', '45', '3', '300163', '万全县', '');
INSERT INTO `area` VALUES ('568', '45', '3', '300164', '怀来县', '');
INSERT INTO `area` VALUES ('569', '45', '3', '300165', '涿鹿县', '');
INSERT INTO `area` VALUES ('570', '45', '3', '300166', '赤城县', '');
INSERT INTO `area` VALUES ('571', '45', '3', '300167', '崇礼县', '');
INSERT INTO `area` VALUES ('572', '46', '3', '300168', '市辖区', '');
INSERT INTO `area` VALUES ('573', '46', '3', '300169', '双桥区', '');
INSERT INTO `area` VALUES ('574', '46', '3', '300170', '双滦区', '');
INSERT INTO `area` VALUES ('575', '46', '3', '300171', '鹰手营子矿区', '');
INSERT INTO `area` VALUES ('576', '46', '3', '300172', '承德县', '');
INSERT INTO `area` VALUES ('577', '46', '3', '300173', '兴隆县', '');
INSERT INTO `area` VALUES ('578', '46', '3', '300174', '平泉县', '');
INSERT INTO `area` VALUES ('579', '46', '3', '300175', '滦平县', '');
INSERT INTO `area` VALUES ('580', '46', '3', '300176', '隆化县', '');
INSERT INTO `area` VALUES ('581', '46', '3', '300177', '丰宁满族自治县', '');
INSERT INTO `area` VALUES ('582', '46', '3', '300178', '宽城满族自治县', '');
INSERT INTO `area` VALUES ('583', '46', '3', '300179', '围场满族蒙古族自治县', '');
INSERT INTO `area` VALUES ('584', '47', '3', '300180', '市辖区', '');
INSERT INTO `area` VALUES ('585', '47', '3', '300181', '新华区', '');
INSERT INTO `area` VALUES ('586', '47', '3', '300182', '运河区', '');
INSERT INTO `area` VALUES ('587', '47', '3', '300183', '沧　县', '');
INSERT INTO `area` VALUES ('588', '47', '3', '300184', '青　县', '');
INSERT INTO `area` VALUES ('589', '47', '3', '300185', '东光县', '');
INSERT INTO `area` VALUES ('590', '47', '3', '300186', '海兴县', '');
INSERT INTO `area` VALUES ('591', '47', '3', '300187', '盐山县', '');
INSERT INTO `area` VALUES ('592', '47', '3', '300188', '肃宁县', '');
INSERT INTO `area` VALUES ('593', '47', '3', '300189', '南皮县', '');
INSERT INTO `area` VALUES ('594', '47', '3', '300190', '吴桥县', '');
INSERT INTO `area` VALUES ('595', '47', '3', '300191', '献　县', '');
INSERT INTO `area` VALUES ('596', '47', '3', '300192', '孟村回族自治县', '');
INSERT INTO `area` VALUES ('597', '47', '3', '300193', '泊头市', '');
INSERT INTO `area` VALUES ('598', '47', '3', '300194', '任丘市', '');
INSERT INTO `area` VALUES ('599', '47', '3', '300195', '黄骅市', '');
INSERT INTO `area` VALUES ('600', '47', '3', '300196', '河间市', '');
INSERT INTO `area` VALUES ('601', '48', '3', '300197', '市辖区', '');
INSERT INTO `area` VALUES ('602', '48', '3', '300198', '安次区', '');
INSERT INTO `area` VALUES ('603', '48', '3', '300199', '广阳区', '');
INSERT INTO `area` VALUES ('604', '48', '3', '300200', '固安县', '');
INSERT INTO `area` VALUES ('605', '48', '3', '300201', '永清县', '');
INSERT INTO `area` VALUES ('606', '48', '3', '300202', '香河县', '');
INSERT INTO `area` VALUES ('607', '48', '3', '300203', '大城县', '');
INSERT INTO `area` VALUES ('608', '48', '3', '300204', '文安县', '');
INSERT INTO `area` VALUES ('609', '48', '3', '300205', '大厂回族自治县', '');
INSERT INTO `area` VALUES ('610', '48', '3', '300206', '霸州市', '');
INSERT INTO `area` VALUES ('611', '48', '3', '300207', '三河市', '');
INSERT INTO `area` VALUES ('612', '49', '3', '300208', '市辖区', '');
INSERT INTO `area` VALUES ('613', '49', '3', '300209', '桃城区', '');
INSERT INTO `area` VALUES ('614', '49', '3', '300210', '枣强县', '');
INSERT INTO `area` VALUES ('615', '49', '3', '300211', '武邑县', '');
INSERT INTO `area` VALUES ('616', '49', '3', '300212', '武强县', '');
INSERT INTO `area` VALUES ('617', '49', '3', '300213', '饶阳县', '');
INSERT INTO `area` VALUES ('618', '49', '3', '300214', '安平县', '');
INSERT INTO `area` VALUES ('619', '49', '3', '300215', '故城县', '');
INSERT INTO `area` VALUES ('620', '49', '3', '300216', '景　县', '');
INSERT INTO `area` VALUES ('621', '49', '3', '300217', '阜城县', '');
INSERT INTO `area` VALUES ('622', '49', '3', '300218', '冀州市', '');
INSERT INTO `area` VALUES ('623', '49', '3', '300219', '深州市', '');
INSERT INTO `area` VALUES ('624', '50', '3', '300220', '市辖区', '');
INSERT INTO `area` VALUES ('625', '50', '3', '300221', '小店区', '');
INSERT INTO `area` VALUES ('626', '50', '3', '300222', '迎泽区', '');
INSERT INTO `area` VALUES ('627', '50', '3', '300223', '杏花岭区', '');
INSERT INTO `area` VALUES ('628', '50', '3', '300224', '尖草坪区', '');
INSERT INTO `area` VALUES ('629', '50', '3', '300225', '万柏林区', '');
INSERT INTO `area` VALUES ('630', '50', '3', '300226', '晋源区', '');
INSERT INTO `area` VALUES ('631', '50', '3', '300227', '清徐县', '');
INSERT INTO `area` VALUES ('632', '50', '3', '300228', '阳曲县', '');
INSERT INTO `area` VALUES ('633', '50', '3', '300229', '娄烦县', '');
INSERT INTO `area` VALUES ('634', '50', '3', '300230', '古交市', '');
INSERT INTO `area` VALUES ('635', '51', '3', '300231', '市辖区', '');
INSERT INTO `area` VALUES ('636', '51', '3', '300232', '城　区', '');
INSERT INTO `area` VALUES ('637', '51', '3', '300233', '矿　区', '');
INSERT INTO `area` VALUES ('638', '51', '3', '300234', '南郊区', '');
INSERT INTO `area` VALUES ('639', '51', '3', '300235', '新荣区', '');
INSERT INTO `area` VALUES ('640', '51', '3', '300236', '阳高县', '');
INSERT INTO `area` VALUES ('641', '51', '3', '300237', '天镇县', '');
INSERT INTO `area` VALUES ('642', '51', '3', '300238', '广灵县', '');
INSERT INTO `area` VALUES ('643', '51', '3', '300239', '灵丘县', '');
INSERT INTO `area` VALUES ('644', '51', '3', '300240', '浑源县', '');
INSERT INTO `area` VALUES ('645', '51', '3', '300241', '左云县', '');
INSERT INTO `area` VALUES ('646', '51', '3', '300242', '大同县', '');
INSERT INTO `area` VALUES ('647', '52', '3', '300243', '市辖区', '');
INSERT INTO `area` VALUES ('648', '52', '3', '300244', '城　区', '');
INSERT INTO `area` VALUES ('649', '52', '3', '300245', '矿　区', '');
INSERT INTO `area` VALUES ('650', '52', '3', '300246', '郊　区', '');
INSERT INTO `area` VALUES ('651', '52', '3', '300247', '平定县', '');
INSERT INTO `area` VALUES ('652', '52', '3', '300248', '盂　县', '');
INSERT INTO `area` VALUES ('653', '53', '3', '300249', '市辖区', '');
INSERT INTO `area` VALUES ('654', '53', '3', '300250', '城　区', '');
INSERT INTO `area` VALUES ('655', '53', '3', '300251', '郊　区', '');
INSERT INTO `area` VALUES ('656', '53', '3', '300252', '长治县', '');
INSERT INTO `area` VALUES ('657', '53', '3', '300253', '襄垣县', '');
INSERT INTO `area` VALUES ('658', '53', '3', '300254', '屯留县', '');
INSERT INTO `area` VALUES ('659', '53', '3', '300255', '平顺县', '');
INSERT INTO `area` VALUES ('660', '53', '3', '300256', '黎城县', '');
INSERT INTO `area` VALUES ('661', '53', '3', '300257', '壶关县', '');
INSERT INTO `area` VALUES ('662', '53', '3', '300258', '长子县', '');
INSERT INTO `area` VALUES ('663', '53', '3', '300259', '武乡县', '');
INSERT INTO `area` VALUES ('664', '53', '3', '300260', '沁　县', '');
INSERT INTO `area` VALUES ('665', '53', '3', '300261', '沁源县', '');
INSERT INTO `area` VALUES ('666', '53', '3', '300262', '潞城市', '');
INSERT INTO `area` VALUES ('667', '54', '3', '300263', '市辖区', '');
INSERT INTO `area` VALUES ('668', '54', '3', '300264', '城　区', '');
INSERT INTO `area` VALUES ('669', '54', '3', '300265', '沁水县', '');
INSERT INTO `area` VALUES ('670', '54', '3', '300266', '阳城县', '');
INSERT INTO `area` VALUES ('671', '54', '3', '300267', '陵川县', '');
INSERT INTO `area` VALUES ('672', '54', '3', '300268', '泽州县', '');
INSERT INTO `area` VALUES ('673', '54', '3', '300269', '高平市', '');
INSERT INTO `area` VALUES ('674', '55', '3', '300270', '市辖区', '');
INSERT INTO `area` VALUES ('675', '55', '3', '300271', '朔城区', '');
INSERT INTO `area` VALUES ('676', '55', '3', '300272', '平鲁区', '');
INSERT INTO `area` VALUES ('677', '55', '3', '300273', '山阴县', '');
INSERT INTO `area` VALUES ('678', '55', '3', '300274', '应　县', '');
INSERT INTO `area` VALUES ('679', '55', '3', '300275', '右玉县', '');
INSERT INTO `area` VALUES ('680', '55', '3', '300276', '怀仁县', '');
INSERT INTO `area` VALUES ('681', '56', '3', '300277', '市辖区', '');
INSERT INTO `area` VALUES ('682', '56', '3', '300278', '榆次区', '');
INSERT INTO `area` VALUES ('683', '56', '3', '300279', '榆社县', '');
INSERT INTO `area` VALUES ('684', '56', '3', '300280', '左权县', '');
INSERT INTO `area` VALUES ('685', '56', '3', '300281', '和顺县', '');
INSERT INTO `area` VALUES ('686', '56', '3', '300282', '昔阳县', '');
INSERT INTO `area` VALUES ('687', '56', '3', '300283', '寿阳县', '');
INSERT INTO `area` VALUES ('688', '56', '3', '300284', '太谷县', '');
INSERT INTO `area` VALUES ('689', '56', '3', '300285', '祁　县', '');
INSERT INTO `area` VALUES ('690', '56', '3', '300286', '平遥县', '');
INSERT INTO `area` VALUES ('691', '56', '3', '300287', '灵石县', '');
INSERT INTO `area` VALUES ('692', '56', '3', '300288', '介休市', '');
INSERT INTO `area` VALUES ('693', '57', '3', '300289', '市辖区', '');
INSERT INTO `area` VALUES ('694', '57', '3', '300290', '盐湖区', '');
INSERT INTO `area` VALUES ('695', '57', '3', '300291', '临猗县', '');
INSERT INTO `area` VALUES ('696', '57', '3', '300292', '万荣县', '');
INSERT INTO `area` VALUES ('697', '57', '3', '300293', '闻喜县', '');
INSERT INTO `area` VALUES ('698', '57', '3', '300294', '稷山县', '');
INSERT INTO `area` VALUES ('699', '57', '3', '300295', '新绛县', '');
INSERT INTO `area` VALUES ('700', '57', '3', '300296', '绛　县', '');
INSERT INTO `area` VALUES ('701', '57', '3', '300297', '垣曲县', '');
INSERT INTO `area` VALUES ('702', '57', '3', '300298', '夏　县', '');
INSERT INTO `area` VALUES ('703', '57', '3', '300299', '平陆县', '');
INSERT INTO `area` VALUES ('704', '57', '3', '300300', '芮城县', '');
INSERT INTO `area` VALUES ('705', '57', '3', '300301', '永济市', '');
INSERT INTO `area` VALUES ('706', '57', '3', '300302', '河津市', '');
INSERT INTO `area` VALUES ('707', '58', '3', '300303', '市辖区', '');
INSERT INTO `area` VALUES ('708', '58', '3', '300304', '忻府区', '');
INSERT INTO `area` VALUES ('709', '58', '3', '300305', '定襄县', '');
INSERT INTO `area` VALUES ('710', '58', '3', '300306', '五台县', '');
INSERT INTO `area` VALUES ('711', '58', '3', '300307', '代　县', '');
INSERT INTO `area` VALUES ('712', '58', '3', '300308', '繁峙县', '');
INSERT INTO `area` VALUES ('713', '58', '3', '300309', '宁武县', '');
INSERT INTO `area` VALUES ('714', '58', '3', '300310', '静乐县', '');
INSERT INTO `area` VALUES ('715', '58', '3', '300311', '神池县', '');
INSERT INTO `area` VALUES ('716', '58', '3', '300312', '五寨县', '');
INSERT INTO `area` VALUES ('717', '58', '3', '300313', '岢岚县', '');
INSERT INTO `area` VALUES ('718', '58', '3', '300314', '河曲县', '');
INSERT INTO `area` VALUES ('719', '58', '3', '300315', '保德县', '');
INSERT INTO `area` VALUES ('720', '58', '3', '300316', '偏关县', '');
INSERT INTO `area` VALUES ('721', '58', '3', '300317', '原平市', '');
INSERT INTO `area` VALUES ('722', '59', '3', '300318', '市辖区', '');
INSERT INTO `area` VALUES ('723', '59', '3', '300319', '尧都区', '');
INSERT INTO `area` VALUES ('724', '59', '3', '300320', '曲沃县', '');
INSERT INTO `area` VALUES ('725', '59', '3', '300321', '翼城县', '');
INSERT INTO `area` VALUES ('726', '59', '3', '300322', '襄汾县', '');
INSERT INTO `area` VALUES ('727', '59', '3', '300323', '洪洞县', '');
INSERT INTO `area` VALUES ('728', '59', '3', '300324', '古　县', '');
INSERT INTO `area` VALUES ('729', '59', '3', '300325', '安泽县', '');
INSERT INTO `area` VALUES ('730', '59', '3', '300326', '浮山县', '');
INSERT INTO `area` VALUES ('731', '59', '3', '300327', '吉　县', '');
INSERT INTO `area` VALUES ('732', '59', '3', '300328', '乡宁县', '');
INSERT INTO `area` VALUES ('733', '59', '3', '300329', '大宁县', '');
INSERT INTO `area` VALUES ('734', '59', '3', '300330', '隰　县', '');
INSERT INTO `area` VALUES ('735', '59', '3', '300331', '永和县', '');
INSERT INTO `area` VALUES ('736', '59', '3', '300332', '蒲　县', '');
INSERT INTO `area` VALUES ('737', '59', '3', '300333', '汾西县', '');
INSERT INTO `area` VALUES ('738', '59', '3', '300334', '侯马市', '');
INSERT INTO `area` VALUES ('739', '59', '3', '300335', '霍州市', '');
INSERT INTO `area` VALUES ('740', '60', '3', '300336', '市辖区', '');
INSERT INTO `area` VALUES ('741', '60', '3', '300337', '离石区', '');
INSERT INTO `area` VALUES ('742', '60', '3', '300338', '文水县', '');
INSERT INTO `area` VALUES ('743', '60', '3', '300339', '交城县', '');
INSERT INTO `area` VALUES ('744', '60', '3', '300340', '兴　县', '');
INSERT INTO `area` VALUES ('745', '60', '3', '300341', '临　县', '');
INSERT INTO `area` VALUES ('746', '60', '3', '300342', '柳林县', '');
INSERT INTO `area` VALUES ('747', '60', '3', '300343', '石楼县', '');
INSERT INTO `area` VALUES ('748', '60', '3', '300344', '岚　县', '');
INSERT INTO `area` VALUES ('749', '60', '3', '300345', '方山县', '');
INSERT INTO `area` VALUES ('750', '60', '3', '300346', '中阳县', '');
INSERT INTO `area` VALUES ('751', '60', '3', '300347', '交口县', '');
INSERT INTO `area` VALUES ('752', '60', '3', '300348', '孝义市', '');
INSERT INTO `area` VALUES ('753', '60', '3', '300349', '汾阳市', '');
INSERT INTO `area` VALUES ('754', '61', '3', '300350', '市辖区', '');
INSERT INTO `area` VALUES ('755', '61', '3', '300351', '新城区', '');
INSERT INTO `area` VALUES ('756', '61', '3', '300352', '回民区', '');
INSERT INTO `area` VALUES ('757', '61', '3', '300353', '玉泉区', '');
INSERT INTO `area` VALUES ('758', '61', '3', '300354', '赛罕区', '');
INSERT INTO `area` VALUES ('759', '61', '3', '300355', '土默特左旗', '');
INSERT INTO `area` VALUES ('760', '61', '3', '300356', '托克托县', '');
INSERT INTO `area` VALUES ('761', '61', '3', '300357', '和林格尔县', '');
INSERT INTO `area` VALUES ('762', '61', '3', '300358', '清水河县', '');
INSERT INTO `area` VALUES ('763', '61', '3', '300359', '武川县', '');
INSERT INTO `area` VALUES ('764', '62', '3', '300360', '市辖区', '');
INSERT INTO `area` VALUES ('765', '62', '3', '300361', '东河区', '');
INSERT INTO `area` VALUES ('766', '62', '3', '300362', '昆都仑区', '');
INSERT INTO `area` VALUES ('767', '62', '3', '300363', '青山区', '');
INSERT INTO `area` VALUES ('768', '62', '3', '300364', '石拐区', '');
INSERT INTO `area` VALUES ('769', '62', '3', '300365', '白云矿区', '');
INSERT INTO `area` VALUES ('770', '62', '3', '300366', '九原区', '');
INSERT INTO `area` VALUES ('771', '62', '3', '300367', '土默特右旗', '');
INSERT INTO `area` VALUES ('772', '62', '3', '300368', '固阳县', '');
INSERT INTO `area` VALUES ('773', '62', '3', '300369', '达尔罕茂明安联合旗', '');
INSERT INTO `area` VALUES ('774', '63', '3', '300370', '市辖区', '');
INSERT INTO `area` VALUES ('775', '63', '3', '300371', '海勃湾区', '');
INSERT INTO `area` VALUES ('776', '63', '3', '300372', '海南区', '');
INSERT INTO `area` VALUES ('777', '63', '3', '300373', '乌达区', '');
INSERT INTO `area` VALUES ('778', '64', '3', '300374', '市辖区', '');
INSERT INTO `area` VALUES ('779', '64', '3', '300375', '红山区', '');
INSERT INTO `area` VALUES ('780', '64', '3', '300376', '元宝山区', '');
INSERT INTO `area` VALUES ('781', '64', '3', '300377', '松山区', '');
INSERT INTO `area` VALUES ('782', '64', '3', '300378', '阿鲁科尔沁旗', '');
INSERT INTO `area` VALUES ('783', '64', '3', '300379', '巴林左旗', '');
INSERT INTO `area` VALUES ('784', '64', '3', '300380', '巴林右旗', '');
INSERT INTO `area` VALUES ('785', '64', '3', '300381', '林西县', '');
INSERT INTO `area` VALUES ('786', '64', '3', '300382', '克什克腾旗', '');
INSERT INTO `area` VALUES ('787', '64', '3', '300383', '翁牛特旗', '');
INSERT INTO `area` VALUES ('788', '64', '3', '300384', '喀喇沁旗', '');
INSERT INTO `area` VALUES ('789', '64', '3', '300385', '宁城县', '');
INSERT INTO `area` VALUES ('790', '64', '3', '300386', '敖汉旗', '');
INSERT INTO `area` VALUES ('791', '65', '3', '300387', '市辖区', '');
INSERT INTO `area` VALUES ('792', '65', '3', '300388', '科尔沁区', '');
INSERT INTO `area` VALUES ('793', '65', '3', '300389', '科尔沁左翼中旗', '');
INSERT INTO `area` VALUES ('794', '65', '3', '300390', '科尔沁左翼后旗', '');
INSERT INTO `area` VALUES ('795', '65', '3', '300391', '开鲁县', '');
INSERT INTO `area` VALUES ('796', '65', '3', '300392', '库伦旗', '');
INSERT INTO `area` VALUES ('797', '65', '3', '300393', '奈曼旗', '');
INSERT INTO `area` VALUES ('798', '65', '3', '300394', '扎鲁特旗', '');
INSERT INTO `area` VALUES ('799', '65', '3', '300395', '霍林郭勒市', '');
INSERT INTO `area` VALUES ('800', '66', '3', '300396', '东胜区', '');
INSERT INTO `area` VALUES ('801', '66', '3', '300397', '达拉特旗', '');
INSERT INTO `area` VALUES ('802', '66', '3', '300398', '准格尔旗', '');
INSERT INTO `area` VALUES ('803', '66', '3', '300399', '鄂托克前旗', '');
INSERT INTO `area` VALUES ('804', '66', '3', '300400', '鄂托克旗', '');
INSERT INTO `area` VALUES ('805', '66', '3', '300401', '杭锦旗', '');
INSERT INTO `area` VALUES ('806', '66', '3', '300402', '乌审旗', '');
INSERT INTO `area` VALUES ('807', '66', '3', '300403', '伊金霍洛旗', '');
INSERT INTO `area` VALUES ('808', '67', '3', '300404', '市辖区', '');
INSERT INTO `area` VALUES ('809', '67', '3', '300405', '海拉尔区', '');
INSERT INTO `area` VALUES ('810', '67', '3', '300406', '阿荣旗', '');
INSERT INTO `area` VALUES ('811', '67', '3', '300407', '莫力达瓦达斡尔族自治旗', '');
INSERT INTO `area` VALUES ('812', '67', '3', '300408', '鄂伦春自治旗', '');
INSERT INTO `area` VALUES ('813', '67', '3', '300409', '鄂温克族自治旗', '');
INSERT INTO `area` VALUES ('814', '67', '3', '300410', '陈巴尔虎旗', '');
INSERT INTO `area` VALUES ('815', '67', '3', '300411', '新巴尔虎左旗', '');
INSERT INTO `area` VALUES ('816', '67', '3', '300412', '新巴尔虎右旗', '');
INSERT INTO `area` VALUES ('817', '67', '3', '300413', '满洲里市', '');
INSERT INTO `area` VALUES ('818', '67', '3', '300414', '牙克石市', '');
INSERT INTO `area` VALUES ('819', '67', '3', '300415', '扎兰屯市', '');
INSERT INTO `area` VALUES ('820', '67', '3', '300416', '额尔古纳市', '');
INSERT INTO `area` VALUES ('821', '67', '3', '300417', '根河市', '');
INSERT INTO `area` VALUES ('822', '68', '3', '300418', '市辖区', '');
INSERT INTO `area` VALUES ('823', '68', '3', '300419', '临河区', '');
INSERT INTO `area` VALUES ('824', '68', '3', '300420', '五原县', '');
INSERT INTO `area` VALUES ('825', '68', '3', '300421', '磴口县', '');
INSERT INTO `area` VALUES ('826', '68', '3', '300422', '乌拉特前旗', '');
INSERT INTO `area` VALUES ('827', '68', '3', '300423', '乌拉特中旗', '');
INSERT INTO `area` VALUES ('828', '68', '3', '300424', '乌拉特后旗', '');
INSERT INTO `area` VALUES ('829', '68', '3', '300425', '杭锦后旗', '');
INSERT INTO `area` VALUES ('830', '69', '3', '300426', '市辖区', '');
INSERT INTO `area` VALUES ('831', '69', '3', '300427', '集宁区', '');
INSERT INTO `area` VALUES ('832', '69', '3', '300428', '卓资县', '');
INSERT INTO `area` VALUES ('833', '69', '3', '300429', '化德县', '');
INSERT INTO `area` VALUES ('834', '69', '3', '300430', '商都县', '');
INSERT INTO `area` VALUES ('835', '69', '3', '300431', '兴和县', '');
INSERT INTO `area` VALUES ('836', '69', '3', '300432', '凉城县', '');
INSERT INTO `area` VALUES ('837', '69', '3', '300433', '察哈尔右翼前旗', '');
INSERT INTO `area` VALUES ('838', '69', '3', '300434', '察哈尔右翼中旗', '');
INSERT INTO `area` VALUES ('839', '69', '3', '300435', '察哈尔右翼后旗', '');
INSERT INTO `area` VALUES ('840', '69', '3', '300436', '四子王旗', '');
INSERT INTO `area` VALUES ('841', '69', '3', '300437', '丰镇市', '');
INSERT INTO `area` VALUES ('842', '70', '3', '300438', '乌兰浩特市', '');
INSERT INTO `area` VALUES ('843', '70', '3', '300439', '阿尔山市', '');
INSERT INTO `area` VALUES ('844', '70', '3', '300440', '科尔沁右翼前旗', '');
INSERT INTO `area` VALUES ('845', '70', '3', '300441', '科尔沁右翼中旗', '');
INSERT INTO `area` VALUES ('846', '70', '3', '300442', '扎赉特旗', '');
INSERT INTO `area` VALUES ('847', '70', '3', '300443', '突泉县', '');
INSERT INTO `area` VALUES ('848', '71', '3', '300444', '二连浩特市', '');
INSERT INTO `area` VALUES ('849', '71', '3', '300445', '锡林浩特市', '');
INSERT INTO `area` VALUES ('850', '71', '3', '300446', '阿巴嘎旗', '');
INSERT INTO `area` VALUES ('851', '71', '3', '300447', '苏尼特左旗', '');
INSERT INTO `area` VALUES ('852', '71', '3', '300448', '苏尼特右旗', '');
INSERT INTO `area` VALUES ('853', '71', '3', '300449', '东乌珠穆沁旗', '');
INSERT INTO `area` VALUES ('854', '71', '3', '300450', '西乌珠穆沁旗', '');
INSERT INTO `area` VALUES ('855', '71', '3', '300451', '太仆寺旗', '');
INSERT INTO `area` VALUES ('856', '71', '3', '300452', '镶黄旗', '');
INSERT INTO `area` VALUES ('857', '71', '3', '300453', '正镶白旗', '');
INSERT INTO `area` VALUES ('858', '71', '3', '300454', '正蓝旗', '');
INSERT INTO `area` VALUES ('859', '71', '3', '300455', '多伦县', '');
INSERT INTO `area` VALUES ('860', '72', '3', '300456', '阿拉善左旗', '');
INSERT INTO `area` VALUES ('861', '72', '3', '300457', '阿拉善右旗', '');
INSERT INTO `area` VALUES ('862', '72', '3', '300458', '额济纳旗', '');
INSERT INTO `area` VALUES ('863', '73', '3', '300459', '市辖区', '');
INSERT INTO `area` VALUES ('864', '73', '3', '300460', '和平区', '');
INSERT INTO `area` VALUES ('865', '73', '3', '300461', '沈河区', '');
INSERT INTO `area` VALUES ('866', '73', '3', '300462', '大东区', '');
INSERT INTO `area` VALUES ('867', '73', '3', '300463', '皇姑区', '');
INSERT INTO `area` VALUES ('868', '73', '3', '300464', '铁西区', '');
INSERT INTO `area` VALUES ('869', '73', '3', '300465', '苏家屯区', '');
INSERT INTO `area` VALUES ('870', '73', '3', '300466', '东陵区', '');
INSERT INTO `area` VALUES ('871', '73', '3', '300467', '新城子区', '');
INSERT INTO `area` VALUES ('872', '73', '3', '300468', '于洪区', '');
INSERT INTO `area` VALUES ('873', '73', '3', '300469', '辽中县', '');
INSERT INTO `area` VALUES ('874', '73', '3', '300470', '康平县', '');
INSERT INTO `area` VALUES ('875', '73', '3', '300471', '法库县', '');
INSERT INTO `area` VALUES ('876', '73', '3', '300472', '新民市', '');
INSERT INTO `area` VALUES ('877', '74', '3', '300473', '市辖区', '');
INSERT INTO `area` VALUES ('878', '74', '3', '300474', '中山区', '');
INSERT INTO `area` VALUES ('879', '74', '3', '300475', '西岗区', '');
INSERT INTO `area` VALUES ('880', '74', '3', '300476', '沙河口区', '');
INSERT INTO `area` VALUES ('881', '74', '3', '300477', '甘井子区', '');
INSERT INTO `area` VALUES ('882', '74', '3', '300478', '旅顺口区', '');
INSERT INTO `area` VALUES ('883', '74', '3', '300479', '金州区', '');
INSERT INTO `area` VALUES ('884', '74', '3', '300480', '长海县', '');
INSERT INTO `area` VALUES ('885', '74', '3', '300481', '瓦房店市', '');
INSERT INTO `area` VALUES ('886', '74', '3', '300482', '普兰店市', '');
INSERT INTO `area` VALUES ('887', '74', '3', '300483', '庄河市', '');
INSERT INTO `area` VALUES ('888', '75', '3', '300484', '市辖区', '');
INSERT INTO `area` VALUES ('889', '75', '3', '300485', '铁东区', '');
INSERT INTO `area` VALUES ('890', '75', '3', '300486', '铁西区', '');
INSERT INTO `area` VALUES ('891', '75', '3', '300487', '立山区', '');
INSERT INTO `area` VALUES ('892', '75', '3', '300488', '千山区', '');
INSERT INTO `area` VALUES ('893', '75', '3', '300489', '台安县', '');
INSERT INTO `area` VALUES ('894', '75', '3', '300490', '岫岩满族自治县', '');
INSERT INTO `area` VALUES ('895', '75', '3', '300491', '海城市', '');
INSERT INTO `area` VALUES ('896', '76', '3', '300492', '市辖区', '');
INSERT INTO `area` VALUES ('897', '76', '3', '300493', '新抚区', '');
INSERT INTO `area` VALUES ('898', '76', '3', '300494', '东洲区', '');
INSERT INTO `area` VALUES ('899', '76', '3', '300495', '望花区', '');
INSERT INTO `area` VALUES ('900', '76', '3', '300496', '顺城区', '');
INSERT INTO `area` VALUES ('901', '76', '3', '300497', '抚顺县', '');
INSERT INTO `area` VALUES ('902', '76', '3', '300498', '新宾满族自治县', '');
INSERT INTO `area` VALUES ('903', '76', '3', '300499', '清原满族自治县', '');
INSERT INTO `area` VALUES ('904', '77', '3', '300500', '市辖区', '');
INSERT INTO `area` VALUES ('905', '77', '3', '300501', '平山区', '');
INSERT INTO `area` VALUES ('906', '77', '3', '300502', '溪湖区', '');
INSERT INTO `area` VALUES ('907', '77', '3', '300503', '明山区', '');
INSERT INTO `area` VALUES ('908', '77', '3', '300504', '南芬区', '');
INSERT INTO `area` VALUES ('909', '77', '3', '300505', '本溪满族自治县', '');
INSERT INTO `area` VALUES ('910', '77', '3', '300506', '桓仁满族自治县', '');
INSERT INTO `area` VALUES ('911', '78', '3', '300507', '市辖区', '');
INSERT INTO `area` VALUES ('912', '78', '3', '300508', '元宝区', '');
INSERT INTO `area` VALUES ('913', '78', '3', '300509', '振兴区', '');
INSERT INTO `area` VALUES ('914', '78', '3', '300510', '振安区', '');
INSERT INTO `area` VALUES ('915', '78', '3', '300511', '宽甸满族自治县', '');
INSERT INTO `area` VALUES ('916', '78', '3', '300512', '东港市', '');
INSERT INTO `area` VALUES ('917', '78', '3', '300513', '凤城市', '');
INSERT INTO `area` VALUES ('918', '79', '3', '300514', '市辖区', '');
INSERT INTO `area` VALUES ('919', '79', '3', '300515', '古塔区', '');
INSERT INTO `area` VALUES ('920', '79', '3', '300516', '凌河区', '');
INSERT INTO `area` VALUES ('921', '79', '3', '300517', '太和区', '');
INSERT INTO `area` VALUES ('922', '79', '3', '300518', '黑山县', '');
INSERT INTO `area` VALUES ('923', '79', '3', '300519', '义　县', '');
INSERT INTO `area` VALUES ('924', '79', '3', '300520', '凌海市', '');
INSERT INTO `area` VALUES ('925', '79', '3', '300521', '北宁市', '');
INSERT INTO `area` VALUES ('926', '80', '3', '300522', '市辖区', '');
INSERT INTO `area` VALUES ('927', '80', '3', '300523', '站前区', '');
INSERT INTO `area` VALUES ('928', '80', '3', '300524', '西市区', '');
INSERT INTO `area` VALUES ('929', '80', '3', '300525', '鲅鱼圈区', '');
INSERT INTO `area` VALUES ('930', '80', '3', '300526', '老边区', '');
INSERT INTO `area` VALUES ('931', '80', '3', '300527', '盖州市', '');
INSERT INTO `area` VALUES ('932', '80', '3', '300528', '大石桥市', '');
INSERT INTO `area` VALUES ('933', '81', '3', '300529', '市辖区', '');
INSERT INTO `area` VALUES ('934', '81', '3', '300530', '海州区', '');
INSERT INTO `area` VALUES ('935', '81', '3', '300531', '新邱区', '');
INSERT INTO `area` VALUES ('936', '81', '3', '300532', '太平区', '');
INSERT INTO `area` VALUES ('937', '81', '3', '300533', '清河门区', '');
INSERT INTO `area` VALUES ('938', '81', '3', '300534', '细河区', '');
INSERT INTO `area` VALUES ('939', '81', '3', '300535', '阜新蒙古族自治县', '');
INSERT INTO `area` VALUES ('940', '81', '3', '300536', '彰武县', '');
INSERT INTO `area` VALUES ('941', '82', '3', '300537', '市辖区', '');
INSERT INTO `area` VALUES ('942', '82', '3', '300538', '白塔区', '');
INSERT INTO `area` VALUES ('943', '82', '3', '300539', '文圣区', '');
INSERT INTO `area` VALUES ('944', '82', '3', '300540', '宏伟区', '');
INSERT INTO `area` VALUES ('945', '82', '3', '300541', '弓长岭区', '');
INSERT INTO `area` VALUES ('946', '82', '3', '300542', '太子河区', '');
INSERT INTO `area` VALUES ('947', '82', '3', '300543', '辽阳县', '');
INSERT INTO `area` VALUES ('948', '82', '3', '300544', '灯塔市', '');
INSERT INTO `area` VALUES ('949', '83', '3', '300545', '市辖区', '');
INSERT INTO `area` VALUES ('950', '83', '3', '300546', '双台子区', '');
INSERT INTO `area` VALUES ('951', '83', '3', '300547', '兴隆台区', '');
INSERT INTO `area` VALUES ('952', '83', '3', '300548', '大洼县', '');
INSERT INTO `area` VALUES ('953', '83', '3', '300549', '盘山县', '');
INSERT INTO `area` VALUES ('954', '84', '3', '300550', '市辖区', '');
INSERT INTO `area` VALUES ('955', '84', '3', '300551', '银州区', '');
INSERT INTO `area` VALUES ('956', '84', '3', '300552', '清河区', '');
INSERT INTO `area` VALUES ('957', '84', '3', '300553', '铁岭县', '');
INSERT INTO `area` VALUES ('958', '84', '3', '300554', '西丰县', '');
INSERT INTO `area` VALUES ('959', '84', '3', '300555', '昌图县', '');
INSERT INTO `area` VALUES ('960', '84', '3', '300556', '调兵山市', '');
INSERT INTO `area` VALUES ('961', '84', '3', '300557', '开原市', '');
INSERT INTO `area` VALUES ('962', '85', '3', '300558', '市辖区', '');
INSERT INTO `area` VALUES ('963', '85', '3', '300559', '双塔区', '');
INSERT INTO `area` VALUES ('964', '85', '3', '300560', '龙城区', '');
INSERT INTO `area` VALUES ('965', '85', '3', '300561', '朝阳县', '');
INSERT INTO `area` VALUES ('966', '85', '3', '300562', '建平县', '');
INSERT INTO `area` VALUES ('967', '85', '3', '300563', '喀喇沁左翼蒙古族自治县', '');
INSERT INTO `area` VALUES ('968', '85', '3', '300564', '北票市', '');
INSERT INTO `area` VALUES ('969', '85', '3', '300565', '凌源市', '');
INSERT INTO `area` VALUES ('970', '86', '3', '300566', '市辖区', '');
INSERT INTO `area` VALUES ('971', '86', '3', '300567', '连山区', '');
INSERT INTO `area` VALUES ('972', '86', '3', '300568', '龙港区', '');
INSERT INTO `area` VALUES ('973', '86', '3', '300569', '南票区', '');
INSERT INTO `area` VALUES ('974', '86', '3', '300570', '绥中县', '');
INSERT INTO `area` VALUES ('975', '86', '3', '300571', '建昌县', '');
INSERT INTO `area` VALUES ('976', '86', '3', '300572', '兴城市', '');
INSERT INTO `area` VALUES ('977', '87', '3', '300573', '市辖区', '');
INSERT INTO `area` VALUES ('978', '87', '3', '300574', '南关区', '');
INSERT INTO `area` VALUES ('979', '87', '3', '300575', '宽城区', '');
INSERT INTO `area` VALUES ('980', '87', '3', '300576', '朝阳区', '');
INSERT INTO `area` VALUES ('981', '87', '3', '300577', '二道区', '');
INSERT INTO `area` VALUES ('982', '87', '3', '300578', '绿园区', '');
INSERT INTO `area` VALUES ('983', '87', '3', '300579', '双阳区', '');
INSERT INTO `area` VALUES ('984', '87', '3', '300580', '农安县', '');
INSERT INTO `area` VALUES ('985', '87', '3', '300581', '九台市', '');
INSERT INTO `area` VALUES ('986', '87', '3', '300582', '榆树市', '');
INSERT INTO `area` VALUES ('987', '87', '3', '300583', '德惠市', '');
INSERT INTO `area` VALUES ('988', '88', '3', '300584', '市辖区', '');
INSERT INTO `area` VALUES ('989', '88', '3', '300585', '昌邑区', '');
INSERT INTO `area` VALUES ('990', '88', '3', '300586', '龙潭区', '');
INSERT INTO `area` VALUES ('991', '88', '3', '300587', '船营区', '');
INSERT INTO `area` VALUES ('992', '88', '3', '300588', '丰满区', '');
INSERT INTO `area` VALUES ('993', '88', '3', '300589', '永吉县', '');
INSERT INTO `area` VALUES ('994', '88', '3', '300590', '蛟河市', '');
INSERT INTO `area` VALUES ('995', '88', '3', '300591', '桦甸市', '');
INSERT INTO `area` VALUES ('996', '88', '3', '300592', '舒兰市', '');
INSERT INTO `area` VALUES ('997', '88', '3', '300593', '磐石市', '');
INSERT INTO `area` VALUES ('998', '89', '3', '300594', '市辖区', '');
INSERT INTO `area` VALUES ('999', '89', '3', '300595', '铁西区', '');
INSERT INTO `area` VALUES ('1000', '89', '3', '300596', '铁东区', '');
INSERT INTO `area` VALUES ('1001', '89', '3', '300597', '梨树县', '');
INSERT INTO `area` VALUES ('1002', '89', '3', '300598', '伊通满族自治县', '');
INSERT INTO `area` VALUES ('1003', '89', '3', '300599', '公主岭市', '');
INSERT INTO `area` VALUES ('1004', '89', '3', '300600', '双辽市', '');
INSERT INTO `area` VALUES ('1005', '90', '3', '300601', '市辖区', '');
INSERT INTO `area` VALUES ('1006', '90', '3', '300602', '龙山区', '');
INSERT INTO `area` VALUES ('1007', '90', '3', '300603', '西安区', '');
INSERT INTO `area` VALUES ('1008', '90', '3', '300604', '东丰县', '');
INSERT INTO `area` VALUES ('1009', '90', '3', '300605', '东辽县', '');
INSERT INTO `area` VALUES ('1010', '91', '3', '300606', '市辖区', '');
INSERT INTO `area` VALUES ('1011', '91', '3', '300607', '东昌区', '');
INSERT INTO `area` VALUES ('1012', '91', '3', '300608', '二道江区', '');
INSERT INTO `area` VALUES ('1013', '91', '3', '300609', '通化县', '');
INSERT INTO `area` VALUES ('1014', '91', '3', '300610', '辉南县', '');
INSERT INTO `area` VALUES ('1015', '91', '3', '300611', '柳河县', '');
INSERT INTO `area` VALUES ('1016', '91', '3', '300612', '梅河口市', '');
INSERT INTO `area` VALUES ('1017', '91', '3', '300613', '集安市', '');
INSERT INTO `area` VALUES ('1018', '92', '3', '300614', '市辖区', '');
INSERT INTO `area` VALUES ('1019', '92', '3', '300615', '八道江区', '');
INSERT INTO `area` VALUES ('1020', '92', '3', '300616', '抚松县', '');
INSERT INTO `area` VALUES ('1021', '92', '3', '300617', '靖宇县', '');
INSERT INTO `area` VALUES ('1022', '92', '3', '300618', '长白朝鲜族自治县', '');
INSERT INTO `area` VALUES ('1023', '92', '3', '300619', '江源县', '');
INSERT INTO `area` VALUES ('1024', '92', '3', '300620', '临江市', '');
INSERT INTO `area` VALUES ('1025', '93', '3', '300621', '市辖区', '');
INSERT INTO `area` VALUES ('1026', '93', '3', '300622', '宁江区', '');
INSERT INTO `area` VALUES ('1027', '93', '3', '300623', '前郭尔罗斯蒙古族自治县', '');
INSERT INTO `area` VALUES ('1028', '93', '3', '300624', '长岭县', '');
INSERT INTO `area` VALUES ('1029', '93', '3', '300625', '乾安县', '');
INSERT INTO `area` VALUES ('1030', '93', '3', '300626', '扶余县', '');
INSERT INTO `area` VALUES ('1031', '94', '3', '300627', '市辖区', '');
INSERT INTO `area` VALUES ('1032', '94', '3', '300628', '洮北区', '');
INSERT INTO `area` VALUES ('1033', '94', '3', '300629', '镇赉县', '');
INSERT INTO `area` VALUES ('1034', '94', '3', '300630', '通榆县', '');
INSERT INTO `area` VALUES ('1035', '94', '3', '300631', '洮南市', '');
INSERT INTO `area` VALUES ('1036', '94', '3', '300632', '大安市', '');
INSERT INTO `area` VALUES ('1037', '95', '3', '300633', '延吉市', '');
INSERT INTO `area` VALUES ('1038', '95', '3', '300634', '图们市', '');
INSERT INTO `area` VALUES ('1039', '95', '3', '300635', '敦化市', '');
INSERT INTO `area` VALUES ('1040', '95', '3', '300636', '珲春市', '');
INSERT INTO `area` VALUES ('1041', '95', '3', '300637', '龙井市', '');
INSERT INTO `area` VALUES ('1042', '95', '3', '300638', '和龙市', '');
INSERT INTO `area` VALUES ('1043', '95', '3', '300639', '汪清县', '');
INSERT INTO `area` VALUES ('1044', '95', '3', '300640', '安图县', '');
INSERT INTO `area` VALUES ('1045', '96', '3', '300641', '市辖区', '');
INSERT INTO `area` VALUES ('1046', '96', '3', '300642', '道里区', '');
INSERT INTO `area` VALUES ('1047', '96', '3', '300643', '南岗区', '');
INSERT INTO `area` VALUES ('1048', '96', '3', '300644', '道外区', '');
INSERT INTO `area` VALUES ('1049', '96', '3', '300645', '香坊区', '');
INSERT INTO `area` VALUES ('1050', '96', '3', '300646', '动力区', '');
INSERT INTO `area` VALUES ('1051', '96', '3', '300647', '平房区', '');
INSERT INTO `area` VALUES ('1052', '96', '3', '300648', '松北区', '');
INSERT INTO `area` VALUES ('1053', '96', '3', '300649', '呼兰区', '');
INSERT INTO `area` VALUES ('1054', '96', '3', '300650', '依兰县', '');
INSERT INTO `area` VALUES ('1055', '96', '3', '300651', '方正县', '');
INSERT INTO `area` VALUES ('1056', '96', '3', '300652', '宾　县', '');
INSERT INTO `area` VALUES ('1057', '96', '3', '300653', '巴彦县', '');
INSERT INTO `area` VALUES ('1058', '96', '3', '300654', '木兰县', '');
INSERT INTO `area` VALUES ('1059', '96', '3', '300655', '通河县', '');
INSERT INTO `area` VALUES ('1060', '96', '3', '300656', '延寿县', '');
INSERT INTO `area` VALUES ('1061', '96', '3', '300657', '阿城市', '');
INSERT INTO `area` VALUES ('1062', '96', '3', '300658', '双城市', '');
INSERT INTO `area` VALUES ('1063', '96', '3', '300659', '尚志市', '');
INSERT INTO `area` VALUES ('1064', '96', '3', '300660', '五常市', '');
INSERT INTO `area` VALUES ('1065', '97', '3', '300661', '市辖区', '');
INSERT INTO `area` VALUES ('1066', '97', '3', '300662', '龙沙区', '');
INSERT INTO `area` VALUES ('1067', '97', '3', '300663', '建华区', '');
INSERT INTO `area` VALUES ('1068', '97', '3', '300664', '铁锋区', '');
INSERT INTO `area` VALUES ('1069', '97', '3', '300665', '昂昂溪区', '');
INSERT INTO `area` VALUES ('1070', '97', '3', '300666', '富拉尔基区', '');
INSERT INTO `area` VALUES ('1071', '97', '3', '300667', '碾子山区', '');
INSERT INTO `area` VALUES ('1072', '97', '3', '300668', '梅里斯达斡尔族区', '');
INSERT INTO `area` VALUES ('1073', '97', '3', '300669', '龙江县', '');
INSERT INTO `area` VALUES ('1074', '97', '3', '300670', '依安县', '');
INSERT INTO `area` VALUES ('1075', '97', '3', '300671', '泰来县', '');
INSERT INTO `area` VALUES ('1076', '97', '3', '300672', '甘南县', '');
INSERT INTO `area` VALUES ('1077', '97', '3', '300673', '富裕县', '');
INSERT INTO `area` VALUES ('1078', '97', '3', '300674', '克山县', '');
INSERT INTO `area` VALUES ('1079', '97', '3', '300675', '克东县', '');
INSERT INTO `area` VALUES ('1080', '97', '3', '300676', '拜泉县', '');
INSERT INTO `area` VALUES ('1081', '97', '3', '300677', '讷河市', '');
INSERT INTO `area` VALUES ('1082', '98', '3', '300678', '市辖区', '');
INSERT INTO `area` VALUES ('1083', '98', '3', '300679', '鸡冠区', '');
INSERT INTO `area` VALUES ('1084', '98', '3', '300680', '恒山区', '');
INSERT INTO `area` VALUES ('1085', '98', '3', '300681', '滴道区', '');
INSERT INTO `area` VALUES ('1086', '98', '3', '300682', '梨树区', '');
INSERT INTO `area` VALUES ('1087', '98', '3', '300683', '城子河区', '');
INSERT INTO `area` VALUES ('1088', '98', '3', '300684', '麻山区', '');
INSERT INTO `area` VALUES ('1089', '98', '3', '300685', '鸡东县', '');
INSERT INTO `area` VALUES ('1090', '98', '3', '300686', '虎林市', '');
INSERT INTO `area` VALUES ('1091', '98', '3', '300687', '密山市', '');
INSERT INTO `area` VALUES ('1092', '99', '3', '300688', '市辖区', '');
INSERT INTO `area` VALUES ('1093', '99', '3', '300689', '向阳区', '');
INSERT INTO `area` VALUES ('1094', '99', '3', '300690', '工农区', '');
INSERT INTO `area` VALUES ('1095', '99', '3', '300691', '南山区', '');
INSERT INTO `area` VALUES ('1096', '99', '3', '300692', '兴安区', '');
INSERT INTO `area` VALUES ('1097', '99', '3', '300693', '东山区', '');
INSERT INTO `area` VALUES ('1098', '99', '3', '300694', '兴山区', '');
INSERT INTO `area` VALUES ('1099', '99', '3', '300695', '萝北县', '');
INSERT INTO `area` VALUES ('1100', '99', '3', '300696', '绥滨县', '');
INSERT INTO `area` VALUES ('1101', '100', '3', '300697', '市辖区', '');
INSERT INTO `area` VALUES ('1102', '100', '3', '300698', '尖山区', '');
INSERT INTO `area` VALUES ('1103', '100', '3', '300699', '岭东区', '');
INSERT INTO `area` VALUES ('1104', '100', '3', '300700', '四方台区', '');
INSERT INTO `area` VALUES ('1105', '100', '3', '300701', '宝山区', '');
INSERT INTO `area` VALUES ('1106', '100', '3', '300702', '集贤县', '');
INSERT INTO `area` VALUES ('1107', '100', '3', '300703', '友谊县', '');
INSERT INTO `area` VALUES ('1108', '100', '3', '300704', '宝清县', '');
INSERT INTO `area` VALUES ('1109', '100', '3', '300705', '饶河县', '');
INSERT INTO `area` VALUES ('1110', '101', '3', '300706', '市辖区', '');
INSERT INTO `area` VALUES ('1111', '101', '3', '300707', '萨尔图区', '');
INSERT INTO `area` VALUES ('1112', '101', '3', '300708', '龙凤区', '');
INSERT INTO `area` VALUES ('1113', '101', '3', '300709', '让胡路区', '');
INSERT INTO `area` VALUES ('1114', '101', '3', '300710', '红岗区', '');
INSERT INTO `area` VALUES ('1115', '101', '3', '300711', '大同区', '');
INSERT INTO `area` VALUES ('1116', '101', '3', '300712', '肇州县', '');
INSERT INTO `area` VALUES ('1117', '101', '3', '300713', '肇源县', '');
INSERT INTO `area` VALUES ('1118', '101', '3', '300714', '林甸县', '');
INSERT INTO `area` VALUES ('1119', '101', '3', '300715', '杜尔伯特蒙古族自治县', '');
INSERT INTO `area` VALUES ('1120', '102', '3', '300716', '市辖区', '');
INSERT INTO `area` VALUES ('1121', '102', '3', '300717', '伊春区', '');
INSERT INTO `area` VALUES ('1122', '102', '3', '300718', '南岔区', '');
INSERT INTO `area` VALUES ('1123', '102', '3', '300719', '友好区', '');
INSERT INTO `area` VALUES ('1124', '102', '3', '300720', '西林区', '');
INSERT INTO `area` VALUES ('1125', '102', '3', '300721', '翠峦区', '');
INSERT INTO `area` VALUES ('1126', '102', '3', '300722', '新青区', '');
INSERT INTO `area` VALUES ('1127', '102', '3', '300723', '美溪区', '');
INSERT INTO `area` VALUES ('1128', '102', '3', '300724', '金山屯区', '');
INSERT INTO `area` VALUES ('1129', '102', '3', '300725', '五营区', '');
INSERT INTO `area` VALUES ('1130', '102', '3', '300726', '乌马河区', '');
INSERT INTO `area` VALUES ('1131', '102', '3', '300727', '汤旺河区', '');
INSERT INTO `area` VALUES ('1132', '102', '3', '300728', '带岭区', '');
INSERT INTO `area` VALUES ('1133', '102', '3', '300729', '乌伊岭区', '');
INSERT INTO `area` VALUES ('1134', '102', '3', '300730', '红星区', '');
INSERT INTO `area` VALUES ('1135', '102', '3', '300731', '上甘岭区', '');
INSERT INTO `area` VALUES ('1136', '102', '3', '300732', '嘉荫县', '');
INSERT INTO `area` VALUES ('1137', '102', '3', '300733', '铁力市', '');
INSERT INTO `area` VALUES ('1138', '103', '3', '300734', '市辖区', '');
INSERT INTO `area` VALUES ('1139', '103', '3', '300735', '永红区', '');
INSERT INTO `area` VALUES ('1140', '103', '3', '300736', '向阳区', '');
INSERT INTO `area` VALUES ('1141', '103', '3', '300737', '前进区', '');
INSERT INTO `area` VALUES ('1142', '103', '3', '300738', '东风区', '');
INSERT INTO `area` VALUES ('1143', '103', '3', '300739', '郊　区', '');
INSERT INTO `area` VALUES ('1144', '103', '3', '300740', '桦南县', '');
INSERT INTO `area` VALUES ('1145', '103', '3', '300741', '桦川县', '');
INSERT INTO `area` VALUES ('1146', '103', '3', '300742', '汤原县', '');
INSERT INTO `area` VALUES ('1147', '103', '3', '300743', '抚远县', '');
INSERT INTO `area` VALUES ('1148', '103', '3', '300744', '同江市', '');
INSERT INTO `area` VALUES ('1149', '103', '3', '300745', '富锦市', '');
INSERT INTO `area` VALUES ('1150', '104', '3', '300746', '市辖区', '');
INSERT INTO `area` VALUES ('1151', '104', '3', '300747', '新兴区', '');
INSERT INTO `area` VALUES ('1152', '104', '3', '300748', '桃山区', '');
INSERT INTO `area` VALUES ('1153', '104', '3', '300749', '茄子河区', '');
INSERT INTO `area` VALUES ('1154', '104', '3', '300750', '勃利县', '');
INSERT INTO `area` VALUES ('1155', '105', '3', '300751', '市辖区', '');
INSERT INTO `area` VALUES ('1156', '105', '3', '300752', '东安区', '');
INSERT INTO `area` VALUES ('1157', '105', '3', '300753', '阳明区', '');
INSERT INTO `area` VALUES ('1158', '105', '3', '300754', '爱民区', '');
INSERT INTO `area` VALUES ('1159', '105', '3', '300755', '西安区', '');
INSERT INTO `area` VALUES ('1160', '105', '3', '300756', '东宁县', '');
INSERT INTO `area` VALUES ('1161', '105', '3', '300757', '林口县', '');
INSERT INTO `area` VALUES ('1162', '105', '3', '300758', '绥芬河市', '');
INSERT INTO `area` VALUES ('1163', '105', '3', '300759', '海林市', '');
INSERT INTO `area` VALUES ('1164', '105', '3', '300760', '宁安市', '');
INSERT INTO `area` VALUES ('1165', '105', '3', '300761', '穆棱市', '');
INSERT INTO `area` VALUES ('1166', '106', '3', '300762', '市辖区', '');
INSERT INTO `area` VALUES ('1167', '106', '3', '300763', '爱辉区', '');
INSERT INTO `area` VALUES ('1168', '106', '3', '300764', '嫩江县', '');
INSERT INTO `area` VALUES ('1169', '106', '3', '300765', '逊克县', '');
INSERT INTO `area` VALUES ('1170', '106', '3', '300766', '孙吴县', '');
INSERT INTO `area` VALUES ('1171', '106', '3', '300767', '北安市', '');
INSERT INTO `area` VALUES ('1172', '106', '3', '300768', '五大连池市', '');
INSERT INTO `area` VALUES ('1173', '107', '3', '300769', '市辖区', '');
INSERT INTO `area` VALUES ('1174', '107', '3', '300770', '北林区', '');
INSERT INTO `area` VALUES ('1175', '107', '3', '300771', '望奎县', '');
INSERT INTO `area` VALUES ('1176', '107', '3', '300772', '兰西县', '');
INSERT INTO `area` VALUES ('1177', '107', '3', '300773', '青冈县', '');
INSERT INTO `area` VALUES ('1178', '107', '3', '300774', '庆安县', '');
INSERT INTO `area` VALUES ('1179', '107', '3', '300775', '明水县', '');
INSERT INTO `area` VALUES ('1180', '107', '3', '300776', '绥棱县', '');
INSERT INTO `area` VALUES ('1181', '107', '3', '300777', '安达市', '');
INSERT INTO `area` VALUES ('1182', '107', '3', '300778', '肇东市', '');
INSERT INTO `area` VALUES ('1183', '107', '3', '300779', '海伦市', '');
INSERT INTO `area` VALUES ('1184', '108', '3', '300780', '呼玛县', '');
INSERT INTO `area` VALUES ('1185', '108', '3', '300781', '塔河县', '');
INSERT INTO `area` VALUES ('1186', '108', '3', '300782', '漠河县', '');
INSERT INTO `area` VALUES ('1187', '109', '3', '300783', '黄浦区', '');
INSERT INTO `area` VALUES ('1188', '109', '3', '300784', '卢湾区', '');
INSERT INTO `area` VALUES ('1189', '109', '3', '300785', '徐汇区', '');
INSERT INTO `area` VALUES ('1190', '109', '3', '300786', '长宁区', '');
INSERT INTO `area` VALUES ('1191', '109', '3', '300787', '静安区', '');
INSERT INTO `area` VALUES ('1192', '109', '3', '300788', '普陀区', '');
INSERT INTO `area` VALUES ('1193', '109', '3', '300789', '闸北区', '');
INSERT INTO `area` VALUES ('1194', '109', '3', '300790', '虹口区', '');
INSERT INTO `area` VALUES ('1195', '109', '3', '300791', '杨浦区', '');
INSERT INTO `area` VALUES ('1196', '109', '3', '300792', '闵行区', '');
INSERT INTO `area` VALUES ('1197', '109', '3', '300793', '宝山区', '');
INSERT INTO `area` VALUES ('1198', '109', '3', '300794', '嘉定区', '');
INSERT INTO `area` VALUES ('1199', '109', '3', '300795', '浦东新区', '');
INSERT INTO `area` VALUES ('1200', '109', '3', '300796', '金山区', '');
INSERT INTO `area` VALUES ('1201', '109', '3', '300797', '松江区', '');
INSERT INTO `area` VALUES ('1202', '109', '3', '300798', '青浦区', '');
INSERT INTO `area` VALUES ('1203', '109', '3', '300799', '南汇区', '');
INSERT INTO `area` VALUES ('1204', '109', '3', '300800', '奉贤区', '');
INSERT INTO `area` VALUES ('1205', '110', '3', '300801', '崇明县', '');
INSERT INTO `area` VALUES ('1206', '111', '3', '300802', '市辖区', '');
INSERT INTO `area` VALUES ('1207', '111', '3', '300803', '玄武区', '');
INSERT INTO `area` VALUES ('1208', '111', '3', '300804', '白下区', '');
INSERT INTO `area` VALUES ('1209', '111', '3', '300805', '秦淮区', '');
INSERT INTO `area` VALUES ('1210', '111', '3', '300806', '建邺区', '');
INSERT INTO `area` VALUES ('1211', '111', '3', '300807', '鼓楼区', '');
INSERT INTO `area` VALUES ('1212', '111', '3', '300808', '下关区', '');
INSERT INTO `area` VALUES ('1213', '111', '3', '300809', '浦口区', '');
INSERT INTO `area` VALUES ('1214', '111', '3', '300810', '栖霞区', '');
INSERT INTO `area` VALUES ('1215', '111', '3', '300811', '雨花台区', '');
INSERT INTO `area` VALUES ('1216', '111', '3', '300812', '江宁区', '');
INSERT INTO `area` VALUES ('1217', '111', '3', '300813', '六合区', '');
INSERT INTO `area` VALUES ('1218', '111', '3', '300814', '溧水县', '');
INSERT INTO `area` VALUES ('1219', '111', '3', '300815', '高淳县', '');
INSERT INTO `area` VALUES ('1220', '112', '3', '300816', '市辖区', '');
INSERT INTO `area` VALUES ('1221', '112', '3', '300817', '崇安区', '');
INSERT INTO `area` VALUES ('1222', '112', '3', '300818', '南长区', '');
INSERT INTO `area` VALUES ('1223', '112', '3', '300819', '北塘区', '');
INSERT INTO `area` VALUES ('1224', '112', '3', '300820', '锡山区', '');
INSERT INTO `area` VALUES ('1225', '112', '3', '300821', '惠山区', '');
INSERT INTO `area` VALUES ('1226', '112', '3', '300822', '滨湖区', '');
INSERT INTO `area` VALUES ('1227', '112', '3', '300823', '江阴市', '');
INSERT INTO `area` VALUES ('1228', '112', '3', '300824', '宜兴市', '');
INSERT INTO `area` VALUES ('1229', '113', '3', '300825', '市辖区', '');
INSERT INTO `area` VALUES ('1230', '113', '3', '300826', '鼓楼区', '');
INSERT INTO `area` VALUES ('1231', '113', '3', '300827', '云龙区', '');
INSERT INTO `area` VALUES ('1232', '113', '3', '300828', '九里区', '');
INSERT INTO `area` VALUES ('1233', '113', '3', '300829', '贾汪区', '');
INSERT INTO `area` VALUES ('1234', '113', '3', '300830', '泉山区', '');
INSERT INTO `area` VALUES ('1235', '113', '3', '300831', '丰　县', '');
INSERT INTO `area` VALUES ('1236', '113', '3', '300832', '沛　县', '');
INSERT INTO `area` VALUES ('1237', '113', '3', '300833', '铜山县', '');
INSERT INTO `area` VALUES ('1238', '113', '3', '300834', '睢宁县', '');
INSERT INTO `area` VALUES ('1239', '113', '3', '300835', '新沂市', '');
INSERT INTO `area` VALUES ('1240', '113', '3', '300836', '邳州市', '');
INSERT INTO `area` VALUES ('1241', '114', '3', '300837', '市辖区', '');
INSERT INTO `area` VALUES ('1242', '114', '3', '300838', '天宁区', '');
INSERT INTO `area` VALUES ('1243', '114', '3', '300839', '钟楼区', '');
INSERT INTO `area` VALUES ('1244', '114', '3', '300840', '戚墅堰区', '');
INSERT INTO `area` VALUES ('1245', '114', '3', '300841', '新北区', '');
INSERT INTO `area` VALUES ('1246', '114', '3', '300842', '武进区', '');
INSERT INTO `area` VALUES ('1247', '114', '3', '300843', '溧阳市', '');
INSERT INTO `area` VALUES ('1248', '114', '3', '300844', '金坛市', '');
INSERT INTO `area` VALUES ('1249', '115', '3', '300845', '市辖区', '');
INSERT INTO `area` VALUES ('1250', '115', '3', '300846', '沧浪区', '');
INSERT INTO `area` VALUES ('1251', '115', '3', '300847', '平江区', '');
INSERT INTO `area` VALUES ('1252', '115', '3', '300848', '金阊区', '');
INSERT INTO `area` VALUES ('1253', '115', '3', '300849', '虎丘区', '');
INSERT INTO `area` VALUES ('1254', '115', '3', '300850', '吴中区', '');
INSERT INTO `area` VALUES ('1255', '115', '3', '300851', '相城区', '');
INSERT INTO `area` VALUES ('1256', '115', '3', '300852', '常熟市', '');
INSERT INTO `area` VALUES ('1257', '115', '3', '300853', '张家港市', '');
INSERT INTO `area` VALUES ('1258', '115', '3', '300854', '昆山市', '');
INSERT INTO `area` VALUES ('1259', '115', '3', '300855', '吴江市', '');
INSERT INTO `area` VALUES ('1260', '115', '3', '300856', '太仓市', '');
INSERT INTO `area` VALUES ('1261', '116', '3', '300857', '市辖区', '');
INSERT INTO `area` VALUES ('1262', '116', '3', '300858', '崇川区', '');
INSERT INTO `area` VALUES ('1263', '116', '3', '300859', '港闸区', '');
INSERT INTO `area` VALUES ('1264', '116', '3', '300860', '海安县', '');
INSERT INTO `area` VALUES ('1265', '116', '3', '300861', '如东县', '');
INSERT INTO `area` VALUES ('1266', '116', '3', '300862', '启东市', '');
INSERT INTO `area` VALUES ('1267', '116', '3', '300863', '如皋市', '');
INSERT INTO `area` VALUES ('1268', '116', '3', '300864', '通州市', '');
INSERT INTO `area` VALUES ('1269', '116', '3', '300865', '海门市', '');
INSERT INTO `area` VALUES ('1270', '117', '3', '300866', '市辖区', '');
INSERT INTO `area` VALUES ('1271', '117', '3', '300867', '连云区', '');
INSERT INTO `area` VALUES ('1272', '117', '3', '300868', '新浦区', '');
INSERT INTO `area` VALUES ('1273', '117', '3', '300869', '海州区', '');
INSERT INTO `area` VALUES ('1274', '117', '3', '300870', '赣榆县', '');
INSERT INTO `area` VALUES ('1275', '117', '3', '300871', '东海县', '');
INSERT INTO `area` VALUES ('1276', '117', '3', '300872', '灌云县', '');
INSERT INTO `area` VALUES ('1277', '117', '3', '300873', '灌南县', '');
INSERT INTO `area` VALUES ('1278', '118', '3', '300874', '市辖区', '');
INSERT INTO `area` VALUES ('1279', '118', '3', '300875', '清河区', '');
INSERT INTO `area` VALUES ('1280', '118', '3', '300876', '楚州区', '');
INSERT INTO `area` VALUES ('1281', '118', '3', '300877', '淮阴区', '');
INSERT INTO `area` VALUES ('1282', '118', '3', '300878', '清浦区', '');
INSERT INTO `area` VALUES ('1283', '118', '3', '300879', '涟水县', '');
INSERT INTO `area` VALUES ('1284', '118', '3', '300880', '洪泽县', '');
INSERT INTO `area` VALUES ('1285', '118', '3', '300881', '盱眙县', '');
INSERT INTO `area` VALUES ('1286', '118', '3', '300882', '金湖县', '');
INSERT INTO `area` VALUES ('1287', '119', '3', '300883', '市辖区', '');
INSERT INTO `area` VALUES ('1288', '119', '3', '300884', '亭湖区', '');
INSERT INTO `area` VALUES ('1289', '119', '3', '300885', '盐都区', '');
INSERT INTO `area` VALUES ('1290', '119', '3', '300886', '响水县', '');
INSERT INTO `area` VALUES ('1291', '119', '3', '300887', '滨海县', '');
INSERT INTO `area` VALUES ('1292', '119', '3', '300888', '阜宁县', '');
INSERT INTO `area` VALUES ('1293', '119', '3', '300889', '射阳县', '');
INSERT INTO `area` VALUES ('1294', '119', '3', '300890', '建湖县', '');
INSERT INTO `area` VALUES ('1295', '119', '3', '300891', '东台市', '');
INSERT INTO `area` VALUES ('1296', '119', '3', '300892', '大丰市', '');
INSERT INTO `area` VALUES ('1297', '120', '3', '300893', '市辖区', '');
INSERT INTO `area` VALUES ('1298', '120', '3', '300894', '广陵区', '');
INSERT INTO `area` VALUES ('1299', '120', '3', '300895', '邗江区', '');
INSERT INTO `area` VALUES ('1300', '120', '3', '300896', '郊　区', '');
INSERT INTO `area` VALUES ('1301', '120', '3', '300897', '宝应县', '');
INSERT INTO `area` VALUES ('1302', '120', '3', '300898', '仪征市', '');
INSERT INTO `area` VALUES ('1303', '120', '3', '300899', '高邮市', '');
INSERT INTO `area` VALUES ('1304', '120', '3', '300900', '江都市', '');
INSERT INTO `area` VALUES ('1305', '121', '3', '300901', '市辖区', '');
INSERT INTO `area` VALUES ('1306', '121', '3', '300902', '京口区', '');
INSERT INTO `area` VALUES ('1307', '121', '3', '300903', '润州区', '');
INSERT INTO `area` VALUES ('1308', '121', '3', '300904', '丹徒区', '');
INSERT INTO `area` VALUES ('1309', '121', '3', '300905', '丹阳市', '');
INSERT INTO `area` VALUES ('1310', '121', '3', '300906', '扬中市', '');
INSERT INTO `area` VALUES ('1311', '121', '3', '300907', '句容市', '');
INSERT INTO `area` VALUES ('1312', '122', '3', '300908', '市辖区', '');
INSERT INTO `area` VALUES ('1313', '122', '3', '300909', '海陵区', '');
INSERT INTO `area` VALUES ('1314', '122', '3', '300910', '高港区', '');
INSERT INTO `area` VALUES ('1315', '122', '3', '300911', '兴化市', '');
INSERT INTO `area` VALUES ('1316', '122', '3', '300912', '靖江市', '');
INSERT INTO `area` VALUES ('1317', '122', '3', '300913', '泰兴市', '');
INSERT INTO `area` VALUES ('1318', '122', '3', '300914', '姜堰市', '');
INSERT INTO `area` VALUES ('1319', '123', '3', '300915', '市辖区', '');
INSERT INTO `area` VALUES ('1320', '123', '3', '300916', '宿城区', '');
INSERT INTO `area` VALUES ('1321', '123', '3', '300917', '宿豫区', '');
INSERT INTO `area` VALUES ('1322', '123', '3', '300918', '沭阳县', '');
INSERT INTO `area` VALUES ('1323', '123', '3', '300919', '泗阳县', '');
INSERT INTO `area` VALUES ('1324', '123', '3', '300920', '泗洪县', '');
INSERT INTO `area` VALUES ('1325', '124', '3', '300921', '市辖区', '');
INSERT INTO `area` VALUES ('1326', '124', '3', '300922', '上城区', '');
INSERT INTO `area` VALUES ('1327', '124', '3', '300923', '下城区', '');
INSERT INTO `area` VALUES ('1328', '124', '3', '300924', '江干区', '');
INSERT INTO `area` VALUES ('1329', '124', '3', '300925', '拱墅区', '');
INSERT INTO `area` VALUES ('1330', '124', '3', '300926', '西湖区', '');
INSERT INTO `area` VALUES ('1331', '124', '3', '300927', '滨江区', '');
INSERT INTO `area` VALUES ('1332', '124', '3', '300928', '萧山区', '');
INSERT INTO `area` VALUES ('1333', '124', '3', '300929', '余杭区', '');
INSERT INTO `area` VALUES ('1334', '124', '3', '300930', '桐庐县', '');
INSERT INTO `area` VALUES ('1335', '124', '3', '300931', '淳安县', '');
INSERT INTO `area` VALUES ('1336', '124', '3', '300932', '建德市', '');
INSERT INTO `area` VALUES ('1337', '124', '3', '300933', '富阳市', '');
INSERT INTO `area` VALUES ('1338', '124', '3', '300934', '临安市', '');
INSERT INTO `area` VALUES ('1339', '125', '3', '300935', '市辖区', '');
INSERT INTO `area` VALUES ('1340', '125', '3', '300936', '海曙区', '');
INSERT INTO `area` VALUES ('1341', '125', '3', '300937', '江东区', '');
INSERT INTO `area` VALUES ('1342', '125', '3', '300938', '江北区', '');
INSERT INTO `area` VALUES ('1343', '125', '3', '300939', '北仑区', '');
INSERT INTO `area` VALUES ('1344', '125', '3', '300940', '镇海区', '');
INSERT INTO `area` VALUES ('1345', '125', '3', '300941', '鄞州区', '');
INSERT INTO `area` VALUES ('1346', '125', '3', '300942', '象山县', '');
INSERT INTO `area` VALUES ('1347', '125', '3', '300943', '宁海县', '');
INSERT INTO `area` VALUES ('1348', '125', '3', '300944', '余姚市', '');
INSERT INTO `area` VALUES ('1349', '125', '3', '300945', '慈溪市', '');
INSERT INTO `area` VALUES ('1350', '125', '3', '300946', '奉化市', '');
INSERT INTO `area` VALUES ('1351', '126', '3', '300947', '市辖区', '');
INSERT INTO `area` VALUES ('1352', '126', '3', '300948', '鹿城区', '');
INSERT INTO `area` VALUES ('1353', '126', '3', '300949', '龙湾区', '');
INSERT INTO `area` VALUES ('1354', '126', '3', '300950', '瓯海区', '');
INSERT INTO `area` VALUES ('1355', '126', '3', '300951', '洞头县', '');
INSERT INTO `area` VALUES ('1356', '126', '3', '300952', '永嘉县', '');
INSERT INTO `area` VALUES ('1357', '126', '3', '300953', '平阳县', '');
INSERT INTO `area` VALUES ('1358', '126', '3', '300954', '苍南县', '');
INSERT INTO `area` VALUES ('1359', '126', '3', '300955', '文成县', '');
INSERT INTO `area` VALUES ('1360', '126', '3', '300956', '泰顺县', '');
INSERT INTO `area` VALUES ('1361', '126', '3', '300957', '瑞安市', '');
INSERT INTO `area` VALUES ('1362', '126', '3', '300958', '乐清市', '');
INSERT INTO `area` VALUES ('1363', '127', '3', '300959', '市辖区', '');
INSERT INTO `area` VALUES ('1364', '127', '3', '300960', '秀城区', '');
INSERT INTO `area` VALUES ('1365', '127', '3', '300961', '秀洲区', '');
INSERT INTO `area` VALUES ('1366', '127', '3', '300962', '嘉善县', '');
INSERT INTO `area` VALUES ('1367', '127', '3', '300963', '海盐县', '');
INSERT INTO `area` VALUES ('1368', '127', '3', '300964', '海宁市', '');
INSERT INTO `area` VALUES ('1369', '127', '3', '300965', '平湖市', '');
INSERT INTO `area` VALUES ('1370', '127', '3', '300966', '桐乡市', '');
INSERT INTO `area` VALUES ('1371', '128', '3', '300967', '市辖区', '');
INSERT INTO `area` VALUES ('1372', '128', '3', '300968', '吴兴区', '');
INSERT INTO `area` VALUES ('1373', '128', '3', '300969', '南浔区', '');
INSERT INTO `area` VALUES ('1374', '128', '3', '300970', '德清县', '');
INSERT INTO `area` VALUES ('1375', '128', '3', '300971', '长兴县', '');
INSERT INTO `area` VALUES ('1376', '128', '3', '300972', '安吉县', '');
INSERT INTO `area` VALUES ('1377', '129', '3', '300973', '市辖区', '');
INSERT INTO `area` VALUES ('1378', '129', '3', '300974', '越城区', '');
INSERT INTO `area` VALUES ('1379', '129', '3', '300975', '绍兴县', '');
INSERT INTO `area` VALUES ('1380', '129', '3', '300976', '新昌县', '');
INSERT INTO `area` VALUES ('1381', '129', '3', '300977', '诸暨市', '');
INSERT INTO `area` VALUES ('1382', '129', '3', '300978', '上虞市', '');
INSERT INTO `area` VALUES ('1383', '129', '3', '300979', '嵊州市', '');
INSERT INTO `area` VALUES ('1384', '130', '3', '300980', '市辖区', '');
INSERT INTO `area` VALUES ('1385', '130', '3', '300981', '婺城区', '');
INSERT INTO `area` VALUES ('1386', '130', '3', '300982', '金东区', '');
INSERT INTO `area` VALUES ('1387', '130', '3', '300983', '武义县', '');
INSERT INTO `area` VALUES ('1388', '130', '3', '300984', '浦江县', '');
INSERT INTO `area` VALUES ('1389', '130', '3', '300985', '磐安县', '');
INSERT INTO `area` VALUES ('1390', '130', '3', '300986', '兰溪市', '');
INSERT INTO `area` VALUES ('1391', '130', '3', '300987', '义乌市', '');
INSERT INTO `area` VALUES ('1392', '130', '3', '300988', '东阳市', '');
INSERT INTO `area` VALUES ('1393', '130', '3', '300989', '永康市', '');
INSERT INTO `area` VALUES ('1394', '131', '3', '300990', '市辖区', '');
INSERT INTO `area` VALUES ('1395', '131', '3', '300991', '柯城区', '');
INSERT INTO `area` VALUES ('1396', '131', '3', '300992', '衢江区', '');
INSERT INTO `area` VALUES ('1397', '131', '3', '300993', '常山县', '');
INSERT INTO `area` VALUES ('1398', '131', '3', '300994', '开化县', '');
INSERT INTO `area` VALUES ('1399', '131', '3', '300995', '龙游县', '');
INSERT INTO `area` VALUES ('1400', '131', '3', '300996', '江山市', '');
INSERT INTO `area` VALUES ('1401', '132', '3', '300997', '市辖区', '');
INSERT INTO `area` VALUES ('1402', '132', '3', '300998', '定海区', '');
INSERT INTO `area` VALUES ('1403', '132', '3', '300999', '普陀区', '');
INSERT INTO `area` VALUES ('1404', '132', '3', '301000', '岱山县', '');
INSERT INTO `area` VALUES ('1405', '132', '3', '301001', '嵊泗县', '');
INSERT INTO `area` VALUES ('1406', '133', '3', '301002', '市辖区', '');
INSERT INTO `area` VALUES ('1407', '133', '3', '301003', '椒江区', '');
INSERT INTO `area` VALUES ('1408', '133', '3', '301004', '黄岩区', '');
INSERT INTO `area` VALUES ('1409', '133', '3', '301005', '路桥区', '');
INSERT INTO `area` VALUES ('1410', '133', '3', '301006', '玉环县', '');
INSERT INTO `area` VALUES ('1411', '133', '3', '301007', '三门县', '');
INSERT INTO `area` VALUES ('1412', '133', '3', '301008', '天台县', '');
INSERT INTO `area` VALUES ('1413', '133', '3', '301009', '仙居县', '');
INSERT INTO `area` VALUES ('1414', '133', '3', '301010', '温岭市', '');
INSERT INTO `area` VALUES ('1415', '133', '3', '301011', '临海市', '');
INSERT INTO `area` VALUES ('1416', '134', '3', '301012', '市辖区', '');
INSERT INTO `area` VALUES ('1417', '134', '3', '301013', '莲都区', '');
INSERT INTO `area` VALUES ('1418', '134', '3', '301014', '青田县', '');
INSERT INTO `area` VALUES ('1419', '134', '3', '301015', '缙云县', '');
INSERT INTO `area` VALUES ('1420', '134', '3', '301016', '遂昌县', '');
INSERT INTO `area` VALUES ('1421', '134', '3', '301017', '松阳县', '');
INSERT INTO `area` VALUES ('1422', '134', '3', '301018', '云和县', '');
INSERT INTO `area` VALUES ('1423', '134', '3', '301019', '庆元县', '');
INSERT INTO `area` VALUES ('1424', '134', '3', '301020', '景宁畲族自治县', '');
INSERT INTO `area` VALUES ('1425', '134', '3', '301021', '龙泉市', '');
INSERT INTO `area` VALUES ('1426', '135', '3', '301022', '市辖区', '');
INSERT INTO `area` VALUES ('1427', '135', '3', '301023', '瑶海区', '');
INSERT INTO `area` VALUES ('1428', '135', '3', '301024', '庐阳区', '');
INSERT INTO `area` VALUES ('1429', '135', '3', '301025', '蜀山区', '');
INSERT INTO `area` VALUES ('1430', '135', '3', '301026', '包河区', '');
INSERT INTO `area` VALUES ('1431', '135', '3', '301027', '长丰县', '');
INSERT INTO `area` VALUES ('1432', '135', '3', '301028', '肥东县', '');
INSERT INTO `area` VALUES ('1433', '135', '3', '301029', '肥西县', '');
INSERT INTO `area` VALUES ('1434', '136', '3', '301030', '市辖区', '');
INSERT INTO `area` VALUES ('1435', '136', '3', '301031', '镜湖区', '');
INSERT INTO `area` VALUES ('1436', '136', '3', '301032', '马塘区', '');
INSERT INTO `area` VALUES ('1437', '136', '3', '301033', '新芜区', '');
INSERT INTO `area` VALUES ('1438', '136', '3', '301034', '鸠江区', '');
INSERT INTO `area` VALUES ('1439', '136', '3', '301035', '芜湖县', '');
INSERT INTO `area` VALUES ('1440', '136', '3', '301036', '繁昌县', '');
INSERT INTO `area` VALUES ('1441', '136', '3', '301037', '南陵县', '');
INSERT INTO `area` VALUES ('1442', '137', '3', '301038', '市辖区', '');
INSERT INTO `area` VALUES ('1443', '137', '3', '301039', '龙子湖区', '');
INSERT INTO `area` VALUES ('1444', '137', '3', '301040', '蚌山区', '');
INSERT INTO `area` VALUES ('1445', '137', '3', '301041', '禹会区', '');
INSERT INTO `area` VALUES ('1446', '137', '3', '301042', '淮上区', '');
INSERT INTO `area` VALUES ('1447', '137', '3', '301043', '怀远县', '');
INSERT INTO `area` VALUES ('1448', '137', '3', '301044', '五河县', '');
INSERT INTO `area` VALUES ('1449', '137', '3', '301045', '固镇县', '');
INSERT INTO `area` VALUES ('1450', '138', '3', '301046', '市辖区', '');
INSERT INTO `area` VALUES ('1451', '138', '3', '301047', '大通区', '');
INSERT INTO `area` VALUES ('1452', '138', '3', '301048', '田家庵区', '');
INSERT INTO `area` VALUES ('1453', '138', '3', '301049', '谢家集区', '');
INSERT INTO `area` VALUES ('1454', '138', '3', '301050', '八公山区', '');
INSERT INTO `area` VALUES ('1455', '138', '3', '301051', '潘集区', '');
INSERT INTO `area` VALUES ('1456', '138', '3', '301052', '凤台县', '');
INSERT INTO `area` VALUES ('1457', '139', '3', '301053', '市辖区', '');
INSERT INTO `area` VALUES ('1458', '139', '3', '301054', '金家庄区', '');
INSERT INTO `area` VALUES ('1459', '139', '3', '301055', '花山区', '');
INSERT INTO `area` VALUES ('1460', '139', '3', '301056', '雨山区', '');
INSERT INTO `area` VALUES ('1461', '139', '3', '301057', '当涂县', '');
INSERT INTO `area` VALUES ('1462', '140', '3', '301058', '市辖区', '');
INSERT INTO `area` VALUES ('1463', '140', '3', '301059', '杜集区', '');
INSERT INTO `area` VALUES ('1464', '140', '3', '301060', '相山区', '');
INSERT INTO `area` VALUES ('1465', '140', '3', '301061', '烈山区', '');
INSERT INTO `area` VALUES ('1466', '140', '3', '301062', '濉溪县', '');
INSERT INTO `area` VALUES ('1467', '141', '3', '301063', '市辖区', '');
INSERT INTO `area` VALUES ('1468', '141', '3', '301064', '铜官山区', '');
INSERT INTO `area` VALUES ('1469', '141', '3', '301065', '狮子山区', '');
INSERT INTO `area` VALUES ('1470', '141', '3', '301066', '郊　区', '');
INSERT INTO `area` VALUES ('1471', '141', '3', '301067', '铜陵县', '');
INSERT INTO `area` VALUES ('1472', '142', '3', '301068', '市辖区', '');
INSERT INTO `area` VALUES ('1473', '142', '3', '301069', '迎江区', '');
INSERT INTO `area` VALUES ('1474', '142', '3', '301070', '大观区', '');
INSERT INTO `area` VALUES ('1475', '142', '3', '301071', '郊　区', '');
INSERT INTO `area` VALUES ('1476', '142', '3', '301072', '怀宁县', '');
INSERT INTO `area` VALUES ('1477', '142', '3', '301073', '枞阳县', '');
INSERT INTO `area` VALUES ('1478', '142', '3', '301074', '潜山县', '');
INSERT INTO `area` VALUES ('1479', '142', '3', '301075', '太湖县', '');
INSERT INTO `area` VALUES ('1480', '142', '3', '301076', '宿松县', '');
INSERT INTO `area` VALUES ('1481', '142', '3', '301077', '望江县', '');
INSERT INTO `area` VALUES ('1482', '142', '3', '301078', '岳西县', '');
INSERT INTO `area` VALUES ('1483', '142', '3', '301079', '桐城市', '');
INSERT INTO `area` VALUES ('1484', '143', '3', '301080', '市辖区', '');
INSERT INTO `area` VALUES ('1485', '143', '3', '301081', '屯溪区', '');
INSERT INTO `area` VALUES ('1486', '143', '3', '301082', '黄山区', '');
INSERT INTO `area` VALUES ('1487', '143', '3', '301083', '徽州区', '');
INSERT INTO `area` VALUES ('1488', '143', '3', '301084', '歙　县', '');
INSERT INTO `area` VALUES ('1489', '143', '3', '301085', '休宁县', '');
INSERT INTO `area` VALUES ('1490', '143', '3', '301086', '黟　县', '');
INSERT INTO `area` VALUES ('1491', '143', '3', '301087', '祁门县', '');
INSERT INTO `area` VALUES ('1492', '144', '3', '301088', '市辖区', '');
INSERT INTO `area` VALUES ('1493', '144', '3', '301089', '琅琊区', '');
INSERT INTO `area` VALUES ('1494', '144', '3', '301090', '南谯区', '');
INSERT INTO `area` VALUES ('1495', '144', '3', '301091', '来安县', '');
INSERT INTO `area` VALUES ('1496', '144', '3', '301092', '全椒县', '');
INSERT INTO `area` VALUES ('1497', '144', '3', '301093', '定远县', '');
INSERT INTO `area` VALUES ('1498', '144', '3', '301094', '凤阳县', '');
INSERT INTO `area` VALUES ('1499', '144', '3', '301095', '天长市', '');
INSERT INTO `area` VALUES ('1500', '144', '3', '301096', '明光市', '');
INSERT INTO `area` VALUES ('1501', '145', '3', '301097', '市辖区', '');
INSERT INTO `area` VALUES ('1502', '145', '3', '301098', '颍州区', '');
INSERT INTO `area` VALUES ('1503', '145', '3', '301099', '颍东区', '');
INSERT INTO `area` VALUES ('1504', '145', '3', '301100', '颍泉区', '');
INSERT INTO `area` VALUES ('1505', '145', '3', '301101', '临泉县', '');
INSERT INTO `area` VALUES ('1506', '145', '3', '301102', '太和县', '');
INSERT INTO `area` VALUES ('1507', '145', '3', '301103', '阜南县', '');
INSERT INTO `area` VALUES ('1508', '145', '3', '301104', '颍上县', '');
INSERT INTO `area` VALUES ('1509', '145', '3', '301105', '界首市', '');
INSERT INTO `area` VALUES ('1510', '146', '3', '301106', '市辖区', '');
INSERT INTO `area` VALUES ('1511', '146', '3', '301107', '墉桥区', '');
INSERT INTO `area` VALUES ('1512', '146', '3', '301108', '砀山县', '');
INSERT INTO `area` VALUES ('1513', '146', '3', '301109', '萧　县', '');
INSERT INTO `area` VALUES ('1514', '146', '3', '301110', '灵璧县', '');
INSERT INTO `area` VALUES ('1515', '146', '3', '301111', '泗　县', '');
INSERT INTO `area` VALUES ('1516', '147', '3', '301112', '市辖区', '');
INSERT INTO `area` VALUES ('1517', '147', '3', '301113', '居巢区', '');
INSERT INTO `area` VALUES ('1518', '147', '3', '301114', '庐江县', '');
INSERT INTO `area` VALUES ('1519', '147', '3', '301115', '无为县', '');
INSERT INTO `area` VALUES ('1520', '147', '3', '301116', '含山县', '');
INSERT INTO `area` VALUES ('1521', '147', '3', '301117', '和　县', '');
INSERT INTO `area` VALUES ('1522', '148', '3', '301118', '市辖区', '');
INSERT INTO `area` VALUES ('1523', '148', '3', '301119', '金安区', '');
INSERT INTO `area` VALUES ('1524', '148', '3', '301120', '裕安区', '');
INSERT INTO `area` VALUES ('1525', '148', '3', '301121', '寿　县', '');
INSERT INTO `area` VALUES ('1526', '148', '3', '301122', '霍邱县', '');
INSERT INTO `area` VALUES ('1527', '148', '3', '301123', '舒城县', '');
INSERT INTO `area` VALUES ('1528', '148', '3', '301124', '金寨县', '');
INSERT INTO `area` VALUES ('1529', '148', '3', '301125', '霍山县', '');
INSERT INTO `area` VALUES ('1530', '149', '3', '301126', '市辖区', '');
INSERT INTO `area` VALUES ('1531', '149', '3', '301127', '谯城区', '');
INSERT INTO `area` VALUES ('1532', '149', '3', '301128', '涡阳县', '');
INSERT INTO `area` VALUES ('1533', '149', '3', '301129', '蒙城县', '');
INSERT INTO `area` VALUES ('1534', '149', '3', '301130', '利辛县', '');
INSERT INTO `area` VALUES ('1535', '150', '3', '301131', '市辖区', '');
INSERT INTO `area` VALUES ('1536', '150', '3', '301132', '贵池区', '');
INSERT INTO `area` VALUES ('1537', '150', '3', '301133', '东至县', '');
INSERT INTO `area` VALUES ('1538', '150', '3', '301134', '石台县', '');
INSERT INTO `area` VALUES ('1539', '150', '3', '301135', '青阳县', '');
INSERT INTO `area` VALUES ('1540', '151', '3', '301136', '市辖区', '');
INSERT INTO `area` VALUES ('1541', '151', '3', '301137', '宣州区', '');
INSERT INTO `area` VALUES ('1542', '151', '3', '301138', '郎溪县', '');
INSERT INTO `area` VALUES ('1543', '151', '3', '301139', '广德县', '');
INSERT INTO `area` VALUES ('1544', '151', '3', '301140', '泾　县', '');
INSERT INTO `area` VALUES ('1545', '151', '3', '301141', '绩溪县', '');
INSERT INTO `area` VALUES ('1546', '151', '3', '301142', '旌德县', '');
INSERT INTO `area` VALUES ('1547', '151', '3', '301143', '宁国市', '');
INSERT INTO `area` VALUES ('1548', '152', '3', '301144', '市辖区', '');
INSERT INTO `area` VALUES ('1549', '152', '3', '301145', '鼓楼区', '');
INSERT INTO `area` VALUES ('1550', '152', '3', '301146', '台江区', '');
INSERT INTO `area` VALUES ('1551', '152', '3', '301147', '仓山区', '');
INSERT INTO `area` VALUES ('1552', '152', '3', '301148', '马尾区', '');
INSERT INTO `area` VALUES ('1553', '152', '3', '301149', '晋安区', '');
INSERT INTO `area` VALUES ('1554', '152', '3', '301150', '闽侯县', '');
INSERT INTO `area` VALUES ('1555', '152', '3', '301151', '连江县', '');
INSERT INTO `area` VALUES ('1556', '152', '3', '301152', '罗源县', '');
INSERT INTO `area` VALUES ('1557', '152', '3', '301153', '闽清县', '');
INSERT INTO `area` VALUES ('1558', '152', '3', '301154', '永泰县', '');
INSERT INTO `area` VALUES ('1559', '152', '3', '301155', '平潭县', '');
INSERT INTO `area` VALUES ('1560', '152', '3', '301156', '福清市', '');
INSERT INTO `area` VALUES ('1561', '152', '3', '301157', '长乐市', '');
INSERT INTO `area` VALUES ('1562', '153', '3', '301158', '市辖区', '');
INSERT INTO `area` VALUES ('1563', '153', '3', '301159', '思明区', '');
INSERT INTO `area` VALUES ('1564', '153', '3', '301160', '海沧区', '');
INSERT INTO `area` VALUES ('1565', '153', '3', '301161', '湖里区', '');
INSERT INTO `area` VALUES ('1566', '153', '3', '301162', '集美区', '');
INSERT INTO `area` VALUES ('1567', '153', '3', '301163', '同安区', '');
INSERT INTO `area` VALUES ('1568', '153', '3', '301164', '翔安区', '');
INSERT INTO `area` VALUES ('1569', '154', '3', '301165', '市辖区', '');
INSERT INTO `area` VALUES ('1570', '154', '3', '301166', '城厢区', '');
INSERT INTO `area` VALUES ('1571', '154', '3', '301167', '涵江区', '');
INSERT INTO `area` VALUES ('1572', '154', '3', '301168', '荔城区', '');
INSERT INTO `area` VALUES ('1573', '154', '3', '301169', '秀屿区', '');
INSERT INTO `area` VALUES ('1574', '154', '3', '301170', '仙游县', '');
INSERT INTO `area` VALUES ('1575', '155', '3', '301171', '市辖区', '');
INSERT INTO `area` VALUES ('1576', '155', '3', '301172', '梅列区', '');
INSERT INTO `area` VALUES ('1577', '155', '3', '301173', '三元区', '');
INSERT INTO `area` VALUES ('1578', '155', '3', '301174', '明溪县', '');
INSERT INTO `area` VALUES ('1579', '155', '3', '301175', '清流县', '');
INSERT INTO `area` VALUES ('1580', '155', '3', '301176', '宁化县', '');
INSERT INTO `area` VALUES ('1581', '155', '3', '301177', '大田县', '');
INSERT INTO `area` VALUES ('1582', '155', '3', '301178', '尤溪县', '');
INSERT INTO `area` VALUES ('1583', '155', '3', '301179', '沙　县', '');
INSERT INTO `area` VALUES ('1584', '155', '3', '301180', '将乐县', '');
INSERT INTO `area` VALUES ('1585', '155', '3', '301181', '泰宁县', '');
INSERT INTO `area` VALUES ('1586', '155', '3', '301182', '建宁县', '');
INSERT INTO `area` VALUES ('1587', '155', '3', '301183', '永安市', '');
INSERT INTO `area` VALUES ('1588', '156', '3', '301184', '市辖区', '');
INSERT INTO `area` VALUES ('1589', '156', '3', '301185', '鲤城区', '');
INSERT INTO `area` VALUES ('1590', '156', '3', '301186', '丰泽区', '');
INSERT INTO `area` VALUES ('1591', '156', '3', '301187', '洛江区', '');
INSERT INTO `area` VALUES ('1592', '156', '3', '301188', '泉港区', '');
INSERT INTO `area` VALUES ('1593', '156', '3', '301189', '惠安县', '');
INSERT INTO `area` VALUES ('1594', '156', '3', '301190', '安溪县', '');
INSERT INTO `area` VALUES ('1595', '156', '3', '301191', '永春县', '');
INSERT INTO `area` VALUES ('1596', '156', '3', '301192', '德化县', '');
INSERT INTO `area` VALUES ('1597', '156', '3', '301193', '金门县', '');
INSERT INTO `area` VALUES ('1598', '156', '3', '301194', '石狮市', '');
INSERT INTO `area` VALUES ('1599', '156', '3', '301195', '晋江市', '');
INSERT INTO `area` VALUES ('1600', '156', '3', '301196', '南安市', '');
INSERT INTO `area` VALUES ('1601', '157', '3', '301197', '市辖区', '');
INSERT INTO `area` VALUES ('1602', '157', '3', '301198', '芗城区', '');
INSERT INTO `area` VALUES ('1603', '157', '3', '301199', '龙文区', '');
INSERT INTO `area` VALUES ('1604', '157', '3', '301200', '云霄县', '');
INSERT INTO `area` VALUES ('1605', '157', '3', '301201', '漳浦县', '');
INSERT INTO `area` VALUES ('1606', '157', '3', '301202', '诏安县', '');
INSERT INTO `area` VALUES ('1607', '157', '3', '301203', '长泰县', '');
INSERT INTO `area` VALUES ('1608', '157', '3', '301204', '东山县', '');
INSERT INTO `area` VALUES ('1609', '157', '3', '301205', '南靖县', '');
INSERT INTO `area` VALUES ('1610', '157', '3', '301206', '平和县', '');
INSERT INTO `area` VALUES ('1611', '157', '3', '301207', '华安县', '');
INSERT INTO `area` VALUES ('1612', '157', '3', '301208', '龙海市', '');
INSERT INTO `area` VALUES ('1613', '158', '3', '301209', '市辖区', '');
INSERT INTO `area` VALUES ('1614', '158', '3', '301210', '延平区', '');
INSERT INTO `area` VALUES ('1615', '158', '3', '301211', '顺昌县', '');
INSERT INTO `area` VALUES ('1616', '158', '3', '301212', '浦城县', '');
INSERT INTO `area` VALUES ('1617', '158', '3', '301213', '光泽县', '');
INSERT INTO `area` VALUES ('1618', '158', '3', '301214', '松溪县', '');
INSERT INTO `area` VALUES ('1619', '158', '3', '301215', '政和县', '');
INSERT INTO `area` VALUES ('1620', '158', '3', '301216', '邵武市', '');
INSERT INTO `area` VALUES ('1621', '158', '3', '301217', '武夷山市', '');
INSERT INTO `area` VALUES ('1622', '158', '3', '301218', '建瓯市', '');
INSERT INTO `area` VALUES ('1623', '158', '3', '301219', '建阳市', '');
INSERT INTO `area` VALUES ('1624', '159', '3', '301220', '市辖区', '');
INSERT INTO `area` VALUES ('1625', '159', '3', '301221', '新罗区', '');
INSERT INTO `area` VALUES ('1626', '159', '3', '301222', '长汀县', '');
INSERT INTO `area` VALUES ('1627', '159', '3', '301223', '永定县', '');
INSERT INTO `area` VALUES ('1628', '159', '3', '301224', '上杭县', '');
INSERT INTO `area` VALUES ('1629', '159', '3', '301225', '武平县', '');
INSERT INTO `area` VALUES ('1630', '159', '3', '301226', '连城县', '');
INSERT INTO `area` VALUES ('1631', '159', '3', '301227', '漳平市', '');
INSERT INTO `area` VALUES ('1632', '160', '3', '301228', '市辖区', '');
INSERT INTO `area` VALUES ('1633', '160', '3', '301229', '蕉城区', '');
INSERT INTO `area` VALUES ('1634', '160', '3', '301230', '霞浦县', '');
INSERT INTO `area` VALUES ('1635', '160', '3', '301231', '古田县', '');
INSERT INTO `area` VALUES ('1636', '160', '3', '301232', '屏南县', '');
INSERT INTO `area` VALUES ('1637', '160', '3', '301233', '寿宁县', '');
INSERT INTO `area` VALUES ('1638', '160', '3', '301234', '周宁县', '');
INSERT INTO `area` VALUES ('1639', '160', '3', '301235', '柘荣县', '');
INSERT INTO `area` VALUES ('1640', '160', '3', '301236', '福安市', '');
INSERT INTO `area` VALUES ('1641', '160', '3', '301237', '福鼎市', '');
INSERT INTO `area` VALUES ('1642', '161', '3', '301238', '市辖区', '');
INSERT INTO `area` VALUES ('1643', '161', '3', '301239', '东湖区', '');
INSERT INTO `area` VALUES ('1644', '161', '3', '301240', '西湖区', '');
INSERT INTO `area` VALUES ('1645', '161', '3', '301241', '青云谱区', '');
INSERT INTO `area` VALUES ('1646', '161', '3', '301242', '湾里区', '');
INSERT INTO `area` VALUES ('1647', '161', '3', '301243', '青山湖区', '');
INSERT INTO `area` VALUES ('1648', '161', '3', '301244', '南昌县', '');
INSERT INTO `area` VALUES ('1649', '161', '3', '301245', '新建县', '');
INSERT INTO `area` VALUES ('1650', '161', '3', '301246', '安义县', '');
INSERT INTO `area` VALUES ('1651', '161', '3', '301247', '进贤县', '');
INSERT INTO `area` VALUES ('1652', '162', '3', '301248', '市辖区', '');
INSERT INTO `area` VALUES ('1653', '162', '3', '301249', '昌江区', '');
INSERT INTO `area` VALUES ('1654', '162', '3', '301250', '珠山区', '');
INSERT INTO `area` VALUES ('1655', '162', '3', '301251', '浮梁县', '');
INSERT INTO `area` VALUES ('1656', '162', '3', '301252', '乐平市', '');
INSERT INTO `area` VALUES ('1657', '163', '3', '301253', '市辖区', '');
INSERT INTO `area` VALUES ('1658', '163', '3', '301254', '安源区', '');
INSERT INTO `area` VALUES ('1659', '163', '3', '301255', '湘东区', '');
INSERT INTO `area` VALUES ('1660', '163', '3', '301256', '莲花县', '');
INSERT INTO `area` VALUES ('1661', '163', '3', '301257', '上栗县', '');
INSERT INTO `area` VALUES ('1662', '163', '3', '301258', '芦溪县', '');
INSERT INTO `area` VALUES ('1663', '164', '3', '301259', '市辖区', '');
INSERT INTO `area` VALUES ('1664', '164', '3', '301260', '庐山区', '');
INSERT INTO `area` VALUES ('1665', '164', '3', '301261', '浔阳区', '');
INSERT INTO `area` VALUES ('1666', '164', '3', '301262', '九江县', '');
INSERT INTO `area` VALUES ('1667', '164', '3', '301263', '武宁县', '');
INSERT INTO `area` VALUES ('1668', '164', '3', '301264', '修水县', '');
INSERT INTO `area` VALUES ('1669', '164', '3', '301265', '永修县', '');
INSERT INTO `area` VALUES ('1670', '164', '3', '301266', '德安县', '');
INSERT INTO `area` VALUES ('1671', '164', '3', '301267', '星子县', '');
INSERT INTO `area` VALUES ('1672', '164', '3', '301268', '都昌县', '');
INSERT INTO `area` VALUES ('1673', '164', '3', '301269', '湖口县', '');
INSERT INTO `area` VALUES ('1674', '164', '3', '301270', '彭泽县', '');
INSERT INTO `area` VALUES ('1675', '164', '3', '301271', '瑞昌市', '');
INSERT INTO `area` VALUES ('1676', '165', '3', '301272', '市辖区', '');
INSERT INTO `area` VALUES ('1677', '165', '3', '301273', '渝水区', '');
INSERT INTO `area` VALUES ('1678', '165', '3', '301274', '分宜县', '');
INSERT INTO `area` VALUES ('1679', '166', '3', '301275', '市辖区', '');
INSERT INTO `area` VALUES ('1680', '166', '3', '301276', '月湖区', '');
INSERT INTO `area` VALUES ('1681', '166', '3', '301277', '余江县', '');
INSERT INTO `area` VALUES ('1682', '166', '3', '301278', '贵溪市', '');
INSERT INTO `area` VALUES ('1683', '167', '3', '301279', '市辖区', '');
INSERT INTO `area` VALUES ('1684', '167', '3', '301280', '章贡区', '');
INSERT INTO `area` VALUES ('1685', '167', '3', '301281', '赣　县', '');
INSERT INTO `area` VALUES ('1686', '167', '3', '301282', '信丰县', '');
INSERT INTO `area` VALUES ('1687', '167', '3', '301283', '大余县', '');
INSERT INTO `area` VALUES ('1688', '167', '3', '301284', '上犹县', '');
INSERT INTO `area` VALUES ('1689', '167', '3', '301285', '崇义县', '');
INSERT INTO `area` VALUES ('1690', '167', '3', '301286', '安远县', '');
INSERT INTO `area` VALUES ('1691', '167', '3', '301287', '龙南县', '');
INSERT INTO `area` VALUES ('1692', '167', '3', '301288', '定南县', '');
INSERT INTO `area` VALUES ('1693', '167', '3', '301289', '全南县', '');
INSERT INTO `area` VALUES ('1694', '167', '3', '301290', '宁都县', '');
INSERT INTO `area` VALUES ('1695', '167', '3', '301291', '于都县', '');
INSERT INTO `area` VALUES ('1696', '167', '3', '301292', '兴国县', '');
INSERT INTO `area` VALUES ('1697', '167', '3', '301293', '会昌县', '');
INSERT INTO `area` VALUES ('1698', '167', '3', '301294', '寻乌县', '');
INSERT INTO `area` VALUES ('1699', '167', '3', '301295', '石城县', '');
INSERT INTO `area` VALUES ('1700', '167', '3', '301296', '瑞金市', '');
INSERT INTO `area` VALUES ('1701', '167', '3', '301297', '南康市', '');
INSERT INTO `area` VALUES ('1702', '168', '3', '301298', '市辖区', '');
INSERT INTO `area` VALUES ('1703', '168', '3', '301299', '吉州区', '');
INSERT INTO `area` VALUES ('1704', '168', '3', '301300', '青原区', '');
INSERT INTO `area` VALUES ('1705', '168', '3', '301301', '吉安县', '');
INSERT INTO `area` VALUES ('1706', '168', '3', '301302', '吉水县', '');
INSERT INTO `area` VALUES ('1707', '168', '3', '301303', '峡江县', '');
INSERT INTO `area` VALUES ('1708', '168', '3', '301304', '新干县', '');
INSERT INTO `area` VALUES ('1709', '168', '3', '301305', '永丰县', '');
INSERT INTO `area` VALUES ('1710', '168', '3', '301306', '泰和县', '');
INSERT INTO `area` VALUES ('1711', '168', '3', '301307', '遂川县', '');
INSERT INTO `area` VALUES ('1712', '168', '3', '301308', '万安县', '');
INSERT INTO `area` VALUES ('1713', '168', '3', '301309', '安福县', '');
INSERT INTO `area` VALUES ('1714', '168', '3', '301310', '永新县', '');
INSERT INTO `area` VALUES ('1715', '168', '3', '301311', '井冈山市', '');
INSERT INTO `area` VALUES ('1716', '169', '3', '301312', '市辖区', '');
INSERT INTO `area` VALUES ('1717', '169', '3', '301313', '袁州区', '');
INSERT INTO `area` VALUES ('1718', '169', '3', '301314', '奉新县', '');
INSERT INTO `area` VALUES ('1719', '169', '3', '301315', '万载县', '');
INSERT INTO `area` VALUES ('1720', '169', '3', '301316', '上高县', '');
INSERT INTO `area` VALUES ('1721', '169', '3', '301317', '宜丰县', '');
INSERT INTO `area` VALUES ('1722', '169', '3', '301318', '靖安县', '');
INSERT INTO `area` VALUES ('1723', '169', '3', '301319', '铜鼓县', '');
INSERT INTO `area` VALUES ('1724', '169', '3', '301320', '丰城市', '');
INSERT INTO `area` VALUES ('1725', '169', '3', '301321', '樟树市', '');
INSERT INTO `area` VALUES ('1726', '169', '3', '301322', '高安市', '');
INSERT INTO `area` VALUES ('1727', '170', '3', '301323', '市辖区', '');
INSERT INTO `area` VALUES ('1728', '170', '3', '301324', '临川区', '');
INSERT INTO `area` VALUES ('1729', '170', '3', '301325', '南城县', '');
INSERT INTO `area` VALUES ('1730', '170', '3', '301326', '黎川县', '');
INSERT INTO `area` VALUES ('1731', '170', '3', '301327', '南丰县', '');
INSERT INTO `area` VALUES ('1732', '170', '3', '301328', '崇仁县', '');
INSERT INTO `area` VALUES ('1733', '170', '3', '301329', '乐安县', '');
INSERT INTO `area` VALUES ('1734', '170', '3', '301330', '宜黄县', '');
INSERT INTO `area` VALUES ('1735', '170', '3', '301331', '金溪县', '');
INSERT INTO `area` VALUES ('1736', '170', '3', '301332', '资溪县', '');
INSERT INTO `area` VALUES ('1737', '170', '3', '301333', '东乡县', '');
INSERT INTO `area` VALUES ('1738', '170', '3', '301334', '广昌县', '');
INSERT INTO `area` VALUES ('1739', '171', '3', '301335', '市辖区', '');
INSERT INTO `area` VALUES ('1740', '171', '3', '301336', '信州区', '');
INSERT INTO `area` VALUES ('1741', '171', '3', '301337', '上饶县', '');
INSERT INTO `area` VALUES ('1742', '171', '3', '301338', '广丰县', '');
INSERT INTO `area` VALUES ('1743', '171', '3', '301339', '玉山县', '');
INSERT INTO `area` VALUES ('1744', '171', '3', '301340', '铅山县', '');
INSERT INTO `area` VALUES ('1745', '171', '3', '301341', '横峰县', '');
INSERT INTO `area` VALUES ('1746', '171', '3', '301342', '弋阳县', '');
INSERT INTO `area` VALUES ('1747', '171', '3', '301343', '余干县', '');
INSERT INTO `area` VALUES ('1748', '171', '3', '301344', '鄱阳县', '');
INSERT INTO `area` VALUES ('1749', '171', '3', '301345', '万年县', '');
INSERT INTO `area` VALUES ('1750', '171', '3', '301346', '婺源县', '');
INSERT INTO `area` VALUES ('1751', '171', '3', '301347', '德兴市', '');
INSERT INTO `area` VALUES ('1752', '172', '3', '301348', '市辖区', '');
INSERT INTO `area` VALUES ('1753', '172', '3', '301349', '历下区', '');
INSERT INTO `area` VALUES ('1754', '172', '3', '301350', '市中区', '');
INSERT INTO `area` VALUES ('1755', '172', '3', '301351', '槐荫区', '');
INSERT INTO `area` VALUES ('1756', '172', '3', '301352', '天桥区', '');
INSERT INTO `area` VALUES ('1757', '172', '3', '301353', '历城区', '');
INSERT INTO `area` VALUES ('1758', '172', '3', '301354', '长清区', '');
INSERT INTO `area` VALUES ('1759', '172', '3', '301355', '平阴县', '');
INSERT INTO `area` VALUES ('1760', '172', '3', '301356', '济阳县', '');
INSERT INTO `area` VALUES ('1761', '172', '3', '301357', '商河县', '');
INSERT INTO `area` VALUES ('1762', '172', '3', '301358', '章丘市', '');
INSERT INTO `area` VALUES ('1763', '173', '3', '301359', '市辖区', '');
INSERT INTO `area` VALUES ('1764', '173', '3', '301360', '市南区', '');
INSERT INTO `area` VALUES ('1765', '173', '3', '301361', '市北区', '');
INSERT INTO `area` VALUES ('1766', '173', '3', '301362', '四方区', '');
INSERT INTO `area` VALUES ('1767', '173', '3', '301363', '黄岛区', '');
INSERT INTO `area` VALUES ('1768', '173', '3', '301364', '崂山区', '');
INSERT INTO `area` VALUES ('1769', '173', '3', '301365', '李沧区', '');
INSERT INTO `area` VALUES ('1770', '173', '3', '301366', '城阳区', '');
INSERT INTO `area` VALUES ('1771', '173', '3', '301367', '胶州市', '');
INSERT INTO `area` VALUES ('1772', '173', '3', '301368', '即墨市', '');
INSERT INTO `area` VALUES ('1773', '173', '3', '301369', '平度市', '');
INSERT INTO `area` VALUES ('1774', '173', '3', '301370', '胶南市', '');
INSERT INTO `area` VALUES ('1775', '173', '3', '301371', '莱西市', '');
INSERT INTO `area` VALUES ('1776', '174', '3', '301372', '市辖区', '');
INSERT INTO `area` VALUES ('1777', '174', '3', '301373', '淄川区', '');
INSERT INTO `area` VALUES ('1778', '174', '3', '301374', '张店区', '');
INSERT INTO `area` VALUES ('1779', '174', '3', '301375', '博山区', '');
INSERT INTO `area` VALUES ('1780', '174', '3', '301376', '临淄区', '');
INSERT INTO `area` VALUES ('1781', '174', '3', '301377', '周村区', '');
INSERT INTO `area` VALUES ('1782', '174', '3', '301378', '桓台县', '');
INSERT INTO `area` VALUES ('1783', '174', '3', '301379', '高青县', '');
INSERT INTO `area` VALUES ('1784', '174', '3', '301380', '沂源县', '');
INSERT INTO `area` VALUES ('1785', '175', '3', '301381', '市辖区', '');
INSERT INTO `area` VALUES ('1786', '175', '3', '301382', '市中区', '');
INSERT INTO `area` VALUES ('1787', '175', '3', '301383', '薛城区', '');
INSERT INTO `area` VALUES ('1788', '175', '3', '301384', '峄城区', '');
INSERT INTO `area` VALUES ('1789', '175', '3', '301385', '台儿庄区', '');
INSERT INTO `area` VALUES ('1790', '175', '3', '301386', '山亭区', '');
INSERT INTO `area` VALUES ('1791', '175', '3', '301387', '滕州市', '');
INSERT INTO `area` VALUES ('1792', '176', '3', '301388', '市辖区', '');
INSERT INTO `area` VALUES ('1793', '176', '3', '301389', '东营区', '');
INSERT INTO `area` VALUES ('1794', '176', '3', '301390', '河口区', '');
INSERT INTO `area` VALUES ('1795', '176', '3', '301391', '垦利县', '');
INSERT INTO `area` VALUES ('1796', '176', '3', '301392', '利津县', '');
INSERT INTO `area` VALUES ('1797', '176', '3', '301393', '广饶县', '');
INSERT INTO `area` VALUES ('1798', '177', '3', '301394', '市辖区', '');
INSERT INTO `area` VALUES ('1799', '177', '3', '301395', '芝罘区', '');
INSERT INTO `area` VALUES ('1800', '177', '3', '301396', '福山区', '');
INSERT INTO `area` VALUES ('1801', '177', '3', '301397', '牟平区', '');
INSERT INTO `area` VALUES ('1802', '177', '3', '301398', '莱山区', '');
INSERT INTO `area` VALUES ('1803', '177', '3', '301399', '长岛县', '');
INSERT INTO `area` VALUES ('1804', '177', '3', '301400', '龙口市', '');
INSERT INTO `area` VALUES ('1805', '177', '3', '301401', '莱阳市', '');
INSERT INTO `area` VALUES ('1806', '177', '3', '301402', '莱州市', '');
INSERT INTO `area` VALUES ('1807', '177', '3', '301403', '蓬莱市', '');
INSERT INTO `area` VALUES ('1808', '177', '3', '301404', '招远市', '');
INSERT INTO `area` VALUES ('1809', '177', '3', '301405', '栖霞市', '');
INSERT INTO `area` VALUES ('1810', '177', '3', '301406', '海阳市', '');
INSERT INTO `area` VALUES ('1811', '178', '3', '301407', '市辖区', '');
INSERT INTO `area` VALUES ('1812', '178', '3', '301408', '潍城区', '');
INSERT INTO `area` VALUES ('1813', '178', '3', '301409', '寒亭区', '');
INSERT INTO `area` VALUES ('1814', '178', '3', '301410', '坊子区', '');
INSERT INTO `area` VALUES ('1815', '178', '3', '301411', '奎文区', '');
INSERT INTO `area` VALUES ('1816', '178', '3', '301412', '临朐县', '');
INSERT INTO `area` VALUES ('1817', '178', '3', '301413', '昌乐县', '');
INSERT INTO `area` VALUES ('1818', '178', '3', '301414', '青州市', '');
INSERT INTO `area` VALUES ('1819', '178', '3', '301415', '诸城市', '');
INSERT INTO `area` VALUES ('1820', '178', '3', '301416', '寿光市', '');
INSERT INTO `area` VALUES ('1821', '178', '3', '301417', '安丘市', '');
INSERT INTO `area` VALUES ('1822', '178', '3', '301418', '高密市', '');
INSERT INTO `area` VALUES ('1823', '178', '3', '301419', '昌邑市', '');
INSERT INTO `area` VALUES ('1824', '179', '3', '301420', '市辖区', '');
INSERT INTO `area` VALUES ('1825', '179', '3', '301421', '市中区', '');
INSERT INTO `area` VALUES ('1826', '179', '3', '301422', '任城区', '');
INSERT INTO `area` VALUES ('1827', '179', '3', '301423', '微山县', '');
INSERT INTO `area` VALUES ('1828', '179', '3', '301424', '鱼台县', '');
INSERT INTO `area` VALUES ('1829', '179', '3', '301425', '金乡县', '');
INSERT INTO `area` VALUES ('1830', '179', '3', '301426', '嘉祥县', '');
INSERT INTO `area` VALUES ('1831', '179', '3', '301427', '汶上县', '');
INSERT INTO `area` VALUES ('1832', '179', '3', '301428', '泗水县', '');
INSERT INTO `area` VALUES ('1833', '179', '3', '301429', '梁山县', '');
INSERT INTO `area` VALUES ('1834', '179', '3', '301430', '曲阜市', '');
INSERT INTO `area` VALUES ('1835', '179', '3', '301431', '兖州市', '');
INSERT INTO `area` VALUES ('1836', '179', '3', '301432', '邹城市', '');
INSERT INTO `area` VALUES ('1837', '180', '3', '301433', '市辖区', '');
INSERT INTO `area` VALUES ('1838', '180', '3', '301434', '泰山区', '');
INSERT INTO `area` VALUES ('1839', '180', '3', '301435', '岱岳区', '');
INSERT INTO `area` VALUES ('1840', '180', '3', '301436', '宁阳县', '');
INSERT INTO `area` VALUES ('1841', '180', '3', '301437', '东平县', '');
INSERT INTO `area` VALUES ('1842', '180', '3', '301438', '新泰市', '');
INSERT INTO `area` VALUES ('1843', '180', '3', '301439', '肥城市', '');
INSERT INTO `area` VALUES ('1844', '181', '3', '301440', '市辖区', '');
INSERT INTO `area` VALUES ('1845', '181', '3', '301441', '环翠区', '');
INSERT INTO `area` VALUES ('1846', '181', '3', '301442', '文登市', '');
INSERT INTO `area` VALUES ('1847', '181', '3', '301443', '荣成市', '');
INSERT INTO `area` VALUES ('1848', '181', '3', '301444', '乳山市', '');
INSERT INTO `area` VALUES ('1849', '182', '3', '301445', '市辖区', '');
INSERT INTO `area` VALUES ('1850', '182', '3', '301446', '东港区', '');
INSERT INTO `area` VALUES ('1851', '182', '3', '301447', '岚山区', '');
INSERT INTO `area` VALUES ('1852', '182', '3', '301448', '五莲县', '');
INSERT INTO `area` VALUES ('1853', '182', '3', '301449', '莒　县', '');
INSERT INTO `area` VALUES ('1854', '183', '3', '301450', '市辖区', '');
INSERT INTO `area` VALUES ('1855', '183', '3', '301451', '莱城区', '');
INSERT INTO `area` VALUES ('1856', '183', '3', '301452', '钢城区', '');
INSERT INTO `area` VALUES ('1857', '184', '3', '301453', '市辖区', '');
INSERT INTO `area` VALUES ('1858', '184', '3', '301454', '兰山区', '');
INSERT INTO `area` VALUES ('1859', '184', '3', '301455', '罗庄区', '');
INSERT INTO `area` VALUES ('1860', '184', '3', '301456', '河东区', '');
INSERT INTO `area` VALUES ('1861', '184', '3', '301457', '沂南县', '');
INSERT INTO `area` VALUES ('1862', '184', '3', '301458', '郯城县', '');
INSERT INTO `area` VALUES ('1863', '184', '3', '301459', '沂水县', '');
INSERT INTO `area` VALUES ('1864', '184', '3', '301460', '苍山县', '');
INSERT INTO `area` VALUES ('1865', '184', '3', '301461', '费　县', '');
INSERT INTO `area` VALUES ('1866', '184', '3', '301462', '平邑县', '');
INSERT INTO `area` VALUES ('1867', '184', '3', '301463', '莒南县', '');
INSERT INTO `area` VALUES ('1868', '184', '3', '301464', '蒙阴县', '');
INSERT INTO `area` VALUES ('1869', '184', '3', '301465', '临沭县', '');
INSERT INTO `area` VALUES ('1870', '185', '3', '301466', '市辖区', '');
INSERT INTO `area` VALUES ('1871', '185', '3', '301467', '德城区', '');
INSERT INTO `area` VALUES ('1872', '185', '3', '301468', '陵　县', '');
INSERT INTO `area` VALUES ('1873', '185', '3', '301469', '宁津县', '');
INSERT INTO `area` VALUES ('1874', '185', '3', '301470', '庆云县', '');
INSERT INTO `area` VALUES ('1875', '185', '3', '301471', '临邑县', '');
INSERT INTO `area` VALUES ('1876', '185', '3', '301472', '齐河县', '');
INSERT INTO `area` VALUES ('1877', '185', '3', '301473', '平原县', '');
INSERT INTO `area` VALUES ('1878', '185', '3', '301474', '夏津县', '');
INSERT INTO `area` VALUES ('1879', '185', '3', '301475', '武城县', '');
INSERT INTO `area` VALUES ('1880', '185', '3', '301476', '乐陵市', '');
INSERT INTO `area` VALUES ('1881', '185', '3', '301477', '禹城市', '');
INSERT INTO `area` VALUES ('1882', '186', '3', '301478', '市辖区', '');
INSERT INTO `area` VALUES ('1883', '186', '3', '301479', '东昌府区', '');
INSERT INTO `area` VALUES ('1884', '186', '3', '301480', '阳谷县', '');
INSERT INTO `area` VALUES ('1885', '186', '3', '301481', '莘　县', '');
INSERT INTO `area` VALUES ('1886', '186', '3', '301482', '茌平县', '');
INSERT INTO `area` VALUES ('1887', '186', '3', '301483', '东阿县', '');
INSERT INTO `area` VALUES ('1888', '186', '3', '301484', '冠　县', '');
INSERT INTO `area` VALUES ('1889', '186', '3', '301485', '高唐县', '');
INSERT INTO `area` VALUES ('1890', '186', '3', '301486', '临清市', '');
INSERT INTO `area` VALUES ('1891', '187', '3', '301487', '市辖区', '');
INSERT INTO `area` VALUES ('1892', '187', '3', '301488', '滨城区', '');
INSERT INTO `area` VALUES ('1893', '187', '3', '301489', '惠民县', '');
INSERT INTO `area` VALUES ('1894', '187', '3', '301490', '阳信县', '');
INSERT INTO `area` VALUES ('1895', '187', '3', '301491', '无棣县', '');
INSERT INTO `area` VALUES ('1896', '187', '3', '301492', '沾化县', '');
INSERT INTO `area` VALUES ('1897', '187', '3', '301493', '博兴县', '');
INSERT INTO `area` VALUES ('1898', '187', '3', '301494', '邹平县', '');
INSERT INTO `area` VALUES ('1899', '188', '3', '301495', '市辖区', '');
INSERT INTO `area` VALUES ('1900', '188', '3', '301496', '牡丹区', '');
INSERT INTO `area` VALUES ('1901', '188', '3', '301497', '曹　县', '');
INSERT INTO `area` VALUES ('1902', '188', '3', '301498', '单　县', '');
INSERT INTO `area` VALUES ('1903', '188', '3', '301499', '成武县', '');
INSERT INTO `area` VALUES ('1904', '188', '3', '301500', '巨野县', '');
INSERT INTO `area` VALUES ('1905', '188', '3', '301501', '郓城县', '');
INSERT INTO `area` VALUES ('1906', '188', '3', '301502', '鄄城县', '');
INSERT INTO `area` VALUES ('1907', '188', '3', '301503', '定陶县', '');
INSERT INTO `area` VALUES ('1908', '188', '3', '301504', '东明县', '');
INSERT INTO `area` VALUES ('1909', '189', '3', '301505', '市辖区', '');
INSERT INTO `area` VALUES ('1910', '189', '3', '301506', '中原区', '');
INSERT INTO `area` VALUES ('1911', '189', '3', '301507', '二七区', '');
INSERT INTO `area` VALUES ('1912', '189', '3', '301508', '管城回族区', '');
INSERT INTO `area` VALUES ('1913', '189', '3', '301509', '金水区', '');
INSERT INTO `area` VALUES ('1914', '189', '3', '301510', '上街区', '');
INSERT INTO `area` VALUES ('1915', '189', '3', '301511', '邙山区', '');
INSERT INTO `area` VALUES ('1916', '189', '3', '301512', '中牟县', '');
INSERT INTO `area` VALUES ('1917', '189', '3', '301513', '巩义市', '');
INSERT INTO `area` VALUES ('1918', '189', '3', '301514', '荥阳市', '');
INSERT INTO `area` VALUES ('1919', '189', '3', '301515', '新密市', '');
INSERT INTO `area` VALUES ('1920', '189', '3', '301516', '新郑市', '');
INSERT INTO `area` VALUES ('1921', '189', '3', '301517', '登封市', '');
INSERT INTO `area` VALUES ('1922', '190', '3', '301518', '市辖区', '');
INSERT INTO `area` VALUES ('1923', '190', '3', '301519', '龙亭区', '');
INSERT INTO `area` VALUES ('1924', '190', '3', '301520', '顺河回族区', '');
INSERT INTO `area` VALUES ('1925', '190', '3', '301521', '鼓楼区', '');
INSERT INTO `area` VALUES ('1926', '190', '3', '301522', '南关区', '');
INSERT INTO `area` VALUES ('1927', '190', '3', '301523', '郊　区', '');
INSERT INTO `area` VALUES ('1928', '190', '3', '301524', '杞　县', '');
INSERT INTO `area` VALUES ('1929', '190', '3', '301525', '通许县', '');
INSERT INTO `area` VALUES ('1930', '190', '3', '301526', '尉氏县', '');
INSERT INTO `area` VALUES ('1931', '190', '3', '301527', '开封县', '');
INSERT INTO `area` VALUES ('1932', '190', '3', '301528', '兰考县', '');
INSERT INTO `area` VALUES ('1933', '191', '3', '301529', '市辖区', '');
INSERT INTO `area` VALUES ('1934', '191', '3', '301530', '老城区', '');
INSERT INTO `area` VALUES ('1935', '191', '3', '301531', '西工区', '');
INSERT INTO `area` VALUES ('1936', '191', '3', '301532', '廛河回族区', '');
INSERT INTO `area` VALUES ('1937', '191', '3', '301533', '涧西区', '');
INSERT INTO `area` VALUES ('1938', '191', '3', '301534', '吉利区', '');
INSERT INTO `area` VALUES ('1939', '191', '3', '301535', '洛龙区', '');
INSERT INTO `area` VALUES ('1940', '191', '3', '301536', '孟津县', '');
INSERT INTO `area` VALUES ('1941', '191', '3', '301537', '新安县', '');
INSERT INTO `area` VALUES ('1942', '191', '3', '301538', '栾川县', '');
INSERT INTO `area` VALUES ('1943', '191', '3', '301539', '嵩　县', '');
INSERT INTO `area` VALUES ('1944', '191', '3', '301540', '汝阳县', '');
INSERT INTO `area` VALUES ('1945', '191', '3', '301541', '宜阳县', '');
INSERT INTO `area` VALUES ('1946', '191', '3', '301542', '洛宁县', '');
INSERT INTO `area` VALUES ('1947', '191', '3', '301543', '伊川县', '');
INSERT INTO `area` VALUES ('1948', '191', '3', '301544', '偃师市', '');
INSERT INTO `area` VALUES ('1949', '192', '3', '301545', '市辖区', '');
INSERT INTO `area` VALUES ('1950', '192', '3', '301546', '新华区', '');
INSERT INTO `area` VALUES ('1951', '192', '3', '301547', '卫东区', '');
INSERT INTO `area` VALUES ('1952', '192', '3', '301548', '石龙区', '');
INSERT INTO `area` VALUES ('1953', '192', '3', '301549', '湛河区', '');
INSERT INTO `area` VALUES ('1954', '192', '3', '301550', '宝丰县', '');
INSERT INTO `area` VALUES ('1955', '192', '3', '301551', '叶　县', '');
INSERT INTO `area` VALUES ('1956', '192', '3', '301552', '鲁山县', '');
INSERT INTO `area` VALUES ('1957', '192', '3', '301553', '郏　县', '');
INSERT INTO `area` VALUES ('1958', '192', '3', '301554', '舞钢市', '');
INSERT INTO `area` VALUES ('1959', '192', '3', '301555', '汝州市', '');
INSERT INTO `area` VALUES ('1960', '193', '3', '301556', '市辖区', '');
INSERT INTO `area` VALUES ('1961', '193', '3', '301557', '文峰区', '');
INSERT INTO `area` VALUES ('1962', '193', '3', '301558', '北关区', '');
INSERT INTO `area` VALUES ('1963', '193', '3', '301559', '殷都区', '');
INSERT INTO `area` VALUES ('1964', '193', '3', '301560', '龙安区', '');
INSERT INTO `area` VALUES ('1965', '193', '3', '301561', '安阳县', '');
INSERT INTO `area` VALUES ('1966', '193', '3', '301562', '汤阴县', '');
INSERT INTO `area` VALUES ('1967', '193', '3', '301563', '滑　县', '');
INSERT INTO `area` VALUES ('1968', '193', '3', '301564', '内黄县', '');
INSERT INTO `area` VALUES ('1969', '193', '3', '301565', '林州市', '');
INSERT INTO `area` VALUES ('1970', '194', '3', '301566', '市辖区', '');
INSERT INTO `area` VALUES ('1971', '194', '3', '301567', '鹤山区', '');
INSERT INTO `area` VALUES ('1972', '194', '3', '301568', '山城区', '');
INSERT INTO `area` VALUES ('1973', '194', '3', '301569', '淇滨区', '');
INSERT INTO `area` VALUES ('1974', '194', '3', '301570', '浚　县', '');
INSERT INTO `area` VALUES ('1975', '194', '3', '301571', '淇　县', '');
INSERT INTO `area` VALUES ('1976', '195', '3', '301572', '市辖区', '');
INSERT INTO `area` VALUES ('1977', '195', '3', '301573', '红旗区', '');
INSERT INTO `area` VALUES ('1978', '195', '3', '301574', '卫滨区', '');
INSERT INTO `area` VALUES ('1979', '195', '3', '301575', '凤泉区', '');
INSERT INTO `area` VALUES ('1980', '195', '3', '301576', '牧野区', '');
INSERT INTO `area` VALUES ('1981', '195', '3', '301577', '新乡县', '');
INSERT INTO `area` VALUES ('1982', '195', '3', '301578', '获嘉县', '');
INSERT INTO `area` VALUES ('1983', '195', '3', '301579', '原阳县', '');
INSERT INTO `area` VALUES ('1984', '195', '3', '301580', '延津县', '');
INSERT INTO `area` VALUES ('1985', '195', '3', '301581', '封丘县', '');
INSERT INTO `area` VALUES ('1986', '195', '3', '301582', '长垣县', '');
INSERT INTO `area` VALUES ('1987', '195', '3', '301583', '卫辉市', '');
INSERT INTO `area` VALUES ('1988', '195', '3', '301584', '辉县市', '');
INSERT INTO `area` VALUES ('1989', '196', '3', '301585', '市辖区', '');
INSERT INTO `area` VALUES ('1990', '196', '3', '301586', '解放区', '');
INSERT INTO `area` VALUES ('1991', '196', '3', '301587', '中站区', '');
INSERT INTO `area` VALUES ('1992', '196', '3', '301588', '马村区', '');
INSERT INTO `area` VALUES ('1993', '196', '3', '301589', '山阳区', '');
INSERT INTO `area` VALUES ('1994', '196', '3', '301590', '修武县', '');
INSERT INTO `area` VALUES ('1995', '196', '3', '301591', '博爱县', '');
INSERT INTO `area` VALUES ('1996', '196', '3', '301592', '武陟县', '');
INSERT INTO `area` VALUES ('1997', '196', '3', '301593', '温　县', '');
INSERT INTO `area` VALUES ('1998', '196', '3', '301594', '济源市', '');
INSERT INTO `area` VALUES ('1999', '196', '3', '301595', '沁阳市', '');
INSERT INTO `area` VALUES ('2000', '196', '3', '301596', '孟州市', '');
INSERT INTO `area` VALUES ('2001', '197', '3', '301597', '市辖区', '');
INSERT INTO `area` VALUES ('2002', '197', '3', '301598', '华龙区', '');
INSERT INTO `area` VALUES ('2003', '197', '3', '301599', '清丰县', '');
INSERT INTO `area` VALUES ('2004', '197', '3', '301600', '南乐县', '');
INSERT INTO `area` VALUES ('2005', '197', '3', '301601', '范　县', '');
INSERT INTO `area` VALUES ('2006', '197', '3', '301602', '台前县', '');
INSERT INTO `area` VALUES ('2007', '197', '3', '301603', '濮阳县', '');
INSERT INTO `area` VALUES ('2008', '198', '3', '301604', '市辖区', '');
INSERT INTO `area` VALUES ('2009', '198', '3', '301605', '魏都区', '');
INSERT INTO `area` VALUES ('2010', '198', '3', '301606', '许昌县', '');
INSERT INTO `area` VALUES ('2011', '198', '3', '301607', '鄢陵县', '');
INSERT INTO `area` VALUES ('2012', '198', '3', '301608', '襄城县', '');
INSERT INTO `area` VALUES ('2013', '198', '3', '301609', '禹州市', '');
INSERT INTO `area` VALUES ('2014', '198', '3', '301610', '长葛市', '');
INSERT INTO `area` VALUES ('2015', '199', '3', '301611', '市辖区', '');
INSERT INTO `area` VALUES ('2016', '199', '3', '301612', '源汇区', '');
INSERT INTO `area` VALUES ('2017', '199', '3', '301613', '郾城区', '');
INSERT INTO `area` VALUES ('2018', '199', '3', '301614', '召陵区', '');
INSERT INTO `area` VALUES ('2019', '199', '3', '301615', '舞阳县', '');
INSERT INTO `area` VALUES ('2020', '199', '3', '301616', '临颍县', '');
INSERT INTO `area` VALUES ('2021', '200', '3', '301617', '市辖区', '');
INSERT INTO `area` VALUES ('2022', '200', '3', '301618', '湖滨区', '');
INSERT INTO `area` VALUES ('2023', '200', '3', '301619', '渑池县', '');
INSERT INTO `area` VALUES ('2024', '200', '3', '301620', '陕　县', '');
INSERT INTO `area` VALUES ('2025', '200', '3', '301621', '卢氏县', '');
INSERT INTO `area` VALUES ('2026', '200', '3', '301622', '义马市', '');
INSERT INTO `area` VALUES ('2027', '200', '3', '301623', '灵宝市', '');
INSERT INTO `area` VALUES ('2028', '201', '3', '301624', '市辖区', '');
INSERT INTO `area` VALUES ('2029', '201', '3', '301625', '宛城区', '');
INSERT INTO `area` VALUES ('2030', '201', '3', '301626', '卧龙区', '');
INSERT INTO `area` VALUES ('2031', '201', '3', '301627', '南召县', '');
INSERT INTO `area` VALUES ('2032', '201', '3', '301628', '方城县', '');
INSERT INTO `area` VALUES ('2033', '201', '3', '301629', '西峡县', '');
INSERT INTO `area` VALUES ('2034', '201', '3', '301630', '镇平县', '');
INSERT INTO `area` VALUES ('2035', '201', '3', '301631', '内乡县', '');
INSERT INTO `area` VALUES ('2036', '201', '3', '301632', '淅川县', '');
INSERT INTO `area` VALUES ('2037', '201', '3', '301633', '社旗县', '');
INSERT INTO `area` VALUES ('2038', '201', '3', '301634', '唐河县', '');
INSERT INTO `area` VALUES ('2039', '201', '3', '301635', '新野县', '');
INSERT INTO `area` VALUES ('2040', '201', '3', '301636', '桐柏县', '');
INSERT INTO `area` VALUES ('2041', '201', '3', '301637', '邓州市', '');
INSERT INTO `area` VALUES ('2042', '202', '3', '301638', '市辖区', '');
INSERT INTO `area` VALUES ('2043', '202', '3', '301639', '梁园区', '');
INSERT INTO `area` VALUES ('2044', '202', '3', '301640', '睢阳区', '');
INSERT INTO `area` VALUES ('2045', '202', '3', '301641', '民权县', '');
INSERT INTO `area` VALUES ('2046', '202', '3', '301642', '睢　县', '');
INSERT INTO `area` VALUES ('2047', '202', '3', '301643', '宁陵县', '');
INSERT INTO `area` VALUES ('2048', '202', '3', '301644', '柘城县', '');
INSERT INTO `area` VALUES ('2049', '202', '3', '301645', '虞城县', '');
INSERT INTO `area` VALUES ('2050', '202', '3', '301646', '夏邑县', '');
INSERT INTO `area` VALUES ('2051', '202', '3', '301647', '永城市', '');
INSERT INTO `area` VALUES ('2052', '203', '3', '301648', '市辖区', '');
INSERT INTO `area` VALUES ('2053', '203', '3', '301649', '师河区', '');
INSERT INTO `area` VALUES ('2054', '203', '3', '301650', '平桥区', '');
INSERT INTO `area` VALUES ('2055', '203', '3', '301651', '罗山县', '');
INSERT INTO `area` VALUES ('2056', '203', '3', '301652', '光山县', '');
INSERT INTO `area` VALUES ('2057', '203', '3', '301653', '新　县', '');
INSERT INTO `area` VALUES ('2058', '203', '3', '301654', '商城县', '');
INSERT INTO `area` VALUES ('2059', '203', '3', '301655', '固始县', '');
INSERT INTO `area` VALUES ('2060', '203', '3', '301656', '潢川县', '');
INSERT INTO `area` VALUES ('2061', '203', '3', '301657', '淮滨县', '');
INSERT INTO `area` VALUES ('2062', '203', '3', '301658', '息　县', '');
INSERT INTO `area` VALUES ('2063', '204', '3', '301659', '市辖区', '');
INSERT INTO `area` VALUES ('2064', '204', '3', '301660', '川汇区', '');
INSERT INTO `area` VALUES ('2065', '204', '3', '301661', '扶沟县', '');
INSERT INTO `area` VALUES ('2066', '204', '3', '301662', '西华县', '');
INSERT INTO `area` VALUES ('2067', '204', '3', '301663', '商水县', '');
INSERT INTO `area` VALUES ('2068', '204', '3', '301664', '沈丘县', '');
INSERT INTO `area` VALUES ('2069', '204', '3', '301665', '郸城县', '');
INSERT INTO `area` VALUES ('2070', '204', '3', '301666', '淮阳县', '');
INSERT INTO `area` VALUES ('2071', '204', '3', '301667', '太康县', '');
INSERT INTO `area` VALUES ('2072', '204', '3', '301668', '鹿邑县', '');
INSERT INTO `area` VALUES ('2073', '204', '3', '301669', '项城市', '');
INSERT INTO `area` VALUES ('2074', '205', '3', '301670', '市辖区', '');
INSERT INTO `area` VALUES ('2075', '205', '3', '301671', '驿城区', '');
INSERT INTO `area` VALUES ('2076', '205', '3', '301672', '西平县', '');
INSERT INTO `area` VALUES ('2077', '205', '3', '301673', '上蔡县', '');
INSERT INTO `area` VALUES ('2078', '205', '3', '301674', '平舆县', '');
INSERT INTO `area` VALUES ('2079', '205', '3', '301675', '正阳县', '');
INSERT INTO `area` VALUES ('2080', '205', '3', '301676', '确山县', '');
INSERT INTO `area` VALUES ('2081', '205', '3', '301677', '泌阳县', '');
INSERT INTO `area` VALUES ('2082', '205', '3', '301678', '汝南县', '');
INSERT INTO `area` VALUES ('2083', '205', '3', '301679', '遂平县', '');
INSERT INTO `area` VALUES ('2084', '205', '3', '301680', '新蔡县', '');
INSERT INTO `area` VALUES ('2085', '206', '3', '301681', '市辖区', '');
INSERT INTO `area` VALUES ('2086', '206', '3', '301682', '江岸区', '');
INSERT INTO `area` VALUES ('2087', '206', '3', '301683', '江汉区', '');
INSERT INTO `area` VALUES ('2088', '206', '3', '301684', '乔口区', '');
INSERT INTO `area` VALUES ('2089', '206', '3', '301685', '汉阳区', '');
INSERT INTO `area` VALUES ('2090', '206', '3', '301686', '武昌区', '');
INSERT INTO `area` VALUES ('2091', '206', '3', '301687', '青山区', '');
INSERT INTO `area` VALUES ('2092', '206', '3', '301688', '洪山区', '');
INSERT INTO `area` VALUES ('2093', '206', '3', '301689', '东西湖区', '');
INSERT INTO `area` VALUES ('2094', '206', '3', '301690', '汉南区', '');
INSERT INTO `area` VALUES ('2095', '206', '3', '301691', '蔡甸区', '');
INSERT INTO `area` VALUES ('2096', '206', '3', '301692', '江夏区', '');
INSERT INTO `area` VALUES ('2097', '206', '3', '301693', '黄陂区', '');
INSERT INTO `area` VALUES ('2098', '206', '3', '301694', '新洲区', '');
INSERT INTO `area` VALUES ('2099', '207', '3', '301695', '市辖区', '');
INSERT INTO `area` VALUES ('2100', '207', '3', '301696', '黄石港区', '');
INSERT INTO `area` VALUES ('2101', '207', '3', '301697', '西塞山区', '');
INSERT INTO `area` VALUES ('2102', '207', '3', '301698', '下陆区', '');
INSERT INTO `area` VALUES ('2103', '207', '3', '301699', '铁山区', '');
INSERT INTO `area` VALUES ('2104', '207', '3', '301700', '阳新县', '');
INSERT INTO `area` VALUES ('2105', '207', '3', '301701', '大冶市', '');
INSERT INTO `area` VALUES ('2106', '208', '3', '301702', '市辖区', '');
INSERT INTO `area` VALUES ('2107', '208', '3', '301703', '茅箭区', '');
INSERT INTO `area` VALUES ('2108', '208', '3', '301704', '张湾区', '');
INSERT INTO `area` VALUES ('2109', '208', '3', '301705', '郧　县', '');
INSERT INTO `area` VALUES ('2110', '208', '3', '301706', '郧西县', '');
INSERT INTO `area` VALUES ('2111', '208', '3', '301707', '竹山县', '');
INSERT INTO `area` VALUES ('2112', '208', '3', '301708', '竹溪县', '');
INSERT INTO `area` VALUES ('2113', '208', '3', '301709', '房　县', '');
INSERT INTO `area` VALUES ('2114', '208', '3', '301710', '丹江口市', '');
INSERT INTO `area` VALUES ('2115', '209', '3', '301711', '市辖区', '');
INSERT INTO `area` VALUES ('2116', '209', '3', '301712', '西陵区', '');
INSERT INTO `area` VALUES ('2117', '209', '3', '301713', '伍家岗区', '');
INSERT INTO `area` VALUES ('2118', '209', '3', '301714', '点军区', '');
INSERT INTO `area` VALUES ('2119', '209', '3', '301715', '猇亭区', '');
INSERT INTO `area` VALUES ('2120', '209', '3', '301716', '夷陵区', '');
INSERT INTO `area` VALUES ('2121', '209', '3', '301717', '远安县', '');
INSERT INTO `area` VALUES ('2122', '209', '3', '301718', '兴山县', '');
INSERT INTO `area` VALUES ('2123', '209', '3', '301719', '秭归县', '');
INSERT INTO `area` VALUES ('2124', '209', '3', '301720', '长阳土家族自治县', '');
INSERT INTO `area` VALUES ('2125', '209', '3', '301721', '五峰土家族自治县', '');
INSERT INTO `area` VALUES ('2126', '209', '3', '301722', '宜都市', '');
INSERT INTO `area` VALUES ('2127', '209', '3', '301723', '当阳市', '');
INSERT INTO `area` VALUES ('2128', '209', '3', '301724', '枝江市', '');
INSERT INTO `area` VALUES ('2129', '210', '3', '301725', '市辖区', '');
INSERT INTO `area` VALUES ('2130', '210', '3', '301726', '襄城区', '');
INSERT INTO `area` VALUES ('2131', '210', '3', '301727', '樊城区', '');
INSERT INTO `area` VALUES ('2132', '210', '3', '301728', '襄阳区', '');
INSERT INTO `area` VALUES ('2133', '210', '3', '301729', '南漳县', '');
INSERT INTO `area` VALUES ('2134', '210', '3', '301730', '谷城县', '');
INSERT INTO `area` VALUES ('2135', '210', '3', '301731', '保康县', '');
INSERT INTO `area` VALUES ('2136', '210', '3', '301732', '老河口市', '');
INSERT INTO `area` VALUES ('2137', '210', '3', '301733', '枣阳市', '');
INSERT INTO `area` VALUES ('2138', '210', '3', '301734', '宜城市', '');
INSERT INTO `area` VALUES ('2139', '211', '3', '301735', '市辖区', '');
INSERT INTO `area` VALUES ('2140', '211', '3', '301736', '梁子湖区', '');
INSERT INTO `area` VALUES ('2141', '211', '3', '301737', '华容区', '');
INSERT INTO `area` VALUES ('2142', '211', '3', '301738', '鄂城区', '');
INSERT INTO `area` VALUES ('2143', '212', '3', '301739', '市辖区', '');
INSERT INTO `area` VALUES ('2144', '212', '3', '301740', '东宝区', '');
INSERT INTO `area` VALUES ('2145', '212', '3', '301741', '掇刀区', '');
INSERT INTO `area` VALUES ('2146', '212', '3', '301742', '京山县', '');
INSERT INTO `area` VALUES ('2147', '212', '3', '301743', '沙洋县', '');
INSERT INTO `area` VALUES ('2148', '212', '3', '301744', '钟祥市', '');
INSERT INTO `area` VALUES ('2149', '213', '3', '301745', '市辖区', '');
INSERT INTO `area` VALUES ('2150', '213', '3', '301746', '孝南区', '');
INSERT INTO `area` VALUES ('2151', '213', '3', '301747', '孝昌县', '');
INSERT INTO `area` VALUES ('2152', '213', '3', '301748', '大悟县', '');
INSERT INTO `area` VALUES ('2153', '213', '3', '301749', '云梦县', '');
INSERT INTO `area` VALUES ('2154', '213', '3', '301750', '应城市', '');
INSERT INTO `area` VALUES ('2155', '213', '3', '301751', '安陆市', '');
INSERT INTO `area` VALUES ('2156', '213', '3', '301752', '汉川市', '');
INSERT INTO `area` VALUES ('2157', '214', '3', '301753', '市辖区', '');
INSERT INTO `area` VALUES ('2158', '214', '3', '301754', '沙市区', '');
INSERT INTO `area` VALUES ('2159', '214', '3', '301755', '荆州区', '');
INSERT INTO `area` VALUES ('2160', '214', '3', '301756', '公安县', '');
INSERT INTO `area` VALUES ('2161', '214', '3', '301757', '监利县', '');
INSERT INTO `area` VALUES ('2162', '214', '3', '301758', '江陵县', '');
INSERT INTO `area` VALUES ('2163', '214', '3', '301759', '石首市', '');
INSERT INTO `area` VALUES ('2164', '214', '3', '301760', '洪湖市', '');
INSERT INTO `area` VALUES ('2165', '214', '3', '301761', '松滋市', '');
INSERT INTO `area` VALUES ('2166', '215', '3', '301762', '市辖区', '');
INSERT INTO `area` VALUES ('2167', '215', '3', '301763', '黄州区', '');
INSERT INTO `area` VALUES ('2168', '215', '3', '301764', '团风县', '');
INSERT INTO `area` VALUES ('2169', '215', '3', '301765', '红安县', '');
INSERT INTO `area` VALUES ('2170', '215', '3', '301766', '罗田县', '');
INSERT INTO `area` VALUES ('2171', '215', '3', '301767', '英山县', '');
INSERT INTO `area` VALUES ('2172', '215', '3', '301768', '浠水县', '');
INSERT INTO `area` VALUES ('2173', '215', '3', '301769', '蕲春县', '');
INSERT INTO `area` VALUES ('2174', '215', '3', '301770', '黄梅县', '');
INSERT INTO `area` VALUES ('2175', '215', '3', '301771', '麻城市', '');
INSERT INTO `area` VALUES ('2176', '215', '3', '301772', '武穴市', '');
INSERT INTO `area` VALUES ('2177', '216', '3', '301773', '市辖区', '');
INSERT INTO `area` VALUES ('2178', '216', '3', '301774', '咸安区', '');
INSERT INTO `area` VALUES ('2179', '216', '3', '301775', '嘉鱼县', '');
INSERT INTO `area` VALUES ('2180', '216', '3', '301776', '通城县', '');
INSERT INTO `area` VALUES ('2181', '216', '3', '301777', '崇阳县', '');
INSERT INTO `area` VALUES ('2182', '216', '3', '301778', '通山县', '');
INSERT INTO `area` VALUES ('2183', '216', '3', '301779', '赤壁市', '');
INSERT INTO `area` VALUES ('2184', '217', '3', '301780', '市辖区', '');
INSERT INTO `area` VALUES ('2185', '217', '3', '301781', '曾都区', '');
INSERT INTO `area` VALUES ('2186', '217', '3', '301782', '广水市', '');
INSERT INTO `area` VALUES ('2187', '218', '3', '301783', '恩施市', '');
INSERT INTO `area` VALUES ('2188', '218', '3', '301784', '利川市', '');
INSERT INTO `area` VALUES ('2189', '218', '3', '301785', '建始县', '');
INSERT INTO `area` VALUES ('2190', '218', '3', '301786', '巴东县', '');
INSERT INTO `area` VALUES ('2191', '218', '3', '301787', '宣恩县', '');
INSERT INTO `area` VALUES ('2192', '218', '3', '301788', '咸丰县', '');
INSERT INTO `area` VALUES ('2193', '218', '3', '301789', '来凤县', '');
INSERT INTO `area` VALUES ('2194', '218', '3', '301790', '鹤峰县', '');
INSERT INTO `area` VALUES ('2195', '219', '3', '301791', '仙桃市', '');
INSERT INTO `area` VALUES ('2196', '219', '3', '301792', '潜江市', '');
INSERT INTO `area` VALUES ('2197', '219', '3', '301793', '天门市', '');
INSERT INTO `area` VALUES ('2198', '219', '3', '301794', '神农架林区', '');
INSERT INTO `area` VALUES ('2199', '220', '3', '301795', '市辖区', '');
INSERT INTO `area` VALUES ('2200', '220', '3', '301796', '芙蓉区', '');
INSERT INTO `area` VALUES ('2201', '220', '3', '301797', '天心区', '');
INSERT INTO `area` VALUES ('2202', '220', '3', '301798', '岳麓区', '');
INSERT INTO `area` VALUES ('2203', '220', '3', '301799', '开福区', '');
INSERT INTO `area` VALUES ('2204', '220', '3', '301800', '雨花区', '');
INSERT INTO `area` VALUES ('2205', '220', '3', '301801', '长沙县', '');
INSERT INTO `area` VALUES ('2206', '220', '3', '301802', '望城县', '');
INSERT INTO `area` VALUES ('2207', '220', '3', '301803', '宁乡县', '');
INSERT INTO `area` VALUES ('2208', '220', '3', '301804', '浏阳市', '');
INSERT INTO `area` VALUES ('2209', '221', '3', '301805', '市辖区', '');
INSERT INTO `area` VALUES ('2210', '221', '3', '301806', '荷塘区', '');
INSERT INTO `area` VALUES ('2211', '221', '3', '301807', '芦淞区', '');
INSERT INTO `area` VALUES ('2212', '221', '3', '301808', '石峰区', '');
INSERT INTO `area` VALUES ('2213', '221', '3', '301809', '天元区', '');
INSERT INTO `area` VALUES ('2214', '221', '3', '301810', '株洲县', '');
INSERT INTO `area` VALUES ('2215', '221', '3', '301811', '攸　县', '');
INSERT INTO `area` VALUES ('2216', '221', '3', '301812', '茶陵县', '');
INSERT INTO `area` VALUES ('2217', '221', '3', '301813', '炎陵县', '');
INSERT INTO `area` VALUES ('2218', '221', '3', '301814', '醴陵市', '');
INSERT INTO `area` VALUES ('2219', '222', '3', '301815', '市辖区', '');
INSERT INTO `area` VALUES ('2220', '222', '3', '301816', '雨湖区', '');
INSERT INTO `area` VALUES ('2221', '222', '3', '301817', '岳塘区', '');
INSERT INTO `area` VALUES ('2222', '222', '3', '301818', '湘潭县', '');
INSERT INTO `area` VALUES ('2223', '222', '3', '301819', '湘乡市', '');
INSERT INTO `area` VALUES ('2224', '222', '3', '301820', '韶山市', '');
INSERT INTO `area` VALUES ('2225', '223', '3', '301821', '市辖区', '');
INSERT INTO `area` VALUES ('2226', '223', '3', '301822', '珠晖区', '');
INSERT INTO `area` VALUES ('2227', '223', '3', '301823', '雁峰区', '');
INSERT INTO `area` VALUES ('2228', '223', '3', '301824', '石鼓区', '');
INSERT INTO `area` VALUES ('2229', '223', '3', '301825', '蒸湘区', '');
INSERT INTO `area` VALUES ('2230', '223', '3', '301826', '南岳区', '');
INSERT INTO `area` VALUES ('2231', '223', '3', '301827', '衡阳县', '');
INSERT INTO `area` VALUES ('2232', '223', '3', '301828', '衡南县', '');
INSERT INTO `area` VALUES ('2233', '223', '3', '301829', '衡山县', '');
INSERT INTO `area` VALUES ('2234', '223', '3', '301830', '衡东县', '');
INSERT INTO `area` VALUES ('2235', '223', '3', '301831', '祁东县', '');
INSERT INTO `area` VALUES ('2236', '223', '3', '301832', '耒阳市', '');
INSERT INTO `area` VALUES ('2237', '223', '3', '301833', '常宁市', '');
INSERT INTO `area` VALUES ('2238', '224', '3', '301834', '市辖区', '');
INSERT INTO `area` VALUES ('2239', '224', '3', '301835', '双清区', '');
INSERT INTO `area` VALUES ('2240', '224', '3', '301836', '大祥区', '');
INSERT INTO `area` VALUES ('2241', '224', '3', '301837', '北塔区', '');
INSERT INTO `area` VALUES ('2242', '224', '3', '301838', '邵东县', '');
INSERT INTO `area` VALUES ('2243', '224', '3', '301839', '新邵县', '');
INSERT INTO `area` VALUES ('2244', '224', '3', '301840', '邵阳县', '');
INSERT INTO `area` VALUES ('2245', '224', '3', '301841', '隆回县', '');
INSERT INTO `area` VALUES ('2246', '224', '3', '301842', '洞口县', '');
INSERT INTO `area` VALUES ('2247', '224', '3', '301843', '绥宁县', '');
INSERT INTO `area` VALUES ('2248', '224', '3', '301844', '新宁县', '');
INSERT INTO `area` VALUES ('2249', '224', '3', '301845', '城步苗族自治县', '');
INSERT INTO `area` VALUES ('2250', '224', '3', '301846', '武冈市', '');
INSERT INTO `area` VALUES ('2251', '225', '3', '301847', '市辖区', '');
INSERT INTO `area` VALUES ('2252', '225', '3', '301848', '岳阳楼区', '');
INSERT INTO `area` VALUES ('2253', '225', '3', '301849', '云溪区', '');
INSERT INTO `area` VALUES ('2254', '225', '3', '301850', '君山区', '');
INSERT INTO `area` VALUES ('2255', '225', '3', '301851', '岳阳县', '');
INSERT INTO `area` VALUES ('2256', '225', '3', '301852', '华容县', '');
INSERT INTO `area` VALUES ('2257', '225', '3', '301853', '湘阴县', '');
INSERT INTO `area` VALUES ('2258', '225', '3', '301854', '平江县', '');
INSERT INTO `area` VALUES ('2259', '225', '3', '301855', '汨罗市', '');
INSERT INTO `area` VALUES ('2260', '225', '3', '301856', '临湘市', '');
INSERT INTO `area` VALUES ('2261', '226', '3', '301857', '市辖区', '');
INSERT INTO `area` VALUES ('2262', '226', '3', '301858', '武陵区', '');
INSERT INTO `area` VALUES ('2263', '226', '3', '301859', '鼎城区', '');
INSERT INTO `area` VALUES ('2264', '226', '3', '301860', '安乡县', '');
INSERT INTO `area` VALUES ('2265', '226', '3', '301861', '汉寿县', '');
INSERT INTO `area` VALUES ('2266', '226', '3', '301862', '澧　县', '');
INSERT INTO `area` VALUES ('2267', '226', '3', '301863', '临澧县', '');
INSERT INTO `area` VALUES ('2268', '226', '3', '301864', '桃源县', '');
INSERT INTO `area` VALUES ('2269', '226', '3', '301865', '石门县', '');
INSERT INTO `area` VALUES ('2270', '226', '3', '301866', '津市市', '');
INSERT INTO `area` VALUES ('2271', '227', '3', '301867', '市辖区', '');
INSERT INTO `area` VALUES ('2272', '227', '3', '301868', '永定区', '');
INSERT INTO `area` VALUES ('2273', '227', '3', '301869', '武陵源区', '');
INSERT INTO `area` VALUES ('2274', '227', '3', '301870', '慈利县', '');
INSERT INTO `area` VALUES ('2275', '227', '3', '301871', '桑植县', '');
INSERT INTO `area` VALUES ('2276', '228', '3', '301872', '市辖区', '');
INSERT INTO `area` VALUES ('2277', '228', '3', '301873', '资阳区', '');
INSERT INTO `area` VALUES ('2278', '228', '3', '301874', '赫山区', '');
INSERT INTO `area` VALUES ('2279', '228', '3', '301875', '南　县', '');
INSERT INTO `area` VALUES ('2280', '228', '3', '301876', '桃江县', '');
INSERT INTO `area` VALUES ('2281', '228', '3', '301877', '安化县', '');
INSERT INTO `area` VALUES ('2282', '228', '3', '301878', '沅江市', '');
INSERT INTO `area` VALUES ('2283', '229', '3', '301879', '市辖区', '');
INSERT INTO `area` VALUES ('2284', '229', '3', '301880', '北湖区', '');
INSERT INTO `area` VALUES ('2285', '229', '3', '301881', '苏仙区', '');
INSERT INTO `area` VALUES ('2286', '229', '3', '301882', '桂阳县', '');
INSERT INTO `area` VALUES ('2287', '229', '3', '301883', '宜章县', '');
INSERT INTO `area` VALUES ('2288', '229', '3', '301884', '永兴县', '');
INSERT INTO `area` VALUES ('2289', '229', '3', '301885', '嘉禾县', '');
INSERT INTO `area` VALUES ('2290', '229', '3', '301886', '临武县', '');
INSERT INTO `area` VALUES ('2291', '229', '3', '301887', '汝城县', '');
INSERT INTO `area` VALUES ('2292', '229', '3', '301888', '桂东县', '');
INSERT INTO `area` VALUES ('2293', '229', '3', '301889', '安仁县', '');
INSERT INTO `area` VALUES ('2294', '229', '3', '301890', '资兴市', '');
INSERT INTO `area` VALUES ('2295', '230', '3', '301891', '市辖区', '');
INSERT INTO `area` VALUES ('2296', '230', '3', '301892', '芝山区', '');
INSERT INTO `area` VALUES ('2297', '230', '3', '301893', '冷水滩区', '');
INSERT INTO `area` VALUES ('2298', '230', '3', '301894', '祁阳县', '');
INSERT INTO `area` VALUES ('2299', '230', '3', '301895', '东安县', '');
INSERT INTO `area` VALUES ('2300', '230', '3', '301896', '双牌县', '');
INSERT INTO `area` VALUES ('2301', '230', '3', '301897', '道　县', '');
INSERT INTO `area` VALUES ('2302', '230', '3', '301898', '江永县', '');
INSERT INTO `area` VALUES ('2303', '230', '3', '301899', '宁远县', '');
INSERT INTO `area` VALUES ('2304', '230', '3', '301900', '蓝山县', '');
INSERT INTO `area` VALUES ('2305', '230', '3', '301901', '新田县', '');
INSERT INTO `area` VALUES ('2306', '230', '3', '301902', '江华瑶族自治县', '');
INSERT INTO `area` VALUES ('2307', '231', '3', '301903', '市辖区', '');
INSERT INTO `area` VALUES ('2308', '231', '3', '301904', '鹤城区', '');
INSERT INTO `area` VALUES ('2309', '231', '3', '301905', '中方县', '');
INSERT INTO `area` VALUES ('2310', '231', '3', '301906', '沅陵县', '');
INSERT INTO `area` VALUES ('2311', '231', '3', '301907', '辰溪县', '');
INSERT INTO `area` VALUES ('2312', '231', '3', '301908', '溆浦县', '');
INSERT INTO `area` VALUES ('2313', '231', '3', '301909', '会同县', '');
INSERT INTO `area` VALUES ('2314', '231', '3', '301910', '麻阳苗族自治县', '');
INSERT INTO `area` VALUES ('2315', '231', '3', '301911', '新晃侗族自治县', '');
INSERT INTO `area` VALUES ('2316', '231', '3', '301912', '芷江侗族自治县', '');
INSERT INTO `area` VALUES ('2317', '231', '3', '301913', '靖州苗族侗族自治县', '');
INSERT INTO `area` VALUES ('2318', '231', '3', '301914', '通道侗族自治县', '');
INSERT INTO `area` VALUES ('2319', '231', '3', '301915', '洪江市', '');
INSERT INTO `area` VALUES ('2320', '232', '3', '301916', '市辖区', '');
INSERT INTO `area` VALUES ('2321', '232', '3', '301917', '娄星区', '');
INSERT INTO `area` VALUES ('2322', '232', '3', '301918', '双峰县', '');
INSERT INTO `area` VALUES ('2323', '232', '3', '301919', '新化县', '');
INSERT INTO `area` VALUES ('2324', '232', '3', '301920', '冷水江市', '');
INSERT INTO `area` VALUES ('2325', '232', '3', '301921', '涟源市', '');
INSERT INTO `area` VALUES ('2326', '233', '3', '301922', '吉首市', '');
INSERT INTO `area` VALUES ('2327', '233', '3', '301923', '泸溪县', '');
INSERT INTO `area` VALUES ('2328', '233', '3', '301924', '凤凰县', '');
INSERT INTO `area` VALUES ('2329', '233', '3', '301925', '花垣县', '');
INSERT INTO `area` VALUES ('2330', '233', '3', '301926', '保靖县', '');
INSERT INTO `area` VALUES ('2331', '233', '3', '301927', '古丈县', '');
INSERT INTO `area` VALUES ('2332', '233', '3', '301928', '永顺县', '');
INSERT INTO `area` VALUES ('2333', '233', '3', '301929', '龙山县', '');
INSERT INTO `area` VALUES ('2334', '234', '3', '301930', '市辖区', '');
INSERT INTO `area` VALUES ('2335', '234', '3', '301931', '东山区', '');
INSERT INTO `area` VALUES ('2336', '234', '3', '301932', '荔湾区', '');
INSERT INTO `area` VALUES ('2337', '234', '3', '301933', '越秀区', '');
INSERT INTO `area` VALUES ('2338', '234', '3', '301934', '海珠区', '');
INSERT INTO `area` VALUES ('2339', '234', '3', '301935', '天河区', '');
INSERT INTO `area` VALUES ('2340', '234', '3', '301936', '芳村区', '');
INSERT INTO `area` VALUES ('2341', '234', '3', '301937', '白云区', '');
INSERT INTO `area` VALUES ('2342', '234', '3', '301938', '黄埔区', '');
INSERT INTO `area` VALUES ('2343', '234', '3', '301939', '番禺区', '');
INSERT INTO `area` VALUES ('2344', '234', '3', '301940', '花都区', '');
INSERT INTO `area` VALUES ('2345', '234', '3', '301941', '增城市', '');
INSERT INTO `area` VALUES ('2346', '234', '3', '301942', '从化市', '');
INSERT INTO `area` VALUES ('2347', '235', '3', '301943', '市辖区', '');
INSERT INTO `area` VALUES ('2348', '235', '3', '301944', '武江区', '');
INSERT INTO `area` VALUES ('2349', '235', '3', '301945', '浈江区', '');
INSERT INTO `area` VALUES ('2350', '235', '3', '301946', '曲江区', '');
INSERT INTO `area` VALUES ('2351', '235', '3', '301947', '始兴县', '');
INSERT INTO `area` VALUES ('2352', '235', '3', '301948', '仁化县', '');
INSERT INTO `area` VALUES ('2353', '235', '3', '301949', '翁源县', '');
INSERT INTO `area` VALUES ('2354', '235', '3', '301950', '乳源瑶族自治县', '');
INSERT INTO `area` VALUES ('2355', '235', '3', '301951', '新丰县', '');
INSERT INTO `area` VALUES ('2356', '235', '3', '301952', '乐昌市', '');
INSERT INTO `area` VALUES ('2357', '235', '3', '301953', '南雄市', '');
INSERT INTO `area` VALUES ('2358', '236', '3', '301954', '市辖区', '');
INSERT INTO `area` VALUES ('2359', '236', '3', '301955', '罗湖区', '');
INSERT INTO `area` VALUES ('2360', '236', '3', '301956', '福田区', '');
INSERT INTO `area` VALUES ('2361', '236', '3', '301957', '南山区', '');
INSERT INTO `area` VALUES ('2362', '236', '3', '301958', '宝安区', '');
INSERT INTO `area` VALUES ('2363', '236', '3', '301959', '龙岗区', '');
INSERT INTO `area` VALUES ('2364', '236', '3', '301960', '盐田区', '');
INSERT INTO `area` VALUES ('2365', '237', '3', '301961', '市辖区', '');
INSERT INTO `area` VALUES ('2366', '237', '3', '301962', '香洲区', '');
INSERT INTO `area` VALUES ('2367', '237', '3', '301963', '斗门区', '');
INSERT INTO `area` VALUES ('2368', '237', '3', '301964', '金湾区', '');
INSERT INTO `area` VALUES ('2369', '238', '3', '301965', '市辖区', '');
INSERT INTO `area` VALUES ('2370', '238', '3', '301966', '龙湖区', '');
INSERT INTO `area` VALUES ('2371', '238', '3', '301967', '金平区', '');
INSERT INTO `area` VALUES ('2372', '238', '3', '301968', '濠江区', '');
INSERT INTO `area` VALUES ('2373', '238', '3', '301969', '潮阳区', '');
INSERT INTO `area` VALUES ('2374', '238', '3', '301970', '潮南区', '');
INSERT INTO `area` VALUES ('2375', '238', '3', '301971', '澄海区', '');
INSERT INTO `area` VALUES ('2376', '238', '3', '301972', '南澳县', '');
INSERT INTO `area` VALUES ('2377', '239', '3', '301973', '市辖区', '');
INSERT INTO `area` VALUES ('2378', '239', '3', '301974', '禅城区', '');
INSERT INTO `area` VALUES ('2379', '239', '3', '301975', '南海区', '');
INSERT INTO `area` VALUES ('2380', '239', '3', '301976', '顺德区', '');
INSERT INTO `area` VALUES ('2381', '239', '3', '301977', '三水区', '');
INSERT INTO `area` VALUES ('2382', '239', '3', '301978', '高明区', '');
INSERT INTO `area` VALUES ('2383', '240', '3', '301979', '市辖区', '');
INSERT INTO `area` VALUES ('2384', '240', '3', '301980', '蓬江区', '');
INSERT INTO `area` VALUES ('2385', '240', '3', '301981', '江海区', '');
INSERT INTO `area` VALUES ('2386', '240', '3', '301982', '新会区', '');
INSERT INTO `area` VALUES ('2387', '240', '3', '301983', '台山市', '');
INSERT INTO `area` VALUES ('2388', '240', '3', '301984', '开平市', '');
INSERT INTO `area` VALUES ('2389', '240', '3', '301985', '鹤山市', '');
INSERT INTO `area` VALUES ('2390', '240', '3', '301986', '恩平市', '');
INSERT INTO `area` VALUES ('2391', '241', '3', '301987', '市辖区', '');
INSERT INTO `area` VALUES ('2392', '241', '3', '301988', '赤坎区', '');
INSERT INTO `area` VALUES ('2393', '241', '3', '301989', '霞山区', '');
INSERT INTO `area` VALUES ('2394', '241', '3', '301990', '坡头区', '');
INSERT INTO `area` VALUES ('2395', '241', '3', '301991', '麻章区', '');
INSERT INTO `area` VALUES ('2396', '241', '3', '301992', '遂溪县', '');
INSERT INTO `area` VALUES ('2397', '241', '3', '301993', '徐闻县', '');
INSERT INTO `area` VALUES ('2398', '241', '3', '301994', '廉江市', '');
INSERT INTO `area` VALUES ('2399', '241', '3', '301995', '雷州市', '');
INSERT INTO `area` VALUES ('2400', '241', '3', '301996', '吴川市', '');
INSERT INTO `area` VALUES ('2401', '242', '3', '301997', '市辖区', '');
INSERT INTO `area` VALUES ('2402', '242', '3', '301998', '茂南区', '');
INSERT INTO `area` VALUES ('2403', '242', '3', '301999', '茂港区', '');
INSERT INTO `area` VALUES ('2404', '242', '3', '302000', '电白县', '');
INSERT INTO `area` VALUES ('2405', '242', '3', '302001', '高州市', '');
INSERT INTO `area` VALUES ('2406', '242', '3', '302002', '化州市', '');
INSERT INTO `area` VALUES ('2407', '242', '3', '302003', '信宜市', '');
INSERT INTO `area` VALUES ('2408', '243', '3', '302004', '市辖区', '');
INSERT INTO `area` VALUES ('2409', '243', '3', '302005', '端州区', '');
INSERT INTO `area` VALUES ('2410', '243', '3', '302006', '鼎湖区', '');
INSERT INTO `area` VALUES ('2411', '243', '3', '302007', '广宁县', '');
INSERT INTO `area` VALUES ('2412', '243', '3', '302008', '怀集县', '');
INSERT INTO `area` VALUES ('2413', '243', '3', '302009', '封开县', '');
INSERT INTO `area` VALUES ('2414', '243', '3', '302010', '德庆县', '');
INSERT INTO `area` VALUES ('2415', '243', '3', '302011', '高要市', '');
INSERT INTO `area` VALUES ('2416', '243', '3', '302012', '四会市', '');
INSERT INTO `area` VALUES ('2417', '244', '3', '302013', '市辖区', '');
INSERT INTO `area` VALUES ('2418', '244', '3', '302014', '惠城区', '');
INSERT INTO `area` VALUES ('2419', '244', '3', '302015', '惠阳区', '');
INSERT INTO `area` VALUES ('2420', '244', '3', '302016', '博罗县', '');
INSERT INTO `area` VALUES ('2421', '244', '3', '302017', '惠东县', '');
INSERT INTO `area` VALUES ('2422', '244', '3', '302018', '龙门县', '');
INSERT INTO `area` VALUES ('2423', '245', '3', '302019', '市辖区', '');
INSERT INTO `area` VALUES ('2424', '245', '3', '302020', '梅江区', '');
INSERT INTO `area` VALUES ('2425', '245', '3', '302021', '梅　县', '');
INSERT INTO `area` VALUES ('2426', '245', '3', '302022', '大埔县', '');
INSERT INTO `area` VALUES ('2427', '245', '3', '302023', '丰顺县', '');
INSERT INTO `area` VALUES ('2428', '245', '3', '302024', '五华县', '');
INSERT INTO `area` VALUES ('2429', '245', '3', '302025', '平远县', '');
INSERT INTO `area` VALUES ('2430', '245', '3', '302026', '蕉岭县', '');
INSERT INTO `area` VALUES ('2431', '245', '3', '302027', '兴宁市', '');
INSERT INTO `area` VALUES ('2432', '246', '3', '302028', '市辖区', '');
INSERT INTO `area` VALUES ('2433', '246', '3', '302029', '城　区', '');
INSERT INTO `area` VALUES ('2434', '246', '3', '302030', '海丰县', '');
INSERT INTO `area` VALUES ('2435', '246', '3', '302031', '陆河县', '');
INSERT INTO `area` VALUES ('2436', '246', '3', '302032', '陆丰市', '');
INSERT INTO `area` VALUES ('2437', '247', '3', '302033', '市辖区', '');
INSERT INTO `area` VALUES ('2438', '247', '3', '302034', '源城区', '');
INSERT INTO `area` VALUES ('2439', '247', '3', '302035', '紫金县', '');
INSERT INTO `area` VALUES ('2440', '247', '3', '302036', '龙川县', '');
INSERT INTO `area` VALUES ('2441', '247', '3', '302037', '连平县', '');
INSERT INTO `area` VALUES ('2442', '247', '3', '302038', '和平县', '');
INSERT INTO `area` VALUES ('2443', '247', '3', '302039', '东源县', '');
INSERT INTO `area` VALUES ('2444', '248', '3', '302040', '市辖区', '');
INSERT INTO `area` VALUES ('2445', '248', '3', '302041', '江城区', '');
INSERT INTO `area` VALUES ('2446', '248', '3', '302042', '阳西县', '');
INSERT INTO `area` VALUES ('2447', '248', '3', '302043', '阳东县', '');
INSERT INTO `area` VALUES ('2448', '248', '3', '302044', '阳春市', '');
INSERT INTO `area` VALUES ('2449', '249', '3', '302045', '市辖区', '');
INSERT INTO `area` VALUES ('2450', '249', '3', '302046', '清城区', '');
INSERT INTO `area` VALUES ('2451', '249', '3', '302047', '佛冈县', '');
INSERT INTO `area` VALUES ('2452', '249', '3', '302048', '阳山县', '');
INSERT INTO `area` VALUES ('2453', '249', '3', '302049', '连山壮族瑶族自治县', '');
INSERT INTO `area` VALUES ('2454', '249', '3', '302050', '连南瑶族自治县', '');
INSERT INTO `area` VALUES ('2455', '249', '3', '302051', '清新县', '');
INSERT INTO `area` VALUES ('2456', '249', '3', '302052', '英德市', '');
INSERT INTO `area` VALUES ('2457', '249', '3', '302053', '连州市', '');
INSERT INTO `area` VALUES ('2458', '252', '3', '302054', '市辖区', '');
INSERT INTO `area` VALUES ('2459', '252', '3', '302055', '湘桥区', '');
INSERT INTO `area` VALUES ('2460', '252', '3', '302056', '潮安县', '');
INSERT INTO `area` VALUES ('2461', '252', '3', '302057', '饶平县', '');
INSERT INTO `area` VALUES ('2462', '253', '3', '302058', '市辖区', '');
INSERT INTO `area` VALUES ('2463', '253', '3', '302059', '榕城区', '');
INSERT INTO `area` VALUES ('2464', '253', '3', '302060', '揭东县', '');
INSERT INTO `area` VALUES ('2465', '253', '3', '302061', '揭西县', '');
INSERT INTO `area` VALUES ('2466', '253', '3', '302062', '惠来县', '');
INSERT INTO `area` VALUES ('2467', '253', '3', '302063', '普宁市', '');
INSERT INTO `area` VALUES ('2468', '254', '3', '302064', '市辖区', '');
INSERT INTO `area` VALUES ('2469', '254', '3', '302065', '云城区', '');
INSERT INTO `area` VALUES ('2470', '254', '3', '302066', '新兴县', '');
INSERT INTO `area` VALUES ('2471', '254', '3', '302067', '郁南县', '');
INSERT INTO `area` VALUES ('2472', '254', '3', '302068', '云安县', '');
INSERT INTO `area` VALUES ('2473', '254', '3', '302069', '罗定市', '');
INSERT INTO `area` VALUES ('2474', '255', '3', '302070', '市辖区', '');
INSERT INTO `area` VALUES ('2475', '255', '3', '302071', '兴宁区', '');
INSERT INTO `area` VALUES ('2476', '255', '3', '302072', '青秀区', '');
INSERT INTO `area` VALUES ('2477', '255', '3', '302073', '江南区', '');
INSERT INTO `area` VALUES ('2478', '255', '3', '302074', '西乡塘区', '');
INSERT INTO `area` VALUES ('2479', '255', '3', '302075', '良庆区', '');
INSERT INTO `area` VALUES ('2480', '255', '3', '302076', '邕宁区', '');
INSERT INTO `area` VALUES ('2481', '255', '3', '302077', '武鸣县', '');
INSERT INTO `area` VALUES ('2482', '255', '3', '302078', '隆安县', '');
INSERT INTO `area` VALUES ('2483', '255', '3', '302079', '马山县', '');
INSERT INTO `area` VALUES ('2484', '255', '3', '302080', '上林县', '');
INSERT INTO `area` VALUES ('2485', '255', '3', '302081', '宾阳县', '');
INSERT INTO `area` VALUES ('2486', '255', '3', '302082', '横　县', '');
INSERT INTO `area` VALUES ('2487', '256', '3', '302083', '市辖区', '');
INSERT INTO `area` VALUES ('2488', '256', '3', '302084', '城中区', '');
INSERT INTO `area` VALUES ('2489', '256', '3', '302085', '鱼峰区', '');
INSERT INTO `area` VALUES ('2490', '256', '3', '302086', '柳南区', '');
INSERT INTO `area` VALUES ('2491', '256', '3', '302087', '柳北区', '');
INSERT INTO `area` VALUES ('2492', '256', '3', '302088', '柳江县', '');
INSERT INTO `area` VALUES ('2493', '256', '3', '302089', '柳城县', '');
INSERT INTO `area` VALUES ('2494', '256', '3', '302090', '鹿寨县', '');
INSERT INTO `area` VALUES ('2495', '256', '3', '302091', '融安县', '');
INSERT INTO `area` VALUES ('2496', '256', '3', '302092', '融水苗族自治县', '');
INSERT INTO `area` VALUES ('2497', '256', '3', '302093', '三江侗族自治县', '');
INSERT INTO `area` VALUES ('2498', '257', '3', '302094', '市辖区', '');
INSERT INTO `area` VALUES ('2499', '257', '3', '302095', '秀峰区', '');
INSERT INTO `area` VALUES ('2500', '257', '3', '302096', '叠彩区', '');
INSERT INTO `area` VALUES ('2501', '257', '3', '302097', '象山区', '');
INSERT INTO `area` VALUES ('2502', '257', '3', '302098', '七星区', '');
INSERT INTO `area` VALUES ('2503', '257', '3', '302099', '雁山区', '');
INSERT INTO `area` VALUES ('2504', '257', '3', '302100', '阳朔县', '');
INSERT INTO `area` VALUES ('2505', '257', '3', '302101', '临桂县', '');
INSERT INTO `area` VALUES ('2506', '257', '3', '302102', '灵川县', '');
INSERT INTO `area` VALUES ('2507', '257', '3', '302103', '全州县', '');
INSERT INTO `area` VALUES ('2508', '257', '3', '302104', '兴安县', '');
INSERT INTO `area` VALUES ('2509', '257', '3', '302105', '永福县', '');
INSERT INTO `area` VALUES ('2510', '257', '3', '302106', '灌阳县', '');
INSERT INTO `area` VALUES ('2511', '257', '3', '302107', '龙胜各族自治县', '');
INSERT INTO `area` VALUES ('2512', '257', '3', '302108', '资源县', '');
INSERT INTO `area` VALUES ('2513', '257', '3', '302109', '平乐县', '');
INSERT INTO `area` VALUES ('2514', '257', '3', '302110', '荔蒲县', '');
INSERT INTO `area` VALUES ('2515', '257', '3', '302111', '恭城瑶族自治县', '');
INSERT INTO `area` VALUES ('2516', '258', '3', '302112', '市辖区', '');
INSERT INTO `area` VALUES ('2517', '258', '3', '302113', '万秀区', '');
INSERT INTO `area` VALUES ('2518', '258', '3', '302114', '蝶山区', '');
INSERT INTO `area` VALUES ('2519', '258', '3', '302115', '长洲区', '');
INSERT INTO `area` VALUES ('2520', '258', '3', '302116', '苍梧县', '');
INSERT INTO `area` VALUES ('2521', '258', '3', '302117', '藤　县', '');
INSERT INTO `area` VALUES ('2522', '258', '3', '302118', '蒙山县', '');
INSERT INTO `area` VALUES ('2523', '258', '3', '302119', '岑溪市', '');
INSERT INTO `area` VALUES ('2524', '259', '3', '302120', '市辖区', '');
INSERT INTO `area` VALUES ('2525', '259', '3', '302121', '海城区', '');
INSERT INTO `area` VALUES ('2526', '259', '3', '302122', '银海区', '');
INSERT INTO `area` VALUES ('2527', '259', '3', '302123', '铁山港区', '');
INSERT INTO `area` VALUES ('2528', '259', '3', '302124', '合浦县', '');
INSERT INTO `area` VALUES ('2529', '260', '3', '302125', '市辖区', '');
INSERT INTO `area` VALUES ('2530', '260', '3', '302126', '港口区', '');
INSERT INTO `area` VALUES ('2531', '260', '3', '302127', '防城区', '');
INSERT INTO `area` VALUES ('2532', '260', '3', '302128', '上思县', '');
INSERT INTO `area` VALUES ('2533', '260', '3', '302129', '东兴市', '');
INSERT INTO `area` VALUES ('2534', '261', '3', '302130', '市辖区', '');
INSERT INTO `area` VALUES ('2535', '261', '3', '302131', '钦南区', '');
INSERT INTO `area` VALUES ('2536', '261', '3', '302132', '钦北区', '');
INSERT INTO `area` VALUES ('2537', '261', '3', '302133', '灵山县', '');
INSERT INTO `area` VALUES ('2538', '261', '3', '302134', '浦北县', '');
INSERT INTO `area` VALUES ('2539', '262', '3', '302135', '市辖区', '');
INSERT INTO `area` VALUES ('2540', '262', '3', '302136', '港北区', '');
INSERT INTO `area` VALUES ('2541', '262', '3', '302137', '港南区', '');
INSERT INTO `area` VALUES ('2542', '262', '3', '302138', '覃塘区', '');
INSERT INTO `area` VALUES ('2543', '262', '3', '302139', '平南县', '');
INSERT INTO `area` VALUES ('2544', '262', '3', '302140', '桂平市', '');
INSERT INTO `area` VALUES ('2545', '263', '3', '302141', '市辖区', '');
INSERT INTO `area` VALUES ('2546', '263', '3', '302142', '玉州区', '');
INSERT INTO `area` VALUES ('2547', '263', '3', '302143', '容　县', '');
INSERT INTO `area` VALUES ('2548', '263', '3', '302144', '陆川县', '');
INSERT INTO `area` VALUES ('2549', '263', '3', '302145', '博白县', '');
INSERT INTO `area` VALUES ('2550', '263', '3', '302146', '兴业县', '');
INSERT INTO `area` VALUES ('2551', '263', '3', '302147', '北流市', '');
INSERT INTO `area` VALUES ('2552', '264', '3', '302148', '市辖区', '');
INSERT INTO `area` VALUES ('2553', '264', '3', '302149', '右江区', '');
INSERT INTO `area` VALUES ('2554', '264', '3', '302150', '田阳县', '');
INSERT INTO `area` VALUES ('2555', '264', '3', '302151', '田东县', '');
INSERT INTO `area` VALUES ('2556', '264', '3', '302152', '平果县', '');
INSERT INTO `area` VALUES ('2557', '264', '3', '302153', '德保县', '');
INSERT INTO `area` VALUES ('2558', '264', '3', '302154', '靖西县', '');
INSERT INTO `area` VALUES ('2559', '264', '3', '302155', '那坡县', '');
INSERT INTO `area` VALUES ('2560', '264', '3', '302156', '凌云县', '');
INSERT INTO `area` VALUES ('2561', '264', '3', '302157', '乐业县', '');
INSERT INTO `area` VALUES ('2562', '264', '3', '302158', '田林县', '');
INSERT INTO `area` VALUES ('2563', '264', '3', '302159', '西林县', '');
INSERT INTO `area` VALUES ('2564', '264', '3', '302160', '隆林各族自治县', '');
INSERT INTO `area` VALUES ('2565', '265', '3', '302161', '市辖区', '');
INSERT INTO `area` VALUES ('2566', '265', '3', '302162', '八步区', '');
INSERT INTO `area` VALUES ('2567', '265', '3', '302163', '昭平县', '');
INSERT INTO `area` VALUES ('2568', '265', '3', '302164', '钟山县', '');
INSERT INTO `area` VALUES ('2569', '265', '3', '302165', '富川瑶族自治县', '');
INSERT INTO `area` VALUES ('2570', '266', '3', '302166', '市辖区', '');
INSERT INTO `area` VALUES ('2571', '266', '3', '302167', '金城江区', '');
INSERT INTO `area` VALUES ('2572', '266', '3', '302168', '南丹县', '');
INSERT INTO `area` VALUES ('2573', '266', '3', '302169', '天峨县', '');
INSERT INTO `area` VALUES ('2574', '266', '3', '302170', '凤山县', '');
INSERT INTO `area` VALUES ('2575', '266', '3', '302171', '东兰县', '');
INSERT INTO `area` VALUES ('2576', '266', '3', '302172', '罗城仫佬族自治县', '');
INSERT INTO `area` VALUES ('2577', '266', '3', '302173', '环江毛南族自治县', '');
INSERT INTO `area` VALUES ('2578', '266', '3', '302174', '巴马瑶族自治县', '');
INSERT INTO `area` VALUES ('2579', '266', '3', '302175', '都安瑶族自治县', '');
INSERT INTO `area` VALUES ('2580', '266', '3', '302176', '大化瑶族自治县', '');
INSERT INTO `area` VALUES ('2581', '266', '3', '302177', '宜州市', '');
INSERT INTO `area` VALUES ('2582', '267', '3', '302178', '市辖区', '');
INSERT INTO `area` VALUES ('2583', '267', '3', '302179', '兴宾区', '');
INSERT INTO `area` VALUES ('2584', '267', '3', '302180', '忻城县', '');
INSERT INTO `area` VALUES ('2585', '267', '3', '302181', '象州县', '');
INSERT INTO `area` VALUES ('2586', '267', '3', '302182', '武宣县', '');
INSERT INTO `area` VALUES ('2587', '267', '3', '302183', '金秀瑶族自治县', '');
INSERT INTO `area` VALUES ('2588', '267', '3', '302184', '合山市', '');
INSERT INTO `area` VALUES ('2589', '268', '3', '302185', '市辖区', '');
INSERT INTO `area` VALUES ('2590', '268', '3', '302186', '江洲区', '');
INSERT INTO `area` VALUES ('2591', '268', '3', '302187', '扶绥县', '');
INSERT INTO `area` VALUES ('2592', '268', '3', '302188', '宁明县', '');
INSERT INTO `area` VALUES ('2593', '268', '3', '302189', '龙州县', '');
INSERT INTO `area` VALUES ('2594', '268', '3', '302190', '大新县', '');
INSERT INTO `area` VALUES ('2595', '268', '3', '302191', '天等县', '');
INSERT INTO `area` VALUES ('2596', '268', '3', '302192', '凭祥市', '');
INSERT INTO `area` VALUES ('2597', '269', '3', '302193', '市辖区', '');
INSERT INTO `area` VALUES ('2598', '269', '3', '302194', '秀英区', '');
INSERT INTO `area` VALUES ('2599', '269', '3', '302195', '龙华区', '');
INSERT INTO `area` VALUES ('2600', '269', '3', '302196', '琼山区', '');
INSERT INTO `area` VALUES ('2601', '269', '3', '302197', '美兰区', '');
INSERT INTO `area` VALUES ('2602', '270', '3', '302198', '市辖区', '');
INSERT INTO `area` VALUES ('2603', '271', '3', '302199', '五指山市', '');
INSERT INTO `area` VALUES ('2604', '271', '3', '302200', '琼海市', '');
INSERT INTO `area` VALUES ('2605', '271', '3', '302201', '儋州市', '');
INSERT INTO `area` VALUES ('2606', '271', '3', '302202', '文昌市', '');
INSERT INTO `area` VALUES ('2607', '271', '3', '302203', '万宁市', '');
INSERT INTO `area` VALUES ('2608', '271', '3', '302204', '东方市', '');
INSERT INTO `area` VALUES ('2609', '271', '3', '302205', '定安县', '');
INSERT INTO `area` VALUES ('2610', '271', '3', '302206', '屯昌县', '');
INSERT INTO `area` VALUES ('2611', '271', '3', '302207', '澄迈县', '');
INSERT INTO `area` VALUES ('2612', '271', '3', '302208', '临高县', '');
INSERT INTO `area` VALUES ('2613', '271', '3', '302209', '白沙黎族自治县', '');
INSERT INTO `area` VALUES ('2614', '271', '3', '302210', '昌江黎族自治县', '');
INSERT INTO `area` VALUES ('2615', '271', '3', '302211', '乐东黎族自治县', '');
INSERT INTO `area` VALUES ('2616', '271', '3', '302212', '陵水黎族自治县', '');
INSERT INTO `area` VALUES ('2617', '271', '3', '302213', '保亭黎族苗族自治县', '');
INSERT INTO `area` VALUES ('2618', '271', '3', '302214', '琼中黎族苗族自治县', '');
INSERT INTO `area` VALUES ('2619', '271', '3', '302215', '西沙群岛', '');
INSERT INTO `area` VALUES ('2620', '271', '3', '302216', '南沙群岛', '');
INSERT INTO `area` VALUES ('2621', '271', '3', '302217', '中沙群岛的岛礁及其海域', '');
INSERT INTO `area` VALUES ('2622', '272', '3', '302218', '万州区', '');
INSERT INTO `area` VALUES ('2623', '272', '3', '302219', '涪陵区', '');
INSERT INTO `area` VALUES ('2624', '272', '3', '302220', '渝中区', '');
INSERT INTO `area` VALUES ('2625', '272', '3', '302221', '大渡口区', '');
INSERT INTO `area` VALUES ('2626', '272', '3', '302222', '江北区', '');
INSERT INTO `area` VALUES ('2627', '272', '3', '302223', '沙坪坝区', '');
INSERT INTO `area` VALUES ('2628', '272', '3', '302224', '九龙坡区', '');
INSERT INTO `area` VALUES ('2629', '272', '3', '302225', '南岸区', '');
INSERT INTO `area` VALUES ('2630', '272', '3', '302226', '北碚区', '');
INSERT INTO `area` VALUES ('2631', '272', '3', '302227', '万盛区', '');
INSERT INTO `area` VALUES ('2632', '272', '3', '302228', '双桥区', '');
INSERT INTO `area` VALUES ('2633', '272', '3', '302229', '渝北区', '');
INSERT INTO `area` VALUES ('2634', '272', '3', '302230', '巴南区', '');
INSERT INTO `area` VALUES ('2635', '272', '3', '302231', '黔江区', '');
INSERT INTO `area` VALUES ('2636', '272', '3', '302232', '长寿区', '');
INSERT INTO `area` VALUES ('2637', '273', '3', '302233', '綦江县', '');
INSERT INTO `area` VALUES ('2638', '273', '3', '302234', '潼南县', '');
INSERT INTO `area` VALUES ('2639', '273', '3', '302235', '铜梁县', '');
INSERT INTO `area` VALUES ('2640', '273', '3', '302236', '大足县', '');
INSERT INTO `area` VALUES ('2641', '273', '3', '302237', '荣昌县', '');
INSERT INTO `area` VALUES ('2642', '273', '3', '302238', '璧山县', '');
INSERT INTO `area` VALUES ('2643', '273', '3', '302239', '梁平县', '');
INSERT INTO `area` VALUES ('2644', '273', '3', '302240', '城口县', '');
INSERT INTO `area` VALUES ('2645', '273', '3', '302241', '丰都县', '');
INSERT INTO `area` VALUES ('2646', '273', '3', '302242', '垫江县', '');
INSERT INTO `area` VALUES ('2647', '273', '3', '302243', '武隆县', '');
INSERT INTO `area` VALUES ('2648', '273', '3', '302244', '忠　县', '');
INSERT INTO `area` VALUES ('2649', '273', '3', '302245', '开　县', '');
INSERT INTO `area` VALUES ('2650', '273', '3', '302246', '云阳县', '');
INSERT INTO `area` VALUES ('2651', '273', '3', '302247', '奉节县', '');
INSERT INTO `area` VALUES ('2652', '273', '3', '302248', '巫山县', '');
INSERT INTO `area` VALUES ('2653', '273', '3', '302249', '巫溪县', '');
INSERT INTO `area` VALUES ('2654', '273', '3', '302250', '石柱土家族自治县', '');
INSERT INTO `area` VALUES ('2655', '273', '3', '302251', '秀山土家族苗族自治县', '');
INSERT INTO `area` VALUES ('2656', '273', '3', '302252', '酉阳土家族苗族自治县', '');
INSERT INTO `area` VALUES ('2657', '273', '3', '302253', '彭水苗族土家族自治县', '');
INSERT INTO `area` VALUES ('2658', '274', '3', '302254', '江津市', '');
INSERT INTO `area` VALUES ('2659', '274', '3', '302255', '合川市', '');
INSERT INTO `area` VALUES ('2660', '274', '3', '302256', '永川市', '');
INSERT INTO `area` VALUES ('2661', '274', '3', '302257', '南川市', '');
INSERT INTO `area` VALUES ('2662', '275', '3', '302258', '市辖区', '');
INSERT INTO `area` VALUES ('2663', '275', '3', '302259', '锦江区', '');
INSERT INTO `area` VALUES ('2664', '275', '3', '302260', '青羊区', '');
INSERT INTO `area` VALUES ('2665', '275', '3', '302261', '金牛区', '');
INSERT INTO `area` VALUES ('2666', '275', '3', '302262', '武侯区', '');
INSERT INTO `area` VALUES ('2667', '275', '3', '302263', '成华区', '');
INSERT INTO `area` VALUES ('2668', '275', '3', '302264', '龙泉驿区', '');
INSERT INTO `area` VALUES ('2669', '275', '3', '302265', '青白江区', '');
INSERT INTO `area` VALUES ('2670', '275', '3', '302266', '新都区', '');
INSERT INTO `area` VALUES ('2671', '275', '3', '302267', '温江区', '');
INSERT INTO `area` VALUES ('2672', '275', '3', '302268', '金堂县', '');
INSERT INTO `area` VALUES ('2673', '275', '3', '302269', '双流县', '');
INSERT INTO `area` VALUES ('2674', '275', '3', '302270', '郫　县', '');
INSERT INTO `area` VALUES ('2675', '275', '3', '302271', '大邑县', '');
INSERT INTO `area` VALUES ('2676', '275', '3', '302272', '蒲江县', '');
INSERT INTO `area` VALUES ('2677', '275', '3', '302273', '新津县', '');
INSERT INTO `area` VALUES ('2678', '275', '3', '302274', '都江堰市', '');
INSERT INTO `area` VALUES ('2679', '275', '3', '302275', '彭州市', '');
INSERT INTO `area` VALUES ('2680', '275', '3', '302276', '邛崃市', '');
INSERT INTO `area` VALUES ('2681', '275', '3', '302277', '崇州市', '');
INSERT INTO `area` VALUES ('2682', '276', '3', '302278', '市辖区', '');
INSERT INTO `area` VALUES ('2683', '276', '3', '302279', '自流井区', '');
INSERT INTO `area` VALUES ('2684', '276', '3', '302280', '贡井区', '');
INSERT INTO `area` VALUES ('2685', '276', '3', '302281', '大安区', '');
INSERT INTO `area` VALUES ('2686', '276', '3', '302282', '沿滩区', '');
INSERT INTO `area` VALUES ('2687', '276', '3', '302283', '荣　县', '');
INSERT INTO `area` VALUES ('2688', '276', '3', '302284', '富顺县', '');
INSERT INTO `area` VALUES ('2689', '277', '3', '302285', '市辖区', '');
INSERT INTO `area` VALUES ('2690', '277', '3', '302286', '东　区', '');
INSERT INTO `area` VALUES ('2691', '277', '3', '302287', '西　区', '');
INSERT INTO `area` VALUES ('2692', '277', '3', '302288', '仁和区', '');
INSERT INTO `area` VALUES ('2693', '277', '3', '302289', '米易县', '');
INSERT INTO `area` VALUES ('2694', '277', '3', '302290', '盐边县', '');
INSERT INTO `area` VALUES ('2695', '278', '3', '302291', '市辖区', '');
INSERT INTO `area` VALUES ('2696', '278', '3', '302292', '江阳区', '');
INSERT INTO `area` VALUES ('2697', '278', '3', '302293', '纳溪区', '');
INSERT INTO `area` VALUES ('2698', '278', '3', '302294', '龙马潭区', '');
INSERT INTO `area` VALUES ('2699', '278', '3', '302295', '泸　县', '');
INSERT INTO `area` VALUES ('2700', '278', '3', '302296', '合江县', '');
INSERT INTO `area` VALUES ('2701', '278', '3', '302297', '叙永县', '');
INSERT INTO `area` VALUES ('2702', '278', '3', '302298', '古蔺县', '');
INSERT INTO `area` VALUES ('2703', '279', '3', '302299', '市辖区', '');
INSERT INTO `area` VALUES ('2704', '279', '3', '302300', '旌阳区', '');
INSERT INTO `area` VALUES ('2705', '279', '3', '302301', '中江县', '');
INSERT INTO `area` VALUES ('2706', '279', '3', '302302', '罗江县', '');
INSERT INTO `area` VALUES ('2707', '279', '3', '302303', '广汉市', '');
INSERT INTO `area` VALUES ('2708', '279', '3', '302304', '什邡市', '');
INSERT INTO `area` VALUES ('2709', '279', '3', '302305', '绵竹市', '');
INSERT INTO `area` VALUES ('2710', '280', '3', '302306', '市辖区', '');
INSERT INTO `area` VALUES ('2711', '280', '3', '302307', '涪城区', '');
INSERT INTO `area` VALUES ('2712', '280', '3', '302308', '游仙区', '');
INSERT INTO `area` VALUES ('2713', '280', '3', '302309', '三台县', '');
INSERT INTO `area` VALUES ('2714', '280', '3', '302310', '盐亭县', '');
INSERT INTO `area` VALUES ('2715', '280', '3', '302311', '安　县', '');
INSERT INTO `area` VALUES ('2716', '280', '3', '302312', '梓潼县', '');
INSERT INTO `area` VALUES ('2717', '280', '3', '302313', '北川羌族自治县', '');
INSERT INTO `area` VALUES ('2718', '280', '3', '302314', '平武县', '');
INSERT INTO `area` VALUES ('2719', '280', '3', '302315', '江油市', '');
INSERT INTO `area` VALUES ('2720', '281', '3', '302316', '市辖区', '');
INSERT INTO `area` VALUES ('2721', '281', '3', '302317', '市中区', '');
INSERT INTO `area` VALUES ('2722', '281', '3', '302318', '元坝区', '');
INSERT INTO `area` VALUES ('2723', '281', '3', '302319', '朝天区', '');
INSERT INTO `area` VALUES ('2724', '281', '3', '302320', '旺苍县', '');
INSERT INTO `area` VALUES ('2725', '281', '3', '302321', '青川县', '');
INSERT INTO `area` VALUES ('2726', '281', '3', '302322', '剑阁县', '');
INSERT INTO `area` VALUES ('2727', '281', '3', '302323', '苍溪县', '');
INSERT INTO `area` VALUES ('2728', '282', '3', '302324', '市辖区', '');
INSERT INTO `area` VALUES ('2729', '282', '3', '302325', '船山区', '');
INSERT INTO `area` VALUES ('2730', '282', '3', '302326', '安居区', '');
INSERT INTO `area` VALUES ('2731', '282', '3', '302327', '蓬溪县', '');
INSERT INTO `area` VALUES ('2732', '282', '3', '302328', '射洪县', '');
INSERT INTO `area` VALUES ('2733', '282', '3', '302329', '大英县', '');
INSERT INTO `area` VALUES ('2734', '283', '3', '302330', '市辖区', '');
INSERT INTO `area` VALUES ('2735', '283', '3', '302331', '市中区', '');
INSERT INTO `area` VALUES ('2736', '283', '3', '302332', '东兴区', '');
INSERT INTO `area` VALUES ('2737', '283', '3', '302333', '威远县', '');
INSERT INTO `area` VALUES ('2738', '283', '3', '302334', '资中县', '');
INSERT INTO `area` VALUES ('2739', '283', '3', '302335', '隆昌县', '');
INSERT INTO `area` VALUES ('2740', '284', '3', '302336', '市辖区', '');
INSERT INTO `area` VALUES ('2741', '284', '3', '302337', '市中区', '');
INSERT INTO `area` VALUES ('2742', '284', '3', '302338', '沙湾区', '');
INSERT INTO `area` VALUES ('2743', '284', '3', '302339', '五通桥区', '');
INSERT INTO `area` VALUES ('2744', '284', '3', '302340', '金口河区', '');
INSERT INTO `area` VALUES ('2745', '284', '3', '302341', '犍为县', '');
INSERT INTO `area` VALUES ('2746', '284', '3', '302342', '井研县', '');
INSERT INTO `area` VALUES ('2747', '284', '3', '302343', '夹江县', '');
INSERT INTO `area` VALUES ('2748', '284', '3', '302344', '沐川县', '');
INSERT INTO `area` VALUES ('2749', '284', '3', '302345', '峨边彝族自治县', '');
INSERT INTO `area` VALUES ('2750', '284', '3', '302346', '马边彝族自治县', '');
INSERT INTO `area` VALUES ('2751', '284', '3', '302347', '峨眉山市', '');
INSERT INTO `area` VALUES ('2752', '285', '3', '302348', '市辖区', '');
INSERT INTO `area` VALUES ('2753', '285', '3', '302349', '顺庆区', '');
INSERT INTO `area` VALUES ('2754', '285', '3', '302350', '高坪区', '');
INSERT INTO `area` VALUES ('2755', '285', '3', '302351', '嘉陵区', '');
INSERT INTO `area` VALUES ('2756', '285', '3', '302352', '南部县', '');
INSERT INTO `area` VALUES ('2757', '285', '3', '302353', '营山县', '');
INSERT INTO `area` VALUES ('2758', '285', '3', '302354', '蓬安县', '');
INSERT INTO `area` VALUES ('2759', '285', '3', '302355', '仪陇县', '');
INSERT INTO `area` VALUES ('2760', '285', '3', '302356', '西充县', '');
INSERT INTO `area` VALUES ('2761', '285', '3', '302357', '阆中市', '');
INSERT INTO `area` VALUES ('2762', '286', '3', '302358', '市辖区', '');
INSERT INTO `area` VALUES ('2763', '286', '3', '302359', '东坡区', '');
INSERT INTO `area` VALUES ('2764', '286', '3', '302360', '仁寿县', '');
INSERT INTO `area` VALUES ('2765', '286', '3', '302361', '彭山县', '');
INSERT INTO `area` VALUES ('2766', '286', '3', '302362', '洪雅县', '');
INSERT INTO `area` VALUES ('2767', '286', '3', '302363', '丹棱县', '');
INSERT INTO `area` VALUES ('2768', '286', '3', '302364', '青神县', '');
INSERT INTO `area` VALUES ('2769', '287', '3', '302365', '市辖区', '');
INSERT INTO `area` VALUES ('2770', '287', '3', '302366', '翠屏区', '');
INSERT INTO `area` VALUES ('2771', '287', '3', '302367', '宜宾县', '');
INSERT INTO `area` VALUES ('2772', '287', '3', '302368', '南溪县', '');
INSERT INTO `area` VALUES ('2773', '287', '3', '302369', '江安县', '');
INSERT INTO `area` VALUES ('2774', '287', '3', '302370', '长宁县', '');
INSERT INTO `area` VALUES ('2775', '287', '3', '302371', '高　县', '');
INSERT INTO `area` VALUES ('2776', '287', '3', '302372', '珙　县', '');
INSERT INTO `area` VALUES ('2777', '287', '3', '302373', '筠连县', '');
INSERT INTO `area` VALUES ('2778', '287', '3', '302374', '兴文县', '');
INSERT INTO `area` VALUES ('2779', '287', '3', '302375', '屏山县', '');
INSERT INTO `area` VALUES ('2780', '288', '3', '302376', '市辖区', '');
INSERT INTO `area` VALUES ('2781', '288', '3', '302377', '广安区', '');
INSERT INTO `area` VALUES ('2782', '288', '3', '302378', '岳池县', '');
INSERT INTO `area` VALUES ('2783', '288', '3', '302379', '武胜县', '');
INSERT INTO `area` VALUES ('2784', '288', '3', '302380', '邻水县', '');
INSERT INTO `area` VALUES ('2785', '288', '3', '302381', '华莹市', '');
INSERT INTO `area` VALUES ('2786', '289', '3', '302382', '市辖区', '');
INSERT INTO `area` VALUES ('2787', '289', '3', '302383', '通川区', '');
INSERT INTO `area` VALUES ('2788', '289', '3', '302384', '达　县', '');
INSERT INTO `area` VALUES ('2789', '289', '3', '302385', '宣汉县', '');
INSERT INTO `area` VALUES ('2790', '289', '3', '302386', '开江县', '');
INSERT INTO `area` VALUES ('2791', '289', '3', '302387', '大竹县', '');
INSERT INTO `area` VALUES ('2792', '289', '3', '302388', '渠　县', '');
INSERT INTO `area` VALUES ('2793', '289', '3', '302389', '万源市', '');
INSERT INTO `area` VALUES ('2794', '290', '3', '302390', '市辖区', '');
INSERT INTO `area` VALUES ('2795', '290', '3', '302391', '雨城区', '');
INSERT INTO `area` VALUES ('2796', '290', '3', '302392', '名山县', '');
INSERT INTO `area` VALUES ('2797', '290', '3', '302393', '荥经县', '');
INSERT INTO `area` VALUES ('2798', '290', '3', '302394', '汉源县', '');
INSERT INTO `area` VALUES ('2799', '290', '3', '302395', '石棉县', '');
INSERT INTO `area` VALUES ('2800', '290', '3', '302396', '天全县', '');
INSERT INTO `area` VALUES ('2801', '290', '3', '302397', '芦山县', '');
INSERT INTO `area` VALUES ('2802', '290', '3', '302398', '宝兴县', '');
INSERT INTO `area` VALUES ('2803', '291', '3', '302399', '市辖区', '');
INSERT INTO `area` VALUES ('2804', '291', '3', '302400', '巴州区', '');
INSERT INTO `area` VALUES ('2805', '291', '3', '302401', '通江县', '');
INSERT INTO `area` VALUES ('2806', '291', '3', '302402', '南江县', '');
INSERT INTO `area` VALUES ('2807', '291', '3', '302403', '平昌县', '');
INSERT INTO `area` VALUES ('2808', '292', '3', '302404', '市辖区', '');
INSERT INTO `area` VALUES ('2809', '292', '3', '302405', '雁江区', '');
INSERT INTO `area` VALUES ('2810', '292', '3', '302406', '安岳县', '');
INSERT INTO `area` VALUES ('2811', '292', '3', '302407', '乐至县', '');
INSERT INTO `area` VALUES ('2812', '292', '3', '302408', '简阳市', '');
INSERT INTO `area` VALUES ('2813', '293', '3', '302409', '汶川县', '');
INSERT INTO `area` VALUES ('2814', '293', '3', '302410', '理　县', '');
INSERT INTO `area` VALUES ('2815', '293', '3', '302411', '茂　县', '');
INSERT INTO `area` VALUES ('2816', '293', '3', '302412', '松潘县', '');
INSERT INTO `area` VALUES ('2817', '293', '3', '302413', '九寨沟县', '');
INSERT INTO `area` VALUES ('2818', '293', '3', '302414', '金川县', '');
INSERT INTO `area` VALUES ('2819', '293', '3', '302415', '小金县', '');
INSERT INTO `area` VALUES ('2820', '293', '3', '302416', '黑水县', '');
INSERT INTO `area` VALUES ('2821', '293', '3', '302417', '马尔康县', '');
INSERT INTO `area` VALUES ('2822', '293', '3', '302418', '壤塘县', '');
INSERT INTO `area` VALUES ('2823', '293', '3', '302419', '阿坝县', '');
INSERT INTO `area` VALUES ('2824', '293', '3', '302420', '若尔盖县', '');
INSERT INTO `area` VALUES ('2825', '293', '3', '302421', '红原县', '');
INSERT INTO `area` VALUES ('2826', '294', '3', '302422', '康定县', '');
INSERT INTO `area` VALUES ('2827', '294', '3', '302423', '泸定县', '');
INSERT INTO `area` VALUES ('2828', '294', '3', '302424', '丹巴县', '');
INSERT INTO `area` VALUES ('2829', '294', '3', '302425', '九龙县', '');
INSERT INTO `area` VALUES ('2830', '294', '3', '302426', '雅江县', '');
INSERT INTO `area` VALUES ('2831', '294', '3', '302427', '道孚县', '');
INSERT INTO `area` VALUES ('2832', '294', '3', '302428', '炉霍县', '');
INSERT INTO `area` VALUES ('2833', '294', '3', '302429', '甘孜县', '');
INSERT INTO `area` VALUES ('2834', '294', '3', '302430', '新龙县', '');
INSERT INTO `area` VALUES ('2835', '294', '3', '302431', '德格县', '');
INSERT INTO `area` VALUES ('2836', '294', '3', '302432', '白玉县', '');
INSERT INTO `area` VALUES ('2837', '294', '3', '302433', '石渠县', '');
INSERT INTO `area` VALUES ('2838', '294', '3', '302434', '色达县', '');
INSERT INTO `area` VALUES ('2839', '294', '3', '302435', '理塘县', '');
INSERT INTO `area` VALUES ('2840', '294', '3', '302436', '巴塘县', '');
INSERT INTO `area` VALUES ('2841', '294', '3', '302437', '乡城县', '');
INSERT INTO `area` VALUES ('2842', '294', '3', '302438', '稻城县', '');
INSERT INTO `area` VALUES ('2843', '294', '3', '302439', '得荣县', '');
INSERT INTO `area` VALUES ('2844', '295', '3', '302440', '西昌市', '');
INSERT INTO `area` VALUES ('2845', '295', '3', '302441', '木里藏族自治县', '');
INSERT INTO `area` VALUES ('2846', '295', '3', '302442', '盐源县', '');
INSERT INTO `area` VALUES ('2847', '295', '3', '302443', '德昌县', '');
INSERT INTO `area` VALUES ('2848', '295', '3', '302444', '会理县', '');
INSERT INTO `area` VALUES ('2849', '295', '3', '302445', '会东县', '');
INSERT INTO `area` VALUES ('2850', '295', '3', '302446', '宁南县', '');
INSERT INTO `area` VALUES ('2851', '295', '3', '302447', '普格县', '');
INSERT INTO `area` VALUES ('2852', '295', '3', '302448', '布拖县', '');
INSERT INTO `area` VALUES ('2853', '295', '3', '302449', '金阳县', '');
INSERT INTO `area` VALUES ('2854', '295', '3', '302450', '昭觉县', '');
INSERT INTO `area` VALUES ('2855', '295', '3', '302451', '喜德县', '');
INSERT INTO `area` VALUES ('2856', '295', '3', '302452', '冕宁县', '');
INSERT INTO `area` VALUES ('2857', '295', '3', '302453', '越西县', '');
INSERT INTO `area` VALUES ('2858', '295', '3', '302454', '甘洛县', '');
INSERT INTO `area` VALUES ('2859', '295', '3', '302455', '美姑县', '');
INSERT INTO `area` VALUES ('2860', '295', '3', '302456', '雷波县', '');
INSERT INTO `area` VALUES ('2861', '296', '3', '302457', '市辖区', '');
INSERT INTO `area` VALUES ('2862', '296', '3', '302458', '南明区', '');
INSERT INTO `area` VALUES ('2863', '296', '3', '302459', '云岩区', '');
INSERT INTO `area` VALUES ('2864', '296', '3', '302460', '花溪区', '');
INSERT INTO `area` VALUES ('2865', '296', '3', '302461', '乌当区', '');
INSERT INTO `area` VALUES ('2866', '296', '3', '302462', '白云区', '');
INSERT INTO `area` VALUES ('2867', '296', '3', '302463', '小河区', '');
INSERT INTO `area` VALUES ('2868', '296', '3', '302464', '开阳县', '');
INSERT INTO `area` VALUES ('2869', '296', '3', '302465', '息烽县', '');
INSERT INTO `area` VALUES ('2870', '296', '3', '302466', '修文县', '');
INSERT INTO `area` VALUES ('2871', '296', '3', '302467', '清镇市', '');
INSERT INTO `area` VALUES ('2872', '297', '3', '302468', '钟山区', '');
INSERT INTO `area` VALUES ('2873', '297', '3', '302469', '六枝特区', '');
INSERT INTO `area` VALUES ('2874', '297', '3', '302470', '水城县', '');
INSERT INTO `area` VALUES ('2875', '297', '3', '302471', '盘　县', '');
INSERT INTO `area` VALUES ('2876', '298', '3', '302472', '市辖区', '');
INSERT INTO `area` VALUES ('2877', '298', '3', '302473', '红花岗区', '');
INSERT INTO `area` VALUES ('2878', '298', '3', '302474', '汇川区', '');
INSERT INTO `area` VALUES ('2879', '298', '3', '302475', '遵义县', '');
INSERT INTO `area` VALUES ('2880', '298', '3', '302476', '桐梓县', '');
INSERT INTO `area` VALUES ('2881', '298', '3', '302477', '绥阳县', '');
INSERT INTO `area` VALUES ('2882', '298', '3', '302478', '正安县', '');
INSERT INTO `area` VALUES ('2883', '298', '3', '302479', '道真仡佬族苗族自治县', '');
INSERT INTO `area` VALUES ('2884', '298', '3', '302480', '务川仡佬族苗族自治县', '');
INSERT INTO `area` VALUES ('2885', '298', '3', '302481', '凤冈县', '');
INSERT INTO `area` VALUES ('2886', '298', '3', '302482', '湄潭县', '');
INSERT INTO `area` VALUES ('2887', '298', '3', '302483', '余庆县', '');
INSERT INTO `area` VALUES ('2888', '298', '3', '302484', '习水县', '');
INSERT INTO `area` VALUES ('2889', '298', '3', '302485', '赤水市', '');
INSERT INTO `area` VALUES ('2890', '298', '3', '302486', '仁怀市', '');
INSERT INTO `area` VALUES ('2891', '299', '3', '302487', '市辖区', '');
INSERT INTO `area` VALUES ('2892', '299', '3', '302488', '西秀区', '');
INSERT INTO `area` VALUES ('2893', '299', '3', '302489', '平坝县', '');
INSERT INTO `area` VALUES ('2894', '299', '3', '302490', '普定县', '');
INSERT INTO `area` VALUES ('2895', '299', '3', '302491', '镇宁布依族苗族自治县', '');
INSERT INTO `area` VALUES ('2896', '299', '3', '302492', '关岭布依族苗族自治县', '');
INSERT INTO `area` VALUES ('2897', '299', '3', '302493', '紫云苗族布依族自治县', '');
INSERT INTO `area` VALUES ('2898', '300', '3', '302494', '铜仁市', '');
INSERT INTO `area` VALUES ('2899', '300', '3', '302495', '江口县', '');
INSERT INTO `area` VALUES ('2900', '300', '3', '302496', '玉屏侗族自治县', '');
INSERT INTO `area` VALUES ('2901', '300', '3', '302497', '石阡县', '');
INSERT INTO `area` VALUES ('2902', '300', '3', '302498', '思南县', '');
INSERT INTO `area` VALUES ('2903', '300', '3', '302499', '印江土家族苗族自治县', '');
INSERT INTO `area` VALUES ('2904', '300', '3', '302500', '德江县', '');
INSERT INTO `area` VALUES ('2905', '300', '3', '302501', '沿河土家族自治县', '');
INSERT INTO `area` VALUES ('2906', '300', '3', '302502', '松桃苗族自治县', '');
INSERT INTO `area` VALUES ('2907', '300', '3', '302503', '万山特区', '');
INSERT INTO `area` VALUES ('2908', '301', '3', '302504', '兴义市', '');
INSERT INTO `area` VALUES ('2909', '301', '3', '302505', '兴仁县', '');
INSERT INTO `area` VALUES ('2910', '301', '3', '302506', '普安县', '');
INSERT INTO `area` VALUES ('2911', '301', '3', '302507', '晴隆县', '');
INSERT INTO `area` VALUES ('2912', '301', '3', '302508', '贞丰县', '');
INSERT INTO `area` VALUES ('2913', '301', '3', '302509', '望谟县', '');
INSERT INTO `area` VALUES ('2914', '301', '3', '302510', '册亨县', '');
INSERT INTO `area` VALUES ('2915', '301', '3', '302511', '安龙县', '');
INSERT INTO `area` VALUES ('2916', '302', '3', '302512', '毕节市', '');
INSERT INTO `area` VALUES ('2917', '302', '3', '302513', '大方县', '');
INSERT INTO `area` VALUES ('2918', '302', '3', '302514', '黔西县', '');
INSERT INTO `area` VALUES ('2919', '302', '3', '302515', '金沙县', '');
INSERT INTO `area` VALUES ('2920', '302', '3', '302516', '织金县', '');
INSERT INTO `area` VALUES ('2921', '302', '3', '302517', '纳雍县', '');
INSERT INTO `area` VALUES ('2922', '302', '3', '302518', '威宁彝族回族苗族自治县', '');
INSERT INTO `area` VALUES ('2923', '302', '3', '302519', '赫章县', '');
INSERT INTO `area` VALUES ('2924', '303', '3', '302520', '凯里市', '');
INSERT INTO `area` VALUES ('2925', '303', '3', '302521', '黄平县', '');
INSERT INTO `area` VALUES ('2926', '303', '3', '302522', '施秉县', '');
INSERT INTO `area` VALUES ('2927', '303', '3', '302523', '三穗县', '');
INSERT INTO `area` VALUES ('2928', '303', '3', '302524', '镇远县', '');
INSERT INTO `area` VALUES ('2929', '303', '3', '302525', '岑巩县', '');
INSERT INTO `area` VALUES ('2930', '303', '3', '302526', '天柱县', '');
INSERT INTO `area` VALUES ('2931', '303', '3', '302527', '锦屏县', '');
INSERT INTO `area` VALUES ('2932', '303', '3', '302528', '剑河县', '');
INSERT INTO `area` VALUES ('2933', '303', '3', '302529', '台江县', '');
INSERT INTO `area` VALUES ('2934', '303', '3', '302530', '黎平县', '');
INSERT INTO `area` VALUES ('2935', '303', '3', '302531', '榕江县', '');
INSERT INTO `area` VALUES ('2936', '303', '3', '302532', '从江县', '');
INSERT INTO `area` VALUES ('2937', '303', '3', '302533', '雷山县', '');
INSERT INTO `area` VALUES ('2938', '303', '3', '302534', '麻江县', '');
INSERT INTO `area` VALUES ('2939', '303', '3', '302535', '丹寨县', '');
INSERT INTO `area` VALUES ('2940', '304', '3', '302536', '都匀市', '');
INSERT INTO `area` VALUES ('2941', '304', '3', '302537', '福泉市', '');
INSERT INTO `area` VALUES ('2942', '304', '3', '302538', '荔波县', '');
INSERT INTO `area` VALUES ('2943', '304', '3', '302539', '贵定县', '');
INSERT INTO `area` VALUES ('2944', '304', '3', '302540', '瓮安县', '');
INSERT INTO `area` VALUES ('2945', '304', '3', '302541', '独山县', '');
INSERT INTO `area` VALUES ('2946', '304', '3', '302542', '平塘县', '');
INSERT INTO `area` VALUES ('2947', '304', '3', '302543', '罗甸县', '');
INSERT INTO `area` VALUES ('2948', '304', '3', '302544', '长顺县', '');
INSERT INTO `area` VALUES ('2949', '304', '3', '302545', '龙里县', '');
INSERT INTO `area` VALUES ('2950', '304', '3', '302546', '惠水县', '');
INSERT INTO `area` VALUES ('2951', '304', '3', '302547', '三都水族自治县', '');
INSERT INTO `area` VALUES ('2952', '305', '3', '302548', '市辖区', '');
INSERT INTO `area` VALUES ('2953', '305', '3', '302549', '五华区', '');
INSERT INTO `area` VALUES ('2954', '305', '3', '302550', '盘龙区', '');
INSERT INTO `area` VALUES ('2955', '305', '3', '302551', '官渡区', '');
INSERT INTO `area` VALUES ('2956', '305', '3', '302552', '西山区', '');
INSERT INTO `area` VALUES ('2957', '305', '3', '302553', '东川区', '');
INSERT INTO `area` VALUES ('2958', '305', '3', '302554', '呈贡县', '');
INSERT INTO `area` VALUES ('2959', '305', '3', '302555', '晋宁县', '');
INSERT INTO `area` VALUES ('2960', '305', '3', '302556', '富民县', '');
INSERT INTO `area` VALUES ('2961', '305', '3', '302557', '宜良县', '');
INSERT INTO `area` VALUES ('2962', '305', '3', '302558', '石林彝族自治县', '');
INSERT INTO `area` VALUES ('2963', '305', '3', '302559', '嵩明县', '');
INSERT INTO `area` VALUES ('2964', '305', '3', '302560', '禄劝彝族苗族自治县', '');
INSERT INTO `area` VALUES ('2965', '305', '3', '302561', '寻甸回族彝族自治县', '');
INSERT INTO `area` VALUES ('2966', '305', '3', '302562', '安宁市', '');
INSERT INTO `area` VALUES ('2967', '306', '3', '302563', '市辖区', '');
INSERT INTO `area` VALUES ('2968', '306', '3', '302564', '麒麟区', '');
INSERT INTO `area` VALUES ('2969', '306', '3', '302565', '马龙县', '');
INSERT INTO `area` VALUES ('2970', '306', '3', '302566', '陆良县', '');
INSERT INTO `area` VALUES ('2971', '306', '3', '302567', '师宗县', '');
INSERT INTO `area` VALUES ('2972', '306', '3', '302568', '罗平县', '');
INSERT INTO `area` VALUES ('2973', '306', '3', '302569', '富源县', '');
INSERT INTO `area` VALUES ('2974', '306', '3', '302570', '会泽县', '');
INSERT INTO `area` VALUES ('2975', '306', '3', '302571', '沾益县', '');
INSERT INTO `area` VALUES ('2976', '306', '3', '302572', '宣威市', '');
INSERT INTO `area` VALUES ('2977', '307', '3', '302573', '市辖区', '');
INSERT INTO `area` VALUES ('2978', '307', '3', '302574', '红塔区', '');
INSERT INTO `area` VALUES ('2979', '307', '3', '302575', '江川县', '');
INSERT INTO `area` VALUES ('2980', '307', '3', '302576', '澄江县', '');
INSERT INTO `area` VALUES ('2981', '307', '3', '302577', '通海县', '');
INSERT INTO `area` VALUES ('2982', '307', '3', '302578', '华宁县', '');
INSERT INTO `area` VALUES ('2983', '307', '3', '302579', '易门县', '');
INSERT INTO `area` VALUES ('2984', '307', '3', '302580', '峨山彝族自治县', '');
INSERT INTO `area` VALUES ('2985', '307', '3', '302581', '新平彝族傣族自治县', '');
INSERT INTO `area` VALUES ('2986', '307', '3', '302582', '元江哈尼族彝族傣族自治县', '');
INSERT INTO `area` VALUES ('2987', '308', '3', '302583', '市辖区', '');
INSERT INTO `area` VALUES ('2988', '308', '3', '302584', '隆阳区', '');
INSERT INTO `area` VALUES ('2989', '308', '3', '302585', '施甸县', '');
INSERT INTO `area` VALUES ('2990', '308', '3', '302586', '腾冲县', '');
INSERT INTO `area` VALUES ('2991', '308', '3', '302587', '龙陵县', '');
INSERT INTO `area` VALUES ('2992', '308', '3', '302588', '昌宁县', '');
INSERT INTO `area` VALUES ('2993', '309', '3', '302589', '市辖区', '');
INSERT INTO `area` VALUES ('2994', '309', '3', '302590', '昭阳区', '');
INSERT INTO `area` VALUES ('2995', '309', '3', '302591', '鲁甸县', '');
INSERT INTO `area` VALUES ('2996', '309', '3', '302592', '巧家县', '');
INSERT INTO `area` VALUES ('2997', '309', '3', '302593', '盐津县', '');
INSERT INTO `area` VALUES ('2998', '309', '3', '302594', '大关县', '');
INSERT INTO `area` VALUES ('2999', '309', '3', '302595', '永善县', '');
INSERT INTO `area` VALUES ('3000', '309', '3', '302596', '绥江县', '');
INSERT INTO `area` VALUES ('3001', '309', '3', '302597', '镇雄县', '');
INSERT INTO `area` VALUES ('3002', '309', '3', '302598', '彝良县', '');
INSERT INTO `area` VALUES ('3003', '309', '3', '302599', '威信县', '');
INSERT INTO `area` VALUES ('3004', '309', '3', '302600', '水富县', '');
INSERT INTO `area` VALUES ('3005', '310', '3', '302601', '市辖区', '');
INSERT INTO `area` VALUES ('3006', '310', '3', '302602', '古城区', '');
INSERT INTO `area` VALUES ('3007', '310', '3', '302603', '玉龙纳西族自治县', '');
INSERT INTO `area` VALUES ('3008', '310', '3', '302604', '永胜县', '');
INSERT INTO `area` VALUES ('3009', '310', '3', '302605', '华坪县', '');
INSERT INTO `area` VALUES ('3010', '310', '3', '302606', '宁蒗彝族自治县', '');
INSERT INTO `area` VALUES ('3011', '311', '3', '302607', '市辖区', '');
INSERT INTO `area` VALUES ('3012', '311', '3', '302608', '翠云区', '');
INSERT INTO `area` VALUES ('3013', '311', '3', '302609', '普洱哈尼族彝族自治县', '');
INSERT INTO `area` VALUES ('3014', '311', '3', '302610', '墨江哈尼族自治县', '');
INSERT INTO `area` VALUES ('3015', '311', '3', '302611', '景东彝族自治县', '');
INSERT INTO `area` VALUES ('3016', '311', '3', '302612', '景谷傣族彝族自治县', '');
INSERT INTO `area` VALUES ('3017', '311', '3', '302613', '镇沅彝族哈尼族拉祜族自治县', '');
INSERT INTO `area` VALUES ('3018', '311', '3', '302614', '江城哈尼族彝族自治县', '');
INSERT INTO `area` VALUES ('3019', '311', '3', '302615', '孟连傣族拉祜族佤族自治县', '');
INSERT INTO `area` VALUES ('3020', '311', '3', '302616', '澜沧拉祜族自治县', '');
INSERT INTO `area` VALUES ('3021', '311', '3', '302617', '西盟佤族自治县', '');
INSERT INTO `area` VALUES ('3022', '312', '3', '302618', '市辖区', '');
INSERT INTO `area` VALUES ('3023', '312', '3', '302619', '临翔区', '');
INSERT INTO `area` VALUES ('3024', '312', '3', '302620', '凤庆县', '');
INSERT INTO `area` VALUES ('3025', '312', '3', '302621', '云　县', '');
INSERT INTO `area` VALUES ('3026', '312', '3', '302622', '永德县', '');
INSERT INTO `area` VALUES ('3027', '312', '3', '302623', '镇康县', '');
INSERT INTO `area` VALUES ('3028', '312', '3', '302624', '双江拉祜族佤族布朗族傣族自治县', '');
INSERT INTO `area` VALUES ('3029', '312', '3', '302625', '耿马傣族佤族自治县', '');
INSERT INTO `area` VALUES ('3030', '312', '3', '302626', '沧源佤族自治县', '');
INSERT INTO `area` VALUES ('3031', '313', '3', '302627', '楚雄市', '');
INSERT INTO `area` VALUES ('3032', '313', '3', '302628', '双柏县', '');
INSERT INTO `area` VALUES ('3033', '313', '3', '302629', '牟定县', '');
INSERT INTO `area` VALUES ('3034', '313', '3', '302630', '南华县', '');
INSERT INTO `area` VALUES ('3035', '313', '3', '302631', '姚安县', '');
INSERT INTO `area` VALUES ('3036', '313', '3', '302632', '大姚县', '');
INSERT INTO `area` VALUES ('3037', '313', '3', '302633', '永仁县', '');
INSERT INTO `area` VALUES ('3038', '313', '3', '302634', '元谋县', '');
INSERT INTO `area` VALUES ('3039', '313', '3', '302635', '武定县', '');
INSERT INTO `area` VALUES ('3040', '313', '3', '302636', '禄丰县', '');
INSERT INTO `area` VALUES ('3041', '314', '3', '302637', '个旧市', '');
INSERT INTO `area` VALUES ('3042', '314', '3', '302638', '开远市', '');
INSERT INTO `area` VALUES ('3043', '314', '3', '302639', '蒙自县', '');
INSERT INTO `area` VALUES ('3044', '314', '3', '302640', '屏边苗族自治县', '');
INSERT INTO `area` VALUES ('3045', '314', '3', '302641', '建水县', '');
INSERT INTO `area` VALUES ('3046', '314', '3', '302642', '石屏县', '');
INSERT INTO `area` VALUES ('3047', '314', '3', '302643', '弥勒县', '');
INSERT INTO `area` VALUES ('3048', '314', '3', '302644', '泸西县', '');
INSERT INTO `area` VALUES ('3049', '314', '3', '302645', '元阳县', '');
INSERT INTO `area` VALUES ('3050', '314', '3', '302646', '红河县', '');
INSERT INTO `area` VALUES ('3051', '314', '3', '302647', '金平苗族瑶族傣族自治县', '');
INSERT INTO `area` VALUES ('3052', '314', '3', '302648', '绿春县', '');
INSERT INTO `area` VALUES ('3053', '314', '3', '302649', '河口瑶族自治县', '');
INSERT INTO `area` VALUES ('3054', '315', '3', '302650', '文山县', '');
INSERT INTO `area` VALUES ('3055', '315', '3', '302651', '砚山县', '');
INSERT INTO `area` VALUES ('3056', '315', '3', '302652', '西畴县', '');
INSERT INTO `area` VALUES ('3057', '315', '3', '302653', '麻栗坡县', '');
INSERT INTO `area` VALUES ('3058', '315', '3', '302654', '马关县', '');
INSERT INTO `area` VALUES ('3059', '315', '3', '302655', '丘北县', '');
INSERT INTO `area` VALUES ('3060', '315', '3', '302656', '广南县', '');
INSERT INTO `area` VALUES ('3061', '315', '3', '302657', '富宁县', '');
INSERT INTO `area` VALUES ('3062', '316', '3', '302658', '景洪市', '');
INSERT INTO `area` VALUES ('3063', '316', '3', '302659', '勐海县', '');
INSERT INTO `area` VALUES ('3064', '316', '3', '302660', '勐腊县', '');
INSERT INTO `area` VALUES ('3065', '317', '3', '302661', '大理市', '');
INSERT INTO `area` VALUES ('3066', '317', '3', '302662', '漾濞彝族自治县', '');
INSERT INTO `area` VALUES ('3067', '317', '3', '302663', '祥云县', '');
INSERT INTO `area` VALUES ('3068', '317', '3', '302664', '宾川县', '');
INSERT INTO `area` VALUES ('3069', '317', '3', '302665', '弥渡县', '');
INSERT INTO `area` VALUES ('3070', '317', '3', '302666', '南涧彝族自治县', '');
INSERT INTO `area` VALUES ('3071', '317', '3', '302667', '巍山彝族回族自治县', '');
INSERT INTO `area` VALUES ('3072', '317', '3', '302668', '永平县', '');
INSERT INTO `area` VALUES ('3073', '317', '3', '302669', '云龙县', '');
INSERT INTO `area` VALUES ('3074', '317', '3', '302670', '洱源县', '');
INSERT INTO `area` VALUES ('3075', '317', '3', '302671', '剑川县', '');
INSERT INTO `area` VALUES ('3076', '317', '3', '302672', '鹤庆县', '');
INSERT INTO `area` VALUES ('3077', '318', '3', '302673', '瑞丽市', '');
INSERT INTO `area` VALUES ('3078', '318', '3', '302674', '潞西市', '');
INSERT INTO `area` VALUES ('3079', '318', '3', '302675', '梁河县', '');
INSERT INTO `area` VALUES ('3080', '318', '3', '302676', '盈江县', '');
INSERT INTO `area` VALUES ('3081', '318', '3', '302677', '陇川县', '');
INSERT INTO `area` VALUES ('3082', '319', '3', '302678', '泸水县', '');
INSERT INTO `area` VALUES ('3083', '319', '3', '302679', '福贡县', '');
INSERT INTO `area` VALUES ('3084', '319', '3', '302680', '贡山独龙族怒族自治县', '');
INSERT INTO `area` VALUES ('3085', '319', '3', '302681', '兰坪白族普米族自治县', '');
INSERT INTO `area` VALUES ('3086', '320', '3', '302682', '香格里拉县', '');
INSERT INTO `area` VALUES ('3087', '320', '3', '302683', '德钦县', '');
INSERT INTO `area` VALUES ('3088', '320', '3', '302684', '维西傈僳族自治县', '');
INSERT INTO `area` VALUES ('3089', '321', '3', '302685', '市辖区', '');
INSERT INTO `area` VALUES ('3090', '321', '3', '302686', '城关区', '');
INSERT INTO `area` VALUES ('3091', '321', '3', '302687', '林周县', '');
INSERT INTO `area` VALUES ('3092', '321', '3', '302688', '当雄县', '');
INSERT INTO `area` VALUES ('3093', '321', '3', '302689', '尼木县', '');
INSERT INTO `area` VALUES ('3094', '321', '3', '302690', '曲水县', '');
INSERT INTO `area` VALUES ('3095', '321', '3', '302691', '堆龙德庆县', '');
INSERT INTO `area` VALUES ('3096', '321', '3', '302692', '达孜县', '');
INSERT INTO `area` VALUES ('3097', '321', '3', '302693', '墨竹工卡县', '');
INSERT INTO `area` VALUES ('3098', '322', '3', '302694', '昌都县', '');
INSERT INTO `area` VALUES ('3099', '322', '3', '302695', '江达县', '');
INSERT INTO `area` VALUES ('3100', '322', '3', '302696', '贡觉县', '');
INSERT INTO `area` VALUES ('3101', '322', '3', '302697', '类乌齐县', '');
INSERT INTO `area` VALUES ('3102', '322', '3', '302698', '丁青县', '');
INSERT INTO `area` VALUES ('3103', '322', '3', '302699', '察雅县', '');
INSERT INTO `area` VALUES ('3104', '322', '3', '302700', '八宿县', '');
INSERT INTO `area` VALUES ('3105', '322', '3', '302701', '左贡县', '');
INSERT INTO `area` VALUES ('3106', '322', '3', '302702', '芒康县', '');
INSERT INTO `area` VALUES ('3107', '322', '3', '302703', '洛隆县', '');
INSERT INTO `area` VALUES ('3108', '322', '3', '302704', '边坝县', '');
INSERT INTO `area` VALUES ('3109', '323', '3', '302705', '乃东县', '');
INSERT INTO `area` VALUES ('3110', '323', '3', '302706', '扎囊县', '');
INSERT INTO `area` VALUES ('3111', '323', '3', '302707', '贡嘎县', '');
INSERT INTO `area` VALUES ('3112', '323', '3', '302708', '桑日县', '');
INSERT INTO `area` VALUES ('3113', '323', '3', '302709', '琼结县', '');
INSERT INTO `area` VALUES ('3114', '323', '3', '302710', '曲松县', '');
INSERT INTO `area` VALUES ('3115', '323', '3', '302711', '措美县', '');
INSERT INTO `area` VALUES ('3116', '323', '3', '302712', '洛扎县', '');
INSERT INTO `area` VALUES ('3117', '323', '3', '302713', '加查县', '');
INSERT INTO `area` VALUES ('3118', '323', '3', '302714', '隆子县', '');
INSERT INTO `area` VALUES ('3119', '323', '3', '302715', '错那县', '');
INSERT INTO `area` VALUES ('3120', '323', '3', '302716', '浪卡子县', '');
INSERT INTO `area` VALUES ('3121', '324', '3', '302717', '日喀则市', '');
INSERT INTO `area` VALUES ('3122', '324', '3', '302718', '南木林县', '');
INSERT INTO `area` VALUES ('3123', '324', '3', '302719', '江孜县', '');
INSERT INTO `area` VALUES ('3124', '324', '3', '302720', '定日县', '');
INSERT INTO `area` VALUES ('3125', '324', '3', '302721', '萨迦县', '');
INSERT INTO `area` VALUES ('3126', '324', '3', '302722', '拉孜县', '');
INSERT INTO `area` VALUES ('3127', '324', '3', '302723', '昂仁县', '');
INSERT INTO `area` VALUES ('3128', '324', '3', '302724', '谢通门县', '');
INSERT INTO `area` VALUES ('3129', '324', '3', '302725', '白朗县', '');
INSERT INTO `area` VALUES ('3130', '324', '3', '302726', '仁布县', '');
INSERT INTO `area` VALUES ('3131', '324', '3', '302727', '康马县', '');
INSERT INTO `area` VALUES ('3132', '324', '3', '302728', '定结县', '');
INSERT INTO `area` VALUES ('3133', '324', '3', '302729', '仲巴县', '');
INSERT INTO `area` VALUES ('3134', '324', '3', '302730', '亚东县', '');
INSERT INTO `area` VALUES ('3135', '324', '3', '302731', '吉隆县', '');
INSERT INTO `area` VALUES ('3136', '324', '3', '302732', '聂拉木县', '');
INSERT INTO `area` VALUES ('3137', '324', '3', '302733', '萨嘎县', '');
INSERT INTO `area` VALUES ('3138', '324', '3', '302734', '岗巴县', '');
INSERT INTO `area` VALUES ('3139', '325', '3', '302735', '那曲县', '');
INSERT INTO `area` VALUES ('3140', '325', '3', '302736', '嘉黎县', '');
INSERT INTO `area` VALUES ('3141', '325', '3', '302737', '比如县', '');
INSERT INTO `area` VALUES ('3142', '325', '3', '302738', '聂荣县', '');
INSERT INTO `area` VALUES ('3143', '325', '3', '302739', '安多县', '');
INSERT INTO `area` VALUES ('3144', '325', '3', '302740', '申扎县', '');
INSERT INTO `area` VALUES ('3145', '325', '3', '302741', '索　县', '');
INSERT INTO `area` VALUES ('3146', '325', '3', '302742', '班戈县', '');
INSERT INTO `area` VALUES ('3147', '325', '3', '302743', '巴青县', '');
INSERT INTO `area` VALUES ('3148', '325', '3', '302744', '尼玛县', '');
INSERT INTO `area` VALUES ('3149', '326', '3', '302745', '普兰县', '');
INSERT INTO `area` VALUES ('3150', '326', '3', '302746', '札达县', '');
INSERT INTO `area` VALUES ('3151', '326', '3', '302747', '噶尔县', '');
INSERT INTO `area` VALUES ('3152', '326', '3', '302748', '日土县', '');
INSERT INTO `area` VALUES ('3153', '326', '3', '302749', '革吉县', '');
INSERT INTO `area` VALUES ('3154', '326', '3', '302750', '改则县', '');
INSERT INTO `area` VALUES ('3155', '326', '3', '302751', '措勤县', '');
INSERT INTO `area` VALUES ('3156', '327', '3', '302752', '林芝县', '');
INSERT INTO `area` VALUES ('3157', '327', '3', '302753', '工布江达县', '');
INSERT INTO `area` VALUES ('3158', '327', '3', '302754', '米林县', '');
INSERT INTO `area` VALUES ('3159', '327', '3', '302755', '墨脱县', '');
INSERT INTO `area` VALUES ('3160', '327', '3', '302756', '波密县', '');
INSERT INTO `area` VALUES ('3161', '327', '3', '302757', '察隅县', '');
INSERT INTO `area` VALUES ('3162', '327', '3', '302758', '朗　县', '');
INSERT INTO `area` VALUES ('3163', '328', '3', '302759', '市辖区', '');
INSERT INTO `area` VALUES ('3164', '328', '3', '302760', '新城区', '');
INSERT INTO `area` VALUES ('3165', '328', '3', '302761', '碑林区', '');
INSERT INTO `area` VALUES ('3166', '328', '3', '302762', '莲湖区', '');
INSERT INTO `area` VALUES ('3167', '328', '3', '302763', '灞桥区', '');
INSERT INTO `area` VALUES ('3168', '328', '3', '302764', '未央区', '');
INSERT INTO `area` VALUES ('3169', '328', '3', '302765', '雁塔区', '');
INSERT INTO `area` VALUES ('3170', '328', '3', '302766', '阎良区', '');
INSERT INTO `area` VALUES ('3171', '328', '3', '302767', '临潼区', '');
INSERT INTO `area` VALUES ('3172', '328', '3', '302768', '长安区', '');
INSERT INTO `area` VALUES ('3173', '328', '3', '302769', '蓝田县', '');
INSERT INTO `area` VALUES ('3174', '328', '3', '302770', '周至县', '');
INSERT INTO `area` VALUES ('3175', '328', '3', '302771', '户　县', '');
INSERT INTO `area` VALUES ('3176', '328', '3', '302772', '高陵县', '');
INSERT INTO `area` VALUES ('3177', '329', '3', '302773', '市辖区', '');
INSERT INTO `area` VALUES ('3178', '329', '3', '302774', '王益区', '');
INSERT INTO `area` VALUES ('3179', '329', '3', '302775', '印台区', '');
INSERT INTO `area` VALUES ('3180', '329', '3', '302776', '耀州区', '');
INSERT INTO `area` VALUES ('3181', '329', '3', '302777', '宜君县', '');
INSERT INTO `area` VALUES ('3182', '330', '3', '302778', '市辖区', '');
INSERT INTO `area` VALUES ('3183', '330', '3', '302779', '渭滨区', '');
INSERT INTO `area` VALUES ('3184', '330', '3', '302780', '金台区', '');
INSERT INTO `area` VALUES ('3185', '330', '3', '302781', '陈仓区', '');
INSERT INTO `area` VALUES ('3186', '330', '3', '302782', '凤翔县', '');
INSERT INTO `area` VALUES ('3187', '330', '3', '302783', '岐山县', '');
INSERT INTO `area` VALUES ('3188', '330', '3', '302784', '扶风县', '');
INSERT INTO `area` VALUES ('3189', '330', '3', '302785', '眉　县', '');
INSERT INTO `area` VALUES ('3190', '330', '3', '302786', '陇　县', '');
INSERT INTO `area` VALUES ('3191', '330', '3', '302787', '千阳县', '');
INSERT INTO `area` VALUES ('3192', '330', '3', '302788', '麟游县', '');
INSERT INTO `area` VALUES ('3193', '330', '3', '302789', '凤　县', '');
INSERT INTO `area` VALUES ('3194', '330', '3', '302790', '太白县', '');
INSERT INTO `area` VALUES ('3195', '331', '3', '302791', '市辖区', '');
INSERT INTO `area` VALUES ('3196', '331', '3', '302792', '秦都区', '');
INSERT INTO `area` VALUES ('3197', '331', '3', '302793', '杨凌区', '');
INSERT INTO `area` VALUES ('3198', '331', '3', '302794', '渭城区', '');
INSERT INTO `area` VALUES ('3199', '331', '3', '302795', '三原县', '');
INSERT INTO `area` VALUES ('3200', '331', '3', '302796', '泾阳县', '');
INSERT INTO `area` VALUES ('3201', '331', '3', '302797', '乾　县', '');
INSERT INTO `area` VALUES ('3202', '331', '3', '302798', '礼泉县', '');
INSERT INTO `area` VALUES ('3203', '331', '3', '302799', '永寿县', '');
INSERT INTO `area` VALUES ('3204', '331', '3', '302800', '彬　县', '');
INSERT INTO `area` VALUES ('3205', '331', '3', '302801', '长武县', '');
INSERT INTO `area` VALUES ('3206', '331', '3', '302802', '旬邑县', '');
INSERT INTO `area` VALUES ('3207', '331', '3', '302803', '淳化县', '');
INSERT INTO `area` VALUES ('3208', '331', '3', '302804', '武功县', '');
INSERT INTO `area` VALUES ('3209', '331', '3', '302805', '兴平市', '');
INSERT INTO `area` VALUES ('3210', '332', '3', '302806', '市辖区', '');
INSERT INTO `area` VALUES ('3211', '332', '3', '302807', '临渭区', '');
INSERT INTO `area` VALUES ('3212', '332', '3', '302808', '华　县', '');
INSERT INTO `area` VALUES ('3213', '332', '3', '302809', '潼关县', '');
INSERT INTO `area` VALUES ('3214', '332', '3', '302810', '大荔县', '');
INSERT INTO `area` VALUES ('3215', '332', '3', '302811', '合阳县', '');
INSERT INTO `area` VALUES ('3216', '332', '3', '302812', '澄城县', '');
INSERT INTO `area` VALUES ('3217', '332', '3', '302813', '蒲城县', '');
INSERT INTO `area` VALUES ('3218', '332', '3', '302814', '白水县', '');
INSERT INTO `area` VALUES ('3219', '332', '3', '302815', '富平县', '');
INSERT INTO `area` VALUES ('3220', '332', '3', '302816', '韩城市', '');
INSERT INTO `area` VALUES ('3221', '332', '3', '302817', '华阴市', '');
INSERT INTO `area` VALUES ('3222', '333', '3', '302818', '市辖区', '');
INSERT INTO `area` VALUES ('3223', '333', '3', '302819', '宝塔区', '');
INSERT INTO `area` VALUES ('3224', '333', '3', '302820', '延长县', '');
INSERT INTO `area` VALUES ('3225', '333', '3', '302821', '延川县', '');
INSERT INTO `area` VALUES ('3226', '333', '3', '302822', '子长县', '');
INSERT INTO `area` VALUES ('3227', '333', '3', '302823', '安塞县', '');
INSERT INTO `area` VALUES ('3228', '333', '3', '302824', '志丹县', '');
INSERT INTO `area` VALUES ('3229', '333', '3', '302825', '吴旗县', '');
INSERT INTO `area` VALUES ('3230', '333', '3', '302826', '甘泉县', '');
INSERT INTO `area` VALUES ('3231', '333', '3', '302827', '富　县', '');
INSERT INTO `area` VALUES ('3232', '333', '3', '302828', '洛川县', '');
INSERT INTO `area` VALUES ('3233', '333', '3', '302829', '宜川县', '');
INSERT INTO `area` VALUES ('3234', '333', '3', '302830', '黄龙县', '');
INSERT INTO `area` VALUES ('3235', '333', '3', '302831', '黄陵县', '');
INSERT INTO `area` VALUES ('3236', '334', '3', '302832', '市辖区', '');
INSERT INTO `area` VALUES ('3237', '334', '3', '302833', '汉台区', '');
INSERT INTO `area` VALUES ('3238', '334', '3', '302834', '南郑县', '');
INSERT INTO `area` VALUES ('3239', '334', '3', '302835', '城固县', '');
INSERT INTO `area` VALUES ('3240', '334', '3', '302836', '洋　县', '');
INSERT INTO `area` VALUES ('3241', '334', '3', '302837', '西乡县', '');
INSERT INTO `area` VALUES ('3242', '334', '3', '302838', '勉　县', '');
INSERT INTO `area` VALUES ('3243', '334', '3', '302839', '宁强县', '');
INSERT INTO `area` VALUES ('3244', '334', '3', '302840', '略阳县', '');
INSERT INTO `area` VALUES ('3245', '334', '3', '302841', '镇巴县', '');
INSERT INTO `area` VALUES ('3246', '334', '3', '302842', '留坝县', '');
INSERT INTO `area` VALUES ('3247', '334', '3', '302843', '佛坪县', '');
INSERT INTO `area` VALUES ('3248', '335', '3', '302844', '市辖区', '');
INSERT INTO `area` VALUES ('3249', '335', '3', '302845', '榆阳区', '');
INSERT INTO `area` VALUES ('3250', '335', '3', '302846', '神木县', '');
INSERT INTO `area` VALUES ('3251', '335', '3', '302847', '府谷县', '');
INSERT INTO `area` VALUES ('3252', '335', '3', '302848', '横山县', '');
INSERT INTO `area` VALUES ('3253', '335', '3', '302849', '靖边县', '');
INSERT INTO `area` VALUES ('3254', '335', '3', '302850', '定边县', '');
INSERT INTO `area` VALUES ('3255', '335', '3', '302851', '绥德县', '');
INSERT INTO `area` VALUES ('3256', '335', '3', '302852', '米脂县', '');
INSERT INTO `area` VALUES ('3257', '335', '3', '302853', '佳　县', '');
INSERT INTO `area` VALUES ('3258', '335', '3', '302854', '吴堡县', '');
INSERT INTO `area` VALUES ('3259', '335', '3', '302855', '清涧县', '');
INSERT INTO `area` VALUES ('3260', '335', '3', '302856', '子洲县', '');
INSERT INTO `area` VALUES ('3261', '336', '3', '302857', '市辖区', '');
INSERT INTO `area` VALUES ('3262', '336', '3', '302858', '汉滨区', '');
INSERT INTO `area` VALUES ('3263', '336', '3', '302859', '汉阴县', '');
INSERT INTO `area` VALUES ('3264', '336', '3', '302860', '石泉县', '');
INSERT INTO `area` VALUES ('3265', '336', '3', '302861', '宁陕县', '');
INSERT INTO `area` VALUES ('3266', '336', '3', '302862', '紫阳县', '');
INSERT INTO `area` VALUES ('3267', '336', '3', '302863', '岚皋县', '');
INSERT INTO `area` VALUES ('3268', '336', '3', '302864', '平利县', '');
INSERT INTO `area` VALUES ('3269', '336', '3', '302865', '镇坪县', '');
INSERT INTO `area` VALUES ('3270', '336', '3', '302866', '旬阳县', '');
INSERT INTO `area` VALUES ('3271', '336', '3', '302867', '白河县', '');
INSERT INTO `area` VALUES ('3272', '337', '3', '302868', '市辖区', '');
INSERT INTO `area` VALUES ('3273', '337', '3', '302869', '商州区', '');
INSERT INTO `area` VALUES ('3274', '337', '3', '302870', '洛南县', '');
INSERT INTO `area` VALUES ('3275', '337', '3', '302871', '丹凤县', '');
INSERT INTO `area` VALUES ('3276', '337', '3', '302872', '商南县', '');
INSERT INTO `area` VALUES ('3277', '337', '3', '302873', '山阳县', '');
INSERT INTO `area` VALUES ('3278', '337', '3', '302874', '镇安县', '');
INSERT INTO `area` VALUES ('3279', '337', '3', '302875', '柞水县', '');
INSERT INTO `area` VALUES ('3280', '338', '3', '302876', '市辖区', '');
INSERT INTO `area` VALUES ('3281', '338', '3', '302877', '城关区', '');
INSERT INTO `area` VALUES ('3282', '338', '3', '302878', '七里河区', '');
INSERT INTO `area` VALUES ('3283', '338', '3', '302879', '西固区', '');
INSERT INTO `area` VALUES ('3284', '338', '3', '302880', '安宁区', '');
INSERT INTO `area` VALUES ('3285', '338', '3', '302881', '红古区', '');
INSERT INTO `area` VALUES ('3286', '338', '3', '302882', '永登县', '');
INSERT INTO `area` VALUES ('3287', '338', '3', '302883', '皋兰县', '');
INSERT INTO `area` VALUES ('3288', '338', '3', '302884', '榆中县', '');
INSERT INTO `area` VALUES ('3289', '339', '3', '302885', '市辖区', '');
INSERT INTO `area` VALUES ('3290', '340', '3', '302886', '市辖区', '');
INSERT INTO `area` VALUES ('3291', '340', '3', '302887', '金川区', '');
INSERT INTO `area` VALUES ('3292', '340', '3', '302888', '永昌县', '');
INSERT INTO `area` VALUES ('3293', '341', '3', '302889', '市辖区', '');
INSERT INTO `area` VALUES ('3294', '341', '3', '302890', '白银区', '');
INSERT INTO `area` VALUES ('3295', '341', '3', '302891', '平川区', '');
INSERT INTO `area` VALUES ('3296', '341', '3', '302892', '靖远县', '');
INSERT INTO `area` VALUES ('3297', '341', '3', '302893', '会宁县', '');
INSERT INTO `area` VALUES ('3298', '341', '3', '302894', '景泰县', '');
INSERT INTO `area` VALUES ('3299', '342', '3', '302895', '市辖区', '');
INSERT INTO `area` VALUES ('3300', '342', '3', '302896', '秦城区', '');
INSERT INTO `area` VALUES ('3301', '342', '3', '302897', '北道区', '');
INSERT INTO `area` VALUES ('3302', '342', '3', '302898', '清水县', '');
INSERT INTO `area` VALUES ('3303', '342', '3', '302899', '秦安县', '');
INSERT INTO `area` VALUES ('3304', '342', '3', '302900', '甘谷县', '');
INSERT INTO `area` VALUES ('3305', '342', '3', '302901', '武山县', '');
INSERT INTO `area` VALUES ('3306', '342', '3', '302902', '张家川回族自治县', '');
INSERT INTO `area` VALUES ('3307', '343', '3', '302903', '市辖区', '');
INSERT INTO `area` VALUES ('3308', '343', '3', '302904', '凉州区', '');
INSERT INTO `area` VALUES ('3309', '343', '3', '302905', '民勤县', '');
INSERT INTO `area` VALUES ('3310', '343', '3', '302906', '古浪县', '');
INSERT INTO `area` VALUES ('3311', '343', '3', '302907', '天祝藏族自治县', '');
INSERT INTO `area` VALUES ('3312', '344', '3', '302908', '市辖区', '');
INSERT INTO `area` VALUES ('3313', '344', '3', '302909', '甘州区', '');
INSERT INTO `area` VALUES ('3314', '344', '3', '302910', '肃南裕固族自治县', '');
INSERT INTO `area` VALUES ('3315', '344', '3', '302911', '民乐县', '');
INSERT INTO `area` VALUES ('3316', '344', '3', '302912', '临泽县', '');
INSERT INTO `area` VALUES ('3317', '344', '3', '302913', '高台县', '');
INSERT INTO `area` VALUES ('3318', '344', '3', '302914', '山丹县', '');
INSERT INTO `area` VALUES ('3319', '345', '3', '302915', '市辖区', '');
INSERT INTO `area` VALUES ('3320', '345', '3', '302916', '崆峒区', '');
INSERT INTO `area` VALUES ('3321', '345', '3', '302917', '泾川县', '');
INSERT INTO `area` VALUES ('3322', '345', '3', '302918', '灵台县', '');
INSERT INTO `area` VALUES ('3323', '345', '3', '302919', '崇信县', '');
INSERT INTO `area` VALUES ('3324', '345', '3', '302920', '华亭县', '');
INSERT INTO `area` VALUES ('3325', '345', '3', '302921', '庄浪县', '');
INSERT INTO `area` VALUES ('3326', '345', '3', '302922', '静宁县', '');
INSERT INTO `area` VALUES ('3327', '346', '3', '302923', '市辖区', '');
INSERT INTO `area` VALUES ('3328', '346', '3', '302924', '肃州区', '');
INSERT INTO `area` VALUES ('3329', '346', '3', '302925', '金塔县', '');
INSERT INTO `area` VALUES ('3330', '346', '3', '302926', '安西县', '');
INSERT INTO `area` VALUES ('3331', '346', '3', '302927', '肃北蒙古族自治县', '');
INSERT INTO `area` VALUES ('3332', '346', '3', '302928', '阿克塞哈萨克族自治县', '');
INSERT INTO `area` VALUES ('3333', '346', '3', '302929', '玉门市', '');
INSERT INTO `area` VALUES ('3334', '346', '3', '302930', '敦煌市', '');
INSERT INTO `area` VALUES ('3335', '347', '3', '302931', '市辖区', '');
INSERT INTO `area` VALUES ('3336', '347', '3', '302932', '西峰区', '');
INSERT INTO `area` VALUES ('3337', '347', '3', '302933', '庆城县', '');
INSERT INTO `area` VALUES ('3338', '347', '3', '302934', '环　县', '');
INSERT INTO `area` VALUES ('3339', '347', '3', '302935', '华池县', '');
INSERT INTO `area` VALUES ('3340', '347', '3', '302936', '合水县', '');
INSERT INTO `area` VALUES ('3341', '347', '3', '302937', '正宁县', '');
INSERT INTO `area` VALUES ('3342', '347', '3', '302938', '宁　县', '');
INSERT INTO `area` VALUES ('3343', '347', '3', '302939', '镇原县', '');
INSERT INTO `area` VALUES ('3344', '348', '3', '302940', '市辖区', '');
INSERT INTO `area` VALUES ('3345', '348', '3', '302941', '安定区', '');
INSERT INTO `area` VALUES ('3346', '348', '3', '302942', '通渭县', '');
INSERT INTO `area` VALUES ('3347', '348', '3', '302943', '陇西县', '');
INSERT INTO `area` VALUES ('3348', '348', '3', '302944', '渭源县', '');
INSERT INTO `area` VALUES ('3349', '348', '3', '302945', '临洮县', '');
INSERT INTO `area` VALUES ('3350', '348', '3', '302946', '漳　县', '');
INSERT INTO `area` VALUES ('3351', '348', '3', '302947', '岷　县', '');
INSERT INTO `area` VALUES ('3352', '349', '3', '302948', '市辖区', '');
INSERT INTO `area` VALUES ('3353', '349', '3', '302949', '武都区', '');
INSERT INTO `area` VALUES ('3354', '349', '3', '302950', '成　县', '');
INSERT INTO `area` VALUES ('3355', '349', '3', '302951', '文　县', '');
INSERT INTO `area` VALUES ('3356', '349', '3', '302952', '宕昌县', '');
INSERT INTO `area` VALUES ('3357', '349', '3', '302953', '康　县', '');
INSERT INTO `area` VALUES ('3358', '349', '3', '302954', '西和县', '');
INSERT INTO `area` VALUES ('3359', '349', '3', '302955', '礼　县', '');
INSERT INTO `area` VALUES ('3360', '349', '3', '302956', '徽　县', '');
INSERT INTO `area` VALUES ('3361', '349', '3', '302957', '两当县', '');
INSERT INTO `area` VALUES ('3362', '350', '3', '302958', '临夏市', '');
INSERT INTO `area` VALUES ('3363', '350', '3', '302959', '临夏县', '');
INSERT INTO `area` VALUES ('3364', '350', '3', '302960', '康乐县', '');
INSERT INTO `area` VALUES ('3365', '350', '3', '302961', '永靖县', '');
INSERT INTO `area` VALUES ('3366', '350', '3', '302962', '广河县', '');
INSERT INTO `area` VALUES ('3367', '350', '3', '302963', '和政县', '');
INSERT INTO `area` VALUES ('3368', '350', '3', '302964', '东乡族自治县', '');
INSERT INTO `area` VALUES ('3369', '350', '3', '302965', '积石山保安族东乡族撒拉族自治县', '');
INSERT INTO `area` VALUES ('3370', '351', '3', '302966', '合作市', '');
INSERT INTO `area` VALUES ('3371', '351', '3', '302967', '临潭县', '');
INSERT INTO `area` VALUES ('3372', '351', '3', '302968', '卓尼县', '');
INSERT INTO `area` VALUES ('3373', '351', '3', '302969', '舟曲县', '');
INSERT INTO `area` VALUES ('3374', '351', '3', '302970', '迭部县', '');
INSERT INTO `area` VALUES ('3375', '351', '3', '302971', '玛曲县', '');
INSERT INTO `area` VALUES ('3376', '351', '3', '302972', '碌曲县', '');
INSERT INTO `area` VALUES ('3377', '351', '3', '302973', '夏河县', '');
INSERT INTO `area` VALUES ('3378', '352', '3', '302974', '市辖区', '');
INSERT INTO `area` VALUES ('3379', '352', '3', '302975', '城东区', '');
INSERT INTO `area` VALUES ('3380', '352', '3', '302976', '城中区', '');
INSERT INTO `area` VALUES ('3381', '352', '3', '302977', '城西区', '');
INSERT INTO `area` VALUES ('3382', '352', '3', '302978', '城北区', '');
INSERT INTO `area` VALUES ('3383', '352', '3', '302979', '大通回族土族自治县', '');
INSERT INTO `area` VALUES ('3384', '352', '3', '302980', '湟中县', '');
INSERT INTO `area` VALUES ('3385', '352', '3', '302981', '湟源县', '');
INSERT INTO `area` VALUES ('3386', '353', '3', '302982', '平安县', '');
INSERT INTO `area` VALUES ('3387', '353', '3', '302983', '民和回族土族自治县', '');
INSERT INTO `area` VALUES ('3388', '353', '3', '302984', '乐都县', '');
INSERT INTO `area` VALUES ('3389', '353', '3', '302985', '互助土族自治县', '');
INSERT INTO `area` VALUES ('3390', '353', '3', '302986', '化隆回族自治县', '');
INSERT INTO `area` VALUES ('3391', '353', '3', '302987', '循化撒拉族自治县', '');
INSERT INTO `area` VALUES ('3392', '354', '3', '302988', '门源回族自治县', '');
INSERT INTO `area` VALUES ('3393', '354', '3', '302989', '祁连县', '');
INSERT INTO `area` VALUES ('3394', '354', '3', '302990', '海晏县', '');
INSERT INTO `area` VALUES ('3395', '354', '3', '302991', '刚察县', '');
INSERT INTO `area` VALUES ('3396', '355', '3', '302992', '同仁县', '');
INSERT INTO `area` VALUES ('3397', '355', '3', '302993', '尖扎县', '');
INSERT INTO `area` VALUES ('3398', '355', '3', '302994', '泽库县', '');
INSERT INTO `area` VALUES ('3399', '355', '3', '302995', '河南蒙古族自治县', '');
INSERT INTO `area` VALUES ('3400', '356', '3', '302996', '共和县', '');
INSERT INTO `area` VALUES ('3401', '356', '3', '302997', '同德县', '');
INSERT INTO `area` VALUES ('3402', '356', '3', '302998', '贵德县', '');
INSERT INTO `area` VALUES ('3403', '356', '3', '302999', '兴海县', '');
INSERT INTO `area` VALUES ('3404', '356', '3', '303000', '贵南县', '');
INSERT INTO `area` VALUES ('3405', '357', '3', '303001', '玛沁县', '');
INSERT INTO `area` VALUES ('3406', '357', '3', '303002', '班玛县', '');
INSERT INTO `area` VALUES ('3407', '357', '3', '303003', '甘德县', '');
INSERT INTO `area` VALUES ('3408', '357', '3', '303004', '达日县', '');
INSERT INTO `area` VALUES ('3409', '357', '3', '303005', '久治县', '');
INSERT INTO `area` VALUES ('3410', '357', '3', '303006', '玛多县', '');
INSERT INTO `area` VALUES ('3411', '358', '3', '303007', '玉树县', '');
INSERT INTO `area` VALUES ('3412', '358', '3', '303008', '杂多县', '');
INSERT INTO `area` VALUES ('3413', '358', '3', '303009', '称多县', '');
INSERT INTO `area` VALUES ('3414', '358', '3', '303010', '治多县', '');
INSERT INTO `area` VALUES ('3415', '358', '3', '303011', '囊谦县', '');
INSERT INTO `area` VALUES ('3416', '358', '3', '303012', '曲麻莱县', '');
INSERT INTO `area` VALUES ('3417', '359', '3', '303013', '格尔木市', '');
INSERT INTO `area` VALUES ('3418', '359', '3', '303014', '德令哈市', '');
INSERT INTO `area` VALUES ('3419', '359', '3', '303015', '乌兰县', '');
INSERT INTO `area` VALUES ('3420', '359', '3', '303016', '都兰县', '');
INSERT INTO `area` VALUES ('3421', '359', '3', '303017', '天峻县', '');
INSERT INTO `area` VALUES ('3422', '360', '3', '303018', '市辖区', '');
INSERT INTO `area` VALUES ('3423', '360', '3', '303019', '兴庆区', '');
INSERT INTO `area` VALUES ('3424', '360', '3', '303020', '西夏区', '');
INSERT INTO `area` VALUES ('3425', '360', '3', '303021', '金凤区', '');
INSERT INTO `area` VALUES ('3426', '360', '3', '303022', '永宁县', '');
INSERT INTO `area` VALUES ('3427', '360', '3', '303023', '贺兰县', '');
INSERT INTO `area` VALUES ('3428', '360', '3', '303024', '灵武市', '');
INSERT INTO `area` VALUES ('3429', '361', '3', '303025', '市辖区', '');
INSERT INTO `area` VALUES ('3430', '361', '3', '303026', '大武口区', '');
INSERT INTO `area` VALUES ('3431', '361', '3', '303027', '惠农区', '');
INSERT INTO `area` VALUES ('3432', '361', '3', '303028', '平罗县', '');
INSERT INTO `area` VALUES ('3433', '362', '3', '303029', '市辖区', '');
INSERT INTO `area` VALUES ('3434', '362', '3', '303030', '利通区', '');
INSERT INTO `area` VALUES ('3435', '362', '3', '303031', '盐池县', '');
INSERT INTO `area` VALUES ('3436', '362', '3', '303032', '同心县', '');
INSERT INTO `area` VALUES ('3437', '362', '3', '303033', '青铜峡市', '');
INSERT INTO `area` VALUES ('3438', '363', '3', '303034', '市辖区', '');
INSERT INTO `area` VALUES ('3439', '363', '3', '303035', '原州区', '');
INSERT INTO `area` VALUES ('3440', '363', '3', '303036', '西吉县', '');
INSERT INTO `area` VALUES ('3441', '363', '3', '303037', '隆德县', '');
INSERT INTO `area` VALUES ('3442', '363', '3', '303038', '泾源县', '');
INSERT INTO `area` VALUES ('3443', '363', '3', '303039', '彭阳县', '');
INSERT INTO `area` VALUES ('3444', '364', '3', '303040', '市辖区', '');
INSERT INTO `area` VALUES ('3445', '364', '3', '303041', '沙坡头区', '');
INSERT INTO `area` VALUES ('3446', '364', '3', '303042', '中宁县', '');
INSERT INTO `area` VALUES ('3447', '364', '3', '303043', '海原县', '');
INSERT INTO `area` VALUES ('3448', '365', '3', '303044', '市辖区', '');
INSERT INTO `area` VALUES ('3449', '365', '3', '303045', '天山区', '');
INSERT INTO `area` VALUES ('3450', '365', '3', '303046', '沙依巴克区', '');
INSERT INTO `area` VALUES ('3451', '365', '3', '303047', '新市区', '');
INSERT INTO `area` VALUES ('3452', '365', '3', '303048', '水磨沟区', '');
INSERT INTO `area` VALUES ('3453', '365', '3', '303049', '头屯河区', '');
INSERT INTO `area` VALUES ('3454', '365', '3', '303050', '达坂城区', '');
INSERT INTO `area` VALUES ('3455', '365', '3', '303051', '东山区', '');
INSERT INTO `area` VALUES ('3456', '365', '3', '303052', '乌鲁木齐县', '');
INSERT INTO `area` VALUES ('3457', '366', '3', '303053', '市辖区', '');
INSERT INTO `area` VALUES ('3458', '366', '3', '303054', '独山子区', '');
INSERT INTO `area` VALUES ('3459', '366', '3', '303055', '克拉玛依区', '');
INSERT INTO `area` VALUES ('3460', '366', '3', '303056', '白碱滩区', '');
INSERT INTO `area` VALUES ('3461', '366', '3', '303057', '乌尔禾区', '');
INSERT INTO `area` VALUES ('3462', '367', '3', '303058', '吐鲁番市', '');
INSERT INTO `area` VALUES ('3463', '367', '3', '303059', '鄯善县', '');
INSERT INTO `area` VALUES ('3464', '367', '3', '303060', '托克逊县', '');
INSERT INTO `area` VALUES ('3465', '368', '3', '303061', '哈密市', '');
INSERT INTO `area` VALUES ('3466', '368', '3', '303062', '巴里坤哈萨克自治县', '');
INSERT INTO `area` VALUES ('3467', '368', '3', '303063', '伊吾县', '');
INSERT INTO `area` VALUES ('3468', '369', '3', '303064', '昌吉市', '');
INSERT INTO `area` VALUES ('3469', '369', '3', '303065', '阜康市', '');
INSERT INTO `area` VALUES ('3470', '369', '3', '303066', '米泉市', '');
INSERT INTO `area` VALUES ('3471', '369', '3', '303067', '呼图壁县', '');
INSERT INTO `area` VALUES ('3472', '369', '3', '303068', '玛纳斯县', '');
INSERT INTO `area` VALUES ('3473', '369', '3', '303069', '奇台县', '');
INSERT INTO `area` VALUES ('3474', '369', '3', '303070', '吉木萨尔县', '');
INSERT INTO `area` VALUES ('3475', '369', '3', '303071', '木垒哈萨克自治县', '');
INSERT INTO `area` VALUES ('3476', '370', '3', '303072', '博乐市', '');
INSERT INTO `area` VALUES ('3477', '370', '3', '303073', '精河县', '');
INSERT INTO `area` VALUES ('3478', '370', '3', '303074', '温泉县', '');
INSERT INTO `area` VALUES ('3479', '371', '3', '303075', '库尔勒市', '');
INSERT INTO `area` VALUES ('3480', '371', '3', '303076', '轮台县', '');
INSERT INTO `area` VALUES ('3481', '371', '3', '303077', '尉犁县', '');
INSERT INTO `area` VALUES ('3482', '371', '3', '303078', '若羌县', '');
INSERT INTO `area` VALUES ('3483', '371', '3', '303079', '且末县', '');
INSERT INTO `area` VALUES ('3484', '371', '3', '303080', '焉耆回族自治县', '');
INSERT INTO `area` VALUES ('3485', '371', '3', '303081', '和静县', '');
INSERT INTO `area` VALUES ('3486', '371', '3', '303082', '和硕县', '');
INSERT INTO `area` VALUES ('3487', '371', '3', '303083', '博湖县', '');
INSERT INTO `area` VALUES ('3488', '372', '3', '303084', '阿克苏市', '');
INSERT INTO `area` VALUES ('3489', '372', '3', '303085', '温宿县', '');
INSERT INTO `area` VALUES ('3490', '372', '3', '303086', '库车县', '');
INSERT INTO `area` VALUES ('3491', '372', '3', '303087', '沙雅县', '');
INSERT INTO `area` VALUES ('3492', '372', '3', '303088', '新和县', '');
INSERT INTO `area` VALUES ('3493', '372', '3', '303089', '拜城县', '');
INSERT INTO `area` VALUES ('3494', '372', '3', '303090', '乌什县', '');
INSERT INTO `area` VALUES ('3495', '372', '3', '303091', '阿瓦提县', '');
INSERT INTO `area` VALUES ('3496', '372', '3', '303092', '柯坪县', '');
INSERT INTO `area` VALUES ('3497', '373', '3', '303093', '阿图什市', '');
INSERT INTO `area` VALUES ('3498', '373', '3', '303094', '阿克陶县', '');
INSERT INTO `area` VALUES ('3499', '373', '3', '303095', '阿合奇县', '');
INSERT INTO `area` VALUES ('3500', '373', '3', '303096', '乌恰县', '');
INSERT INTO `area` VALUES ('3501', '374', '3', '303097', '喀什市', '');
INSERT INTO `area` VALUES ('3502', '374', '3', '303098', '疏附县', '');
INSERT INTO `area` VALUES ('3503', '374', '3', '303099', '疏勒县', '');
INSERT INTO `area` VALUES ('3504', '374', '3', '303100', '英吉沙县', '');
INSERT INTO `area` VALUES ('3505', '374', '3', '303101', '泽普县', '');
INSERT INTO `area` VALUES ('3506', '374', '3', '303102', '莎车县', '');
INSERT INTO `area` VALUES ('3507', '374', '3', '303103', '叶城县', '');
INSERT INTO `area` VALUES ('3508', '374', '3', '303104', '麦盖提县', '');
INSERT INTO `area` VALUES ('3509', '374', '3', '303105', '岳普湖县', '');
INSERT INTO `area` VALUES ('3510', '374', '3', '303106', '伽师县', '');
INSERT INTO `area` VALUES ('3511', '374', '3', '303107', '巴楚县', '');
INSERT INTO `area` VALUES ('3512', '374', '3', '303108', '塔什库尔干塔吉克自治县', '');
INSERT INTO `area` VALUES ('3513', '375', '3', '303109', '和田市', '');
INSERT INTO `area` VALUES ('3514', '375', '3', '303110', '和田县', '');
INSERT INTO `area` VALUES ('3515', '375', '3', '303111', '墨玉县', '');
INSERT INTO `area` VALUES ('3516', '375', '3', '303112', '皮山县', '');
INSERT INTO `area` VALUES ('3517', '375', '3', '303113', '洛浦县', '');
INSERT INTO `area` VALUES ('3518', '375', '3', '303114', '策勒县', '');
INSERT INTO `area` VALUES ('3519', '375', '3', '303115', '于田县', '');
INSERT INTO `area` VALUES ('3520', '375', '3', '303116', '民丰县', '');
INSERT INTO `area` VALUES ('3521', '376', '3', '303117', '伊宁市', '');
INSERT INTO `area` VALUES ('3522', '376', '3', '303118', '奎屯市', '');
INSERT INTO `area` VALUES ('3523', '376', '3', '303119', '伊宁县', '');
INSERT INTO `area` VALUES ('3524', '376', '3', '303120', '察布查尔锡伯自治县', '');
INSERT INTO `area` VALUES ('3525', '376', '3', '303121', '霍城县', '');
INSERT INTO `area` VALUES ('3526', '376', '3', '303122', '巩留县', '');
INSERT INTO `area` VALUES ('3527', '376', '3', '303123', '新源县', '');
INSERT INTO `area` VALUES ('3528', '376', '3', '303124', '昭苏县', '');
INSERT INTO `area` VALUES ('3529', '376', '3', '303125', '特克斯县', '');
INSERT INTO `area` VALUES ('3530', '376', '3', '303126', '尼勒克县', '');
INSERT INTO `area` VALUES ('3531', '377', '3', '303127', '塔城市', '');
INSERT INTO `area` VALUES ('3532', '377', '3', '303128', '乌苏市', '');
INSERT INTO `area` VALUES ('3533', '377', '3', '303129', '额敏县', '');
INSERT INTO `area` VALUES ('3534', '377', '3', '303130', '沙湾县', '');
INSERT INTO `area` VALUES ('3535', '377', '3', '303131', '托里县', '');
INSERT INTO `area` VALUES ('3536', '377', '3', '303132', '裕民县', '');
INSERT INTO `area` VALUES ('3537', '377', '3', '303133', '和布克赛尔蒙古自治县', '');
INSERT INTO `area` VALUES ('3538', '378', '3', '303134', '阿勒泰市', '');
INSERT INTO `area` VALUES ('3539', '378', '3', '303135', '布尔津县', '');
INSERT INTO `area` VALUES ('3540', '378', '3', '303136', '富蕴县', '');
INSERT INTO `area` VALUES ('3541', '378', '3', '303137', '福海县', '');
INSERT INTO `area` VALUES ('3542', '378', '3', '303138', '哈巴河县', '');
INSERT INTO `area` VALUES ('3543', '378', '3', '303139', '青河县', '');
INSERT INTO `area` VALUES ('3544', '378', '3', '303140', '吉木乃县', '');
INSERT INTO `area` VALUES ('3545', '379', '3', '303141', '石河子市', '');
INSERT INTO `area` VALUES ('3546', '379', '3', '303142', '阿拉尔市', '');
INSERT INTO `area` VALUES ('3547', '379', '3', '303143', '图木舒克市', '');
INSERT INTO `area` VALUES ('3548', '379', '3', '303144', '五家渠市', '');
INSERT INTO `area` VALUES ('3549', '380', '3', '303145', '離島', '');
INSERT INTO `area` VALUES ('3550', '380', '3', '303146', '大埔', '');
INSERT INTO `area` VALUES ('3551', '380', '3', '303147', '元朗', '');
INSERT INTO `area` VALUES ('3552', '380', '3', '303148', '北區', '');
INSERT INTO `area` VALUES ('3553', '380', '3', '303149', '西貢', '');
INSERT INTO `area` VALUES ('3554', '380', '3', '303150', '屯門', '');
INSERT INTO `area` VALUES ('3555', '380', '3', '303151', '沙田', '');
INSERT INTO `area` VALUES ('3556', '380', '3', '303152', '荃灣', '');
INSERT INTO `area` VALUES ('3557', '380', '3', '303153', '南區', '');
INSERT INTO `area` VALUES ('3558', '380', '3', '303154', '葵青', '');
INSERT INTO `area` VALUES ('3559', '380', '3', '303155', '東區', '');
INSERT INTO `area` VALUES ('3560', '380', '3', '303156', '中西區', '');
INSERT INTO `area` VALUES ('3561', '380', '3', '303157', '觀塘', '');
INSERT INTO `area` VALUES ('3562', '380', '3', '303158', '九龍城', '');
INSERT INTO `area` VALUES ('3563', '380', '3', '303159', '灣仔', '');
INSERT INTO `area` VALUES ('3564', '380', '3', '303160', '深水埗', '');
INSERT INTO `area` VALUES ('3565', '380', '3', '303161', '黃大仙', '');
INSERT INTO `area` VALUES ('3566', '380', '3', '303162', '油尖旺', '');
INSERT INTO `area` VALUES ('3567', '381', '3', '303163', '澳门半岛', '');
INSERT INTO `area` VALUES ('3568', '381', '3', '303164', '凼仔', '');
INSERT INTO `area` VALUES ('3569', '381', '3', '303165', '路环', '');
INSERT INTO `area` VALUES ('3570', '382', '3', '303166', '松山區', '');
INSERT INTO `area` VALUES ('3571', '382', '3', '303167', '信義區', '');
INSERT INTO `area` VALUES ('3572', '382', '3', '303168', '大安區', '');
INSERT INTO `area` VALUES ('3573', '382', '3', '303169', '中山區', '');
INSERT INTO `area` VALUES ('3574', '382', '3', '303170', '中正區', '');
INSERT INTO `area` VALUES ('3575', '382', '3', '303171', '大同區', '');
INSERT INTO `area` VALUES ('3576', '382', '3', '303172', '萬華區', '');
INSERT INTO `area` VALUES ('3577', '382', '3', '303173', '文山區', '');
INSERT INTO `area` VALUES ('3578', '382', '3', '303174', '南港區', '');
INSERT INTO `area` VALUES ('3579', '382', '3', '303175', '內湖區', '');
INSERT INTO `area` VALUES ('3580', '382', '3', '303176', '士林區', '');
INSERT INTO `area` VALUES ('3581', '382', '3', '303177', '北投區', '');
INSERT INTO `area` VALUES ('3582', '383', '3', '303178', '鹽埕區', '');
INSERT INTO `area` VALUES ('3583', '383', '3', '303179', '鼓山區', '');
INSERT INTO `area` VALUES ('3584', '383', '3', '303180', '左營區', '');
INSERT INTO `area` VALUES ('3585', '383', '3', '303181', '楠梓區', '');
INSERT INTO `area` VALUES ('3586', '383', '3', '303182', '三民區', '');
INSERT INTO `area` VALUES ('3587', '383', '3', '303183', '新興區', '');
INSERT INTO `area` VALUES ('3588', '383', '3', '303184', '前金區', '');
INSERT INTO `area` VALUES ('3589', '383', '3', '303185', '苓雅區', '');
INSERT INTO `area` VALUES ('3590', '383', '3', '303186', '前鎮區', '');
INSERT INTO `area` VALUES ('3591', '383', '3', '303187', '旗津區', '');
INSERT INTO `area` VALUES ('3592', '383', '3', '303188', '小港區', '');
INSERT INTO `area` VALUES ('3593', '384', '3', '303189', '中正區', '');
INSERT INTO `area` VALUES ('3594', '384', '3', '303190', '七堵區', '');
INSERT INTO `area` VALUES ('3595', '384', '3', '303191', '暖暖區', '');
INSERT INTO `area` VALUES ('3596', '384', '3', '303192', '仁愛區', '');
INSERT INTO `area` VALUES ('3597', '384', '3', '303193', '中山區', '');
INSERT INTO `area` VALUES ('3598', '384', '3', '303194', '安樂區', '');
INSERT INTO `area` VALUES ('3599', '384', '3', '303195', '信義區', '');
INSERT INTO `area` VALUES ('3600', '385', '3', '303196', '中區', '');
INSERT INTO `area` VALUES ('3601', '385', '3', '303197', '東區', '');
INSERT INTO `area` VALUES ('3602', '385', '3', '303198', '西區', '');
INSERT INTO `area` VALUES ('3603', '385', '3', '303199', '南區', '');
INSERT INTO `area` VALUES ('3604', '385', '3', '303200', '北區', '');
INSERT INTO `area` VALUES ('3605', '385', '3', '303201', '西屯區', '');
INSERT INTO `area` VALUES ('3606', '385', '3', '303202', '南屯區', '');
INSERT INTO `area` VALUES ('3607', '385', '3', '303203', '北屯區', '');
INSERT INTO `area` VALUES ('3608', '386', '3', '303204', '東區', '');
INSERT INTO `area` VALUES ('3609', '386', '3', '303205', '南區', '');
INSERT INTO `area` VALUES ('3610', '386', '3', '303206', '北區', '');
INSERT INTO `area` VALUES ('3611', '386', '3', '303207', '安南區', '');
INSERT INTO `area` VALUES ('3612', '386', '3', '303208', '安平區', '');
INSERT INTO `area` VALUES ('3613', '386', '3', '303209', '中西區', '');
INSERT INTO `area` VALUES ('3614', '387', '3', '303210', '東　區', '');
INSERT INTO `area` VALUES ('3615', '387', '3', '303211', '北　區', '');
INSERT INTO `area` VALUES ('3616', '387', '3', '303212', '香山區', '');
INSERT INTO `area` VALUES ('3617', '388', '3', '303213', '東區', '');
INSERT INTO `area` VALUES ('3618', '388', '3', '303214', '西區', '');
INSERT INTO `area` VALUES ('3619', '389', '3', '303215', '板橋市', '');
INSERT INTO `area` VALUES ('3620', '389', '3', '303216', '三重市', '');
INSERT INTO `area` VALUES ('3621', '389', '3', '303217', '中和市', '');
INSERT INTO `area` VALUES ('3622', '389', '3', '303218', '永和市', '');
INSERT INTO `area` VALUES ('3623', '389', '3', '303219', '新莊市', '');
INSERT INTO `area` VALUES ('3624', '389', '3', '303220', '新店市', '');
INSERT INTO `area` VALUES ('3625', '389', '3', '303221', '樹林市', '');
INSERT INTO `area` VALUES ('3626', '389', '3', '303222', '汐止市', '');
INSERT INTO `area` VALUES ('3627', '389', '3', '303223', '土城市', '');
INSERT INTO `area` VALUES ('3628', '389', '3', '303224', '蘆洲市', '');
INSERT INTO `area` VALUES ('3629', '389', '3', '303225', '鶯歌鎮', '');
INSERT INTO `area` VALUES ('3630', '389', '3', '303226', '三峽鎮', '');
INSERT INTO `area` VALUES ('3631', '389', '3', '303227', '淡水鎮', '');
INSERT INTO `area` VALUES ('3632', '389', '3', '303228', '瑞芳鎮', '');
INSERT INTO `area` VALUES ('3633', '389', '3', '303229', '五股鄉', '');
INSERT INTO `area` VALUES ('3634', '389', '3', '303230', '泰山鄉', '');
INSERT INTO `area` VALUES ('3635', '389', '3', '303231', '林口鄉', '');
INSERT INTO `area` VALUES ('3636', '389', '3', '303232', '深坑鄉', '');
INSERT INTO `area` VALUES ('3637', '389', '3', '303233', '石碇鄉', '');
INSERT INTO `area` VALUES ('3638', '389', '3', '303234', '坪林鄉', '');
INSERT INTO `area` VALUES ('3639', '389', '3', '303235', '三芝鄉', '');
INSERT INTO `area` VALUES ('3640', '389', '3', '303236', '石門鄉', '');
INSERT INTO `area` VALUES ('3641', '389', '3', '303237', '八里鄉', '');
INSERT INTO `area` VALUES ('3642', '389', '3', '303238', '平溪鄉', '');
INSERT INTO `area` VALUES ('3643', '389', '3', '303239', '雙溪鄉', '');
INSERT INTO `area` VALUES ('3644', '389', '3', '303240', '貢寮鄉', '');
INSERT INTO `area` VALUES ('3645', '389', '3', '303241', '金山鄉', '');
INSERT INTO `area` VALUES ('3646', '389', '3', '303242', '萬里鄉', '');
INSERT INTO `area` VALUES ('3647', '389', '3', '303243', '烏來鄉', '');
INSERT INTO `area` VALUES ('3648', '390', '3', '303244', '宜蘭市', '');
INSERT INTO `area` VALUES ('3649', '390', '3', '303245', '羅東鎮', '');
INSERT INTO `area` VALUES ('3650', '390', '3', '303246', '蘇澳鎮', '');
INSERT INTO `area` VALUES ('3651', '390', '3', '303247', '頭城鎮', '');
INSERT INTO `area` VALUES ('3652', '390', '3', '303248', '礁溪鄉', '');
INSERT INTO `area` VALUES ('3653', '390', '3', '303249', '壯圍鄉', '');
INSERT INTO `area` VALUES ('3654', '390', '3', '303250', '員山鄉', '');
INSERT INTO `area` VALUES ('3655', '390', '3', '303251', '冬山鄉', '');
INSERT INTO `area` VALUES ('3656', '390', '3', '303252', '五結鄉', '');
INSERT INTO `area` VALUES ('3657', '390', '3', '303253', '三星鄉', '');
INSERT INTO `area` VALUES ('3658', '390', '3', '303254', '大同鄉', '');
INSERT INTO `area` VALUES ('3659', '390', '3', '303255', '南澳鄉', '');
INSERT INTO `area` VALUES ('3660', '391', '3', '303256', '桃園市', '');
INSERT INTO `area` VALUES ('3661', '391', '3', '303257', '中壢市', '');
INSERT INTO `area` VALUES ('3662', '391', '3', '303258', '八德市', '');
INSERT INTO `area` VALUES ('3663', '391', '3', '303259', '平鎮市', '');
INSERT INTO `area` VALUES ('3664', '391', '3', '303260', '大溪鎮', '');
INSERT INTO `area` VALUES ('3665', '391', '3', '303261', '楊梅鎮', '');
INSERT INTO `area` VALUES ('3666', '391', '3', '303262', '蘆竹鄉', '');
INSERT INTO `area` VALUES ('3667', '391', '3', '303263', '大園鄉', '');
INSERT INTO `area` VALUES ('3668', '391', '3', '303264', '龜山鄉', '');
INSERT INTO `area` VALUES ('3669', '391', '3', '303265', '龍潭鄉', '');
INSERT INTO `area` VALUES ('3670', '391', '3', '303266', '新屋鄉', '');
INSERT INTO `area` VALUES ('3671', '391', '3', '303267', '觀音鄉', '');
INSERT INTO `area` VALUES ('3672', '391', '3', '303268', '復興鄉', '');
INSERT INTO `area` VALUES ('3673', '392', '3', '303269', '竹北市', '');
INSERT INTO `area` VALUES ('3674', '392', '3', '303270', '竹東鎮', '');
INSERT INTO `area` VALUES ('3675', '392', '3', '303271', '新埔鎮', '');
INSERT INTO `area` VALUES ('3676', '392', '3', '303272', '關西鎮', '');
INSERT INTO `area` VALUES ('3677', '392', '3', '303273', '湖口鄉', '');
INSERT INTO `area` VALUES ('3678', '392', '3', '303274', '新豐鄉', '');
INSERT INTO `area` VALUES ('3679', '392', '3', '303275', '芎林鄉', '');
INSERT INTO `area` VALUES ('3680', '392', '3', '303276', '橫山鄉', '');
INSERT INTO `area` VALUES ('3681', '392', '3', '303277', '北埔鄉', '');
INSERT INTO `area` VALUES ('3682', '392', '3', '303278', '寶山鄉', '');
INSERT INTO `area` VALUES ('3683', '392', '3', '303279', '峨眉鄉', '');
INSERT INTO `area` VALUES ('3684', '392', '3', '303280', '尖石鄉', '');
INSERT INTO `area` VALUES ('3685', '392', '3', '303281', '五峰鄉', '');
INSERT INTO `area` VALUES ('3686', '393', '3', '303282', '苗栗市', '');
INSERT INTO `area` VALUES ('3687', '393', '3', '303283', '苑裡鎮', '');
INSERT INTO `area` VALUES ('3688', '393', '3', '303284', '通霄鎮', '');
INSERT INTO `area` VALUES ('3689', '393', '3', '303285', '竹南鎮', '');
INSERT INTO `area` VALUES ('3690', '393', '3', '303286', '頭份鎮', '');
INSERT INTO `area` VALUES ('3691', '393', '3', '303287', '後龍鎮', '');
INSERT INTO `area` VALUES ('3692', '393', '3', '303288', '卓蘭鎮', '');
INSERT INTO `area` VALUES ('3693', '393', '3', '303289', '大湖鄉', '');
INSERT INTO `area` VALUES ('3694', '393', '3', '303290', '公館鄉', '');
INSERT INTO `area` VALUES ('3695', '393', '3', '303291', '銅鑼鄉', '');
INSERT INTO `area` VALUES ('3696', '393', '3', '303292', '南庄鄉', '');
INSERT INTO `area` VALUES ('3697', '393', '3', '303293', '頭屋鄉', '');
INSERT INTO `area` VALUES ('3698', '393', '3', '303294', '三義鄉', '');
INSERT INTO `area` VALUES ('3699', '393', '3', '303295', '西湖鄉', '');
INSERT INTO `area` VALUES ('3700', '393', '3', '303296', '造橋鄉', '');
INSERT INTO `area` VALUES ('3701', '393', '3', '303297', '三灣鄉', '');
INSERT INTO `area` VALUES ('3702', '393', '3', '303298', '獅潭鄉', '');
INSERT INTO `area` VALUES ('3703', '393', '3', '303299', '泰安鄉', '');
INSERT INTO `area` VALUES ('3704', '394', '3', '303300', '豐原市', '');
INSERT INTO `area` VALUES ('3705', '394', '3', '303301', '太平市', '');
INSERT INTO `area` VALUES ('3706', '394', '3', '303302', '大里市', '');
INSERT INTO `area` VALUES ('3707', '394', '3', '303303', '東勢鎮', '');
INSERT INTO `area` VALUES ('3708', '394', '3', '303304', '大甲鎮', '');
INSERT INTO `area` VALUES ('3709', '394', '3', '303305', '清水鎮', '');
INSERT INTO `area` VALUES ('3710', '394', '3', '303306', '沙鹿鎮', '');
INSERT INTO `area` VALUES ('3711', '394', '3', '303307', '梧棲鎮', '');
INSERT INTO `area` VALUES ('3712', '394', '3', '303308', '后里鄉', '');
INSERT INTO `area` VALUES ('3713', '394', '3', '303309', '神岡鄉', '');
INSERT INTO `area` VALUES ('3714', '394', '3', '303310', '潭子鄉', '');
INSERT INTO `area` VALUES ('3715', '394', '3', '303311', '大雅鄉', '');
INSERT INTO `area` VALUES ('3716', '394', '3', '303312', '新社鄉', '');
INSERT INTO `area` VALUES ('3717', '394', '3', '303313', '石岡鄉', '');
INSERT INTO `area` VALUES ('3718', '394', '3', '303314', '外埔鄉', '');
INSERT INTO `area` VALUES ('3719', '394', '3', '303315', '大安鄉', '');
INSERT INTO `area` VALUES ('3720', '394', '3', '303316', '烏日鄉', '');
INSERT INTO `area` VALUES ('3721', '394', '3', '303317', '大肚鄉', '');
INSERT INTO `area` VALUES ('3722', '394', '3', '303318', '龍井鄉', '');
INSERT INTO `area` VALUES ('3723', '394', '3', '303319', '霧峰鄉', '');
INSERT INTO `area` VALUES ('3724', '394', '3', '303320', '和平鄉', '');
INSERT INTO `area` VALUES ('3725', '395', '3', '303321', '彰化市', '');
INSERT INTO `area` VALUES ('3726', '395', '3', '303322', '鹿港鎮', '');
INSERT INTO `area` VALUES ('3727', '395', '3', '303323', '和美鎮', '');
INSERT INTO `area` VALUES ('3728', '395', '3', '303324', '員林鎮', '');
INSERT INTO `area` VALUES ('3729', '395', '3', '303325', '溪湖鎮', '');
INSERT INTO `area` VALUES ('3730', '395', '3', '303326', '田中鎮', '');
INSERT INTO `area` VALUES ('3731', '395', '3', '303327', '北斗鎮', '');
INSERT INTO `area` VALUES ('3732', '395', '3', '303328', '二林鎮', '');
INSERT INTO `area` VALUES ('3733', '395', '3', '303329', '線西鄉', '');
INSERT INTO `area` VALUES ('3734', '395', '3', '303330', '伸港鄉', '');
INSERT INTO `area` VALUES ('3735', '395', '3', '303331', '福興鄉', '');
INSERT INTO `area` VALUES ('3736', '395', '3', '303332', '秀水鄉', '');
INSERT INTO `area` VALUES ('3737', '395', '3', '303333', '花壇鄉', '');
INSERT INTO `area` VALUES ('3738', '395', '3', '303334', '芬園鄉', '');
INSERT INTO `area` VALUES ('3739', '395', '3', '303335', '大村鄉', '');
INSERT INTO `area` VALUES ('3740', '395', '3', '303336', '埔鹽鄉', '');
INSERT INTO `area` VALUES ('3741', '395', '3', '303337', '埔心鄉', '');
INSERT INTO `area` VALUES ('3742', '395', '3', '303338', '永靖鄉', '');
INSERT INTO `area` VALUES ('3743', '395', '3', '303339', '社頭鄉', '');
INSERT INTO `area` VALUES ('3744', '395', '3', '303340', '二水鄉', '');
INSERT INTO `area` VALUES ('3745', '395', '3', '303341', '田尾鄉', '');
INSERT INTO `area` VALUES ('3746', '395', '3', '303342', '埤頭鄉', '');
INSERT INTO `area` VALUES ('3747', '395', '3', '303343', '芳苑鄉', '');
INSERT INTO `area` VALUES ('3748', '395', '3', '303344', '大城鄉', '');
INSERT INTO `area` VALUES ('3749', '395', '3', '303345', '竹塘鄉', '');
INSERT INTO `area` VALUES ('3750', '395', '3', '303346', '溪州鄉', '');
INSERT INTO `area` VALUES ('3751', '396', '3', '303347', '南投市', '');
INSERT INTO `area` VALUES ('3752', '396', '3', '303348', '埔里鎮', '');
INSERT INTO `area` VALUES ('3753', '396', '3', '303349', '草屯鎮', '');
INSERT INTO `area` VALUES ('3754', '396', '3', '303350', '竹山鎮', '');
INSERT INTO `area` VALUES ('3755', '396', '3', '303351', '集集鎮', '');
INSERT INTO `area` VALUES ('3756', '396', '3', '303352', '名間鄉', '');
INSERT INTO `area` VALUES ('3757', '396', '3', '303353', '鹿谷鄉', '');
INSERT INTO `area` VALUES ('3758', '396', '3', '303354', '中寮鄉', '');
INSERT INTO `area` VALUES ('3759', '396', '3', '303355', '魚池鄉', '');
INSERT INTO `area` VALUES ('3760', '396', '3', '303356', '國姓鄉', '');
INSERT INTO `area` VALUES ('3761', '396', '3', '303357', '水里鄉', '');
INSERT INTO `area` VALUES ('3762', '396', '3', '303358', '信義鄉', '');
INSERT INTO `area` VALUES ('3763', '396', '3', '303359', '仁愛鄉', '');
INSERT INTO `area` VALUES ('3764', '397', '3', '303360', '斗六市', '');
INSERT INTO `area` VALUES ('3765', '397', '3', '303361', '斗南鎮', '');
INSERT INTO `area` VALUES ('3766', '397', '3', '303362', '虎尾鎮', '');
INSERT INTO `area` VALUES ('3767', '397', '3', '303363', '西螺鎮', '');
INSERT INTO `area` VALUES ('3768', '397', '3', '303364', '土庫鎮', '');
INSERT INTO `area` VALUES ('3769', '397', '3', '303365', '北港鎮', '');
INSERT INTO `area` VALUES ('3770', '397', '3', '303366', '古坑鄉', '');
INSERT INTO `area` VALUES ('3771', '397', '3', '303367', '大埤鄉', '');
INSERT INTO `area` VALUES ('3772', '397', '3', '303368', '莿桐鄉', '');
INSERT INTO `area` VALUES ('3773', '397', '3', '303369', '林內鄉', '');
INSERT INTO `area` VALUES ('3774', '397', '3', '303370', '二崙鄉', '');
INSERT INTO `area` VALUES ('3775', '397', '3', '303371', '崙背鄉', '');
INSERT INTO `area` VALUES ('3776', '397', '3', '303372', '麥寮鄉', '');
INSERT INTO `area` VALUES ('3777', '397', '3', '303373', '東勢鄉', '');
INSERT INTO `area` VALUES ('3778', '397', '3', '303374', '褒忠鄉', '');
INSERT INTO `area` VALUES ('3779', '397', '3', '303375', '台西鄉', '');
INSERT INTO `area` VALUES ('3780', '397', '3', '303376', '元長鄉', '');
INSERT INTO `area` VALUES ('3781', '397', '3', '303377', '四湖鄉', '');
INSERT INTO `area` VALUES ('3782', '397', '3', '303378', '口湖鄉', '');
INSERT INTO `area` VALUES ('3783', '397', '3', '303379', '水林鄉', '');
INSERT INTO `area` VALUES ('3784', '398', '3', '303380', '太保市', '');
INSERT INTO `area` VALUES ('3785', '398', '3', '303381', '朴子市', '');
INSERT INTO `area` VALUES ('3786', '398', '3', '303382', '布袋鎮', '');
INSERT INTO `area` VALUES ('3787', '398', '3', '303383', '大林鎮', '');
INSERT INTO `area` VALUES ('3788', '398', '3', '303384', '民雄鄉', '');
INSERT INTO `area` VALUES ('3789', '398', '3', '303385', '溪口鄉', '');
INSERT INTO `area` VALUES ('3790', '398', '3', '303386', '新港鄉', '');
INSERT INTO `area` VALUES ('3791', '398', '3', '303387', '六腳鄉', '');
INSERT INTO `area` VALUES ('3792', '398', '3', '303388', '東石鄉', '');
INSERT INTO `area` VALUES ('3793', '398', '3', '303389', '義竹鄉', '');
INSERT INTO `area` VALUES ('3794', '398', '3', '303390', '鹿草鄉', '');
INSERT INTO `area` VALUES ('3795', '398', '3', '303391', '水上鄉', '');
INSERT INTO `area` VALUES ('3796', '398', '3', '303392', '中埔鄉', '');
INSERT INTO `area` VALUES ('3797', '398', '3', '303393', '竹崎鄉', '');
INSERT INTO `area` VALUES ('3798', '398', '3', '303394', '梅山鄉', '');
INSERT INTO `area` VALUES ('3799', '398', '3', '303395', '番路鄉', '');
INSERT INTO `area` VALUES ('3800', '398', '3', '303396', '大埔鄉', '');
INSERT INTO `area` VALUES ('3801', '398', '3', '303397', '阿里山鄉', '');
INSERT INTO `area` VALUES ('3802', '399', '3', '303398', '新營市', '');
INSERT INTO `area` VALUES ('3803', '399', '3', '303399', '永康市', '');
INSERT INTO `area` VALUES ('3804', '399', '3', '303400', '鹽水鎮', '');
INSERT INTO `area` VALUES ('3805', '399', '3', '303401', '白河鎮', '');
INSERT INTO `area` VALUES ('3806', '399', '3', '303402', '麻豆鎮', '');
INSERT INTO `area` VALUES ('3807', '399', '3', '303403', '新化鎮', '');
INSERT INTO `area` VALUES ('3808', '399', '3', '303404', '善化鎮', '');
INSERT INTO `area` VALUES ('3809', '399', '3', '303405', '佳里鎮', '');
INSERT INTO `area` VALUES ('3810', '399', '3', '303406', '學甲鎮', '');
INSERT INTO `area` VALUES ('3811', '399', '3', '303407', '柳營鄉', '');
INSERT INTO `area` VALUES ('3812', '399', '3', '303408', '後壁鄉', '');
INSERT INTO `area` VALUES ('3813', '399', '3', '303409', '東山鄉', '');
INSERT INTO `area` VALUES ('3814', '399', '3', '303410', '下營鄉', '');
INSERT INTO `area` VALUES ('3815', '399', '3', '303411', '六甲鄉', '');
INSERT INTO `area` VALUES ('3816', '399', '3', '303412', '官田鄉', '');
INSERT INTO `area` VALUES ('3817', '399', '3', '303413', '大內鄉', '');
INSERT INTO `area` VALUES ('3818', '399', '3', '303414', '西港鄉', '');
INSERT INTO `area` VALUES ('3819', '399', '3', '303415', '七股鄉', '');
INSERT INTO `area` VALUES ('3820', '399', '3', '303416', '將軍鄉', '');
INSERT INTO `area` VALUES ('3821', '399', '3', '303417', '北門鄉', '');
INSERT INTO `area` VALUES ('3822', '399', '3', '303418', '新市鄉', '');
INSERT INTO `area` VALUES ('3823', '399', '3', '303419', '安定鄉', '');
INSERT INTO `area` VALUES ('3824', '399', '3', '303420', '山上鄉', '');
INSERT INTO `area` VALUES ('3825', '399', '3', '303421', '玉井鄉', '');
INSERT INTO `area` VALUES ('3826', '399', '3', '303422', '楠西鄉', '');
INSERT INTO `area` VALUES ('3827', '399', '3', '303423', '南化鄉', '');
INSERT INTO `area` VALUES ('3828', '399', '3', '303424', '左鎮鄉', '');
INSERT INTO `area` VALUES ('3829', '399', '3', '303425', '仁德鄉', '');
INSERT INTO `area` VALUES ('3830', '399', '3', '303426', '歸仁鄉', '');
INSERT INTO `area` VALUES ('3831', '399', '3', '303427', '關廟鄉', '');
INSERT INTO `area` VALUES ('3832', '399', '3', '303428', '龍崎鄉', '');
INSERT INTO `area` VALUES ('3833', '400', '3', '303429', '鳳山市', '');
INSERT INTO `area` VALUES ('3834', '400', '3', '303430', '岡山鎮', '');
INSERT INTO `area` VALUES ('3835', '400', '3', '303431', '旗山鎮', '');
INSERT INTO `area` VALUES ('3836', '400', '3', '303432', '美濃鎮', '');
INSERT INTO `area` VALUES ('3837', '400', '3', '303433', '林園鄉', '');
INSERT INTO `area` VALUES ('3838', '400', '3', '303434', '大寮鄉', '');
INSERT INTO `area` VALUES ('3839', '400', '3', '303435', '大樹鄉', '');
INSERT INTO `area` VALUES ('3840', '400', '3', '303436', '大社鄉', '');
INSERT INTO `area` VALUES ('3841', '400', '3', '303437', '仁武鄉', '');
INSERT INTO `area` VALUES ('3842', '400', '3', '303438', '鳥松鄉', '');
INSERT INTO `area` VALUES ('3843', '400', '3', '303439', '橋頭鄉', '');
INSERT INTO `area` VALUES ('3844', '400', '3', '303440', '燕巢鄉', '');
INSERT INTO `area` VALUES ('3845', '400', '3', '303441', '田寮鄉', '');
INSERT INTO `area` VALUES ('3846', '400', '3', '303442', '阿蓮鄉', '');
INSERT INTO `area` VALUES ('3847', '400', '3', '303443', '路竹鄉', '');
INSERT INTO `area` VALUES ('3848', '400', '3', '303444', '湖內鄉', '');
INSERT INTO `area` VALUES ('3849', '400', '3', '303445', '茄萣鄉', '');
INSERT INTO `area` VALUES ('3850', '400', '3', '303446', '永安鄉', '');
INSERT INTO `area` VALUES ('3851', '400', '3', '303447', '彌陀鄉', '');
INSERT INTO `area` VALUES ('3852', '400', '3', '303448', '梓官鄉', '');
INSERT INTO `area` VALUES ('3853', '400', '3', '303449', '六龜鄉', '');
INSERT INTO `area` VALUES ('3854', '400', '3', '303450', '甲仙鄉', '');
INSERT INTO `area` VALUES ('3855', '400', '3', '303451', '杉林鄉', '');
INSERT INTO `area` VALUES ('3856', '400', '3', '303452', '內門鄉', '');
INSERT INTO `area` VALUES ('3857', '400', '3', '303453', '茂林鄉', '');
INSERT INTO `area` VALUES ('3858', '400', '3', '303454', '桃源鄉', '');
INSERT INTO `area` VALUES ('3859', '400', '3', '303455', '三民鄉', '');
INSERT INTO `area` VALUES ('3860', '401', '3', '303456', '屏東市', '');
INSERT INTO `area` VALUES ('3861', '401', '3', '303457', '潮州鎮', '');
INSERT INTO `area` VALUES ('3862', '401', '3', '303458', '東港鎮', '');
INSERT INTO `area` VALUES ('3863', '401', '3', '303459', '恆春鎮', '');
INSERT INTO `area` VALUES ('3864', '401', '3', '303460', '萬丹鄉', '');
INSERT INTO `area` VALUES ('3865', '401', '3', '303461', '長治鄉', '');
INSERT INTO `area` VALUES ('3866', '401', '3', '303462', '麟洛鄉', '');
INSERT INTO `area` VALUES ('3867', '401', '3', '303463', '九如鄉', '');
INSERT INTO `area` VALUES ('3868', '401', '3', '303464', '里港鄉', '');
INSERT INTO `area` VALUES ('3869', '401', '3', '303465', '鹽埔鄉', '');
INSERT INTO `area` VALUES ('3870', '401', '3', '303466', '高樹鄉', '');
INSERT INTO `area` VALUES ('3871', '401', '3', '303467', '萬巒鄉', '');
INSERT INTO `area` VALUES ('3872', '401', '3', '303468', '內埔鄉', '');
INSERT INTO `area` VALUES ('3873', '401', '3', '303469', '竹田鄉', '');
INSERT INTO `area` VALUES ('3874', '401', '3', '303470', '新埤鄉', '');
INSERT INTO `area` VALUES ('3875', '401', '3', '303471', '枋寮鄉', '');
INSERT INTO `area` VALUES ('3876', '401', '3', '303472', '新園鄉', '');
INSERT INTO `area` VALUES ('3877', '401', '3', '303473', '崁頂鄉', '');
INSERT INTO `area` VALUES ('3878', '401', '3', '303474', '林邊鄉', '');
INSERT INTO `area` VALUES ('3879', '401', '3', '303475', '南州鄉', '');
INSERT INTO `area` VALUES ('3880', '401', '3', '303476', '佳冬鄉', '');
INSERT INTO `area` VALUES ('3881', '401', '3', '303477', '琉球鄉', '');
INSERT INTO `area` VALUES ('3882', '401', '3', '303478', '車城鄉', '');
INSERT INTO `area` VALUES ('3883', '401', '3', '303479', '滿州鄉', '');
INSERT INTO `area` VALUES ('3884', '401', '3', '303480', '枋山鄉', '');
INSERT INTO `area` VALUES ('3885', '401', '3', '303481', '三地門鄉', '');
INSERT INTO `area` VALUES ('3886', '401', '3', '303482', '霧臺鄉', '');
INSERT INTO `area` VALUES ('3887', '401', '3', '303483', '瑪家鄉', '');
INSERT INTO `area` VALUES ('3888', '401', '3', '303484', '泰武鄉', '');
INSERT INTO `area` VALUES ('3889', '401', '3', '303485', '來義鄉', '');
INSERT INTO `area` VALUES ('3890', '401', '3', '303486', '春日鄉', '');
INSERT INTO `area` VALUES ('3891', '401', '3', '303487', '獅子鄉', '');
INSERT INTO `area` VALUES ('3892', '401', '3', '303488', '牡丹鄉', '');
INSERT INTO `area` VALUES ('3893', '402', '3', '303489', '臺東市', '');
INSERT INTO `area` VALUES ('3894', '402', '3', '303490', '成功鎮', '');
INSERT INTO `area` VALUES ('3895', '402', '3', '303491', '關山鎮', '');
INSERT INTO `area` VALUES ('3896', '402', '3', '303492', '卑南鄉', '');
INSERT INTO `area` VALUES ('3897', '402', '3', '303493', '鹿野鄉', '');
INSERT INTO `area` VALUES ('3898', '402', '3', '303494', '池上鄉', '');
INSERT INTO `area` VALUES ('3899', '402', '3', '303495', '東河鄉', '');
INSERT INTO `area` VALUES ('3900', '402', '3', '303496', '長濱鄉', '');
INSERT INTO `area` VALUES ('3901', '402', '3', '303497', '太麻里鄉', '');
INSERT INTO `area` VALUES ('3902', '402', '3', '303498', '大武鄉', '');
INSERT INTO `area` VALUES ('3903', '402', '3', '303499', '綠島鄉', '');
INSERT INTO `area` VALUES ('3904', '402', '3', '303500', '海端鄉', '');
INSERT INTO `area` VALUES ('3905', '402', '3', '303501', '延平鄉', '');
INSERT INTO `area` VALUES ('3906', '402', '3', '303502', '金峰鄉', '');
INSERT INTO `area` VALUES ('3907', '402', '3', '303503', '達仁鄉', '');
INSERT INTO `area` VALUES ('3908', '402', '3', '303504', '蘭嶼鄉', '');
INSERT INTO `area` VALUES ('3909', '403', '3', '303505', '花蓮市', '');
INSERT INTO `area` VALUES ('3910', '403', '3', '303506', '鳳林鎮', '');
INSERT INTO `area` VALUES ('3911', '403', '3', '303507', '玉里鎮', '');
INSERT INTO `area` VALUES ('3912', '403', '3', '303508', '新城鄉', '');
INSERT INTO `area` VALUES ('3913', '403', '3', '303509', '吉安鄉', '');
INSERT INTO `area` VALUES ('3914', '403', '3', '303510', '壽豐鄉', '');
INSERT INTO `area` VALUES ('3915', '403', '3', '303511', '光復鄉', '');
INSERT INTO `area` VALUES ('3916', '403', '3', '303512', '豐濱鄉', '');
INSERT INTO `area` VALUES ('3917', '403', '3', '303513', '瑞穗鄉', '');
INSERT INTO `area` VALUES ('3918', '403', '3', '303514', '富里鄉', '');
INSERT INTO `area` VALUES ('3919', '403', '3', '303515', '秀林鄉', '');
INSERT INTO `area` VALUES ('3920', '403', '3', '303516', '萬榮鄉', '');
INSERT INTO `area` VALUES ('3921', '403', '3', '303517', '卓溪鄉', '');
INSERT INTO `area` VALUES ('3922', '404', '3', '303518', '馬公市', '');
INSERT INTO `area` VALUES ('3923', '404', '3', '303519', '湖西鄉', '');
INSERT INTO `area` VALUES ('3924', '404', '3', '303520', '白沙鄉', '');
INSERT INTO `area` VALUES ('3925', '404', '3', '303521', '西嶼鄉', '');
INSERT INTO `area` VALUES ('3926', '404', '3', '303522', '望安鄉', '');
INSERT INTO `area` VALUES ('3927', '404', '3', '303523', '七美鄉', '');

-- ----------------------------
-- Table structure for `bizarea`
-- ----------------------------
DROP TABLE IF EXISTS `bizarea`;
CREATE TABLE `bizarea` (
  `ID` bigint(11) NOT NULL auto_increment,
  `Area` bigint(11) NOT NULL,
  `Parent` bigint(20) default NULL,
  `Level` int(4) default NULL,
  `SequenceID` varchar(32) NOT NULL,
  `BizCode` varchar(32) default NULL,
  `Name` varchar(32) NOT NULL,
  `Description` varchar(32) default NULL,
  `BizStatus` int(2) NOT NULL default '1',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bizarea
-- ----------------------------

-- ----------------------------
-- Table structure for `bizdevice`
-- ----------------------------
DROP TABLE IF EXISTS `bizdevice`;
CREATE TABLE `bizdevice` (
  `ID` bigint(11) NOT NULL auto_increment,
  `BizSystem` bigint(11) NOT NULL,
  `BizCode` varchar(32) default NULL,
  `BizMode` int(4) NOT NULL default '0',
  `Name` varchar(32) NOT NULL,
  `Description` varchar(64) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bizdevice
-- ----------------------------

-- ----------------------------
-- Table structure for `bizpackage`
-- ----------------------------
DROP TABLE IF EXISTS `bizpackage`;
CREATE TABLE `bizpackage` (
  `ID` bigint(11) NOT NULL auto_increment,
  `BizArea` bigint(11) NOT NULL,
  `BizCode` varchar(32) default NULL,
  `SequenceID` varchar(32) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Description` varchar(64) default NULL,
  `BeginTime` varchar(16) default NULL,
  `EndTime` varchar(16) default NULL,
  `SpotType` varchar(16) NOT NULL,
  `SubtitleSpec` int(4) NOT NULL default '1',
  `SubtitleInfo` varchar(32) default NULL,
  `LogoSpec` int(4) NOT NULL default '1',
  `LogoInfo` varchar(32) default NULL,
  `PlayNumber` int(4) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Status` int(4) NOT NULL default '1',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bizpackage
-- ----------------------------

-- ----------------------------
-- Table structure for `bizpackageitem`
-- ----------------------------
DROP TABLE IF EXISTS `bizpackageitem`;
CREATE TABLE `bizpackageitem` (
  `ID` bigint(11) NOT NULL auto_increment,
  `BizPackage` bigint(11) NOT NULL,
  `BizProgram` bigint(11) NOT NULL,
  `SequenceID` varchar(32) default NULL,
  `Name` varchar(32) default NULL,
  `Description` varchar(32) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bizpackageitem
-- ----------------------------

-- ----------------------------
-- Table structure for `bizprogram`
-- ----------------------------
DROP TABLE IF EXISTS `bizprogram`;
CREATE TABLE `bizprogram` (
  `ID` bigint(11) NOT NULL auto_increment,
  `BizArea` bigint(11) NOT NULL,
  `BizSystem` bigint(11) default NULL,
  `BizDevice` bigint(11) default NULL,
  `BizCode` varchar(32) default NULL,
  `SequenceID` varchar(32) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Description` varchar(32) default NULL,
  `BizStatus` varchar(16) NOT NULL default '已开通',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bizprogram
-- ----------------------------

-- ----------------------------
-- Table structure for `bizsystem`
-- ----------------------------
DROP TABLE IF EXISTS `bizsystem`;
CREATE TABLE `bizsystem` (
  `ID` bigint(11) NOT NULL auto_increment,
  `BizArea` bigint(11) NOT NULL,
  `BizCode` varchar(32) default NULL,
  `BizMode` int(4) NOT NULL default '0',
  `Name` varchar(32) NOT NULL,
  `Description` varchar(64) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bizsystem
-- ----------------------------

-- ----------------------------
-- Table structure for `expendrecord`
-- ----------------------------
DROP TABLE IF EXISTS `expendrecord`;
CREATE TABLE `expendrecord` (
  `ID` bigint(11) NOT NULL auto_increment,
  `User` bigint(11) NOT NULL,
  `OrderID` varchar(32) default NULL,
  `PrepaidTime` datetime default NULL,
  `PrepaidAmount` decimal(10,2) default NULL,
  `FinalpaidTime` datetime default NULL,
  `FinalpaidAmount` decimal(10,2) default NULL,
  `PaidStatus` varchar(32) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of expendrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `payonlinelog`
-- ----------------------------
DROP TABLE IF EXISTS `payonlinelog`;
CREATE TABLE `payonlinelog` (
  `ID` bigint(11) NOT NULL auto_increment,
  `User` bigint(11) NOT NULL,
  `OrderID` varchar(32) default NULL,
  `ProductID` varchar(32) default NULL,
  `SerialNumber` varchar(32) default NULL,
  `PayMode` varchar(32) default NULL,
  `PayAmount` int(8) default NULL,
  `PayContext` varchar(64) default NULL,
  `AddTime` datetime default NULL,
  `IPAdress` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `user` (`User`),
  CONSTRAINT `user` FOREIGN KEY (`User`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payonlinelog
-- ----------------------------

-- ----------------------------
-- Table structure for `payrecord`
-- ----------------------------
DROP TABLE IF EXISTS `payrecord`;
CREATE TABLE `payrecord` (
  `ID` bigint(11) NOT NULL auto_increment,
  `User` bigint(11) NOT NULL,
  `AddTime` datetime NOT NULL,
  `OrderID` varchar(32) default NULL,
  `ProductID` varchar(32) default NULL,
  `SerialNumber` varchar(32) default NULL,
  `PayMode` varchar(32) default NULL,
  `PayAmount` int(8) default NULL,
  `AddFee` int(8) default NULL,
  `IPAdress` varchar(32) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `platforminformation`
-- ----------------------------
DROP TABLE IF EXISTS `platforminformation`;
CREATE TABLE `platforminformation` (
  `ID` bigint(11) NOT NULL auto_increment,
  `AddTime` datetime NOT NULL,
  `BizType` int(4) NOT NULL,
  `Title` varchar(64) NOT NULL,
  `Information` blob,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of platforminformation
-- ----------------------------
INSERT INTO `platforminformation` VALUES ('1', '2012-07-14 18:22:18', '1', '实拍黄河再现罕见\"流鱼\"奇观 上千市民捞鱼', null);
INSERT INTO `platforminformation` VALUES ('2', '2012-07-13 18:23:05', '1', '实拍黄河再现罕见\"流鱼\"奇观 上千市民捞鱼', null);
INSERT INTO `platforminformation` VALUES ('3', '2012-07-04 18:23:19', '1', '实拍黄河再现罕见\"流鱼\"奇观 上千市民捞鱼', null);
INSERT INTO `platforminformation` VALUES ('4', '2012-07-12 18:23:35', '1', '我国禁止男同性恋献血', null);
INSERT INTO `platforminformation` VALUES ('5', '2012-07-05 18:25:29', '1', '实拍黄河再现罕见\"流鱼\"奇观 上千市民捞鱼', null);
INSERT INTO `platforminformation` VALUES ('6', '2012-07-03 18:25:48', '2', '爱插播门户网正式上线', null);
INSERT INTO `platforminformation` VALUES ('7', '2012-07-04 18:26:35', '2', '爱插播门户网正式上线', null);
INSERT INTO `platforminformation` VALUES ('8', '2012-07-03 18:26:54', '2', '爱插播门户网正式上线', null);
INSERT INTO `platforminformation` VALUES ('9', '2012-07-03 18:27:10', '2', '爱插播门户网正式上线', null);
INSERT INTO `platforminformation` VALUES ('10', '2012-07-03 18:27:21', '2', '爱插播门户网正式上线', null);
INSERT INTO `platforminformation` VALUES ('11', '2012-07-04 18:27:34', '3', '怎么使用爱插播', null);
INSERT INTO `platforminformation` VALUES ('12', '2012-07-03 18:27:55', '3', '怎么成为爱插播会员', null);
INSERT INTO `platforminformation` VALUES ('13', '2012-07-01 18:28:18', '3', '怎么使用爱插播', null);
INSERT INTO `platforminformation` VALUES ('14', '2012-07-01 18:28:33', '3', '怎么使用爱插播', null);

-- ----------------------------
-- Table structure for `smsreceive`
-- ----------------------------
DROP TABLE IF EXISTS `smsreceive`;
CREATE TABLE `smsreceive` (
  `ID` bigint(11) NOT NULL auto_increment,
  `PhoneNumber` varchar(16) NOT NULL,
  `ReceiveTime` datetime NOT NULL,
  `Message` varchar(128) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of smsreceive
-- ----------------------------

-- ----------------------------
-- Table structure for `smsreceivelog`
-- ----------------------------
DROP TABLE IF EXISTS `smsreceivelog`;
CREATE TABLE `smsreceivelog` (
  `ID` bigint(20) NOT NULL auto_increment,
  `PhoneNumber` varchar(10) NOT NULL,
  `ReceiveTime` datetime NOT NULL,
  `Message` varchar(128) default NULL,
  `BizCode` varchar(32) default NULL,
  `BizContext` varchar(32) default NULL,
  `HandleTime` datetime default NULL,
  `HandleStatus` varchar(16) default NULL,
  `HandleInfo` varchar(64) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of smsreceivelog
-- ----------------------------

-- ----------------------------
-- Table structure for `smssend`
-- ----------------------------
DROP TABLE IF EXISTS `smssend`;
CREATE TABLE `smssend` (
  `ID` bigint(11) NOT NULL auto_increment,
  `PhoneNumber` varchar(32) default NULL,
  `AddTime` datetime default NULL,
  `BizCode` varchar(255) default NULL,
  `BizContext` varchar(255) default NULL,
  `Message` varchar(128) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of smssend
-- ----------------------------

-- ----------------------------
-- Table structure for `smssendlog`
-- ----------------------------
DROP TABLE IF EXISTS `smssendlog`;
CREATE TABLE `smssendlog` (
  `ID` bigint(11) NOT NULL auto_increment,
  `PhoneNumber` varchar(16) NOT NULL,
  `AddTime` varchar(32) NOT NULL,
  `BizCode` varchar(32) default NULL,
  `BizContext` varchar(32) default NULL,
  `Message` varchar(128) default NULL,
  `SendTime` datetime default NULL,
  `SendStatus` varchar(16) default NULL,
  `SendInfo` varchar(64) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of smssendlog
-- ----------------------------

-- ----------------------------
-- Table structure for `sysmanager`
-- ----------------------------
DROP TABLE IF EXISTS `sysmanager`;
CREATE TABLE `sysmanager` (
  `ID` bigint(11) NOT NULL auto_increment,
  `Login` varchar(16) NOT NULL,
  `PWD` varchar(64) NOT NULL,
  `Name` varchar(32) default NULL,
  `Description` varchar(64) default NULL,
  `RoleType` int(4) NOT NULL default '10',
  `BizCode` varchar(32) default NULL,
  `Status` int(4) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysmanager
-- ----------------------------

-- ----------------------------
-- Table structure for `sysmanageroplog`
-- ----------------------------
DROP TABLE IF EXISTS `sysmanageroplog`;
CREATE TABLE `sysmanageroplog` (
  `ID` bigint(11) NOT NULL auto_increment,
  `SysManager` bigint(11) NOT NULL,
  `OPTime` datetime NOT NULL,
  `OPAdress` varchar(32) default NULL,
  `OPType` int(4) NOT NULL,
  `OPContext` varchar(64) default NULL,
  `OPData` varchar(128) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysmanageroplog
-- ----------------------------

-- ----------------------------
-- Table structure for `sysroledefine`
-- ----------------------------
DROP TABLE IF EXISTS `sysroledefine`;
CREATE TABLE `sysroledefine` (
  `ID` bigint(11) NOT NULL auto_increment,
  `SysManager` bigint(11) NOT NULL,
  `BizSystem` bigint(11) NOT NULL,
  `RoleType` int(4) NOT NULL default '10',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysroledefine
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ID` bigint(11) NOT NULL auto_increment,
  `Area` bigint(11) default NULL,
  `Login` varchar(32) NOT NULL,
  `PWD` varchar(64) NOT NULL,
  `PWDQuestion` varchar(32) default NULL,
  `PWDAnswer` varchar(64) default NULL,
  `PhoneNumber` varchar(16) default NULL,
  `PhoneVerify` int(4) NOT NULL default '0',
  `VerifyCode` varchar(6) default NULL,
  `Email` varchar(32) default NULL,
  `RealName` varchar(16) default NULL,
  `Sex` varchar(4) default NULL,
  `Description` varchar(64) default NULL,
  `UserType` int(4) NOT NULL,
  `Balance` decimal(10,2) NOT NULL default '0.00',
  `Level` int(4) NOT NULL default '0',
  `Credit` int(8) NOT NULL default '0',
  `CreateDate` datetime default NULL,
  `CreateMode` int(4) NOT NULL default '0',
  `LoginTime` datetime default NULL,
  `LoginIP` varchar(32) default NULL,
  `Status` int(4) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1111112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2222', '1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '1', '11', '1', '1', 'abc@1.com', '张三丰', '1', '顶顶顶', '1', '0.00', '0', '0', '2012-07-13 14:01:32', '0', null, null, '0');
INSERT INTO `user` VALUES ('1111111', '1', 'sa', '1234', '1', '1', '11', '1', '1', 'lu5@163.com', 'daf', '1', 'dfa', '1', '0.00', '0', '0', '2012-07-05 13:33:25', '0', '2012-07-05 13:33:36', '192.0.0.1', '0');

-- ----------------------------
-- Table structure for `userorder`
-- ----------------------------
DROP TABLE IF EXISTS `userorder`;
CREATE TABLE `userorder` (
  `ID` bigint(11) NOT NULL auto_increment,
  `User` bigint(11) NOT NULL,
  `BizPackage` bigint(11) NOT NULL,
  `TransactionID` varchar(32) NOT NULL,
  `OrderID` varchar(32) NOT NULL,
  `OrderType` varchar(16) NOT NULL,
  `SpotType` varchar(16) NOT NULL,
  `Subtitle` tinytext NOT NULL,
  `LogoType` varchar(16) default NULL,
  `LogoData` blob,
  `PackageInfo` varchar(128) default NULL,
  `PackageNumber` int(4) NOT NULL,
  `PlanDate` date NOT NULL,
  `PlanBegin` datetime default NULL,
  `PlanEnd` datetime default NULL,
  `ActBegin` datetime default NULL,
  `ActEnd` datetime default NULL,
  `PlanFee` decimal(10,2) NOT NULL,
  `ActFee` decimal(10,2) default NULL,
  `CreateTime` datetime default NULL,
  `VerifyTime` datetime default NULL,
  `VerifyMode` varchar(16) default NULL,
  `VerifyManager` bigint(11) default NULL,
  `VerifyStatus` varchar(16) NOT NULL default '等待审核',
  `VerifyInfo` varchar(64) default NULL,
  `HandleTime` datetime default NULL,
  `HandleStatus` varchar(32) NOT NULL default '新增',
  `HandleInfo` varchar(64) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userorder
-- ----------------------------

-- ----------------------------
-- Table structure for `userresource`
-- ----------------------------
DROP TABLE IF EXISTS `userresource`;
CREATE TABLE `userresource` (
  `ID` bigint(11) NOT NULL auto_increment,
  `User` bigint(11) NOT NULL,
  `SpotType` varchar(16) NOT NULL,
  `Subtitle` tinytext NOT NULL,
  `LogoType` varchar(16) default NULL,
  `LogoX` int(8) default NULL,
  `LogoY` int(8) default NULL,
  `LogoData` blob,
  `Description` varchar(64) default NULL,
  `AddTime` datetime NOT NULL,
  `VerifyTime` datetime default NULL,
  `VerifyManager` bigint(11) default NULL,
  `VerifyStatus` varchar(16) NOT NULL default '等待审核',
  `VerifyInfo` varchar(64) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userresource
-- ----------------------------
