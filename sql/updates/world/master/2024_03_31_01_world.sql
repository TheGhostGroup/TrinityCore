-- add missing quest starter info for etrigg

DELETE FROM `creature_queststarter` WHERE `Id` = 93775;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(93775, 41052);