Config = {}

-- Framework Settings
Config.Framework = 'qb'               -- 'qb' for QBCore, 'esx' for ESX

-- General Settings
Config.EnableSkillCheck = true         -- Enable or disable the skill check minigame
Config.MaxPickpocketAttempts = 3       -- Maximum number of attempts per NPC
Config.CooldownTime = 30 * 60000       -- Cooldown time between pickpocketing the same NPC (in ms)
Config.RequiredPolice = 0              -- Number of police required to pickpocket
Config.EnableLegacyFuel = false        -- Enable pickpocketing for fuel
Config.UseQBDispatch = false           -- Set to true if using qb-dispatch
Config.MaxItemsPerPickpocket = 5       -- Maximum number of items to show in pickpocket minigame

-- Target System Settings
Config.UseQBTarget = false             -- Set to true to use qb-target (QBCore only)
Config.UseOxTarget = true             -- Set to true to use ox_target (works with both QBCore and ESX)

-- Difficulty Settings
Config.MinigameSpeed = 1.5             -- Speed of the arrow (higher = harder)
Config.SuccessPercentage = 75          -- Percentage needed to succeed overall

-- Inventory Image Path Configuration
Config.InventoryType = "ox"            -- Options: "qb", "ox", "custom"
Config.InventoryImagePath = {
    qb = "qb-inventory/html/images/",
    ox = "ox-inventory/web/images/",
    custom = "your-inventory/path/"
}
Config.UseInventoryImagePath = true    -- Set to false to use local imgs folder instead

-- NPC Reaction Settings
Config.NPCCallPoliceChance = 25       -- Chance of NPC calling police on failed attempt (0-100)
Config.NPCAggressiveChance = 40       -- Chance of NPC becoming aggressive on discovery (0-100)
Config.DiscoveryChance = 45            -- Chance of NPC discovering theft even after success (0-100)
Config.NPCCallPoliceTimeout = 15000    -- Time (ms) before police is dispatched after NPC calls
Config.BlipTimeout = 500               -- Time (ms) for police blip to fade out

-- Items Settings
Config.EmptyPocketChance = 30          -- Chance of finding empty pockets (0-100)

-- Possible items to steal with their values and chances
Config.StealableItems = {
    { item = 'cash', label = 'Cash', min = 10, max = 4000, chance = 70, value = '$' },
    { item = 'phone', label = 'Phone', min = 1, max = 1, chance = 40, value = '1x' },
    { item = 'wallet', label = 'Wallet', min = 1, max = 1, chance = 40, value = '1x' },
    { item = 'rolex', label = 'Rolex', min = 1, max = 1, chance = 40, value = '1x' },
    { item = 'goldchain', label = 'Gold Chain', min = 1, max = 2, chance = 40, value = '1x' },
    { item = 'creditcard', label = 'Credit Card', min = 1, max = 1, chance = 40, value = '1x' },
    { item = 'cigarettes', label = 'Cigarettes', min = 1, max = 2, chance = 40, value = '1x' },
    { item = 'lighter', label = 'Lighter', min = 1, max = 1, chance = 40, value = '1x' },
    { item = 'lockpick', label = 'Lockpick', min = 1, max = 1, chance = 40, value = '1x' },
    { item = 'screwdriver', label = 'Screwdriver', min = 1, max = 1, chance = 40, value = '1x' }
}

-- Blacklisted NPCs
Config.UseModelBlacklist = true       -- Set to true to enable NPC model blacklisting
Config.BlacklistedNPCModels = {
    -- Add model hashes or names here
    's_m_m_autoshop_01',    -- Mechanic NPC Model
    'ig_mechanic',          -- Another mechanic model
    'csb_trafficwarden'     -- Example of another NPC model
    -- Add more models as needed
}

-- Notification Messages
Config.Notifications = {
    NoItems = 'The pockets are empty...',
    SuccessfulPickpocket = 'You successfully pickpocketed the person!',
    FailedPickpocket = 'You failed to pickpocket!',
    NPCCalling = 'The person is calling the police!',
    NPCNoticed = 'The person noticed you!',
    CooldownActive = 'You need to wait before trying again.',
    NotEnoughPolice = 'Not enough police in the city.',
    AlreadyPickpocketing = 'You are already pickpocketing someone!'
}
