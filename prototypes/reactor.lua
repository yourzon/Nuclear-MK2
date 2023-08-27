local SuperRed = {r=1,g=0.2,b=0.2,a=1}

--entity
local reactor_MK2_entity = util.table.deepcopy(data.raw["reactor"]["nuclear-reactor"])
    reactor_MK2_entity.name = "reactor_MK2_entity"
    reactor_MK2_entity.minable.result = "Reactor-MK2"    
    reactor_MK2_entity.heat_buffer.max_temperature = 3000
    reactor_MK2_entity.heat_buffer.min_working_temperature = 1000
    reactor_MK2_entity.heat_buffer.specific_heat = "20MJ"
    reactor_MK2_entity.consumption = "80MW" 
    reactor_MK2_entity.neighbour_bonus = 1.5
    reactor_MK2_entity.fast_replaceable_group ="furnace"
    reactor_MK2_entity.fuel_inventory_size = 10

    reactor_MK2_entity.picture.layers = {
        {
            filename = "__base__/graphics/entity/nuclear-reactor/reactor.png",
            tint = SuperRed,
            width = 154,
            height = 158,
            shift = util.by_pixel(-6, -6),
        }
    }


--item
local reactor_MK2_item = util.table.deepcopy(data.raw["item"]["nuclear-reactor"])
    reactor_MK2_item.name = "Reactor-MK2"
    reactor_MK2_item.place_result = "reactor_MK2_entity"
    reactor_MK2_item.icons = {
        {
            icon = reactor_MK2_item.icon,
            tint = SuperRed
        }
}

--recipe
local reactor_MK2_recipe = util.table.deepcopy(data.raw["recipe"]["nuclear-reactor"])    
    reactor_MK2_recipe.enabled = true
    reactor_MK2_recipe.name = "Reactor-MK2"
    reactor_MK2_recipe.ingredients = {
        {type="item",name="iron-plate", amount=10},
        {type="item",name="uranium-238", amount=100},
        {type="item",name="steel-plate", amount=100},
        {type="item",name="nuclear-reactor", amount=2}
    }
    reactor_MK2_recipe.result = "Reactor-MK2"


    
data:extend(
    {
        reactor_MK2_entity,
        reactor_MK2_item,
        reactor_MK2_recipe
   }   
)
