--
-- Table structure for table `creature_immunities`
--
DROP TABLE IF EXISTS `creature_immunities`;
CREATE TABLE `creature_immunities` (
  `ID` int NOT NULL,
  `SchoolMask` tinyint NOT NULL DEFAULT '0',
  `DispelTypeMask` smallint NOT NULL DEFAULT '0',
  `MechanicsMask` bigint NOT NULL DEFAULT '0',
  `Effects` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Auras` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ImmuneAoE` tinyint(1) NOT NULL DEFAULT '0',
  `ImmuneChain` tinyint(1) NOT NULL DEFAULT '0',
  `Comment` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `creature_immunities_temp`
--
INSERT INTO `creature_immunities` (`ID`,`SchoolMask`,`MechanicsMask`,`Effects`,`Auras`,`Comment`) VALUES
(-2,4,0,'','',''),
(-3,8,0,'','',''),
(-4,16,0,'','',''),
(-5,32,0,'','',''),
(-6,52,0,'','',''),
(-7,64,0,'','',''),
(-8,84,0,'','',''),
(-9,96,0,'','',''),
(-10,126,0,'','',''),
(-11,0,2,'','',''),
(-12,0,16,'','',''),
(-13,8,16,'','',''),
(-14,0,18,'','',''),
(-15,0,32,'','',''),
(-16,64,32,'','',''),
(-17,0,34,'','',''),
(-18,0,40,'','',''),
(-19,0,64,'','',''),
(-20,0,512,'','',''),
(-21,0,514,'','',''),
(-22,0,1024,'','',''),
(-23,0,1056,'','',''),
(-24,0,2048,'','',''),
(-25,0,2050,'','',''),
(-26,0,2052,'','',''),
(-27,0,2080,'','',''),
(-28,0,2176,'','',''),
(-29,0,2178,'','',''),
(-30,0,2208,'','',''),
(-31,0,2210,'','',''),
(-32,0,2562,'','',''),
(-33,0,3074,'','',''),
(-34,0,4096,'','',''),
(-35,0,4098,'','',''),
(-36,0,4112,'','',''),
(-37,0,4624,'','',''),
(-38,0,6144,'','',''),
(-39,64,6688,'','',''),
(-40,0,6810,'','',''),
(-41,0,8224,'','',''),
(-42,64,10368,'','',''),
(-43,0,14982,'','',''),
(-44,0,16448,'','',''),
(-45,0,21114,'','',''),
(-46,0,32768,'','',''),
(-47,0,32770,'','',''),
(-48,0,36864,'','',''),
(-49,0,65278,'','',''),
(-50,0,131072,'','',''),
(-51,0,131074,'','',''),
(-52,0,131106,'','',''),
(-53,0,132128,'','',''),
(-54,0,133122,'','',''),
(-55,0,133248,'','',''),
(-56,0,133250,'','',''),
(-57,0,135200,'','',''),
(-58,0,135202,'','',''),
(-59,0,139264,'','',''),
(-60,0,139298,'','',''),
(-61,0,141440,'','',''),
(-62,0,143360,'','',''),
(-63,0,262144,'','',''),
(-64,0,262146,'','',''),
(-65,0,262172,'','',''),
(-66,0,268288,'','',''),
(-67,0,274592,'','',''),
(-68,0,278534,'','',''),
(-69,0,404998,'','',''),
(-70,0,530432,'','',''),
(-71,0,16777248,'','',''),
(-72,124,16777248,'','',''),
(-73,126,16777248,'','',''),
(-74,127,16777248,'','',''),
(-75,0,16777250,'','',''),
(-76,0,16777312,'','',''),
(-77,0,16777344,'','',''),
(-78,0,16779424,'','',''),
(-79,0,16779428,'','',''),
(-80,0,16779488,'','',''),
(-81,0,16783392,'','',''),
(-82,0,16791714,'','',''),
(-83,0,16821412,'','',''),
(-84,0,17039394,'','',''),
(-85,0,17039520,'','',''),
(-86,0,17045536,'','',''),
(-87,0,17825824,'','',''),
(-88,0,17826336,'','',''),
(-89,0,25169952,'','',''),
(-90,0,25574434,'','',''),
(-91,0,26216098,'','',''),
(-92,0,26624126,'','',''),
(-93,0,29393010,'','',''),
(-94,0,134221834,'','',''),
(-95,0,134487696,'','',''),
(-96,0,134487698,'','',''),
(-97,0,142884558,'','',''),
(-98,0,151262366,'','',''),
(-99,0,151262398,'','',''),
(-100,0,151273214,'','',''),
(-101,0,151314166,'','',''),
(-102,0,151390950,'','',''),
(-103,0,160853686,'','',''),
(-104,0,160857782,'','',''),
(-105,0,160857790,'','',''),
(-106,0,160857854,'','',''),
(-107,0,161361662,'','',''),
(-108,0,553648160,'','',''),
(-109,0,688553716,'','',''),
(-110,0,688553724,'','',''),
(-111,0,1002405630,'','',''),
(-112,0,1073741824,'','',''),
(-113,0,1073758240,'','',''),
(-114,0,1073873920,'','',''),
(-115,0,1073882274,'','',''),
(-116,8,1073882274,'','',''),
(-117,0,1073882290,'','',''),
(-118,0,1073915042,'','',''),
(-119,0,1074009602,'','',''),
(-120,0,1082677838,'','',''),
(-121,0,1082686030,'','',''),
(-122,0,1082686046,'','',''),
(-123,0,1090659490,'','',''),
(-124,0,1090664098,'','',''),
(-125,0,1090679030,'','',''),
(-126,0,1090936574,'','',''),
(-127,0,1090940662,'','',''),
(-128,0,1090940670,'','',''),
(-129,0,1090944766,'','',''),
(-130,0,1100093094,'','',''),
(-131,0,1100248830,'','',''),
(-132,0,1100377278,'','',''),
(-133,0,1100904190,'','',''),
(-134,0,1100939006,'','',''),
(-135,0,1102476334,'','',''),
(-136,0,1102477054,'','',''),
(-137,0,1102872318,'','',''),
(-138,0,1169581822,'','',''),
(-139,0,1207969830,'','',''),
(-140,0,1207983274,'','',''),
(-141,0,1208099366,'','',''),
(-142,0,1208245410,'','',''),
(-143,0,1209413306,'','',''),
(-144,0,1224758964,'','',''),
(-145,0,1224758966,'','',''),
(-146,0,1225030910,'','',''),
(-147,0,1225064188,'','',''),
(-148,0,1225162494,'','',''),
(-149,0,1225195198,'','',''),
(-150,0,1225424638,'','',''),
(-151,0,1225588478,'','',''),
(-152,0,1225686782,'','',''),
(-153,0,1225719550,'','',''),
(-154,0,1226194616,'','',''),
(-155,0,1230420214,'','',''),
(-156,0,1233419518,'','',''),
(-157,0,1233551102,'','',''),
(-158,0,1233682174,'','',''),
(-159,0,1234075390,'','',''),
(-160,0,1234337534,'','',''),
(-161,0,1234595582,'','',''),
(-162,0,1234597614,'','',''),
(-163,0,1234599158,'','',''),
(-164,0,1234599606,'','',''),
(-165,1,1234599606,'','',''),
(-166,4,1234599606,'','',''),
(-167,8,1234599606,'','',''),
(-168,64,1234599606,'','',''),
(-169,124,1234599606,'','',''),
(-170,0,1234599654,'','',''),
(-171,0,1234599662,'','',''),
(-172,0,1234599670,'','',''),
(-173,0,1234599678,'','',''),
(-174,16,1234599678,'','',''),
(-175,0,1234632446,'','',''),
(-176,0,1234992894,'','',''),
(-177,0,1235119870,'','',''),
(-178,4,1235119870,'','',''),
(-179,0,1235123374,'','',''),
(-180,0,1235123454,'','',''),
(-181,0,1235123950,'','',''),
(-182,0,1235123964,'','',''),
(-183,0,1235123966,'','',''),
(-184,0,1235156734,'','',''),
(-185,0,1237221118,'','',''),
(-186,0,1237745406,'','',''),
(-187,0,1238793982,'','',''),
(-188,0,1238794238,'','',''),
(-189,0,1239318270,'','',''),
(-190,0,1292271358,'','',''),
(-191,0,1301706478,'','',''),
(-192,0,1301708478,'','',''),
(-193,0,1301708534,'','',''),
(-194,0,1301708542,'','',''),
(-195,0,1305903102,'','',''),
(-196,0,1335787518,'','',''),
(-197,0,1539276542,'','',''),
(-198,0,1539309310,'','',''),
(-199,0,1774857982,'','',''),
(-200,0,1775140606,'','',''),
(-201,0,2076147454,'','',''),
(-202,127,2080374526,'','',''),
(-203,0,3120561916,'','',''),
(-204,0,4294967038,'','','');

ALTER TABLE `creature_template` ADD `CreatureImmunitiesId` int NOT NULL DEFAULT '0' AFTER `RegenHealth`;

UPDATE `creature_template` SET `CreatureImmunitiesId`=COALESCE((SELECT ci.ID FROM `creature_immunities` ci WHERE ci.SchoolMask=spell_school_immune_mask AND ci.MechanicsMask=mechanic_immune_mask*2),0);

ALTER TABLE `creature_template`
  DROP `spell_school_immune_mask`,
  DROP `mechanic_immune_mask`;

UPDATE `trinity_string` SET
  `content_default`=REPLACE(`content_default`,'%u','%s'),
  `content_loc1`=REPLACE(`content_loc1`,'%u','%s'),
  `content_loc2`=REPLACE(`content_loc2`,'%u','%s'),
  `content_loc3`=REPLACE(`content_loc3`,'%u','%s'),
  `content_loc4`=REPLACE(`content_loc4`,'%u','%s'),
  `content_loc5`=REPLACE(`content_loc5`,'%u','%s'),
  `content_loc6`=REPLACE(`content_loc6`,'%u','%s'),
  `content_loc7`=REPLACE(`content_loc7`,'%u','%s'),
  `content_loc8`=REPLACE(`content_loc8`,'%u','%s')
WHERE `entry`=5037;
