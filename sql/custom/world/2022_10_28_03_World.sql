-- fix startup errors
UPDATE `gameobject_template` SET `Data1` = 0 WHERE `entry` IN (216003, 216004, 216005, 216006, 216007, 216008, 216009, 216354, 216355, 216356, 216357,
216358, 216359, 210783, 210784, 210785, 210786, 210787, 210788, 210863, 210864, 210866, 210867, 211133, 211134, 211135, 211136, 211137, 211138, 211245,
211246, 211258, 211260, 211614, 211844);
UPDATE `gameobject_template` SET `Data1` = 1 WHERE `entry` IN (216698, 216699);                                                                 
UPDATE `gameobject_template` SET `Data0` = 1, `Data1` = 0 WHERE `entry` = 210789;
UPDATE `gameobject_template` SET `Data1` = 0, `Data7` = 5703 WHERE `entry` IN (210800, 210862, 211963);
UPDATE `gameobject_template` SET `Data1` = 0, `Data2` = 3000 WHERE `entry` IN (211293, 211615, 211970, 211976);

UPDATE `gameobject` SET `spawnDifficulties` = 2 WHERE `map` = 940;