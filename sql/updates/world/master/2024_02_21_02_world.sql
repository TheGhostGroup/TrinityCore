-- Meryl Felstorm creature text entries

SET @GROUP_ID=0;
SET @ID=0;
DELETE FROM `creature_text` WHERE `CreatureID`=102700;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(102700, @GROUP_ID+0, @ID+0, 'Good, you made it. I''m afraid we have an escaped dreadlord on our hands.', 12, 0, 100, 0, 0, 61689, 105192, 'Meryl Felstorm to Player'),
(102700, @GROUP_ID+1, @ID+0, 'It seems my fears were well-founded! The dreadlord is already inside. We must hurry!', 12, 0, 100, 603, 0, 69708, 120632, 'Meryl Felstorm to Player'),
(102700, @GROUP_ID+2, @ID+0, 'The hall hasn''t seen any use since the disbanding of the Council of Tirisfal.', 12, 0, 100, 0, 0, 61731, 105438, 'Meryl Felstorm to Player'),
(102700, @GROUP_ID+3, @ID+0, 'Look to the stacks for answers. I will check my memory vault.', 12, 0, 100, 1, 0, 64246, 112312, 'Meryl Felstorm to Player'),
(102700, @GROUP_ID+4, @ID+0, 'So Arrexis was ambushed by this eredar, Balaadur?  Then he is probably in possession of the staff...', 12, 0, 100, 1, 0, 64241, 112317, 'Meryl Felstorm to Player'),
(102700, @GROUP_ID+5, @ID+0, 'With the invasion I have no doubt he is either here or watching. I propose something... audacious.', 12, 0, 100, 1, 0, 64243, 112326, 'Meryl Felstorm to Player'),
(102700, @GROUP_ID+6, @ID+0, 'Let us recreate Arrexis''s ritual! Conducting the ritual at an invasion point will attract Balaadur''s attention. He will likely try an ambush, but we will be ready.', 12, 0, 100, 1, 0, 64244, 112327, 'Meryl Felstorm to Player'),
(102700, @GROUP_ID+7, @ID+0, 'In the center of Dalaran is a portal that can you to Karazhan. Start your search in the mountains west of the tower. I seem to recall a mention of something up there.', 12, 0, 100, 1, 0, 64247, 112462, 'Meryl Felstorm to Player'),
(102700, @GROUP_ID+8, @ID+0, 'Uh, I''m pretty sure she''s a goblin now.', 12, 0, 100, 11, 0, 64239, 112459, 'Meryl Felstorm to Player'),
(102700, @GROUP_ID+9, @ID+0, 'I will arrange transportation at Krasus'' Landing. Talk to the flight master when you are ready.', 12, 0, 100, 1, 0, 64248, 112812, 'Meryl Felstorm to Player'),
(102700, @GROUP_ID+10, @ID+0, 'Alright Akazamzarak, you have the locations. Do you think you can manage the portals?', 12, 0, 100, 0, 0, 61738, 105822, 'Meryl Felstorm to Player'),
(102700, @GROUP_ID+11, @ID+0, 'Mages of Azeroth! I have summoned you here because we face a threat to the future of the world itself!', 12, 0, 100, 0, 0, 61740, 105824, 'Meryl Felstorm to Player'),
(102700, @GROUP_ID+12, @ID+0, 'The dreadlord Kathra\'natir has escaped into the Twisting Nether, carrying with him the secrets of the Council of Tirisfal.', 12, 0, 100, 0, 0, 61742, 105825, 'Meryl Felstorm to Player'),
(102700, @GROUP_ID+13, @ID+0, 'We must hunt him down in the Twisting Nether. Only then will we know his knowledge cannot be used against us.', 12, 0, 100, 0, 0, 61743, 105826, 'Meryl Felstorm to Player'),
(102700, @GROUP_ID+14, @ID+0, 'To this end, I hereby reform the Tirisgarde. Will you join us and take up arms against the Legion?', 12, 0, 100, 0, 0, 61744, 105827, 'Meryl Felstorm to Player'),
(102700, @GROUP_ID+15, @ID+0, 'It is done, then.', 12, 0, 100, 1, 0, 61745, 105828, 'Meryl Felstorm to Player'),
(102700, @GROUP_ID+16, @ID+0, 'Very well. Here, in presence of many of Azeroth\'s greatest mages, it is my honor to dub you $n, Conjuror of the Tirisgarde.', 12, 0, 100, 1, 0, 61746, 105829, 'Meryl Felstorm to Player'),
(102700, @GROUP_ID+17, @ID+0, 'This ancient title symbolizes the awesome responsibility borne by the Tirisgarde. May you carry it with honor.', 12, 0, 100, 1, 0, 61747, 105830, 'Meryl Felstorm to Player'),
(102700, @GROUP_ID+18, @ID+0, 'It is time to meet with our new goblin ally in the War Room. You can begin planning your next steps there.', 12, 0, 100, 0, 0, 61748, 105831, 'Meryl Felstorm to Player'),
(102700, @GROUP_ID+19, @ID+0, 'I have some personal business to attend to...', 12, 0, 100, 0, 0, 61749, 105993, 'Meryl Felstorm to Player');
