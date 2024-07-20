-- mage artifact choice
DELETE FROM `playerchoice` WHERE `ChoiceId`=265;
INSERT INTO `playerchoice` (`ChoiceId`, `Question`, `VerifiedBuild`) VALUES 
(265, 'Which weapon should we pursue first?', 26972);

DELETE FROM `playerchoice_response` WHERE `ChoiceId`=265;
INSERT INTO `playerchoice_response` (`ChoiceId`, `ResponseId`, `Index`, `ChoiceArtFileId`, `Header`, `Answer`, `Description`, `Confirmation`, `VerifiedBuild`) VALUES 
(265, 584, 0, 1389389, 'Arcane', 'Select', 'Aluneth was most notably wielded for a time by Aegwynn, the only female Guardian of Tirisfal, although stories indicate that it is far older than she.\n\nToward the end of Aegwynn\'s life, she entrusted the staff to the Blue Dragonflight. Deeming the staff too dangerous to use, they locked it away in a secret vault, where it remains still.', 'CONFIRM_ARTIFACT_CHOICE', 26972),
(265, 585, 1, 1389390, 'Fire', 'Select', '"Flamestrike" in its native tongue, Felo\'melorn was borne into battle by members of the Sunstrider family as they proved their valor in the War of the Ancients, during the Troll Wars, and against the death knight Arthas Menethil.\n\nUltimately, the sword was lost in the frigid wastes of Northrend.', 'CONFIRM_ARTIFACT_CHOICE', 26972),
(265, 586, 2, 1389391, 'Frost', 'Select', 'This greatstaff was wielded by Alodi, the first Guardian of Tirisfal. He bore the staff into many battles against Legion forces for the century in which he served as Guardian.\n\nShortly after Alodi', 'CONFIRM_ARTIFACT_CHOICE', 26972);

DELETE FROM `playerchoice_response_reward` WHERE `ChoiceId`=265;
INSERT INTO `playerchoice_response_reward` (`ChoiceId`, `ResponseId`, `TitleId`, `PackageId`, `SkillLineId`, `SkillPointCount`, `ArenaPointCount`, `HonorPointCount`, `Money`, `Xp`, `VerifiedBuild`) VALUES 
(265, 584, 0, 0, 0, 0, 0, 0, 0, 0, 26972),
(265, 585, 0, 0, 0, 0, 0, 0, 0, 0, 26972),
(265, 586, 0, 0, 0, 0, 0, 0, 0, 0, 26972);

DELETE FROM `playerchoice_response_reward_item` WHERE `ChoiceId`=265;
INSERT INTO `playerchoice_response_reward_item` (`ChoiceId`, `ResponseId`, `Index`, `ItemId`, `BonusListIDs`, `Quantity`, `VerifiedBuild`) VALUES 
(265, 584, 0, 127857, '', 0, 26972),
(265, 585, 0, 128820, '', 0, 26972),
(265, 586, 0, 128862, '', 0, 26972);



