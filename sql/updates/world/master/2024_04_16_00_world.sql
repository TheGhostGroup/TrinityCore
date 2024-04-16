-- Move Spawns to correct range for expansion & Set correct phaseid

SET @CGUID := 600019;

UPDATE `creature` SET `guid`=@CGUID+0, `PhaseID`=7510 WHERE `guid` = 21011106; -- illidari enforcer
UPDATE `creature_addon` SET `guid`=@CGUID+0 WHERE `guid` = 21011106;
UPDATE `creature` SET `guid`=@CGUID+1, `PhaseID`=7510 WHERE `guid` = 21011105; -- illidari enforcer
UPDATE `creature_addon` SET `guid`=@CGUID+1 WHERE `guid` = 21011105;
UPDATE `creature` SET `guid`=@CGUID+2, `PhaseID`=7510 WHERE `guid` = 21011104; -- illidari enforcer
UPDATE `creature_addon` SET `guid`=@CGUID+1 WHERE `guid` = 21011104;
UPDATE `creature` SET `guid`=@CGUID+3, `PhaseID`=7510 WHERE `guid` = 21011107; -- Captive Wyrmtongue
UPDATE `creature_addon` SET `guid`=@CGUID+3 WHERE `guid` = 21011107;
UPDATE `creature` SET `guid`=@CGUID+4, `PhaseID`=7510 WHERE `guid` = 21011109; -- Falara Nightsong
UPDATE `creature_addon` SET `guid`=@CGUID+4 WHERE `guid` = 21011107;
UPDATE `creature` SET `guid`=@CGUID+5, `PhaseID`=7510 WHERE `guid` = 21011108; -- Elerion Bladedancer
UPDATE `creature_addon` SET `guid`=@CGUID+4 WHERE `guid` = 21011108;
UPDATE `creature` SET `guid`=@CGUID+6, `PhaseID`=7510 WHERE `guid` = 21011103; -- illidari Darkdealer
UPDATE `creature_addon` SET `guid`=@CGUID+4 WHERE `guid` = 21011103;

-- Add phase area data
DELETE FROM `phase_area` WHERE `AreaId` = 1519 AND `PhaseId` = 7510;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(1519, 7510, 'Cosmetic - See Illidari In Mage Quarter Stormwind');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 26 AND `SourceGroup`=7510 AND `SourceEntry` = 1519);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 7510, 1519, 0, 0, 47, 0, 44120, 8 | 2 | 64, 0, 0, 'Apply Phase 7510 if Quest (44120) Is taken, completed, rewarded'); -- Illidari Allies


-- Add quest data to Elerion Bladedancer
DELETE FROM `creature_questender` WHERE `id`=101004;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(101004, 44473), -- A Weapon of the Alliance
(101004, 44120); -- Illidari Allies

DELETE FROM `creature_queststarter` WHERE `quest`=44663 AND `id`=101004;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(101004, 44663); -- In the blink of an Eye