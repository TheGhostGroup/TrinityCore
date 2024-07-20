-- Jace Darkweaver Stormwind Castle

SET @CGUID := 650938;

DELETE FROM `creature` WHERE `guid`=@CGUID+0;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 100675, 0, 1519, 6292, '0', '5689', 0, 0, 0, -8369.698, 240.36632, 155.39098, 5.3982115, 120, 0, 0, 32360, 500, 0, 0, 0, 0, 26972); -- 100675 (Area: 6292 - Difficulty: 0)

DELETE FROM `phase_area` WHERE `AreaId`=6292 AND `PhaseId`=5689;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(6292, 5689, "Cosmetic: See Jace Darkweaver In Stormwind Castle");

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 26 AND `SourceGroup`=5689 AND `SourceEntry` = 6292);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 5689, 6292, 0, 0, 47, 0, 40517, 2 | 64, 0, 0, 'Apply Phase 6292 if Quest 40517 is completed | rewarded'),
(26, 5689, 6292, 0, 0, 47, 0, 40593, 2, 0, 1, 'Apply Phase 6292 if Quest 40593 is not completed');

DELETE FROM `gossip_menu` WHERE(`MenuID`=19134 AND `TextID`=28003);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(19134, 28003, 26972); -- 100675 Jace Darkweaver

-- Need to check gossip menu option fields
DELETE FROM `gossip_menu_option` WHERE (`OptionIndex`=0 AND `MenuID`=19134);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES
(19134, 0, 0, 'Show me the proof.', 0, 1, 1, 26972);

DELETE FROM `creature_text` WHERE `CreatureID`=100675;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(100675, 0, 0, 'Say the word and I shall reveal the enemy!', 12, 0, 100, 0, 0, 0, 122115, 0, 'Jace Darkweaver to Player');

DELETE FROM `creature_queststarter` WHERE `quest`=40593 AND `id`=100675;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(100675, 40593); -- Demons Among Us

DELETE FROM `creature_text` WHERE `CreatureID` = 100675 AND `GroupID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(100675, 0, 0, 'Say the word and I shall reveal the enemy!', 12, 0, 100, 0, 0, 0, 122115, 0, 'Jace Darkweaver to Player');