-- creature text entries for Echo of First Arcanist Thalyssra

DELETE FROM `creature_text` WHERE `CreatureID`=98267;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(98267, 1, 0, 'Ith\\\'nala kanesh!', 12, 0, 100, 0, 0, 67270, 100256, 0, 'Echo of First Arcanist Thalyssra to Player'),
(98267, 2, 0, 'I am Thalyssra of the shal\\\'dorei... the Nightborne. First Arcanist in the court of Suramar.', 12, 0, 100, 0, 0, 67266, 100089, 0, 'Echo of First Arcanist Thalyssra to Player'),
(98267, 3, 0, 'My people have made a dire pact. One that spells doom for this world.', 12, 0, 100, 0, 0, 67267, 100091, 0, 'Echo of First Arcanist Thalyssra to Player'),
(98267, 4, 0, 'Time is short. If you have found this message, you are capable of finding me as well.', 12, 0, 100, 0, 0, 67268, 100094, 0, 'Echo of First Arcanist Thalyssra to Player'),
(98267, 5, 0, 'Make haste for Suramar. You may be our last hope.', 12, 0, 100, 0, 0, 67269, 100096, 0, 'Echo of First Arcanist Thalyssra to Player');