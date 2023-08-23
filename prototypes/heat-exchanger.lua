--custom color
local SuperRed = {r=1,g=0.2,b=0.2,a=1}
local SuperGreen = {r=0.2,g=1,b=0.5,a=1}


--entity
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
                tint = SuperRed,
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
                tint = SuperRed,
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
                tint = SuperRed,
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
                tint = SuperRed,
                width = 96,
                height = 132,
                shift = util.by_pixel(1, 5)
                }
            }
        }

    }

local heat_exchanger_MK3_entity = util.table.deepcopy(data.raw["boiler"]["heat-exchanger"])
    heat_exchanger_MK3_entity.name = "heat_exchanger_MK3_entity"
    heat_exchanger_MK3_entity.energy_consumption = "90MW"
    heat_exchanger_MK3_entity.target_temperature = 1100
    heat_exchanger_MK3_entity.minable.result = "Heat-Exchanger-MK3"
    heat_exchanger_MK3_entity.energy_source.max_temperature = 1100
    heat_exchanger_MK3_entity.energy_source.min_working_temperature = 1050
    heat_exchanger_MK3_entity.structure =
    {
        north = 
        {
            layers = 
            {
                {
                filename = "__base__/graphics/entity/heat-exchanger/heatex-N-idle.png",
                tint = SuperGreen,
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
                tint = SuperGreen,
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
                tint = SuperGreen,
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
                tint = SuperGreen,
                width = 96,
                height = 132,
                shift = util.by_pixel(1, 5)
                }
            }
        }

    }

--item
local heat_exchanger_MK2_item = util.table.deepcopy(data.raw["item"]["heat-exchanger"])
    heat_exchanger_MK2_item.name = "Heat-Exchanger-MK2"
    heat_exchanger_MK2_item.place_result = "heat_exchanger_MK2_entity"
    heat_exchanger_MK2_item.icons = {
        {
            icon = heat_exchanger_MK2_item.icon,
            tint = SuperRed
        }
    }
local heat_exchanger_MK3_item = util.table.deepcopy(data.raw["item"]["heat-exchanger"])
    heat_exchanger_MK3_item.name = "Heat-Exchanger-MK3"
    heat_exchanger_MK3_item.place_result = "heat_exchanger_MK3_entity"
    heat_exchanger_MK3_item.icons = {
        {
            icon = heat_exchanger_MK3_item.icon,
            tint = SuperGreen
        }
    }


--recipe
local heat_exchanger_MK2_recipe = util.table.deepcopy(data.raw["recipe"]["heat-exchanger"])
    heat_exchanger_MK2_recipe.enabled = true
    heat_exchanger_MK2_recipe.name = "Heat-Exchanger-MK2"
    heat_exchanger_MK2_recipe.ingredients = {
        {type="item",name ="iron-plate",amount = 10},
        {type="item",name = "uranium-238",amount=100},
        {type="item",name="steel-plate",amount=100},
        {type="item",name="heat-exchanger",amount=5}
    }
    heat_exchanger_MK2_recipe.result = "Heat-Exchanger-MK2"

local heat_exchanger_MK3_recipe = util.table.deepcopy(data.raw["recipe"]["heat-exchanger"])
    heat_exchanger_MK3_recipe.enabled = true
    heat_exchanger_MK3_recipe.name = "Heat-Exchanger-MK3"
    heat_exchanger_MK3_recipe.ingredients = {
        {type="item",name="processing-unit", amount=20},
        {type="item",name="uranium-235",amount=100},
        {type="item",name="steel-plate",amount=100},
        {type="item",name="Heat-Exchanger-MK2",amount=2}
    }
    heat_exchanger_MK3_recipe.result = "Heat-Exchanger-MK3"

data:extend(
    {
        heat_exchanger_MK2_entity,
        heat_exchanger_MK2_item,
        heat_exchanger_MK2_recipe,
        heat_exchanger_MK3_entity,
        heat_exchanger_MK3_item,
        heat_exchanger_MK3_recipe
    }   
)
