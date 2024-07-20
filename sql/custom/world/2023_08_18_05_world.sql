-- lfg dungeon template

DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (908, 1174, 1175, 1189, 1190, 1191, 1192, 1193, 1194, 1201, 1202, 1204, 1205, 1318, 1319);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES 
(908, 'The Battle for Broken Shore', 2.39286, 1.694546, 5.205733, 3.155922, 0, 26972),
(1174, 'Eye of Azshara Normal', -3919.99, 4525.86, 88.5729, 6.27266, 0, 26972),
(1175, 'Eye of Azshara Heroic', -3919.99, 4525.86, 88.5729, 6.27266, 0, 26972),
(1189, 'The Arcway Normal', 3514.95, 4803.39, 590.072, 3.09508, 0, 26972),
(1190, 'The Arcway Heroic', 3514.95, 4803.39, 590.072, 3.09508, 0, 26972),
(1191, 'Maw of Souls Normal', 7211.21, 7307.77, 22.3648, 5.85036, 0, 26972),
(1192, 'Maw of Souls Heroic', 7211.21, 7307.77, 22.3648, 5.85036, 0, 26972),
(1193, 'Halls of Valor Normal', 3787.76, 529.104, 604.019, 3.13887, 0, 26972),
(1194, 'Halls of Valor Heroic', 3787.76, 529.104, 604.019, 3.13887, 0, 26972),
(1201, 'Darkheat Thicket Normal', 3219.28, 1824.71, 230.298, 3.17381, 0, 26972),
(1202, 'Darkheat Thicket Heroic', 3219.28, 1824.71, 230.298, 3.17381, 0, 26972),
(1204, 'Black Rook Hold Normal', 3484.26, 7645.71, -9.67725, 3.34621, 0, 26972),
(1205, 'Black Rook Hold Heroic', 3484.26, 7645.71, -9.67725, 3.34621, 0, 26972),
(1318, 'Court of Stars - Heroic', 1014.58, 3814.68, 11.2294, 4.5018, 0, 26972),
(1319, 'Court of Stars - Normal', 1014.58, 3814.68, 11.2294, 4.5018, 0, 26972);

DELETE FROM `game_tele` WHERE `id` = 1584;
INSERT INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES 
(1584, 8852.54, 1369.35, 97, 4.6, 1116, 'IronDocks');

