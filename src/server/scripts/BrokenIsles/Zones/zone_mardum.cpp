/*
* This program is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License as published by the
* Free Software Foundation; either version 3 of the License, or (at your
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

#include "Conversation.h"
#include "PhasingHandler.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "SpellScript.h"

enum MardumConversations
{
    CONVERSATION_DEMONHUNTER_INTRO_START = 705
};

enum MardumQuests
{
	QUEST_START_DEMON_HUNTER_TRACKING_EVENT = 40076,
    QUEST_INVASION_BEGIN           			= 40077,
    QUEST_ASHTONGUE_FORCES         			= 40378,
    QUEST_COILSKAR_FORCES          			= 40379,
    QUEST_EYE_ON_THE_PRIZE         			= 39049,
    QUEST_MEETING_WITH_QUEEN       			= 39050,
    QUEST_SHIVARRA_FORCES          			= 38765,
    QUEST_BEFORE_OVERRUN           			= 38766,
    QUEST_HIDDEN_NO_MORE           			= 39495,
    QUEST_ON_FELBAT_WINGS          			= 39663,
    QUEST_THE_KEYSTONE             			= 38728,
    QUEST_CRY_HAVOC                			= 39516,
    QUEST_THEIR_NUMBERS_ARE_LEGION 			= 38819
};

enum MardumSpells
{
    // Inquisitor Baleful
    SPELL_INCITE_MADNESS            		= 194529,
    SPELL_INFERNAL_SMASH            		= 192709,
    SPELL_LEGION_AEGIS              		= 192665,
    SPELL_LEARN_EYE_BEAM            		= 195447,
		
    // Doom Commander Beliash		
    SPELL_SHADOW_BLAZE              		= 195401,
    SPELL_SHADOW_BOLT_VOLLEY        		= 196403,
    SPELL_SHADOW_RETREAT            		= 196625
};		
		
enum MardumEvents		
{		
    // Doom Commander Beliash		
    EVENT_SHADOW_BLAZE              		= 0,
    EVENT_SHADOW_BOLT_VOLLEY        		= 1,
    EVENT_SHADOW_RETREAT            		= 2
};		
		
enum MardumTexts		
{		
    // Inquisitor Baleful		
    SAY_AGGRO_INQUISITOR_BALEFUL    		= 0,
    SAY_DEATH_INQUISITOR_BALEFUL    		= 1,
    SAY_60_HP_PCT_INQUISITOR_BALEFUL		= 2,
		
    // Doom Commander Beliash		
    SAY_AGGRO_DOOM_COMMANDER_BELIASH		= 0,
    SAY_AGGRO_QUEEN_TYRANNA         		= 0,
		
    // Kayn Sunfury		
    SAY_KAYN_SUNFURY_FIRST_LINE         	= 0,
    SAY_KAYN_SUNFURY_SECOND_LINE         	= 1,
    SAY_KAYN_SUNFURY_THIRD_LINE        		= 2
};

enum MardumCreatures
{
    NPC_POWER_QUEST_KILL_CREDIT                   = 105946,
    NPC_COLOSSAL_INFERNAL                         = 96159,
    NPC_LEGION_GATEWAY_KILL_CREDIT                = 94406,
    NPC_FIRST_SUMMONED_GUARDIAN_QUEST_KILL_CREDIT = 97831,
    NPC_QUEEN_TYRANNA                             = 95048,
    NPC_BELIASH_CREDIT                            = 106003,
    NPC_ASHTONGUE_CAPTAIN                         = 90247,
    NPC_COILSKAR_CAPTAIN                          = 93693,
    NPC_SHIVARRA_CAPTAIN                          = 94435
};

enum MardumGameObjects
{
    GOB_CAVERN_STONES = 245045
};


enum MardumScenes
{
    SPELL_SCENE_MARDUM_WELCOME           = 193525,
    SPELL_SCENE_MARDUM_LEGION_BANNER     = 191677,
    SPELL_SCENE_MARDUM_ASHTONGUE_FORCES  = 189261,
    SPELL_SCENE_MARDUM_COILSKAR_FORCES   = 190793,
    SPELL_SCENE_MEETING_WITH_QUEEN       = 188539,
    SPELL_SCENE_MARDUM_SHIVARRA_FORCES   = 190851,
};

enum MardumMisc
{
	ZONE_MARDUM      = 7705
};

class scene_demonhunter_intro : public SceneScript
{
public:
    scene_demonhunter_intro() : SceneScript("scene_demonhunter_intro") { }

    void OnSceneStart(Player* player, uint32 /*sceneInstanceID*/, SceneTemplate const* /*sceneTemplate*/) override
    {
        Conversation::CreateConversation(CONVERSATION_DEMONHUNTER_INTRO_START, player, player->GetPosition(), { player->GetGUID() });
    }

    void OnSceneComplete(Player* player, uint32 /*sceneInstanceID*/, SceneTemplate const* /*sceneTemplate*/) override
    {
        PhasingHandler::OnConditionChange(player);
    }
};

void AddSC_zone_mardum()
{
    new scene_demonhunter_intro();
}
