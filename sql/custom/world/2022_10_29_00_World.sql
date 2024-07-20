-- fix void elf start zone
DELETE FROM `playercreateinfo` WHERE `race`=29 AND `class` IN (1, 3, 4, 5, 8, 9, 10);
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES 
(29, 1, 1865, 0, 2121, 3318, 54.7061, 0),
(29, 3, 1865, 0, 2121, 3318, 54.7061, 0),
(29, 4, 1865, 0, 2121, 3318, 54.7061, 0),
(29, 5, 1865, 0, 2121, 3318, 54.7061, 0),
(29, 8, 1865, 0, 2121, 3318, 54.7061, 0),
(29, 9, 1865, 0, 2121, 3318, 54.7061, 0),
(29, 10, 1865, 0, 2121, 3318, 54.7061, 0);
