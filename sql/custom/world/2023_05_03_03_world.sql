-- Jaina Proudmore Stormwind Castle - The Fallen Lion
SET @CGUID := 650939;

DELETE FROM `creature` WHERE `guid`=@CGUID+0;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 100428, 0, 1519, 6292, '0', '5619', 0, 0, 0, -8365.736328125, 230.4652862548828125, 157.1566314697265625, 1.650442957878112792, 120, 0, 0, 2588000, 304080, 0, 0, 0, 0, 26972); -- Lady Jaina Proudmoore (Area: Stormwind Keep - Difficulty: 0) (Auras: 187027 - Invisible Man Transform) - !!! might be temporary spawn !!!

DELETE FROM `phase_area` WHERE `AreaId`=6292 AND `PhaseId`=5689;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(6292, 5619, "Cosmetic: See Jaina Proudmore In Stormwind Castle");

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 26 AND `SourceGroup`=5619 AND `SourceEntry` = 6292);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 5619, 6292, 0, 0, 47, 0, 40517, 8, 0, 0, 'Apply Phase 5619 if Quest 40517 is taken'),
(26, 5619, 6292, 0, 0, 47, 0, 40517, 64, 0, 1, 'Apply Phase 5619 if Quest 40517 is not completed');