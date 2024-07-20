--
-- Table structure for table `adventure_journal`
--
DROP TABLE IF EXISTS `adventure_journal`;
CREATE TABLE `adventure_journal` (
    `ID` int(10) NOT NULL DEFAULT 0,
    `Name_Lang` text NOT NULL,
    `Description_Lang` text NOT NULL,
    `ButtonText_Lang` text NOT NULL,
    `RewardDescription_Lang` text NOT NULL,
    `ContinueDescription_Lang` text NOT NULL,
    `TextureFileDataID` int(10) NOT NULL DEFAULT 0,
    `ItemID` int(10) NOT NULL DEFAULT 0,
    `LfgDungeonID` smallint(6) DEFAULT 0 NOT NULL,
    `QuestID` smallint(6) DEFAULT 0 NOT NULL,
    `BattleMasterListID` smallint(6) DEFAULT 0 NOT NULL,
	`BonusPlayerConditionID1` smallint(6) DEFAULT 0 NOT NULL,
    `BonusPlayerConditionID2` smallint(6) DEFAULT 0 NOT NULL,
    `CurrencyType` smallint(6) DEFAULT 0 NOT NULL,
    `WorldMapAreaID` smallint(6) DEFAULT 0 NOT NULL,
    `Type` tinyint(4) unsigned NOT NULL DEFAULT 0,
    `Flags` tinyint(4) unsigned NOT NULL DEFAULT 0,
    `ButtonActionType` tinyint(4) unsigned NOT NULL DEFAULT 0,
    `PriorityMin` tinyint(4) unsigned NOT NULL DEFAULT 0,
    `PriorityMax` tinyint(4) unsigned NOT NULL DEFAULT 0,
	`BonusValue1` tinyint(4) unsigned NOT NULL DEFAULT 0,
    `BonusValue2` tinyint(4) unsigned NOT NULL DEFAULT 0,
    `CurrencyQuantity` tinyint(4) unsigned NOT NULL DEFAULT 0,
    `PlayerConditionID` int(10) NOT NULL DEFAULT 0,
    `ItemQuantity` int(10) NOT NULL DEFAULT 0,
	PRIMARY KEY (`ID`)
) ENGINE = MyISAM collate = utf8_unicode_ci;

--
-- Table structure for table `adventure_journal_locale`
--
DROP TABLE IF EXISTS `adventure_journal_locale`;
CREATE TABLE `adventure_journal_locale`
(
    `ID` int(10) unsigned NOT NULL DEFAULT '0',
    `locale` varchar(4) NOT NULL,
    `Name_Lang` text NULL,
    `Description_Lang` text NULL,
    `ButtonText_Lang` text NULL,
    `RewardDescription_Lang` text NULL,
    `ContinueDescription_Lang` text NULL,
    `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
	PRIMARY KEY (`ID`)
) ENGINE = MyISAM collate = utf8_unicode_ci;