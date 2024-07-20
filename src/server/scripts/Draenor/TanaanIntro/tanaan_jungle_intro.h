/*
 * This file is part of the TrinityCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */
 
 #ifndef TANAAN_JUNGLE_H
 #define TANAAN_JUNGLE_H

struct Hut
{
	float X, Y, Z;
	bool Fired;
};

enum CreatureText
{
    SAY_KHADGAR_FIRST_LINE               = 0,
    SAY_KHADGAR_SECOND_LINE              = 1,
    SAY_KHADGAR_THIRD_LINE               = 2,
    SAY_KHADGAR_FOURTH_LINE              = 3,
    SAY_KHADGAR_FIFTH_LINE               = 4,
    SAY_KHADGAR_SIXTH_LINE               = 5,
    SAY_KHADGAR_SEVENTH_LINE             = 6,

    SAY_THRALL_FIRST_LINE                = 0,
    SAY_THRALL_SECOND_LINE               = 1,
    SAY_THRALL_THIRD_LINE                = 2,
    SAY_THRALL_FOURTH_LINE               = 3,
    SAY_THRALL_FIFTH_LINE                = 4,
    SAY_THRALL_SIXTH_LINE                = 5,
    SAY_THRALL_SEVENTH_LINE              = 6,

    SAY_MARAAD_FIRST_LINE                = 0,
    SAY_MARAAD_SECOND_LINE               = 1,
    SAY_MARAAD_THIRD_LINE                = 2,
    SAY_MARAAD_FOURTH_LINE               = 3,

    SAY_LADY_LIADRIN_FIRST_LINE          = 0,
    SAY_LADY_LIADRIN_SECOND_LINE         = 1,

    SAY_CORDANA_FELSONG_FIRST_LINE       = 0,
};

enum Events
{

};

enum Quests
{
    QuestAzerothLastStand                = 35933,
    QuestOnslaughtEnd                    = 34392,
    QuestThePortalPower                  = 34393,
	QuestCostOfWar                       = 34420,
    QuestBledDryAlly                     = 35240,
    QuestBledDryHorde                    = 34421,
    QuestBlazeOfGlory                    = 34422,
    QuestAltarAltercation                = 34423,
    QuestKargatharProvingGrounds         = 34425,
	QuestKillYourHundred                 = 34429,
    QuestAPotentialAlly                  = 34478,
    QuestAPotentialAllyHorde             = 34427,
    QuestMastersOfShadowAlly             = 34431,
    QuestMastersOfShadowHorde            = 34737,
    QuestKeliDanTheBreakerHorde          = 34741,
    QuestKeliDanTheBreakerAlly           = 34436,
    QuestTheGunpowderPlot                = 34987,
    QuestATasteOfIron                    = 34445,
    QuestTheHomeStretchHorde             = 34446,
    QuestTheHomeStretchAlly              = 35884,
    QuestYrelHorde                       = 34740,
    QuestYrelTanaan                      = 34434,
    QuestTheBattleOfTheForge             = 34439,
    QuestTakingATripToTheTopOfTheTank    = 35747,
    QuestGaNarOfTheFrostwolf             = 34442,
    QuestShadowOfTheWorldbreaker         = 34958
};

enum SceneObjects
{
    SceneCostOfWarEscort                 = 806,
    SceneGulDanFreedom                   = 808,
    SceneSouthernCage                    = 812,
    SceneEasterCage                      = 813,
    SceneRingOfFire                      = 838,
    SceneKargathFight                    = 839,
    SceneShootingGallery                 = 871,
    SceneBlackHandReveal                 = 896,
    SceneBuildingExplosion               = 902,
    SceneBridgeDestruction               = 903,
    SceneDamExplosion                    = 910,
    SceneFinaleIronBastion               = 912,
    SceneFromCaveToRidge                 = 922,
    SceneGulDanReavel                    = 925,
    SceneWaterPortal                     = 928,
    SceneKilRoggRevealed                 = 940,
    SceneEnterKarGathArena               = 945,
    SceneEscapingTheArena                = 946,
    SceneLiadrinAndOlinEnter             = 948,
    SceneKargathYells                    = 951,
    SceneNerZhulReveal                   = 952,
    SceneHordeBoat                       = 953,
    SceneCaveIn                          = 956,
    SceneChoGallsFreedom                 = 961,
    SceneTeronGorsFreedom                = 962,
    SceneAllianceBoat                    = 968,
    SceneSoulTrain                       = 1018
};

enum Phases
{
	
};

enum KillCredits
{
	
};

enum QuestObjects
{
	OBJECTIVE_PORTAL_CREDIT = 82573,
};

enum BlazeOfGloryData
{
	
};

enum TanaanCreatures
{
    NPC_KHADGAR = 78558,
    NPC_OLIN    = 79315,
    NPC_THAELIN = 78568,
    NPC_HANSEL  = 78569,
};

enum Spells
{
    SPELL_PHASE_SHIFT_PLAYER  = 82238,
    SPELL_CHAIN_LIGHT         = 15305,
    SPELL_COMMAND_EARTH       = 167470,
    SPELL_COMMAND_LIGHT       = 167014,
    SPELL_SAVAGERY            = 167432,
    SPELL_PROTECTOR           = 166114,
    SPELL_GULDAN_REVEAL       = 163807,
    SPELL_UNDER_PORTAL_CREDIT = 166319,
};

#endif
