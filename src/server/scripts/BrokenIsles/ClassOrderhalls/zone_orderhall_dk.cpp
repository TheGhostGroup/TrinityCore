/*
 * Copyright (C) 2008-2019 TrinityCore <https://www.trinitycore.org/>
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

enum DukeLankral
{
    KILL_CREDIT_ARTIFACT_WEAPON_CHOSEN = 101441,

    PLAYER_CHOICE_DK_BLOOD             = 541,
    PLAYER_CHOICE_DK_FROST             = 542,
    PLAYER_CHOICE_DK_UNHOLY            = 543,

    // DK Intro Quests
    QUEST_THE_CALL_TO_WAR              = 40714,
    QUEST_A_PACT_OF_NECESSITY          = 40715,
    // Blood Artifact Quest
    QUEST_THE_DEAD_AND_THE_DAMNED      = 40740,
    // Frost Artifact Quest
    QUEST_THE_CALL_OF_ICECROWN         = 38990,
    // Unholy Artifact Quest
    QUEST_APOCALYPSE                   = 40930,

    SAY_LANKRAL_FIRST_LINE             = 0,

    SPELL_PLAYER_CHOICE                = 199985,
    SPELL_DEATH_GATE                   = 225224,
};

void AddSC_zone_orderhall_dk()
{
}
