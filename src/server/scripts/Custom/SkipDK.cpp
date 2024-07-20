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

#include "AccountMgr.h"
#include "ScriptMgr.h"
#include "Player.h"
#include "Config.h"
#include "Common.h"
#include "Chat.h"
#include "ObjectAccessor.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "SharedDefines.h"
#include "World.h"
#include "WorldSession.h"

#define GOSSIP_MENU_OPTION "I wish to skip the Death Knight starter questline."

enum DKSkipModule
{
	ITEM_HEARTSTONE = 6948,
	MAP_EASTERNKINGDOM = 0,
	MAP_KALIMDOOR = 1,
};

class dk_startzone_skip_module_announce : public PlayerScript
{
public:
    dk_startzone_skip_module_announce() : PlayerScript("dk_startzone_skip_module_announce") { }

    void OnLogin(Player* Player, bool /*firstLogin*/) override
    {
        ChatHandler(Player->GetSession()).SendSysMessage("This server is running the |cff4CFF00 Skip Deathknight Starter Zone |rmodule.");
    }
};

class npc_tc_skip_lich : public CreatureScript
{
public:
    npc_tc_skip_lich() : CreatureScript("npc_tc_skip_lich") { }


		bool OnGossipHello(Player* player, Creature* creature)
		{
			if (creature->IsQuestGiver())
            {
                player->PrepareQuestMenu(creature->GetGUID());
            }
			
			AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_MENU_OPTION, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 0, "Are you sure you want to skip the starting zone?", 0, false);
			SendGossipMenuFor(player, player->GetGossipTextId(creature), creature->GetGUID());
			return true;
		}
		
		bool OnGossipSelect(Player* player, Creature* /*creature*/, uint32 /*sender*/, uint32 action)
		{
			player->PlayerTalkClass->ClearMenus();
			if (action == GOSSIP_ACTION_INFO_DEF + 0)
			{
				skip_deathknight_HandleSkip(player);
				CloseGossipMenuFor(player);
			}
			
			return true;
		}
		
		void skip_deathknight_HandleSkip(Player* player)
	    {
			//Not sure where DKs were supposed to pick this up from, leaving as the one manual add
			player->AddItem(ITEM_HEARTSTONE, true); //Hearthstone
		
			// these are all the starter quests that award talent points, quest items, or spells
			int STARTER_QUESTS[33] = { 12593, 12619, 12842, 12848, 12636, 12641, 12657, 12678, 12679, 12680, 12687, 12698, 12701, 12706, 12716, 12719, 12720, 12722, 12724, 12725, 12727, 12733, -1, 12751, 12754, 12755, 12756, 12757, 12779, 12801, 13165, 13166 };
		
			int specialSurpriseQuestId = -1;
			switch (player->getRace())
			{
				case RACE_TAUREN:
					specialSurpriseQuestId = 12739;
					break;
				case RACE_HUMAN:
					specialSurpriseQuestId = 12742;
					break;
				case RACE_NIGHTELF:
					specialSurpriseQuestId = 12743;
					break;
				case RACE_DWARF:
					specialSurpriseQuestId = 12744;
					break;
				case RACE_GNOME:
					specialSurpriseQuestId = 12745;
					break;
				case RACE_DRAENEI:
					specialSurpriseQuestId = 12746;
					break;
				case RACE_BLOODELF:
					specialSurpriseQuestId = 12747;
					break;
				case RACE_ORC:
					specialSurpriseQuestId = 12748;
					break;
				case RACE_TROLL:
					specialSurpriseQuestId = 12749;
					break;
				case RACE_UNDEAD_PLAYER:
					specialSurpriseQuestId = 12750;
					break;
			}
		
			STARTER_QUESTS[22] = specialSurpriseQuestId;
			STARTER_QUESTS[32] = player->GetTeam() == ALLIANCE ? 13188 : 13189;
		
			for (int questId : STARTER_QUESTS)
			{
				if (player->GetQuestStatus(questId) == QUEST_STATUS_NONE)
				{
					player->AddQuest(sObjectMgr->GetQuestTemplate(questId), nullptr);
					player->RewardQuest(sObjectMgr->GetQuestTemplate(questId), 0, player, false);
				}
			}
		
			//these are alternate reward items from quest 12679, item 39320 is chosen by default as the reward
			player->AddItem(38664, true);//Sky Darkener's Shroud of the Unholy
			player->AddItem(39322, true);//Shroud of the North Wind
		
			//these are alternate reward items from quest 12801, item 38633 is chosen by default as the reward
			player->AddItem(38632, true);//Greatsword of the Ebon Blade
		
			int DKLevel = sConfigMgr->GetFloatDefault("Skip.Deathknight.Start.Level", 58);
			if (player->getLevel() <= DKLevel)
			{
				//GiveLevel updates character properties more thoroughly than SetLevel
				player->GiveLevel(DKLevel);
			}
		
			//Don't need to save all players, just current
			player->SaveToDB();
		
			WorldLocation Aloc = WorldLocation(MAP_EASTERNKINGDOM, -8866.55f, 671.39f, 97.90f, 5.27f);// Stormwind
			WorldLocation Hloc = WorldLocation(MAP_KALIMDOOR, 1637.62f, -4440.22f, 15.78f, 2.42f);// Orgrimmar
		
			if (player->GetTeam() == ALLIANCE)
			{
				player->TeleportTo(MAP_EASTERNKINGDOM, -8833.37f, 628.62f, 94.00f, 1.06f);//Stormwind
				player->SetHomebind(Aloc, 1637);// Stormwind Homebind location
			}
			else
			{
				player->TeleportTo(MAP_KALIMDOOR, 1569.59f, -4397.63f, 7.70f, 0.54f);//Orgrimmar
				player->SetHomebind(Hloc, 1653);// Orgrimmar Homebind location
			}
		}
};

void AddSC_dk_startzone_skip_module()
{
	new dk_startzone_skip_module_announce();
	new npc_tc_skip_lich();
}




