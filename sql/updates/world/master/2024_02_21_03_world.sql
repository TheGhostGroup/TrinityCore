-- add missing creature text
DELETE FROM `creature_text` WHERE `CreatureID` = 90417;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(90417, 0, 0, 'Nobody touch it! Not until our guest arrives.', 12, 0, 100, 1, 0, 67263, 101006, 0, 'Archmage Khadgar to Player'),
(90417, 1, 0, 'Any disturbance should catalyze the sequence. Just, uh, give it a poke or something.', 12, 0, 100, 1, 0, 67264, 100058, 0, 'Archmage Khadgar to Player'),
(90417, 2, 0, 'Be careful, champion. The land of Suramar has been wild for ten thousand years.', 12, 0, 100, 0, 0, 67271, 100062, 0, 'Archmage Khadgar to Player'),
(90417, 3, 0, 'I have just a thing. Follow me.', 12, 0, 100, 0, 0, 64653, 0, 0, 'Archmage Khadgar to Player'),
(90417, 4, 0, 'Hold on just a moment. I fear I\'m a bit of a pack rat.', 12, 0, 100, 0, 0, 64654, 0, 0, 'Archmage Khadgar to Player'),
(90417, 5, 0, 'Now let\'s see... apexis crystals? No, no, those won\'t do at all.', 12, 0, 100, 0, 0, 64655, 0, 0, 'Archmage Khadgar to Player'),
(90417, 6, 0, 'Hmm, I must\'ve put it over here.', 12, 0, 100, 25, 0, 64656, 0, 0, 'Archmage Khadgar to Player'),
(90417, 7, 0, 'Arcane powder... soul shards... that\'s definitely not it...', 12, 0, 100, 0, 0, 64657, 0, 0, 'Archmage Khadgar to Player'),
(90417, 8, 0, 'A-ha! Here we are... a crystallized soul. That ought to do the trick!', 12, 0, 100, 0, 0, 64658, 0, 0, 'Archmage Khadgar to Player'),
(90417, 9, 0, 'Would you mind grabbing it? These crystals tend to have an adverse effect on non-demonic beings.', 12, 0, 100, 0, 0, 64659, 0, 0, 'Archmage Khadgar to Player'),
(90417, 10, 0, 'Be careful, $n. You\'re tapping into magic even Illidan would have considered dangerous.', 12, 0, 100, 0, 0, 64667, 0, 0, 'Archmage Khadgar to Player'),
(90417, 11, 0, '$n! Councilors, this is the demon hunter I spoke of.', 12, 0, 100, 0, 0, 64660, 0, 0, 'Archmage Khadgar to Player');