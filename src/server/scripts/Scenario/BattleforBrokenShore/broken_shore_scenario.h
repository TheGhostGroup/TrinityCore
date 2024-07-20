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
 
#ifndef BROKEN_SHORE_H_
#define BROKEN_SHORE_H_

#include "CreatureAIImpl.h"

#define BRSScriptName "instance_broken_shore"
#define DataHeader "BFBS"

uint32 const EncounterCount = 9;

enum Spells
{
	SPELL_STAGE_1_PORT_ALLIANCE 		= 199358,
	SPELL_STAGE_1_PORT_HORDE    		= 225152,
	SPELL_LEAVE_BROKEN_SHORE_QUEUE      = 227058,
	SPELL_BROKEN_SHORE_CLIENT_SCENE     = 216356, // 1335
	SPELL_SWIMMER_TELEPORT              = 218611,
	SPELL_INTRO_CONVERSATION_1          = 180708, // 923
	SPELL_INTRO_CONVERSATION_2          = 199353, // 924
	SPELL_CANNONBALLS_SCENE             = 183341, // 1351
	SPELL_INTRO_SCENE                   = 199357, // 486
	
	SPELL_TELEPORT_TO_STORMWIND         = 208514,
};


enum Creatures
{
    // Alliance's NPCs
    NPC_GennGreymane                    = 90717,
    NPC_Varian                          = 90713,
    NPC_Jaina                           = 90714,
    NPC_Tirion                          = 91951,

    // Horde's NPCs
    NPC_Voljin                          = 90708,
    NPC_Baine                           = 90710,
    NPC_Sylvanas                        = 90709,

    // The Legion's NPCs                
    NPC_Jaraxxus                        = 105179,
    NPC_Tichondrius                     = 90688,
    NPC_Brutallus                       = 91902,    
    NPC_Guldan                          = 94276,

    // others
    NPC_Kross                           = 90544,
};

enum GameObjects
{
    // Gameobjets 
    GO_ShipAlliance                     = 251604,
    GO_ShipHorde                        = 255203,

    GO_TransportAlliance                = 251513, 
    GO_TransportHorde                   = 254124,
    
    GO_SpiresOfWoe                      = 240194,
};

enum etc
{
	_DT_SCENARIA_TEAM                   = 0,
    _CIMEMATIC_ID                       = 999,

    _EVENT_TeleportAlliance             = 1,
    _EVENT_TeleportHorde                = 2,


    // Stage 2     
    TowerDestroyAlliance                = 44077,   // Criteria objective ==> [Criteria.db2].Asset
    TowerDestroyHorde                   = 54114,

    // Stage 3
    DefeatCommanderAlliance             = 45131,
    DefeatCommanderHorde                = 54109,

    // Stage 5
    DestroyPortalAlliance               = 45288,
    DestroyPortalHorde                  = 54141,

    // Stage 6
    BlackCityRazed_1p                   = 44384,   // stage progress Increase by 1%
    BlackCityRazed_5p                   = 53063,
    BlackCityRazed_10p                  = 53064,
};

#endif // !__BROKEN_SHORE_SCENARIO_H__
