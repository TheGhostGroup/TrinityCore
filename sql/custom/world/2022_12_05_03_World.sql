SET @AERYLIA = 95579;

UPDATE `creature_template` SET `gossip_menu_id` = 18724 WHERE `entry` = @AERYLIA;

DELETE FROM `gossip_menu` WHERE `MenuID` = 18724;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES 
(18724, 27208, 26972);

DELETE FROM `gossip_menu_option` WHERE `MenuId` = 18724;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
(18724, 0, 0, 'Dalaran.', 0, 1, 1, 0),
(18724, 1, 0, 'Stormheim.', 0, 1, 1, 0),
(18724, 2, 0, 'Azsuna.', 0, 1, 1, 0),
(18724, 3, 0, 'Val\'sharah.', 0, 1, 1, 0),
(18724, 4, 0, 'Highmountain.', 0, 1, 1, 0),
(18724, 5, 0, 'Suramar.', 0, 1, 1, 0),
(18724, 6, 0, 'The Broken Shore.', 0, 1, 1, 0);

