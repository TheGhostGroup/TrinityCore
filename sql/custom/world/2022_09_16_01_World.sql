-- fix gossip menu option errors

UPDATE `gossip_menu_option` SET `OptionIcon` = 0 WHERE `OptionIcon` = 34 OR `OptionIcon` = 31 OR `OptionIcon` = 28 OR `OptionIcon` = 27 OR `OptionIcon` = 25;