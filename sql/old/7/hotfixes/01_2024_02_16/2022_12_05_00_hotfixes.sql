-- add missing broadcast text
DELETE FROM `broadcast_text` WHERE `ID` IN (146920, 145893, 146231, 147276);
INSERT INTO `broadcast_text` (`ID`, `Text`, `Text1`, `EmoteID1`, `EmoteID2`, `EmoteID3`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmotesID`, `LanguageID`, `Flags`, `ConditionID`, `SoundEntriesID1`, `SoundEntriesID2`, `VerifiedBuild`) VALUES 
(146920, 'This is a very old place. Broken by rage, yet sculpted by the threads of fate. \n\nThere is much to be learned here. I believe I might linger a while.\n\nBe seeing you.', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26124),
(145893, 'With Alleria\'s teaching, we can avoid the fate suffered by those on Mac\'Aree.', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26124),
(146231, 'Although broken and scattered, this rift holds many secrets. It will teach us much about the nature of the shadows.', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26124),
(147276, 'Locus-Walker is an intriguing fellow.\n\nAlleria seems to trust him... to a point.\n\nI think we can learn much from him, so long as we remain wary of his true intentions.', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26124);
