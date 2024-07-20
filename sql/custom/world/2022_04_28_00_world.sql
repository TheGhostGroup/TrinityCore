-- fix creature_addon startup errors
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
UPDATE `creature_addon` SET `mount` = 0 WHERE `guid` IN (103388, 103391, 103394, 103396, 103398, 103400, 103403, 103411, 123495);

-- fix gameobject_addon startup errors
DELETE FROM `gameobject_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `gameobject`);

-- fix creature template startup errors
UPDATE `creature_template` SET `family`=53 WHERE `entry`=25388;
UPDATE `creature_template` SET `type`=1 WHERE `entry`=25388;
UPDATE `creature_template` SET `family`=53 WHERE `entry`=25389;
UPDATE `creature_template` SET `type`=1 WHERE `entry`=25389;
UPDATE `creature_template` SET `unit_class`=2 WHERE `entry`=54162;
UPDATE `creature_template` SET `minlevel` = 2, `maxlevel` = 2 WHERE `entry` IN (22642, 31974, 37293);
UPDATE `creature_template` SET `minlevel` = 90, `maxlevel` = 90 WHERE `entry` IN (36358, 36357);

-- fix creature template addon startup errors
UPDATE `creature_template_addon` SET `auras` = 0 WHERE `auras` = 46598;
UPDATE `creature_template_addon` SET `auras` = 0 WHERE `auras` = 61424;
UPDATE `creature_template_addon` SET `auras` = 0 WHERE `auras` = 122729;
UPDATE `creature_template_addon` SET `auras` = 0 WHERE `auras` = 152731;
UPDATE `creature_template_addon` SET `auras` = 0 WHERE `auras` = 61791;
UPDATE `creature_template_addon` SET `auras` = 0 WHERE `auras` = 125095;
UPDATE `creature_template_addon` SET `auras` = 0 WHERE `auras` = 31982;
UPDATE `creature_template_addon` SET `auras` = 0 WHERE `auras` = 28782;

-- fix spell_custom_attr startup errors
DELETE FROM `spell_custom_attr` WHERE `entry` IN (207194, 70324, 67331, 67333, 67097, 67098, 67099, 72447, 72448, 72449);

-- fix gameobject template startup errors
UPDATE `gameobject_template` SET `type` = 2 WHERE `entry` IN (207279, 207320, 207324, 208316, 208317, 232398, 232416, 233291, 237022);

-- fix gameobject is not quest ender
DELETE FROM `gameobject_questender` WHERE `id` = 202766 and `quest` = 25506;
DELETE FROM `gameobject_questender` WHERE `id` = 1557 and `quest` = 410;
DELETE FROM `gameobject_questender` WHERE `id` = 1586 and `quest` = 431;

-- fix quest template startup errors due to non-exist spell
UPDATE `quest_template` SET `RewardSpell` = 0 WHERE `ID` IN (37727, 38040, 37839, 36069, 39444, 38588, 48962, 46683, 38195, 38196);

-- fix scene template flags
UPDATE `scene_template` SET `flags` = 2 WHERE `sceneid` IN (1900, 1901, 1902, 1903);

-- add missing gameobject_templates
DELETE FROM `gameobject_template` WHERE `entry` IN (273775, 235324, 267953, 250225, 237453, 239783, 250231, 241118, 241119, 241117, 266009, 235341, 237264, 268410, 259805, 259804, 259803, 239808, 240053, 267065, 235321, 251504, 275101, 276481, 267778);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(273775, 10, 18306, 'Well-Preserved Tome', 'questinteract', '', '', 2, 1634, 0, 0, 3000, 0, 0, 0, 7303, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 52178, 0, 0, 0, 1, 0, 0, 0, 47685, 0, 0, 0, '', '', 26365),
(235324, 10, 14636, 'Weighted Chopping Axe', 'questinteract', 'Placement', '', 1, 93, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', '', 26365),
(267953, 10, 25466, 'Vital Supplies', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 236629, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 47925, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(250225, 5, 32914, 'Violetglass Vessel', '', '', '', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 21108),
(237453, 3, 1387, 'Unearthed Reliquary', 'questinteract', '', '', 0.5, 43, 58375, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 29930, 0, 0, 0, 0, 0, 0, 0, 0, 175470, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(239783, 10, 15300, 'Trough', 'questinteract', 'Quenching', '', 1.5, 1691, 0, 0, 100, 0, 0, 0, 0, 0, 0, 179370, 0, 0, 0, 92675, 0, 0, 0, 0, 0, 0, 0, 32146, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 22522),
(250231, 5, 32919, 'Trailhead Drum', '', '', '', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 21108),
(241118, 10, 22454, 'The Tome of Protection', 'questinteract', 'Kidnapping', '', 1.25, 43, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 182124, 0, 0, 1, 26365, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(241119, 10, 23847, 'The Shadowblade', 'questinteract', 'Kidnapping', '', 2, 43, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 182290, 0, 0, 1, 26365, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(241117, 10, 4152, 'The Black Candle', 'questinteract', 'Kidnapping', '', 2, 43, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 182124, 0, 0, 1, 26365, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(266009, 10, 34597, 'Telemancy Beacon', '', 'Using', '', 1, 43, 0, 55200, 0, 0, 0, 0, 0, 0, 0, 229400, 0, 0, 0, 27700, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 23222),
(235341, 10, 22609, 'Stone Dentures', 'questinteract', 'Placing', '', 2, 93, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(237264, 3, 17819, 'Stolen Goods', 'questinteract', '', '', 1, 43, 58276, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 29074, 0, 0, 0, 0, 0, 0, 0, 0, 173986, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(268410, 10, 40953, 'Silvermoon Staff', 'questinteract', 'Extract', '', 1, 43, 0, 0, 3000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 55091, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', '', 24015),
(259805, 10, 19417, 'Prescription fragment', '', '', '', 1, 43, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(259804, 10, 19417, 'Prescription fragment', '', '', '', 1, 43, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(259803, 10, 15781, 'Prescription fragment', '', '', '', 1, 43, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(239808, 10, 18978, 'Portal Stone', 'questinteract', 'Using', '', 1, 1691, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 179471, 0, 0, 0, 27700, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(240053, 10, 2650, 'Place Crystal', 'questinteract', 'Placement', '', 0.25, 1691, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 180266, 0, 0, 0, 35196, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(267065, 10, 36092, 'Nightborne Cage', 'questinteract', 'Opening', '', 1, 2647, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21400, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 23835),
(235321, 10, 14556, 'Metalworkers Hammer', 'questinteract', 'Placing', '', 1, 93, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(251504, 10, 13907, 'Mass Grave', 'questinteract', '', '', 0.5, 2565, 0, 0, 40000, 0, 0, 0, 0, 0, 0, 217183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 23420),
(275101, 10, 43244, 'Lightforged Beacon', 'questinteract', 'Placing', '', 1, 93, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 254340, 0, 0, 0, 35196, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 48200, 0, 0, 0, '', '', 26365),
(276481, 10, 19957, 'Legion Unguent', 'questinteract', 'Destruction', '', 1, 2668, 48875, 0, 1, 0, 0, 0, 0, 0, 0, 253090, 0, 0, 0, 24585, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 26365),
(267778, 10, 26261, 'Harpy Nest', 'questinteract', 'Burning', '', 1, 93, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30602, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0);

DELETE FROM `gameobject_template` WHERE `entry` IN (250222, 267224, 268517, 268626, 235315, 268458, 267492, 235345, 266670, 241428, 266307, 268411, 235330, 268409, 235326);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(250222, 5, 32911, 'Flayed-Skin Chronicle', '', '', '', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 21108),
(267224, 10, 41181, 'Afflicted by the Fel Egg', 'questinteract', 'Destruction', '', 0.75, 2668, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24585, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 24015),
(268517, 10, 28632, 'Fel Spreader', 'questinteract', 'Destruction', '', 1, 99, 45358, 0, 1, 0, 1, 1, 0, 0, 0, 233399, 0, 0, 0, 24585, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 24015),
(268626, 10, 21960, 'Fel Crystal', 'questinteract', 'Destruction', '', 1, 2668, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24585, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 23937),
(235315, 10, 20412, 'Fang-Scarred Frostwolf Axe', 'questinteract', 'Placement', '', 1, 93, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(268458, 10, 15781, 'False Orders', '', 'Installation', '', 1, 2693, 0, 56349, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51667, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 23911),
(267492, 10, 15781, 'False Orders', '', 'Installation', '', 1, 2693, 0, 56349, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51667, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 23911),
(235345, 10, 20350, 'Dreamcatcher', 'questinteract', 'Placement', '', 1, 93, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(266670, 10, 33855, 'Disabled Sentry Pylon', 'questinteract', 'Using', '', 2, 1691, 0, 0, 1, 0, 0, 0, 0, 0, 0, 231775, 0, 0, 0, 27700, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 23877),
(241428, 10, 16447, 'Detonator', 'questinteract', '', '', 1, 0, 38571, 0, 3000, 0, 0, 0, 0, 0, 0, 183148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 24742),
(266307, 10, 21959, 'Depleted Fel Crystal', 'questinteract', 'Placing', '', 1, 93, 0, 0, 1, 0, 0, 0, 0, 0, 0, 236018, 0, 0, 0, 35196, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(268411, 10, 32923, 'Darkspear Bow', 'questinteract', 'Extract', '', 1, 43, 0, 0, 3000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 55091, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', '', 24367),
(235330, 10, 22191, 'Cracked Ivory Idol', 'questinteract', 'Placement', '', 1.3, 93, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(268409, 10, 19878, 'Braves Waraxe', 'questinteract', 'Extract', '', 1, 43, 0, 0, 3000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 55091, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', '', 24367),
(235326, 10, 20414, 'Barbed Fishing Hook', 'questinteract', 'Placement', '', 1, 93, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', '', 0);

DELETE FROM `gameobject_template` WHERE `entry` IN (208516, 208515, 207897, 208524, 208523, 278347, 278575, 207341);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(208516, 31, 8196, 'Doodad_InstanceNewPortal_Purple01', '', '', '', 1.06336, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595),
(208515, 31, 8197, 'Doodad_InstanceNewPortal_Purple_Skull01', '', '', '', 1.06336, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595),
(207897, 31, 8196, 'Doodad_InstanceNewPortal_Purple01', '', '', '', 3.11485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595),
(208524, 31, 8196, 'Doodad_InstanceNewPortal_Purple01', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595),
(208523, 31, 8197, 'Doodad_InstanceNewPortal_Purple_Skull01', '', '', '', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595),
(278347, 10, 47199, 'Warchiefs Command Board', '', '', '', 1, 2824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 261655, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, '', '', 25996),
(278575, 10, 47195, 'Heros Call Board', '', '', '', 1, 2824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 261654, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, '', '', 25996),
(207341, 31, 9042, 'Doodad_InstancePortal_Green_25Man01', '', '', '', 4.86091, 669, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);

-- update gameobject template data
UPDATE `gameobject_template` SET `Data1`=0 WHERE `entry`=215364;
UPDATE `gameobject_template` SET `Data6`=0, `VerifiedBuild`=26972 WHERE `entry`=205577; -- Fire
UPDATE `gameobject_template` SET `Data6`=0, `VerifiedBuild`=26972 WHERE `entry`=205578; -- Fire
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=4667, `VerifiedBuild`=26972 WHERE `entry`=103815; -- Ambermill Strongbox
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=34700, `VerifiedBuild`=26972 WHERE `entry`=205534; -- Ambermill Codex
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=34375, `VerifiedBuild`=26972 WHERE `entry`=205363; -- Forsaken Communication Device
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=26878, `VerifiedBuild`=26972 WHERE `entry`=194341; -- Dusty Journal
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=13605, `VerifiedBuild`=26972 WHERE `entry`=176145; -- Joseph Redpaths Monument
UPDATE `gameobject_template` SET `Data6`=0, `VerifiedBuild`=26972 WHERE `entry`=22620; -- Wooden Chair
UPDATE `gameobject_template` SET `Data8`=0, `VerifiedBuild`=26972 WHERE `entry`=207430; -- Cultist Cage
UPDATE `gameobject_template` SET `Data8`=0, `VerifiedBuild`=26972 WHERE `entry`=207428; -- Cultist Cage
UPDATE `gameobject_template` SET `Data8`=0, `VerifiedBuild`=26972 WHERE `entry`=205160; -- Cultist Cage
UPDATE `gameobject_template` SET `Data8`=0, `VerifiedBuild`=26972 WHERE `entry`=205155; -- Cultist Cage
UPDATE `gameobject_template` SET `Data8`=0, `VerifiedBuild`=26972 WHERE `entry`=207427; -- Cultist Cage
UPDATE `gameobject_template` SET `Data8`=0, `VerifiedBuild`=26972 WHERE `entry`=205156; -- Cultist Cage
UPDATE `gameobject_template` SET `Data8`=0, `VerifiedBuild`=26972 WHERE `entry`=207429; -- Cultist Cage
UPDATE `gameobject_template` SET `Data8`=0, `VerifiedBuild`=26972 WHERE `entry`=205159; -- Cultist Cage
UPDATE `gameobject_template` SET `Data8`=0, `VerifiedBuild`=26972 WHERE `entry`=205157; -- Cultist Cage
UPDATE `gameobject_template` SET `Data8`=0, `VerifiedBuild`=26972 WHERE `entry`=205158; -- Cultist Cage
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=32199, `VerifiedBuild`=26972 WHERE `entry`=205154; -- Childs Painting
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=32198, `VerifiedBuild`=26972 WHERE `entry`=205153; -- Prayer Book
UPDATE `gameobject_template` SET `Data6`=0, `VerifiedBuild`=26972 WHERE `entry`=22636; -- Wooden Chair
UPDATE `gameobject_template` SET `Data6`=0, `VerifiedBuild`=26972 WHERE `entry`=22634; -- Wooden Chair
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=1746, `VerifiedBuild`=26972 WHERE `entry`=2893; -- ZulMamwe Trophy Skulls
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=30083, `VerifiedBuild`=26972 WHERE `entry`=204087; -- MoshOgg Bounty
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=1744, `VerifiedBuild`=26972 WHERE `entry`=2891; -- Balia'mah Trophy Skulls
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=3309, `VerifiedBuild`=26972 WHERE `entry`=20691; -- Cozzle's Footlocker
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=1690, `VerifiedBuild`=26972 WHERE `entry`=179426; -- Gri'lek the Wanderer
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=1690, `VerifiedBuild`=26972 WHERE `entry`=58; -- Gri'lek the Wanderer
UPDATE `gameobject_template` SET `Data26`=1, `VerifiedBuild`=26972 WHERE `entry`=2576; -- Altar of the Tides
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=30069, `VerifiedBuild`=26972 WHERE `entry`=204000; -- Grom'gol Rations Crate
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=31220, `VerifiedBuild`=26972 WHERE `entry`=57; -- Bloodscalp Lore Tablet
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=1570, `VerifiedBuild`=26972 WHERE `entry`=1765; -- Worn Wooden Chest
UPDATE `gameobject_template` SET `type`=10, `Data0`=2824, `Data10`=261655, `Data17`=1, `Data20`=1, `Data23`=1, `VerifiedBuild`=26972 WHERE `entry`=207279; -- Warchief's Command Board
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=36026, `VerifiedBuild`=26972 WHERE `entry`=207183; -- Humbert's Pants
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=4305, `VerifiedBuild`=26972 WHERE `entry`=92013; -- Tome of the Cabal
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=2143, `VerifiedBuild`=26972 WHERE `entry`=2710; -- Spirit of Silverpine Log
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=2142, `VerifiedBuild`=26972 WHERE `entry`=2708; -- Spirit of Silverpine Charts
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=2140, `VerifiedBuild`=26972 WHERE `entry`=2707; -- Maiden's Folly Charts
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=2141, `VerifiedBuild`=26972 WHERE `entry`=2709; -- Maiden's Folly Log
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=2177, `VerifiedBuild`=26972 WHERE `entry`=2718; -- Trelane's Lockbox
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=2178, `VerifiedBuild`=26972 WHERE `entry`=2717; -- Trelane's Footlocker
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=2179, `VerifiedBuild`=26972 WHERE `entry`=2716; -- Trelane's Chest
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=2138, `VerifiedBuild`=26972 WHERE `entry`=2690; -- Stone of Outer Binding
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=14625, `VerifiedBuild`=26972 WHERE `entry`=177789; -- Augustus' Receipt Book
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=34718, `VerifiedBuild`=26972 WHERE `entry`=205558; -- Flesh Giant Foot
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=14287, `VerifiedBuild`=26972 WHERE `entry`=177264; -- Symbol of Lost Honor
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=34714, `VerifiedBuild`=26972 WHERE `entry`=205537; -- Open Prayer Book
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=34750, `VerifiedBuild`=26972 WHERE `entry`=205880; -- Battered Chest
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=34751, `VerifiedBuild`=26972 WHERE `entry`=205881; -- Battered Chest
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=34749, `VerifiedBuild`=26972 WHERE `entry`=205879; -- Battered Chest
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=34748, `VerifiedBuild`=26972 WHERE `entry`=205878; -- Battered Chest
UPDATE `gameobject_template` SET `Data18`=683, `VerifiedBuild`=26972 WHERE `entry`=207488; -- Sturdy Treasure Chest
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=29583, `VerifiedBuild`=26972 WHERE `entry`=203206; -- Dreadmaul Cache
UPDATE `gameobject_template` SET `Data18`=676, `VerifiedBuild`=26972 WHERE `entry`=207478; -- Silverbound Treasure Chest
UPDATE `gameobject_template` SET `Data18`=683, `VerifiedBuild`=26972 WHERE `entry`=207513; -- Silken Treasure Chest
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=34741, `VerifiedBuild`=26972 WHERE `entry`=205828; -- Stack of Questionable Publications
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=34740, `VerifiedBuild`=26972 WHERE `entry`=205827; -- Extra-Pure Blasting Powder
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=34739, `VerifiedBuild`=26972 WHERE `entry`=205826; -- Thousand-Thread-Count Fuse
UPDATE `gameobject_template` SET `Data8`=0, `VerifiedBuild`=26972 WHERE `entry`=202831; -- Portcullis
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=8920, `VerifiedBuild`=26972 WHERE `entry`=148506; -- Twilight Artifact
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=35545, `VerifiedBuild`=26972 WHERE `entry`=206597; -- Twilight's Hammer Crate
UPDATE `gameobject_template` SET `Data18`=683, `VerifiedBuild`=26972 WHERE `entry`=207500; -- Dark Iron Treasure Chest
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=28239, `VerifiedBuild`=26972 WHERE `entry`=1586; -- Crate of Candles
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=1684, `VerifiedBuild`=26972 WHERE `entry`=1165; -- Gunther's Books
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=4765, `VerifiedBuild`=26972 WHERE `entry`=105170; -- Agamand Weapon Rack
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=4764, `VerifiedBuild`=26972 WHERE `entry`=105169; -- Agamand Weapon Rack
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=36135, `VerifiedBuild`=26972 WHERE `entry`=105171; -- Agamand Weapon Rack
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=4767, `VerifiedBuild`=26972 WHERE `entry`=105172; -- Agamand Weapon Rack
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=3625, `VerifiedBuild`=26972 WHERE `entry`=37098; -- Perrine's Chest
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=1853, `VerifiedBuild`=26972 WHERE `entry`=2087; -- Bloodsail Orders
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=30796, `VerifiedBuild`=26972 WHERE `entry`=759; -- The Holy Spring
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=29599, `VerifiedBuild`=26972 WHERE `entry`=203229; -- Allistarjian Vault
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=29582, `VerifiedBuild`=26972 WHERE `entry`=203205; -- Dreadmaul Cache
UPDATE `gameobject_template` SET `type`=50, `Data0`=2863, `Data1`=51298, `Data3`=0, `Data4`=225, `Data5`=275, `Data6`=30, `Data12`=683, `Data13`=1, `Data18`=10, `Data19`=0, `VerifiedBuild`=26972 WHERE `entry`=150082; -- Small Thorium Vein
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=29581, `VerifiedBuild`=26972 WHERE `entry`=203204; -- Dreadmaul Cache
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=30439, `VerifiedBuild`=26972 WHERE `entry`=204133; -- Cache of Shadra
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=13342, `VerifiedBuild`=26972 WHERE `entry`=175889; -- Ancient Egg
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=16925, `VerifiedBuild`=26972 WHERE `entry`=179914; -- Pile of Bones
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=30296, `VerifiedBuild`=26972 WHERE `entry`=204120; -- Cache of Shadra
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=16919, `VerifiedBuild`=26972 WHERE `entry`=179908; -- Slagtree's Lost Tools
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=3625, `VerifiedBuild`=26972 WHERE `entry`=37098; -- Perrine's Chest
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data6`=0, `Data30`=30943, `VerifiedBuild`=26972 WHERE `entry`=204587; -- Narkk's Handbombs
UPDATE `gameobject_template` SET `Data6`=0, `VerifiedBuild`=26972 WHERE `entry`=204586; -- Bloodsail Rope
UPDATE `gameobject_template` SET `Data6`=0, `VerifiedBuild`=26972 WHERE `entry`=204585; -- Blackwater Rope
UPDATE `gameobject_template` SET `Data4`=1, `Data6`=0, `Data18`=81, `VerifiedBuild`=26972 WHERE `entry`=204572; -- Pirate Ship
UPDATE `gameobject_template` SET `Data4`=1, `Data6`=0, `Data18`=81, `VerifiedBuild`=26972 WHERE `entry`=204571; -- Pirate Ship
UPDATE `gameobject_template` SET `Data4`=1, `Data6`=0, `Data18`=81, `VerifiedBuild`=26972 WHERE `entry`=204570; -- Pirate Ship
UPDATE `gameobject_template` SET `Data4`=1, `Data6`=0, `Data18`=81, `VerifiedBuild`=26972 WHERE `entry`=204569; -- Pirate Ship
UPDATE `gameobject_template` SET `Data4`=1, `Data6`=0, `Data18`=81, `VerifiedBuild`=26972 WHERE `entry`=204568; -- Pirate Ship
UPDATE `gameobject_template` SET `Data4`=1, `Data6`=0, `Data18`=93, `VerifiedBuild`=26972 WHERE `entry`=204567; -- Pirate Ship
UPDATE `gameobject_template` SET `Data4`=1, `Data6`=0, `Data18`=92, `VerifiedBuild`=26972 WHERE `entry`=204566; -- Pirate Ship (Riptide)
UPDATE `gameobject_template` SET `Data4`=1, `Data6`=0, `Data18`=91, `VerifiedBuild`=26972 WHERE `entry`=204565; -- Pirate Ship (Damsel's Luck)
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=13642, `VerifiedBuild`=26972 WHERE `entry`=176208; -- Horgus' Skull
UPDATE `gameobject_template` SET `type`=50, `Data3`=0, `Data6`=60, `Data7`=0, `Data18`=10, `Data20`=176117, `VerifiedBuild`=26972 WHERE `entry`=176143; -- Pamela's Doll's Right Side
UPDATE `gameobject_template` SET `type`=50, `Data3`=0, `Data6`=60, `Data7`=0, `Data18`=10, `Data20`=176117, `VerifiedBuild`=26972 WHERE `entry`=176142; -- Pamela's Doll's Left Side
UPDATE `gameobject_template` SET `type`=50, `Data3`=0, `Data6`=60, `Data7`=0, `Data18`=10, `Data20`=176117, `VerifiedBuild`=26972 WHERE `entry`=176116; -- Pamela's Doll's Head
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=13644, `VerifiedBuild`=26972 WHERE `entry`=176209; -- Shattered Sword of Marduk
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=14625, `VerifiedBuild`=26972 WHERE `entry`=177789; -- Augustus' Receipt Book
UPDATE `gameobject_template` SET `Data8`=0, `VerifiedBuild`=26972 WHERE `entry`=207429; -- Cultist Cage
UPDATE `gameobject_template` SET `Data18`=683, `VerifiedBuild`=26972 WHERE `entry`=207513; -- Silken Treasure Chest
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=35739, `VerifiedBuild`=26972 WHERE `entry`=206882; -- Fel Slider Cider
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=35738, `VerifiedBuild`=26972 WHERE `entry`=206881; -- Slumber Sand
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=35357, `VerifiedBuild`=26972 WHERE `entry`=206388; -- Angor's Coffer
UPDATE `gameobject_template` SET `Data18`=683, `VerifiedBuild`=26972 WHERE `entry`=207476; -- Silverbound Treasure Chest