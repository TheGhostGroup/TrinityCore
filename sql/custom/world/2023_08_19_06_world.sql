-- fix creature spawns warnings
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` IN (80800, 73324, 72623, 80801, 73701, 73546, 73548, 80798, 80799, 77184, 83970, 73468, 77518, 73465);
