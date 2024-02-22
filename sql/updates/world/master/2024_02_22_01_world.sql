-- add gossip menu to npcs

UPDATE `creature_template` SET `gossip_menu_id`=19870, `npcflag`=`npcflag`|1 WHERE `entry`=113118; -- Captain Russo, Horde
UPDATE `creature_template` SET `gossip_menu_id`=19870, `npcflag`=`npcflag`|1 WHERE `entry`=108920; -- Captain Angelica, Alliance