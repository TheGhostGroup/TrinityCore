-- Chef Mouldier, Cooking Trainer and Vendor
INSERT INTO `gossip_menu_option_trainer` (`MenuId`, `OptionIndex`, `TrainerId`) VALUES (7171, 0, 136);
DELETE FROM npc_vendor WHERE entry = 3551;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, type, BonusListIDs, PlayerConditionID, IgnoreFiltering, VerifiedBuild) VALUES
(7171,1,21219,0,0,0,1, NULL,0,0,1),
(7171,2,3713,0,0,0,1, NULL,0,0,1),
(7171,3,2692,0,0,0,1, NULL,0,0,1),
(7171,4,21099,0,0,0,1, NULL,0,0,1),
(7171,5,22647,0,0,0,1, NULL,0,0,1),
(7171,6,27687,0,0,0,1, NULL,0,0,1),
(7171,7,159,0,0,0,1, NULL,0,0,1),
(7171,8,2678,0,0,0,1, NULL,0,0,1),
(7171,9,30817,0,0,0,1, NULL,0,0,1);