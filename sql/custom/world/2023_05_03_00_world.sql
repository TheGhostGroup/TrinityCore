-- Meryl Felstorm Voilet Gate Dalaran. Felstorm's Plea

SET @CGUID := 650937;

DELETE FROM `creature` WHERE `guid`=@CGUID+0;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 102700, 1220, 7502, 7506, '0', '5852', 0, 0, 0, -843.19964599609375, 4431.20068359375, 742.6202392578125, 4.81061410903930664, 7200, 0, 0, 16941, 0, 0, 0, 0, 0, 26972); -- 102700 (Area: 7506 - Difficulty: 0)

DELETE FROM `creature_addon` WHERE `guid`=@CGUID+0;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(@CGUID+0, 0, 0, 0, 9858, 0, 0, 0, ''); -- 102700

DELETE FROM `phase_area` WHERE `AreaId` = 7505 AND `PhaseId` = 5852;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(7502, 5852, 'Cosmetic - See Meryl Felstorm (Mage Class Orderhall Intro)');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 26 AND `SourceGroup` = 5852 AND `SourceEntry` = 7502);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 5852, 7502, 0, 1, 47, 0, 41035, 8|2|64, 0, 0, 'Allow phase 5852 if Quest (41035) in progress, completed, rewarded');