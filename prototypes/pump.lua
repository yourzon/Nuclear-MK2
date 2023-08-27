local SuperRed = {r=1,g=0.2,b=0.2,a=1}

--entity
local pump_MK2_entity = util.table.deepcopy(data.raw["offshore-pump"]["offshore-pump"])
    pump_MK2_entity.name = "pump_MK2_entity"
    pump_MK2_entity.minable.result = "Offshore-Pump-MK2"
    pump_MK2_entity.pumping_speed= 40.1
    pump_MK2_entity.fast_replaceable_group ="pipe"


    pump_MK2_entity.graphics_set.animation ={

        north = {
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North.png",
            tint = SuperRed,
            width = 48,
            height = 84,
            shift = util.by_pixel(-2, -16)
        },
        east = {
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East.png",
            tint= SuperRed,
            width = 64,
            height = 52,
            shift = util.by_pixel(14, -2)
        },
        west = {
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West.png",
            tint = SuperRed,
            width = 64,
            height = 52,
            shift = util.by_pixel(-16, -2)
        },
        south = {
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South.png",
            tint = SuperRed,
            width = 48,
            height = 96,
            shift = util.by_pixel(-2, 0)
        }
    }

--item
local pump_MK2_item = util.table.deepcopy(data.raw["item"]["offshore-pump"])
    pump_MK2_item.name = "Offshore-Pump-MK2"
    pump_MK2_item.place_result = "pump_MK2_entity"
    pump_MK2_item.icons = {
        {
            icon = pump_MK2_item.icon,
            tint = SuperRed
        }
}

--recipe
local pump_MK2_recipe = util.table.deepcopy(data.raw["recipe"]["offshore-pump"])    
    pump_MK2_recipe.enabled = true
    pump_MK2_recipe.name = "Offshore-Pump-MK2"
    pump_MK2_recipe.ingredients = {
        {type="item",name="iron-plate", amount=10},
        {type="item",name="uranium-238", amount=100},
        {type="item",name="steel-plate", amount=100},
        {type="item",name="offshore-pump", amount=2}
    }
    pump_MK2_recipe.result = "Offshore-Pump-MK2"


    
data:extend(
    {
        pump_MK2_entity,
        pump_MK2_item,
        pump_MK2_recipe
   }   
)
