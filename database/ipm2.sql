-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.27 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for ipm
CREATE DATABASE IF NOT EXISTS `ipm` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ipm`;


-- Dumping structure for table ipm.account
CREATE TABLE IF NOT EXISTS `account` (
  `idc` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL DEFAULT '0',
  `notes` varchar(255) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL DEFAULT '0',
  `createdOn` datetime NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `updatedOn` datetime NOT NULL,
  PRIMARY KEY (`idc`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table ipm.account: ~1 rows (approximately)
DELETE FROM `account`;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`idc`, `description`, `notes`, `createdBy`, `createdOn`, `updatedBy`, `updatedOn`) VALUES
	(1, 'CREATOR', '0', 1, '2014-07-28 12:56:15', 1, '2014-07-28 12:56:15');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;


-- Dumping structure for table ipm.address
CREATE TABLE IF NOT EXISTS `address` (
  `idc` int(11) NOT NULL AUTO_INCREMENT,
  `typeId` int(11) NOT NULL DEFAULT '0',
  `entityId` int(11) NOT NULL DEFAULT '0',
  `entityTypeId` int(11) NOT NULL DEFAULT '0',
  `countryId` int(11) NOT NULL DEFAULT '0',
  `stateId` int(11) NOT NULL DEFAULT '0',
  `cityId` int(11) NOT NULL DEFAULT '0',
  `street` varchar(255) NOT NULL DEFAULT '0',
  `number` varchar(255) NOT NULL DEFAULT '0',
  `letter` varchar(255) NOT NULL DEFAULT '0',
  `postalcode` varchar(255) NOT NULL DEFAULT '0',
  `coordinates` varchar(255) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL DEFAULT '0',
  `createdOn` datetime NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `updatedOn` datetime NOT NULL,
  PRIMARY KEY (`idc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ipm.address: ~0 rows (approximately)
DELETE FROM `address`;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;


-- Dumping structure for table ipm.entity
CREATE TABLE IF NOT EXISTS `entity` (
  `idc` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` int(11) DEFAULT NULL,
  `applicationEntityId` int(11) DEFAULT NULL COMMENT 'person, project, account, company',
  `applicationRoleId` int(11) DEFAULT NULL COMMENT 'CONTRACTOR,SUB',
  `userGroupId` int(11) DEFAULT NULL COMMENT 'SUPER_ADMIN,ADMIN',
  `companyName` varchar(50) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `username` char(128) NOT NULL,
  `password` char(128) DEFAULT NULL,
  `salt` char(128) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `lastLogin` datetime DEFAULT NULL,
  `lastLogout` datetime DEFAULT NULL,
  `loginCount` int(11) DEFAULT NULL,
  `createdBy` int(11) NOT NULL DEFAULT '0',
  `createdOn` datetime NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `updatedOn` datetime NOT NULL,
  PRIMARY KEY (`idc`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table ipm.entity: ~1 rows (approximately)
DELETE FROM `entity`;
/*!40000 ALTER TABLE `entity` DISABLE KEYS */;
INSERT INTO `entity` (`idc`, `accountId`, `applicationEntityId`, `applicationRoleId`, `userGroupId`, `companyName`, `firstName`, `lastName`, `username`, `password`, `salt`, `notes`, `lastLogin`, `lastLogout`, `loginCount`, `createdBy`, `createdOn`, `updatedBy`, `updatedOn`) VALUES
	(1, 1, 19, 22, 17, NULL, 'Andreas', 'Iosifelis', '80e58b6aa13b7418908191f7587b47e01c12913cc190e2f9bcf07a828d1e1eb32497bd84fc3d510d344ba6a5aa52374029f0460735a16d4f9b71a8a98da7e358', '19b0653ba1dd78aa50b53a4dd8bcc5098eabd29fafa53ebaa5de525918c4a347235a60e0fabcb5cbac378320c9a55a311ad4424c8e26d80f53903f067cc8b0b2', 'db6f9854897334663765ea139a10d2c0b647c1a63364f37fd978a88fcf1d8a7e60665b06a53246a15460da789e422ecd7a91912c22d37774a32a9f23c4845ee1', NULL, NULL, NULL, NULL, 1, '2014-07-28 13:13:12', 1, '2014-07-28 13:13:12');
/*!40000 ALTER TABLE `entity` ENABLE KEYS */;


-- Dumping structure for table ipm.grouprights
CREATE TABLE IF NOT EXISTS `grouprights` (
  `idc` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` int(11) NOT NULL DEFAULT '0',
  `groupId` int(11) NOT NULL DEFAULT '0',
  `entityId` int(11) NOT NULL DEFAULT '0',
  `create` tinyint(4) NOT NULL DEFAULT '0',
  `read` tinyint(4) NOT NULL DEFAULT '0',
  `update` tinyint(4) NOT NULL DEFAULT '0',
  `delete` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ipm.grouprights: ~0 rows (approximately)
DELETE FROM `grouprights`;
/*!40000 ALTER TABLE `grouprights` DISABLE KEYS */;
/*!40000 ALTER TABLE `grouprights` ENABLE KEYS */;


-- Dumping structure for table ipm.identity
CREATE TABLE IF NOT EXISTS `identity` (
  `idc` int(11) NOT NULL AUTO_INCREMENT,
  `typeId` int(11) NOT NULL DEFAULT '0',
  `entityId` int(11) NOT NULL DEFAULT '0',
  `entityTypeId` int(11) NOT NULL DEFAULT '0',
  `basic` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL DEFAULT '0',
  `createdOn` datetime NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `updatedOn` datetime NOT NULL,
  PRIMARY KEY (`idc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ipm.identity: ~0 rows (approximately)
DELETE FROM `identity`;
/*!40000 ALTER TABLE `identity` DISABLE KEYS */;
/*!40000 ALTER TABLE `identity` ENABLE KEYS */;


-- Dumping structure for table ipm.invite
CREATE TABLE IF NOT EXISTS `invite` (
  `idc` int(11) NOT NULL AUTO_INCREMENT,
  `statusId` int(11) NOT NULL DEFAULT '0',
  `projectId` int(11) NOT NULL DEFAULT '0',
  `accountId` int(11) NOT NULL DEFAULT '0',
  `contactId` int(11) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL DEFAULT '0',
  `createdOn` datetime NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `updatedOn` datetime NOT NULL,
  PRIMARY KEY (`idc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ipm.invite: ~0 rows (approximately)
DELETE FROM `invite`;
/*!40000 ALTER TABLE `invite` DISABLE KEYS */;
/*!40000 ALTER TABLE `invite` ENABLE KEYS */;


-- Dumping structure for table ipm.lookup
CREATE TABLE IF NOT EXISTS `lookup` (
  `idc` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT '0',
  `accountId` int(11) NOT NULL DEFAULT '0',
  `editable` tinyint(1) NOT NULL DEFAULT '0',
  `selectable` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL DEFAULT '0',
  `createdOn` datetime NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `updatedOn` datetime NOT NULL,
  PRIMARY KEY (`idc`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Dumping data for table ipm.lookup: ~23 rows (approximately)
DELETE FROM `lookup`;
/*!40000 ALTER TABLE `lookup` DISABLE KEYS */;
INSERT INTO `lookup` (`idc`, `parentId`, `accountId`, `editable`, `selectable`, `description`, `createdBy`, `createdOn`, `updatedBy`, `updatedOn`) VALUES
	(1, 1, 1, 0, 0, 'ROOT', 1, '2014-07-28 11:19:04', 1, '2014-07-28 11:19:04'),
	(2, 1, 1, 0, 1, 'ENTITY_TYPES', 1, '2014-07-28 11:23:14', 1, '2014-07-28 11:23:14'),
	(3, 1, 1, 0, 1, 'USER_GROUPS', 1, '2014-07-28 11:23:23', 1, '2014-07-28 11:23:23'),
	(4, 1, 1, 0, 1, 'CITIES', 1, '2014-07-28 11:23:52', 1, '2014-07-28 11:23:52'),
	(5, 1, 1, 0, 1, 'STATES', 1, '2014-07-28 11:23:59', 1, '2014-07-28 11:23:59'),
	(6, 1, 1, 0, 1, 'COUNTRIES', 1, '2014-07-28 11:24:06', 1, '2014-07-28 11:24:06'),
	(7, 1, 1, 1, 1, 'TELEPHONE_TYPES', 1, '2014-07-28 11:25:06', 1, '2014-07-28 11:25:06'),
	(8, 1, 1, 1, 1, 'WEBPROFILE_TYPES', 1, '2014-07-28 11:25:14', 1, '2014-07-28 11:25:14'),
	(9, 1, 1, 1, 1, 'ADDRESS_TYPES', 1, '2014-07-28 11:25:23', 1, '2014-07-28 11:25:23'),
	(10, 1, 1, 0, 1, 'APPLICATION_ENTITIES', 1, '2014-07-28 11:26:41', 1, '2014-07-28 11:26:41'),
	(11, 1, 1, 1, 1, 'APPLICATION_ROLES', 1, '2014-07-28 11:27:12', 1, '2014-07-28 11:27:12'),
	(12, 1, 1, 0, 1, 'IDENTITY_TYPES', 1, '2014-07-28 11:28:41', 1, '2014-07-28 11:28:41'),
	(17, 3, 1, 0, 1, 'SUPER_ADMIN', 1, '2014-07-28 11:40:24', 1, '2014-07-28 11:40:24'),
	(18, 3, 1, 0, 1, 'ADMIN', 1, '2014-07-28 11:40:39', 1, '2014-07-28 11:40:39'),
	(19, 10, 1, 0, 1, 'PERSON', 1, '2014-07-28 12:47:12', 1, '2014-07-28 12:47:12'),
	(20, 10, 1, 0, 1, 'PROJECT', 1, '2014-07-28 12:47:19', 1, '2014-07-28 12:47:19'),
	(22, 11, 1, 0, 1, 'USER', 1, '2014-07-28 12:48:43', 1, '2014-07-28 12:48:43'),
	(23, 11, 1, 0, 1, 'CONTACT', 1, '2014-07-28 12:48:58', 1, '2014-07-28 12:48:58'),
	(24, 11, 1, 0, 1, 'CUSTOMER', 1, '2014-07-28 12:49:03', 1, '2014-07-28 12:49:03'),
	(25, 11, 1, 0, 1, 'COMPANY', 1, '2014-07-28 12:49:08', 1, '2014-07-28 12:49:08'),
	(26, 10, 1, 0, 1, 'ACCOUNT', 1, '2014-07-28 13:01:04', 1, '2014-07-28 13:01:04'),
	(27, 1, 0, 0, 1, 'PROJECT_STATUS', 1, '2014-07-28 13:48:21', 1, '2014-07-28 13:48:21'),
	(28, 1, 0, 0, 1, 'INVITE_STATUS', 1, '2014-07-28 13:48:31', 1, '2014-07-28 13:48:31');
/*!40000 ALTER TABLE `lookup` ENABLE KEYS */;


-- Dumping structure for table ipm.offer
CREATE TABLE IF NOT EXISTS `offer` (
  `idc` int(11) NOT NULL AUTO_INCREMENT,
  `inviteId` int(11) NOT NULL DEFAULT '0',
  `accountId` int(11) NOT NULL DEFAULT '0',
  `report` longtext NOT NULL,
  `total` float NOT NULL,
  `createdBy` int(11) NOT NULL DEFAULT '0',
  `createdOn` datetime NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `updatedOn` datetime NOT NULL,
  PRIMARY KEY (`idc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ipm.offer: ~0 rows (approximately)
DELETE FROM `offer`;
/*!40000 ALTER TABLE `offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `offer` ENABLE KEYS */;


-- Dumping structure for table ipm.project
CREATE TABLE IF NOT EXISTS `project` (
  `idc` int(11) NOT NULL AUTO_INCREMENT,
  `statusId` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `notes` varchar(255) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL DEFAULT '0',
  `createdOn` datetime NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `updatedOn` datetime NOT NULL,
  PRIMARY KEY (`idc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ipm.project: ~0 rows (approximately)
DELETE FROM `project`;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;


-- Dumping structure for table ipm.telephone
CREATE TABLE IF NOT EXISTS `telephone` (
  `idc` int(11) NOT NULL AUTO_INCREMENT,
  `typeId` int(11) NOT NULL DEFAULT '0',
  `entityId` int(11) NOT NULL DEFAULT '0',
  `entityTypeId` int(11) NOT NULL DEFAULT '0',
  `basic` tinyint(1) NOT NULL DEFAULT '0',
  `telephone` varchar(255) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL DEFAULT '0',
  `createdOn` datetime NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `updatedOn` datetime NOT NULL,
  PRIMARY KEY (`idc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ipm.telephone: ~0 rows (approximately)
DELETE FROM `telephone`;
/*!40000 ALTER TABLE `telephone` DISABLE KEYS */;
/*!40000 ALTER TABLE `telephone` ENABLE KEYS */;


-- Dumping structure for table ipm.webprofile
CREATE TABLE IF NOT EXISTS `webprofile` (
  `idc` int(11) NOT NULL AUTO_INCREMENT,
  `typeId` int(11) NOT NULL DEFAULT '0',
  `entityId` int(11) NOT NULL DEFAULT '0',
  `entityTypeId` int(11) NOT NULL DEFAULT '0',
  `basic` tinyint(1) NOT NULL DEFAULT '0',
  `description` int(11) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL DEFAULT '0',
  `createdOn` datetime NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `updatedOn` datetime NOT NULL,
  PRIMARY KEY (`idc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ipm.webprofile: ~0 rows (approximately)
DELETE FROM `webprofile`;
/*!40000 ALTER TABLE `webprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `webprofile` ENABLE KEYS */;


-- Dumping structure for procedure ipm.GET_LOOKUP
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `GET_LOOKUP`(IN `PARENT` INT)
BEGIN
select * from lookup where parentId = PARENT;
END//
DELIMITER ;


-- Dumping structure for procedure ipm.GET_LOOKUPTYPES
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `GET_LOOKUPTYPES`()
BEGIN
select * from lookup where parentId = 1 and idc != 1;
END//
DELIMITER ;


-- Dumping structure for procedure ipm.INSERT_LOOKUP
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `INSERT_LOOKUP`(IN `PARENT` INT, IN `EDITABLE` TINYINT, IN `SELECTABLE` TINYINT, IN `DESCRIPTION` VARCHAR(50))
BEGIN

insert into lookup (parentId, selectable, editable, description, createdOn, createdBy, updatedOn, updatedBy)
values
(PARENT, SELECTABLE, EDITABLE, DESCRIPTION, NOW(), 1, NOW(), 1);

select * from lookup;
select * from lookup where parentId = PARENT;

END//
DELIMITER ;


-- Dumping structure for procedure ipm.INSERT_LOOKUPTYPE
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `INSERT_LOOKUPTYPE`(IN `SELECTABLE` TINYINT, IN `EDITABLE` TINYINT, IN `DESCRIPTION` VARCHAR(50))
BEGIN
insert into lookup (parentId, selectable, editable, description, createdBy, createdOn, updatedBy, updatedOn)
values(1, SELECTABLE, EDITABLE, DESCRIPTION, 1, NOW(), 1, NOW());
select * from lookup where parentId = 1;
END//
DELIMITER ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
