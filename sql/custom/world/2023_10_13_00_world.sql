-- add missing conversation line templates.

DELETE FROM `conversation_line_template` WHERE `Id` IN (7070, 7071, 7079);
INSERT INTO `conversation_line_template` (`Id`, `StartTime`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(7079, 17638, 0, 0, 0, 26365),
(7071, 11355, 0, 0, 0, 26365),
(7070, 4733, 0, 0, 256, 26365);