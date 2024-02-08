/*
 * Copyright (C) 2008-2023 TrinityCore <https://www.trinitycore.org/>
 * Copyright (C) 2022-2023 Legion Emulation Project <https://github.com/LegionEmulationProject>
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
#include "ObjectMgr.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "PhasingHandler.h"
#include "WorldSession.h"
#include "Chat.h"

enum LegionIntroSkip
{
    QUEST_BLINK_OF_AN_EYE 		            = 44663,
    SPELL_DALARAN_TELEPORT_SCENE_VIEWED     = 227857,
    GOSSIP_MENU_OPTION_LEE                  = 0,
};

class npc_recruter_lee : public CreatureScript
{
public:
    npc_recruter_lee() : CreatureScript("npc_recruter_lee") { }

    bool OnGossipSelect(Player* player, Creature* /*creature*/, uint32 /*sender*/, uint32 /*action*/)
    {
        if (player->GetQuestStatus(QUEST_BLINK_OF_AN_EYE) == QUEST_STATUS_NONE)
        {
            if (const Quest* quest = sObjectMgr->GetQuestTemplate(QUEST_BLINK_OF_AN_EYE))
                player->AddQuest(quest, nullptr);
            PhasingHandler::OnConditionChange(player);
            CloseGossipMenuFor(player);
            player->CastSpell(player, SPELL_DALARAN_TELEPORT_SCENE_VIEWED);
        }
       return true;
    }
};


void AddSC_stormwind_city()
{
    new npc_recruter_lee();
}
