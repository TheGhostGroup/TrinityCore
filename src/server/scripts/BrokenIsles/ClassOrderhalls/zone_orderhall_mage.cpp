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

enum Conversations
{
    CONVERSATION_FELSTORMS_PLEA = 1264,
    CONVERSATION_THE_DREADLORDS_PRIZE = 3364,
    CONVERSATION_THE_DREADLORDS_PRIZE_END = 1281
};

enum Creatures
{
    NPC_MERYL_FELSTORM                  = 102700,
    NPC_ALODI                           = 102846,
    NPC_GREAT_AKAZAMZARAK               = 103092,
    NPC_KILL_CREDIT_SPEAK_WITH_MERYL    = 103032,
    NPC_KILL_CREDIT_PLAN_MADE           = 107589
};

enum Quests
{
    QUEST_FELSTORMS_PLEA                = 41035,
    QUEST_THE_DREADLORDS_PRIZE          = 41036,
    QUEST_A_MAGES_WEAPON                = 41085,
    QUEST_FINDING_EBONCHILL             = 42452,
    QUEST_MAGE_HUNTER                   = 42479,
    QUEST_THE_ONLY_WAY_TO_TRAVEL        = 41113
};

enum MerylTexts
{
    SAY_MERYL_FIRST_LINE                = 0,
    SAY_MERYL_SECOND_LINE               = 1,
    SAY_MERYL_THIRD_LINE                = 2,
    SAY_MERYL_FOURTH_LINE               = 3,
    SAY_MERYL_FIFTH_LINE                = 4,
    SAY_MERYL_SIXTH_LINE                = 5,
    SAY_MERYL_SEVENTH_LINE              = 6,
    SAY_MERYL_EIGHTH_LINE               = 7,
    SAY_MERYL_NINTH_LINE                = 8,
    SAY_MERYL_TENTH_LINE                = 9,
    SAY_MERYL_ELEVENTH_LINE             = 10,
    SAY_MERYL_TWELFTH_LINE              = 11,
    SAY_MERYL_THIRTEENTH_LINE           = 12,
    SAY_MERYL_FOURTEENTH_LINE           = 13,
    SAY_MERYL_FIFTHTEENTH_LINE          = 14,
    SAY_MERYL_SIXTEENTH_LINE            = 15,
    SAY_MERYL_SEVENTEEN_LINE            = 16,
    SAY_MERYL_EIGHTEENTH_LINE           = 17,
    SAY_MERYL_NINETEENTH_LINE           = 18,
    SAY_MERYL_TWEENTYTH_LINE            = 19,
};

enum Events
{
    EVENT_MERYL_SAY_FIRST_LINE,
    EVENT_MERYL_SAY_SECOND_LINE,
    EVENT_MERYL_SAY_SIXTH_LINE,
    EVENT_MERYL_SAY_SEVENTH_LINE,
    EVENT_BACK_HOME_1,
    EVENT_THE_DREADLORDS_PRIZE_END,
    EVENT_ALODI_SAY_FIRST_LINE,
    EVENT_ALODI_SAY_SECOND_LINE,
};

enum Actions
{
    ACTION_START_DREADLORDS_PRIZE       = 0,
};

enum AlodiTexts
{
    SAY_ALODI_FIRST_LINE                = 0,
    SAY_ALODI_SECOND_LINE               = 1
};

enum AkazamzarakText
{
    SAY_AKAZAMZARAKS_FIRST_LINE         = 0,
    SAY_AKAZAMZARAKS_SECOND_LINE        = 1
};

enum Spells
{
    SPELL_START_SCENARIO_DREADLORDS_PRIZE   = 203241,
    SPELL_ARCANE_RECALL                     = 226016,
    SPELL_AKAZAMZARAKS_HAT                  = 203826,
    SPELL_CLONES_CHEER                      = 204274,
};

enum Etc
{
    GOSSIP_MENU_OPTION_0                    = 0,
    PATH_MERYL_FELSTORM                     = 10270010,
    MOVE_TO_VIOLET_HOLD_POSITION            = 15,
};

void AddSC_zone_orderhall_mage()
{

}
