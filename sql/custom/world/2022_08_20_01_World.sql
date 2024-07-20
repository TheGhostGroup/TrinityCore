-- Vazario Linkgrease, Goblin Engineering trainer

UPDATE `creature_template` SET `npcflag` = 81 WHERE `entry` = 8738;
DELETE FROM `gossip_menu_option` WHERE MenuId = 1465;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
(1465, 0, 3, 'Greetings!', 0, 5, 4, 0);

DELETE FROM `gossip_menu_option_trainer` WHERE MenuId = 1465;
INSERT INTO `gossip_menu_option_trainer` (`MenuId`, `OptionIndex`, `TrainerId`) VALUES 
(1465, 0, 405);