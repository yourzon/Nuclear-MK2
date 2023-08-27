--custom color
local SuperRed = {r=1,g=0.2,b=0.2,a=1}
local SuperGreen = {r=0.2,g=1,b=0.5,a=1}

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
        },
     
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

local MK3_tech = {
    name='MK3_tech',
    type = 'technology',
    icons = {
        {
            icon = "__base__/graphics/technology/nuclear-power.png",
            tint = SuperGreen,
            icon_size = 256, icon_mipmaps = 4
        }  
    },
    prerequisites = {
        'MK2_tech'
    },

    effects = {

        {
            type = 'unlock-recipe',
            recipe = 'Reactor-MK2'
        },
        {
            type = 'unlock-recipe',
            recipe = 'Heat-Exchanger-MK3'
        },
        {
            type = 'unlock-recipe',
            recipe = 'Turbine-MK3'
        },
        {
            type = 'unlock-recipe',
            recipe = 'OffshorePump-MK2'
        },

    },

    unit = {
        count = '4000',
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
        MK2_tech,
        MK3_tech
    }   
)
