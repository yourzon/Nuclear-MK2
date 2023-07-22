--custom red
local SuperRed = {r=1,g=0.2,b=0.2,a=1}
local SuperBlue = {r=0.2,g=0.2,b=1,a=1}

--entity
local turbin_MK2_entity = util.table.deepcopy(data.raw["generator"]["steam-turbine"]) 
    turbin_MK2_entity.name = "turbin_MK2_entity"
    turbin_MK2_entity.fluid_usage_per_tick = 4
    turbin_MK2_entity.burns_fluid = false
    turbin_MK2_entity.scale_fluid_usage = false
    turbin_MK2_entity.maximum_temperature = 600
    turbin_MK2_entity.minable.result = "Turbine-MK2"
    turbin_MK2_entity.energy_source.usage_priority = "primary-output"
    turbin_MK2_entity.fluid_box.filter = "steam"
    turbin_MK2_entity.max_power_output = "30MW"
    turbin_MK2_entity.effectivity = 1.07
    turbin_MK2_entity.horizontal_animation = 
    {
            layers = 
            {
                {
                filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H.png",
                tint = SuperRed,
                width = 160,
                height = 123,
                shift = util.by_pixel(0, -2.5)
                }
            }

        
    }
    turbin_MK2_entity.vertical_animation = 
    {
       layers = 
        {
            {
            filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V.png",
            tint = SuperRed,
            width = 108,
            height = 173,
            shift = util.by_pixel(5, 6.5)
            }
        } 
    } 


local heat_exchanger_MK2_entity = util.table.deepcopy(data.raw["boiler"]["heat-exchanger"])
    heat_exchanger_MK2_entity.name = "heat_exchanger_MK2_entity"
    heat_exchanger_MK2_entity.energy_consumption = "56.5MW"
    heat_exchanger_MK2_entity.target_temperature = 600
    heat_exchanger_MK2_entity.minable.result = "Heat-Exchanger-MK2"
    heat_exchanger_MK2_entity.energy_source.min_working_temperature = 650
    heat_exchanger_MK2_entity.structure =
    {
        north = 
        {
            layers = 
            {
                {
                filename = "__base__/graphics/entity/heat-exchanger/heatex-N-idle.png",
                tint = SuperBlue,
                width = 131,
                height = 108,
                shift = util.by_pixel(-0.5, 4)
                }
            }
        },
        east =
        {
            layers = 
            {
                {
                filename = "__base__/graphics/entity/heat-exchanger/heatex-E-idle.png",
                tint = SuperBlue,
                width = 102,
                height = 147,
                shift = util.by_pixel(-2, -0.5)
                }
            }

        },
        south = 
        {
            layers =  
            {
                {
                filename = "__base__/graphics/entity/heat-exchanger/heatex-S-idle.png",
                tint = SuperBlue,
                width = 128,
                height = 100,
                shift = util.by_pixel(3, 10)
                }
            }
        },
        west = 
        {
            layers = 
            {
                {
                filename = "__base__/graphics/entity/heat-exchanger/heatex-W-idle.png",
                tint = SuperBlue,
                width = 96,
                height = 132,
                shift = util.by_pixel(1, 5)
                }
            }
        }

    }







--item
local turbin_MK2_item = util.table.deepcopy(data.raw["item"]["steam-turbine"])
    turbin_MK2_item.name = "Turbine-MK2"
    turbin_MK2_item.place_result = "turbin_MK2_entity"
    turbin_MK2_item.icons = {
        {
            icon = turbin_MK2_item.icon,
            tint = SuperRed
        }
    }

local heat_exchanger_MK2_item = util.table.deepcopy(data.raw["item"]["heat-exchanger"])
    heat_exchanger_MK2_item.name = "Heat-Exchanger-MK2"
    heat_exchanger_MK2_item.place_result = "heat_exchanger_MK2_entity"
    heat_exchanger_MK2_item.icons = {
        {
            icon = heat_exchanger_MK2_item.icon,
            tint = SuperBlue
        }
    }

--recipe
local turbin_MK2_recipe = util.table.deepcopy(data.raw["recipe"]["steam-turbine"])
    turbin_MK2_recipe.enabled = true
    turbin_MK2_recipe.name = "Turbine-MK2"
    turbin_MK2_recipe.ingredients = {
        {type="item", name="iron-plate", amount=10},
        {type="item", name="uranium-238", amount=100},
        {type="item", name="steel-plate", amount=100},
        {type="item", name="steam-turbine", amount=5}
    }
    turbin_MK2_recipe.result = "Turbine-MK2"

local heat_exchanger_MK2_recipe = util.table.deepcopy(data.raw["recipe"]["heat-exchanger"])
    heat_exchanger_MK2_recipe.enabled = true
    heat_exchanger_MK2_recipe.name = "Heat-Exchanger-MK2"
    heat_exchanger_MK2_recipe.ingredients = {
        {type="item", name ="iron-plate",amount = 10},
        {type="item",name = "uranium-238",amount=100},
        {type="item",name="steel-plate",amount=100},
        {type="item",name="heat-exchanger",amount=5}
    }
    heat_exchanger_MK2_recipe.result = "Heat-Exchanger-MK2"

--tech
local MK2_tech = {
    name = 'MK2_tech',
    type = 'technology',
    icons = {
        {
            icon = "__base__/graphics/technology/nuclear-power.png",
            tint = SuperRed,
            icon_size = 256, icon_mipmaps = 4
        }  
    },
    prerequisites = {
        'nuclear-power',
        'kovarex-enrichment-process'
    },
    effects = {
        { 
            type = 'unlock-recipe',
            recipe = 'Turbine-MK2'
        },
        {
            type = 'unlock-recipe',
            recipe = 'Heat-Exchanger-MK2'
        }
    },
    unit = {
        count = '2000',
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1}
        },
        time = 100,
    }

}    

data:extend(
    {
        turbin_MK2_entity,
        turbin_MK2_item,
        turbin_MK2_recipe,
        heat_exchanger_MK2_entity,
        heat_exchanger_MK2_item,
        heat_exchanger_MK2_recipe,
        MK2_tech,
        --data.raw["heat-pipe"]["heat-pipe"].heat_buffer.max_transfer = {"2GW"}
    } 

    
)

