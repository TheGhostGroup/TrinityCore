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

class instance_eye_of_azshara : public InstanceMapScript
{
public:
    instance_eye_of_azshara() : InstanceMapScript("instance_eye_of_azshara", 1456) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_eye_of_azshara_InstanceScript(map);
    }

    struct instance_eye_of_azshara_InstanceScript : public InstanceScript
    {
        instance_eye_of_azshara_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

void AddSC_instance_eye_of_azshara()
{
    new instance_eye_of_azshara();
}
