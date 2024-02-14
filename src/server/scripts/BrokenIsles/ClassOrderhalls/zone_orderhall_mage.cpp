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

enum Creatures_MageOrderhall
{
	NPC_MERYL_FELSTORM	=	102700,
	NPC_ALODI			=   102846,
};

enum KillCredit_MageOrderhall
{
	KILL_CREDIT_SPEAK_WITH_MERYL   = 103032,
	KILL_CREDIT_PLAN_MADE		   = 107589,
};

enum Spells_MageOrderhall
{
	SPELL_ARCANE_RECALL = 226016,
};

enum CreatureText_MageOrderhall
{
	SAY_MERYL_FIRST_LINE 		   = 0,
	SAY_MERYL_SECOND_LINE          = 1,
	SAY_MERYL_THIRD_LINE           = 2,
	SAY_MERYL_FOURTH_LINE          = 3,
	SAY_MERYL_FIFTH_LINE           = 4,
	
	SAY_ALODI_FIRST_LINE           = 0,
	SAY_ALODI_SECOND_LINE          = 1,
};

enum Quests_MageOrderhall
{
	QUEST_FELSTORMS_PLEA           = 41035,
	QUEST_THE_DREADLORDS_PRIZE     = 41036,
	QUEST_A_MAGES_WEAPON           = 41085,
	QUEST_FINDING_EBONCHILL        = 42452,
};

enum GossipMenus_MageOrderhall
{
	GOSSIP_MENU_OPTION_MERYL       = 0,
};

enum PlayerChoice_MageOrderhall
{
	PLAYER_CHOICE_MAGE_SELECTION   = 265,
	PLAYER_CHOICE_ARCANE           = 584, // Arcane Artifact Weapon
	PLAYER_CHOICE_FIRE             = 585, // Fire Artifact Weapon
	PLAYER_CHOICE_FROST            = 586, // Frost Artifact Weapon
};

void AddSC_zone_orderhall_mage()
{
}
