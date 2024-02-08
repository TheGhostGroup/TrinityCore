-- fix terrainswapmap error

UPDATE `creature` SET `terrainSwapMap`=-1 WHERE `AreaId`=7600 AND `terrainSwapMap`=0;