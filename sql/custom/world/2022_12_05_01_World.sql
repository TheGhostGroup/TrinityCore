-- clean up more startup errors
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` IN (102325, 102327);

-- // Check AshamaneCore for Templates
-- DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (56234, 70810, 70811, 188374);

UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` IN (99828, 101637, 101639, 94968, 96756);

-- No templates for quests
DELETE FROM `quest_poi` WHERE `QuestID` IN (34320, 34350, 34430, 34443, 34449, 34669, 34744, 34880, 35039, 35105, 35107, 35130, 35134, 35138, 35173,
35246, 35328, 35346, 35653, 35698, 35700, 36173, 36343, 36487, 36795, 36841, 36842, 36844, 36845, 37042, 37200, 37248, 37527, 37587, 37591, 37593,
37594, 37643, 37801, 37806, 37807, 37808, 37809, 37810, 37846, 37847, 37863, 37920, 37924, 37925, 37926, 37927, 37929, 37931, 37936, 37954, 37971,
38011, 38017, 38019, 38027, 38033, 38055, 38056, 38062, 38216, 38227, 38228, 38229, 38230, 38319, 38325);

-- gameobject is quest giver
UPDATE `gameobject_template` SET `type` = 2 WHERE `entry` = 207279;

-- quest was masked obsolete by blizzard
DELETE FROM `gameobject_questender` WHERE `id` = 37 AND `quest` = 254;

-- missing npcflag
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (8738, 114562);

-- unknown spell
DELETE FROM `npc_spellclick_spells` WHERE `spell_id` IN (60123, 47121, 47416, 46407, 59907, 82359, 82456, 83580, 89480, 71916);

-- quests not completable. Might be a early concepts that was never released on retail. gameobject templates required for quests not found.
DELETE FROM `quest_objectives` WHERE `QuestID` IN (39825, 40504, 37635, 40468, 39822, 40114, 39823, 39964, 39311, 40485, 39966, 40512, 40749, 42022,
33817, 40323, 39809, 39819, 37636, 40513, 39436, 39811, 39296, 40460, 40486, 40462, 39808, 39813, 40115, 40465, 40463, 40464, 33155, 40492, 40490, 39968,
39995, 40458, 40457, 37466, 39996, 40322, 39506, 39810, 39997, 40467, 40006, 39999, 30759, 36338, 36808, 33074, 33516, 33877, 33939, 33351, 40597, 40466,
40461, 40459, 40333, 40269, 40268, 40163, 40162, 40116, 40007, 39967, 39965, 39827, 39826, 39821, 39820, 39815, 39814, 39508, 39493, 39312, 45816, 45628);



