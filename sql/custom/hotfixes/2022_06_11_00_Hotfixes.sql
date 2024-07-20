-- Clean up more startup errors

-- deDE
DELETE FROM `broadcast_text_locale` WHERE `id` IN (144568, 142621, 141927, 141776, 141775, 141501);
DELETE FROM `broadcast_text_locale` WHERE `id` IN (141469, 141468, 141467, 141466, 141465, 141464);
DELETE FROM `broadcast_text_locale` WHERE `id` IN (141305, 141161, 141160, 141151, 141150, 141148);
DELETE FROM `broadcast_text_locale` WHERE `id` IN (141146, 141145, 141141, 141128, 141126, 141105);
DELETE FROM `broadcast_text_locale` WHERE `id` IN (141104, 141103, 141102, 141101, 141099, 141098);
DELETE FROM `broadcast_text_locale` WHERE `id` IN (141097, 141070, 141069, 140968, 140945, 140944);
DELETE FROM `broadcast_text_locale` WHERE `id` IN (140942, 140919, 140918, 140917, 140797, 140795);
DELETE FROM `broadcast_text_locale` WHERE `id` IN (140760, 140736, 140735, 140734, 140733, 140732);
DELETE FROM `broadcast_text_locale` WHERE `id` IN (140731, 140730, 140712, 140711, 140710, 140709);
DELETE FROM `broadcast_text_locale` WHERE `id` IN (140708, 140644, 140475, 140474, 140473, 140472);

-- itIT

DELETE FROM `broadcast_text_locale` WHERE `id` IN (144568, 142621, 141927, 141776, 141775, 141501);
DELETE FROM `broadcast_text_locale` WHERE `id` IN (141469, 141468, 141467, 141466, 141465, 141464);
DELETE FROM `broadcast_text_locale` WHERE `id` IN (141305, 141161, 141160, 141151, 141150, 141148);
DELETE FROM `broadcast_text_locale` WHERE `id` IN (141146, 141145, 141141, 141128, 141126, 141105);
DELETE FROM `broadcast_text_locale` WHERE `id` IN (141104, 141103, 141102, 141101, 141099, 141098);
DELETE FROM `broadcast_text_locale` WHERE `id` IN (141097, 141070, 141069, 140968, 140945, 140944);
DELETE FROM `broadcast_text_locale` WHERE `id` IN (140942, 140919, 140918, 140917, 140797, 140795);
DELETE FROM `broadcast_text_locale` WHERE `id` IN (140760, 140736, 140735, 140734, 140733, 140732);
DELETE FROM `broadcast_text_locale` WHERE `id` IN (140731, 140730, 140712, 140711, 140710, 140709);
DELETE FROM `broadcast_text_locale` WHERE `id` IN (140708, 140644, 140475, 140474, 140472, 140473);

-- add missing broadcast text to hotfixes and clean up errors
DELETE FROM `broadcast_text` WHERE `ID` IN (147197, 147233, 147226, 147228, 147229, 147222, 147231, 147223, 147224, 146022, 144262);
INSERT INTO `broadcast_text` (`ID`, `Text`, `Text1`, `EmoteID1`, `EmoteID2`, `EmoteID3`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmotesID`, `LanguageID`, `Flags`, `ConditionID`, `SoundEntriesID1`, `SoundEntriesID2`, `VerifiedBuild`) VALUES 
(147197, 'Aye, I have a moment. What do ye want?', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26124),
(147233, 'I have spent too long depending on visions to guide me.\n\nIt is time we forge our own fate. Part of that is finding new allies to stand beside us.', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26124),
(147226, 'The campaign on Argus was costly, but necessary. Now we must focus on defending our own lands.\n\nWe cannot sit idle while those Horde monsters build their forces.', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26124),
(147228, 'The young king reminds me so much of his father. More than he realizes, I think.\n\nHe\'s the right person to lead this effort and bring new faces into the Alliance.', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26124),
(147229, '', 'It seems like only yesterday that those of us who follow the way of the Tushui pledged to fight for the Alliance. \n\nThough I have great respect for King Anduin, I must confess that I found his father a more capable sparring partner.\n\nPlease do not tell him this.\n\n<Aysa bows.>', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26124),
(147222, '', 'The Alliance needs strength. Unity. The king\'s plan to bring in fresh blood is a good one.\n\nBut I can\'t help thinking of my own Dark Iron clan. Of the fractures that divide us.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26124),
(147231, '', '<Tyrande says nothing. Her brow is furrowed, as if deep in thought.>', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26124),
(147223, '', 'One day Silvermoon will stand again on the side of the Alliance. I know it.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26124),
(147224, 'Much about Azeroth has changed in the years I was absent. But the Alliance remains an ideal worth fighting for.\n\nI will do everything in my power to make it stronger.', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26124),
(146022, 'War is coming to Azeroth, $n. It is time for us to bring in new allies to join our cause.', '', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 26124),
(144262, '', '<Alleria\'s eyes drift from the statue\'s cold stone visage down to the plaque engraved with her epitaph.>', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26124);