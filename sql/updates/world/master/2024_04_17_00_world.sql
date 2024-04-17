-- Add missing creature text for krovas bloodthorn
DELETE FROM `creature_text` WHERE `CreatureID` = 116704;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `Comment`) VALUES
(116704,0,0,'I need to speak with you.',12,0,100,0,0,57295,0,0,'Korvas Bloodthorn to Player'),
(116704,0,1,'Altruis and the others await you at Krasus\' Landing. I\'ll meet you there.',12,0,100,0,0,57295,0,0,'Korvas Bloodthorn to Player'),
(116704,0,2,'Kayn and the others await you at Krasus\' Landing. I\'ll meet you there.',12,0,100,0,0,57295,0,0,'Korvas Bloodthorn to Player'),
(116704,0,3,'Every moment we sit idle, the Legion gains strength.',12,0,100,0,0,57295,0,0,'Korvas Bloodthorn to Player'),
(116704,0,4,'In Lord Illidan\'s absence, you are the ranking member of our order. We can\'t make this decision without you.',12,0,100,0,0,57295,0,0,'Korvas Bloodthorn to Player'),
(116704,0,5,'Let me know when you\'re ready.',12,0,100,0,0,57295,0,0,'Korvas Bloodthorn to Player');