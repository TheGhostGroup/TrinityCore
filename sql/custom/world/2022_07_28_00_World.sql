-- Missing Spawns In Stormwind Keep

SET @CGUID := 650002;
SET @OGUID := 500000;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+1;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(@CGUID+0, 92553, 0, 1519, 6292, '0', 0, 7001, 0, -1, 0, 0, -8398.37, 332.507, 147.014, 3.8187, 300, 0, 0, 80, 0, 0, 0, 0, 0, 0, 0, '', 0), -- Kirin Tor Summoner #1
(@CGUID+1, 92553, 0, 1519, 6292, '0', 0, 7001, 0, -1, 0, 0, -8403, 328.907, 147.014, 0.677107, 300, 0, 0, 80, 0, 0, 0, 0, 0, 0, 0, '', 0); -- Kirin Tor Summoner #2

DELETE FROM `creature_template_addon` WHERE `entry` = 92553; /*92553 (Kirin Tor Summoner) - Garrison Magus*/
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`,  `auras`) VALUES
(92553, 0, 0, 0, 1, 0, 0, 0, 0, 0, '174827'); -- 92553 (Kirin Tor Summoner) - Garrison Magus

-- Portal To Dalaran
DELETE FROM `gameobject` WHERE `guid`=@OGUID+0;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES 
(@OGUID+0, 216350, 0, 1519, 6292, '0', 0, 7001, 0, -1, -8401.06, 330.757, 147.014, 5.15268, 0, 0, -0.535631, 0.844452, 120, 255, 1, '', 25549);

DELETE FROM `phase_area` WHERE `AreaId` = 6292 AND PhaseId = 7001;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(6292, 7001, "Cosmetic: Add dalaran portal and npcs to stormwind castle");

DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 26 AND SourceGroup = 7001 AND SourceEntry = 6292;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 7001, 6292, 0, 1, 47, 0, 44663, 0x2|0x8|0x64, 0, 0, 0, 0, '', 'Condition: Add phase 7001 if quest 44663 is in progress, completed, rewarded');

DELETE FROM spell_script_names WHERE ScriptName = "spell_dalaran_teleportation";
INSERT INTO spell_script_names VALUES
(228329, "spell_dalaran_teleportation"),
(228330, "spell_dalaran_teleportation");