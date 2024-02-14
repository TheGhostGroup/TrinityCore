/*
 * Copyright (C) 2008-2023 TrinityCore <https://www.trinitycore.org/>
 * Copyright (C) 2022-2023 LegionEmulationProject <https://github.com/LegionEmulationProject/>
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

#include "ScriptMgr.h"

enum Creatures_RogueOrderhall
{
	NPC_RAVENHOLDT_COURIER 		= 102018,
	NPC_LORD_JORACH_RAVENHOLDT  = 101513,
	NPC_VALEERA_SANGUINAR       = 98102,
	NPC_FLEET_ADMIRAL_TETHYS    = 94159,
	NPC_PRINCESS_TESS_GREYMANE  = 94138,
};

enum Killcredits_RogueOrderhall
{
	NPC_KILL_CREDIT_LETTER_READ               = 102041,
	NPC_KILL_CREDIT_PASSWORD_SPOKEN           = 105907,
	NPC_KILL_CREDIT_ENTER_THE_HALL_OF_SHADOWS = 102086,
	NPC_KILL_CREDIT_FIND_THE_UNCROWNED        = 102098,
	NPC_KILL_CREDIT_TAKE_YOUR_SEAT_01         = 102498,
	NPC_KILL_CREDIT_TAKE_YOUR_SEAT_02         = 102502,
};

enum Spells_RogueOrderhall
{
	SPELL_SEALED_LETTER             = 201253,
	SPELL_DELIVER_MESSAGE           = 201234,
	SPELL_DONT_KILL_THE_MESSENGER 	= 201212,
};

enum CreatureText_RogueOrderhall
{
	SAY_RAVENHOLDT_COURIER_FIRST_LINE     	 = 0,
	SAY_RAVENHOLDT_COURIER_SECOND_LINE    	 = 1,
	SAY_RED_JACK_FIDDLE_FIRST_LINE        	 = 0,
	SAY_VALEERA_SANGUINAR_FIRST_LINE      	 = 0,
	SAY_VALEERA_SANGUINAR_SECOND_LINE     	 = 1,
	SAY_LORD_JORACH_RAVENHOLDT_FIRST_LINE    = 0,
	SAY_LORD_JORACH_RAVENHOLDT_SECOND_LINE   = 1,
	SAY_FLEET_ADMIRAL_TETHYS_FIRST_LINE      = 0,
};

enum Quests_RogueOrderhall
{
	QUEST_CALL_OF_THE_UNCROWNED   = 40832,
	QUEST_THE_FINAL_SHADOW        = 40839,
	QUEST_A_WORTHY_BLADE          = 40840,
};

void AddSC_zone_orderhall_rogue()
{
}
