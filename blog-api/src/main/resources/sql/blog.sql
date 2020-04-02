/*
 Navicat Premium Data Transfer

 Source Server         : Vblog
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 02/04/2020 05:37:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for game_body
-- ----------------------------
DROP TABLE IF EXISTS `game_body`;
CREATE TABLE `game_body`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `content_html` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_body
-- ----------------------------
INSERT INTO `game_body` VALUES (20, 'Gloomhaven is a game of Euro-inspired tactical combat in a persistent world of shifting motives. Players will take on the role of a wandering adventurer with their own special set of skills and their own reasons for traveling to this dark corner of the world. Players must work together out of necessity to clear out menacing dungeons and forgotten ruins. In the process, they will enhance their abilities with experience and loot, discover new locations to explore and plunder, and expand an ever-branching story fueled by the decisions they make. This is a game with a persistent and changing world that is ideally played over many game sessions. After a scenario, players will make decisions on what to do, which will determine how the story continues, kind of like a “Choose Your Own Adventure” book. Playing through a scenario is a cooperative affair where players will fight against automated monsters using an innovative card system to determine the order of play and what a player does on their turn. Each turn, a player chooses two cards to play out of their hand. The number on the top card determines their initiative for the round. Each card also has a top and bottom power, and when it is a player’s turn in the initiative order, they determine whether to use the top power of one card and the bottom power of the other, or vice-versa. Players must be careful, though, because over time they will permanently lose cards from their hands. If they take too long to clear a dungeon, they may end up exhausted and be forced to retreat.', '<p>Gloomhaven is a game of Euro-inspired tactical combat in a persistent world of shifting motives. Players will take on the role of a wandering adventurer with their own special set of skills and their own reasons for traveling to this dark corner of the world. Players must work together out of necessity to clear out menacing dungeons and forgotten ruins. In the process, they will enhance their abilities with experience and loot, discover new locations to explore and plunder, and expand an ever-branching story fueled by the decisions they make.<\n>This is a game with a persistent and changing world that is ideally played over many game sessions. After a scenario, players will make decisions on what to do, which will determine how the story continues, kind of like a “Choose Your Own Adventure” book. Playing through a scenario is a cooperative affair where players will fight against automated monsters using an innovative card system to determine the order of play and what a player does on their turn.<\n>Each turn, a player chooses two cards to play out of their hand. The number on the top card determines their initiative for the round. Each card also has a top and bottom power, and when it is a player’s turn in the initiative order, they determine whether to use the top power of one card and the bottom power of the other, or vice-versa. Players must be careful, though, because over time they will permanently lose cards from their hands. If they take too long to clear a dungeon, they may end up exhausted and be forced to retreat.</p>');
INSERT INTO `game_body` VALUES (21, 'In War of the Ring, one player takes control of the Free Peoples (FP), the other player controls Shadow Armies (SA). Initially, the Free People Nations are reluctant to take arms against Sauron, so they must be attacked by Sauron or persuaded by Gandalf or other Companions, before they start to fight properly: this is represented by the Political Track, which shows if a Nation is ready to fight in the War of the Ring or not.<\n>The game can be won by a military victory, if Sauron conquers a certain number of Free People cities and strongholds or vice versa. But the true hope of the Free Peoples lies with the quest of the Ringbearer: while the armies clash across Middle Earth, the Fellowship of the Ring is trying to get secretly to Mount Doom to destroy the One Ring. Sauron is not aware of the real intention of his enemies but is looking across Middle Earth for the precious Ring, so that the Fellowship is going to face numerous dangers, represented by the rules of The Hunt for the Ring. But the Companions can spur the Free Peoples to the fight against Sauron, so the Free People player must balance the need to protect the Ringbearer from harm, against the attempt to raise a proper defense against the armies of the Shadow, so that they do not overrun Middle Earth before the Ringbearer completes his quest.<\n>Each game turn revolves around the roll of Action Dice: each die corresponds to an action that a player can do during a turn. Depending on the face rolled on each die, different actions are possible (moving armies, characters, recruiting troops, advancing a Political Track).<\n>Action Dice can also be used to draw or play Event Cards. Event Cards are played to represent specific events from the story (or events that could possibly have happened) that cannot be portrayed through normal game-play. Each Event Card can also create an unexpected turn in the game, allowing special actions or altering the course of a battle.', '<p>In War of the Ring, one player takes control of the Free Peoples (FP), the other player controls Shadow Armies (SA). Initially, the Free People Nations are reluctant to take arms against Sauron, so they must be attacked by Sauron or persuaded by Gandalf or other Companions, before they start to fight properly: this is represented by the Political Track, which shows if a Nation is ready to fight in the War of the Ring or not.<\n>The game can be won by a military victory, if Sauron conquers a certain number of Free People cities and strongholds or vice versa. But the true hope of the Free Peoples lies with the quest of the Ringbearer: while the armies clash across Middle Earth, the Fellowship of the Ring is trying to get secretly to Mount Doom to destroy the One Ring. Sauron is not aware of the real intention of his enemies but is looking across Middle Earth for the precious Ring, so that the Fellowship is going to face numerous dangers, represented by the rules of The Hunt for the Ring. But the Companions can spur the Free Peoples to the fight against Sauron, so the Free People player must balance the need to protect the Ringbearer from harm, against the attempt to raise a proper defense against the armies of the Shadow, so that they do not overrun Middle Earth before the Ringbearer completes his quest.<\n>Each game turn revolves around the roll of Action Dice: each die corresponds to an action that a player can do during a turn. Depending on the face rolled on each die, different actions are possible (moving armies, characters, recruiting troops, advancing a Political Track).<\n>Action Dice can also be used to draw or play Event Cards. Event Cards are played to represent specific events from the story (or events that could possibly have happened) that cannot be portrayed through normal game-play. Each Event Card can also create an unexpected turn in the game, allowing special actions or altering the course of a battle.</p>');
INSERT INTO `game_body` VALUES (22, 'In many ways 7 Wonders Duel resembles its parent game 7 Wonders as over three ages players acquire cards that provide resources or advance their military or scientific development in order to develop a civilization and complete wonders.\r\n\r\nWhat\'s different about 7 Wonders Duel is that, as the title suggests, the game is solely for two players, with the players not drafting cards simultaneously from hands of cards, but from a display of face-down and face-up cards arranged at the start of a round. A player can take a card only if it\'s not covered by any others, so timing comes into play as well as bonus moves that allow you to take a second card immediately. As in the original game, each card that you acquire can be built, discarded for coins, or used to construct a wonder.\r\n\r\nEach player starts with four wonder cards, and the construction of a wonder provides its owner with a special ability. Only seven wonders can be built, though, so one player will end up short.\r\n\r\nPlayers can purchase resources at any time from the bank, or they can gain cards during the game that provide them with resources for future building; as you acquire resources, the cost for those particular resources increases for your opponent, representing your dominance in this area.\r\n\r\nA player can win 7 Wonders Duel in one of three ways: each time you acquire a military card, you advance the military marker toward your opponent\'s capital, giving you a bonus at certain positions; if you reach the opponent\'s capital, you win the game immediately; similarly, if you acquire any six of seven different scientific symbols, you achieve scientific dominance and win immediately; if none of these situations occurs, then the player with the most points at the end of the game wins.', '<p>In many ways 7 Wonders Duel resembles its parent game 7 Wonders as over three ages players acquire cards that provide resources or advance their military or scientific development in order to develop a civilization and complete wonders.<\n>What\'s different about 7 Wonders Duel is that, as the title suggests, the game is solely for two players, with the players not drafting cards simultaneously from hands of cards, but from a display of face-down and face-up cards arranged at the start of a round. A player can take a card only if it\'s not covered by any others, so timing comes into play as well as bonus moves that allow you to take a second card immediately. As in the original game, each card that you acquire can be built, discarded for coins, or used to construct a wonder.<\n>Each player starts with four wonder cards, and the construction of a wonder provides its owner with a special ability. Only seven wonders can be built, though, so one player will end up short.<\n>Players can purchase resources at any time from the bank, or they can gain cards during the game that provide them with resources for future building; as you acquire resources, the cost for those particular resources increases for your opponent, representing your dominance in this area.<\n>A player can win 7 Wonders Duel in one of three ways: each time you acquire a military card, you advance the military marker toward your opponent\'s capital, giving you a bonus at certain positions; if you reach the opponent\'s capital, you win the game immediately; similarly, if you acquire any six of seven different scientific symbols, you achieve scientific dominance and win immediately; if none of these situations occurs, then the player with the most points at the end of the game wins.</p>');
INSERT INTO `game_body` VALUES (23, 'Through the Ages: A New Story of Civilization is the new edition of Through the Ages: A Story of Civilization, with many changes small and large to the game\'s cards over its three ages and extensive changes to how military works.\r\n\r\nThrough the Ages is a civilization building game. Each player attempts to build the best civilization through careful resource management, discovering new technologies, electing the right leaders, building wonders and maintaining a strong military. Weakness in any area can be exploited by your opponents. The game takes place throughout the ages beginning in the age of antiquity and ending in the modern age.', '<p>Through the Ages: A New Story of Civilization is the new edition of Through the Ages: A Story of Civilization, with many changes small and large to the game\'s cards over its three ages and extensive changes to how military works.<\n>Through the Ages is a civilization building game. Each player attempts to build the best civilization through careful resource management, discovering new technologies, electing the right leaders, building wonders and maintaining a strong military. Weakness in any area can be exploited by your opponents. The game takes place throughout the ages beginning in the age of antiquity and ending in the modern age.</p>');
INSERT INTO `game_body` VALUES (24, 'Mansions of Madness: Second Edition is a fully cooperative, app-driven board game of horror and mystery for one to five players that takes place in the same universe as Eldritch Horror and Elder Sign. Let the immersive app guide you through the veiled streets of Innsmouth and the haunted corridors of Arkham\'s cursed mansions as you search for answers and respite. Eight brave investigators stand ready to confront four scenarios of fear and mystery, collecting weapons, tools, and information, solving complex puzzles, and fighting monsters, insanity, and death. Open the door and step inside these hair-raising Mansions of Madness: Second Edition. It will take more than just survival to conquer the evils terrorizing this town.', '<p>Mansions of Madness: Second Edition is a fully cooperative, app-driven board game of horror and mystery for one to five players that takes place in the same universe as Eldritch Horror and Elder Sign. Let the immersive app guide you through the veiled streets of Innsmouth and the haunted corridors of Arkham\'s cursed mansions as you search for answers and respite. Eight brave investigators stand ready to confront four scenarios of fear and mystery, collecting weapons, tools, and information, solving complex puzzles, and fighting monsters, insanity, and death. Open the door and step inside these hair-raising Mansions of Madness: Second Edition. It will take more than just survival to conquer the evils terrorizing this town.</p>');
INSERT INTO `game_body` VALUES (25, 'Star Wars: Rebellion is a board game of epic conflict between the Galactic Empire and Rebel Alliance for two to four players.\r\n\r\nExperience the Galactic Civil War like never before. In Rebellion, you control the entire Galactic Empire or the fledgling Rebel Alliance. You must command starships, account for troop movements, and rally systems to your cause. Given the differences between the Empire and Rebel Alliance, each side has different win conditions, and you\'ll need to adjust your play style depending on who you represent:\r\nAs the Imperial player, you can command legions of Stormtroopers, swarms of TIEs, Star Destroyers, and even the Death Star. You rule the galaxy by fear, relying on the power of your massive military to enforce your will. To win the game, you need to snuff out the budding Rebel Alliance by finding its base and obliterating it. Along the way, you can subjugate worlds or even destroy them.\r\nAs the Rebel player, you can command dozens of troopers, T-47 airspeeders, Corellian corvettes, and fighter squadrons. However, these forces are no match for the Imperial military. In terms of raw strength, you\'ll find yourself clearly overmatched from the very outset, so you\'ll need to rally the planets to join your cause and execute targeted military strikes to sabotage Imperial build yards and steal valuable intelligence. To win the Galactic Civil War, you\'ll need to sway the galaxy\'s citizens to your cause. If you survive long enough and strengthen your reputation, you inspire the galaxy to a full-scale revolt, and you win.\r\nFeaturing more than 150 plastic miniatures and two game boards that account for thirty-two of the Star Wars galaxy\'s most notable systems, Rebellion features a scope that is as large and sweeping as any Star Wars game before it.\r\n\r\nYet for all its grandiosity, Rebellion remains intensely personal, cinematic, and heroic. As much as your success depends upon the strength of your starships, vehicles, and troops, it depends upon the individual efforts of such notable characters as Leia Organa, Mon Mothma, Grand Moff Tarkin, and Emperor Palpatine. As civil war spreads throughout the galaxy, these leaders are invaluable to your efforts, and the secret missions they attempt will evoke many of the most inspiring moments from the classic trilogy. You might send Luke Skywalker to receive Jedi training on Dagobah or have Darth Vader spring a trap that freezes Han Solo in carbonite!', '<p>Star Wars: Rebellion is a board game of epic conflict between the Galactic Empire and Rebel Alliance for two to four players.<\n>Experience the Galactic Civil War like never before. In Rebellion, you control the entire Galactic Empire or the fledgling Rebel Alliance. You must command starships, account for troop movements, and rally systems to your cause. Given the differences between the Empire and Rebel Alliance, each side has different win conditions, and you\'ll need to adjust your play style depending on who you represent:<\n>As the Imperial player, you can command legions of Stormtroopers, swarms of TIEs, Star Destroyers, and even the Death Star. You rule the galaxy by fear, relying on the power of your massive military to enforce your will. To win the game, you need to snuff out the budding Rebel Alliance by finding its base and obliterating it. Along the way, you can subjugate worlds or even destroy them.<\n>As the Rebel player, you can command dozens of troopers, T-47 airspeeders, Corellian corvettes, and fighter squadrons. <\n>However, these forces are no match for the Imperial military. In terms of raw strength, you\'ll find yourself clearly overmatched from the very outset, so you\'ll need to rally the planets to join your cause and execute targeted military strikes to sabotage Imperial build yards and steal valuable intelligence. To win the Galactic Civil War, you\'ll need to sway the galaxy\'s citizens to your cause. If you survive long enough and strengthen your reputation, you inspire the galaxy to a full-scale revolt, and you win.<\n>Featuring more than 150 plastic miniatures and two game boards that account for thirty-two of the Star Wars galaxy\'s most notable systems, Rebellion features a scope that is as large and sweeping as any Star Wars game before it.<\n>Yet for all its grandiosity, Rebellion remains intensely personal, cinematic, and heroic. As much as your success depends upon the strength of your starships, vehicles, and troops, it depends upon the individual efforts of such notable characters as Leia Organa, Mon Mothma, Grand Moff Tarkin, and Emperor Palpatine. As civil war spreads throughout the galaxy, these leaders are invaluable to your efforts, and the secret missions they attempt will evoke many of the most inspiring moments from the classic trilogy. You might send Luke Skywalker to receive Jedi training on Dagobah or have Darth Vader spring a trap that freezes Han Solo in carbonite!</p>');
INSERT INTO `game_body` VALUES (26, 'Something evil stirs in Arkham, and only you can stop it. Blurring the traditional lines between roleplaying and card game experiences, Arkham Horror: The Card Game is a Living Card Game of Lovecraftian mystery, monsters, and madness!\r\n\r\nIn the game, you and your friend (or up to three friends with two Core Sets) become characters within the quiet New England town of Arkham. You have your talents, sure, but you also have your flaws. Perhaps you\'ve dabbled a little too much in the writings of the Necronomicon, and its words continue to haunt you. Perhaps you feel compelled to cover up any signs of otherworldly evils, hampering your own investigations in order to protect the quiet confidence of the greater population. Perhaps you\'ll be scarred by your encounters with a ghoulish cult.\r\n\r\nNo matter what compels you, no matter what haunts you, you\'ll find both your strengths and weaknesses reflected in your custom deck of cards, and these cards will be your resources as you work with your friends to unravel the world\'s most terrifying mysteries.\r\n\r\nEach of your adventures in Arkham Horror LCG carries you deeper into mystery. You\'ll find cultists and foul rituals. You\'ll find haunted houses and strange creatures. And you may find signs of the Ancient Ones straining against the barriers to our world...\r\n\r\nThe basic mode of play in Arkham LCG is not the adventure, but the campaign. You might be scarred by your adventures, your sanity may be strained, and you may alter Arkham\'s landscape, burning buildings to the ground. All your choices and actions have consequences that reach far beyond the immediate resolution of the scenario at hand — and your actions may earn you valuable experience with which you can better prepare yourself for the adventures that still lie before you.', '<p>Something evil stirs in Arkham, and only you can stop it. Blurring the traditional lines between roleplaying and card game experiences, Arkham Horror: The Card Game is a Living Card Game of Lovecraftian mystery, monsters, and madness!<\n>In the game, you and your friend (or up to three friends with two Core Sets) become characters within the quiet New England town of Arkham. You have your talents, sure, but you also have your flaws. Perhaps you\'ve dabbled a little too much in the writings of the Necronomicon, and its words continue to haunt you. Perhaps you feel compelled to cover up any signs of otherworldly evils, hampering your own investigations in order to protect the quiet confidence of the greater population. Perhaps you\'ll be scarred by your encounters with a ghoulish cult.<\n>No matter what compels you, no matter what haunts you, you\'ll find both your strengths and weaknesses reflected in your custom deck of cards, and these cards will be your resources as you work with your friends to unravel the world\'s most terrifying mysteries.<\n>Each of your adventures in Arkham Horror LCG carries you deeper into mystery. You\'ll find cultists and foul rituals. You\'ll find haunted houses and strange creatures. And you may find signs of the Ancient Ones straining against the barriers to our world...<\n>The basic mode of play in Arkham LCG is not the adventure, but the campaign. You might be scarred by your adventures, your sanity may be strained, and you may alter Arkham\'s landscape, burning buildings to the ground. All your choices and actions have consequences that reach far beyond the immediate resolution of the scenario at hand — and your actions may earn you valuable experience with which you can better prepare yourself for the adventures that still lie before you.</p>');

-- ----------------------------
-- Table structure for game_category
-- ----------------------------
DROP TABLE IF EXISTS `game_category`;
CREATE TABLE `game_category`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `categoryname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_category
-- ----------------------------
INSERT INTO `game_category` VALUES (1, './static/game/adventure.jpg', 'Adventure', 'Adventure Game', 'Adventure');
INSERT INTO `game_category` VALUES (2, './static/game/ancient.jpeg', 'Ancient', 'Old fashion', 'Ancient');
INSERT INTO `game_category` VALUES (3, './static/game/civilization.jpg', 'Civilization', 'Modern', 'Civilization');
INSERT INTO `game_category` VALUES (4, './static/game/explore.jpg', 'Exploration', 'Cool', 'Exploration');
INSERT INTO `game_category` VALUES (5, './static/game/fight.jpg', 'Fighting', 'Beat', 'Fighting');
INSERT INTO `game_category` VALUES (6, './static/game/horror.jpg', 'Horror', 'Scare you ', 'Horror');

-- ----------------------------
-- Table structure for game_meta
-- ----------------------------
DROP TABLE IF EXISTS `game_meta`;
CREATE TABLE `game_meta`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `category_id` int(0) NULL DEFAULT NULL,
  `body_id` bigint(0) NULL DEFAULT NULL,
  `game_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publisher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publish_year` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKrd11pjsmueckfrh9gs7bc637`(`body_id`) USING BTREE,
  INDEX `FKjrn3ua4xmiulp8raj7m9d2xk`(`category_id`) USING BTREE,
  CONSTRAINT `FK7m84wb60o9ebjy3pmwm433my7` FOREIGN KEY (`body_id`) REFERENCES `game_body` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKjrn3ua4xmiulp8raj7m9d2xk` FOREIGN KEY (`category_id`) REFERENCES `game_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKogr6xf25w6sy3tns92mly61be` FOREIGN KEY (`category_id`) REFERENCES `game_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKrd11pjsmueckfrh9gs7bc637` FOREIGN KEY (`body_id`) REFERENCES `game_body` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_meta
-- ----------------------------
INSERT INTO `game_meta` VALUES (1, 1, 20, 'Gloomhaven', './static/game/gamemeta/g1.jpg', 'Cephalofair Games + 8 more', '2017', '8.8', '$99.99');
INSERT INTO `game_meta` VALUES (2, 1, 21, 'War of the Ring (Second Edition)', './static/game/gamemeta/g2.jpg', 'Ares Games + 9 more', '2012', '8.5', '$64.99');
INSERT INTO `game_meta` VALUES (3, 2, 22, '7 Wonders Duel', './static/game/gamemeta/g3.jpg', 'Repos Production + 14 more', '2015', '8.1', '$39.00');
INSERT INTO `game_meta` VALUES (4, 3, 23, 'Through the Ages: A New Story of Civilization', './static/game/gamemeta/g4.jpg', 'Czech Games Edition + 12 more', '2015', '8.5', '$50.49');
INSERT INTO `game_meta` VALUES (5, 4, 24, 'Mansions of Madness: Second Edition', './static/game/gamemeta/g5.jpg', 'Fantasy Flight Games + 8 more', '2016', '8.1', '$89.99');
INSERT INTO `game_meta` VALUES (6, 5, 25, 'Star Wars: Rebellion', './static/game/gamemeta/g6.jpg', 'Fantasy Flight Games + 8 more', '2016', '8.4', '$80.01');
INSERT INTO `game_meta` VALUES (7, 5, 20, 'aaaaSSSS', './static/game/gamemeta/g7.jpg', 'ASDD Games + 8 more', '2017', '8.8', '$99.99');
INSERT INTO `game_meta` VALUES (8, 4, 20, 'pubg', './static/game/gamemeta/g8.jpg', 'AAAWr Games + 8 more', '2017', '8.8', '$99.99');
INSERT INTO `game_meta` VALUES (9, 6, 26, 'Arkham Horror: The Card Game', './static/game/gamemeta/g9.jpg', 'Fantasy Flight Games + 9 more', '2016', '8.2', '$34.00');

-- ----------------------------
-- Table structure for game_tag
-- ----------------------------
DROP TABLE IF EXISTS `game_tag`;
CREATE TABLE `game_tag`  (
  `game_id` int(0) NOT NULL,
  `tag_id` int(0) NOT NULL,
  INDEX `FK2s65pu9coxh7w16s8jycih79f`(`tag_id`) USING BTREE,
  INDEX `FKsmysra6pt3ehcvts18q2h440`(`game_id`) USING BTREE,
  CONSTRAINT `FK2s65pu9coxh7w16s8jycih79f` FOREIGN KEY (`tag_id`) REFERENCES `game_tag_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKb5sg168n68feqxrr3v029kg9s` FOREIGN KEY (`game_id`) REFERENCES `game_meta` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKn8q9aem6qscc75pgqng3fden7` FOREIGN KEY (`tag_id`) REFERENCES `game_tag_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKsmysra6pt3ehcvts18q2h440` FOREIGN KEY (`game_id`) REFERENCES `game_meta` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_tag
-- ----------------------------
INSERT INTO `game_tag` VALUES (9, 1);
INSERT INTO `game_tag` VALUES (9, 2);
INSERT INTO `game_tag` VALUES (1, 2);
INSERT INTO `game_tag` VALUES (3, 2);
INSERT INTO `game_tag` VALUES (2, 3);
INSERT INTO `game_tag` VALUES (4, 3);
INSERT INTO `game_tag` VALUES (5, 4);
INSERT INTO `game_tag` VALUES (6, 4);
INSERT INTO `game_tag` VALUES (7, 2);
INSERT INTO `game_tag` VALUES (8, 3);

-- ----------------------------
-- Table structure for game_tag_info
-- ----------------------------
DROP TABLE IF EXISTS `game_tag_info`;
CREATE TABLE `game_tag_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tagname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tag_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_tag_info
-- ----------------------------
INSERT INTO `game_tag_info` VALUES (1, './static/game/tags/t1.png', '1-2 players', '1-2 players');
INSERT INTO `game_tag_info` VALUES (2, './static/game/tags/t2.jpg', '60-120 min', '60-120 min');
INSERT INTO `game_tag_info` VALUES (3, './static/game/tags/t3.jpg', 'storytelling', 'storytelling');
INSERT INTO `game_tag_info` VALUES (4, './static/game/tags/t4.jpg', 'investigate', 'investigate');

-- ----------------------------
-- Table structure for me_article
-- ----------------------------
DROP TABLE IF EXISTS `me_article`;
CREATE TABLE `me_article`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `comment_counts` int(0) NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `summary` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `view_counts` int(0) NULL DEFAULT NULL,
  `weight` int(0) NOT NULL,
  `author_id` bigint(0) NULL DEFAULT NULL,
  `body_id` bigint(0) NULL DEFAULT NULL,
  `category_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKndx2m69302cso79y66yxiju4h`(`author_id`) USING BTREE,
  INDEX `FKrd11pjsmueckfrh9gs7bc6374`(`body_id`) USING BTREE,
  INDEX `FKjrn3ua4xmiulp8raj7m9d2xk6`(`category_id`) USING BTREE,
  CONSTRAINT `FKjrn3ua4xmiulp8raj7m9d2xk6` FOREIGN KEY (`category_id`) REFERENCES `me_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKndx2m69302cso79y66yxiju4h` FOREIGN KEY (`author_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKrd11pjsmueckfrh9gs7bc6374` FOREIGN KEY (`body_id`) REFERENCES `me_article_body` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of me_article
-- ----------------------------
INSERT INTO `me_article` VALUES (1, 2, '2018-01-31 13:16:16', 'How to finish a horror game', 'Horror raiders', 58, 0, 1, 1, 1);
INSERT INTO `me_article` VALUES (9, 0, '2018-02-01 14:37:23', 'Game model software', 'Game model from PUBG', 5, 0, 1, 20, 1);
INSERT INTO `me_article` VALUES (10, 1, '2018-02-01 14:47:19', 'New rules', 'New policy about horror game?', 22, 0, 1, 21, 1);

-- ----------------------------
-- Table structure for me_article_body
-- ----------------------------
DROP TABLE IF EXISTS `me_article_body`;
CREATE TABLE `me_article_body`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `content_html` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of me_article_body
-- ----------------------------
INSERT INTO `me_article_body` VALUES (1, '1\r\nPick your game! There are many \"survival horror\" games. Some of the more recognizable ones are the \"Silent Hill\", \"Resident Evil\", \"Five Nights at Freddy\'s\", and \"Left 4 Dead\" series. Some other smaller titles include the well known \"SCP: Containment Breach\" or \"Penumbra\", the spiritual predecessor to \"Amnesia\", another survival horror game.\r\nImage titled Not Get Scared While Playing Survival Horror Games Step 2\r\n2\r\nDistinguish reality from imagination. These are just video games, and nothing in them can hurt you. It\'s fake. There are no such things as zombies, monsters with pyramid-shaped heads, tentacle beasts, or killer animatronics, as far as we know, at least. Never forget that a video game is a video game, nothing more. Remember that playing games like these too much can cause you to get paranoid, and the often tense atmosphere can leave you quite on edge once you stop playing.\r\nImage titled Not Get Scared While Playing Survival Horror Games Step 3\r\n3\r\nBe prepared to be scared. Survival horror games are meant to scare you! If you jump out of your skin a couple of times, that means that the creators have done their job. If games or movies scare you to the point that you lose sleep for extended periods of time or provoke paranoia, you should stop playing/watching them all together. It\'s not worth making yourself feel uncomfortable and causing inconvenience for the sake of a cheap thrill.', '1\r\nPick your game! There are many \"survival horror\" games. Some of the more recognizable ones are the \"Silent Hill\", \"Resident Evil\", \"Five Nights at Freddy\'s\", and \"Left 4 Dead\" series. Some other smaller titles include the well known \"SCP: Containment Breach\" or \"Penumbra\", the spiritual predecessor to \"Amnesia\", another survival horror game.\r\nImage titled Not Get Scared While Playing Survival Horror Games Step 2\r\n2\r\nDistinguish reality from imagination. These are just video games, and nothing in them can hurt you. It\'s fake. There are no such things as zombies, monsters with pyramid-shaped heads, tentacle beasts, or killer animatronics, as far as we know, at least. Never forget that a video game is a video game, nothing more. Remember that playing games like these too much can cause you to get paranoid, and the often tense atmosphere can leave you quite on edge once you stop playing.\r\nImage titled Not Get Scared While Playing Survival Horror Games Step 3\r\n3\r\nBe prepared to be scared. Survival horror games are meant to scare you! If you jump out of your skin a couple of times, that means that the creators have done their job. If games or movies scare you to the point that you lose sleep for extended periods of time or provoke paranoia, you should stop playing/watching them all together. It\'s not worth making yourself feel uncomfortable and causing inconvenience for the sake of a cheap thrill.');
INSERT INTO `me_article_body` VALUES (20, '1\r\nPick your game! There are many \"survival horror\" games. Some of the more recognizable ones are the \"Silent Hill\", \"Resident Evil\", \"Five Nights at Freddy\'s\", and \"Left 4 Dead\" series. Some other smaller titles include the well known \"SCP: Containment Breach\" or \"Penumbra\", the spiritual predecessor to \"Amnesia\", another survival horror game.\r\nImage titled Not Get Scared While Playing Survival Horror Games Step 2\r\n2\r\nDistinguish reality from imagination. These are just video games, and nothing in them can hurt you. It\'s fake. There are no such things as zombies, monsters with pyramid-shaped heads, tentacle beasts, or killer animatronics, as far as we know, at least. Never forget that a video game is a video game, nothing more. Remember that playing games like these too much can cause you to get paranoid, and the often tense atmosphere can leave you quite on edge once you stop playing.\r\nImage titled Not Get Scared While Playing Survival Horror Games Step 3\r\n3\r\nBe prepared to be scared. Survival horror games are meant to scare you! If you jump out of your skin a couple of times, that means that the creators have done their job. If games or movies scare you to the point that you lose sleep for extended periods of time or provoke paranoia, you should stop playing/watching them all together. It\'s not worth making yourself feel uncomfortable and causing inconvenience for the sake of a cheap thrill.', '1\r\nPick your game! There are many \"survival horror\" games. Some of the more recognizable ones are the \"Silent Hill\", \"Resident Evil\", \"Five Nights at Freddy\'s\", and \"Left 4 Dead\" series. Some other smaller titles include the well known \"SCP: Containment Breach\" or \"Penumbra\", the spiritual predecessor to \"Amnesia\", another survival horror game.\r\nImage titled Not Get Scared While Playing Survival Horror Games Step 2\r\n2\r\nDistinguish reality from imagination. These are just video games, and nothing in them can hurt you. It\'s fake. There are no such things as zombies, monsters with pyramid-shaped heads, tentacle beasts, or killer animatronics, as far as we know, at least. Never forget that a video game is a video game, nothing more. Remember that playing games like these too much can cause you to get paranoid, and the often tense atmosphere can leave you quite on edge once you stop playing.\r\nImage titled Not Get Scared While Playing Survival Horror Games Step 3\r\n3\r\nBe prepared to be scared. Survival horror games are meant to scare you! If you jump out of your skin a couple of times, that means that the creators have done their job. If games or movies scare you to the point that you lose sleep for extended periods of time or provoke paranoia, you should stop playing/watching them all together. It\'s not worth making yourself feel uncomfortable and causing inconvenience for the sake of a cheap thrill.');
INSERT INTO `me_article_body` VALUES (21, '1\r\nPick your game! There are many \"survival horror\" games. Some of the more recognizable ones are the \"Silent Hill\", \"Resident Evil\", \"Five Nights at Freddy\'s\", and \"Left 4 Dead\" series. Some other smaller titles include the well known \"SCP: Containment Breach\" or \"Penumbra\", the spiritual predecessor to \"Amnesia\", another survival horror game.\r\nImage titled Not Get Scared While Playing Survival Horror Games Step 2\r\n2\r\nDistinguish reality from imagination. These are just video games, and nothing in them can hurt you. It\'s fake. There are no such things as zombies, monsters with pyramid-shaped heads, tentacle beasts, or killer animatronics, as far as we know, at least. Never forget that a video game is a video game, nothing more. Remember that playing games like these too much can cause you to get paranoid, and the often tense atmosphere can leave you quite on edge once you stop playing.\r\nImage titled Not Get Scared While Playing Survival Horror Games Step 3\r\n3\r\nBe prepared to be scared. Survival horror games are meant to scare you! If you jump out of your skin a couple of times, that means that the creators have done their job. If games or movies scare you to the point that you lose sleep for extended periods of time or provoke paranoia, you should stop playing/watching them all together. It\'s not worth making yourself feel uncomfortable and causing inconvenience for the sake of a cheap thrill.', '1\r\nPick your game! There are many \"survival horror\" games. Some of the more recognizable ones are the \"Silent Hill\", \"Resident Evil\", \"Five Nights at Freddy\'s\", and \"Left 4 Dead\" series. Some other smaller titles include the well known \"SCP: Containment Breach\" or \"Penumbra\", the spiritual predecessor to \"Amnesia\", another survival horror game.\r\nImage titled Not Get Scared While Playing Survival Horror Games Step 2\r\n2\r\nDistinguish reality from imagination. These are just video games, and nothing in them can hurt you. It\'s fake. There are no such things as zombies, monsters with pyramid-shaped heads, tentacle beasts, or killer animatronics, as far as we know, at least. Never forget that a video game is a video game, nothing more. Remember that playing games like these too much can cause you to get paranoid, and the often tense atmosphere can leave you quite on edge once you stop playing.\r\nImage titled Not Get Scared While Playing Survival Horror Games Step 3\r\n3\r\nBe prepared to be scared. Survival horror games are meant to scare you! If you jump out of your skin a couple of times, that means that the creators have done their job. If games or movies scare you to the point that you lose sleep for extended periods of time or provoke paranoia, you should stop playing/watching them all together. It\'s not worth making yourself feel uncomfortable and causing inconvenience for the sake of a cheap thrill.');

-- ----------------------------
-- Table structure for me_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `me_article_tag`;
CREATE TABLE `me_article_tag`  (
  `article_id` int(0) NOT NULL,
  `tag_id` int(0) NOT NULL,
  INDEX `FK2s65pu9coxh7w16s8jycih79w`(`tag_id`) USING BTREE,
  INDEX `FKsmysra6pt3ehcvts18q2h4409`(`article_id`) USING BTREE,
  CONSTRAINT `FK2s65pu9coxh7w16s8jycih79w` FOREIGN KEY (`tag_id`) REFERENCES `me_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKsmysra6pt3ehcvts18q2h4409` FOREIGN KEY (`article_id`) REFERENCES `me_article` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of me_article_tag
-- ----------------------------
INSERT INTO `me_article_tag` VALUES (1, 7);
INSERT INTO `me_article_tag` VALUES (1, 5);
INSERT INTO `me_article_tag` VALUES (1, 8);
INSERT INTO `me_article_tag` VALUES (9, 7);
INSERT INTO `me_article_tag` VALUES (10, 7);
INSERT INTO `me_article_tag` VALUES (10, 8);
INSERT INTO `me_article_tag` VALUES (10, 5);
INSERT INTO `me_article_tag` VALUES (10, 6);

-- ----------------------------
-- Table structure for me_category
-- ----------------------------
DROP TABLE IF EXISTS `me_category`;
CREATE TABLE `me_category`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `categoryname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of me_category
-- ----------------------------
INSERT INTO `me_category` VALUES (1, './static/category/1.jpg', 'club', 'a');
INSERT INTO `me_category` VALUES (2, './static/category/2.jpg', 'public', 's');
INSERT INTO `me_category` VALUES (3, './static/category/3.jpg', 'news', 'd');
INSERT INTO `me_category` VALUES (4, './static/category/4.jpg', 'market', 'ee');
INSERT INTO `me_category` VALUES (5, './static/category/5.jpg', 'chat', 'ww');

-- ----------------------------
-- Table structure for me_comment
-- ----------------------------
DROP TABLE IF EXISTS `me_comment`;
CREATE TABLE `me_comment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `article_id` int(0) NULL DEFAULT NULL,
  `author_id` bigint(0) NULL DEFAULT NULL,
  `parent_id` int(0) NULL DEFAULT NULL,
  `to_uid` bigint(0) NULL DEFAULT NULL,
  `level` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKecq0fuo9k0lnmea6r01vfhiok`(`article_id`) USING BTREE,
  INDEX `FKkvuyh6ih7dt1rfqhwsjomsa6i`(`author_id`) USING BTREE,
  INDEX `FKaecafrcorkhyyp1luffinsfqs`(`parent_id`) USING BTREE,
  INDEX `FK73dgr23lbs3ebex5qvqyku308`(`to_uid`) USING BTREE,
  CONSTRAINT `FK73dgr23lbs3ebex5qvqyku308` FOREIGN KEY (`to_uid`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKaecafrcorkhyyp1luffinsfqs` FOREIGN KEY (`parent_id`) REFERENCES `me_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKecq0fuo9k0lnmea6r01vfhiok` FOREIGN KEY (`article_id`) REFERENCES `me_article` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKkvuyh6ih7dt1rfqhwsjomsa6i` FOREIGN KEY (`author_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of me_comment
-- ----------------------------
INSERT INTO `me_comment` VALUES (53, 'wow', '2020-04-02 05:32:28', 10, 16, NULL, NULL, '0');

-- ----------------------------
-- Table structure for me_tag
-- ----------------------------
DROP TABLE IF EXISTS `me_tag`;
CREATE TABLE `me_tag`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tagname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of me_tag
-- ----------------------------
INSERT INTO `me_tag` VALUES (1, './static/tag/1.png', 'hoory');
INSERT INTO `me_tag` VALUES (2, './static/tag/2.png', 'come on');
INSERT INTO `me_tag` VALUES (3, './static/tag/3.png', 'asd');
INSERT INTO `me_tag` VALUES (4, './static/tag/4.png', 'Game review');
INSERT INTO `me_tag` VALUES (5, './static/tag/5.png', 'raider');
INSERT INTO `me_tag` VALUES (6, './static/tag/6.png', 'policy');
INSERT INTO `me_tag` VALUES (7, './static/tag/7.png', 'model');
INSERT INTO `me_tag` VALUES (8, './static/tag/8.png', 'club');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `module` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `nickname` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `operation` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `time` bigint(0) NULL DEFAULT NULL,
  `userid` bigint(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6552 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `account` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin` bit(1) NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `deleted` bit(1) NULL DEFAULT NULL,
  `email` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_login` datetime(0) NULL DEFAULT NULL,
  `mobile_phone_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_awpog86ljqwb89aqa1c5gvdrd`(`account`) USING BTREE,
  UNIQUE INDEX `UK_ahtq5ew3v0kt1n7hf1sgp7p8l`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'shimh', b'1', '/user/admin.png', '2018-01-22 17:14:49', b'0', '919431514@qq.com', NULL, '18396816462', 'Manson', 'c237910910ffa1f4827bf7fe1831ce43', 'e4153a582cbc45c3a199998b506dab28', 'normal');
INSERT INTO `sys_user` VALUES (15, 'shimh2', b'0', '/user/user_6.png', NULL, b'0', NULL, NULL, NULL, 'shimh2', '0df7246bbb5b1bf138edd17f7b64b33b', '480e1a68cbc7e05ff49f39d2b5222d0b', 'normal');
INSERT INTO `sys_user` VALUES (16, 'manson', b'0', '/static/user/user_3.png', NULL, b'0', NULL, NULL, NULL, 'mansonLi', '030c90f0660058990299ba2cfdfbdf83', '839c007a5442385295fc283f6c288c9c', 'normal');

-- ----------------------------
-- Table structure for user_defined_directory
-- ----------------------------
DROP TABLE IF EXISTS `user_defined_directory`;
CREATE TABLE `user_defined_directory`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(0) NOT NULL,
  `game_Id` int(0) NOT NULL,
  `directory_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `directoryname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKrd123fsmueckfasdfs7bc637`(`user_id`) USING BTREE,
  INDEX `FKjrn3ua4xmiulp8raasdfghjk`(`game_Id`) USING BTREE,
  CONSTRAINT `FKjrn3ua4xmiulp8raasdfghjk` FOREIGN KEY (`game_Id`) REFERENCES `game_meta` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKrd123fsmueckfasdfs7bc637` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_defined_directory
-- ----------------------------
INSERT INTO `user_defined_directory` VALUES (1, 1, 1, 'my love', '');
INSERT INTO `user_defined_directory` VALUES (2, 1, 2, 'family', '');
INSERT INTO `user_defined_directory` VALUES (3, 1, 3, 'going to buy', '');
INSERT INTO `user_defined_directory` VALUES (4, 2, 4, 'going to sell', '');
INSERT INTO `user_defined_directory` VALUES (5, 2, 5, 'boring', '');

SET FOREIGN_KEY_CHECKS = 1;
