-- Vendor: Zargh
DELETE FROM `npc_vendor` WHERE `item` IN (3372, 8925, 10648, 18256, 20824, 39501, 39502, 40411);
UPDATE `gossip_menu_option` SET `OptionType` = 3, `OptionNpcFlag` = 128 WHERE `MenuId` = 4341 AND `OptionIndex` = 0;
DELETE FROM npc_vendor WHERE entry = 3489;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, type, BonusListIDs, PlayerConditionID, IgnoreFiltering, VerifiedBuild) VALUES
(3489,1,117,0,0,0,1, NULL,0,0,1),
(3489,2,3735,0,0,0,1, NULL,0,0,1),
(3489,3,2287,0,0,0,1, NULL,0,0,1),
(3489,4,3770,0,0,0,1, NULL,0,0,1),
(3489,5,3771,0,0,0,1, NULL,0,0,1),
(3489,6,4599,0,0,0,1, NULL,0,0,1),
(3489,7,8952,0,0,0,1, NULL,0,0,1);