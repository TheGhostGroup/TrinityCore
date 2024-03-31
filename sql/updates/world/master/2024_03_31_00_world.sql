-- add missing quest starter info for sergeant dalton

DELETE FROM `creature_queststarter` WHERE `Id` = 108961;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(108961, 42814);