-- Lieutenant Karter <War Mount Quartermaster> Alliance

DELETE FROM npc_vendor WHERE entry = 12783;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, type, BonusListIDs, PlayerConditionID, IgnoreFiltering, VerifiedBuild) VALUES
(12783,1,29465,0,0,5977,1, NULL,0,0,1),
(12783,2,29467,0,0,5977,1, NULL,0,0,1),
(12783,3,29468,0,0,5977,1, NULL,0,0,1),
(12783,4,29471,0,0,5977,1, NULL,0,0,1),
(12783,5,35906,0,0,5977,1, NULL,0,0,1);