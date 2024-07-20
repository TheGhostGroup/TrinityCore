DELETE FROM `conversation_actors` WHERE (`Idx`=0 AND `ConversationId` IN (745));
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `ConversationActorGuid`, `Idx`, `VerifiedBuild`) VALUES
(745, 48432, 0, 0, 26972);

DELETE FROM `conversation_actor_template` WHERE `Id` IN (48432);
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES
(48432, 99456, 64011, 26972);

DELETE FROM `conversation_line_template` WHERE `Id` IN (1774);
INSERT INTO `conversation_line_template` (`Id`, `StartTime`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(1774, 0, 270, 0, 0, 26972);

DELETE FROM `conversation_template` WHERE `Id` IN (745);
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `LastLineEndTime`, `ScriptName`, `VerifiedBuild`) VALUES
(745, 1774, 10065, '', 26972);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 40714 AND `source_type` = 5;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(40714, 5, 0, 0, 47, 0, 100, 0, 0, 0, 0, 0, 0, 143, 745, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On Quest Pushed - Start Conversation");

DELETE FROM `quest_template_addon` WHERE `ID` = 40714;
INSERT INTO `quest_template_addon` (`ID`, `ScriptName`) VALUES 
(40714, 'SmartQuest');