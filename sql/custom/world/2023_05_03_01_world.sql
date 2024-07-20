-- fix a few startup warnings
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName` IN ('npc_stable_master');

-- script_waypoint does not exist
DELETE FROM `script_waypoint` WHERE `entry`=17238;

-- spell_script_names: script/spell does not exist
DELETE FROM `spell_script_names` WHERE `ScriptName` IN ('spell_item_jom_gabbar');

-- fix creature text range
UPDATE `creature_text` SET `TextRange`=0 WHERE `CreatureID` = 56676;

-- conditions fix
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (73785, 73786, 73787, 74270, 74271, 74272, 76379, 74318, 74319, 74320, 74321, 74323, 58630);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `ConditionValue2` IN (53714, 57873, 54855, 54567, 41200, 54135, 54734, 57779, 54958, 56479, 56622, 55021, 57636, 56869,
65493, 59499, 59497, 57207, 59498, 57742, 55213, 60914, 60915, 55556, 55478, 57667, 55539);