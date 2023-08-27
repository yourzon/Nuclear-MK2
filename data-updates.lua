--buff max temp of heat-pipe
data.raw['heat-pipe']['heat-pipe'].heat_buffer.max_temperature = "3000"
--buff max temp of steam
data.raw['fluid']['steam'].max_temperature = 2000




--upgrade heat-exhcnager
data.raw['boiler']['heat-exchanger'].next_upgrade = "heat_exchanger_MK2_entity"
data.raw['boiler']['heat-exchanger'].fast_replaceable_group = "steam-engine"
--upgrade turbin
data.raw['generator']['steam-turbine'].next_upgrade = "turbin_MK2_entity"
data.raw['generator']['steam-turbine'].fast_replaceable_group = "steam-engine"

--upgrade reactor
data.raw["reactor"]["nuclear-reactor"].next_upgrade = "reactor_MK2_entity"
data.raw["reactor"]["nuclear-reactor"].fast_replaceable_group = "furnace"
--upgrade pump
data.raw["offshore-pump"]["offshore-pump"].next_upgrade = "pump_MK2_entity"
data.raw["offshore-pump"]["offshore-pump"].fast_replaceable_group ="pipe"