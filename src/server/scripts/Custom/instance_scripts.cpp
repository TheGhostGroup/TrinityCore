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

// temp fix for startup warnings

class instance_the_vortex_pinnacle : public InstanceMapScript
{
public:
    instance_the_vortex_pinnacle() : InstanceMapScript("instance_the_vortex_pinnacle", 657) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_the_vortex_pinnacle_InstanceScript(map);
    }

    struct instance_the_vortex_pinnacle_InstanceScript : public InstanceScript
    {
        instance_the_vortex_pinnacle_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_throne_of_the_four_winds : public InstanceMapScript
{
public:
    instance_throne_of_the_four_winds() : InstanceMapScript("instance_throne_of_the_four_winds", 754) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_throne_of_the_four_winds_InstanceScript(map);
    }

    struct instance_throne_of_the_four_winds_InstanceScript : public InstanceScript
    {
        instance_throne_of_the_four_winds_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_the_bastion_of_twilight : public InstanceMapScript
{
public:
    instance_the_bastion_of_twilight() : InstanceMapScript("instance_the_bastion_of_twilight", 671) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_the_bastion_of_twilight_InstanceScript(map);
    }

    struct instance_the_bastion_of_twilight_InstanceScript : public InstanceScript
    {
        instance_the_bastion_of_twilight_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_temple_of_jade_serpent : public InstanceMapScript
{
public:
    instance_temple_of_jade_serpent() : InstanceMapScript("instance_temple_of_jade_serpent", 960) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_temple_of_jade_serpent_InstanceScript(map);
    }

    struct instance_temple_of_jade_serpent_InstanceScript : public InstanceScript
    {
        instance_temple_of_jade_serpent_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_siege_of_the_niuzao_temple : public InstanceMapScript
{
public:
    instance_siege_of_the_niuzao_temple() : InstanceMapScript("instance_siege_of_the_niuzao_temple", 1011) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_siege_of_the_niuzao_temple_InstanceScript(map);
    }

    struct instance_siege_of_the_niuzao_temple_InstanceScript : public InstanceScript
    {
        instance_siege_of_the_niuzao_temple_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_shadowmoon_burial_grounds : public InstanceMapScript
{
public:
    instance_shadowmoon_burial_grounds() : InstanceMapScript("instance_shadowmoon_burial_grounds", 1176) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_shadowmoon_burial_grounds_InstanceScript(map);
    }

    struct instance_shadowmoon_burial_grounds_InstanceScript : public InstanceScript
    {
        instance_shadowmoon_burial_grounds_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_shadopan_monastery : public InstanceMapScript
{
public:
    instance_shadopan_monastery() : InstanceMapScript("instance_shadopan_monastery", 959) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_shadopan_monastery_InstanceScript(map);
    }

    struct instance_shadopan_monastery_InstanceScript : public InstanceScript
    {
        instance_shadopan_monastery_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_seat_of_triumvirate : public InstanceMapScript
{
public:
    instance_seat_of_triumvirate() : InstanceMapScript("instance_seat_of_triumvirate", 1753) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_seat_of_triumvirate_InstanceScript(map);
    }

    struct instance_seat_of_triumvirate_InstanceScript : public InstanceScript
    {
        instance_seat_of_triumvirate_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_mogu_shan_vault : public InstanceMapScript
{
public:
    instance_mogu_shan_vault() : InstanceMapScript("instance_mogu_shan_vault", 1008) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_mogu_shan_vault_InstanceScript(map);
    }

    struct instance_mogu_shan_vault_InstanceScript : public InstanceScript
    {
        instance_mogu_shan_vault_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_mogu_shan_palace : public InstanceMapScript
{
public:
    instance_mogu_shan_palace() : InstanceMapScript("instance_mogu_shan_palace", 994) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_mogu_shan_palace_InstanceScript(map);
    }

    struct instance_mogu_shan_palace_InstanceScript : public InstanceScript
    {
        instance_mogu_shan_palace_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_lost_city_of_the_tolvir : public InstanceMapScript
{
public:
    instance_lost_city_of_the_tolvir() : InstanceMapScript("instance_lost_city_of_the_tolvir", 755) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_lost_city_of_the_tolvir_InstanceScript(map);
    }

    struct instance_lost_city_of_the_tolvir_InstanceScript : public InstanceScript
    {
        instance_lost_city_of_the_tolvir_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_hour_of_twilight : public InstanceMapScript
{
public:
    instance_hour_of_twilight() : InstanceMapScript("instance_hour_of_twilight", 940) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_hour_of_twilight_InstanceScript(map);
    }

    struct instance_hour_of_twilight_InstanceScript : public InstanceScript
    {
        instance_hour_of_twilight_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_highmaul : public InstanceMapScript
{
public:
    instance_highmaul() : InstanceMapScript("instance_highmaul", 1228) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_highmaul_InstanceScript(map);
    }

    struct instance_highmaul_InstanceScript : public InstanceScript
    {
        instance_highmaul_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};



class instance_everbloom : public InstanceMapScript
{
public:
    instance_everbloom() : InstanceMapScript("instance_everbloom", 1278) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_everbloom_InstanceScript(map);
    }

    struct instance_everbloom_InstanceScript : public InstanceScript
    {
        instance_everbloom_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_end_time : public InstanceMapScript
{
public:
    instance_end_time() : InstanceMapScript("instance_end_time", 938) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_end_time_InstanceScript(map);
    }

    struct instance_end_time_InstanceScript : public InstanceScript
    {
        instance_end_time_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_darkheart_thicket : public InstanceMapScript
{
public:
    instance_darkheart_thicket() : InstanceMapScript("instance_darkheart_thicket", 1466) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_darkheart_thicket_InstanceScript(map);
    }

    struct instance_darkheart_thicket_InstanceScript : public InstanceScript
    {
        instance_darkheart_thicket_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_black_rook_hold : public InstanceMapScript
{
public:
    instance_black_rook_hold() : InstanceMapScript("instance_black_rook_hold", 1501) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_black_rook_hold_InstanceScript(map);
    }

    struct instance_black_rook_hold_InstanceScript : public InstanceScript
    {
        instance_black_rook_hold_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_heart_of_fear : public InstanceMapScript
{
public:
    instance_heart_of_fear() : InstanceMapScript("instance_heart_of_fear", 1009) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_heart_of_fear_InstanceScript(map);
    }

    struct instance_heart_of_fear_InstanceScript : public InstanceScript
    {
        instance_heart_of_fear_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_maw_of_souls : public InstanceMapScript
{
public:
    instance_maw_of_souls() : InstanceMapScript("instance_maw_of_souls", 1492) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_maw_of_souls_InstanceScript(map);
    }

    struct instance_maw_of_souls_InstanceScript : public InstanceScript
    {
        instance_maw_of_souls_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_Bloodmaul : public InstanceMapScript
{
public:
    instance_Bloodmaul() : InstanceMapScript("instance_Bloodmaul", 1175) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_Bloodmaul_InstanceScript(map);
    }

    struct instance_Bloodmaul_InstanceScript : public InstanceScript
    {
        instance_Bloodmaul_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_dragon_soul : public InstanceMapScript
{
public:
    instance_dragon_soul() : InstanceMapScript("instance_dragon_soul", 967) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_dragon_soul_InstanceScript(map);
    }

    struct instance_dragon_soul_InstanceScript : public InstanceScript
    {
        instance_dragon_soul_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_halls_of_valor : public InstanceMapScript
{
public:
    instance_halls_of_valor() : InstanceMapScript("instance_halls_of_valor", 1477) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_halls_of_valor_InstanceScript(map);
    }

    struct instance_halls_of_valor_InstanceScript : public InstanceScript
    {
        instance_halls_of_valor_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_court_of_stars : public InstanceMapScript
{
public:
    instance_court_of_stars() : InstanceMapScript("instance_court_of_stars", 1571) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_court_of_stars_InstanceScript(map);
    }

    struct instance_court_of_stars_InstanceScript : public InstanceScript
    {
        instance_court_of_stars_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_emerald_nightmare : public InstanceMapScript
{
public:
    instance_emerald_nightmare() : InstanceMapScript("instance_emerald_nightmare", 1520) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_emerald_nightmare_InstanceScript(map);
    }

    struct instance_emerald_nightmare_InstanceScript : public InstanceScript
    {
        instance_emerald_nightmare_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_blackwing_descent : public InstanceMapScript
{
public:
    instance_blackwing_descent() : InstanceMapScript("instance_blackwing_descent", 669) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_blackwing_descent_InstanceScript(map);
    }

    struct instance_blackwing_descent_InstanceScript : public InstanceScript
    {
        instance_blackwing_descent_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_throne_of_the_tides : public InstanceMapScript
{
public:
    instance_throne_of_the_tides() : InstanceMapScript("instance_throne_of_the_tides", 643) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_throne_of_the_tides_InstanceScript(map);
    }

    struct instance_throne_of_the_tides_InstanceScript : public InstanceScript
    {
        instance_throne_of_the_tides_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_grim_batol : public InstanceMapScript
{
public:
    instance_grim_batol() : InstanceMapScript("instance_grim_batol", 670) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_grim_batol_InstanceScript(map);
    }

    struct instance_grim_batol_InstanceScript : public InstanceScript
    {
        instance_grim_batol_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_stormstout_brewery : public InstanceMapScript
{
public:
    instance_stormstout_brewery() : InstanceMapScript("instance_stormstout_brewery", 961) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_stormstout_brewery_InstanceScript(map);
    }

    struct instance_stormstout_brewery_InstanceScript : public InstanceScript
    {
        instance_stormstout_brewery_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_gate_setting_sun : public InstanceMapScript
{
public:
    instance_gate_setting_sun() : InstanceMapScript("instance_gate_setting_sun", 962) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_gate_setting_sun_InstanceScript(map);
    }

    struct instance_gate_setting_sun_InstanceScript : public InstanceScript
    {
        instance_gate_setting_sun_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

class instance_tomb_of_sargeras : public InstanceMapScript
{
public:
    instance_tomb_of_sargeras() : InstanceMapScript("instance_tomb_of_sargeras", 1676) {}

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_tomb_of_sargeras_InstanceScript(map);
    }

    struct instance_tomb_of_sargeras_InstanceScript : public InstanceScript
    {
        instance_tomb_of_sargeras_InstanceScript(InstanceMap* map) : InstanceScript(map) {}
    };
};

void AddSC_instance_scripts()
{
    new instance_the_vortex_pinnacle();
    new instance_throne_of_the_four_winds();
    new instance_the_bastion_of_twilight();
    new instance_temple_of_jade_serpent();
    new instance_siege_of_the_niuzao_temple();
    new instance_shadowmoon_burial_grounds();
    new instance_shadopan_monastery();
    new instance_seat_of_triumvirate();
    new instance_mogu_shan_vault();
    new instance_mogu_shan_palace();
    new instance_lost_city_of_the_tolvir();
    new instance_hour_of_twilight();
    new instance_highmaul();
    new instance_everbloom();
    new instance_end_time();
    new instance_darkheart_thicket();
    new instance_black_rook_hold();
    new instance_heart_of_fear();
    new instance_maw_of_souls();
    new instance_Bloodmaul();
    new instance_dragon_soul();
    new instance_halls_of_valor();
    new instance_court_of_stars();
    new instance_emerald_nightmare();
    new instance_blackwing_descent();
    new instance_throne_of_the_tides();
    new instance_grim_batol();
    new instance_stormstout_brewery();
    new instance_gate_setting_sun();
    new instance_tomb_of_sargeras();
}
