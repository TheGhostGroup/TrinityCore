-- add gossip to khadgar

UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry` = 113986;