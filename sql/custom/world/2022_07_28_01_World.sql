SET @CGUID := 650000;

DELETE FROM `phase_area` WHERE `AreaId` = 5154 AND PhaseId = 7510;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(5154, 7510, "Cosmetic: Illidari In Mage Quarter");

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+1;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 101004, 0, 1519, 5154, '0', '7510', 0, 0, 0, -8895.939453125, 1023.25, 124.4965286254882812, 4.140537738800048828, 120, 0, 0, 64720, 500, 0, 0, 0, 0, 26972), -- Elerion Bladedancer 101004 (Area: 5154 - Difficulty: 0)
(@CGUID+1, 95791, 0, 1519, 5154, '0', '7510', 0, 0, 0, -8892.5576171875, 1016.7379150390625, 124.4131927490234375, 6.143558979034423828, 120, 0, 0, 6472, 100, 0, 0, 0, 0, 26972); -- Falara Nightsong 95791 (Area: 5154 - Difficulty: 0)

DELETE FROM `creature_addon` WHERE `guid` = @CGUID+0;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(@CGUID+0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- Elerion Bladedancer
(@CGUID+1, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''); -- Falara Nightsong

DELETE FROM `creature_questender` WHERE `quest`=44473 AND `id`=101004;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(101004, 44473); -- A Weapon of the Alliance

DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 26 AND SourceGroup = 7001 AND SourceEntry = 6292;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 7510, 5154, 0, 1, 47, 0, 44663, 0x2|0x8|0x64, 0, 0, 0, 0, '', 'Condition: Add phase 7510 if quest 44473 is in progress, completed, rewarded');