-- Add creature text for archmage khadgar in aszuna
DELETE FROM `creature_text` WHERE `CreatureID`=93326;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(93326, 1, 0, 'Hurry. The Illidari are about to be overrun.', 12, 0, 100, 25, 0, 52607, 0, 0, 'Archmage Khadgar to Player');