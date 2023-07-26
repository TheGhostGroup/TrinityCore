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

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "SpellScript.h"
#include "Player.h"
#include "PhasingHandler.h"
#include "Group.h"

enum BlinkOfAnEye
{
    MAP_BROKEN_ISLES = 1220,
    KILL_CREDIT_TELEPORT_DALARAN = 114506,
    QUEST_BLINK_OF_AN_EYE        = 446633,
    NPC_EMISSARY_AULDBRIDGE      = 111109,

    ACTION_AULDBRIDGE_FIRST_LINE,
    EVENT_AULDBRIDGE_SAY_FIRST_LINE,
    EVENT_AULDBRIDGE_SAY_SECOND_LINE,
    EVENT_AULDBRIDGE_SAY_THIRD_LINE,
    EVENT_AULDBRIDGE_WAYPOINT_START,
    SAY_AULDBRIDGE_FIRST_LINE = 0,
    SAY_AULDBRIDGE_SECOND_LINE = 1,
    SAY_AULDBRIDGE_THIRD_LINE = 2,

    AULDBRIDGE_PATH = 11110910,

    WAYPOINT_22,

	SPELL_SUMMON_WARRIOR_HORDE    = 216443, 
    SPELL_SUMMON_WARRIOR_ALLIANCE = 216497, 
    SPELL_SUMMON_PALADIN          = 190886,
    SPELL_SUMMON_HUNTER           = 196908,
    SPELL_SUMMON_ROGUE            = 201208,
    SPELL_SUMMON_PRIEST_HORDE     = 226409,
    SPELL_SUMMON_PRIEST_ALLIANCE  = 226412,
    SPELL_SUMMON_DK               = 200023,
    SPELL_SUMMON_SHAMAN           = 227324,
    SPELL_SUMMON_MAGE             = 195356,
    SPELL_SUMMON_WARLOCK          = 204860,
    SPELL_SUMMON_MONK             = 193978,
    SPELL_SUMMON_DRUID            = 199277,
    SPELL_SUMMON_DH               = 195286
};

class scene_dalaran_teleportation : public SceneScript
{
public:
    scene_dalaran_teleportation() : SceneScript("scene_dalaran_teleportation") { }

    void OnSceneStart(Player* player, uint32 /*sceneInstanceID*/, SceneTemplate const* /*sceneTemplate*/) override
    {
        player->KilledMonsterCredit(KILL_CREDIT_TELEPORT_DALARAN);
    }

    // Called when a scene is canceled
    void OnSceneCancel(Player* player, uint32 /*sceneInstanceID*/, SceneTemplate const* /*sceneTemplate*/) override
    {
        SceneFinished(player);
    }

    // Called when a scene is completed
    void OnSceneComplete(Player* player, uint32 /*sceneInstanceID*/, SceneTemplate const* /*sceneTemplate*/) override
    {
        SceneFinished(player);
    }

    void SceneFinished(Player* player)
    {
        player->TeleportTo(MAP_BROKEN_ISLES, -827.82f, 4369.25f, 738.64f, 1.893364f);
        PhasingHandler::OnConditionChange(player);
    }
};

struct npc_emissary_auldbridge_111109 : public ScriptedAI
{
    npc_emissary_auldbridge_111109(Creature* creature) : ScriptedAI(creature) { Initialize(); }

    EventMap events;
    std::set<ObjectGuid> pList;
    ObjectGuid   m_playerGUID;

    void Initialize()
    {
        m_playerGUID = ObjectGuid::Empty;
    }

    void sQuestReward(Player* player, Quest const* quest, uint32 /*opt*/)  override
    {
        if (quest->GetQuestId() == QUEST_BLINK_OF_AN_EYE)
        {
            if (Creature* auldbridge = me->FindNearestCreature(NPC_EMISSARY_AULDBRIDGE, 5.0f))
                if (TempSummon* waypointAuldbridge = player->SummonCreature(auldbridge->GetEntry(), auldbridge->GetPosition(), TEMPSUMMON_TIMED_DESPAWN, 60000, 0, true))
                    waypointAuldbridge->AI()->DoAction(ACTION_AULDBRIDGE_FIRST_LINE);
            m_playerGUID = player->GetGUID();
            PhasingHandler::OnConditionChange(player);
        }
    }

    void UpdateAI(uint32 diff) override
    {
        events.Update(diff);
        while (uint32 eventId = events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EVENT_AULDBRIDGE_SAY_FIRST_LINE:
                {
                    Talk(SAY_AULDBRIDGE_FIRST_LINE);
                    events.ScheduleEvent(EVENT_AULDBRIDGE_SAY_SECOND_LINE, 3s);
                    break;
                }
                case EVENT_AULDBRIDGE_SAY_SECOND_LINE:
                {
                    Talk(SAY_AULDBRIDGE_SECOND_LINE);
                    events.ScheduleEvent(EVENT_AULDBRIDGE_SAY_THIRD_LINE, 3s);
                    break;
                }
                case EVENT_AULDBRIDGE_SAY_THIRD_LINE:
                {
                    Talk(SAY_AULDBRIDGE_THIRD_LINE);
                    events.ScheduleEvent(EVENT_AULDBRIDGE_WAYPOINT_START, 3s);
                    break;
                }
                case EVENT_AULDBRIDGE_WAYPOINT_START:
                {
                    me->GetMotionMaster()->MovePath(AULDBRIDGE_PATH, false);
                    break;
                }
            }
        }
    }

    void DoAction(int32 action) override
    {
        switch (action)
        {
            case ACTION_AULDBRIDGE_FIRST_LINE:
            {
                events.ScheduleEvent(EVENT_AULDBRIDGE_SAY_FIRST_LINE, 1s);
                break;
            }
        }
    }

    void WaypointReached(uint32 pointId)
    {
        switch (pointId)
        {
            case WAYPOINT_22:
            {
                me->DespawnOrUnsummon();
                break;
            }
            default:
                break;
        }
    }

};

void AddSC_dalaran_legion()
{
    new scene_dalaran_teleportation();
    RegisterCreatureAI(npc_emissary_auldbridge_111109);
}
