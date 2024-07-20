
UPDATE `gameobject_template` SET `Data0` = 0 WHERE `entry` IN (205273, 209081);

DELETE FROM `gameobject_template` WHERE `entry`=150082;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES 
(150082, 3, 3951, 'Small Thorium Vein', '', '', '', 0.5, 400, 324, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1);

-- Fix conditions errros due to spell not existing in current expansion.

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` IN (9455, 30232, 33831, 50524, 58836, 67755, 67756, 67757, 72850, 72851,
72852, 72746, 72747, 72748, 72527, 67328, 72031, 72032, 72033, 72456, 72868, 72869, 67303, 67304, 67305, 67306, 67307, 67308);

-- Add missing spell script name data
DELETE FROM `spell_script_names` WHERE `spell_id` IN (5762, 2058, 2040, 2152, 2038, 2056, 2057, 2039, 2184, 2185, 5016, 2182, 2183, 2146,
2147, 1997, 2140, 1996, 2139, 2150, 2037, 2036, 2044, 2045, 2046, 2148, 2149, 2049, 2052, 2050, 2053, 2051, 2054, 2042, 2155, 2154, 3076,
3077, 3006, 3007, 2911, 2912, 12313, 2913, 2916, 2918, 211086);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(5762, 'achievement_ohganot_so_fast'),
(2058, 'achievement_snakes_whyd_it_have_to_be_snakes'),
(2040, 'achievement_less_rabi'),
(2152, 'achievement_share_the_love'),
(2038, 'achievement_respect_your_elders'),
(2056, 'achievement_volunteer_work'),
(2057, 'achievement_oh_novos'),
(2039, 'achievement_king_dred'),
(2184, 'achievement_just_cant_get_enough'),
(2185, 'achievement_just_cant_get_enough'),
(5016, 'achievement_just_cant_get_enough'),
(2182, 'achievement_spore_loser'),
(2183, 'achievement_spore_loser'),
(2146, 'achievement_the_hundred_club'),
(2147, 'achievement_the_hundred_club'),
(1997, 'achievement_momma_said_knock_you_out'),
(2140, 'achievement_momma_said_knock_you_out'),
(1996, 'achievement_safety_dance'),
(2139, 'achievement_safety_dance'),
(2150, 'achievement_split_personality'),
(2037, 'achievement_chaos_theory'),
(2036, 'achievement_intense_cold'),
(2044, 'achievement_ruby_void'),
(2045, 'achievement_emerald_void'),
(2046, 'achievement_amber_void'),
(2148, 'achievement_denyin_the_scion'),
(2149, 'achievement_denyin_the_scion'),
(2049, 'achievement_twilight_assist'),
(2052, 'achievement_twilight_assist'),
(2050, 'achievement_twilight_duo'),
(2053, 'achievement_twilight_duo'),
(2051, 'achievement_twilight_zone'),
(2054, 'achievement_twilight_zone'),
(2042, 'achievement_shatter_resistant'),
(2155, 'achievement_abuse_the_ooze'),
(2154, 'achievement_brann_spankin_new'),
(3076, 'achievement_nine_lives'),
(3077, 'achievement_nine_lives'),
(3006, 'achievement_crazy_cat_lady'),
(3007, 'achievement_crazy_cat_lady'),
(2911, 'achievement_shutout'),
(2912, 'achievement_shutout'),
(12313, 'achievement_unbroken'),
(2913, 'achievement_orbital_bombardment'),
(2916, 'achievement_orbital_bombardment'),
(2918, 'achievement_orbital_bombardment'),
(211086, 'spell_gen_aura_masquerade');

UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` IN (-1001965, -1001964, -1001946, -1001940) AND `id` IN (7, 8);
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` IN (-136528, -136525, -131059, -131058, -131056, -131055, -105495, -105489, -105488, -105487) AND `id` = 0;
UPDATE `smart_scripts` SET `event_param1` = 2000, `event_param2` = 2500, `event_param3` = 0 WHERE `entryorguid` IN (-1001965, -1001964, -1001946, -1001940) AND `id` = 9;

-- No template for quests exist in database and can't find data for.
DELETE FROM `quest_poi` WHERE `QuestID` IN (38326, 38328, 38330, 38335, 38336, 38338, 38340, 38373, 38375, 38385, 38403, 38432, 38464, 38493, 38553,
38554, 38555, 38556, 38619, 38635, 38636, 38651, 38652, 38653, 38659, 38706, 38824, 38827, 38855, 38856, 38859, 38905, 38908, 38920, 38921, 38928,
38930, 38931, 38984, 38985, 38986, 38987, 38988, 39052, 39091, 39141, 39146, 39148, 39190, 39213, 39215, 39248, 39249, 39251, 39252, 39254, 39255,
39257, 39258, 39320, 39492, 39778, 39779, 39833, 39885, 39886, 39887, 39888, 39892, 39895, 39919, 39924, 40174, 40226, 40239, 40281, 40283, 40284,
40285, 40286, 40287, 40288, 40289, 40290, 40291, 40292, 40293, 40294, 40295, 40309, 40372, 40387, 40393, 40394, 40396, 40407, 40602, 40631, 40656,
40660, 40665, 40670, 40676, 40677, 40679, 40682, 40741, 40779, 40799, 40800, 40801, 40802, 40809, 40836, 40852, 40895, 40903, 40926, 40948, 40979,
40981, 40984, 41004, 41005, 41007, 41043, 41046, 41130, 41131, 41132, 41133, 41154, 41212, 41236, 41241, 41245, 41348, 41365, 41417, 41419, 41429,
41456, 41476, 41477, 41576, 41592, 41593, 41594, 41595, 41684, 41693, 41698, 41757, 41758, 41765, 41779, 41820, 41823, 41825, 41827, 41829, 41839,
41845, 41846, 41848, 41858, 41879, 41883, 41894, 41902, 41912, 41913, 41923, 41928, 41962, 41968, 41969, 41970, 41971, 41972, 41973, 41974, 41975,
41976, 41977, 42052, 42095, 42130, 42144, 42180, 42181, 42262, 42478, 42621, 42710, 42720, 42759, 42760, 42761, 42853, 42854, 42855, 42856, 42923,
42925, 43274, 43320, 43321, 43322, 43326, 43330, 43350, 43482, 43544, 43739, 43754, 43757, 43765, 43768, 43770, 43773, 43776, 43779, 44482, 44494,
44498, 44747, 44749, 44750, 44755, 44776, 44778, 44779, 44804, 44826, 44883, 44942, 45030, 45031, 45033, 45034, 45037, 45043, 45045, 45077, 45078,
45098, 45099, 45101, 45105, 45112, 45132, 45133, 45155, 45156, 45157, 45167, 45336, 45338, 45386, 45397, 45438, 45441, 45458, 45519, 45521, 45529,
45606, 45746, 45768, 45832, 45860, 45941, 45972, 46081, 46088, 46289, 46303, 46306, 46307, 46312, 46790, 46803, 46806, 47029, 47234, 47285, 47417);

-- Obsolete or removed quests
DELETE FROM `gameobject_questender` WHERE `quest` IN (636, 29767, 33844, 33932) AND `id` IN (2655, 209655, 226766, 227001);

-- Non-exist in legion
DELETE FROM `creature` WHERE `guid` IN (650408, 650848);

-- Fix creature spawns
UPDATE `creature` SET `spawndist` = 0 WHERE `guid` IN (650854, 650863, 650866);

-- Fix gameobject spawns
UPDATE `gameobject` SET `phaseid` = 0 WHERE `guid` IN (21065);