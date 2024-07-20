-- Quest: The Future of Gnomeregan ( Monk )

DELETE FROM creature_queststarter WHERE `id` = 42396 AND `quest` = 31135;
INSERT INTO creature_queststarter (`id`, `quest`) VALUES 
(42396, 31135);
