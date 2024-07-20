-- 
DELETE FROM `spell_target_position` WHERE `ID` IN (191474, 205814, 225114, 225162, 225219, 225232, 241931);
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES 
(191474, 0, 1220, -835.44, 4276.82, 746.25, 26365),
(205814, 0, 1220, 4115.21, 4441.16, 768.31, 26365),
(225114, 0, 1220, 2278.69, 6596.63, 137.47, 26365),
(225162, 0, 1220, 595.85, 6701.74, 62.42, 26365),
(225219, 0, 1220, 3201.61, 1532.4, 180.8, 26365),
(225232, 0, 1220, 1616.85, 4781.16, 138.31, 26365),
(241931, 0, 1220, -1620.93, 3212.35, 129.02, 26365);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (191473, 191474, 205813, 205814, 225114, 225115, 225162, 225163, 225219, 225220, 225232, 225233, 241928, 241931);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(191473, 'spell_class_hall_warrior_jump_exit'),
(191474, 'spell_class_hall_warrior_jump_teleport'),
(205813, 'spell_class_hall_warrior_jump_exit'),
(205814, 'spell_class_hall_warrior_jump_teleport'),
(225114, 'spell_class_hall_warrior_jump_teleport'),
(225115, 'spell_class_hall_warrior_jump_exit'),
(225162, 'spell_class_hall_warrior_jump_teleport'),
(225163, 'spell_class_hall_warrior_jump_exit'),
(225219, 'spell_class_hall_warrior_jump_teleport'),
(225220, 'spell_class_hall_warrior_jump_exit'),
(225232, 'spell_class_hall_warrior_jump_teleport'),
(225233, 'spell_class_hall_warrior_jump_exit'),
(241928, 'spell_class_hall_warrior_jump_exit'),
(241931, 'spell_class_hall_warrior_jump_teleport');

