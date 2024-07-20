/*
 * Copyright (C) 2008-2018 TrinityCore <https://www.trinitycore.org/>
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

#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedGossip.h"

enum BrokenShoreIntro
{
    SPELL_LEAVE_FOR_BROKENSHORE_CLIENT_SCENE = 225147,
    SPELL_LEAVE_FOR_BROKENSHORE_QUEUE = 227058,
};

// captain rusoo 113118
class npc_captain_ruso_113118 : public CreatureScript
{
public:

    npc_captain_ruso_113118() : CreatureScript ("npc_captain_ruso_113118") { }

    bool OnGossipSelect(Player* player, Creature* /*creature*/, uint32 /*sender*/, uint32 /*action*/)
    {
        player->PlayerTalkClass->ClearMenus();
        player->KilledMonsterCredit(113118);
        player->CastSpell(player, SPELL_LEAVE_FOR_BROKENSHORE_CLIENT_SCENE, false);
        player->CastSpell(player, SPELL_LEAVE_FOR_BROKENSHORE_QUEUE, false);
        return true;
    }
};

void AddSC_orgrimmar()
{
    new npc_captain_ruso_113118();
}
