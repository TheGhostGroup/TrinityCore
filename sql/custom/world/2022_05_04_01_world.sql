-- fix more missing creature model info errors
DELETE FROM `creature_model_info` WHERE `DisplayID` IN (63467, 68319, 25202, 40300, 82136, 82137, 82131, 82679, 81113, 82523, 82725,
83032, 83010, 82251, 82252, 82490, 82307, 82269, 82132, 82767, 82767, 79003, 82964, 82757, 82746, 82748, 83225, 83226, 82925, 82928,
83233, 83234, 68439, 82153, 82400, 82401, 82401, 82774, 83249, 83250, 83251, 82188, 83125, 82896);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(63467, 0, 0, 0, 0), -- 63467
(68319, 0, 0, 0, 0), -- 68319
(25202, 0, 0, 0, 0), -- 25202
(40300, 0, 0, 0, 0), -- 40300
(82136, 0, 0, 0, 0), -- 82136
(82137, 0, 0, 0, 0), -- 82137
(82131, 0, 0, 0, 0), -- 82131
(82679, 0, 0, 0, 0), -- 82679
(81113, 0, 0, 0, 0), -- 81113
(82523, 0, 0, 0, 0), -- 82523
(82725, 0, 0, 0, 0), -- 82725
(83032, 0, 0, 0, 0), -- 83032
(83010, 0, 0, 0, 0), -- 83010
(82251, 0, 0, 0, 0), -- 82251
(82252, 0, 0, 0, 0), -- 82252
(82490, 0, 0, 0, 0), -- 82490
(82307, 0, 0, 0, 0), -- 82307
(82269, 0, 0, 0, 0), -- 82269
(82132, 0, 0, 0, 0), -- 82132
(82767, 0, 0, 0, 0), -- 82767
(79003, 0, 0, 0, 0), -- 79003
(82964, 0, 0, 0, 0), -- 82964
(82757, 0, 0, 0, 0), -- 82757
(82746, 0, 0, 0, 0), -- 82746
(82748, 0, 0, 0, 0), -- 82748
(83225, 0, 0, 0, 0), -- 83225
(83226, 0, 0, 0, 0), -- 83226
(82925, 0, 0, 0, 0), -- 82925
(82928, 0, 0, 0, 0), -- 82928
(83233, 0, 0, 0, 0), -- 83233
(83234, 0, 0, 0, 0), -- 83234
(68439, 0, 0, 0, 0), -- 68439
(82153, 0, 0, 0, 0), -- 82153
(82400, 0, 0, 0, 0), -- 82400
(82401, 0, 0, 0, 0), -- 82401
(82774, 0, 0, 0, 0), -- 82774
(83249, 0, 0, 0, 0), -- 83249
(83250, 0, 0, 0, 0), -- 83250
(83251, 0, 0, 0, 0), -- 83251
(82188, 0, 0, 0, 0), -- 82188
(83125, 0, 0, 0, 0), -- 83125
(82896, 0, 0, 0, 0); -- 82896

-- fix creature template errors
UPDATE `creature_template` SET `speed_walk` = 1, `speed_run` = 1.14286, `InhabitType` = 1 WHERE `entry` = 97229;
UPDATE `creature_template` SET `unit_flags2`=`unit_flags2`^1 WHERE `entry`=31485;
UPDATE `creature_template` SET `unit_flags2`=`unit_flags2`^1 WHERE `entry`=31489;
UPDATE `creature_template` SET `unit_flags2`=`unit_flags2`^1 WHERE `entry`=38401;
UPDATE `creature_template` SET `unit_flags2`=`unit_flags2`^1 WHERE `entry`=38784;
UPDATE `creature_template` SET `unit_flags2`=`unit_flags2`^1 WHERE `entry`=38785;
UPDATE `creature_template` SET `unit_flags2`=`unit_flags2`^2048 WHERE `entry`=38262;
UPDATE `creature_template` SET `unit_flags2`=`unit_flags2`^2048 WHERE `entry`=38683;
UPDATE `creature_template` SET `unit_flags2`=`unit_flags2`^2048 WHERE `entry`=38684;
UPDATE `creature_template` SET `unit_flags2`=`unit_flags2`^1 WHERE `entry`=38126;
UPDATE `creature_template` SET `unit_flags2`=`unit_flags2`^1 WHERE `entry`=38131;
UPDATE `creature_template` SET `npcflag`=`npcflag`^16777216 WHERE `entry`=48804;
UPDATE `creature_template` SET `npcflag`=`npcflag`^16777216 WHERE `entry`=48803;
UPDATE `creature_template` SET `npcflag`=`npcflag`^16777216 WHERE `entry`=48913;
UPDATE `creature_template` SET `unit_flags2`=`unit_flags2`^2048 WHERE `entry`=48835;
UPDATE `creature_template` SET `flags_extra`=`flags_extra`^2 WHERE `entry`=48835;
UPDATE `creature_template` SET `unit_flags2`=`unit_flags2`^526336 WHERE `entry`=57359;
UPDATE `creature_template` SET `unit_flags2`=`unit_flags2`^526336 WHERE `entry`=57360;
UPDATE `creature_template` SET `unit_flags2`=`unit_flags2`^526336 WHERE `entry`=57361;

-- fix creature template addon errors
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` IN (25286, 27220, 28063, 29344, 15957, 15963, 48505, 56503, 62081,
62087, 90902, 63999, 66947, 69457, 59718, 62355, 86691, 86690);

-- fix creature spawn errors
UPDATE `creature` SET `spawnDifficulties` = 1 WHERE `guid` = 84369;
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` IN (142510, 142534, 142553);
UPDATE `creature` SET `PhaseId` = 0 WHERE `PhaseId` = 403;
UPDATE `creature` SET `equipment_id` = 0 WHERE `equipment_id` = 127;
UPDATE `creature_addon` SET `auras` = '' WHERE `guid` IN (73192, 77583, 371271, 371273, 202846, 314291, 313891);

-- fix gameobject spawn errors
UPDATE `gameobject` SET `spawnDifficulties` = 2 WHERE `guid` = 203037;

-- fix quest template errors
UPDATE `quest_template` SET `RewardSpell` = 0 WHERE `ID` IN (38181, 38834, 38180, 38866, 43497, 38198, 38020, 34570, 46701, 38201, 35632,
38191, 38199, 38193, 38182, 38051, 39447, 37966, 32994, 41166, 41180, 33828, 42036, 44663, 34399, 42982, 35641, 35195, 35171, 34900, 35024,
45071, 36238, 11250, 45069, 38158, 46268, 39446, 38015, 37865, 10966, 37938, 38202, 38876, 43424, 38194, 10040, 39351, 47644, 46695, 47645,
39441, 13857, 11000, 38870, 40944, 48433, 10967, 38184, 13855, 11520, 11521, 11541, 41171, 41189, 41888, 14124, 14123, 14242, 13862, 13861,
49973, 42465, 41186, 40942, 50229, 42035, 13851, 42987, 42526, 14110, 41185, 41167, 14001, 14009, 14071, 13860, 13854, 13852, 13884, 13988,
14121, 14109, 13980, 43522, 33988, 13847, 13856, 13858, 13859, 13863, 13864, 20439, 47773, 42850, 35396, 37492, 13547, 35245, 14070, 14122,
14435, 14474, 24520, 38197, 25807, 24974, 25189, 25612, 38187, 35196, 30763, 30783, 38871, 25491, 25691, 31019, 37970, 26143, 30753, 39443,
38186, 38868, 28034, 34154, 29902, 33464, 49614, 50047, 29328, 29203, 29338, 30754, 30777, 31026, 30728, 30729, 30732, 30733, 30734, 30735,
30736, 30737, 30738, 30739, 30740, 30765, 30774, 30781, 30782, 30855, 30955, 30987, 30992, 31049, 31061, 31062, 31082, 31091, 31117, 31120,
31157, 31179, 31203, 31204, 31717, 31718, 31719, 31720, 31721, 34998, 31739, 38869, 31897, 31915, 31920, 31928, 29546, 36070, 35637, 36348,
36808, 38192, 38183, 38185, 38200, 30645, 32340, 33075, 33882, 34429, 34447, 34448, 34504, 34564, 34747, 34770, 34781, 35001, 35002, 35141,
35169, 35170, 35197, 35317, 35734, 36705, 32797, 34844, 36383, 38159, 37866, 38054, 38439, 38865, 39442, 39445, 29886, 35203, 38043, 38587,
37853, 38877, 44701, 44700, 41179, 42034, 41176, 41183, 42046, 36920, 38672, 38669, 37530, 38377, 40991, 41174, 46275, 43539, 43500, 43499,
43498, 43015, 42708, 42688, 42535, 42534, 41767, 41193, 41192, 43541, 43151, 41854, 43519, 43508, 42734, 43425, 41173, 41188, 45072, 45070,
45068, 41182, 41177, 41169, 43533, 46804, 46689, 47097, 46282, 47772, 47643, 47642, 50374, 50364, 50230, 50227, 50071);

-- fix creature quest ender errors
UPDATE `creature_template` SET `npcflag` = `npcflag`|2 WHERE `entry` IN (70315, 78333, 82479, 94194, 100482, 103092, 106780, 111513);