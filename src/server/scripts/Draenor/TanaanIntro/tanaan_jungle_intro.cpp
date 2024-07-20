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
#include "ScriptedEscortAI.h"
#include "CreatureTextMgr.h"
#include "GameObjectAI.h"
#include "GameObject.h"
#include "GossipDef.h"
#include "tanaan_jungle_intro.h"

const uint32 spells[3] = { SPELL_CHAIN_LIGHT, SPELL_COMMAND_EARTH, SPELL_COMMAND_LIGHT };

/// 237670/237667 - Dark Portal
class go_dark_portal : public GameObjectScript
{
public:
    go_dark_portal() : GameObjectScript("go_dark_portal") { }

    struct go_dark_portalAI : public GameObjectAI
    {
        go_dark_portalAI(GameObject* go) : GameObjectAI(go) { }

        void Reset() override
        {
            go->SetGoState(GO_STATE_ACTIVE);
            go->SetLootState(GO_ACTIVATED);
        }
    };

    GameObjectAI* GetAI(GameObject* go) const override
    {
        return new go_dark_portalAI(go);
    }
};

void AddSC_tanaan_jungle_intro()
{
    new go_dark_portal();
}
