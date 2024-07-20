-- fix creature spawn errors

UPDATE `creature` SET `terrainSwapMap`=-1 WHERE `terrainSwapMap`=0 AND `map`=1220;