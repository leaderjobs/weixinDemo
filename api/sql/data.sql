

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for wxd_users
-- ----------------------------
DROP TABLE IF EXISTS `wxd_users`;
CREATE TABLE `wxd_users`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `loginname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '登录名',
  `loginpassword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '登录密码',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '微信昵称',
  `createtime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '注册时间',
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '微信OpenId',
  `appid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '微信AppId',
  `updatetime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wxd_users
-- ----------------------------
INSERT INTO `wxd_users` VALUES (1, 'user01', '1', '', 2020, '', '', 0);

SET FOREIGN_KEY_CHECKS = 1;
