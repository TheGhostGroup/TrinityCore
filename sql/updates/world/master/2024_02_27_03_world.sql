-- Hunter playerchoice

DELETE FROM `playerchoice` WHERE `ChoiceId`=240;
INSERT INTO `playerchoice` (`ChoiceId`, `Question`, `VerifiedBuild`) VALUES 
(240, 'Which weapon should we pursue first?', 25549);

DELETE FROM `playerchoice_response` WHERE `ChoiceId`=240;
INSERT INTO `playerchoice_response` (`ChoiceId`, `ResponseId`, `Index`, `ChoiceArtFileId`, `Header`, `Answer`, `Description`, `Confirmation`, `VerifiedBuild`) VALUES 
(240, 505, 0, 1390108, 'Survival', 'Select', 'The Highmountain tribe lost their greatest weapon, the ancient spear of Huln Highmountain, long ago to a magically corrupted monstrosity.\n\nThey ask you to travel to Stormheim, kill their nemesis, and reclaim the spear for the fight against the Legion.', 'CONFIRM_ARTIFACT_CHOICE', 25549),
(240, 506, 1, 1390107, 'Marksmanship', 'Select', 'Many years ago, the ranger Alleria Windrunner wielded her family bow, Thas''dorah, to batle the Legion. Her current whereabouts are unknown.\n\nIf Alleria could be located, her weapon would become a valuable asset in the war against the demons.', 'CONFIRM_ARTIFACT_CHOICE', 25549),
(240, 504, 2, 1390106, 'Beast Mastery', 'Select', 'In ancient times, a vrykul warlord stole a rifle infused with the power of storms. He used the artifact''s might to conquer his rivals on the Broken Isles.\n\nDelve into the warlord''s tomb and recover this mighty weapon!', 'CONFIRM_ARTIFACT_CHOICE', 25549);

DELETE FROM `playerchoice_response_reward` WHERE `ChoiceId`=240;
INSERT INTO `playerchoice_response_reward` (`ChoiceId`, `ResponseId`, `TitleId`, `PackageId`, `SkillLineId`, `SkillPointCount`, `ArenaPointCount`, `HonorPointCount`, `Money`, `Xp`, `VerifiedBuild`) VALUES 
(240, 505, 0, 0, 0, 0, 0, 0, 0, 0, 25549),
(240, 506, 0, 0, 0, 0, 0, 0, 0, 0, 25549),
(240, 504, 0, 0, 0, 0, 0, 0, 0, 0, 25549);

DELETE FROM `playerchoice_response_reward_item` WHERE `ChoiceId`=240;
INSERT INTO `playerchoice_response_reward_item` (`ChoiceId`, `ResponseId`, `Index`, `ItemId`, `BonusListIDs`, `Quantity`, `VerifiedBuild`) VALUES 
(240, 505, 0, 128808, '', 0, 25549),
(240, 506, 0, 128826, '', 0, 25549),
(240, 504, 0, 128861, '', 0, 25549);