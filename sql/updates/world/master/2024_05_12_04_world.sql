-- Aodh Witherpetal
SET @ENTRY := 110346;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,1000,1000,11,219608,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Throw Spear'),
(@ENTRY,0,1,0,0,0,100,0,3000,5000,12000,15000,11,219661,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Rapid Shot'),
(@ENTRY,0,2,0,0,0,100,0,10000,10000,10000,12000,11,219627,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Errupting Corruption Spear'),
(@ENTRY,0,3,0,2,0,100,0,0,40,22000,25000,11,219646,2,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Shield of Darkness at 40% HP');