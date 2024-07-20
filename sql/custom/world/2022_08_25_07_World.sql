--
DELETE FROM `gossip_menu_option` WHERE `MenuId` = 11637;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
(11637, 0, 3, 'Train Me!', 0, 5, 0, 0);
INSERT INTO `gossip_menu_option_trainer` (`MenuId`, `OptionIndex`, `TrainerId`) VALUES (11637, 0, 10);
