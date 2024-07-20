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
 
 #ifndef EYE_OF_AZSHARA_H_
 #define EYE_OF_AZSHARA_H_

#include "CreatureAIImpl.h"

#define DataHeader "EyeOfAzshara"
#define EOAScriptName "instance_eye_of_azshara"

uint32 const EncounterCount = 5;

enum EOADataTypes
{
    DATA_PARJESH = 0,
    DATA_HATECOIL,
    DATA_DEEPBEARD,
    DATA_SERPENTRIX,
    DATA_WRATH_OF_AZSHARA,

    DATA_WIND_ACTIVE
};

enum EOACreatureIds
{
    //Parjesh
    BOSS_WARLORD_PARJESH        = 91784,
    NPC_HATECOIL_SHELLBREAKER   = 97264,
    NPC_HATECOIL_CRESTRIDER     = 97269,

    //Hatecoil
    BOSS_LADY_HATECOIL          = 91789,
    NPC_HATECOIL_ARCANIST       = 97171,
    NPC_SAND_DUNE               = 97853,
    NPC_MONSOON                 = 99852,

    //Deepbeard
    BOSS_KING_DEEPBEARD         = 91797,
    NPC_QUAKE                   = 97916,

    //Serpentrix
    BOSS_SERPENTRIX             = 91808,
    NPC_BLAZING_HYDRA_SPAWN     = 97259,
    NPC_ARCANE_HYDRA_SPAWN      = 97260,

    //Wrath of Azshara
    BOSS_WRATH_OF_AZSHARA       = 96028,
    NPC_WEATHERMAN              = 97063,
    NPC_LIGHTNING_STALKER       = 97713,
    NPC_MYSTIC_SSAVEH           = 98173,
    NPC_RITUALIST_LESHA         = 100248,
    NPC_CHANNELER_VARISZ        = 100249,
    NPC_BINDER_ASHIOI           = 100250,
    NPC_ARCANE_BOMB             = 97691,
    NPC_TIDAL_WAVE              = 97739,

    NPC_TIDESTONE_OF_GOLGANNETH = 106780,
};


enum EOAGameObjectIds
{
    GO_SAND_DUNE                = 244690,
    GO_DEEPBEARD_DOOR           = 246983,
    GO_AZSHARA_BUBBLE           = 240788,
};

enum EOASpellIds
{
    SPELL_SKYBOX_RAIN           = 191815,
    SPELL_SKYBOX_LIGHTNING      = 191816,
    SPELL_SKYBOX_WIND           = 212614,
    SPELL_SKYBOX_HURRICANE      = 212615,
};

template <class AI, class T>
inline AI* GetEyeOfAzsharaAI(T* obj)
{
    return GetInstanceAI<AI>(obj, EOAScriptName);
}

#define RegisterEyeOfAzsharaCreatureAI(ai_name) RegisterCreatureAIWithFactory(ai_name, GetEyeOfAzsharaAI)

#endif
