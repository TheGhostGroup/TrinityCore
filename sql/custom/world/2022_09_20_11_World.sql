-- Raider Bork <War Mount Quartermaster> Horde

DELETE FROM npc_vendor WHERE entry = 12796;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, type, BonusListIDs, PlayerConditionID, IgnoreFiltering, VerifiedBuild) VALUES
(12796,1,29466,0,0,5977,1, NULL,0,0,1),
(12796,2,29469,0,0,5977,1, NULL,0,0,1),
(12796,3,29470,0,0,5977,1, NULL,0,0,1),
(12796,4,29472,0,0,5977,1, NULL,0,0,1),
(12796,5,34129,0,0,5977,1, NULL,0,0,1);