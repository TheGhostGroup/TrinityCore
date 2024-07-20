-- Vance Undergloom, Enchanting trainer

UPDATE `creature_template` SET `npcflag` = 81 WHERE `entry` = 5695;
UPDATE `gossip_menu_option` SET `OptionNpcFlag` = 80 WHERE `MenuId` = 4202 AND `OptionIndex` = 0;

DELETE FROM `gossip_menu_option_trainer` WHERE `MenuId` = 4202;
INSERT INTO `gossip_menu_option_trainer` (`MenuId`, `OptionIndex`, `TrainerId`) VALUES (4202, 0, 62);