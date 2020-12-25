/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : cy

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 25/12/2020 18:24:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cy_article
-- ----------------------------
DROP TABLE IF EXISTS `cy_article`;
CREATE TABLE `cy_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '副标题',
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '封面',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `created_time` datetime(0) NOT NULL COMMENT '创建时间',
  `hit` int(11) NOT NULL DEFAULT 0 COMMENT '点击数',
  `user_id` int(11) DEFAULT NULL COMMENT '创建人id',
  `updated_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `create_time` int(11) NOT NULL COMMENT '创建时间(时间戳)',
  `view` int(11) NOT NULL DEFAULT 0 COMMENT '查看次数',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标签',
  `time_slot` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '就职时间段',
  `industry_id` int(11) DEFAULT NULL COMMENT '行业',
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '文章' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cy_article
-- ----------------------------
INSERT INTO `cy_article` VALUES (1, '海量数据奔涌，存储巨头希捷如何解题？', '', '/storage/article/20201112\\ea7c13c19d031bdea405ffd3286dfe77.jpeg', '<p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">谁能想到，硬朗、稳重了四十年的希捷也开始卖萌玩梗，紧跟潮流了。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">对于李雪琴的“世界有尽头”，希捷表示“数据没有尽头”。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">在没有尽头的数据里，希捷又出什么新动作？</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">近日，在“Let’s Rethink Data”希捷科技Datasphere峰会上，希捷发布了对象存储软件CORTX以及CORTX开源社区，以及Lyve Drive Rack，这一基于CORTX软件平台，开放灵活、可作为融合基础架构部署的参考架构。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">当硬汉变得柔情，希捷可能比你想象的更懂企业所苦所需。</p><h3 style=\"margin-top: 20px; margin-bottom: 15px; font-size: 20px; font-weight: bold; color: rgb(90, 90, 90); font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: center;\">应数据之景</h3><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">在了解希捷的最新产品之前，我们不妨回顾下如今的数据现状。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\"><strong>其一，数据在以一种不可阻挡的势头增长。</strong></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">IDC预测，未来两年企业数据将以每年42.2%的速度增长。到2025年，全球数据圈将增至175ZB（1ZB约为1万亿GB），而中国预计将以48.6ZB的数据量成为全球最大数据圈。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\"><strong>其二，大部分数据并未得被企业消化吸收。</strong><br></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">IDC统计，在可用的企业数据中，仅32%被投入使用，剩余的68%并未得到利用。与此同时，在创建的175ZB中，仅有17ZB得以被存储，剩余90%的数据未得到存储。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">人人都知数据是不可或缺的生产要素，但如何用这要素做出一桌好菜，百业心心念念，却未有完美正解。有效地获取、存储、分析以及变现数据，一直被上下求索。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">微观来看，眼下最要紧的不外乎两点：</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">一则，面对物联网、人工智能、5G带来的海量数据，企业对超大规模数据存储与治理的需求与日俱增；</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">二则，这些数据中，20%为结构化数据，80%为非结构化数据。视频、音频、图片等非结构数据的占比大幅提升，成为数据治理之踵。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">数据成本和价值成为风暴的核心，数据管理、数据运营成为破题的关键。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">IDC调研显示，只有10%的企业全面实施了数据运营，但事实证明，数据运营结合其它数据管理解决方案，能够显著改善业务效果，包括提高客户忠诚度、收入、利润、节约成本以及其它许多裨益。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">数据的存储和运营可以往何处行进？存储巨头希捷给出了答案。</p><h3 style=\"margin-top: 20px; margin-bottom: 15px; font-size: 20px; font-weight: bold; color: rgb(90, 90, 90); font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: center;\">解数据之怠</h3><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">BAT、谷歌、Facebook等互联网巨头是海量数据的最早发源地之一，也是最早对海量数据存储产生需求、从中获得商业回报之流。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">高居行业头部，这类公司财力、人力和技术实力俱佳。本身就是软件公司，拥有独立的数据算法与架构优化工程师团队，可以通过系统软件调优，快速地采用大容量硬盘，享受到数据中心TCO降低的益处。但对大多数中小企业和传统企业来讲，他们既没有足够的资金，也没有精力和技术。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">CORTX正是基于这样的背景，应运而生。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">CORTX有哪些本领？</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\"><strong>存储量是最基本的需求，CORTX尤为擅长大规模数据存储。</strong></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">CORTX是对象存储平台，这种存储方式主要是解决海量图片、文档、音视频等非结构数据的存储。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">但这并不意味着CORTX受限于硬盘，混用不同容量点硬盘同时，CORTX的性能和兼容性并不为所累。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">换言之，CORTX软件不仅可以使用不同代数、不同结构、甚至不同容量点实现利旧的最大化，还能针对用户的硬件进行定制化配置。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">要知道，对于小容量硬盘的随机读写等性能需求，在对象存储使用环境中并不利于解决I/O模式，但百万行代码的CORTX，脱胎于全新的设计理念，可方便地集成其他第三方组件。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\"><strong>成本是最关心的诉求，CORTX增大容量、增长寿命，降低总成本。</strong></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">公有云超大规模存储基础架构依靠大容量设备的成本效率来降低存储成本，降低成本的途径之一，就是通过新技术增加硬盘容量。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">希捷使用热辅助磁记录HAMR技术——通过在磁记录过程中使用激光加热来降低介质的矫顽力，借助HAMR技术提高单碟存储密度，进而降低总体拥有成本。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">通过使用CORTX，结合高密度存储硬件，对比使用传统的Ceph，在11个9的可用性的前提下，通过CORTX每TB可以降低一半的造价。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">除此之外，HAMR能够增加可用区域的数据存储量（磁密度），让硬盘产品长久不衰。希捷官方资料显示，HAMR的年写入量已经达到3.2PB，达到普通企业级CMR&nbsp;硬盘写入量500TB/年的6倍以上。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\"><strong>企业对存储快速、简单、高效、安全的期待，CORTX一个不落。</strong></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">怎么做到更快？CORTX平台支持下，数据是可以直接写入磁盘的，从而跳过了繁琐而复杂的文件系统，直接访问和解锁每个驱动器。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">如何扩展？CORTX元数据是通过键值的形式来管理，可以非常方便地进行横向扩展。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">另外，针对人工智能和机器学习等数据主流应用领域，CORTX有针对性地进行调优，通过希捷内置的内存介质，用户可直接在CORTX上对数据进行标注，并实时、高效检索。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\"><strong>多副本+纠删码以及监控是CORTX保护数据的阀门。</strong></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">CORTX的多副本，简单易用，可靠性极高，而多层纠删码，可在更大规模数据存储的场景下实现数据的高可用性。在对象存储实际生产环境中，对于热数据会使用多副本策略来冗余，冷数据则使用纠删码。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">而且，希捷的自动化监控和监控管理也能加固数据安全。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">Lyve Drive Rack作为一个开放、灵活的融合存储基础架构，可为用户提供成熟的参考架构，用于部署CORTX并构建自己的大容量私有云。也可以根据用户做定制化的配置，针对企业实际应用中对随机读写性能以及小块文件IO优化上进行个性化调优。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">Lyve Drive Rack集成的芯片，对纠删码配置内存做了优化，节约了内存消耗带来的成本。目前Lyve Drive Rack的机箱容量由1.34PB起。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">如果说以上是CORTX客观上的解题实力，那么开源就是希捷主观上的解题战略。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\"><strong>前文所言，传统企业没有优化数据中心之能，希捷重磅推出的CORTX软件目的并非盈利，而是希望通过其软件、兼容、开源之利，让大容量硬盘不再只是巨头的囊中物，降低企业成本，让其不再囿于反复权衡数据成本和价值。</strong></p>', '2020-12-21 16:03:19', 71, NULL, '2020-12-24 17:10:06', 0, 0, NULL, '', NULL, NULL);
INSERT INTO `cy_article` VALUES (2, '阿里云难『触顶』', '', '/storage/article/20201112\\fac50662f5c24c248e6ca30f301d792a.jpg', '<p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">每年双十一是观察阿里云的最佳窗口。&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">今年更是如此，用阿里巴巴CTO程立（花名鲁肃）的话来说，今年双十一，阿里把全副身家性命都放在了云上。&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">作为阿里巴巴集团级的大项目，淘宝/天猫双十一在过去11年间为阿里带来了巨大的收入和名声，而促销活动背后的互联网超级流量峰值，直接催生了今天国内云计算的第一名。&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">一次次阿里的“大树修枝”，把阿里云凸显在最前方，换帅、升级云智能、达摩院技术加持、吸收钉钉、聚合阿里AI Labs······在最新一季财报中，阿里云已经稳定在集团营收第二的位置，营收占比提升至10%，无比高光。&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: center;\"></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: center;\"><span style=\"font-size: 14px;\">连续两年天猫双十一交易峰值，图源：雷锋网</span></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">数据显示，昨天的天猫双十一，阿里云又一次扛住了全球最大规模流量洪峰，仅在0点刚过26秒，天猫双十一的订单创建峰值就达到58.3万笔/秒（这一数字是2009年第一次天猫双11的1457倍），刷新纪录。&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">阿里云的故事，仍然是巨头阿里的最好技术脚本。在亏损收窄的境况之下，阿里云继续成为云计算头牌、阿里的王牌。&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">关键一问是：从双十一“出走”的少年，阿里技术体系里阿里云的“挑战”是什么？高速的增长背后，阿里云会触顶吗？如何抛开过去的故事“去明天”？</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: center;\"><span style=\"font-size: 20px; color: rgb(227, 108, 9);\"><strong>Hold住阿里“最大硬仗”&nbsp;</strong></span></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">2009年春天，阿里云的同学在帝都北京的汇众大厦里写下了云操作系统“飞天”的第一行代码；同年秋天，淘宝商城启动双十一促销。这两件在当年都是“不重要的小事”。一个只是商业手段的推陈出新，一个只是技术故事的起始。&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">11年后，这两样事物已经被深度捆绑。互联网的巨大流量裹挟着一切向前，两只巨兽诞生。用程立的话来说，双十一是高能粒子对撞时刻，撞出的是最大的创意火花。&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">无疑，巨大的网络流量洪峰，每年都定格在那个俗称“光棍节”的0点时分，而这件事成为阿里一年中最大的硬仗，是堪比攀登珠峰的冒险。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">这场硬仗，不为人知的幕后主力是超过60000名阿里巴巴的工程师。业务“倒逼”着技术突破，挑战一年胜过一年，阿里的技术也因此突飞猛进。&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">备战双十一，过程艰辛。今年，阿里技术团队的玩法与众不同。&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">就在第一轮双十一（今年设置两轮售卖期）接近尾声之时，阿里发布了双十一10大前沿技术，包括小蛮驴、实时直播翻译、虚拟主播、阿里语音机器人、OCR无障碍购物、工业视觉、运维机器人、全面云原生、认知智能引擎、液冷数据中心，渲染出了浓厚的技术气息。&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">对于狂欢节的流量安全防护，各大电商技术团队似乎也已轻车熟路。备战中，阿里技术团队研发出一个能一键对内部技术体系发起实时攻击的APP，通过对线上一次又一次真实的内部突袭，来验证在真实故障场景下，阿里的系统在容灾、容错等方面的表现以及阿里在突发场景下的应急协同。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">这个APP支持发起针对内部各个BU的精准突袭，也支持发起随机性的突袭。突袭背后，阿里已经在整个经济体内部推广日常的“红蓝对抗”。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">技术蓝军负责设计突袭弹药、在不经意时发起突袭，技术红军负责在极短时间内解决故障。通过团队无数次的演练，阿里的电商业务承诺可用性达99.995%，意味着一年中只有26分钟不可用——突袭演练的目标是可用性进一步提升，将一年不可用的时间降低为分钟级。&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">“自虐式”的突袭看似很疯狂，但其对系统的作用可比疫苗引起的免疫反应：故意将微故障注入系统以提前训练系统的响应，类似于在可控条件下将有害物质注入体内以防止未来疾病。这一机制能让阿里提前为包括宕机在内的各种故障做好准备，将其影响降至最低。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: center;\"><span style=\"font-size: 20px; color: rgb(227, 108, 9);\"><strong>双十一大协同背后的云+中台</strong></span><br></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">“数据中台”，被阿里副总裁、数据中台负责人朋新宇（花名小芃）形容为“确定性的创新增长引擎”。&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">在朋新宇的口中，阿里数据中台的目标角色是“<strong>每一个商家的参谋</strong>”（双十一期间）。今年要做的是坚持安全和开放两条腿走路，并要把生态搭起来。言外之意是，从电商数据中台要进化到商家全域数据中台（阿里域+非阿里域）。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: center;\"></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: center;\"><span style=\"font-size: 14px;\">阿里云基础设施+数据中台，图源：雷锋网</span></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">今年，中台能力上，阿里上新了“新计算框架：流批一体化”，对离线数据和实时数据做到一体化处理，计算上快了1倍，资源成本节省1半。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">雷锋网认为，从技术、组织架构的实现，到向行业传递概念，最先的实践者和最大的受益者都是阿里电商。这在双十一里也表现得尤为明显。</p>', '2020-12-21 16:03:19', 19, NULL, '2020-12-23 16:24:40', 0, 0, NULL, '', NULL, NULL);
INSERT INTO `cy_article` VALUES (3, '独家对话德赛西威黄力：软件无界，供应商和主机厂不是零和博弈', '', '/storage/article/20201112\\ff05b3c9e007cc2c2fbeacec7fdab451.jpg', '<p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">当智能汽车的大潮席卷而来，产业链上下游的玩家没有一个能够超然物外。抓住机遇，就有可能走向通往未来的跃升之路；反之，则可能被时代的后浪所淹没。&nbsp; &nbsp;&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">因此，企业转型、战略调整、这些即便是看起来就需要巨大决心和毅力的词汇也被频频提起。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\"><strong>三十四岁的德赛西威，正是「改革大军」其中一员。&nbsp; &nbsp; &nbsp;&nbsp;</strong></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">说起德赛西威，许多人可能不太熟悉，但说起小鹏、理想这两家造车新势力，相信大家都耳熟能详——德赛西威，正是站在这两家车企背后的自动驾驶域控制器供应商；同时，德赛西威也是英伟达在中国支持的第一家本土自动驾驶 Tier 1。&nbsp; &nbsp;&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">近日，新智驾与德赛西威研究院院长黄力进行了一场深度对话。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">德赛西威得到两家头部造车新势力在自动驾驶方面的垂青是出于什么原因？德赛西威在公司架构重组后与主机厂之间的合作关系发生了何种变化？德赛西威对于汽车行业的未来发展有怎样的思考和规划？</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">这些在外界看来笼罩着迷雾的问题，现在都拨云见日。&nbsp; &nbsp; &nbsp;</p><h3 style=\"margin-top: 20px; margin-bottom: 15px; font-size: 20px; font-weight: bold; color: rgb(90, 90, 90); font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">头部造车新势力已拿下两家</h3><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">从德赛西威发展的时间线来看，其对智能驾驶的布局最早可回溯到 2011 年。只不过，当时德赛西威的重心更多的是放在与算法相关的工作上。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">随着早期的算法技术进一步积累，加之自动驾驶赛道被外界赋予了极高的关注度，德赛西威也开始对此加大投入，并于 2016 年正式成立自动驾驶事业单位。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">截至目前，德赛西威已经交上了一份漂亮的成绩单。<strong>今年 4 月，德赛西威首款基于英伟达 Xavier L3 级自动驾驶域控制器产品 IPU03 于小鹏 P7 上配套量产。</strong></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: center;\"></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: center;\"><span style=\"font-size: 14px;\">德赛西威首款自动驾驶域控制器产品 IPU03</span></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\"><strong>德赛西威与另一家造车新势力理想的合作也在紧锣密鼓地进行中，预计于 2022 年在理想下一代车型上率先使用英伟达 Orin 系统级芯片，并为理想提供 L4 级别自动驾驶方案。</strong></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">“作为一个重资本企业，我们的制造能力偏强，能够把硬件（域控制器）做得更好，但这并不代表我们只能做硬件。<strong>而对于理想来说，与德赛西威、英伟达的合作可以为其提供强大的算力、算法，以及算料，也就是数据。</strong>”德赛西威研究院院长黄力对新智驾说道，从他进入德赛西威至今已有 16 年之久。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">德赛西威从 2011 年开始进行算法开发，现已有了相关的积累，并且打造了自己的算法团队，投资了一些软件公司；算料方面，德赛西威基于与众多主机厂的合作，将公用数据收集起来，打造自己的核心数据库，用于迭代算法。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">对此，黄力补充说：</p><blockquote style=\"margin: 20px; border-left-width: 5px; border-left-color: rgb(238, 238, 238); clear: both; color: rgb(90, 90, 90); font-family: &quot;microsoft yahei&quot;; font-size: 16px; background-color: rgb(247, 247, 247);\"><p style=\"margin-top: 0px; margin-bottom: 0px; color: rgb(49, 66, 78); line-height: 2; text-align: justify;\">算料的本质就是数据，所以它无关于传感器的类别以及所搭载的车型。因此，德赛西威其他产品所收集到的数据也能用于其自动驾驶算法的迭代。</p></blockquote><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">当然，德赛西威在算法和算料方面的沉淀也在其与主机厂的合作中发挥着重要作用。黄力表示，<strong>除了为理想提供自动驾驶域控制器，未来，德赛西威还会与理想在软件以及差异性算法等层面进行配合，以确保产品的整体稳定性。</strong></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\">在此之前，德赛西威已经为小鹏 P7 的数据收集处理、定位、避障/换道/跟车/超车决策、加速/制动/转向控制等提供了算法支持。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: justify;\"><strong>除了在算法和算料方面的优势，德赛西威还有哪些特质能够吸引主机厂，尤其是造车新势力？</strong></p>', '2020-12-21 16:03:19', 31, NULL, '2020-12-23 16:24:45', 0, 0, NULL, '', NULL, NULL);
INSERT INTO `cy_article` VALUES (4, '波士顿动力将被出售，天价网红因商业化被再次嫌弃', '', '/storage/article/20201112\\8a2b18bc5dbccbea4187d9d6d3c12916.jpeg', '<p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">交易的拟议条款将给予现代对于波士顿动力的控制权，这笔交易估值最高可达10亿美元（约合人民币66.20亿元），但目前条款并未最终敲定，交易仍存在破裂的可能性。交易一旦达成将使现代成为七年来波士顿动力公司的第三任东家。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">外媒表示，波士顿动力的运营模式更像研究机构，而不是企业，因为它生产出的技术先进，但是一些“无利可图”的产品。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">当初Google出售波士顿动力时，就曾表示：“这种规模的初创企业（指波士顿动力）决不能耗费高于 30% 的资源投入到一件需要10年才能成功的事情上，必须在几年内就开始取得收入来抵消开支。但波士顿动力对商业价值这件事也并不上心。”</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">雷锋网了解，现代汽车在邮件中表示，“正在不断探索各种投资与合作的机会。” 波士顿动力方面则回复，“我们的工作能持续激发合作伙伴的兴趣，让他们与公司建立更深入的商业合作关系。”</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">1992 年，曾取得麻省理工博士学位、创立卡内基·梅隆大学 CMU Leg 实验室的马克·雷波特（Marc Raibert）创办了波士顿动力公司。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">Atlas最初由美国国防部国防高等研究计划署（DARPA）的资助和监督，由波士顿动力开发，波士顿动力的许多机器人项目最初都是基于一定的军用背景，设计之初主要考虑军用目的，技术标准和成本都以军用目标为主。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">应美国军方要求，波士顿动力于2005年推出了一种形似狗的四足机器人“大狗”(BigDog)，这款机器人可以帮助美军士兵背负装备、进行物资运输等，尤其适用在一些地形崎岖的地方。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">2013年7月11日第一代Atlas首次向公众亮相。由航空级铝和钛建造，身高约1.8米，重达150公斤，利用蓝光LED照明，需要外接电源。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">2013年，谷歌母公司Alphabet收购波士顿动力，明确表示不希望其参与国防工作，随后终止了波士顿动力的军事合同。这场收购使谷歌公司的业务范围由此成功涉足真正的机器人产品。<br></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">2017年，波士顿动力被Google卖给了日本软银集团，转卖原因有人认为因为波士顿动力连年亏损，也有人认为短期内商业化前景有限。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">直至 2019 年 7 月，波士顿动力因为尚未开发出一款可销售的机器人而被诟病。随后的 9 月，Spot 机器狗终于走上商业化的道路。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">虽然新冠疫情影响了波士顿动力生产机器人的进度，但真正让波士顿动力打开思路的，也是新冠疫情。</p>', '2020-12-21 16:03:19', 4, NULL, '2020-12-23 16:17:40', 0, 0, NULL, '', NULL, NULL);
INSERT INTO `cy_article` VALUES (5, 'XPU时代创新者英特尔', '', '/storage/article/20201112\\2a76fea7f17b0089355a0d1f2e0e493c.png', '<p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">10年前，美国数据科学家舍恩伯格在《大数据时代》一书中对“大数据时代”作出系统阐释。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">10年后，互联网、人工智能、云计算的发展正飞速推动全球数据量的增长。国际数据公司IDC统计显示，预计到2025年，全球数据量将比2016年的16.1 ZB（1 ZB=十万亿字节）增加10倍，达到163 ZB。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">尽管越来越多的数据让现代人置身于信隐私泄露的恐慌之中，但不可否认的是，大数据正为硬件、软件乃至服务等市场带来前所未有的经济增长。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\"><strong>中国通信院发布的《大数据白皮书（2019）》显示，预计到2020年，全球大数据硬件、软件和服务的市场规模将分别达到150亿美元、200亿美元和210亿美元。这意味着基于大数据，将产生一个全球范围内价值560亿美元的市场。</strong></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">但在这之前需要解决一个关键问题，在单一芯片算力受限的情况下，如何更好地发挥海量数据的真正价值？</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">对于这一问题，英特尔早已给出了答案。2015年，英特尔就开始斥资167亿美元收购当时全球第二大FPGA厂商Altera，此后，又接连收购主攻深度学习方向的Nervana Systems、计算视觉公司Movidius、自动驾驶视觉处理公司Mobileye和云端AI推理芯片已经商用的Habana Labs。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">英特尔成为业界唯一一家拥有全类别AI芯片的公司之后，紧接着吸纳业界顶尖的芯片人才，并于2018年架构日提出制程、封装、架构、存储、互联、安全、软件的六大技术战略。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\"><strong>2018年的架构日在英特尔历史上具有划时代的意义，XPU异构愿景就诞生于此，即由标量（Scalar）、矢量（Vector）、矩阵（Matrix）、空间（Spatial）组成的SVMS架构，分别对应CPU、GPU、加速器和FPGA，可以进行多种异构组合。</strong></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">这是英特尔首次、也是业界首次明确将单一架构之后的发展方向定义为XPU。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247); text-align: center;\"></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">英特尔数据中心XPU产品和解决方案副总裁Jeff McVeigh表示：<strong>“XPU战略的提出，在于我们意识到需要不同类型的架构来服务于各种不同的工作负载，其中一些工作负载在本质上是标量的，另一些是向量、矩阵、空间等等。”</strong></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\"><span style=\"font-size: 24px;\"><strong>从Xe架构到独立显卡，实现XPU愿景的重要一步</strong></span></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\"><strong>英特尔在XPU战略上进展迅速，在其它芯片公司还处于大规模并购阶段时，就已经基于其丰富的技术经验推出了自有的首款面向数据中心的独显产品。</strong></p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">英特尔表示，这款GPU采用的是英特尔能效最高的图形架构，英特尔Xe LP微架构，拥有低功耗、独立片上系统（SoC）设计，并配备128比特管道和8GB专用板载低功耗DDR4显存。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">另外，如果将英特尔服务器GPU同英特尔至强可扩展处理器组合，服务提供商可以在不改变服务器数量的情况下，单独扩展显卡容量，得以在每个系统上支持更多流和订阅用户，并且同时实现较低的总体拥有成本（TCO）。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">通过在新华三3/4长、全高的x16 PCIe 3.0扩展卡内封装四个英特尔服务器GPU，即可在一个典型双卡系统中支持超过100个安卓云游戏并发用户。这一数量最高可扩展至160个并发用户，实际数量取决于具体的游戏和服务器配。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">之所以说英特尔XPU战略进展迅速，是因为其从2019年底发布Xe架构到推出基于Xe架构的集成GPU和独立GPU产品，以及用于数据中心独显产品，间隔时间不到一年，就兑现了产品交付计划。</p><p style=\"margin-top: 0px; margin-bottom: 1em; font-size: 16px; color: rgb(49, 66, 78); line-height: 2; font-family: &quot;microsoft yahei&quot;; background-color: rgb(247, 247, 247);\">事实上，Xe架构作为一个基础GPU架构，属性灵活且扩展性强，能够衍生出多种针对不同领域和场景的GPU产品。</p>', '2020-12-21 16:03:19', 2, NULL, '2020-12-23 14:56:55', 0, 0, NULL, '', NULL, NULL);
INSERT INTO `cy_article` VALUES (6, '当双十一不再狂欢', '', '/storage/article/20201112\\328e569764d0da7f9e544bcb6e937c1f.jpeg', '<p>显然，对天猫双十一而言，销售额记录突破已不是重点——比销售额更重要的，是各个品类的表现；比数据更重要的，是其背后的部署。<br><br>雷锋网注意到，截至 11 月 11 日中午 12 点，天猫官方数据显示，已有 358 个品牌在天猫双11累计成交额突破 1 亿元，其中，还包括了 16 个新品牌。此外，苹果、华为、美的、海尔等 13 个品牌成交额还突破 10 亿元迈入今年天猫双 11 “十亿元俱乐部”。<br><br>至于部署，以菜鸟物流为例。在双 11 开始之前，菜鸟物流已是有备而来，提前进入备战状态。<br><br>无论是国内 14 家快递物流公司联合备战，将部分预售商品提前配送至社区，还是国际物流商提前与 15 地海关建立了“秒级通关”通道，都取得了提速成效。<br><br>据菜鸟公布的天猫双 11 第一波配送情况，截止于 11 月 7 日上午 10 时，消费者在 11 月 1 日- 3日期间购买的天猫双 11 商品，普遍已经比去年提前一天收到货。<br><br>另外，截止于 11 月 1 日上午 6 时 33 分，已有 1000 万份订单顺利通关，较去年双 11 当天提前了 2 小时 14 分，提速 25%。<br><br>值得一提的是，在部分场景下，提前上岗的物流机器人“小蛮驴”也成为了提速增效的原因之一。<br><br>10 月 30 日，由小蛮驴领衔的 22 个物流机器人进入浙江大学紫金港校区，承担起高达 3 万多件的驿站包裹。据悉，用户可以在线预约送货，机器人从出发到送达不超过 10 分钟。<br><br>除了有备而来的物流，天猫在双 11 的发力重点，离不开全新推出的新制造，以及推出已有四年的淘宝直播。<br><br>新制造不难理解，作为紧接在“新零售”之后的阿里巴巴“五新战略”发展的下一引擎，双 11 无疑是今年 9 月推出的犀牛制造平台最好的历练场景。<br><br>而对于淘宝直播，从第一波销售期开始，直播便是双十一中不可忽视的存在。<br><br>根据第三方数据机构知瓜数据的直播日榜，10 月 21 日天猫双十一预售首日，薇娅以 53.2 亿元的销售额排在第一名，累计观看直播人次为 1.48 亿；李佳琦的销售额为 38.7 亿元位列第二，累计观看直播人次达 1.62 亿。<br><br>淘宝直播官方数据显示，直播商家覆盖数增长了 220%，商家自播 GMV 占比超六成。今年双十一期间，淘宝直播共有超 300 位明星、400 位总裁走进直播间。</p>', '2020-12-25 16:03:19', 0, NULL, NULL, 0, 0, NULL, '', NULL, NULL);
INSERT INTO `cy_article` VALUES (19, '测试123123', NULL, '', '枸杞难就', '2020-12-25 18:04:17', 0, NULL, '2020-12-25 18:04:17', 1608890657, 0, '12薪+,大小周休息,小哥哥多', '2020-12-03,2020-12-11', 1, 'cd');
INSERT INTO `cy_article` VALUES (20, '123123', NULL, '', '1231312313', '2020-12-25 18:15:18', 0, NULL, '2020-12-25 18:15:18', 1608891318, 0, '12薪+', '2020-12-11,2020-12-25', 1, 'cd');
INSERT INTO `cy_article` VALUES (21, '123123', NULL, '', '123131231', '2020-12-25 18:16:14', 0, NULL, '2020-12-25 18:16:14', 1608891374, 0, '大小周休息', '2020-12-18,2020-12-16', 1, 'cd');

-- ----------------------------
-- Table structure for cy_article_reply
-- ----------------------------
DROP TABLE IF EXISTS `cy_article_reply`;
CREATE TABLE `cy_article_reply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL COMMENT '文章id',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '回复内容',
  `created_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `updated_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间(时间戳)',
  `hit` int(11) NOT NULL DEFAULT 0 COMMENT '热度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '文章回复' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cy_article_reply
-- ----------------------------
INSERT INTO `cy_article_reply` VALUES (20, 1, '1231231312312312321', '2020-12-23 18:14:03', '2020-12-23 18:14:10', 1608718443, 7);
INSERT INTO `cy_article_reply` VALUES (19, 1, '请问企鹅', '2020-12-23 18:13:28', '2020-12-23 18:13:28', 1608718408, 0);
INSERT INTO `cy_article_reply` VALUES (18, 1, '12312313', '2020-12-23 18:11:30', '2020-12-23 18:11:30', 1608718290, 0);
INSERT INTO `cy_article_reply` VALUES (17, 1, '13123213', '2020-12-23 18:10:53', '2020-12-23 18:12:04', 1608718253, 2);
INSERT INTO `cy_article_reply` VALUES (16, 1, '12312', '2020-12-23 18:10:07', '2020-12-23 18:10:07', 1608718207, 0);
INSERT INTO `cy_article_reply` VALUES (15, 1, '1231', '2020-12-23 18:09:58', '2020-12-23 18:09:58', 1608718198, 0);
INSERT INTO `cy_article_reply` VALUES (14, 1, '说的针对', '2020-12-23 18:09:26', '2020-12-23 18:09:37', 1608718166, 1);

-- ----------------------------
-- Table structure for cy_cooperate
-- ----------------------------
DROP TABLE IF EXISTS `cy_cooperate`;
CREATE TABLE `cy_cooperate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '姓名',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '电话',
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1.合伙人 2.采购商 3.供应商',
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '备注',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:未对接 1：已对接',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '官网合作留言' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cy_cooperate
-- ----------------------------
INSERT INTO `cy_cooperate` VALUES (4, '何禹', '13812345678', 2, '123', 0, 1605240014, NULL);
INSERT INTO `cy_cooperate` VALUES (5, '何禹', '13812345671', 3, '123123', 0, 1605240244, NULL);
INSERT INTO `cy_cooperate` VALUES (6, '何禹', '13812345677', 3, '123123', 0, 1605250329, NULL);
INSERT INTO `cy_cooperate` VALUES (7, '何禹', '13812345676', 3, '123123', 0, 1605250350, NULL);
INSERT INTO `cy_cooperate` VALUES (8, '老王', '13812345679', 1, '123123', 0, 1605250392, NULL);
INSERT INTO `cy_cooperate` VALUES (9, '老何', '18781085152', 1, '测试20201113', 0, 1605251078, NULL);

-- ----------------------------
-- Table structure for cy_industry
-- ----------------------------
DROP TABLE IF EXISTS `cy_industry`;
CREATE TABLE `cy_industry`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '行业名称',
  `created_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `updated_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间(时间戳)',
  `sort` tinyint(4) NOT NULL DEFAULT 0 COMMENT '排序',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否删除(0:存在，1：删除)',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '父id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '行业' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cy_industry
-- ----------------------------
INSERT INTO `cy_industry` VALUES (1, '互联网IT', NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `cy_industry` VALUES (2, '制造业', NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `cy_industry` VALUES (3, '建筑', NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `cy_industry` VALUES (4, '金融', NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `cy_industry` VALUES (5, '房产', NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `cy_industry` VALUES (6, '教育', NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `cy_industry` VALUES (7, '餐饮', NULL, NULL, NULL, 0, 0, 0);

-- ----------------------------
-- Table structure for cy_label
-- ----------------------------
DROP TABLE IF EXISTS `cy_label`;
CREATE TABLE `cy_label`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标签名称',
  `created_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `updated_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间(时间戳)',
  `sort` tinyint(4) NOT NULL DEFAULT 0 COMMENT '排序',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否删除(0:存在，1：删除)',
  `number` int(11) NOT NULL DEFAULT 0 COMMENT '有此标签的文章',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '标签' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cy_label
-- ----------------------------
INSERT INTO `cy_label` VALUES (1, '氛围优秀', '2020-12-24 11:35:12', '2020-12-24 11:35:12', NULL, 0, 0, 0);
INSERT INTO `cy_label` VALUES (2, '小姐姐多', '2020-12-24 11:35:12', '2020-12-24 11:35:12', NULL, 0, 0, 0);
INSERT INTO `cy_label` VALUES (3, '小哥哥多', '2020-12-24 11:35:12', '2020-12-24 11:35:12', NULL, 0, 0, 0);
INSERT INTO `cy_label` VALUES (4, '下午茶', '2020-12-24 11:35:12', '2020-12-24 11:35:12', NULL, 0, 0, 0);
INSERT INTO `cy_label` VALUES (5, '双休', '2020-12-24 11:35:12', '2020-12-24 11:35:12', NULL, 0, 0, 0);
INSERT INTO `cy_label` VALUES (6, '大小周休息', '2020-12-24 11:35:12', '2020-12-24 11:35:12', NULL, 0, 0, 0);
INSERT INTO `cy_label` VALUES (7, '12薪+', '2020-12-24 11:35:12', '2020-12-24 11:35:12', NULL, 0, 0, 0);

-- ----------------------------
-- Table structure for cy_menu
-- ----------------------------
DROP TABLE IF EXISTS `cy_menu`;
CREATE TABLE `cy_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '跳转地址',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片',
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'a标签target',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图标',
  `number` tinyint(4) NOT NULL DEFAULT 0 COMMENT '排序',
  `parent` int(11) NOT NULL DEFAULT 0 COMMENT '上级id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cy_menu
-- ----------------------------
INSERT INTO `cy_menu` VALUES (8, '图标列表', '', NULL, '_self', 'fa fa-dot-circle-o', 0, 7);
INSERT INTO `cy_menu` VALUES (1, '常规管理', '', NULL, '_self', 'fa fa-address-book', 0, 0);
INSERT INTO `cy_menu` VALUES (2, '文章管理', '', NULL, '_self', 'fa fa-home', 0, 1);
INSERT INTO `cy_menu` VALUES (3, '文章列表', '/admin/article/index', NULL, '_self', 'fa fa-tachometer', 0, 2);
INSERT INTO `cy_menu` VALUES (4, '菜单管理', '', NULL, '_self', 'fa fa-window-maximize', 0, 1);
INSERT INTO `cy_menu` VALUES (5, '系统设置', '', NULL, '_self', 'fa fa-gears', 0, 1);
INSERT INTO `cy_menu` VALUES (6, '组件管理', '', NULL, '_self', 'fa fa-lemon-o', 0, 1);
INSERT INTO `cy_menu` VALUES (7, '组件管理', '', NULL, '_self', 'fa fa-lemon-o', 0, 0);
INSERT INTO `cy_menu` VALUES (9, '图标选择', '', NULL, '_self', 'fa fa-adn', 0, 7);
INSERT INTO `cy_menu` VALUES (10, '添加文章', '/admin/article/addArticle', NULL, '_self', 'fa fa-tachometer', 0, 2);

-- ----------------------------
-- Table structure for cy_notice
-- ----------------------------
DROP TABLE IF EXISTS `cy_notice`;
CREATE TABLE `cy_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '公告标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '公告内容',
  `admin_id` int(11) NOT NULL COMMENT '管理员id',
  `created_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `updated_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间(时间戳)',
  `sort` tinyint(4) NOT NULL DEFAULT 0 COMMENT '排序(越大越靠前)',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否删除(1:删除，0：存在)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '公告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cy_notice
-- ----------------------------
INSERT INTO `cy_notice` VALUES (1, '告用户书', '\r\n桃花坞里桃花庵，\r\n桃花庵里桃花仙，\r\n桃花仙人种桃树，\r\n又拿桃花换酒钱。', 0, NULL, NULL, NULL, 0, 0);

-- ----------------------------
-- Table structure for cy_user
-- ----------------------------
DROP TABLE IF EXISTS `cy_user`;
CREATE TABLE `cy_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `login_time` int(11) DEFAULT NULL COMMENT '登录时间',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0:冻结 1：正常',
  `group_id` int(11) NOT NULL COMMENT '组id',
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '昵称',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `heading` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '头像',
  `login_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '登录ip',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cy_user
-- ----------------------------
INSERT INTO `cy_user` VALUES (1, 'admin', '$2y$10$KjlgGKw8qbaODxygpO7c2eCkrG.g.TBXeI4TEwAtOlxBrM9iTOb0i', 1605152235, 1605152235, 1, 0, 'heyu', NULL, NULL, NULL, '127.0.0.1');

-- ----------------------------
-- Table structure for cy_user_log
-- ----------------------------
DROP TABLE IF EXISTS `cy_user_log`;
CREATE TABLE `cy_user_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '管理员id',
  `user_nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '管理员昵称',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '备注',
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '访问者浏览器',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `os` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '访客操作系统',
  `lang` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '访问者浏览器语言',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
