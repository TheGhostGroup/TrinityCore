-- Add kirin tor guardians to dalaran & first of gameobject spawns

SET @CGUID := 650899;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+18;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 104091, 1220, 7502, 7506, '0', '0', 0, 0, 0, -808.7882080078125, 4447.38818359375, 737.8956298828125, 5.572862625122070312, 7200, 0, 0, 12944, 0, 0, 0, 0, 0, 26972), -- Kirin Tor Guardian (Area: -Unknown- - Difficulty: 0) CreateObject1
(@CGUID+1, 104091, 1220, 7502, 7506, '0', '0', 0, 0, 0, -816.76214599609375, 4436.99755859375, 738.1500244140625, 5.637675285339355468, 7200, 0, 0, 12944, 0, 0, 0, 0, 0, 26972), -- Kirin Tor Guardian (Area: -Unknown- - Difficulty: 0) CreateObject1 (Auras: 79849 - Molten Armor)
(@CGUID+2, 104091, 1220, 7502, 7506, '0', '0', 0, 0, 0, -874.11456298828125, 4439.42529296875, 737.7181396484375, 4.083477497100830078, 7200, 0, 0, 12944, 0, 0, 0, 0, 0, 26972), -- Kirin Tor Guardian (Area: -Unknown- - Difficulty: 0) CreateObject1 (Auras: 79849 - Molten Armor)
(@CGUID+3, 104091, 1220, 7502, 7506, '0', '0', 0, 0, 0, -824.36285400390625, 4369.9306640625, 738.68206787109375, 1.827683806419372558, 7200, 0, 0, 12944, 0, 0, 0, 0, 0, 26972), -- Kirin Tor Guardian (Area: -Unknown- - Difficulty: 0) CreateObject1
(@CGUID+4, 104091, 1220, 7502, 7506, '0', '0', 0, 0, 0, -831.21875, 4367.4306640625, 738.6795654296875, 2.047047853469848632, 7200, 0, 0, 12944, 0, 0, 0, 0, 0, 26972), -- Kirin Tor Guardian (Area: -Unknown- - Difficulty: 0) CreateObject1 (Auras: 79849 - Molten Armor)
(@CGUID+5, 104091, 1220, 7502, 7506, '0', '0', 0, 0, 0, -865.98956298828125, 4432.37353515625, 737.6597900390625, 4.067461013793945312, 7200, 0, 0, 12944, 0, 0, 0, 0, 0, 26972), -- Kirin Tor Guardian (Area: -Unknown- - Difficulty: 0) CreateObject1 (Auras: 79849 - Molten Armor)
(@CGUID+6, 104091, 1220, 7502, 7581, '0', '0', 0, 0, 0, -871.9757080078125, 4497.86474609375, 733.0135498046875, 2.490695714950561523, 7200, 0, 0, 12944, 0, 0, 0, 0, 0, 26972), -- Kirin Tor Guardian (Area: -Unknown- - Difficulty: 0) CreateObject1 (Auras: 79849 - Molten Armor)
(@CGUID+7, 104091, 1220, 7502, 7581, '0', '0', 0, 0, 0, -879.5555419921875, 4488.15966796875, 732.946533203125, 2.490695714950561523, 7200, 0, 0, 12944, 0, 0, 0, 0, 0, 26972), -- Kirin Tor Guardian (Area: -Unknown- - Difficulty: 0) CreateObject1 (Auras: 79849 - Molten Armor)
(@CGUID+8, 104091, 1220, 7502, 0, '0', '0', 0, 0, 0, -817.31597900390625, 4513.8349609375, 730.80621337890625, 0.223829105496406555, 7200, 0, 0, 12944, 0, 0, 0, 0, 0, 26972), -- Kirin Tor Guardian (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 79849 - Molten Armor)
(@CGUID+9, 104091, 1220, 7502, 0, '0', '0', 0, 0, 0, -805.7725830078125, 4504.1103515625, 731.09344482421875, 1.565029025077819824, 7200, 0, 0, 12944, 0, 0, 0, 0, 0, 26972), -- Kirin Tor Guardian (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+10, 104091, 1220, 7502, 0, '0', '0', 0, 0, 0, -852.69964599609375, 4561.5849609375, 727.67919921875, 4.537541389465332031, 7200, 0, 0, 12944, 0, 0, 0, 0, 0, 26972), -- Kirin Tor Guardian (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+11, 104091, 1220, 7502, 0, '0', '0', 0, 0, 0, -864.3194580078125, 4563.26904296875, 727.66845703125, 4.948144912719726562, 7200, 0, 0, 12944, 0, 0, 0, 0, 0, 26972), -- Kirin Tor Guardian (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+12, 104091, 1220, 7502, 7581, '0', '0', 0, 0, 0, -962.1475830078125, 4506.59912109375, 734.3028564453125, 5.655215263366699218, 7200, 0, 0, 12944, 0, 0, 0, 0, 0, 26972), -- Kirin Tor Guardian (Area: -Unknown- - Difficulty: 0) CreateObject1 (Auras: 79849 - Molten Armor)
(@CGUID+13, 104091, 1220, 7502, 7581, '0', '0', 0, 0, 0, -971.05035400390625, 4487.0927734375, 734.719970703125, 6.100269794464111328, 7200, 0, 0, 12944, 0, 0, 0, 0, 0, 26972), -- Kirin Tor Guardian (Area: -Unknown- - Difficulty: 0) CreateObject1
(@CGUID+14, 104091, 1220, 7502, 7581, '0', '0', 0, 0, 0, -729.092041015625, 4447.75341796875, 733.67498779296875, 2.60710310935974121, 7200, 0, 0, 12944, 0, 0, 0, 0, 0, 26972), -- Kirin Tor Guardian (Area: -Unknown- - Difficulty: 0) CreateObject1 (Auras: 79849 - Molten Armor)
(@CGUID+15, 104091, 1220, 7502, 7581, '0', '0', 0, 0, 0, -720.904541015625, 4468.0927734375, 733.15771484375, 2.914339780807495117, 7200, 0, 0, 12944, 0, 0, 0, 0, 0, 26972), -- Kirin Tor Guardian (Area: -Unknown- - Difficulty: 0) CreateObject1
(@CGUID+16, 104091, 1220, 7502, 7581, '0', '0', 0, 0, 0, -848.5242919921875, 4595.06005859375, 748.91064453125, 4.346125125885009765, 7200, 0, 0, 12944, 0, 0, 0, 0, 0, 26972), -- Kirin Tor Guardian (Area: -Unknown- - Difficulty: 0) CreateObject1
(@CGUID+17, 104091, 1220, 7502, 7581, '0', '0', 0, 0, 0, -860.81597900390625, 4596.9375, 748.9029541015625, 4.93155527114868164, 7200, 0, 0, 12944, 0, 0, 0, 0, 0, 26972), -- Kirin Tor Guardian (Area: -Unknown- - Difficulty: 0) CreateObject1 (Auras: 79849 - Molten Armor)
(@CGUID+18, 104091, 1220, 7502, 7581, '0', '0', 0, 0, 0, -736.02606201171875, 4567.36474609375, 728.53863525390625, 3.708817005157470703, 7200, 0, 0, 12944, 0, 0, 0, 0, 0, 26972); -- Kirin Tor Guardian (Area: -Unknown- - Difficulty: 0) CreateObject1 (Auras: 79849 - Molten Armor)

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+18;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(@CGUID+0, 0, 0, 0, 0, 0, 0, 0, ''), -- Kirin Tor Guardian
(@CGUID+1, 0, 0, 0, 0, 0, 0, 0, '79849'), -- Kirin Tor Guardian - 79849 - Molten Armor
(@CGUID+2, 0, 0, 0, 0, 0, 0, 0, '79849'), -- Kirin Tor Guardian - 79849 - Molten Armor
(@CGUID+3, 0, 0, 0, 0, 0, 0, 0, ''), -- Kirin Tor Guardian
(@CGUID+4, 0, 0, 0, 0, 0, 0, 0, '79849'), -- Kirin Tor Guardian - 79849 - Molten Armor
(@CGUID+5, 0, 0, 0, 0, 0, 0, 0, '79849'), -- Kirin Tor Guardian - 79849 - Molten Armor
(@CGUID+6, 0, 0, 0, 0, 0, 0, 0, '79849'), -- Kirin Tor Guardian - 79849 - Molten Armor
(@CGUID+7, 0, 0, 0, 0, 0, 0, 0, '79849'), -- Kirin Tor Guardian - 79849 - Molten Armor
(@CGUID+8, 0, 0, 0, 0, 0, 0, 0, '79849'), -- Kirin Tor Guardian - 79849 - Molten Armor
(@CGUID+9, 0, 0, 0, 0, 0, 0, 0, ''), -- Kirin Tor Guardian
(@CGUID+10, 0, 0, 0, 0, 0, 0, 0, ''), -- Kirin Tor Guardian
(@CGUID+11, 0, 0, 0, 0, 0, 0, 0, ''), -- Kirin Tor Guardian
(@CGUID+12, 0, 0, 0, 0, 0, 0, 0, '79849'), -- Kirin Tor Guardian - 79849 - Molten Armor
(@CGUID+13, 0, 0, 0, 0, 0, 0, 0, ''), -- Kirin Tor Guardian
(@CGUID+14, 0, 0, 0, 0, 0, 0, 0, '79849'), -- Kirin Tor Guardian - 79849 - Molten Armor
(@CGUID+15, 0, 0, 0, 0, 0, 0, 0, ''), -- Kirin Tor Guardian
(@CGUID+16, 0, 0, 0, 0, 0, 0, 0, ''), -- Kirin Tor Guardian
(@CGUID+17, 0, 0, 0, 0, 0, 0, 0, '79849'), -- Kirin Tor Guardian - 79849 - Molten Armor
(@CGUID+18, 0, 0, 0, 0, 0, 0, 0, '79849'); -- Kirin Tor Guardian - 79849 - Molten Armor

