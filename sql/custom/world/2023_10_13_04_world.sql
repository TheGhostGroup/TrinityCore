-- Clean up spawns

DELETE FROM `creature` WHERE `guid` IN (651594, 650946, 650903, 650902, 650911, 650912, 650910, 650909, 650907, 650908, 650916, 650915);

-- Clean up creatures spawns in error

DELETE FROM `creature` WHERE `guid` IN (651695, 651689, 651693, 651688, 651694);

-- Add teller flag to creature templates

UPDATE `creature_template` SET `npcflag`=131072 WHERE `entry` IN (96823, 96821, 96822);





