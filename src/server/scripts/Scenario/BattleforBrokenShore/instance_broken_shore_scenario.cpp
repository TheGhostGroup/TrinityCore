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
#include "InstanceScript.h"
#include "broken_shore_scenario.h"
#include "GameObject.h"
#include "Vehicle.h"
#include "Transport.h"
#include "MoveSplineInit.h"

enum BrokenShoreScenario
{
	NPC_CAPTAIN_ANGELICA	= 108920,
	NPC_CAPTAIN_RUSSO       = 113118,
};
	
class instance_broken_shore_scenario : public InstanceMapScript
{
public:
    instance_broken_shore_scenario() : InstanceMapScript("scenario_broken_shore_7.0", 1460) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new broken_shore_scenario_InstanceScript(map);
    }

    struct broken_shore_scenario_InstanceScript : public InstanceScript
    {
        broken_shore_scenario_InstanceScript(InstanceMap* map) : InstanceScript(map) {}

        uint32 _team = 0;
        int32 _waveTotal = 0;
        int32 _waveCurr = 0;              
        int32 _towerDestroyCount = 0;      
        WorldLocation _graveyardPoint;
        EventMap _events;
    };
};


void AddSC_instance_broken_shore_scenario()
{
    new instance_broken_shore_scenario();
}
