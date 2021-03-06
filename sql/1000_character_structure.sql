/*
MySQL Data Transfer
Source Host: localhost
Source Database: rockstar
Target Host: localhost
Target Database: rockstar
Date: 7/26/2008 9:50:07 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for account_data
-- ----------------------------
DROP TABLE IF EXISTS `account_data`;
CREATE TABLE `account_data` (
  `acct` int(30) NOT NULL,
  `uiconfig0` blob,
  `uiconfig1` blob,
  `uiconfig2` blob,
  `uiconfig3` blob,
  `uiconfig4` blob,
  `uiconfig5` blob,
  `uiconfig6` blob,
  `uiconfig7` blob,
  `uiconfig8` blob,
  PRIMARY KEY  (`acct`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for account_forced_permissions
-- ----------------------------
DROP TABLE IF EXISTS `account_forced_permissions`;
CREATE TABLE `account_forced_permissions` (
  `login` varchar(50) NOT NULL,
  `permissions` varchar(100) NOT NULL,
  PRIMARY KEY  (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for arenateams
-- ----------------------------
DROP TABLE IF EXISTS `arenateams`;
CREATE TABLE `arenateams` (
  `id` int(30) NOT NULL,
  `type` int(30) NOT NULL,
  `leader` int(30) NOT NULL,
  `name` varchar(150) NOT NULL,
  `emblemstyle` int(40) NOT NULL,
  `emblemcolour` bigint(40) NOT NULL,
  `borderstyle` int(40) NOT NULL,
  `bordercolour` bigint(40) NOT NULL,
  `backgroundcolour` bigint(40) NOT NULL,
  `rating` int(30) NOT NULL,
  `data` varchar(150) NOT NULL,
  `ranking` int(30) NOT NULL,
  `player_data1` varchar(60) NOT NULL,
  `player_data2` varchar(60) NOT NULL,
  `player_data3` varchar(60) NOT NULL,
  `player_data4` varchar(60) NOT NULL,
  `player_data5` varchar(60) NOT NULL,
  `player_data6` varchar(60) NOT NULL,
  `player_data7` varchar(60) NOT NULL,
  `player_data8` varchar(60) NOT NULL,
  `player_data9` varchar(60) NOT NULL,
  `player_data10` varchar(60) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for auctions
-- ----------------------------
DROP TABLE IF EXISTS `auctions`;
CREATE TABLE `auctions` (
  `auctionId` int(32) NOT NULL auto_increment,
  `auctionhouse` int(32) default NULL,
  `item` bigint(10) default NULL,
  `owner` bigint(10) default NULL,
  `buyout` int(32) default NULL,
  `time` int(32) default NULL,
  `bidder` bigint(10) default NULL,
  `bid` int(32) default NULL,
  `deposit` int(32) default NULL,
  PRIMARY KEY  (`auctionId`),
  KEY `b` (`auctionhouse`)
) ENGINE=MyISAM AUTO_INCREMENT=1027356 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for banned_names
-- ----------------------------
DROP TABLE IF EXISTS `banned_names`;
CREATE TABLE `banned_names` (
  `name` varchar(30) collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for characters
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `guid` int(6) unsigned NOT NULL default '0',
  `acct` int(20) unsigned NOT NULL default '0',
  `name` varchar(21) NOT NULL default '',
  `race` smallint(3) NOT NULL,
  `class` smallint(3) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `custom_faction` int(30) NOT NULL default '0',
  `level` int(3) NOT NULL,
  `xp` int(30) NOT NULL,
  `exploration_data` longtext NOT NULL,
  `skills` longtext NOT NULL,
  `watched_faction_index` bigint(40) NOT NULL,
  `selected_title` int(30) NOT NULL,
  `available_pvp_titles` int(30) NOT NULL,
  `available_common_titles` int(30) NOT NULL,
  `gold` int(30) NOT NULL,
  `ammo_id` int(30) NOT NULL,
  `available_prof_points` int(30) NOT NULL,
  `available_talent_points` int(30) NOT NULL,
  `current_hp` int(30) NOT NULL,
  `current_power` int(30) NOT NULL,
  `pvprank` int(30) NOT NULL,
  `bytes` int(30) NOT NULL,
  `bytes2` int(30) NOT NULL,
  `player_flags` int(30) NOT NULL,
  `player_bytes` int(30) NOT NULL,
  `positionX` float NOT NULL default '0',
  `positionY` float NOT NULL default '0',
  `positionZ` float NOT NULL default '0',
  `orientation` float NOT NULL default '0',
  `mapId` int(8) unsigned NOT NULL default '0',
  `zoneId` int(8) unsigned NOT NULL default '0',
  `taximask` longtext NOT NULL,
  `banned` int(40) unsigned NOT NULL default '0',
  `banReason` varchar(255) NOT NULL,
  `timestamp` int(30) default NULL,
  `online` int(11) default NULL,
  `bindpositionX` float NOT NULL default '0',
  `bindpositionY` float NOT NULL default '0',
  `bindpositionZ` float NOT NULL default '0',
  `bindmapId` int(8) unsigned NOT NULL default '0',
  `bindzoneId` int(8) unsigned NOT NULL default '0',
  `isResting` int(3) NOT NULL default '0',
  `restState` int(5) NOT NULL default '0',
  `restTime` int(5) NOT NULL default '0',
  `playedtime` text NOT NULL,
  `deathstate` int(5) NOT NULL default '0',
  `TalentResetTimes` int(5) NOT NULL default '0',
  `first_login` tinyint(1) NOT NULL default '0',
  `forced_rename_pending` tinyint(1) NOT NULL default '0',
  `arenaPoints` int(10) NOT NULL,
  `totalstableslots` int(10) unsigned NOT NULL default '0',
  `instance_id` int(10) NOT NULL,
  `entrypointmap` int(10) NOT NULL,
  `entrypointx` float NOT NULL,
  `entrypointy` float NOT NULL,
  `entrypointz` float NOT NULL,
  `entrypointo` float NOT NULL,
  `entrypointinstance` int(10) NOT NULL,
  `taxi_path` int(10) NOT NULL,
  `taxi_lastnode` int(10) NOT NULL,
  `taxi_mountid` int(10) NOT NULL,
  `transporter` int(10) NOT NULL,
  `transporter_xdiff` float NOT NULL,
  `transporter_ydiff` float NOT NULL,
  `transporter_zdiff` float NOT NULL,
  `spells` longtext NOT NULL,
  `deleted_spells` longtext NOT NULL,
  `reputation` longtext NOT NULL,
  `actions` longtext NOT NULL,
  `auras` longtext NOT NULL,
  `finished_quests` longtext NOT NULL,
  `finisheddailies` longtext NOT NULL,
  `honorRolloverTime` int(30) NOT NULL default '0',
  `killsToday` int(10) NOT NULL default '0',
  `killsYesterday` int(10) NOT NULL default '0',
  `killsLifeTime` int(10) NOT NULL default '0',
  `honorToday` int(10) NOT NULL default '0',
  `honorYesterday` int(10) NOT NULL default '0',
  `honorPoints` int(10) NOT NULL default '0',
  `difficulty` int(4) NOT NULL default '0',
  PRIMARY KEY  (`guid`),
  KEY `acct` (`acct`),
  KEY `name` (`name`),
  KEY `b` (`banned`),
  KEY `c` (`online`),
  KEY `d` (`forced_rename_pending`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for characters_insert_queue
-- ----------------------------
DROP TABLE IF EXISTS `characters_insert_queue`;
CREATE TABLE `characters_insert_queue` (
  `insert_temp_guid` int(10) unsigned NOT NULL default '0',
  `acct` int(10) unsigned NOT NULL default '0',
  `name` varchar(21) collate utf8_unicode_ci NOT NULL,
  `race` tinyint(3) unsigned NOT NULL default '0',
  `class` tinyint(3) unsigned NOT NULL default '0',
  `gender` tinyint(3) unsigned NOT NULL default '0',
  `custom_faction` int(30) NOT NULL default '0',
  `level` int(10) unsigned NOT NULL default '0',
  `xp` int(10) unsigned NOT NULL default '0',
  `exploration_data` longtext collate utf8_unicode_ci NOT NULL,
  `skills` longtext collate utf8_unicode_ci NOT NULL,
  `watched_faction_index` int(10) unsigned NOT NULL default '0',
  `selected_pvp_title` int(10) unsigned NOT NULL default '0',
  `available_pvp_titles` int(10) unsigned NOT NULL default '0',
  `gold` int(10) unsigned NOT NULL default '0',
  `ammo_id` int(10) unsigned NOT NULL default '0',
  `available_prof_points` int(10) unsigned NOT NULL default '0',
  `available_talent_points` int(10) unsigned NOT NULL default '0',
  `current_hp` int(10) unsigned NOT NULL default '0',
  `current_power` int(10) unsigned NOT NULL default '0',
  `pvprank` tinyint(3) unsigned NOT NULL default '0',
  `bytes` int(10) unsigned NOT NULL default '0',
  `bytes2` int(10) unsigned NOT NULL default '0',
  `player_flags` int(10) unsigned NOT NULL default '0',
  `player_bytes` int(10) unsigned NOT NULL default '0',
  `positionX` float NOT NULL default '0',
  `positionY` float NOT NULL default '0',
  `positionZ` float NOT NULL default '0',
  `orientation` float NOT NULL default '0',
  `mapId` int(10) unsigned NOT NULL default '0',
  `zoneId` int(10) unsigned NOT NULL default '0',
  `taximask` longtext collate utf8_unicode_ci NOT NULL,
  `banned` int(40) NOT NULL,
  `banReason` varchar(50) collate utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `online` int(11) default NULL,
  `bindpositionX` float NOT NULL default '0',
  `bindpositionY` float NOT NULL default '0',
  `bindpositionZ` float NOT NULL default '0',
  `bindmapId` int(10) unsigned NOT NULL default '0',
  `bindzoneId` int(10) unsigned NOT NULL default '0',
  `isResting` tinyint(3) unsigned NOT NULL default '0',
  `restState` tinyint(3) unsigned NOT NULL default '0',
  `restTime` int(10) unsigned NOT NULL default '0',
  `playedtime` longtext collate utf8_unicode_ci NOT NULL,
  `deathstate` int(10) unsigned NOT NULL default '0',
  `TalentResetTimes` int(10) unsigned NOT NULL default '0',
  `first_login` tinyint(3) unsigned NOT NULL default '0',
  `forced_rename_pending` tinyint(3) unsigned NOT NULL default '0',
  `publicNote` varchar(32) collate utf8_unicode_ci NOT NULL,
  `officerNote` varchar(32) collate utf8_unicode_ci NOT NULL,
  `guildid` int(10) unsigned NOT NULL default '0',
  `guildRank` int(10) unsigned NOT NULL default '0',
  `arenaPoints` int(10) NOT NULL,
  `totalstableslots` int(10) unsigned NOT NULL default '0',
  `instance_id` int(10) unsigned NOT NULL default '0',
  `entrypointmap` int(10) unsigned NOT NULL default '0',
  `entrypointx` float NOT NULL default '0',
  `entrypointy` float NOT NULL default '0',
  `entrypointz` float NOT NULL default '0',
  `entrypointo` float NOT NULL default '0',
  `entrypointinstance` int(10) unsigned NOT NULL default '0',
  `taxi_path` int(10) unsigned NOT NULL default '0',
  `taxi_lastnode` int(10) unsigned NOT NULL default '0',
  `taxi_mountid` int(10) unsigned NOT NULL default '0',
  `transporter` int(10) unsigned NOT NULL default '0',
  `transporter_xdiff` float NOT NULL default '0',
  `transporter_ydiff` float NOT NULL default '0',
  `transporter_zdiff` float NOT NULL default '0',
  `spells` longtext collate utf8_unicode_ci NOT NULL,
  `deleted_spells` longtext collate utf8_unicode_ci NOT NULL,
  `reputation` longtext collate utf8_unicode_ci NOT NULL,
  `actions` longtext collate utf8_unicode_ci NOT NULL,
  `auras` longtext collate utf8_unicode_ci NOT NULL,
  `finished_quests` longtext collate utf8_unicode_ci NOT NULL,
  `honorPointsToAdd` int(10) NOT NULL,
  `killsToday` int(10) unsigned NOT NULL default '0',
  `killsYesterday` int(10) unsigned NOT NULL default '0',
  `killsLifeTime` int(10) unsigned NOT NULL default '0',
  `honorToday` int(10) unsigned NOT NULL default '0',
  `honorYesterday` int(10) unsigned NOT NULL default '0',
  `honorPoints` int(10) unsigned NOT NULL default '0',
  `difficulty` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `guid` (`insert_temp_guid`),
  KEY `acct` (`acct`),
  KEY `guildid` (`guildid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for charters
-- ----------------------------
DROP TABLE IF EXISTS `charters`;
CREATE TABLE `charters` (
  `charterId` int(30) NOT NULL,
  `charterType` int(30) NOT NULL default '0',
  `leaderGuid` int(20) unsigned NOT NULL default '0',
  `guildName` varchar(32) NOT NULL default '',
  `itemGuid` bigint(40) unsigned NOT NULL default '0',
  `signer1` int(10) unsigned NOT NULL default '0',
  `signer2` int(10) unsigned NOT NULL default '0',
  `signer3` int(10) unsigned NOT NULL default '0',
  `signer4` int(10) unsigned NOT NULL default '0',
  `signer5` int(10) unsigned NOT NULL default '0',
  `signer6` int(10) unsigned NOT NULL default '0',
  `signer7` int(10) unsigned NOT NULL default '0',
  `signer8` int(10) unsigned NOT NULL default '0',
  `signer9` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`charterId`),
  UNIQUE KEY `leaderGuid` (`leaderGuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='MyISAM free: 11264 kB; MyISAM free: 18432 kB';

-- ----------------------------
-- Table structure for corpses
-- ----------------------------
DROP TABLE IF EXISTS `corpses`;
CREATE TABLE `corpses` (
  `guid` bigint(20) unsigned NOT NULL default '0',
  `positionX` float NOT NULL default '0',
  `positionY` float NOT NULL default '0',
  `positionZ` float NOT NULL default '0',
  `orientation` float NOT NULL default '0',
  `zoneId` int(11) NOT NULL default '38',
  `mapId` int(11) NOT NULL default '0',
  `instanceId` int(11) NOT NULL default '0',
  `data` longtext NOT NULL,
  PRIMARY KEY  (`guid`),
  KEY `b` (`instanceId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for disconnectionqueue
-- ----------------------------
DROP TABLE IF EXISTS `disconnectionqueue`;
CREATE TABLE `disconnectionqueue` (
  `CharName` varchar(21) NOT NULL,
  PRIMARY KEY  (`CharName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for gm_tickets
-- ----------------------------
DROP TABLE IF EXISTS `gm_tickets`;
CREATE TABLE `gm_tickets` (
  `guid` int(11) NOT NULL,
  `playerGuid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL default '',
  `level` int(6) NOT NULL default '0',
  `map` int(3) NOT NULL default '0',
  `posX` float NOT NULL default '0',
  `posY` float NOT NULL default '0',
  `posZ` float NOT NULL default '0',
  `message` text NOT NULL,
  `timestamp` text,
  `deleted` bit(1) NOT NULL default '\0',
  `assignedto` int(11) NOT NULL default '0',
  `comment` text NOT NULL,
  UNIQUE KEY `guid` (`guid`),
  UNIQUE KEY `guid_2` (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `group_id` int(30) NOT NULL,
  `group_type` tinyint(2) NOT NULL,
  `subgroup_count` tinyint(2) NOT NULL,
  `loot_method` tinyint(2) NOT NULL,
  `loot_threshold` tinyint(2) NOT NULL,
  `difficulty` int(30) NOT NULL default '0',
  `assistant_leader` int(30) NOT NULL default '0',
  `main_tank` int(30) NOT NULL default '0',
  `main_assist` int(30) NOT NULL default '0',
  `group1member1` int(50) NOT NULL,
  `group1member2` int(50) NOT NULL,
  `group1member3` int(50) NOT NULL,
  `group1member4` int(50) NOT NULL,
  `group1member5` int(50) NOT NULL,
  `group2member1` int(50) NOT NULL,
  `group2member2` int(50) NOT NULL,
  `group2member3` int(50) NOT NULL,
  `group2member4` int(50) NOT NULL,
  `group2member5` int(50) NOT NULL,
  `group3member1` int(50) NOT NULL,
  `group3member2` int(50) NOT NULL,
  `group3member3` int(50) NOT NULL,
  `group3member4` int(50) NOT NULL,
  `group3member5` int(50) NOT NULL,
  `group4member1` int(50) NOT NULL,
  `group4member2` int(50) NOT NULL,
  `group4member3` int(50) NOT NULL,
  `group4member4` int(50) NOT NULL,
  `group4member5` int(50) NOT NULL,
  `group5member1` int(50) NOT NULL,
  `group5member2` int(50) NOT NULL,
  `group5member3` int(50) NOT NULL,
  `group5member4` int(50) NOT NULL,
  `group5member5` int(50) NOT NULL,
  `group6member1` int(50) NOT NULL,
  `group6member2` int(50) NOT NULL,
  `group6member3` int(50) NOT NULL,
  `group6member4` int(50) NOT NULL,
  `group6member5` int(50) NOT NULL,
  `group7member1` int(50) NOT NULL,
  `group7member2` int(50) NOT NULL,
  `group7member3` int(50) NOT NULL,
  `group7member4` int(50) NOT NULL,
  `group7member5` int(50) NOT NULL,
  `group8member1` int(50) NOT NULL,
  `group8member2` int(50) NOT NULL,
  `group8member3` int(50) NOT NULL,
  `group8member4` int(50) NOT NULL,
  `group8member5` int(50) NOT NULL,
  `timestamp` int(30) NOT NULL,
  PRIMARY KEY  (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for guild_bankitems
-- ----------------------------
DROP TABLE IF EXISTS `guild_bankitems`;
CREATE TABLE `guild_bankitems` (
  `guildId` int(30) NOT NULL,
  `tabId` int(30) NOT NULL,
  `slotId` int(30) NOT NULL,
  `itemGuid` int(30) NOT NULL,
  PRIMARY KEY  (`guildId`,`tabId`,`slotId`),
  KEY `a` (`guildId`),
  KEY `b` (`tabId`),
  KEY `c` (`slotId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for guild_banklogs
-- ----------------------------
DROP TABLE IF EXISTS `guild_banklogs`;
CREATE TABLE `guild_banklogs` (
  `log_id` int(30) NOT NULL,
  `guildid` int(30) NOT NULL,
  `tabid` int(30) NOT NULL COMMENT 'tab 6 is money logs',
  `action` int(5) NOT NULL,
  `player_guid` int(30) NOT NULL,
  `item_entry` int(30) NOT NULL,
  `stack_count` int(30) NOT NULL,
  `timestamp` int(30) NOT NULL,
  PRIMARY KEY  (`log_id`,`guildid`),
  KEY `a` (`guildid`),
  KEY `b` (`tabid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for guild_banktabs
-- ----------------------------
DROP TABLE IF EXISTS `guild_banktabs`;
CREATE TABLE `guild_banktabs` (
  `guildId` int(30) NOT NULL,
  `tabId` int(30) NOT NULL,
  `tabName` varchar(200) NOT NULL,
  `tabIcon` varchar(200) NOT NULL,
  `tabText` varchar(100) character set utf8 NOT NULL default '',
  PRIMARY KEY  (`guildId`,`tabId`),
  KEY `a` (`guildId`),
  KEY `b` (`tabId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for guild_data
-- ----------------------------
DROP TABLE IF EXISTS `guild_data`;
CREATE TABLE `guild_data` (
  `guildid` int(30) NOT NULL,
  `playerid` int(30) NOT NULL,
  `guildRank` int(30) NOT NULL,
  `publicNote` varchar(300) NOT NULL,
  `officerNote` varchar(300) NOT NULL,
  `lastWithdrawReset` int(30) NOT NULL default '0',
  `withdrawlsSinceLastReset` int(30) NOT NULL default '0',
  `lastItemWithdrawReset0` int(30) NOT NULL default '0',
  `itemWithdrawlsSinceLastReset0` int(30) NOT NULL default '0',
  `lastItemWithdrawReset1` int(30) NOT NULL,
  `itemWithdrawlsSinceLastReset1` int(30) NOT NULL,
  `lastItemWithdrawReset2` int(30) NOT NULL,
  `itemWithdrawlsSinceLastReset2` int(30) NOT NULL,
  `lastItemWithdrawReset3` int(30) NOT NULL,
  `itemWithdrawlsSinceLastReset3` int(30) NOT NULL,
  `lastItemWithdrawReset4` int(30) NOT NULL,
  `itemWithdrawlsSinceLastReset4` int(30) NOT NULL,
  `lastItemWithdrawReset5` int(30) NOT NULL,
  `itemWithdrawlsSinceLastReset5` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for guild_logs
-- ----------------------------
DROP TABLE IF EXISTS `guild_logs`;
CREATE TABLE `guild_logs` (
  `log_id` int(30) NOT NULL,
  `guildid` int(30) NOT NULL,
  `timestamp` int(30) NOT NULL,
  `event_type` int(30) NOT NULL,
  `misc1` int(30) NOT NULL,
  `misc2` int(30) NOT NULL,
  `misc3` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for guild_ranks
-- ----------------------------
DROP TABLE IF EXISTS `guild_ranks`;
CREATE TABLE `guild_ranks` (
  `guildId` int(6) unsigned NOT NULL default '0',
  `rankId` int(1) NOT NULL default '0',
  `rankName` varchar(255) NOT NULL default '',
  `rankRights` int(3) unsigned NOT NULL default '0',
  `goldLimitPerDay` int(30) NOT NULL default '0',
  `bankTabFlags0` int(30) NOT NULL default '0',
  `itemStacksPerDay0` int(30) NOT NULL default '0',
  `bankTabFlags1` int(30) NOT NULL default '0',
  `itemStacksPerDay1` int(30) NOT NULL default '0',
  `bankTabFlags2` int(30) NOT NULL default '0',
  `itemStacksPerDay2` int(30) NOT NULL default '0',
  `bankTabFlags3` int(30) NOT NULL default '0',
  `itemStacksPerDay3` int(30) NOT NULL default '0',
  `bankTabFlags4` int(30) NOT NULL default '0',
  `itemStacksPerDay4` int(30) NOT NULL default '0',
  `bankTabFlags5` int(30) NOT NULL default '0',
  `itemStacksPerDay5` int(30) NOT NULL default '0',
  PRIMARY KEY  (`guildId`,`rankId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for guilds
-- ----------------------------
DROP TABLE IF EXISTS `guilds`;
CREATE TABLE `guilds` (
  `guildId` bigint(20) NOT NULL auto_increment,
  `guildName` varchar(32) NOT NULL default '',
  `leaderGuid` bigint(20) NOT NULL default '0',
  `emblemStyle` int(10) NOT NULL default '0',
  `emblemColor` int(10) NOT NULL default '0',
  `borderStyle` int(10) NOT NULL default '0',
  `borderColor` int(10) NOT NULL default '0',
  `backgroundColor` int(10) NOT NULL default '0',
  `guildInfo` varchar(100) NOT NULL default '',
  `motd` varchar(100) NOT NULL default '',
  `createdate` int(30) NOT NULL default '0',
  `bankTabCount` int(30) NOT NULL default '0',
  `bankBalance` int(30) NOT NULL,
  PRIMARY KEY  (`guildId`),
  UNIQUE KEY `guildId` (`guildId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for instances
-- ----------------------------
DROP TABLE IF EXISTS `instances`;
CREATE TABLE `instances` (
  `id` int(30) NOT NULL,
  `mapid` int(30) NOT NULL,
  `creation` int(30) NOT NULL,
  `expiration` int(30) NOT NULL,
  `killed_npc_guids` text NOT NULL,
  `difficulty` int(30) NOT NULL,
  `creator_group` int(30) NOT NULL,
  `creator_guid` int(30) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `a` (`mapid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for mailbox
-- ----------------------------
DROP TABLE IF EXISTS `mailbox`;
CREATE TABLE `mailbox` (
  `message_id` int(30) NOT NULL default '0',
  `message_type` int(30) NOT NULL default '0',
  `player_guid` int(30) NOT NULL default '0',
  `sender_guid` int(30) NOT NULL default '0',
  `subject` varchar(255) NOT NULL default '',
  `body` longtext NOT NULL,
  `money` int(30) NOT NULL default '0',
  `attached_item_guids` varchar(200) NOT NULL default '',
  `cod` int(30) NOT NULL default '0',
  `stationary` int(30) NOT NULL default '0',
  `expiry_time` int(30) NOT NULL default '0',
  `delivery_time` int(30) NOT NULL default '0',
  `copy_made` int(30) NOT NULL default '0',
  `read_flag` int(30) NOT NULL default '0',
  `deleted_flag` int(30) NOT NULL default '0',
  PRIMARY KEY  (`message_id`),
  KEY `b` (`player_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for mailbox_insert_queue
-- ----------------------------
DROP TABLE IF EXISTS `mailbox_insert_queue`;
CREATE TABLE `mailbox_insert_queue` (
  `sender_guid` int(30) NOT NULL,
  `receiver_guid` int(30) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `body` varchar(500) NOT NULL,
  `stationary` int(30) NOT NULL,
  `money` int(30) NOT NULL,
  `item_id` int(30) NOT NULL,
  `item_stack` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for playercooldowns
-- ----------------------------
DROP TABLE IF EXISTS `playercooldowns`;
CREATE TABLE `playercooldowns` (
  `player_guid` int(30) NOT NULL,
  `cooldown_type` int(30) NOT NULL COMMENT '0 is spell, 1 is item, 2 is spell category',
  `cooldown_misc` int(30) NOT NULL COMMENT 'spellid/itemid/category',
  `cooldown_expire_time` int(30) NOT NULL COMMENT 'expiring time in unix epoch format',
  `cooldown_spellid` int(30) NOT NULL COMMENT 'spell that cast it',
  `cooldown_itemid` int(30) NOT NULL COMMENT 'item that cast it'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for playeritems
-- ----------------------------
DROP TABLE IF EXISTS `playeritems`;
CREATE TABLE `playeritems` (
  `ownerguid` int(10) unsigned NOT NULL default '0',
  `guid` bigint(10) NOT NULL auto_increment,
  `entry` int(10) unsigned NOT NULL default '0',
  `wrapped_item_id` int(30) NOT NULL default '0',
  `wrapped_creator` int(30) NOT NULL default '0',
  `creator` int(10) unsigned NOT NULL default '0',
  `count` int(10) unsigned NOT NULL default '0',
  `charges` int(10) unsigned NOT NULL default '0',
  `flags` int(10) unsigned NOT NULL default '0',
  `randomprop` int(10) unsigned NOT NULL default '0',
  `randomsuffix` int(10) NOT NULL,
  `itemtext` int(10) unsigned NOT NULL default '0',
  `durability` int(10) unsigned NOT NULL default '0',
  `containerslot` int(11) default '-1',
  `slot` int(10) NOT NULL default '0',
  `enchantments` longtext NOT NULL,
  PRIMARY KEY  (`guid`),
  KEY `ownerguid` (`ownerguid`),
  KEY `itemtext` (`itemtext`)
) ENGINE=MyISAM AUTO_INCREMENT=87328711 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for playeritems_insert_queue
-- ----------------------------
DROP TABLE IF EXISTS `playeritems_insert_queue`;
CREATE TABLE `playeritems_insert_queue` (
  `ownerguid` int(10) unsigned NOT NULL default '0',
  `entry` int(10) unsigned NOT NULL default '0',
  `wrapped_item_id` int(30) NOT NULL default '0',
  `wrapped_creator` int(30) NOT NULL default '0',
  `creator` int(10) unsigned NOT NULL default '0',
  `count` int(10) unsigned NOT NULL default '0',
  `charges` int(10) unsigned NOT NULL default '0',
  `flags` int(10) unsigned NOT NULL default '0',
  `randomprop` int(10) unsigned NOT NULL default '0',
  `randomsuffix` int(30) NOT NULL,
  `itemtext` int(10) unsigned NOT NULL default '0',
  `durability` int(10) unsigned NOT NULL default '0',
  `containerslot` int(11) NOT NULL default '-1' COMMENT 'couldnt find this being used in source',
  `slot` tinyint(4) NOT NULL default '0',
  `enchantments` longtext collate utf8_unicode_ci NOT NULL,
  KEY `ownerguid` (`ownerguid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for playerpets
-- ----------------------------
DROP TABLE IF EXISTS `playerpets`;
CREATE TABLE `playerpets` (
  `ownerguid` bigint(20) NOT NULL default '0',
  `petnumber` int(11) NOT NULL default '0',
  `name` varchar(21) NOT NULL default '',
  `entry` int(10) unsigned NOT NULL default '0',
  `fields` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `xp` int(11) NOT NULL default '0',
  `active` tinyint(1) NOT NULL default '0',
  `level` int(11) NOT NULL default '0',
  `happiness` int(11) NOT NULL default '0',
  `actionbar` varchar(200) NOT NULL default '',
  `happinessupdate` int(11) NOT NULL default '0',
  `summon` int(11) NOT NULL default '0',
  `loyaltypts` int(11) NOT NULL,
  `loyaltyupdate` int(11) NOT NULL,
  `reset_time` int(10) unsigned NOT NULL default '0',
  `reset_cost` int(10) NOT NULL default '0',
  PRIMARY KEY  (`ownerguid`,`petnumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for playerpetspells
-- ----------------------------
DROP TABLE IF EXISTS `playerpetspells`;
CREATE TABLE `playerpetspells` (
  `ownerguid` bigint(20) NOT NULL default '0',
  `petnumber` int(4) NOT NULL default '0',
  `spellid` int(4) NOT NULL default '0',
  `flags` int(4) NOT NULL default '0',
  KEY `a` (`ownerguid`),
  KEY `b` (`petnumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for playersummonspells
-- ----------------------------
DROP TABLE IF EXISTS `playersummonspells`;
CREATE TABLE `playersummonspells` (
  `ownerguid` bigint(20) NOT NULL default '0',
  `entryid` int(4) NOT NULL default '0',
  `spellid` int(4) NOT NULL default '0',
  KEY `a` (`ownerguid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for questlog
-- ----------------------------
DROP TABLE IF EXISTS `questlog`;
CREATE TABLE `questlog` (
  `player_guid` bigint(20) unsigned NOT NULL default '0',
  `quest_id` bigint(20) unsigned NOT NULL default '0',
  `slot` int(20) unsigned NOT NULL default '0',
  `time_left` bigint(20) NOT NULL default '0',
  `explored_area1` bigint(20) unsigned NOT NULL default '0',
  `explored_area2` bigint(20) unsigned NOT NULL default '0',
  `explored_area3` bigint(20) unsigned NOT NULL default '0',
  `explored_area4` bigint(20) unsigned NOT NULL default '0',
  `mob_kill1` bigint(20) NOT NULL default '0',
  `mob_kill2` bigint(20) NOT NULL default '0',
  `mob_kill3` bigint(20) NOT NULL default '0',
  `mob_kill4` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`player_guid`,`quest_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33067588 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for server_settings
-- ----------------------------
DROP TABLE IF EXISTS `server_settings`;
CREATE TABLE `server_settings` (
  `setting_id` varchar(200) NOT NULL,
  `setting_value` int(50) NOT NULL,
  PRIMARY KEY  (`setting_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for social_friends
-- ----------------------------
DROP TABLE IF EXISTS `social_friends`;
CREATE TABLE `social_friends` (
  `character_guid` int(30) NOT NULL,
  `friend_guid` int(30) NOT NULL,
  `note` varchar(100) NOT NULL,
  PRIMARY KEY  (`character_guid`,`friend_guid`),
  KEY `a` (`character_guid`),
  KEY `b` (`friend_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for social_ignores
-- ----------------------------
DROP TABLE IF EXISTS `social_ignores`;
CREATE TABLE `social_ignores` (
  `character_guid` int(30) NOT NULL,
  `ignore_guid` int(30) NOT NULL,
  PRIMARY KEY  (`character_guid`,`ignore_guid`),
  KEY `a` (`character_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tutorials
-- ----------------------------
DROP TABLE IF EXISTS `tutorials`;
CREATE TABLE `tutorials` (
  `playerId` bigint(20) unsigned NOT NULL default '0',
  `tut0` bigint(20) unsigned NOT NULL default '0',
  `tut1` bigint(20) unsigned NOT NULL default '0',
  `tut2` bigint(20) unsigned NOT NULL default '0',
  `tut3` bigint(20) unsigned NOT NULL default '0',
  `tut4` bigint(20) unsigned NOT NULL default '0',
  `tut5` bigint(20) unsigned NOT NULL default '0',
  `tut6` bigint(20) unsigned NOT NULL default '0',
  `tut7` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`playerId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
