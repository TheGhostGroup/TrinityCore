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
 
#ifndef RETURN_BROKENSHORE_H_
#define RETURN_BROKENSHORE_H_

#include "CreatureAIImpl.h"

#define RBSScriptName "return_brokenshore_scenario"
#define DataHeader "RBS"

uint32 const EncounterCount = 3;

enum Creatures
{
    NPC_DANATH_TROLLBANE      = 109079,
    NPC_ELITE_GRYPHON         = 108974,
    NPC_RAGNVALD_DRAKEBORN    = 97167,
    NPC_FINA_BJORNSDOTTIR     = 97166,
    NPC_HAARDGRIM             = 102964,
    NPC_ALRIK_THE_SLAYER      = 102965,
    NPC_DANICA_RECLAIMER      = 103608,
    NPC_ASPIRING_VRYKUL_HERO  = 102990,

    // Bosses
    NPC_BEZZEREDES          = 98257,
    NPC_MALGALOR            = 92608,
    NPC_FEL_LORD_DAKUUR     = 102970,

    // Trash
    NPC_EREDAR_ENSLAVER     = 97176,
};

enum Spells
{
    SPELL_CONVERSATION_A_DANATH_FLIGHT = 216892, // Conversation Template ID: 2646
    SPELL_CONVERSATION                 = 197583,  // Conversation Template ID: 770

    SPELL_WHIRLWIND                    = 13736,
    SPELL_MORTAL_STRIKE                = 15708,
    SPELL_THUNDERCLAP                  = 15588,
    SPELL_CLEAVE                       = 16044,
    SPELL_FEIGN_DEATH                  = 105419,
};

#endif // !__RETURN_BROKENSHORE_H__
