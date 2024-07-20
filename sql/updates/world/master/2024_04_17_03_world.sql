-- Arcane Anomaly Spawn - Khadgar's Discovery

SET @CGUID := 600027;

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 98266, 1220, 7502, 7581, 0, '5312', 0, 0, 0, -851.243, 4631.835, 749.7222, 1.475768, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 26365); -- Arcane Anomaly (Area: -0- - Difficulty: 0) (Auras: 193606 - -0-)

DELETE FROM `creature_addon` WHERE `guid`=@CGUID+0;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+0, 0, 0, 0, 1, 0, 0, 0, 0, '193606'); -- Arcane Anomaly - 193606

DELETE FROM `phase_area` WHERE `AreaId`=4411 AND `PhaseId`=7439;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(7581, 5312, "Cosmetic: Arcane Anomaly - Khadgar's Discovery");

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 26 AND `SourceGroup`=5312 AND `SourceEntry` = 7581);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 5312, 7581, 0, 0, 47, 0, 39985, 2|8|64, 0, 0, 'Apply Phase 5312 if Quest 39985 is taken, completed, rewarded'),
(26, 5312, 7581, 0, 0, 47, 0, 39987, 1, 0, 0, 'Apply Phase 5312 if Quest 39987 is not taken');