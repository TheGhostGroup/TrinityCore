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

#include "GameObject.h"
#include "GameObjectAI.h"
#include "Player.h"
#include "ScriptedCreature.h"
#include "ScriptMgr.h"
#include "Unit.h"

enum Creatures
{
    // Dark Portal
    NPC_ARCHMAGE_KHADGAR_1              = 78558,
    NPC_THAELIN_DARKANVIL               = 78568,
    NPC_HANSEL_HEAVYHANDS               = 78569,
    NPC_TERONGOR                        = 81696,
    NPC_CHOGALL                         = 81695,
    NPC_KHADGAR_SHIELD_TARGET_DUMMY     = 82305,
    NPC_GULDAN                          = 78333,
};

enum CreatureText
{
    // Dark Portal
    SAY_KHADGAR_FIRST_LINE              = 0,
    SAY_KHADGAR_SECOND_LINE             = 1,
};

enum Quests
{
    // Dark Portal
    QUEST_THE_DARK_PORTAL               = 34398,
    QUEST_ONSLAUGHTS_END                = 34392,
    QUEST_THE_PORTALS_POWER             = 34393,
    QUEST_AZEROTHS_LAST_STAND           = 35933,
};

enum Scenes
{
    // Dark Portal
    SCENE_CHOGALL_FREED                 = 961,
    SCENE_TERONGOR_FREED                = 962,
    SCENE_DETONATION_DWARVES            = 937,
    SCENE_GULDAN_REVEAL                 = 925,
    SCENE_GULDAN_FREED                  = 808,
};

enum Spells
{
    // Dark Portal
    SPELL_ARCANE_AEGIS                  = 165667,
    SPELL_INCOMING_CAPSULE              = 165666,
};

class npc_archmage_khadgar_78558 : public CreatureScript
{
public:
    npc_archmage_khadgar_78558() : CreatureScript("npc_archmage_khadgar_78558") {}

    bool OnQuestAccept(Player* player, Creature* creature, Quest const* quest) override
    {
        switch (quest->GetQuestId())
        {
        case QUEST_AZEROTHS_LAST_STAND:
            if (creature->IsAIEnabled)
                creature->AI()->Talk(SAY_KHADGAR_FIRST_LINE);
            break;

        case QUEST_THE_PORTALS_POWER:
            if (creature->IsAIEnabled)
                creature->AI()->Talk(SAY_KHADGAR_SECOND_LINE);
            break;

        default:
            break;
        }
        return true;
    }

    struct npc_archmage_khadgar_78558AI : public ScriptedAI
    {
        npc_archmage_khadgar_78558AI(Creature* creature) : ScriptedAI(creature) {}

        uint32 BarrierTimer = 0;
        Creature* PrevIter = nullptr;
        std::list<Creature*> NpcList;

        void UpdateAI(uint32 const diff) override
        {
            if (BarrierTimer <= diff)
            {
                if (NpcList.empty())
                {
                    me->GetCreatureListWithEntryInGrid(NpcList, NPC_KHADGAR_SHIELD_TARGET_DUMMY, 80.0f);
                    BarrierTimer = 10 * IN_MILLISECONDS;
                }
                else
                {
                    for (Creature* creature : NpcList)
                    {
                        if (creature->GetDistance2d(me) <= 20.0f)
                        {
                            me->CastSpell(creature, SPELL_ARCANE_AEGIS, true);
                            PrevIter = creature;
                        }
                        else
                        {
                            if (PrevIter)
                                creature->CastSpell(PrevIter, SPELL_INCOMING_CAPSULE, true);
                        }
                    }
                    BarrierTimer = 60 * IN_MILLISECONDS;
                }
            }
            else BarrierTimer -= diff;
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_archmage_khadgar_78558AI(creature);
    }
};

// 237670 - Dark Portal
class go_dark_portal : public GameObjectScript
{
public:
    go_dark_portal() : GameObjectScript("go_dark_portal") { }

    struct go_dark_portalAI : public GameObjectAI
    {
        go_dark_portalAI(GameObject* p_Go) : GameObjectAI(p_Go) { }

        void Reset() override
        {
            go->SetGoState(GO_STATE_ACTIVE);
            go->SetLootState(GO_ACTIVATED);
        }

    };

    GameObjectAI* GetAI(GameObject* p_Go) const override
    {
        return new go_dark_portalAI(p_Go);
    }
};


void AddSC_zone_draenor_darkportal_assault()
{
    new npc_archmage_khadgar_78558();
    new go_dark_portal();
};
