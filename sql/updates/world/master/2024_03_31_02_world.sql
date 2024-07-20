-- Add missing creature text entries for danath trollbane

DELETE FROM `creature_text` WHERE `CreatureID`=96183;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(96183, 0, 0, 'Look there, upon that terrible sight. How many disasters must we face before we can at last find peace?', 12, 0, 100, 0, 0, 63543, 114697, 0, 'Danath Trollbane to Player');
