DELETE FROM `gossip_menu` WHERE `MenuID`=19169;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(19169, 28097, 26972); -- 101441

DELETE FROM `gossip_menu_option` WHERE (`MenuID`=19169 AND `OptionIndex`=0);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES
(19169, 0, 0, 'I\'ve changed my mind. Let me pick a different artifact.', 0, 0, 0, 26972);

UPDATE `creature_template` SET `gossip_menu_id`=19169 WHERE `entry` = 101441;

DELETE FROM `playerchoice` WHERE `ChoiceId`=253;
INSERT INTO `playerchoice` (`ChoiceId`, `UiTextureKitId`, `Question`, `HideWarboardHeader`, `VerifiedBuild`) VALUES
(253, 0, 'Which weapon should we pursue first?', 0, 26972);

DELETE FROM `playerchoice_response` WHERE (`ChoiceId`=253 AND `ResponseId`=543 AND `Index`=2) OR (`ChoiceId`=253 AND `ResponseId`=542 AND `Index`=1) OR (`ChoiceId`=253 AND `ResponseId`=541 AND `Index`=0);
INSERT INTO `playerchoice_response` (`ChoiceId`, `ResponseId`, `Index`, `ChoiceArtFileId`, `Header`, `Answer`, `Description`, `Confirmation`, `VerifiedBuild`) VALUES
(253, 543, 2, 1390099, 'Unholy', 'Select', 'An ancient blade crafted by the Nathrezim which spreads plague, death and violence in its wake, Apocalypse is a powerful tool of destruction.\n\nThe blade was wielded by the Tirisgarde before it fell into the hands of the Dark Riders. Now the only way to find it is to hunt down the riders to their secret lair.', 'CONFIRM_ARTIFACT_CHOICE', 26972),
(253, 542, 1, 1390098, 'Frost', 'Select', 'The legendary Frostmourne, even four years after its destruction within Icecrown Citadel, remains one of the most infamous weapons in all of Azeroth.\n\nWith a bit of necromantic power, the broken shards could be reforged into a set of runeblades that have the potential to be as powerful as their predecessor, if not surpass it entirely.', 'CONFIRM_ARTIFACT_CHOICE', 26972),
(253, 541, 0, 1390097, 'Blood', 'Select', 'Gorelix the Fleshripper is a monstrous demon warrior. With his massive axe, the Maw of the Damned, he has devastated entire worlds in the name of the Legion.\n\nTaking this powerful weapon from Gorelix will require treading directly into the heart of the Legion\'s assault on our world, but the power of the Maw is well worth the risk.', 'CONFIRM_ARTIFACT_CHOICE', 26972);

DELETE FROM `playerchoice_response_reward` WHERE (`ChoiceId`=253 AND `ResponseId` IN (543,542,541));
INSERT INTO `playerchoice_response_reward` (`ChoiceId`, `ResponseId`, `TitleId`, `PackageId`, `SkillLineId`, `SkillPointCount`, `ArenaPointCount`, `HonorPointCount`, `Money`, `Xp`, `VerifiedBuild`) VALUES
(253, 543, 0, 0, 0, 0, 0, 0, 0, 0, 26972),
(253, 542, 0, 0, 0, 0, 0, 0, 0, 0, 26972),
(253, 541, 0, 0, 0, 0, 0, 0, 0, 0, 26972);

DELETE FROM `playerchoice_response_reward_item` WHERE (`ChoiceId`=253 AND `ResponseId`=543 AND `Index`=0) OR (`ChoiceId`=253 AND `ResponseId`=542 AND `Index`=0) OR (`ChoiceId`=253 AND `ResponseId`=541 AND `Index`=0);
INSERT INTO `playerchoice_response_reward_item` (`ChoiceId`, `ResponseId`, `Index`, `ItemId`, `BonusListIDs`, `Quantity`, `VerifiedBuild`) VALUES
(253, 543, 0, 128403, '', 1, 26972),
(253, 542, 0, 128292, '', 1, 26972),
(253, 541, 0, 128402, '', 1, 26972);