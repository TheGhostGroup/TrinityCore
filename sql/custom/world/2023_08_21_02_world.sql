-- conversation Felstorm's Plea

DELETE FROM `conversation_template` WHERE `Id`=1264;
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `LastLineEndTime`, `VerifiedBuild`) VALUES
(1264, 2982, 9842, 26365);

DELETE FROM `conversation_line_template` WHERE `Id`=2982;
INSERT INTO `conversation_line_template` (`Id`, `StartTime`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(2982, 0, 0, 0, 0, 26365);

DELETE FROM `conversation_actor_template` WHERE `id`=51396;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES
(51396, 102850, 67760, 26365); -- Meryl Felstorm

DELETE FROM `conversation_actors` WHERE `ConversationId`=1264;
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `Idx`, `VerifiedBuild`) VALUES
(1264, 51396, 0, 26365); -- Full: 0x00000000000000000000000000000000 Creature/0 R3149/S9980 Map: 1220 Entry: 102700 (Meryl Felstorm) Low: 451794

DELETE FROM `smart_scripts` WHERE `entryorguid` = 41035 AND `source_type` = 5;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(41035, 5, 0, 0, 47, 0, 100, 0, 0, 0, 0, 0, 0, 143, 745, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On Quest Pushed - Start Conversation");

DELETE FROM `quest_template_addon` WHERE `ID` = 41035;
INSERT INTO `quest_template_addon` (`ID`, `ScriptName`) VALUES 
(41035, 'SmartQuest');

-- conversation The Dreadlords prize

DELETE FROM `conversation_template` WHERE `Id`=3364;
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `LastLineEndTime`, `VerifiedBuild`) VALUES
(3364, 7069, 25979, 26365);

DELETE FROM `conversation_line_template` WHERE `Id`=7069;
INSERT INTO `conversation_line_template` (`Id`, `StartTime`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(7069, 0, 0, 0, 0, 26365);

DELETE FROM `conversation_actors` WHERE `ConversationId`=3364;
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `Idx`, `VerifiedBuild`) VALUES
(3364, 51396, 0, 26365); -- Full: 0x00000000000000000000000000000000 Creature/0 R3149/S9980 Map: 1220 Entry: 102700 (Meryl Felstorm) Low: 454487 我们得立刻去紫罗兰