-- missing gossip menu option
DELETE FROM `gossip_menu_option` WHERE `MenuId` = 19870 AND `OptionIndex`=1;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionText`, `OptionBroadcastTextId`, `VerifiedBuild`) VALUES 
(19870, 1, 'I\\\'ve heard this tale before... <Skip the scenario and begin your next mission.>', 162120, 27843);

-- update
UPDATE `gossip_menu_option` SET `OptionType` = 1, `OptionNpcFlag` = 1 WHERE `MenuId` =  19870; -- OptionType ： 1 (GOSSIP_OPTION_GOSSIP)