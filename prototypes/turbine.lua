--custom color
local SuperRed = {r=1,g=0.2,b=0.2,a=1}
local SuperGreen = {r=0.2,g=1,b=0.5,a=1}

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
    turbin_MK2_entity.next_upgrade = "turbin_MK3_entity"
    turbin_MK2_entity.fast_replaceable_group = "steam-engine"
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

local turbin_MK3_entity = util.table.deepcopy(data.raw["generator"]["steam-turbine"]) 
    turbin_MK3_entity.name = "turbin_MK3_entity"
    turbin_MK3_entity.fluid_usage_per_tick = 5
    turbin_MK3_entity.burns_fluid = false
    turbin_MK3_entity.scale_fluid_usage = false
    turbin_MK3_entity.maximum_temperature = 1500
    turbin_MK3_entity.minable.result = "Turbine-MK3"
    turbin_MK3_entity.energy_source.usage_priority = "primary-output"
    turbin_MK3_entity.fluid_box.filter = "steam"
    turbin_MK3_entity.max_power_output = "91MW"
    turbin_MK3_entity.effectivity = 1.40
    turbin_MK3_entity.fast_replaceable_group = "steam-engine"
    turbin_MK3_entity.horizontal_animation = 
    {
            layers = 
            {
                {
                filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H.png",
                tint = SuperGreen,
                width = 160,
                height = 123,
                shift = util.by_pixel(0, -2.5)
                }
            }

        
    }
    turbin_MK3_entity.vertical_animation = 
    {
    layers = 
        {
            {
            filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V.png",
            tint = SuperGreen,
            width = 108,
            height = 173,
            shift = util.by_pixel(5, 6.5)
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
local turbin_MK3_item = util.table.deepcopy(data.raw["item"]["steam-turbine"])
    turbin_MK3_item.name = "Turbine-MK3"
    turbin_MK3_item.place_result = "turbin_MK3_entity"
    turbin_MK3_item.icons = {
        {
            icon = turbin_MK3_item.icon,
            tint = SuperGreen
        }
    }

--recipe
local turbin_MK2_recipe = util.table.deepcopy(data.raw["recipe"]["steam-turbine"])
    turbin_MK2_recipe.name = "Turbine-MK2"
    turbin_MK2_recipe.ingredients = {
        {type="item",name="iron-plate", amount=10},
        {type="item",name="uranium-238", amount=100},
        {type="item",name="steel-plate", amount=100},
        {type="item",name="steam-turbine", amount=5}
    }
    turbin_MK2_recipe.result = "Turbine-MK2"

local turbin_MK3_recipe = util.table.deepcopy(data.raw["recipe"]["steam-turbine"])
    turbin_MK3_recipe.name = "Turbine-MK3"
    turbin_MK3_recipe.ingredients = {
        {type="item",name="steel-plate", amount=100},
        {type="item",name="processing-unit", amount=20},
        {type="item",name="uranium-235", amount=100},
        {type="item",name="Turbine-MK2", amount=2}
    }
    turbin_MK3_recipe.result = "Turbine-MK3"


data:extend(
    {
        turbin_MK2_entity,
        turbin_MK2_item,
        turbin_MK2_recipe,
        turbin_MK3_entity,
        turbin_MK3_item,
        turbin_MK3_recipe
   }   
)
