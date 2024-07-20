-- Vendor Lyrai

DELETE FROM npc_vendor WHERE entry = 3587;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, type, BonusListIDs, PlayerConditionID, IgnoreFiltering, VerifiedBuild) VALUES
(3587,1,4496,0,0,0,1, NULL,0,0,1),
(3587,2,159,0,0,0,1, NULL,0,0,1),
(3587,3,4540,0,0,0,1, NULL,0,0,1);
