-- Shaman artifact choce data.

DELETE FROM `playerchoice` WHERE `ChoiceId`=266;
INSERT INTO `playerchoice` (`ChoiceId`, `Question`, `VerifiedBuild`) VALUES 
(266, 'Which weapon should we pursue first?', 26654);

DELETE FROM `playerchoice_response` WHERE `ChoiceId`=266;
INSERT INTO `playerchoice_response` (`ChoiceId`, `ResponseId`, `Index`, `ChoiceArtFileId`, `Header`, `Answer`, `Description`, `Confirmation`, `VerifiedBuild`) VALUES 
(266, 587, 0, 1389399, 'Enhancement', 'Select', 'The Doomhammer has fallen into the Maelstrom. It would be wise to keep it from falling into the wrong hands.\n\nTravel with Thrall into Deepholm to pursue the missing artifact. Beware - the demon Geth\'xun also plummeted into the Maelstrom and may still be alive.', 'CONFIRM_ARTIFACT_CHOICE', 26654),
(266, 588, 1, 1389398, 'Elemental', 'Select', 'The gladiator Rehgar knows of a powerful weapon that may aid us against the Legion.\n\nAfter the Pandaren Campaign, the weapons of the storm god Ra-Den were discovered beneath the Throne of Thunder. They were placed in the care of the White Tiger, who will give them only to one who is worthy. Rehgar will help you prove your worth!', 'CONFIRM_ARTIFACT_CHOICE', 26654),
(266, 589, 2, 1389400, 'Restoration', 'Select', 'It is said that Queen Azshara wielded a scepter that had command over the sea and the waters of life.\n\nErunak has long sought the location of this artifact, and one of his shaman was close to finding it when she disappeared. Has she found it? Could the legends be true? What could such an artifact do in the hands of a talented shaman?', 'CONFIRM_ARTIFACT_CHOICE', 26654);


DELETE FROM `playerchoice_response_reward` WHERE `ChoiceId`=266;
INSERT INTO `playerchoice_response_reward` (`ChoiceId`, `ResponseId`, `TitleId`, `PackageId`, `SkillLineId`, `SkillPointCount`, `ArenaPointCount`, `HonorPointCount`, `Money`, `Xp`, `VerifiedBuild`) VALUES 
(266, 587, 0, 0, 0, 0, 0, 0, 0, 0, 26654),
(266, 588, 0, 0, 0, 0, 0, 0, 0, 0, 26654),
(266, 589, 0, 0, 0, 0, 0, 0, 0, 0, 26654);

DELETE FROM `playerchoice_response_reward_item` WHERE `ChoiceId`=266;
INSERT INTO `playerchoice_response_reward_item` (`ChoiceId`, `ResponseId`, `Index`, `ItemId`, `BonusListIDs`, `Quantity`, `VerifiedBuild`) VALUES 
(266, 587, 0, 128819, '', 0, 26654),
(266, 588, 0, 128935, '', 0, 26654),
(266, 589, 0, 128911, '', 0, 26654);