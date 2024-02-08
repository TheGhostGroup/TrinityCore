-- Gossip menu data for recruter lee

DELETE FROM `gossip_menu` WHERE `MenuId`=20486 AND `TextID`=30648;
INSERT INTO `gossip_menu` (`MenuId`, `TextID`, `VerifiedBuild`) VALUES 
(20486, 30648, 26972);

DELETE FROM `gossip_menu_option` WHERE `MenuId`=20486 AND `OptionIndex`=0;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcflag`, `VerifiedBuild`) VALUES 
(20486, 0, 0, 'I already heard that ... <Skip the introductory assignments of the Legion and begin the journey to Dalaran.>', 123132, 1, 1, 26972);

UPDATE `creature_template` SET `npcflag`=`npcflag`|1|2, `gossip_menu_id`=20486 WHERE `entry`=107934;