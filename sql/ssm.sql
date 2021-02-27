SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `book_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '书id',
  `book_name` varchar(100) NOT NULL COMMENT '书名',
  `book_counts` int(11) NOT NULL COMMENT '数量',
  `detail` varchar(200) NOT NULL COMMENT '描述',
  KEY `book_id` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', 'Java', '1', '从入门到放弃');
INSERT INTO `book` VALUES ('2', 'MySQL', '10', '从删库到跑路');