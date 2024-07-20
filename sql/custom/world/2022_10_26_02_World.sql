-- fix creature equipment errors introduced since population of halls of valor

UPDATE `creature` SET `equipment_id` = 0 WHERE `map` = 1477 AND `equipment_id` = 1;