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
#include "return_brokenshore_scenario.h"

	
class scenario_7_0_artifact_brokenshore : public InstanceMapScript
{
public:
    scenario_7_0_artifact_brokenshore() : InstanceMapScript("scenario_7_0_artifact_brokenshore", 1500) { }

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new scenario_7_0_artifact_brokenshore_InstanceScript(map);
    }

    struct scenario_7_0_artifact_brokenshore_InstanceScript : public InstanceScript
    {
        scenario_7_0_artifact_brokenshore_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};


void AddSC_instance_return_brokenshore()
{
    new scenario_7_0_artifact_brokenshore();
}
