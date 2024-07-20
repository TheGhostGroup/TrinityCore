-- warlock artifact choice data

DELETE FROM `playerchoice` WHERE `ChoiceId`=245;
INSERT INTO `playerchoice` (`ChoiceId`, `Question`, `VerifiedBuild`) VALUES 
(245, 'Which weapon should we pursue first?', 25549);

DELETE FROM `playerchoice_response` WHERE `ChoiceId`=245;
INSERT INTO `playerchoice_response` (`ChoiceId`, `ResponseId`, `Index`, `ChoiceArtFileId`, `Header`, `Answer`, `Description`, `Confirmation`, `VerifiedBuild`) VALUES 
(245, 525, 0, 1389403, 'Destruction', 'Select', 'Crafted by hundreds of eredar warlocks and the Dark Titan himself, it was used for terrible acts of destruction. Capable of tearing gaps in reality to other worlds, it was the key to the invasion of Azeroth.\n\nLater used by Nerzhul, he thoughtlessly unleashed its power on Draenor, causing its near destruction. Thought to be long lost, it has returned to the hands of the Legion.', 'CONFIRM_ARTIFACT_CHOICE', 25549),
(245, 524, 1, 1389402, 'Demonology', 'Select', 'The sorcerer Thal''kiel was one of the first Eredar who learned the techniques of summoning and controlling demons.\n\nAfter his defeat, his skull was put on display as an example of the dangers of the dark arts.\n\nThe lesson went unheeded.', 'CONFIRM_ARTIFACT_CHOICE', 25549),
(245, 523, 2, 1389401, 'Affliction', 'Select', 'Wielded by Sataiel, the first necrolyte, the Deadwind Harvester earned its name by stripping the life from the lands known as Deadwind pass.\n\nAfter centuries locked away, Ulthalesh has been discovered in the posession of the Dark Riders. You must hunt them down if you wish to find where they have it hidden.', 'CONFIRM_ARTIFACT_CHOICE', 25549);

DELETE FROM `playerchoice_response_reward` WHERE `ChoiceId`=245;
INSERT INTO `playerchoice_response_reward` (`ChoiceId`, `ResponseId`, `TitleId`, `PackageId`, `SkillLineId`, `SkillPointCount`, `ArenaPointCount`, `HonorPointCount`, `Money`, `Xp`, `VerifiedBuild`) VALUES 
(245, 525, 0, 0, 0, 0, 0, 0, 0, 0, 25549),
(245, 524, 0, 0, 0, 0, 0, 0, 0, 0, 25549),
(245, 523, 0, 0, 0, 0, 0, 0, 0, 0, 25549);

DELETE FROM `playerchoice_response_reward_item` WHERE `ChoiceId`=245;
INSERT INTO `playerchoice_response_reward_item` (`ChoiceId`, `ResponseId`, `Index`, `ItemId`, `BonusListIDs`, `Quantity`, `VerifiedBuild`) VALUES 
(245, 525, 0, 128941, '', 0, 25549),
(245, 524, 0, 128943, '', 0, 25549),
(245, 523, 0, 128942, '', 0, 25549);