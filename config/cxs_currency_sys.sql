/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50743
 Source Host           : localhost:3306
 Source Schema         : cxs_currency_sys

 Target Server Type    : MySQL
 Target Server Version : 50743
 File Encoding         : 65001

 Date: 26/02/2024 15:13:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article`  (
  `article_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `article_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章标题',
  `article_abstract` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章摘要',
  `article_cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文章封面',
  `article_type` int(11) NOT NULL COMMENT '文章分类',
  `article_rate` float DEFAULT NULL COMMENT '文章评级',
  `article_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '文章详情',
  `article_belong_user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '发布者用户id',
  `article_file_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '依赖包文件id',
  `article_download_point` int(11) DEFAULT 0 COMMENT '下载所需积分',
  `article_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '文章状态,0、未审核 1、已通过 2、未通过',
  `article_is_recommend` tinyint(1) DEFAULT 0 COMMENT '是否官方推荐',
  `article_is_index` tinyint(1) DEFAULT 0 COMMENT '是否展示在首页,1是,0不是',
  `article_is_self` tinyint(1) DEFAULT 0 COMMENT '是否原创文章，0、不是，1、是',
  `original_link` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '非原创，原文链接',
  `create_time` datetime(0) DEFAULT NULL COMMENT '文章创建时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '文章修改时间',
  `article_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '备注描述',
  PRIMARY KEY (`article_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO `t_article` VALUES (2, 'Hello World!', '欢迎来到小白博客！', '/upload/20240226/67489e02c9b44da6aa33735ee9beb4d520240226150657.png', 2, 5, '### 系统背景\r\n小白博客系统是博主与2022年12月份疫情居家期间在工作之余完成的一套技术交流平台、采用前后端分离的架构方式，主要涉及技术点包括SpringBoot、SpringSecurity、MyBatis-Plus、Redis、Jwt、邮件发送、Vue、Vue-admin、Element-UI、docker等等技术，采用腾讯云服务器容器化部署。\r\n\r\n### 关于系统\r\n#### 系统地址(已过期)\r\n- 前台系统: [https://www.cxs.plus](https://www.cxs.plus)\r\n- 管理系统: [https://www.cxs.plus/admin](https://www.cxs.plus/admin)\r\n#### 体验账号\r\n- 以下账号为系统观察者，拥有超级权限，在前后台均可使用(仅限查看操作)\r\n- admin-view/1234567890!\r\n- 普通用户可在前台页面直接注册！\r\n\r\n### 已实现功能\r\n#### 前台系统\r\n1. 用户登录：系统为非强认证、游客可访问部分功能。\r\n2. 新用户注册：注册时单个邮箱账号只能绑定三个用户，用户名全系统唯一。\r\n3. 用户发布、查看并下载心仪文章及资源，对文章点赞、收藏、对文章发布者打赏等功能。\r\n4. 用户中心的实现，可修改查看个人资料、修改登录密码、查询登录日志、个性化设置(设置积分是否可见、个人是否被打赏)、管理用户发布的资源、用户收藏的资源、用户评论、举报、反馈、个人订单等功能实现。\r\n5. 首页搜索实现了全站热搜榜单功能。\r\n6. 用户签到送积分功能，用户每日进行签到，系统赠送相应积分。\r\n7. 用户充值积分功能，此功能暂使用支付宝沙箱机制，未正式启用。\r\n8. 用户反馈功能，用户可对系统的建议、BUG进行反馈。\r\n9. 用户举报功能的实现，用户可对文章、评论进行举报。\r\n\r\n### 待实现功能\r\n#### 前台系统\r\n1. 用户发布文章时定时保存草稿的实现，防止未编辑完的文章丢失。\r\n2. 博主个人中心功能的实现，可查看该博主的文章发布情况、被点赞数......\r\n3. 用户登录验证码的改造、应对多实例情况。\r\n\r\n#### 管理系统\r\n1. 系统定时任务日志的记录与查询。\r\n2. 用户个人信息展示功能的实现。\r\n3. 统计面板功能的完善。\r\n\r\n### 联系我们\r\n- 邮箱：full_stack_white@163.com\r\n- Java全栈技术交流群: 941095490', '67489e02c9b44da6aa33735ee9beb4d5', NULL, 0, 1, 0, 0, 1, NULL, '2024-02-26 15:08:20', NULL, '');

-- ----------------------------
-- Table structure for t_article_collection
-- ----------------------------
DROP TABLE IF EXISTS `t_article_collection`;
CREATE TABLE `t_article_collection`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `article_id` int(11) NOT NULL COMMENT '文章id',
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `collection_time` datetime(0) DEFAULT NULL COMMENT '收藏时间',
  `belong_user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文章所属用户id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `t_article_collection_article_id_user_id`(`article_id`, `user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_article_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_article_comment`;
CREATE TABLE `t_article_comment`  (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `article_id` int(11) NOT NULL COMMENT '评论id',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '评论内容',
  `comment_from` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '评论人',
  `comment_to` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '评论对象',
  `parent_comment_id` int(11) DEFAULT NULL COMMENT '父级评论id',
  `comment_time` datetime(0) DEFAULT NULL COMMENT '评论时间',
  `comment_essence` tinyint(1) DEFAULT NULL COMMENT '是否精华、1是、0不是',
  `top` tinyint(1) DEFAULT 0 COMMENT '置顶',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_article_comment_like
-- ----------------------------
DROP TABLE IF EXISTS `t_article_comment_like`;
CREATE TABLE `t_article_comment_like`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `comment_id` int(11) NOT NULL COMMENT '评论id',
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `belong_user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '所属用户',
  `like_time` datetime(0) DEFAULT NULL COMMENT '点赞时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `t_article_comment_like_comment_id_user_id`(`comment_id`, `user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章评论点赞表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_article_draft
-- ----------------------------
DROP TABLE IF EXISTS `t_article_draft`;
CREATE TABLE `t_article_draft`  (
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '草稿id，userId',
  `article_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文章id',
  `article_abstract` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文章摘要',
  `article_cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文章封面',
  `article_type` int(11) DEFAULT NULL COMMENT '文章分类',
  `importance` int(11) DEFAULT 0 COMMENT '评级',
  `article_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '文章详情',
  `article_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文章标签',
  `create_time` datetime(0) DEFAULT NULL COMMENT '草稿创建时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '草稿修改时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章草稿表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_article_like
-- ----------------------------
DROP TABLE IF EXISTS `t_article_like`;
CREATE TABLE `t_article_like`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `article_id` int(11) NOT NULL COMMENT '文章id',
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `belong_user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文章所属用户id',
  `like_time` datetime(0) DEFAULT NULL COMMENT '点赞时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `t_article_like_article_id_user_id`(`article_id`, `user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章点赞表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_article_read
-- ----------------------------
DROP TABLE IF EXISTS `t_article_read`;
CREATE TABLE `t_article_read`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `article_id` int(11) NOT NULL COMMENT '文章id',
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `read_time` datetime(0) DEFAULT NULL COMMENT '阅读时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `t_article_read_article_id_user_id`(`article_id`, `user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章阅读表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_article_read
-- ----------------------------
INSERT INTO `t_article_read` VALUES (1, 2, '67489e02c9b44da6aa33735ee9beb4d5', '2024-02-26 15:10:01');

-- ----------------------------
-- Table structure for t_article_search_flow
-- ----------------------------
DROP TABLE IF EXISTS `t_article_search_flow`;
CREATE TABLE `t_article_search_flow`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `article_id` int(11) NOT NULL COMMENT '文章id',
  `search_time` datetime(0) DEFAULT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章搜索次数记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_article_tag`;
CREATE TABLE `t_article_tag`  (
  `article_id` int(11) NOT NULL COMMENT '文章id',
  `tag_id` int(11) NOT NULL COMMENT '标签id',
  PRIMARY KEY (`article_id`, `tag_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章-标签关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_article_tag
-- ----------------------------
INSERT INTO `t_article_tag` VALUES (2, 1);

-- ----------------------------
-- Table structure for t_external_link
-- ----------------------------
DROP TABLE IF EXISTS `t_external_link`;
CREATE TABLE `t_external_link`  (
  `external_link_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `external_link_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '链接名称',
  `external_link_link` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '链接地址',
  `external_link_icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '链接图标',
  `external_link_blank` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '_blank' COMMENT '链接打开方式',
  `external_link_status` tinyint(1) DEFAULT 0 COMMENT '状态,0、待审核1、已通过',
  `external_link_user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '所属用户',
  `external_link_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) DEFAULT NULL COMMENT '链接创建时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '链接修改时间',
  PRIMARY KEY (`external_link_id`) USING BTREE,
  UNIQUE INDEX `t_external_link__index_name_unique`(`external_link_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '友情链接表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_external_link
-- ----------------------------
INSERT INTO `t_external_link` VALUES (1, '简书', 'https://www.jianshu.com/u/447ccc52c421', '', '_blank', 1, '67489e02c9b44da6aa33735ee9beb4d5', '简书', '2022-11-23 19:44:55', '2023-05-23 21:36:24');
INSERT INTO `t_external_link` VALUES (3, '淘宝', 'https://www.taobao.com', 'edit', '_blank', 1, '67489e02c9b44da6aa33735ee9beb4d5', '百度', '2022-11-23 19:44:55', NULL);
INSERT INTO `t_external_link` VALUES (11, '小白博客', 'https://www.cxs.plus', '', '_blank', 1, '67489e02c9b44da6aa33735ee9beb4d5', '小白博客主页', '2022-12-07 19:03:35', NULL);
INSERT INTO `t_external_link` VALUES (13, 'CSDN', 'https://blog.csdn.net/admin_2022', '', '_blank', 1, '67489e02c9b44da6aa33735ee9beb4d5', '全栈小白的CSDN主页', '2023-04-29 22:25:34', NULL);
INSERT INTO `t_external_link` VALUES (14, '知乎', 'https://www.zhihu.com/people/4-3-47-60-56', '', '_blank', 1, '67489e02c9b44da6aa33735ee9beb4d5', '知乎', '2023-05-23 21:32:39', NULL);

-- ----------------------------
-- Table structure for t_feedback
-- ----------------------------
DROP TABLE IF EXISTS `t_feedback`;
CREATE TABLE `t_feedback`  (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '反馈id',
  `feedback_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '反馈类型',
  `feedback_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '反馈内容',
  `feedback_images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '反馈图片',
  `feedback_status` tinyint(1) DEFAULT 0 COMMENT '状态，1、已处理 0、未处理',
  `feedback_user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '反馈用户',
  `feedback_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户接收邮箱',
  `feedback_time` datetime(0) DEFAULT NULL COMMENT '反馈时间',
  PRIMARY KEY (`feedback_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户反馈表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_feedback_reply
-- ----------------------------
DROP TABLE IF EXISTS `t_feedback_reply`;
CREATE TABLE `t_feedback_reply`  (
  `reply_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `feedback_id` int(11) NOT NULL COMMENT '反馈id',
  `reply_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '回复内容',
  `admin_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '处理人',
  `reply_time` datetime(0) DEFAULT NULL COMMENT '处理时间',
  PRIMARY KEY (`reply_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户反馈回复表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_file_path
-- ----------------------------
DROP TABLE IF EXISTS `t_file_path`;
CREATE TABLE `t_file_path`  (
  `file_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件id',
  `file_orign_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '源文件名',
  `file_real_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件真实路径',
  `file_size` bigint(20) DEFAULT NULL COMMENT '文件大小',
  `file_access_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件访问路径',
  `file_structure` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '文件结构',
  `create_date` datetime(0) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文件资源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_log_info
-- ----------------------------
DROP TABLE IF EXISTS `t_log_info`;
CREATE TABLE `t_log_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `param` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '入参',
  `response` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '出参',
  `opera_result` tinyint(1) DEFAULT NULL COMMENT '操作结果,1、成功 2、失败',
  `opera_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作接口方法名',
  `opera_error_why` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '失败原因描述',
  `opera_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作说明',
  `opera_user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作人用户id',
  `opera_time` datetime(0) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_log_info
-- ----------------------------
INSERT INTO `t_log_info` VALUES (1, '{\"articleDesc\":\"\",\"articleId\":2,\"articleIsRecommend\":0,\"articleStatus\":1}', '{\"code\":200,\"data\":null,\"msg\":\"操作成功\"}', 1, 'reviewedArticle', NULL, '管理员审核文章', '67489e02c9b44da6aa33735ee9beb4d5', '2024-02-26 15:08:33');
INSERT INTO `t_log_info` VALUES (2, '{\"id\":1,\"sysContent\":\"### 系统背景\\n小白博客系统是博主与2022年12月份疫情居家期间在工作之余完成的一套技术交流平台、采用前后端分离的架构方式，主要涉及技术点包括SpringBoot、SpringSecurity、MyBatis-Plus、Redis、Jwt、邮件发送、Vue、Vue-admin、Element-UI、docker等等技术，采用腾讯云服务器容器化部署。\\n\\n### 关于系统\\n#### 系统地址\\n- 前台系统: [https://www.cxs.plus](https://www.cxs.plus)\\n- 管理系统: [https://www.cxs.plus/admin](https://www.cxs.plus/admin)\\n#### 体验账号\\n- 以下账号为系统观察者，拥有超级权限，在前后台均可使用(仅限查看操作)\\n- admin-view/1234567890!\\n- 普通用户可在前台页面直接注册！\\n\\n### 已实现功能\\n#### 前台系统\\n1. 用户登录：系统为非强认证、游客可访问部分功能。\\n2. 新用户注册：注册时单个邮箱账号只能绑定三个用户，用户名全系统唯一。\\n3. 用户发布、查看并下载心仪文章及资源，对文章点赞、收藏、对文章发布者打赏等功能。\\n4. 用户中心的实现，可修改查看个人资料、修改登录密码、查询登录日志、个性化设置(设置积分是否可见、个人是否被打赏)、管理用户发布的资源、用户收藏的资源、用户评论、举报、反馈、个人订单等功能实现。\\n5. 首页搜索实现了全站热搜榜单功能。\\n6. 用户签到送积分功能，用户每日进行签到，系统赠送相应积分。\\n7. 用户充值积分功能，此功能暂使用支付宝沙箱机制，未正式启用。\\n8. 用户反馈功能，用户可对系统的建议、BUG进行反馈。\\n9. 用户举报功能的实现，用户可对文章、评论进行举报。\\n\\n### 待实现功能\\n#### 前台系统\\n1. 用户发布文章时定时保存草稿的实现，防止未编辑完的文章丢失。\\n2. 博主个人中心功能的实现，可查看该博主的文章发布情况、被点赞数......\\n3. 用户登录验证码的改造、应对多实例情况。\\n\\n#### 管理系统\\n1. 系统定时任务日志的记录与查询。\\n2. 用户个人信息展示功能的实现。\\n3. 统计面板功能的完善。\\n\\n### 联系我们\\n- 邮箱：full_stack_white@163.com\\n- Java全栈技术交流群: 941095490\",\"sysEmail\":\"full_stack_white@163.com\",\"sysGraph\":\"博客初心，永不止步\",\"sysLogo\":\"/upload/20240226/67489e02c9b44da6aa33735ee9beb4d520240226150935.png\",\"sysLogoTitle\":\"只要还有明天，今天永远只是起跑线！\",\"sysTitle\":\"小白博客\",\"sysWeixin\":\"/upload/20240226/67489e02c9b44da6aa33735ee9beb4d520240226150946.png\",\"sysWenxinPublic\":\"/upload/20240226/67489e02c9b44da6aa33735ee9beb4d520240226150953.jpg\"}', '{\"code\":200,\"data\":null,\"msg\":\"操作成功\"}', 1, 'updateSystemInfo', NULL, '管理员修改关于本站信息', '67489e02c9b44da6aa33735ee9beb4d5', '2024-02-26 15:10:23');
INSERT INTO `t_log_info` VALUES (3, '2', '{\"code\":200,\"data\":null,\"msg\":\"操作成功\"}', 1, 'executeTask', NULL, '执行任务', '67489e02c9b44da6aa33735ee9beb4d5', '2024-02-26 15:11:09');

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `menu_path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '菜单路径',
  `menu_component` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '菜单组件',
  `menu_redirect` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '重定向地址，在面包屑中点击会重定向去的地址',
  `menu_hidden` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否在侧边栏显示,1、不显示、0、显示',
  `menu_always_show` tinyint(1) NOT NULL DEFAULT 1 COMMENT '一直显示根路由,1、显示，0、不显示',
  `menu_meta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '开发者配置项',
  `menu_parant_id` int(11) DEFAULT 1 COMMENT '父菜单id',
  PRIMARY KEY (`menu_id`) USING BTREE,
  UNIQUE INDEX `t_menu__index_name_unique`(`menu_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES (13, 'system', '/system', '', '', 0, 0, '{\"icon\":\"el-icon-setting\",\"title\":\"系统管理\"}', -1);
INSERT INTO `t_menu` VALUES (14, 'systemrole', '/system/role', '', '', 0, 0, '{\"breadcrumb\":false,\"affix\":false,\"icon\":\"el-icon-s-custom\",\"title\":\"角色管理\"}', 13);
INSERT INTO `t_menu` VALUES (15, 'systemuser', '/system/user', '', '', 0, 0, '{\"icon\":\"el-icon-user\",\"title\":\"用户管理\"}', 13);
INSERT INTO `t_menu` VALUES (16, 'systemmenu', '/system/menu', '', '', 0, 0, '{\"icon\":\"el-icon-menu\",\"title\":\"菜单管理\"}', 13);
INSERT INTO `t_menu` VALUES (26, 'mainManage', '/main', '', '/nav', 0, 0, '{\"breadcrumb\":true,\"activeMenu\":\"\",\"affix\":false,\"icon\":\"el-icon-s-home\",\"title\":\"首页管理\",\"noCahce\":false}', -1);
INSERT INTO `t_menu` VALUES (27, 'navManage', '/main/nav', '', '', 0, 0, '{\"breadcrumb\":true,\"activeMenu\":\"\",\"affix\":false,\"icon\":\"el-icon-link\",\"title\":\"导航链接管理\",\"noCahce\":false}', 26);
INSERT INTO `t_menu` VALUES (28, '/main/friend_link', '/main/friend_link', '', '', 0, 0, '{\"breadcrumb\":true,\"activeMenu\":\"\",\"affix\":false,\"icon\":\"el-icon-paperclip\",\"title\":\"友情链接管理\",\"noCahce\":false}', 26);
INSERT INTO `t_menu` VALUES (29, 'searchTagManage', '/main/tag', '', '', 0, 0, '{\"breadcrumb\":true,\"activeMenu\":\"\",\"affix\":false,\"icon\":\"el-icon-collection-tag\",\"title\":\"搜索标签管理\",\"noCahce\":false}', 26);
INSERT INTO `t_menu` VALUES (30, 'technologyType', '/main/technology', NULL, '', 0, 0, '{\"breadcrumb\":true,\"activeMenu\":\"\",\"affix\":false,\"icon\":\"el-icon-s-grid\",\"title\":\"技术分类管理\",\"noCahce\":false}', 26);
INSERT INTO `t_menu` VALUES (31, 'taskManage', '/system/task', NULL, '', 0, 0, '{\"breadcrumb\":true,\"activeMenu\":\"\",\"affix\":false,\"icon\":\"el-icon-stopwatch\",\"title\":\"任务管理\",\"noCahce\":false}', 13);
INSERT INTO `t_menu` VALUES (32, 'blog', '/blog', NULL, '', 0, 0, '{\"breadcrumb\":true,\"activeMenu\":\"\",\"affix\":false,\"icon\":\"el-icon-orange\",\"title\":\"博客管理\",\"noCahce\":false}', -1);
INSERT INTO `t_menu` VALUES (33, 'blog-examine', '/blog/examine', NULL, '', 0, 0, '{\"breadcrumb\":true,\"activeMenu\":\"\",\"affix\":false,\"icon\":\"el-icon-s-check\",\"title\":\"博客审核\",\"noCahce\":false}', 32);
INSERT INTO `t_menu` VALUES (34, 'logManage', '/log/operalog', NULL, '', 0, 0, '{\"breadcrumb\":false,\"activeMenu\":\"\",\"affix\":false,\"icon\":\"el-icon-document-add\",\"title\":\"操作日志管理\",\"noCahce\":false}', 43);
INSERT INTO `t_menu` VALUES (35, 'notice', '/blog/notice', NULL, '', 0, 0, '{\"breadcrumb\":true,\"activeMenu\":\"\",\"affix\":false,\"icon\":\"gonggao\",\"title\":\"公告管理\",\"noCahce\":false}', 13);
INSERT INTO `t_menu` VALUES (36, 'blog-manage', '/blog/manage', NULL, '', 0, 0, '{\"breadcrumb\":true,\"activeMenu\":\"\",\"affix\":false,\"icon\":\"el-icon-place\",\"title\":\"博客管理\",\"noCahce\":false}', 32);
INSERT INTO `t_menu` VALUES (37, 'about_system_info', '/system/info', NULL, '', 0, 0, '{\"breadcrumb\":true,\"activeMenu\":\"\",\"affix\":false,\"icon\":\"el-icon-s-tools\",\"title\":\"关于本站\",\"noCahce\":false}', 13);
INSERT INTO `t_menu` VALUES (38, 'notice-add-etit', '/blog/editNotice/:id?', NULL, '', 1, 0, '{\"breadcrumb\":false,\"activeMenu\":\"/blog/notice\",\"affix\":false,\"icon\":\"\",\"title\":\"编辑公告\",\"noCahce\":false}', 32);
INSERT INTO `t_menu` VALUES (39, 'other', '/other', NULL, '', 0, 0, '{\"breadcrumb\":true,\"activeMenu\":\"\",\"affix\":false,\"icon\":\"el-icon-menu\",\"title\":\"其他管理\",\"noCahce\":false}', -1);
INSERT INTO `t_menu` VALUES (40, 'question', '/other/question', NULL, '', 0, 0, '{\"breadcrumb\":true,\"activeMenu\":\"\",\"affix\":false,\"icon\":\"el-icon-postcard\",\"title\":\"相关问题管理\",\"noCahce\":false}', 39);
INSERT INTO `t_menu` VALUES (41, 'feedback', '/other/feedback', NULL, '', 0, 0, '{\"breadcrumb\":true,\"activeMenu\":\"\",\"affix\":false,\"icon\":\"email\",\"title\":\"反馈管理\",\"noCahce\":false}', 39);
INSERT INTO `t_menu` VALUES (42, 'report', '/other/report', NULL, '', 0, 0, '{\"breadcrumb\":true,\"activeMenu\":\"\",\"affix\":false,\"icon\":\"email\",\"title\":\"举报管理\",\"noCahce\":false}', 39);
INSERT INTO `t_menu` VALUES (43, 'log', '/log', NULL, '', 0, 0, '{\"breadcrumb\":false,\"activeMenu\":\"\",\"affix\":false,\"icon\":\"el-icon-document-add\",\"title\":\"日志管理\",\"noCahce\":false}', -1);
INSERT INTO `t_menu` VALUES (44, 'pointTradeManage', '/point', NULL, '/point/trade-type', 0, 0, '{\"breadcrumb\":true,\"activeMenu\":\"\",\"affix\":false,\"icon\":\"money\",\"title\":\"积分交易管理\",\"noCahce\":false}', -1);
INSERT INTO `t_menu` VALUES (45, 'pointTradeType', '/point/trade-type', NULL, '', 0, 0, '{\"breadcrumb\":true,\"activeMenu\":\"\",\"affix\":false,\"icon\":\"money\",\"title\":\"交易类型管理\",\"noCahce\":false}', 44);
INSERT INTO `t_menu` VALUES (46, 'tradeOrder', '/point/order', NULL, '', 0, 0, '{\"breadcrumb\":true,\"activeMenu\":\"\",\"affix\":false,\"icon\":\"el-icon-baseball\",\"title\":\"交易订单管理\",\"noCahce\":false}', 44);

-- ----------------------------
-- Table structure for t_nav_link
-- ----------------------------
DROP TABLE IF EXISTS `t_nav_link`;
CREATE TABLE `t_nav_link`  (
  `nav_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '链接id',
  `nav_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '链接名称',
  `nav_link` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '链接/路由地址',
  `nav_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '链接类型, 1、路由 2、链接',
  `nav_icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '链接图标',
  `nav_desc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '鼠标移入说明',
  `nav_must_login` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否需要登录查看',
  `nav_remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `nav_order` int(11) NOT NULL COMMENT '链接顺序',
  PRIMARY KEY (`nav_id`) USING BTREE,
  UNIQUE INDEX `t_nav_link__index_name_unique`(`nav_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'nav-top链接表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_nav_link
-- ----------------------------
INSERT INTO `t_nav_link` VALUES (3, '关于本站', '/system/info', 1, 'el-icon-more-outline', '关于本站', 0, '', 1);
INSERT INTO `t_nav_link` VALUES (4, '发布', '/article/publish', 1, 'el-icon-chat-dot-square', '关于本站', 1, '', 4);
INSERT INTO `t_nav_link` VALUES (9, '用户反馈', '/fallback', 1, 'el-icon-s-comment', '用户反馈', 1, '', 3);
INSERT INTO `t_nav_link` VALUES (10, 'CSDN', 'https://www.csdn.net/', 2, '', 'CSDN - 专业开发者社区', 0, '', 2);
INSERT INTO `t_nav_link` VALUES (11, '百度', 'https://www.baidu.com', 2, '', '百度', 0, '', 5);

-- ----------------------------
-- Table structure for t_notice_info
-- ----------------------------
DROP TABLE IF EXISTS `t_notice_info`;
CREATE TABLE `t_notice_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告id',
  `notice_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '公告内容',
  `is_push` tinyint(1) DEFAULT 0 COMMENT '是否首页轮询推送',
  `publish_user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '发布人用户id',
  `publish_time` datetime(0) DEFAULT NULL COMMENT '发布时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '公告信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_notice_info
-- ----------------------------
INSERT INTO `t_notice_info` VALUES (1, '20221207更新公告', '#### 系统更新\n1. 新增公告、关于本站信息展示。\n2. 优化博客详情页原创声明及侧边栏动画。', 1, '67489e02c9b44da6aa33735ee9beb4d5', '2022-12-07 19:01:12', NULL);
INSERT INTO `t_notice_info` VALUES (3, '23年第一个版本内容', '#### 前台版本内容\n- 重点转向个人中心方向\n- 新增用户登录日志查看、登录时间、登录ip地址\n- 新增用户ip归属地，查看用户所在位置\n- 新增修改用户密码功能\n- 新增修改用户个人信息功能\n\n#### 后台管理功能\n- 新增系统预览角色，只可查看、未授予DML操作', 1, '67489e02c9b44da6aa33735ee9beb4d5', '2023-01-13 22:10:43', '2023-01-15 19:44:08');
INSERT INTO `t_notice_info` VALUES (4, '小白博客维护公告', '#### 功能升级\n1. 用户新增系统权限，由管理员管理，包括发言、登录、发布文章、反馈、文件上传...\n2. 开放用户注册功能，单个邮箱限制最多绑定3个账号\n3. 新增新用户更新信息提示功能\n4. 新增用户反馈功能，单个用户单日上限3次', 1, '67489e02c9b44da6aa33735ee9beb4d5', '2023-01-26 23:28:39', NULL);
INSERT INTO `t_notice_info` VALUES (5, '系统功能扩展说明', '#### 功能升级说明\n1、博客关联文件下载需要扣除下载者积分，对应的发布者会增加积分。\n2、自己下载自己的博客文件不会扣除积分。\n3、购买过的文章可以无限次下载，不会重复扣除积分。\n4、系统功能属于测试阶段，积分获取方式暂未开放。', 1, '67489e02c9b44da6aa33735ee9beb4d5', '2023-04-29 23:28:50', NULL);
INSERT INTO `t_notice_info` VALUES (6, '20231030版本内容更新', '#### 系统更新\n1. 个人中心新增我的订单列表。\n2. 新增功能修改发布未审核的博客。', 1, '67489e02c9b44da6aa33735ee9beb4d5', '2023-10-30 17:48:57', NULL);
INSERT INTO `t_notice_info` VALUES (7, '发布新公告', '发布新公告发布新公告发布新公告发布新公告', 1, '67489e02c9b44da6aa33735ee9beb4d5', '2024-02-26 14:47:38', NULL);

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `article_id` int(11) NOT NULL COMMENT '文章id',
  `trade_time` datetime(0) DEFAULT NULL COMMENT '交易时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '交易订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_point_recharge_type
-- ----------------------------
DROP TABLE IF EXISTS `t_point_recharge_type`;
CREATE TABLE `t_point_recharge_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `gold` int(11) NOT NULL DEFAULT 0 COMMENT '积分数量',
  `money` decimal(5, 2) NOT NULL DEFAULT 0.00 COMMENT 'money',
  `discount` float(2, 1) DEFAULT NULL COMMENT '折扣',
  `shows` tinyint(1) DEFAULT 1 COMMENT '是否展示',
  `type_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '积分充值类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_point_recharge_type
-- ----------------------------
INSERT INTO `t_point_recharge_type` VALUES (1, 100, 10.00, NULL, 1, '购买100积分');
INSERT INTO `t_point_recharge_type` VALUES (2, 200, 20.00, 9.5, 1, '购买200积分');
INSERT INTO `t_point_recharge_type` VALUES (3, 300, 30.00, 9.0, 1, '购买300积分');
INSERT INTO `t_point_recharge_type` VALUES (4, 500, 50.00, 7.5, 1, '充值购买500积分');

-- ----------------------------
-- Table structure for t_point_trade_flow
-- ----------------------------
DROP TABLE IF EXISTS `t_point_trade_flow`;
CREATE TABLE `t_point_trade_flow`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `point` int(11) NOT NULL COMMENT '变动积分值',
  `point_type` tinyint(1) NOT NULL COMMENT '积分方向,1增加、0扣除',
  `article_id` int(11) DEFAULT NULL COMMENT '文章id',
  `trade_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '交易描述',
  `trade_time` datetime(0) DEFAULT NULL COMMENT '交易时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '积分交易流水' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_point_trade_flow
-- ----------------------------
INSERT INTO `t_point_trade_flow` VALUES (1, '67489e02c9b44da6aa33735ee9beb4d5', 1, 1, 2, '文章审核通过', '2024-02-26 15:08:33');

-- ----------------------------
-- Table structure for t_point_trade_order
-- ----------------------------
DROP TABLE IF EXISTS `t_point_trade_order`;
CREATE TABLE `t_point_trade_order`  (
  `order_trade_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单id',
  `order_user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '下单用户',
  `point_type_id` int(11) NOT NULL COMMENT '积分充值类型id',
  `order_status` tinyint(1) DEFAULT 0 COMMENT '0、未付款, 1、已付款',
  `order_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '订单描述',
  `order_time` datetime(0) DEFAULT NULL COMMENT '交易时间',
  `order_money` decimal(5, 2) DEFAULT NULL COMMENT '交易订单金额',
  PRIMARY KEY (`order_trade_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '积分交易订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_realtion_question
-- ----------------------------
DROP TABLE IF EXISTS `t_realtion_question`;
CREATE TABLE `t_realtion_question`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '问题',
  `question_answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '答案',
  `is_show` tinyint(1) DEFAULT 0 COMMENT '是否展示',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '问题回答表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_realtion_question
-- ----------------------------
INSERT INTO `t_realtion_question` VALUES (1, '如何注册新用户?', '未登录情况：\n1. 点击有上角登录按钮。\n2. 在登录框下点击`注册新用户>>`按钮。\n3. 填写基本信息，通过邮箱验证码进行注册。\n4. 注册成功后即可登陆了系统。\n5. 新用户会强制提醒更新信息哦。\n\n已登录情况：\n1. 先退出登录，操作同上', 1, '2023-05-14 12:23:52');
INSERT INTO `t_realtion_question` VALUES (2, '遇到喜欢的博客如何下载资源包?', '首先登录自己的账号，如无账号，先进行用户注册\n1、点击进入博客详情页\n![描述](/server/upload/20230514/67489e02c9b44da6aa33735ee9beb4d520230514123109.png){{{width=\"auto\" height=\"auto\"}}}\n2、点击下载，会跳转到指定的位置\n![描述](/server/upload/20230514/67489e02c9b44da6aa33735ee9beb4d520230514123158.png){{{width=\"auto\" height=\"auto\"}}}\n3、点击下载文件，则会根据积分进行下载\n![描述](/server/upload/20230514/67489e02c9b44da6aa33735ee9beb4d520230514123226.png){{{width=\"auto\" height=\"auto\"}}}\n**注意**\n1. 如果积分不足，会下载失败。\n2. 已经下载过的文件可无限次下载，不会重复扣除积分。', 1, '2023-05-14 12:33:45');

-- ----------------------------
-- Table structure for t_report
-- ----------------------------
DROP TABLE IF EXISTS `t_report`;
CREATE TABLE `t_report`  (
  `report_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'report_id',
  `report_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '举报类型',
  `report_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '举报描述',
  `report_images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '举报图片',
  `report_status` tinyint(4) DEFAULT 0 COMMENT '状态,0、待处理，1、已处理',
  `report_target` tinyint(4) NOT NULL DEFAULT 1 COMMENT '举报对象,1、资源博客,2、评论',
  `report_target_id` int(11) NOT NULL COMMENT '举报对象id,report_target=1时为articleId,report_target=2时为commentId',
  `report_user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '举报人id',
  `report_time` datetime(0) DEFAULT NULL COMMENT '举报时间',
  `report_handle_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '举报处理描述',
  `report_handle_admin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '处理人id',
  `report_handle_result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '举报处理结果',
  `report_handle_time` datetime(0) DEFAULT NULL COMMENT '举报处理时间',
  PRIMARY KEY (`report_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户举报表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '角色名',
  `role_desc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '角色描述',
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE INDEX `t_role__index_name_unique`(`role_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, 'super_admin', '超级管理员');
INSERT INTO `t_role` VALUES (2, 'admin', '管理员');
INSERT INTO `t_role` VALUES (3, 'user', '用户');
INSERT INTO `t_role` VALUES (4, 'sys_view', '观察者');
INSERT INTO `t_role` VALUES (5, 'role_examine', '博客审核员');

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `menu_id` int(11) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 170 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES (151, 5, 32);
INSERT INTO `t_role_menu` VALUES (152, 5, 33);
INSERT INTO `t_role_menu` VALUES (153, 5, 36);
INSERT INTO `t_role_menu` VALUES (161, 2, 13);
INSERT INTO `t_role_menu` VALUES (162, 2, 35);
INSERT INTO `t_role_menu` VALUES (163, 2, 26);
INSERT INTO `t_role_menu` VALUES (164, 2, 29);
INSERT INTO `t_role_menu` VALUES (165, 2, 39);
INSERT INTO `t_role_menu` VALUES (166, 2, 41);
INSERT INTO `t_role_menu` VALUES (167, 2, 42);
INSERT INTO `t_role_menu` VALUES (168, 2, 43);
INSERT INTO `t_role_menu` VALUES (169, 2, 34);

-- ----------------------------
-- Table structure for t_scheduled
-- ----------------------------
DROP TABLE IF EXISTS `t_scheduled`;
CREATE TABLE `t_scheduled`  (
  `task_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `task_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务key值（使用bean名称）',
  `task_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '任务名称',
  `task_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '任务描述',
  `task_cron` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务表达式',
  `task_status` tinyint(1) DEFAULT 0 COMMENT '状态(0.禁用; 1.启用)',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`task_id`) USING BTREE,
  UNIQUE INDEX `uniqu_task_key`(`task_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_scheduled
-- ----------------------------
INSERT INTO `t_scheduled` VALUES (1, 'taskTest', '测试任务', '11111', '*/5 * * * * ?', 0, '2022-11-16 17:42:32', '2023-11-04 17:56:32');
INSERT INTO `t_scheduled` VALUES (2, 'hotSearchArticleTask', '文章热搜Task', '同步热搜文章', '0 0 0 * * ?', 1, '2022-12-04 20:00:17', NULL);
INSERT INTO `t_scheduled` VALUES (3, 'pointOrderStatusTask', '订单任务状态回溯Task', '订单任务状态回溯Task', '0 */5 * * * ?', 1, '2023-10-04 21:40:17', NULL);
INSERT INTO `t_scheduled` VALUES (4, 'userAuthScheduledTask', '用户权限状态定时任务', '用户权限状态定时任务', '*/30 * * * * ?', 1, '2023-11-03 17:59:09', NULL);
INSERT INTO `t_scheduled` VALUES (5, 'clearInvalidDataTask', '清理过期定时任务日志', '清理过期定时任务日志', '0 0 */12 * * ?', 1, '2023-11-04 17:53:18', NULL);

-- ----------------------------
-- Table structure for t_scheduled_log
-- ----------------------------
DROP TABLE IF EXISTS `t_scheduled_log`;
CREATE TABLE `t_scheduled_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `task_id` int(11) NOT NULL COMMENT '任务id',
  `execute_time` datetime(0) DEFAULT NULL COMMENT '执行时间',
  `execute_status` tinyint(1) DEFAULT 0 COMMENT '执行状态,1成功,0失败',
  `execute_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务日志记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_system_info
-- ----------------------------
DROP TABLE IF EXISTS `t_system_info`;
CREATE TABLE `t_system_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sys_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '站点标题',
  `sys_graph` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '站点说明',
  `sys_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '站点说明',
  `sys_weixin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '站点微信',
  `sys_wenxin_public` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '微信公众号',
  `sys_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '站点联系邮箱',
  `sys_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '站点logo',
  `sys_logo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '站点logo说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '站点系统表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_system_info
-- ----------------------------
INSERT INTO `t_system_info` VALUES (1, '小白博客', '博客初心，永不止步', '### 系统背景\n小白博客系统是博主与2022年12月份疫情居家期间在工作之余完成的一套技术交流平台、采用前后端分离的架构方式，主要涉及技术点包括SpringBoot、SpringSecurity、MyBatis-Plus、Redis、Jwt、邮件发送、Vue、Vue-admin、Element-UI、docker等等技术，采用腾讯云服务器容器化部署。\n\n### 关于系统\n#### 系统地址\n- 前台系统: [https://www.cxs.plus](https://www.cxs.plus)\n- 管理系统: [https://www.cxs.plus/admin](https://www.cxs.plus/admin)\n#### 体验账号\n- 以下账号为系统观察者，拥有超级权限，在前后台均可使用(仅限查看操作)\n- admin-view/1234567890!\n- 普通用户可在前台页面直接注册！\n\n### 已实现功能\n#### 前台系统\n1. 用户登录：系统为非强认证、游客可访问部分功能。\n2. 新用户注册：注册时单个邮箱账号只能绑定三个用户，用户名全系统唯一。\n3. 用户发布、查看并下载心仪文章及资源，对文章点赞、收藏、对文章发布者打赏等功能。\n4. 用户中心的实现，可修改查看个人资料、修改登录密码、查询登录日志、个性化设置(设置积分是否可见、个人是否被打赏)、管理用户发布的资源、用户收藏的资源、用户评论、举报、反馈、个人订单等功能实现。\n5. 首页搜索实现了全站热搜榜单功能。\n6. 用户签到送积分功能，用户每日进行签到，系统赠送相应积分。\n7. 用户充值积分功能，此功能暂使用支付宝沙箱机制，未正式启用。\n8. 用户反馈功能，用户可对系统的建议、BUG进行反馈。\n9. 用户举报功能的实现，用户可对文章、评论进行举报。\n\n### 待实现功能\n#### 前台系统\n1. 用户发布文章时定时保存草稿的实现，防止未编辑完的文章丢失。\n2. 博主个人中心功能的实现，可查看该博主的文章发布情况、被点赞数......\n3. 用户登录验证码的改造、应对多实例情况。\n\n#### 管理系统\n1. 系统定时任务日志的记录与查询。\n2. 用户个人信息展示功能的实现。\n3. 统计面板功能的完善。\n\n### 联系我们\n- 邮箱：full_stack_white@163.com\n- Java全栈技术交流群: 941095490', '/upload/20240226/67489e02c9b44da6aa33735ee9beb4d520240226150946.png', '/upload/20240226/67489e02c9b44da6aa33735ee9beb4d520240226150953.jpg', 'full_stack_white@163.com', '/upload/20240226/67489e02c9b44da6aa33735ee9beb4d520240226150935.png', '只要还有明天，今天永远只是起跑线！');

-- ----------------------------
-- Table structure for t_system_message
-- ----------------------------
DROP TABLE IF EXISTS `t_system_message`;
CREATE TABLE `t_system_message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '消息id、主键id',
  `receive_user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '通知用户id、为空则为全部通知',
  `message_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '通知内容',
  `create_time` datetime(0) DEFAULT NULL COMMENT '通知创建时间',
  `is_read` tinyint(1) NOT NULL DEFAULT 0 COMMENT '已读标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统通知表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签id',
  `tag_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标签名',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`tag_id`) USING BTREE,
  UNIQUE INDEX `t_tag__index_name_unique`(`tag_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '标签表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES (1, 'Java', '2022-11-25 20:38:42');
INSERT INTO `t_tag` VALUES (2, 'HTML', '2022-11-25 20:38:51');
INSERT INTO `t_tag` VALUES (3, 'SpringBoot', '2022-11-25 20:39:02');
INSERT INTO `t_tag` VALUES (9, 'SpringCloud', '2022-11-25 20:55:47');
INSERT INTO `t_tag` VALUES (12, 'Vue', '2022-11-25 20:57:06');
INSERT INTO `t_tag` VALUES (13, 'React', '2022-11-25 21:14:03');
INSERT INTO `t_tag` VALUES (14, 'MySQL', NULL);
INSERT INTO `t_tag` VALUES (15, 'Oracle', NULL);
INSERT INTO `t_tag` VALUES (16, 'Spring', NULL);
INSERT INTO `t_tag` VALUES (17, 'SpringMVC', NULL);
INSERT INTO `t_tag` VALUES (18, 'MyBatis', NULL);
INSERT INTO `t_tag` VALUES (19, 'Python', NULL);
INSERT INTO `t_tag` VALUES (20, 'shell编程', NULL);
INSERT INTO `t_tag` VALUES (21, 'C语言', NULL);
INSERT INTO `t_tag` VALUES (22, 'Linux', NULL);
INSERT INTO `t_tag` VALUES (23, 'Android', NULL);
INSERT INTO `t_tag` VALUES (24, 'IOS', NULL);
INSERT INTO `t_tag` VALUES (25, '微信小程序', NULL);
INSERT INTO `t_tag` VALUES (26, 'uniapp', NULL);
INSERT INTO `t_tag` VALUES (27, '数据结构', NULL);
INSERT INTO `t_tag` VALUES (28, 'Unity3D', NULL);
INSERT INTO `t_tag` VALUES (29, 'Angular', NULL);
INSERT INTO `t_tag` VALUES (30, 'jQuery', NULL);
INSERT INTO `t_tag` VALUES (31, 'CSS', NULL);
INSERT INTO `t_tag` VALUES (32, 'JSP', '2022-12-08 14:05:52');
INSERT INTO `t_tag` VALUES (33, 'Servlet', '2022-12-08 14:06:32');
INSERT INTO `t_tag` VALUES (35, 'Redis', '2023-01-18 10:20:45');
INSERT INTO `t_tag` VALUES (36, 'Zookeeper', '2023-01-18 10:20:54');
INSERT INTO `t_tag` VALUES (39, 'Docker', '2023-02-14 16:02:00');
INSERT INTO `t_tag` VALUES (40, 'k8s', '2023-02-14 16:02:07');
INSERT INTO `t_tag` VALUES (41, '项目源码', '2023-04-27 20:26:47');
INSERT INTO `t_tag` VALUES (42, 'Go', '2023-05-23 21:38:42');
INSERT INTO `t_tag` VALUES (43, 'PHP', '2023-05-23 21:38:50');
INSERT INTO `t_tag` VALUES (46, 'ELK', '2023-05-29 10:39:32');
INSERT INTO `t_tag` VALUES (49, 'eclipse', '2023-05-29 10:40:06');
INSERT INTO `t_tag` VALUES (50, 'idea', '2023-05-29 10:40:10');
INSERT INTO `t_tag` VALUES (51, 'Thymeleaf', '2023-10-30 17:58:28');
INSERT INTO `t_tag` VALUES (52, 'docker-compose', '2023-11-04 22:51:28');
INSERT INTO `t_tag` VALUES (53, '容器化', '2023-11-04 22:51:47');
INSERT INTO `t_tag` VALUES (54, 'C++语言', '2024-02-26 14:48:36');

-- ----------------------------
-- Table structure for t_technology_type
-- ----------------------------
DROP TABLE IF EXISTS `t_technology_type`;
CREATE TABLE `t_technology_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `type_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类名',
  `type_parent_id` int(11) NOT NULL DEFAULT -1 COMMENT '父id, -1表示一级',
  `type_route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '分类链接',
  `type_icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '图标',
  `type_del` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0、未删除，1、已删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `t_technology_type__index_name_unique`(`type_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '技术分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_technology_type
-- ----------------------------
INSERT INTO `t_technology_type` VALUES (1, 'java基础系列', -1, NULL, 'el-icon-coffee-cup', 0);
INSERT INTO `t_technology_type` VALUES (2, 'java SE', 1, '', '', 0);
INSERT INTO `t_technology_type` VALUES (3, 'java EE', 1, NULL, NULL, 0);
INSERT INTO `t_technology_type` VALUES (4, 'java分布式', 35, NULL, NULL, 0);
INSERT INTO `t_technology_type` VALUES (5, 'web大前端', -1, NULL, 'el-icon-coffee-cup', 0);
INSERT INTO `t_technology_type` VALUES (6, 'html技术', 5, NULL, NULL, 0);
INSERT INTO `t_technology_type` VALUES (7, 'css技术', 5, NULL, NULL, 0);
INSERT INTO `t_technology_type` VALUES (8, 'jquery技术', 5, NULL, NULL, 0);
INSERT INTO `t_technology_type` VALUES (13, '多线程技术', 1, NULL, NULL, 0);
INSERT INTO `t_technology_type` VALUES (16, 'JavaWeb', 1, NULL, NULL, 0);
INSERT INTO `t_technology_type` VALUES (17, '计算机技术', -1, '', 'el-icon-s-platform', 0);
INSERT INTO `t_technology_type` VALUES (18, '数据结构与算法', 17, '', '', 0);
INSERT INTO `t_technology_type` VALUES (19, '操作系统', 17, '', '', 0);
INSERT INTO `t_technology_type` VALUES (20, '数据库', 17, '', '', 0);
INSERT INTO `t_technology_type` VALUES (21, '计算机网络', 17, '', '', 0);
INSERT INTO `t_technology_type` VALUES (22, '其他技术', -1, '', 'el-icon-more', 0);
INSERT INTO `t_technology_type` VALUES (23, '消息服务', 22, '', '', 0);
INSERT INTO `t_technology_type` VALUES (24, '分布式微服务', 35, '', '', 0);
INSERT INTO `t_technology_type` VALUES (25, '搜索引擎', 22, '', '', 0);
INSERT INTO `t_technology_type` VALUES (26, '权限框架', 35, '', '', 0);
INSERT INTO `t_technology_type` VALUES (27, 'LeetCode', -1, 'https://leetcode.cn/', 'el-icon-edit-outline', 1);
INSERT INTO `t_technology_type` VALUES (29, 'Vue框架', 5, '', '', 0);
INSERT INTO `t_technology_type` VALUES (30, 'React框架', 5, '', '', 0);
INSERT INTO `t_technology_type` VALUES (31, 'Angular框架', 5, '', '', 0);
INSERT INTO `t_technology_type` VALUES (32, '容器化技术', 39, '', '', 0);
INSERT INTO `t_technology_type` VALUES (33, 'SpringBoot', 35, '', '', 0);
INSERT INTO `t_technology_type` VALUES (34, 'SpringCloud', 36, '', '', 0);
INSERT INTO `t_technology_type` VALUES (35, 'SpringBoot系列', -1, '', 'el-icon-coffee-cup', 0);
INSERT INTO `t_technology_type` VALUES (36, 'SpringCloud系列', -1, '', 'el-icon-coffee-cup', 0);
INSERT INTO `t_technology_type` VALUES (37, '密码学', 17, '', '', 0);
INSERT INTO `t_technology_type` VALUES (38, '分布式网关', 36, '', '', 0);
INSERT INTO `t_technology_type` VALUES (39, '云计算系列', -1, '', 'el-icon-s-platform', 0);
INSERT INTO `t_technology_type` VALUES (40, 'Linux技术', 39, '', '', 0);
INSERT INTO `t_technology_type` VALUES (41, 'Docker技术', 39, '', '', 0);
INSERT INTO `t_technology_type` VALUES (42, 'docker-compose容器编排', 39, '', '', 0);
INSERT INTO `t_technology_type` VALUES (43, 'K8s容器编排', 39, '', '', 0);
INSERT INTO `t_technology_type` VALUES (44, 'CICD自动化技术', 22, '', '', 0);
INSERT INTO `t_technology_type` VALUES (45, 'SpringCloud Netflix', 36, '', '', 0);
INSERT INTO `t_technology_type` VALUES (46, 'SpringCloud Alibaba', 36, '', '', 0);
INSERT INTO `t_technology_type` VALUES (47, '网络编程系列', -1, '', 'el-icon-s-platform', 0);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '头像地址',
  `nick_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '真实姓名',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '手机号',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邮箱地址',
  `create_time` datetime(0) NOT NULL COMMENT '用户注册时间',
  `update_time` datetime(0) DEFAULT NULL COMMENT '用户修改时间',
  `autograph` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户签名',
  `user_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '用户状态,1、正常 2、锁定',
  `point` int(11) DEFAULT 0 COMMENT '用户积分',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别,1、男 2、女',
  `user_type` tinyint(1) DEFAULT 1 COMMENT '用户类型,1、新用户 2、老用户',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `t_user__index_username_unique`(`user_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('3b9a9185f2054ce8b40efddb8249ae0b', 'examine', '$2a$10$8f6wZyQJ5bpx77yF9thkPeFKiJUxYxwj5nmsHCpzZnjDdz9X9NLI.', NULL, NULL, NULL, NULL, '2023-11-04 18:31:14', NULL, NULL, 1, 0, NULL, 1);
INSERT INTO `t_user` VALUES ('67489e02c9b44da6aa33735ee9beb4d5', 'admin', '$2a$10$.ri8.lj6hubQ04raQs69ouL/rTovDK4oHkzks9PQwdiRJVIVdPzxW', '/upload/20240226/67489e02c9b44da6aa33735ee9beb4d520240226150854.jpg', '全栈小白', '15012221222', 'full_stack_white@163.com', '2022-07-21 19:10:38', '2024-02-26 15:08:57', '加油，未来可期！', 1, 1473, 1, 2);
INSERT INTO `t_user` VALUES ('67489e02c9b44da6aa33735ee9beb4d7', 'user', '$2a$10$Z.A0C7vE5m956cL4xf8akuYNXRqhhotw0WT2M5ol9L.892h7f44OK', '/upload/20240226/67489e02c9b44da6aa33735ee9beb4d720240226144347.png', 'Java程序员', '14793254595', '14793254595@163.com', '2022-11-18 09:28:20', '2024-02-26 14:43:53', 'IT码农工人!', 1, 521, 1, 2);

-- ----------------------------
-- Table structure for t_user_auth
-- ----------------------------
DROP TABLE IF EXISTS `t_user_auth`;
CREATE TABLE `t_user_auth`  (
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `upload_auth` tinyint(1) DEFAULT 1 COMMENT '文件上传权限',
  `comment_auth` tinyint(1) DEFAULT 1 COMMENT '发言权限',
  `reward_auth` tinyint(1) DEFAULT 1 COMMENT '打赏功能权限',
  `push_article_auth` tinyint(1) DEFAULT 1 COMMENT '文章发布权限',
  `apply_external_auth` tinyint(1) DEFAULT 1 COMMENT '申请友链权限',
  `feedback_auth` tinyint(1) DEFAULT 1 COMMENT '用户反馈权限',
  `report_auth` tinyint(1) DEFAULT 1 COMMENT '用户举报权限',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_auth
-- ----------------------------
INSERT INTO `t_user_auth` VALUES ('2692ebab93474c23b397e2024aa0be18', 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `t_user_auth` VALUES ('2cdd3fbb40d347638130026e511ebd5d', 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `t_user_auth` VALUES ('384297486ac14b5dbca708e0491c0dd3', 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `t_user_auth` VALUES ('39cd382a7f094c47800a135cd59c4423', 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `t_user_auth` VALUES ('3b9a9185f2054ce8b40efddb8249ae0b', 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `t_user_auth` VALUES ('4298421471ec42649f32de7132d69c71', 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `t_user_auth` VALUES ('5ed17b0bf3ed4491a8f1ee1bfa26591f', 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `t_user_auth` VALUES ('67489e02c9b44da6aa33735ee9beb4d5', 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `t_user_auth` VALUES ('67489e02c9b44da6aa33735ee9beb4d7', 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `t_user_auth` VALUES ('68218b3007484b4c9d3cb8fd38c57d56', 1, 1, 1, 1, 1, 0, 1);
INSERT INTO `t_user_auth` VALUES ('777ec370bd4a4213bdf4ed891574dc1a', 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `t_user_auth` VALUES ('cb65dfac4711478c9842861be638c625', 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `t_user_auth` VALUES ('f3c9734108274f2ebfd0b244abef549e', 1, 1, 1, 1, 1, 1, 1);

-- ----------------------------
-- Table structure for t_user_auth_scheduled
-- ----------------------------
DROP TABLE IF EXISTS `t_user_auth_scheduled`;
CREATE TABLE `t_user_auth_scheduled`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `upload_auth` tinyint(1) DEFAULT NULL COMMENT '文件上传权限',
  `comment_auth` tinyint(1) DEFAULT NULL COMMENT '发言权限',
  `reward_auth` tinyint(1) DEFAULT NULL COMMENT '打赏功能权限',
  `push_article_auth` tinyint(1) DEFAULT NULL COMMENT '文章发布权限',
  `apply_external_auth` tinyint(1) DEFAULT NULL COMMENT '申请友链权限',
  `feedback_auth` tinyint(1) DEFAULT NULL COMMENT '用户反馈权限',
  `report_auth` tinyint(1) DEFAULT NULL COMMENT '用户举报权限',
  `start_time` datetime(0) DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime(0) DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户权限禁止定时表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_user_login_log
-- ----------------------------
DROP TABLE IF EXISTS `t_user_login_log`;
CREATE TABLE `t_user_login_log`  (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `login_mode` tinyint(1) NOT NULL DEFAULT 1 COMMENT '登录模式',
  `login_time` datetime(0) NOT NULL COMMENT '用户登录时间',
  `login_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '登录ip',
  `login_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '登录地址',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户登录流水表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_user_login_log
-- ----------------------------
INSERT INTO `t_user_login_log` VALUES (1, '67489e02c9b44da6aa33735ee9beb4d5', 1, '2024-02-26 15:03:31', '127.0.0.1', NULL);
INSERT INTO `t_user_login_log` VALUES (2, '67489e02c9b44da6aa33735ee9beb4d5', 2, '2024-02-26 15:04:29', '127.0.0.1', NULL);

-- ----------------------------
-- Table structure for t_user_reward
-- ----------------------------
DROP TABLE IF EXISTS `t_user_reward`;
CREATE TABLE `t_user_reward`  (
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `weixin_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '微信收款码',
  `weixin_border_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '#409eff' COMMENT '微信边框颜色',
  `zhifubao_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '支付宝收款码',
  `zhifubao_border_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '#409eff' COMMENT '支付宝边框颜色',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户打赏配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES (22, '67489e02c9b44da6aa33735ee9beb4d7', 3);
INSERT INTO `t_user_role` VALUES (26, '67489e02c9b44da6aa33735ee9beb4d6', 2);
INSERT INTO `t_user_role` VALUES (27, '67489e02c9b44da6aa33735ee9beb4d6', 3);
INSERT INTO `t_user_role` VALUES (33, '5ed17b0bf3ed4491a8f1ee1bfa26591f', 4);
INSERT INTO `t_user_role` VALUES (34, '5ed17b0bf3ed4491a8f1ee1bfa26591f', 1);
INSERT INTO `t_user_role` VALUES (35, '68218b3007484b4c9d3cb8fd38c57d56', 3);
INSERT INTO `t_user_role` VALUES (36, '4298421471ec42649f32de7132d69c71', 3);
INSERT INTO `t_user_role` VALUES (37, 'f3c9734108274f2ebfd0b244abef549e', 3);
INSERT INTO `t_user_role` VALUES (44, '2cdd3fbb40d347638130026e511ebd5d', 1);
INSERT INTO `t_user_role` VALUES (45, '2cdd3fbb40d347638130026e511ebd5d', 3);
INSERT INTO `t_user_role` VALUES (46, '2cdd3fbb40d347638130026e511ebd5d', 4);
INSERT INTO `t_user_role` VALUES (54, '67489e02c9b44da6aa33735ee9beb4d5', 1);
INSERT INTO `t_user_role` VALUES (55, '39cd382a7f094c47800a135cd59c4423', 1);
INSERT INTO `t_user_role` VALUES (56, '39cd382a7f094c47800a135cd59c4423', 3);
INSERT INTO `t_user_role` VALUES (57, 'cb65dfac4711478c9842861be638c625', 3);
INSERT INTO `t_user_role` VALUES (58, '384297486ac14b5dbca708e0491c0dd3', 3);
INSERT INTO `t_user_role` VALUES (59, '777ec370bd4a4213bdf4ed891574dc1a', 3);
INSERT INTO `t_user_role` VALUES (61, '2692ebab93474c23b397e2024aa0be18', 2);
INSERT INTO `t_user_role` VALUES (62, '2692ebab93474c23b397e2024aa0be18', 5);
INSERT INTO `t_user_role` VALUES (63, '3b9a9185f2054ce8b40efddb8249ae0b', 2);
INSERT INTO `t_user_role` VALUES (64, '3b9a9185f2054ce8b40efddb8249ae0b', 5);

-- ----------------------------
-- Table structure for t_user_setting
-- ----------------------------
DROP TABLE IF EXISTS `t_user_setting`;
CREATE TABLE `t_user_setting`  (
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `open_reward` tinyint(1) DEFAULT 0 COMMENT '打赏功能,0、未开启 1、已开启',
  `show_point` tinyint(1) DEFAULT 1 COMMENT '显示积分余额,0、不显示 1、显示',
  `receive_email_notice` tinyint(1) DEFAULT 1 COMMENT '是否接受邮件通知',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_setting
-- ----------------------------
INSERT INTO `t_user_setting` VALUES ('2692ebab93474c23b397e2024aa0be18', 0, 1, 1);
INSERT INTO `t_user_setting` VALUES ('2cdd3fbb40d347638130026e511ebd5d', 0, 1, 1);
INSERT INTO `t_user_setting` VALUES ('384297486ac14b5dbca708e0491c0dd3', 0, 1, 1);
INSERT INTO `t_user_setting` VALUES ('39cd382a7f094c47800a135cd59c4423', 0, 1, 0);
INSERT INTO `t_user_setting` VALUES ('3b9a9185f2054ce8b40efddb8249ae0b', 0, 1, 1);
INSERT INTO `t_user_setting` VALUES ('4298421471ec42649f32de7132d69c71', 0, 1, 1);
INSERT INTO `t_user_setting` VALUES ('5ed17b0bf3ed4491a8f1ee1bfa26591f', 0, 1, 1);
INSERT INTO `t_user_setting` VALUES ('67489e02c9b44da6aa33735ee9beb4d5', 1, 1, 1);
INSERT INTO `t_user_setting` VALUES ('67489e02c9b44da6aa33735ee9beb4d7', 0, 0, 1);
INSERT INTO `t_user_setting` VALUES ('68218b3007484b4c9d3cb8fd38c57d56', 0, 1, 1);
INSERT INTO `t_user_setting` VALUES ('777ec370bd4a4213bdf4ed891574dc1a', 0, 1, 1);
INSERT INTO `t_user_setting` VALUES ('cb65dfac4711478c9842861be638c625', 0, 1, 1);
INSERT INTO `t_user_setting` VALUES ('f3c9734108274f2ebfd0b244abef549e', 0, 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
