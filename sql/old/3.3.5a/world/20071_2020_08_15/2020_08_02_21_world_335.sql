-- Remove loot from creatures with CREATURE_DIFFICULTYFLAGS_NO_LOOT & CREATURE_DIFFICULTYFLAGS_NO_CORPSE_UPON_DEATH
UPDATE `creature_template` SET `lootid` = 0, `mingold` = 0, `maxgold` = 0 WHERE `entry` IN (21425,26045,26224,26458,26690,26691,26692,30819,30822,30823,26811,26812,26852,27463,27500,27656,31561,28006,28018,28094,28170,28220,28312,28389,28529,28530,28559,28594,28654,28729,31616,28730,31615,28731,31617,28752,29018,29307,31365,29378,29498,29551,29639,29696,30005,30008,30010,30011,30154,30492,31142,31812,31813,32161,32467,32664,33651,35325,34108);
DELETE FROM `creature_loot_template` WHERE `Entry` IN (21425,26045,26224,26458,26690,26691,26692,30819,26811,26812,26852,27463,27500,27656,31561,28006,28018,28094,28170,28220,28312,28389,28529,28530,28559,28594,28654,28729,31616,28730,31615,28731,31617,28752,29018,29307,31365,29378,29498,29551,29639,29696,30005,30008,30010,30011,30154,30492,31142,31812,31813,32161,32467,32664,33651,35325);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 1 AND `SourceGroup` IN (26811,26812,28529);