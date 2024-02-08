-- Add missing npc_text entries

DELETE FROM `npc_text` WHERE `ID` IN (27208, 16954, 16953, 16952, 16528, 15609, 15608);
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`, `VerifiedBuild`) VALUES 
(27208, 1, 0, 0, 0, 0, 0, 0, 0, 98622, 0, 0, 0, 0, 0, 0, 0, 21287),
(16954, 1, 0, 0, 0, 0, 0, 0, 0, 46115, 0, 0, 0, 0, 0, 0, 0, 25961),
(16953, 1, 0, 0, 0, 0, 0, 0, 0, 46114, 0, 0, 0, 0, 0, 0, 0, 25961),
(16952, 1, 0, 0, 0, 0, 0, 0, 0, 46113, 0, 0, 0, 0, 0, 0, 0, 25961),
(16528, 1, 1, 1, 1, 1, 0, 0, 0, 44358, 44488, 44489, 44490, 44491, 0, 0, 0, 19116),
(15609, 1, 0, 0, 0, 0, 0, 0, 0, 39419, 0, 0, 0, 0, 0, 0, 0, 25549),
(15608, 1, 0, 0, 0, 0, 0, 0, 0, 39418, 0, 0, 0, 0, 0, 0, 0, 25549);
