-- Add Archmage Khadgar to krasus landing dalaran broken isles

SET @CGUID := 650017;

-- Creature Spawn
DELETE FROM `creature` WHERE `guid` = @CGUID+0;
INSERT INTO `creature`(`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnDifficulties`,`PhaseId`,`PhaseGroup`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`unit_flags2`,`unit_flags3`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES
(@CGUID+0, 86563, 1220, 7502, 7505, 0, 5610, 0, 0, 0, -833.87, 4276.53, 746.338, 0.516954, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'',26972);

-- Phase Conditions
DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 26 AND SourceGroup = 7001 AND SourceEntry = 6292;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 5610, 7506, 0, 1, 47, 0, 39718, 0x2|0x8|0x64, 0, 0, 0, 0, '', 'Condition: Allow phase 5610 if quest state of Paradise Lost (39718) is in progress or completed or rewareded');

-- Phase Area
DELETE FROM `phase_area` WHERE `PhaseId` = 5610;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(7506, 5610, 'Archmage Khadgar At Krasus Landing - Dalaran Broken Isles - Down to Azsuna');

-- Quest Stuff
DELETE FROM `creature_questender` WHERE `quest`=39718 AND `id`=86563;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(86563, 39718); -- Paradise Lost
