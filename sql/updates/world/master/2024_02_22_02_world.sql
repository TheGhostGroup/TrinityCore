-- paladin artifact choice

DELETE FROM `playerchoice` WHERE `ChoiceId`=235;
INSERT INTO `playerchoice` (`ChoiceId`, `Question`, `VerifiedBuild`) VALUES 
(235, 'Which weapon should we pursue first?', 26972);

DELETE FROM `playerchoice_response` WHERE `ChoiceId`=235;
INSERT INTO `playerchoice_response` (`ChoiceId`, `ResponseId`, `Index`, `ChoiceArtFileId`, `Header`, `Answer`, `Description`, `Confirmation`, `VerifiedBuild`) VALUES 
(235, 488, 0, 1271766, 'Holy', 'Select', 'A secret order of paladins has been watching over the resting place of the great titan watcher Tyr for hundreds of years. Histories tell that his powerful warhammer as buried there with him.\n\nRecent events have threatened the safety of their secret charge, and they have appealed for help from paladins across Azeroth.', 'CONFIRM_ARTIFACT_CHOICE', 26972),
(235, 489, 1, 1271767, 'Protection', 'Select', 'An ancient vrykul saga speaks of a shield crafted by Tyr himself. During the Winterskorn War it was used to expose Loken\'s lies to the vrykul and convert many to Tyr\'s cause.\n\nThe shield final resting place of the shield was lost to time, but rumors point to one who might know the final chapters of its story.', 'CONFIRM_ARTIFACT_CHOICE', 26972),
(235, 490, 2, 1271768, 'Retribution', 'Select', 'During our failed assault on the Broken Shore, Highlord Tirion Fordring was lost, and with him our greatest weapon against the Legion... the Ashbringer.\n\nWe need to return to the Broken Shore and recover Tirion and the Ashbringer at all costs.', 'CONFIRM_ARTIFACT_CHOICE', 26972);

DELETE FROM `playerchoice_response_reward` WHERE `ChoiceId`=235;
INSERT INTO `playerchoice_response_reward` (`ChoiceId`, `ResponseId`, `TitleId`, `PackageId`, `SkillLineId`, `SkillPointCount`, `ArenaPointCount`, `HonorPointCount`, `Money`, `Xp`, `VerifiedBuild`) VALUES 
(235, 488, 0, 0, 0, 0, 0, 0, 0, 0, 26972),
(235, 489, 0, 0, 0, 0, 0, 0, 0, 0, 26972),
(235, 490, 0, 0, 0, 0, 0, 0, 0, 0, 26972);

DELETE FROM `playerchoice_response_reward_item` WHERE `ChoiceId`=235;
INSERT INTO `playerchoice_response_reward_item` (`ChoiceId`, `ResponseId`, `Index`, `ItemId`, `BonusListIDs`, `Quantity`, `VerifiedBuild`) VALUES 
(235, 488, 0, 128823, '', 0, 26972),
(235, 489, 0, 128866, '', 0, 26972),
(235, 490, 0, 120978, '', 0, 26972);