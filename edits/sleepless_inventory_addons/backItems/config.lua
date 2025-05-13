--- Defines a slot with a bone, position, and rotation
---@class Slot
---@field bone number
---@field pos vector3
---@field rot vector3

---@class OptionalVector
---@field x? number
---@field y? number
---@field z? number

--- Defines an item with properties for its placement and grouping
---@class BackItem
---@field prio number a number to define the priority of importance that the weapon should appear over others
---@field group? string which slot group the item should use. defaults to 'back'
---@field customPos? {bone?: number , pos?: OptionalVector | vector3,  rot?:  OptionalVector | vector3} optional custom position. required if ignorelimits is true
---@field ignoreLimits? boolean wether or not the item is attached regardless of available slots. requires a full custom position. a full custom position has a bone, pos as a vec3, and rot as a vec3
---@field model? number | string this is required for non-weapon items. can optionally be used for weapons in order to have the attached model different than the equipped model. like if you want a sheathed katanta on your back

---@class Config
---@field defaultSlots table<string, Slot[]>
---@field BackItems table<string, BackItem>

--- Configurations for item slots and back items
local Config = {}

--- Default slots configuration
---@type table<string, Slot[]>
Config.defaultSlots = {
    ['back'] = {
        { bone = 24818, pos = vec3(0.09, -0.16, 0.12),  rot = vec3(0.0, 180.0, 0.0) },
        { bone = 24818, pos = vec3(0.09, -0.16, 0.00),  rot = vec3(0.0, 180.0, 0.0) },
        { bone = 24818, pos = vec3(0.09, -0.16, -0.12), rot = vec3(0.0, 180.0, 0.0) }
    },
    -- ['another group'] = { -- add as many slot groups as you like for different types of items
    --     { bone = 24818, pos = vec3(0.09, -0.16, 0.12),  rot = vec3(0.0, 180.0, 0.0) },
    --     { bone = 24818, pos = vec3(0.09, -0.16, 0.00),  rot = vec3(0.0, 180.0, 0.0) },
    --     { bone = 24818, pos = vec3(0.09, -0.16, -0.12), rot = vec3(0.0, 180.0, 0.0) }
    -- },
}

--- these vehicle classes will be allowed to display all attached back items
Config.allowedVehicleClasses = {
    [8] = true,  -- motorcycles
    [13] = true, -- bicycles
    [14] = true, -- boats
}

--- Back items configuration
---@type table<string, BackItem>
Config.BackItems = {
    ['WEAPON_ADVANCEDRIFLE'] = {
        prio = 3,
        group = 'back'
    },
    ['WEAPON_ASSAULTRIFLE'] = {
        prio = 3,
        group = 'back'
    },
    ['WEAPON_ASSAULTRIFLE_MK2'] = {
        prio = 3,
        group = 'back'
    },
    ['WEAPON_ASSAULTSHOTGUN'] = {
        prio = 2,
        group = 'back'
    },
    ['WEAPON_ASSAULTSMG'] = {
        prio = 2,
        group = 'back'
    },
    ['WEAPON_AUTOSHOTGUN'] = {
        prio = 2,
        group = 'back'
    },
    ['WEAPON_BAT'] = {
        prio = 1,
        group = 'back',
        customPos = {
            pos = { x = 0.4, y = -0.15 },
            rot = { y = 270.0 }
        }
    },
    ['WEAPON_BATTLEAXE'] = {
        prio = 1,
        group = 'back'
    },
    ['WEAPON_BOTTLE'] = {
        prio = 1,
        group = 'back'
    },
    ['WEAPON_BULLPUPRIFLE'] = {
        prio = 3,
        group = 'back'
    },
    ['WEAPON_BULLPUPRIFLE_MK2'] = {
        prio = 3,
        group = 'back'
    },
    ['WEAPON_BULLPUPSHOTGUN'] = {
        prio = 2,
        group = 'back'
    },
    ['WEAPON_CARBINERIFLE'] = {
        prio = 3,
        group = 'back',
        visibility = 1
    },
    ['WEAPON_CARBINERIFLE_MK2'] = {
        prio = 3,
        group = 'back'
    },
    ['WEAPON_COMBATMG'] = {
        prio = 4,
        group = 'back'
    },
    ['WEAPON_COMBATMG_MK2'] = {
        prio = 4,
        group = 'back'
    },
    ['WEAPON_COMBATPDW'] = {
        prio = 2,
        group = 'back'
    },
    ['WEAPON_COMPACTRIFLE'] = {
        prio = 2,
        group = 'back'
    },
    ['WEAPON_COMPACTLAUNCHER'] = {
        prio = 4,
        group = 'back'
    },
    ['WEAPON_CROWBAR'] = {
        prio = 1,
        group = 'back'
    },
    ['WEAPON_DBSHOTGUN'] = {
        prio = 2,
        group = 'back'
    },
    ['WEAPON_FIREWORK'] = {
        prio = 4,
        group = 'back'
    },
    ['WEAPON_GOLFCLUB'] = {
        prio = 1,
        group = 'back'
    },
    ['WEAPON_GRENADELAUNCHER'] = {
        prio = 4,
        group = 'back'
    },
    ['WEAPON_HAMMER'] = {
        prio = 1,
        group = 'back'
    },
    ['WEAPON_HATCHET'] = {
        prio = 1,
        group = 'back'
    },
    ['WEAPON_HEAVYSHOTGUN'] = {
        prio = 2,
        group = 'back'
    },
    ['WEAPON_HEAVYSNIPER'] = {
        prio = 3,
        group = 'back'
    },
    ['WEAPON_HEAVYSNIPER_MK2'] = {
        prio = 3,
        group = 'back'
    },
    ['WEAPON_HOMINGLAUNCHER'] = {
        prio = 4,
        group = 'back'
    },
    ['WEAPON_MACHETE'] = {
        prio = 1,
        group = 'back'
    },
    ['WEAPON_MARKSMANRIFLE'] = {
        prio = 3,
        group = 'back'
    },
    ['WEAPON_MARKSMANRIFLE_MK2'] = {
        prio = 3,
        group = 'back'
    },
    ['WEAPON_MG'] = {
        prio = 4,
        group = 'back'
    },
    ['WEAPON_MICROSMG'] = {
        prio = 1,
        group = 'back'
    },
    ['WEAPON_MINIGUN'] = {
        prio = 5,
        group = 'back'
    },
    ['WEAPON_MINISMG'] = {
        prio = 1,
        group = 'back'
    },
    ['WEAPON_MUSKET'] = {
        prio = 3,
        group = 'back'
    },
    ['WEAPON_PUMPSHOTGUN'] = {
        prio = 2,
        group = 'back'
    },
    ['WEAPON_PUMPSHOTGUN_MK2'] = {
        prio = 2,
        group = 'back'
    },
    ['WEAPON_RAILGUN'] = {
        prio = 5,
        group = 'back'
    },
    ['WEAPON_RPG'] = {
        prio = 4,
        group = 'back'
    },
    ['WEAPON_SAWNOFFSHOTGUN'] = {
        prio = 2,
        group = 'back'
    },
    ['WEAPON_SMG'] = {
        prio = 2,
        group = 'back'
    },
    ['WEAPON_SMG_MK2'] = {
        prio = 2,
        group = 'back'
    },
    ['WEAPON_SNIPERRIFLE'] = {
        prio = 3,
        group = 'back'
    },
    ['WEAPON_SPECIALCARBINE'] = {
        prio = 3,
        group = 'back'
    },
    ['WEAPON_SPECIALCARBINE_MK2'] = {
        prio = 3,
        group = 'back'
    },
    ['WEAPON_STONE_HATCHET'] = {
        prio = 1,
        group = 'back'
    },
    ['cone'] = {
        prio = 1,
        ignoreLimits = true,
        model = `prop_roadcone02a`,
        customPos = {
            bone = 12844,
            pos = vec3(0.06, 0.0, 0.0),
            rot = vec3(0.0, 90.0, 0.0)
        }
    }
}

return Config