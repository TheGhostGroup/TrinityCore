-- quick fixes

UPDATE `creature` SET `MovementType`=1 WHERE `guid` IN (651685, 651686);

UPDATE `creature` SET `terrainSwapMap`=-1 WHERE `AreaId`=7559 AND `terrainSwapMap`=0;