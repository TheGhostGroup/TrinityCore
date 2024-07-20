-- Vendor Dellylah

DELETE FROM npc_vendor WHERE entry = 6091;
UPDATE gossip_menu_option SET OptionType = 3, OptionNpcFlag = 128 WHERE MenuId = 10526 AND OptionIndex = 0;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, type, BonusListIDs, PlayerConditionID, IgnoreFiltering, VerifiedBuild) VALUES
(6091,1,8766,0,0,0,1, NULL,0,0,1),
(6091,2,21031,0,0,0,1, NULL,0,0,1),
(6091,3,21033,0,0,0,1, NULL,0,0,1),
(6091,4,1645,0,0,0,1, NULL,0,0,1),
(6091,5,16168,0,0,0,1, NULL,0,0,1),
(6091,6,21030,0,0,0,1, NULL,0,0,1),
(6091,7,1708,0,0,0,1, NULL,0,0,1),
(6091,8,16169,0,0,0,1, NULL,0,0,1),
(6091,9,1205,0,0,0,1, NULL,0,0,1),
(6091,10,16170,0,0,0,1, NULL,0,0,1),
(6091,11,1179,0,0,0,1, NULL,0,0,1),
(6091,12,16167,0,0,0,1, NULL,0,0,1),
(6091,13,159,0,0,0,1, NULL,0,0,1),
(6091,14,16166,0,0,0,1, NULL,0,0,1);
