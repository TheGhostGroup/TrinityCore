DELETE FROM `creature_text` WHERE `CreatureID`=111109;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(111109, 0, 0, 'The resources of Dalaran are at your disposal. From here, heroes of Alliance and Horde alike will search for the Pillars of Creation!', 12, 0, 100, 1, 0, 0, 0, 0, 'Emissary Auldbridge to Player'),
(111109, 1, 0, 'I\'ve heard rumors of powerful artifacts that may be of use in your campaign. Keep an eye out and a useful lead just might present itself!', 12, 0, 100, 1, 0, 0, 0, 0, 'Emissary Auldbridge to Player'),
(111109, 2, 0, 'Now I must attend to other visitors. Good luck, $n!', 12, 0, 100, 1, 0, 0, 0, 0, 'Emissary Auldbridge to Player');
