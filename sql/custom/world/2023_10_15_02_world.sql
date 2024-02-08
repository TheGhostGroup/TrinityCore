-- quick fix archmage khadgar
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=113986;