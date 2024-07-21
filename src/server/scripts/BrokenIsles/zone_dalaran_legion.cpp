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
#include "Player.h"
#include "PhasingHandler.h"

enum BlinkOfAnEye
{
    MAP_BROKEN_ISLES              = 1220,
    KILL_CREDIT_TELEPORT_DALARAN  = 114506,

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

void AddSC_dalaran_legion()
{
    new scene_dalaran_teleportation();
}
