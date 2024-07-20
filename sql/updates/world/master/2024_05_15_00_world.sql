-- Scene
DELETE FROM `scene_template` WHERE `SceneId`=1106;
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`) VALUES
(1106, 20, 1487);

UPDATE `scene_template` SET `ScriptName` = 'scene_demonhunter_intro' WHERE `SceneId` = 1106;