Config = {}

-- settings
Config.Debug = false
Config.SellTime = 5000
Config.SpawnDistanceRadius = 30 -- the distance the animal spawns away from the bait 
Config.HideTime = 10000 -- the amount of time in miliseconds that you have to hide before animal aproaches the bait
Config.AnimalWait = 10000 -- the amount of time in miliseconds that the animal will wait at the bait until freeroam
Config.SpawnDistanceRadius = 30 -- the distance the animal spawns away from the bait 
Config.HideTime = 10000 -- the amount of time in miliseconds that you have to hide before animal aproaches the bait
Config.AnimalWait = 10000 -- the amount of time in miliseconds that the animal will wait at the bait until freeroam
Config.KeyShop = 'J'
Config.OpenTime = 9 -- hrs : 24hour clock
Config.CloseTime = 18 -- hrs : 24hour clock

Config.Notify = "ox_lib"  --oxlib or rnotify

Config.Blip = {
    blipName = 'Trapper\'s', -- Config.Blip.blipName
    blipSprite = 'blip_shop_animal_trapper', -- Config.Blip.blipSprite
    blipScale = 0.2 -- Config.Blip.blipScale
}

Config.PaymentType = 'cash'        --cash or bank or custom to framework aka gold
Config.PoorMultiplier  = 1
Config.GoodMultiplier  = 2
Config.PerfectMultiplier  = 3
Config.LegendaryMultiplier  = 5
Config.PoorCarcassMultiplier  = 1
Config.GoodCarcassMultiplier  = 2
Config.PerfectCarcassMultiplier  = 3
Config.LegendaryCarcassMultiplier  = 5
Config.FeathersMultiplier  = 2
-- pelt sell prices
Config.PoorPeltPrice = math.random(10, 30)          --for decimal use the math.random decimal formal like so:   math.random() * (0.50 - 0.10) + 0.10
Config.GoodPeltPrice = math.random(30, 60)
Config.PerfectPeltPrice = math.random(60, 100)
Config.LegendaryPeltPrice = math.random(100, 200)
-- feathers sell prices
Config.FeathersPrice = math.random(10, 20)
-- Carcass sell prices
Config.PoorCarcassPrice = math.random(10, 30)
Config.GoodCarcassPrice = math.random(30, 60)
Config.PerfectCarcassPrice = math.random(60, 100)
Config.LegendaryCarcassPrice = math.random(100, 200)


Config.HuntingZones = {
	{
		name       = 'huntingzone1',
		coords     = vector3(-1054.0793, -673.3105, 72.3116),
		radius     = 100.0, 
		showblip   = false,
        blipName   = 'Hunting Zone',
        blipSprite = `blip_mp_deliver_target`,
        blipScale  = 0.2,
		animal       = 'mp_a_c_boar_01',
		bait       = 'wheat',
		animalname       = 'Boar',
		baitname       = 'wheat',
		enterzone = true,
		health     = 200.0,
		timer     = 60,
        baitprop   = 's_grizzlybait01x',
	},
	{
		name       = 'huntingzone2',
		coords     = vector3(-2297.2400, -462.6606, 143.1794),
		radius     = 100.0, 
		showblip   = false,
        blipName   = 'Hunting Zone',
        blipSprite = `blip_mp_deliver_target`,
        blipScale  = 0.2,
		animal     = 'mp_a_c_beaver_01',
		bait       = 'carrot',
		animalname  = 'Beaver',
		baitname    = 'carrot',
		enterzone = true,
		health     = 200.0,
		timer     = 60,
        baitprop   = 's_grizzlybait01x',
	},
	{
		name       = 'huntingzone3',
		coords     = vector3(1191.3398, 2047.3147, 324.7537),
		radius     = 100.0, 
		showblip   = false,
        blipName   = 'Hunting Zone',
        blipSprite = `blip_mp_deliver_target`,
        blipScale  = 0.2,
		animal       = 'mp_a_c_cougar_01',
		bait       = 'carrot',
		animalname   = 'Cougar',
		baitname       = 'carrot',
		enterzone = true,
		health     = 200.0,
		timer     = 60,
        baitprop   = 'p_shopbait01x',
	},
	{
		name       = 'huntingzone4',
		coords     = vector3(-1361.0551, -1384.6249, 94.1296),
		radius     = 100.0, 
		showblip   = false,
        blipName   = 'Hunting Zone6',
        blipSprite = `blip_mp_deliver_target`,
        blipScale  = 0.2,
		animal       = 'mp_a_c_coyote_01',
		bait       = 'gmeat',
		animalname       = 'Coyote',
		baitname       = 'Game Meat',
		enterzone = true,
		health     = 200.0,
		timer     = 60,
        baitprop   = 's_grizzlybait01x',
	},
	{
		name       = 'huntingzone5',
		coords     = vector3(390.9921, 1276.2581, 196.6426),
		radius     = 100.0, 
		showblip   = false,
        blipName   = 'Hunting Zone',
        blipSprite = `blip_mp_deliver_target`,
        blipScale  = 0.2,
		animal       = 'mp_a_c_panther_01',
		bait       = 'gmeat',
		animalname       = 'Panther',
		baitname       = 'Game Meat',
		enterzone = true,
		health     = 200.0,
		timer     = 60,
        baitprop   = 's_grizzlybait01x',
	},
	{
		name       = 'huntingzone6',
		coords     = vector3(-1392.3319, 2242.6992, 307.9457),
		radius     = 100.0, 
		showblip   = false,
        blipName   = 'Hunting Zone',
        blipSprite = `blip_mp_deliver_target`,
        blipScale  = 0.2,
		animal     = 'mp_a_c_wolf_01',
		bait       = 'birdmeat',
		animalname     = 'Wolf',
		baitname       = 'Bird Meat',
		enterzone = true,
		health     = 200.0,
		timer     = 60,
        baitprop   = 's_grizzlybait01x',
	},
		{
		name       = 'huntingzone7',
		coords     = vector3(2025.0481, -1026.3876, 43.3879),
		radius     = 100.0, 
		showblip   = false,
        blipName   = 'Hunting Zone',
        blipSprite = `blip_mp_deliver_target`,
        blipScale  = 0.2,
		animal     = 'a_c_alligator_02',
		bait       = 'birdmeat',
		animalname     = 'Alligator',
		baitname       = 'Bird Meat',
		enterzone = true,
		health     = 300.0,
		timer     = 60,
        baitprop   = 's_grizzlybait01x',
	},
}

Config.TrapperLocations = {
    -- trapper locations
    {name = 'Valentine Trapper',      location = 'valentine-trapper',     coords = vector3(-334.2203, 773.16943, 116.24839 -0.8), showblip = true }, --valentine
    {name = 'St Denis Trapper',       location = 'stdenis-trapper',       coords = vector3(2832.5424, -1225.602, 47.661453 -0.8), showblip = true }, --stdenis
    {name = 'Riggs Station Trapper',  location = 'riggsstation-trapper',  coords = vector3(-1006.938, -549.3896, 99.393592 -0.8), showblip = true }, --riggsstation
    {name = 'West Elizabeth Trapper', location = 'westelizabeth-trapper', coords = vector3(-2843.525, 142.12048, 184.59883 -0.8), showblip = true }, --westelizabeth
    {name = 'Stawberry Trapper',      location = 'stawberry-trapper',     coords = vector3(-1746.634, -389.2384, 156.53625 -0.8), showblip = true }, --stawberry
    {name = 'Tumbleweed Trapper',     location = 'tumbleweed-trapper',    coords = vector3(-5512.208, -2952.122, -1.791797 -0.8), showblip = true }, --tumbleweed
    {name = 'Grifflies Trapper',      location = 'grifflies-trapper',     coords = vector3(1420.3685, 379.5938, 90.3204 -0.8), showblip = true }, -- Emerald ranch****
    {name = 'Roanake Trapper',        location = 'roanake-trapper',       coords = vector3(2539.4578, 809.7834, 75.9239 -0.8), showblip = true }, -- Elysian pool
    {name = 'Emerald Ranch Trapper',  location = 'emeraldranch-trapper',  coords = vector3(1590.192, 2193.343, 324.124 -0.8), showblip = true }, -- grizzlies east north
    {name = 'Ambario Trapper',        location = 'ambario-trapper',       coords = vector3(-1633.170, 1235.340, 351.892 -0.8), showblip = true }, -- Mount Hagen
    {name = 'Corngual Trapper',       location = 'corngual-trapper',      coords = vector3(497.839, 580.183, 110.1711 -0.8), showblip = true }, -- Heartland oil fields
    {name = 'Heartlands Trapper',     location = 'heartlands-trapper',    coords = vector3(-128.092, -23.935, 96.100 -0.8), showblip = true }, -- The Heartlands
    {name = 'Manzanita Trapper',      location = 'manzanita-trapper',     coords = vector3(-1981.611, -1650.570, 117.099 -0.8), showblip = true }, -- Manzanita post****
    {name = 'Kamassa River Trapper',  location = 'kamassariver-trapper',  coords = vector3(1878.461, -1854.444, 42.748 -0.8), showblip = true }, -- Bolber Blade
    {name = 'Kamassa River Trapper B', location = 'kamassariverb-trapper',  coords = vector3(-4621.124, -3366.574, 21.975 -0.8), showblip = true }, -- Rio Bravo
}

Config.SpawnAnimal = {
	[1] = { ["Model"] = "mp_a_c_beaver_01", 	["Pos"] = vector3(-1182.29, 1063.17, 166.02 -1),		["Heading"] = 0.0 },
	[2] = { ["Model"] = "mp_a_c_cougar_01", 	["Pos"] = vector3(-2081.77, -175.32, 202.03 -1),		["Heading"] = 173.33 },
	[3] = { ["Model"] = "mp_a_c_alligator_01", 	["Pos"] = vector3(2341.46, -545.29, 41.92 -1),			["Heading"] = 139.76 },
	[4] = { ["Model"] = "mp_a_c_panther_01", 	["Pos"] = vector3(1115.52, 1897.05, 327.23 -1),			["Heading"] = 190.96 },
	[5] = { ["Model"] = "mp_a_c_panther_01", 	["Pos"] = vector3(979.01, -1229.21, 60.01 -1),			["Heading"] = 124.6 },
	[6] = { ["Model"] = "mp_a_c_wolf_01", 		["Pos"] = vector3(-627.36, 528.5, 97.01 -1),			["Heading"] = 299.06 },
	[7] = { ["Model"] = "mp_a_c_boar_01", 		["Pos"] = vector3(-1854.97, -1598.9, 107.29 -1),		["Heading"] = 341.83 },
	[8] = { ["Model"] = "mp_a_c_beaver_01", 	["Pos"] = vector3(-2357.043, -474.8927, 142.01301 -1),	["Heading"] = 1.227958 },
	[9] = { ["Model"] = "mp_a_c_panther_01", 	["Pos"] = vector3(1456.3269, -7087.985, 75.894462 -1),	["Heading"] = 34.374881 }, -- guarma
	[10] = { ["Model"] = "mp_a_c_cougar_01", 	["Pos"] = vector3(1261.06, 1190.20, 147.40 -1),			["Heading"] = 34.374881 }, -- Ponf Bears
	-- Diamonds 
	[12] = { ["Model"] = "mp_a_c_bear_01", 	["Pos"] = vector3(-2723.47, 725.09, 171.32 -1),			["Heading"] = -7.84 }, -- Ponf Bears
	[13] = { ["Model"] = "mp_a_c_bear_01", 	["Pos"] = vector3(-2130.42, 124.52, 236.62 -1),			["Heading"] = 137.71 }, -- Ponf Bears
	
--Rubys
	[14] = { ["Model"] = "a_c_snake_01", 	["Pos"] = vector3(2317.41455078125, 1137.5675048828125, 96.38571166992188 -1),			["Heading"] = -7.84 }, --snake
	[15] = { ["Model"] = "a_c_snake_01", 	["Pos"] = vector3(2317.41455078125, 1137.5675048828125, 96.38571166992188 -1),			["Heading"] = 137.71 }, -- Snake
	[16] = { ["Model"] = "a_c_snake_01", 	["Pos"] = vector3(2317.41455078125, 1137.5675048828125, 96.38571166992188 -1),			["Heading"] = -7.84 }, --snake
	[17] = { ["Model"] = "a_c_snake_01", 	["Pos"] = vector3(2317.41455078125, 1137.5675048828125, 96.38571166992188 -1),			["Heading"] = 137.71 }, -- Snake
	[18] = { ["Model"] = "a_c_snake_01", 	["Pos"] = vector3(2317.41455078125, 1137.5675048828125, 96.38571166992188 -1),			["Heading"] = -7.84 }, --snake
	[19] = { ["Model"] = "a_c_snake_01", 	["Pos"] = vector3(2317.41455078125, 1137.5675048828125, 96.38571166992188 -1),			["Heading"] = 137.71 }, -- Snake
	[20] = { ["Model"] = "a_c_snake_01", 	["Pos"] = vector3(2317.41455078125, 1137.5675048828125, 96.38571166992188 -1),			["Heading"] = -7.84 }, --snake
	[21] = { ["Model"] = "a_c_snake_01", 	["Pos"] = vector3(2317.41455078125, 1137.5675048828125, 96.38571166992188 -1),			["Heading"] = 137.71 }, -- Snake

	[22] = { ["Model"] = "a_c_snakeblacktailrattle_01", 	["Pos"] = vector3(2304.051025390625, 1135.0902099609375, 96.23624420166016 -1),			["Heading"] = -7.84 }, --snake
	[23] = { ["Model"] = "a_c_snakeblacktailrattle_01", 	["Pos"] = vector3(2304.051025390625, 1135.0902099609375, 96.23624420166016 -1),			["Heading"] = 137.71 }, -- Snake
	[24] = { ["Model"] = "a_c_snakeblacktailrattle_01", 	["Pos"] = vector3(2304.051025390625, 1135.0902099609375, 96.23624420166016 -1),			["Heading"] = -7.84 }, --snake
	[25] = { ["Model"] = "a_c_snakeblacktailrattle_01", 	["Pos"] = vector3(2304.051025390625, 1135.0902099609375, 96.23624420166016 -1),			["Heading"] = 137.71 }, -- Snake
	[26] = { ["Model"] = "a_c_snakeblacktailrattle_01", 	["Pos"] = vector3(2304.051025390625, 1135.0902099609375, 96.23624420166016 -1),			["Heading"] = -7.84 }, --snake
	[27] = { ["Model"] = "a_c_snakeblacktailrattle_01", 	["Pos"] = vector3(2304.051025390625, 1135.0902099609375, 96.23624420166016 -1),			["Heading"] = 137.71 }, -- Snake
	[28] = { ["Model"] = "a_c_snakeblacktailrattle_01", 	["Pos"] = vector3(2304.051025390625, 1135.0902099609375, 96.23624420166016 -1),			["Heading"] = -7.84 }, --snake
	[29] = { ["Model"] = "a_c_snakeblacktailrattle_01", 	["Pos"] = vector3(2304.051025390625, 1135.0902099609375, 96.23624420166016 -1),			["Heading"] = 137.71 }, -- Snake
	
	[30] = { ["Model"] = "mp_a_c_bear_01", 	["Pos"] = vector3(2325.337158203125, 1072.4620361328125, 93.56884765625 -1),			["Heading"] = 137.71 }, -- Ponf Bears

	[31] = { ["Model"] = "mp_a_c_alligator_01", 	["Pos"] = vector3(2364.126953125, 995.9747314453125, 73.90508270263672 -1),			["Heading"] = 139.76 }, -- Gator["Heading"] = 137.71 }, -- Ponf Bears
}

Config.TrapperShop = {
    -- trapper shop items
    [1] = {    name = "weapon_bow_improved",         price = 30,   amount = 250,    info = {},    type = "item",    slot = 1, },
    [2] = {    name = "weapon_lasso_reinforced",     price = 30,   amount = 250,    info = {},    type = "item",    slot = 2, },
    [3] = {    name = "weapon_melee_davy_lantern",   price = 5,    amount = 250,    info = {},    type = "item",    slot = 3, },
    [4] = {    name = "weapon_melee_knife",          price = 5,    amount = 250,    info = {},    type = "item",    slot = 4, },
    [5] = {    name = "weapon_melee_knife_jawbone",  price = 15,   amount = 250,    info = {},    type = "item",    slot = 5, },
    [6] = {    name = "weapon_melee_hammer",         price = 100,  amount = 250,    info = {},    type = "item",    slot = 6, },
    [7] = {    name = "weapon_melee_machete",        price = 50,   amount = 250,    info = {},    type = "item",    slot = 7, },
    [8] = {    name = "weapon_melee_cleaver",        price = 10,   amount = 250,    info = {},    type = "item",    slot = 8, },
    [9] = {    name = "weapon_melee_hatchet",        price = 15,   amount = 250,    info = {},    type = "item",    slot = 9, },
    [10] = {    name = "consumable_herbivore_bait",         price = 100,   amount = 250,    info = {},    type = "item",    slot = 10, },
    [11] = {    name = "consumable_predator_bait",          price = 100,   amount = 250,    info = {},    type = "item",    slot = 11, },
    [12] = {    name = "consumable_potent_herbivore_bait",  price = 150,   amount = 250,    info = {},    type = "item",    slot = 12, },
    [13] = {    name = "consumable_potent_predator_bait",   price = 150,   amount = 250,    info = {},    type = "item",    slot = 13, },
}
--[[                     --Trying to implement on new Cores
Config.Xp = 0.05
Config.Xp1 = 0.10
Config.Xp2 = 0.15
Config.Xp3 = 0.20
Config.Xp4 = 0.05
]]

Config.Pelts = { -- reward item false or 'itemname'
    -- BEAR
    { -- a_c_bear_01 / PROVISION_BEAR_FUR_POOR
        pelthash    = 957520252,
        name        = 'Poor Bear Pelt',
        rewarditem1 = 'poor_bear_pelt',
        rewarditem2 = 'heart_bear', 
		rewarditem3 = 'fat', 
        rewarditem4 = 'claws_beartc', 
        -- rewarditem5 = nil,
    },
    { -- a_c_bear_01 / PROVISION_BEAR_FUR
        pelthash    = 143941906,
        name        = 'Good Bear Pelt',
        rewarditem1 = 'good_bear_pelt',
        rewarditem2 = 'heart_bear', 
		rewarditem3 = 'fat', 
        rewarditem4 = 'claws_beartc', 
       -- rewarditem5 = nil,
    },
    { -- a_c_bear_01 / PROVISION_BEAR_FUR_PRISTINE
        pelthash    = 1292673537,
        name        = 'Perfect Bear Pelt',
        rewarditem1 = 'perfect_bear_pelt',
        rewarditem2 = 'heart_bear', 
		rewarditem3 = 'fat', 
        rewarditem4 = 'claws_beartc', 
       -- rewarditem5 = nil,       
    },   
    -- BLACK_BEAR
    { -- a_c_bearblack_01 / PROVISION_BLACK_BEAR_FUR_POOR
        pelthash    = 1083865179,
        name        = 'Poor Black Bear Pelt',
        rewarditem1 = 'poor_black_bear_pelt',
        rewarditem2 = 'heart_bear', 
		rewarditem3 = 'fat', 
        rewarditem4 = 'claws_beartc', 
      --  rewarditem5 = nil,      
    },
    { -- a_c_bearblack_01 / PROVISION_BLACK_BEAR_FUR
        pelthash    = 1490032862,
        name        = 'Good Black Bear Pelt',
        rewarditem1 = 'good_black_bear_pelt',
        rewarditem2 = 'heart_bear', 
		rewarditem3 = 'fat', 
        rewarditem4 = 'claws_beartc', 
      --  rewarditem5 = nil,
    },
    { -- a_c_bearblack_01 / PROVISION_BLACK_BEAR_FUR_PRISTINE
        pelthash    = 663376218,
        name        = 'Perfect Black Bear Pelt',
        rewarditem1 = 'perfect_black_bear_pelt',
        rewarditem2 = 'heart_bear', 
		rewarditem3 = 'fat', 
        rewarditem4 = 'claws_beartc', 
      --  rewarditem5 = nil,       
    },   
    -- BOAR
    { -- a_c_boar_01 / PROVISION_BOAR_SKIN_POOR
        pelthash    = 1248540072,
        name        = 'Poor Boar Pelt',
        rewarditem1 = 'poor_boar_pelt',
		rewarditem2 = 'fat', 
        rewarditem3 = 'tooth_boarmusk', 
        rewarditem4 = 'raw_meat', 
     --   rewarditem5 = nil,
    },
    { -- a_c_boar_01 / PROVISION_BOAR_SKIN
        pelthash    = 2116849039,
        name        = 'Good Boar Pelt',
        rewarditem1 = 'good_boar_pelt',
		rewarditem2 = 'fat', 
        rewarditem3 = 'tooth_boarmusk', 
        rewarditem4 = 'raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_boar_01 / PROVISION_BOAR_SKIN_PRISTINE
        pelthash    = -1858513856,
        name        = 'Perfect Boar Pelt',
        rewarditem1 = 'perfect_boar_pelt',
		rewarditem2 = 'fat', 
        rewarditem3 = 'tooth_boarmusk', 
        rewarditem4 = 'raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_boar_01 / Legendary Cogi Boar        ----UPDATE
    pelthash    = -1858513856,
    name        = 'Perfect Boar Pelt',
    rewarditem1 = 'perfect_boar_pelt',
    rewarditem2 = 'fat', 
    rewarditem3 = 'tooth_boarmusk', 
    rewarditem4 = 'raw_meat', 
  --  rewarditem5 = nil,
},
    
    -- BUCK
    { -- a_c_buck_01 / PROVISION_BUCK_FUR_POOR
        pelthash    = 1603936352,
        name        = 'Poor Buck Pelt',
        rewarditem1 = 'poor_buck_pelt',
		rewarditem2 = 'heart_deer', 
		rewarditem3 = 'fat', 
        rewarditem4 = 'raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_buck_01 / PROVISION_BUCK_FUR
        pelthash    = -702790226,
        name        = 'Good Buck Pelt',
        rewarditem1 = 'good_buck_pelt',
		rewarditem2 = 'heart_deer', 
		rewarditem3 = 'fat', 
        rewarditem4 = 'raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_buck_01 / PROVISION_BUCK_FUR_PRISTINE
        pelthash    = -868657362, 
        name        = 'Perfect Buck Pelt',
        rewarditem1 = 'perfect_buck_pelt',
		rewarditem2 = 'heart_deer', 
		rewarditem3 = 'fat', 
        rewarditem4 = 'raw_meat', 
     --  rewarditem5 = nil,
    },

        -- BUFFALO
    { -- a_c_buffalo_01 / PROVISION_BUFFALO_FUR_POOR
        pelthash    = -1730060063,
        name        = 'Poor Buffalo Pelt',
        rewarditem1 = 'poor_buffalo_pelt',
        rewarditem2 = 'fiber_woolblack',
        rewarditem3 = 'large_raw_meat', 
      --  rewarditem4 = nil,
      --  rewarditem5 = nil,
    },
    { -- a_c_buffalo_01 / PROVISION_BUFFALO_FUR
        pelthash    = -591117838,
        name        = 'Good Buffalo Pelt',
        rewarditem1 = 'good_buffalo_pelt',
        rewarditem2 = 'fiber_woolblack',
        rewarditem3 = 'large_raw_meat', 
      --  rewarditem4 = nil,
      --  rewarditem5 = nil,
    },
    { -- a_c_buffalo_01 / PROVISION_BUFFALO_FUR_PRISTINE
        pelthash    = -237756948,
        name        = 'Perfect Buffalo Pelt',
        rewarditem1 = 'perfect_buffalo_pelt',
        rewarditem2 = 'fiber_woolblack',
        rewarditem3 = 'large_raw_meat', 
      --  rewarditem4 = nil,
       -- rewarditem5 = nil,
    },

    -- BULL
    { -- a_c_bull_01 / PROVISION_BULL_HIDE_POOR
        pelthash    = 9293261,
        name        = 'Poor Bull Hide',
        rewarditem1 = 'poor_bull_pelt',
		rewarditem2 = 'horn_bull', 
		rewarditem3 = 'tail_bull', 
        rewarditem4 = 'large_raw_meat',
      --  rewarditem5 = nil,
    },
    { -- a_c_bull_01 / PROVISION_BULL_HIDE
        pelthash    = -536086818,
        name        = 'Good Bull Hide',
        rewarditem1 = 'good_bull_pelt',
		rewarditem2 = 'horn_bull', 
		rewarditem3 = 'tail_bull', 
        rewarditem4 = 'large_raw_meat',
     --  rewarditem5 = nil,
    },
    { -- a_c_bull_01 / PROVISION_BULL_HIDE_PRISTINE
        pelthash    = -53270317,
        name        = 'Perfect Bull Hide',
        rewarditem1 = 'poor_bull_pelt',
		rewarditem2 = 'horn_bull', 
		rewarditem3 = 'tail_bull', 
        rewarditem4 = 'large_raw_meat',
     --   rewarditem5 = nil,
    },
    -- COUGAR
    { -- a_c_cougar_01 / PROVISION_COUGAR_FUR_POOR
        pelthash    = 1914602340,
        name        = 'Poor Cougar Pelt',
        rewarditem1 = 'poor_cougar_pelt',
		rewarditem2 = 'heart_wolf', 
		rewarditem3 = 'tooth_cougarf', 
        rewarditem4 = 'raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_cougar_01 / PROVISION_COUGAR_FUR
        pelthash    = 459744337,
        name        = 'Good Cougar Pelt',
        rewarditem1 = 'good_cougar_pelt',
		rewarditem2 = 'heart_wolf', 
		rewarditem3 = 'tooth_cougarf', 
        rewarditem4 = 'raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_cougar_01 / PROVISION_COUGAR_FUR_PRISTINE
        pelthash    = -1791452194,
        name        = 'Perfect Cougar Pelt',
        rewarditem1 = 'perfect_cougar_pelt',
		rewarditem2 = 'heart_wolf', 
		rewarditem3 = 'tooth_cougarf', 
        rewarditem4 = 'raw_meat', 
     --   rewarditem5 = nil,
    },
    { -- a_c_cougar_01 / Legendary Iguga Couger             --UPDATE
    pelthash    = 832214437,
    name        = 'Perfect Cougar Pelt',
    rewarditem1 = 'perfect_cougar_pelt',
    rewarditem2 = 'heart_wolf', 
    rewarditem3 = 'tooth_cougarf', 
    rewarditem4 = 'raw_meat', 
 --   rewarditem5 = nil,
},

     -- COW
    { -- a_c_cow / PROVISION_COW_HIDE_POOR
        pelthash    = 334093551,
        name        = 'Poor Cow Hide',
        rewarditem1 = 'poor_cow_pelt',
		rewarditem2 = 'horn_cowh', 
        rewarditem3 = 'large_raw_meat', 
      --  rewarditem4 = nil,
      --  rewarditem5 = nil,
    },
    { -- a_c_cow / PROVISION_COW_HIDE
        pelthash    = 1150594075,
        name        = 'Good Cow Hide',
        rewarditem1 = 'good_cow_pelt',
		rewarditem2 = 'horn_cowh', 
        rewarditem3 = 'large_raw_meat', 
      --  rewarditem4 = nil,
      --  rewarditem5 = nil,
    },
    { -- a_c_cow / PROVISION_COW_HIDE_PRISTINE
        pelthash    = -845037222,
        name        = 'Perfect Cow Hide',
        rewarditem1 = 'perfect_cow_pelt',
		rewarditem2 = 'horn_cowh', 
        rewarditem3 = 'large_raw_meat', 
      --  rewarditem4 = nil,
    },
    
    -- COYOTE
        { -- a_c_coyote_01 / PROVISION_COYOTE_FUR_POOR
        pelthash    = -1558096473,
        name        = 'Poor Coyote Pelt',
        rewarditem1 = 'poor_coyote_pelt',
		rewarditem2 = 'tail_chipmunk_c', 
        rewarditem3 = 'tooth_coyotef', 
        rewarditem4 = 'small_raw_meat',
      --  rewarditem5 = nil,
    },
    { -- a_c_coyote_01 / PROVISION_COYOTE_FUR
        pelthash    = 1150939141,
        name        = 'Good Coyote Pelt',
        rewarditem1 = 'good_coyote_pelt',
		rewarditem2 = 'tail_chipmunk_c', 
        rewarditem3 = 'tooth_coyotef', 
        rewarditem4 = 'small_raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_coyote_01 / PROVISION_COYOTE_FUR_PRISTINE
        pelthash    = -794277189,
        name        = 'Perfect Coyote Pelt',
        rewarditem1 = 'perfect_coyote_pelt',
		rewarditem2 = 'tail_chipmunk_c', 
        rewarditem3 = 'tooth_coyotef', 
        rewarditem4 = 'small_raw_meat', 
      --  rewarditem5 = nil,
    },
        
    -- DEER
    { -- a_c_deer_01 / PROVISION_DEER_HIDE_POOR
        pelthash    = -662178186,
        name        = 'Poor Deer Pelt',
        rewarditem1 = 'poor_deer_pelt',
		rewarditem2 = 'heart_deer', 
        rewarditem3 = 'raw_meat', 
      --  rewarditem4 = nil,
      --  rewarditem5 = nil,
    },
    { -- a_c_deer_01 / PROVISION_DEER_HIDE
        pelthash    = -1827027577,
        name        = 'Good Deer Pelt',
        rewarditem1 = 'good_deer_pelt',
		rewarditem2 = 'heart_deer', 
        rewarditem3 = 'raw_meat', 
      --  rewarditem4 = nil,
      --  rewarditem5 = nil,
    },
    { -- a_c_deer_01 / PROVISION_DEER_HIDE_PRISTINE
        pelthash    = -1035515486,
        name        = 'Perfect Deer Pelt',
        rewarditem1 = 'perfect_deer_pelt',
		rewarditem2 = 'heart_deer', 
        rewarditem3 = 'raw_meat', 
      --  rewarditem4 = nil,
      --  rewarditem5 = nil,
    },
    
    -- ELK
    { -- a_c_elk_01 / PROVISION_ELK_FUR_POOR
        pelthash    = 2053771712,
        name        = 'Poor Elk Pelt',
        rewarditem1 = 'poor_elk_pelt',
		rewarditem2 = 'heart_deer', 
		rewarditem3 = 'horn_elkantler', 
      --  rewarditem4 = 'raw_meat', 
     --   rewarditem5 = nil,
    },
    { -- a_c_elk_01 / PROVISION_ELK_FUR
        pelthash    = 1181652728,
        name        = 'Good Elk Pelt',
        rewarditem1 = 'good_elk_pelt',
		rewarditem2 = 'heart_deer', 
		rewarditem3 = 'horn_elkantler', 
        rewarditem4 = 'raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_elk_01 / PROVISION_ELK_FUR_PRISTINE
        pelthash    = -1332163079,
        name        = 'Perfect Elk Pelt',
        rewarditem1 = 'perfect_elk_pelt',
		rewarditem2 = 'heart_deer', 
		rewarditem3 = 'horn_elkantler', 
        rewarditem4 = 'raw_meat', 
      --  rewarditem5 = nil,
    },
    
    -- FOX
    { -- a_c_fox_01 / PROVISION_FOX_FUR_POOR
        pelthash    = 1647012424,
        name        = 'Poor Fox Pelt',
        rewarditem1 = 'poor_fox_pelt',
		rewarditem2 = 'tail_chipmunk_c', 
        rewarditem3 = 'tooth_foxt', 
        rewarditem4 = 'small_raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_fox_01 / PROVISION_FOX_FUR
        pelthash    = 238733925,
        name        = 'Good Fox Pelt',
        rewarditem1 = 'good_fox_pelt',
		rewarditem2 = 'tail_chipmunk_c', 
        rewarditem3 = 'tooth_foxt', 
        rewarditem4 = 'small_raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_fox_01 / PROVISION_FOX_FUR_PRISTINE
        pelthash    = 500722008,
        name        = 'Perfect Fox Pelt',
        rewarditem1 = 'perfect_fox_pelt',
		rewarditem2 = 'tail_chipmunk_c', 
        rewarditem3 = 'tooth_foxt', 
        rewarditem4 = 'small_raw_meat', 
      --  rewarditem5 = nil,
    },
    -- GOAT
    { -- a_c_goat_01 / PROVISION_GOAT_HAIR_POOR
        pelthash    = 699990316,
        name        = 'Poor Goat Hide',
        rewarditem1 = 'poor_goat_pelt',
		rewarditem2 = 'heart_deer', 
		rewarditem3 = 'horn_ram', 
        rewarditem4 = 'small_raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_goat_01 / PROVISION_GOAT_HAIR
        pelthash    = 1710714415,
        name        = 'Good Goat Hide',
        rewarditem1 = 'good_goat_pelt',
		rewarditem2 = 'heart_deer', 
		rewarditem3 = 'horn_ram', 
        rewarditem4 = 'small_raw_meat',
      --  rewarditem5 = nil,
    },
    { -- a_c_goat_01 / PROVISION_GOAT_HAIR_PRISTINE
        pelthash    = -1648383828,
        name        = 'Perfect Goat Hide',
        rewarditem1 = 'perfect_goat_pelt',
		rewarditem2 = 'heart_deer', 
		rewarditem3 = 'horn_ram', 
        rewarditem4 = 'raw_meat', 
      --  rewarditem5 = nil,
    },
    
    -- JAVELINA
    { -- a_c_javelina_01 / PROVISION_JAVELINA_SKIN_POOR
        pelthash    = -99092070,
        name        = 'Poor Peccary Pig Pelt',
        rewarditem1 = 'poor_javelina_pelt',
		rewarditem2 = 'fat', 
        rewarditem3 = 'tooth_boarmusk', 
        rewarditem4 = 'raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_javelina_01 / PROVISION_JAVELINA_SKIN
        pelthash    = -1379330323,
        name        = 'Good Peccary Pig Pelt',
        rewarditem1 = 'good_javelina_pelt',
		rewarditem2 = 'fat', 
        rewarditem3 = 'tooth_boarmusk', 
        rewarditem4 = 'raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_javelina_01 / PROVISION_JAVELINA_SKIN_PRISTINE
        pelthash    = 1963510418,
        name        = 'Perfect Peccary Pig Pelt',
        rewarditem1 = 'perfect_javelina_pelt',
		rewarditem2 = 'fat', 
        rewarditem3 = 'tooth_boarmusk', 
        rewarditem4 = 'raw_meat', 
      --  rewarditem5 = nil,
    },
    -- MOOSE
    { -- a_c_moose_01 / PROVISION_MOOSE_FUR_POOR
        pelthash    = 1868576868,
        name        = 'Poor Moose Pelt',
        rewarditem1 = 'poor_moose_pelt',
        rewarditem2 = 'large_raw_meat', 
       -- rewarditem3 = nil,
       -- rewarditem4 = nil,
       -- rewarditem5 = nil,
    },
    { -- a_c_moose_01 / PROVISION_MOOSE_FUR
        pelthash    = 1636891382,
        name        = 'Good Moose Pelt',
        rewarditem1 = 'good_moose_pelt',
        rewarditem2 = 'large_raw_meat', 
     --   rewarditem3 = nil,
     --  rewarditem4 = nil,
      --  rewarditem5 = nil,
    },
    { -- a_c_moose_01 / PROVISION_MOOSE_FUR_PRISTINE
        pelthash    = -217731719,
        name        = 'Perfect Moose Pelt',
        rewarditem1 = 'perfect_moose_pelt',
        rewarditem2 = 'large_raw_meat', 
      --  rewarditem3 = nil,
      --  rewarditem4 = nil,
      --  rewarditem5 = nil,
    },
    
    -- OXEN
    { -- a_c_ox_01 / PROVISION_OXEN_HIDE_POOR
        pelthash    = 462348928,
        name        = 'Poor Ox Hide',
        rewarditem1 = 'poor_ox_pelt',
		rewarditem2 = 'horn_ox', 
		rewarditem3 = 'wool', 
        rewarditem4 = 'large_raw_meat', 
     --   rewarditem5 = nil,
    },
    { -- a_c_ox_01 / PROVISION_OXEN_HIDE
        pelthash    = 1208128650,
        name        = 'Good Ox Hide',
        rewarditem1 = 'good_ox_pelt',
		rewarditem2 = 'horn_ox', 
		rewarditem3 = 'wool', 
        rewarditem4 = 'large_raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_ox_01 / PROVISION_OXEN_HIDE_PRISTINE
        pelthash    = 659601266,
        name        = 'Perfect Ox Hide',
        rewarditem1 = 'perfect_ox_pelt',
		rewarditem2 = 'horn_ox', 
		rewarditem3 = 'wool', 
        rewarditem4 = 'large_raw_meat', 
     --   rewarditem5 = nil,
    },
    
    -- PANTHER
    { -- a_c_panther_01 / PROVISION_PANTHER_FUR_POOR
        pelthash    = 1584468323,
        name        = 'Poor Panther Pelt',
        rewarditem1 = 'poor_panther_pelt',
		rewarditem2 = 'heart_wolf', 
		rewarditem3 = 'tail_panthere', 
        rewarditem4 = 'large_raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_panther_01 / PROVISION_PANTHER_FUR
        pelthash    = -395646254,
        name        = 'Good Panther Pelt',
        rewarditem1 = 'good_panther_pelt',
		rewarditem2 = 'heart_wolf', 
		rewarditem3 = 'tail_panthere', 
        rewarditem4 = 'large_raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_panther_01 / PROVISION_PANTHER_FUR_PRISTINE
        pelthash    = 1969175294,
        name        = 'Perfect Panther Pelt',
        rewarditem1 = 'perfect_panther_pelt',
		rewarditem2 = 'heart_wolf', 
		rewarditem3 = 'tail_panthere', 
        rewarditem4 = 'large_raw_meat', 
      --  rewarditem5 = nil,
    },

    { -- a_c_panther_01 / PROVISION_PANTHER_FUR_PRISTINE
    pelthash    = 2088901891,
    name        = 'Perfect Panther Pelt',
    rewarditem1 = 'perfect_panther_pelt',
    rewarditem2 = 'heart_wolf', 
    rewarditem3 = 'tail_panthere', 
    rewarditem4 = 'large_raw_meat', 
  --  rewarditem5 = nil,
},
    
    -- PIG
    { -- a_c_pig_01 / PROVISION_PIG_SKIN_POOR
        pelthash    = -308965548,
        name        = 'Poor Pig Hide',
        rewarditem1 = 'poor_pig_pelt',
		rewarditem2 = 'fat', 
        rewarditem3 = 'raw_meat', 
       -- rewarditem4 = nil,
      --  rewarditem5 = nil,
    },
    { -- a_c_pig_01 / PROVISION_PIG_SKIN
        pelthash    = -57190831,
        name        = 'Good Pig Hide',
        rewarditem1 = 'good_pig_pelt',
		rewarditem2 = 'fat', 
        rewarditem3 = 'raw_meat', 
      --  rewarditem4 = nil,
      --  rewarditem5 = nil,
    },
    { -- a_c_pig_01 / PROVISION_PIG_SKIN_PRISTINE
        pelthash    = -1102272634,
        name        = 'Perfect Pig Hide',
        rewarditem1 = 'perfect_pig_pelt',
		rewarditem2 = 'fat', 
        rewarditem3 = 'raw_meat', 
      --  rewarditem4 = nil,
      --  rewarditem5 = nil,
    },
    
    -- PRONGHORN
    { -- a_c_pronghorn_01 / PROVISION_PRONGHORN_FUR_POOR
        pelthash    = -983605026,
        name        = 'Poor Pronghorn Hide',
        rewarditem1 = 'poor_pronghorn_pelt',
		rewarditem2 = 'horn_prong', 
        rewarditem3 = 'raw_meat', 
      --  rewarditem4 = nil,
      --  rewarditem5 = nil,
    },
    { -- a_c_pronghorn_01 / PROVISION_PRONGHORN_FUR
        pelthash    = -1544126829, 
        name        = 'Good Pronghorn Hide',
        rewarditem1 = 'good_pronghorn_pelt',
		rewarditem2 = 'horn_prong', 
        rewarditem3 = 'raw_meat',
      --  rewarditem4 = nil,
      --  rewarditem5 = nil,
    },
    { -- a_c_pronghorn_01 / PROVISION_PRONGHORN_FUR_PRISTINE
        pelthash    = 554578289,
        name        = 'Perfect Pronghorn Hide',
        rewarditem1 = 'perfect_pronghorn_pelt',
		rewarditem2 = 'horn_prong', 
        rewarditem3 = 'raw_meat',
      --  rewarditem4 = nil,
      --  rewarditem5 = nil,
    },
    
    -- RAM
    { -- a_c_bighornram_01 / PROVISION_RAM_HIDE_POOR
        pelthash    = 1796037447,
        name        = 'Poor Ram Hide',
        rewarditem1 = 'poor_bighornram_pelt',
		rewarditem2 = 'heart_wolf', 
		rewarditem3 = 'horn_ram', 
        rewarditem4 = 'raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_bighornram_01 / PROVISION_RAM_HIDE
        pelthash    = -476045512,
        name        = 'Good Ram Hide',
        rewarditem1 = 'good_bighornram_pelt',
		rewarditem2 = 'heart_wolf', 
		rewarditem3 = 'horn_ram', 
        rewarditem4 = 'raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_bighornram_01 / PROVISION_RAM_HIDE_PRISTINE
        pelthash    = 1795984405,
        name        = 'Perfect Ram Hide',
        rewarditem1 = 'perfect_bighornram_pelt',
		rewarditem2 = 'heart_wolf', 
		rewarditem3 = 'horn_ram', 
        rewarditem4 = 'raw_meat', 
      --  rewarditem5 = nil,
    },
    
    -- SHEEP
    { -- a_c_sheep_01 / PROVISION_SHEEP_WOOL_POOR
        pelthash    = 1729948479,
        name        = 'Poor Sheep Hide',
        rewarditem1 = 'poor_sheep_pelt',
		rewarditem2 = 'wool', 
		rewarditem3 = 'small_raw_meat', 
      --  rewarditem4 = nil,
      --  rewarditem5 = nil,
    },
    { -- a_c_sheep_01 / PROVISION_SHEEP_WOOL
        pelthash    = -1317365569,
        name        = 'Good Sheep Hide',
        rewarditem1 = 'good_sheep_pelt',
		rewarditem2 = 'wool', 
		rewarditem3 = 'small_raw_meat',
      --  rewarditem4 = nil,
      --  rewarditem5 = nil,
    },
    { -- a_c_sheep_01 / PROVISION_SHEEP_WOOL_PRISTINE
        pelthash    = 1466150167,
        name        = 'Perfect Sheep Hide',
        rewarditem1 = 'perfect_sheep_pelt',
		rewarditem2 = 'wool', 
		rewarditem3 = 'small_raw_meat', 
      --  rewarditem4 = nil,
      --  rewarditem5 = nil,
    },
    
    -- WOLF
    { -- a_c_wolf / PROVISION_WOLF_FUR_POOR
        pelthash    = 85441452,
        name        = 'Poor Wolf Pelt',
        rewarditem1 = 'poor_wolf_pelt',
		rewarditem2 = 'heart_wolf', 
		rewarditem3 = 'tooth_wolftooth', 
        rewarditem4 = 'raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_wolf / PROVISION_WOLF_FUR
        pelthash    = 1145777975,
        name        = 'Good Wolf Pelt',
        rewarditem1 = 'good_wolf_pelt',
		rewarditem2 = 'heart_wolf', 
		rewarditem3 = 'tooth_wolftooth', 
        rewarditem4 = 'raw_meat', 
       -- rewarditem5 = nil,
    },
    { -- a_c_wolf / PROVISION_WOLF_FUR_PRISTINE
        pelthash    = 653400939,
        name        = 'Perfect Wolf Pelt',
        rewarditem1 = 'perfect_wolf_pelt',
		rewarditem2 = 'heart_wolf', 
		rewarditem3 = 'tooth_wolftooth', 
        rewarditem4 = 'raw_meat', 
      --  rewarditem5 = nil,
    },
    
    -- ALLIGATOR
    { -- a_c_alligator_03 / PROVISION_ALLIGATOR_SKIN_POOR
        pelthash    = 1806153689,
        name        = 'Poor Alligator Skin',
        rewarditem1 = 'poor_alligator_pelt',
		rewarditem2 = 'tail_beaver', 
		rewarditem3 = 'tooth_aligatorto', 
        rewarditem4 = 'large_raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_alligator_03 / PROVISION_ALLIGATOR_SKIN
        pelthash    = -802026654,
        name        = 'Good Alligator Skin',
        rewarditem1 = 'good_alligator_pelt',
		rewarditem2 = 'tail_beaver', 
		rewarditem3 = 'tooth_aligatorto', 
        rewarditem4 = 'large_raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_alligator_03 / PROVISION_ALLIGATOR_SKIN_PRISTINE
        pelthash    = -1625078531,
        name        = 'Perfect Alligator Skin',
        rewarditem1 = 'perfect_alligator_pelt',
		rewarditem2 = 'tail_beaver', 
		rewarditem3 = 'tooth_aligatorto', 
        rewarditem4 = 'large_raw_meat', 
      --  rewarditem5 = nil,
    },
	
    -- ALLIGATOR
    { -- a_c_alligator_03 / PROVISION_ALLIGATOR_SKIN_POOR
        pelthash    = -1243878166,
        name        = 'Poor Alligator Skin',
        rewarditem1 = 'poor_alligator_pelt',
		rewarditem2 = 'tail_beaver', 
		rewarditem3 = 'tooth_aligatorto', 
        rewarditem4 = 'large_raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_alligator_03 / PROVISION_ALLIGATOR_SKIN
        pelthash    = -802026654,
        name        = 'Good Alligator Skin',
        rewarditem1 = 'good_alligator_pelt',
		rewarditem2 = 'tail_beaver', 
		rewarditem3 = 'tooth_aligatorto', 
        rewarditem4 = 'large_raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- a_c_alligator_03 / PROVISION_ALLIGATOR_SKIN_PRISTINE
        pelthash    = -1475338121,
        name        = 'Perfect Alligator Skin',
        rewarditem1 = 'perfect_alligator_pelt',
		rewarditem2 = 'tail_beaver', 
		rewarditem3 = 'tooth_aligatorto', 
        rewarditem4 = 'large_raw_meat', 
      --  rewarditem5 = nil,
    },

    { -- a_c_alligator_03 / Legendary Teca Gator Skin             --UPDATE
    pelthash    = -1924159110,
    name        = 'Perfect Alligator Skin',
    rewarditem1 = 'perfect_alligator_pelt',
    rewarditem2 = 'tail_beaver', 
    rewarditem3 = 'tooth_aligatorto', 
    rewarditem4 = 'large_raw_meat', 
  --  rewarditem5 = nil,
},
-- RACCOON
    { -- a_c_raccoon_01 / PROVISION_RACCOON_FUR_POOR
        pelthash    = 1992476687,
        name        = 'Poor Raccoon Pelt',
        rewarditem1 = 'poor_raccoon_pelt',
		rewarditem2 = 'tooth_raccoont', 
        rewarditem3 = 'small_raw_meat',
      --  rewarditem4 = nil,
     --   rewarditem5 = nil,
    },
    { -- a_c_raccoon_01 / PROVISION_RACCOON_FUR
        pelthash    = -1178296218,
        name        = 'Good Raccoon Pelt',
        rewarditem1 = 'good_raccoon_pelt',
		rewarditem2 = 'tooth_raccoont', 
        rewarditem3 = 'small_raw_meat',
      --  rewarditem4 = nil,
      --  rewarditem5 = nil,
    },
    { -- a_c_raccoon_01 / PROVISION_RACCOON_FUR_PRISTINE
        pelthash    = -305970307,
        name        = 'Perfect Raccoon Pelt',
        rewarditem1 = 'perfect_raccoon_pelt',
		rewarditem2 = 'tooth_raccoont', 
        rewarditem3 = 'small_raw_meat',
      --  rewarditem4 = nil,
      --  rewarditem5 = nil,
    },
    
   -- LEGENDARY
    { -- mp_a_c_alligator_01 / Legendary Sun Gator
        pelthash    = -1621144167,
        name        = 'Legendary Sun Gator Skin',
        rewarditem1 = 'legendary_alligator_pelt',
		rewarditem2 = 'tail_beaver', 
		rewarditem3 = 'tooth_aligatorto', 
        rewarditem4 = 'large_raw_meat',
     --  rewarditem5 = nil,
    },
   { -- mp_a_c_alligator_01 / Legendary Teca Gator
        pelthash    = 674287411,
        name        = 'Legendary Sun Gator Skin',
        rewarditem1 = 'legendary_alligator_pelt',
		rewarditem2 = 'tail_beaver', 
		rewarditem3 = 'tooth_aligatorto', 
        rewarditem4 = 'large_raw_meat',
     --  rewarditem5 = nil,
    },
   { -- mp_a_c_alligator_01 / Legendary Teca Gator
        pelthash    = 2028722809,
        name        = 'Legendary Sun Gator Skin',
        rewarditem1 = 'legendary_alligator_pelt',
		rewarditem2 = 'tail_beaver', 
		rewarditem3 = 'tooth_aligatorto', 
        rewarditem4 = 'large_raw_meat',
     --  rewarditem5 = nil,
    },
    { -- mp_a_c_beaver_01 / Legendary Moon Beaver
        pelthash    = -251416414,
        name        = 'Legendary Moon Beaver Pelt',
        rewarditem1 = 'legendary_beaver_pelt',
        rewarditem2 = 'small_raw_meat',
     --  rewarditem3 = nil,
     --   rewarditem4 = nil,
     --   rewarditem5 = nil,
    },	
    { -- mp_a_c_beaver_01 / Legendary Moon Beaver        ---UPDATE
    pelthash    = 121494806,
    name        = 'Legendary ZIZI Beaver Pelt',
    rewarditem1 = 'legendary_beaver_pelt',
    rewarditem2 = 'small_raw_meat',
 --  rewarditem3 = nil,
 --   rewarditem4 = nil,
 --   rewarditem5 = nil,
    },	
    { -- mp_a_c_beaver_01 / Legendary Beaver
        pelthash    = -1763639041,
        name        = 'Legendary Beaver Pelt',
        rewarditem1 = 'legendary_beaver_pelt',
        rewarditem2 = 'small_raw_meat',
     --  rewarditem3 = nil,
     --   rewarditem4 = nil,
     --   rewarditem5 = nil,
    },
    { -- mp_a_c_boar_01 / Legendary Wakpa Boar
        pelthash    = -1249752300,
        name        = 'Legendary Wakpa Boar Pelt',
        rewarditem1 = 'legendary_boar_pelt',
		rewarditem2 = 'fat', 
        rewarditem3 = 'tooth_boarmusk', 
        rewarditem4 = 'raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- mp_a_c_boar_01 / Legendary Corgi Boar
        pelthash    = -1038420333,
        name        = 'Legendary Wakpa Boar Pelt',
        rewarditem1 = 'legendary_boar_pelt',
		rewarditem2 = 'fat', 
        rewarditem3 = 'tooth_boarmusk', 
        rewarditem4 = 'raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- mp_a_c_cougar_01 / Legendary Maza Cougar
        pelthash    = 397926876,
        name        = 'Legendary Maza Cougar Pelt',
        rewarditem1 = 'legendary_cougar_pelt',
		rewarditem2 = 'heart_wolf', 
		rewarditem3 = 'tooth_cougarf', 
        rewarditem4 = 'raw_meat', 
     --   rewarditem5 = nil,
    },
    { -- mp_a_c_cougar_01 / Legendary Iguga Cougar
        pelthash    = -1433814131,
        name        = 'Legendary Maza Cougar Pelt',
        rewarditem1 = 'legendary_cougar_pelt',
		rewarditem2 = 'heart_wolf', 
		rewarditem3 = 'tooth_cougarf', 
        rewarditem4 = 'raw_meat', 
     --   rewarditem5 = nil,
    },
    { -- mp_a_c_coyote_01 / Legendary Midnight Paw Coyote
        pelthash    = 1728819413,
        name        = 'Legendary Midnight Paw Coyote Pelt',
        rewarditem1 = 'legendary_coyote_pelt',
		rewarditem2 = 'tail_chipmunk_c', 
        rewarditem3 = 'tooth_coyotef', 
        rewarditem4 = 'raw_meat',
      --  rewarditem5 = nil,
    },
    { -- mp_a_c_panther_01 / Legendary Ghost Panther
        pelthash    = 836208559,
        name        = 'Legendary Ghost Panther Pelt',
        rewarditem1 = 'legendary_panther_pelt',
		rewarditem2 = 'heart_wolf', 
		rewarditem3 = 'tail_panthere', 
        rewarditem4 = 'raw_meat',
      --  rewarditem5 = nil,
    },
	    { -- mp_a_c_panther_01 / Legendary Nightwalker Panther
        pelthash    = -1189368951,
        name        = 'Legendary Nightwalker Panther Pelt',
        rewarditem1 = 'legendary_panther_pelt',
		rewarditem2 = 'heart_wolf', 
		rewarditem3 = 'tail_panthere', 
        rewarditem4 = 'raw_meat',
      --  rewarditem5 = nil,
    },
    { -- mp_a_c_wolf_01? / Legendary Onyx Wolf
        pelthash    = -1548204069,
        name        = 'Legendary Onyx Wolf Pelt',
        rewarditem1 = 'legendary_wolf_pelt',
		rewarditem2 = 'heart_wolf', 
		rewarditem3 = 'tooth_wolftooth', 
        rewarditem4 = 'raw_meat', 
      --  rewarditem5 = nil,
    },
    { -- mp_a_c_wolf_01 / Legendary Emerald Wolf Pelt
        pelthash    = -1946740647,
        name        = 'Legendary Emerald Wolf Pelt',
        rewarditem1 = 'legendary_wolf_pelt',
		rewarditem2 = 'heart_wolf', 
		rewarditem3 = 'tooth_wolftooth', 
        rewarditem4 = 'raw_meat', 
     --   rewarditem5 = nil,
    },
    
}

 Config.Animal = {
    ------HASH UPDATES--------
    { -- Legendary Zizi Beaver
        modelhash   = -1149999295,
        name        = 'Legendary Zizi Beaver',
		rewarditem2 = 'tooth_snaket', 
        rewarditem3 = 'small_raw_meat',
     --   rewarditem4 = nil,
     --   rewarditem5 = nil,
    },

-------------------------------
    { -- Water snake
        modelhash   = -229688157,
        name        = 'Water snake',
		rewarditem2 = 'tooth_snaket', 
        rewarditem3 = 'small_raw_meat',
     --   rewarditem4 = nil,
     --   rewarditem5 = nil,
    },  
    { -- Snake Red Boa
        modelhash   = -1790499186,
        name        = 'Snake Red Boa',
		rewarditem2 = 'tooth_snaket', 
        rewarditem3 = 'small_raw_meat',
     --   rewarditem4 = nil,
     --   rewarditem5 = nil,     
    },  
    { -- Snake Fer-De-Lance
        modelhash   = 1464167925,
        name        = 'Snake Fer-De-Lance',
		rewarditem2 = 'tooth_snaket', 
        rewarditem3 = 'small_raw_meat',
     --   rewarditem4 = nil,
     --   rewarditem5 = nil,     
    },  
    { -- Black-Tailed Rattlesnake
        modelhash    = 846659001,
        name        = 'Black-Tailed Rattlesnake',
		rewarditem2 = 'tooth_snaket', 
        rewarditem3 = 'small_raw_meat',
      --  rewarditem4 = nil,
     --   rewarditem5 = nil,     
    },  
    { -- Western Rattlesnake
        modelhash   = 545068538,
        name        = 'Western Rattlesnake',
		rewarditem2 = 'tooth_snaket', 
        rewarditem3 = 'small_raw_meat',
      --  rewarditem4 = nil,
      --  rewarditem5 = nil,      
    },  
        --AVES
    {-- A_C_DUCK_01
        modelhash   = -1003616053,
        name        = 'Pato',
        rewarditem1 = 'beak_duckf',
        rewarditem2 = 'heart_chicken',
        rewarditem3 = 'bird_meat', 
        rewarditem5 = 'feathers',       
    },
    {-- A_C_EAGLE_01
        modelhash   = 1459778951,
        name        = 'Aguila',
        rewarditem2 = 'claws_eaglet',
        rewarditem3 = 'beak_eaglef',
        rewarditem4 = 'heart_chicken',
        rewarditem5 = 'feathers',     
    },
    {-- A_C_EGRET_01
        modelhash   = 831859211,
        name        = 'Egret',
        rewarditem2 = 'beak_egretf',
        rewarditem3 = 'heart_chicken',
        rewarditem4 = 'large_bird_meat', 
        rewarditem5 = 'feathers',      
    },
    {-- A_C_VULTURE_01
        modelhash   = 1104697660, -- revisar
        name        = 'Buitre Cabecirrojo occ',
        rewarditem2 = 'beak_vulturef',
        rewarditem3 = 'heart_chicken',
        rewarditem4 = 'large_bird_meat', 
        rewarditem5 = 'feathers',      
    },     
    { -- A_C_TURKEYWILD_01 / p_cs_trkybreastmeat01x
        modelhash   = -466054788,
        name        = 'Pavo salvaje',
        rewarditem2 = 'heart_chicken',
        rewarditem3 = 'beak_turkeyf', 
        rewarditem4 = 'bird_meat', 
        rewarditem5 = 'feathers',      
    }, 
    { -- A_C_TURKEYWILD_01 / p_cs_trkybreastmeat01x
        modelhash   = -2011226991,
        name        = 'Pavo salvaje',
        rewarditem2 = 'heart_chicken',
        rewarditem3 = 'beak_turkeyf', 
        rewarditem4 = 'bird_meat', 
        rewarditem5 = 'feathers',      
    }, 
    { -- A_C_TURKEYWILD_01 / p_cs_trkybreastmeat01x
        modelhash    = -166054593,
        name        = 'Pavo salvaje',
        rewarditem2 = 'heart_chicken',
        rewarditem3 = 'beak_turkeyf', 
        rewarditem4 = 'bird_meat', 
        rewarditem5 = 'feathers',       
    }, 
    { -- Herring Seagull
        modelhash    = -164963696,
        name        = 'Herring Seagull',
        rewarditem2 = 'heart_chicken',
        rewarditem3 = 'beak_turkeyf', 
        rewarditem4 = 'small_bird_meat', 
        rewarditem5 = 'feathers',       
    }, 
    { -- Roseate Spoonbill
        modelhash    = -1076508705,
        name        = 'Herring Seagull',
        rewarditem2 = 'heart_chicken',
        rewarditem3 = 'beak_turkeyf', 
        rewarditem4 =  'bird_meat', 
        rewarditem5 = 'feathers',      
    }, 
    { -- Dominique Rooster
        modelhash    = 2023522846,
        name        = 'Dominique Rooster',
        rewarditem2 = 'heart_chicken',
        rewarditem3 = 'beak_turkeyf', 
        rewarditem4 =  'bird_meat', 
        rewarditem5 = 'feathers',       
    }, 
    { -- Red-Footed Booby
        modelhash    = -466687768,
        name        = 'Red-Footed Booby',
        rewarditem2 = 'heart_chicken',
        rewarditem3 = 'beak_turkeyf', 
        rewarditem4 = 'bird_meat', 
        rewarditem5 = 'feathers', 
    }, 
    { -- Wester Raven 
        modelhash  = -575340245,
        name        = 'Wester Raven',
        rewarditem2 = 'heart_chicken',
        rewarditem3 = 'beak_turkeyf', 
        rewarditem4 = 'bird_meat', 
        rewarditem5 = 'feathers',
    }, 
    { -- Greater Prairie Chicken 
        modelhash    = 2079703102,
        name        = 'Greater Prairie Chicken',
        rewarditem2 = 'heart_chicken',
        rewarditem3 = 'beak_turkeyf', 
        rewarditem4 = 'bird_meat', 
        rewarditem5 = 'feathers',
    }, 
    { -- Ring-Necked Pheasant 
        modelhash    = 1416324601,
        name        = 'Ring-Necked Pheasant',
        rewarditem2 = 'heart_chicken',
        rewarditem3 = 'beak_turkeyf', 
        rewarditem4 =  'bird_meat', 
        rewarditem5 = 'feathers',
    }, 
    { -- American White Pelican 
        modelhash    = 1265966684,
        name        = 'American White Pelican',
        rewarditem2 = 'heart_chicken',
        rewarditem3 = 'beak_turkeyf', 
        rewarditem4 = 'large_bird_meat', 
        rewarditem5 = 'feathers',
    }, 
    { -- Blue And Yellow Macaw 
        modelhash    = -1797450568,
        name        = 'Blue And Yellow Macaw',
        rewarditem2 = 'heart_chicken',
        rewarditem3 = 'beak_turkeyf', 
        rewarditem4 = 'bird_meat', 
        rewarditem5 = 'feathers',  
    }, 
    { -- Californian Condor 
        modelhash    = 1205982615,
        name        = 'Californian Condor',
        rewarditem2 = 'heart_chicken',
        rewarditem3 = 'beak_turkeyf', 
        rewarditem4 = 'large_bird_meat',
        rewarditem5 = 'feathers',   
    }, 
    { -- Dominique Chicken 
        modelhash    = -2063183075,
        name        = 'Dominique Chicken',
        rewarditem2 = 'heart_chicken',
        rewarditem3 = 'beak_turkeyf', 
        rewarditem4 = 'bird_meat', 
        rewarditem5 = 'feathers',
    }, 
    { -- Double-Crested Cormorant 
        modelhash    = -2063183075,
        name        = 'Double-Crested Cormorant',
        rewarditem2 = 'heart_chicken',
        rewarditem3 = 'beak_turkeyf', 
        rewarditem4 = 'large_bird_meat', 
        rewarditem5 = 'feathers',
    }, 
    { -- Whooping Crane 
        modelhash    = -564099192,
        name        = 'Whooping Crane',
        rewarditem2 = 'heart_chicken',
        rewarditem3 = 'beak_turkeyf', 
        rewarditem4 = 'large_bird_meat',
        rewarditem5 = 'feathers',
    }, 
    { -- Canada Goose 
        modelhash    = 723190474,
        name        = 'Canada Goose',
        rewarditem2 = 'heart_chicken',
        rewarditem3 = 'beak_turkeyf', 
        rewarditem4 = 'large_bird_meat', 
        rewarditem5 = 'feathers',
    }, 
    { -- Ferruinous Hawk 
        modelhash    = -2145890973,
        name        = 'Ferruinous Hawk',
        rewarditem2 = 'claws_hawkt',
        rewarditem3 = 'beak_hawkf', 
        rewarditem4 = 'bird_meat', 
        rewarditem5 = 'feathers',
    }, 
    { -- Great Blue Heron
        modelhash    = 1095117488,
        name        = 'Great Blue Heron',
        rewarditem2 = 'heart_chicken',
        rewarditem3 = 'beak_turkeyf', 
        rewarditem4 = 'small_bird_meat', 
        rewarditem5 = 'feathers',
    }, 
    { -- Common Loon
        modelhash    = 386506078,
        name        = 'Common Loon',
        rewarditem2 = 'heart_chicken',
        rewarditem3 = 'beak_turkeyf', 
        rewarditem4 = 'small_bird_meat', 
        rewarditem5 = 'feathers',
    }, 
    { -- Great Horned Owl
        modelhash    = -861544272,
        name        = 'Great Horned Owl',
        rewarditem2 = 'heart_chicken',
        rewarditem3 = 'beak_turkeyf', 
        rewarditem4 = 'bird_meat', 
        rewarditem5 = 'feathers',
    }, 
    { -- Black Tailed Jackrabbit
        modelhash  = -541762431,
        name        = 'Black Tailed Jackrabbit',
        rewarditem2 = 'tail_rabbitpaw',
        rewarditem3 = 'small_raw_meat',
        rewarditem4 = 'small_bird_meat',
      --  rewarditem5 = nil,
    },
    { -- Armadillo
        modelhash    = -1797625440,
        name        = 'Armadillo',
        rewarditem2 = 'small_raw_meat',
        rewarditem3 = 'small_raw_meat',
        rewarditem4 = 'claws_armadilloc',
      --  rewarditem5 = nil,
    },
    { -- American Badger
        modelhash    = -1170118274,
        name        = 'American Badger',
        rewarditem2 = 'small_raw_meat', 
        rewarditem3 = 'small_raw_meat',
        rewarditem4 = 'claws_opossumc',
      --  rewarditem5 = nil,
    },
    { -- Grey Squirrel
        modelhash    = 1465438313,
        name        = 'Grey Squirrel',
        rewarditem2 = 'claws_opossumc',
        rewarditem3 = 'small_raw_meat', 
        rewarditem4 = 'claws_opossumc',
      --  rewarditem5 = nil,
    },  
    { -- A_C_POSSUM_01 / p_cs_pelt_med_possum
        modelhash    = -1414989025,
        name        = 'Zarigueya de virginia',
		rewarditem2 = 'claws_opossumc', 
        rewarditem3 = 'small_raw_meat', 
        rewarditem4 = 'claws_opossumc',
      --  rewarditem5 = nil,
    }, 
    { -- A_C_RABBIT_01 / p_cs_rabbit02x
        modelhash    = 311947389,
        name        = 'Liebre de cola Negra',
		rewarditem2 = 'tail_rabbitpaw', 
        rewarditem3 = 'small_raw_meat', 
        rewarditem4 = 'small_raw_meat',
      --  rewarditem5 = nil,
    }, 
    { -- Stripped skum
        modelhash  = -1211566332,
        name        = 'Stripped Skunk',
		rewarditem2 = 'claws_opossumc', 
        rewarditem3 = 'small_raw_meat', 
      --  rewarditem4 = nil, 
      --  rewarditem5 = nil,
    },
    {-- A_C_RAVEN_01
        modelhash  = -547982328,
        name        = 'Cuervo Grande Occidental',
        rewarditem2 = 'beak_ravenf',
        rewarditem3 = 'bird_meat',
        rewarditem4 = 'heart_chicken',
        rewarditem5 = 'feathers',
    }, 
    {-- A_C_HAWK_01
        modelhash  = -1350548143,
        name        = 'Ratonero Calzado',
        rewarditem2 = 'beak_hawkf',
        rewarditem3 = 'bird_meat',
        rewarditem4 = 'claws_hawkt',
        rewarditem5 = 'feathers',
    },
    {-- A_C_PRAIRIECHIKEN_01
        modelhash    = -547982328, -- revisar
        name        = 'Urogallo Grande',
        rewarditem1 = 'beak_prairif',
        rewarditem2 = 'bird_meat',
        rewarditem3 = 'heart_chicken',
        rewarditem5 = 'feathers',
    }, 
}

Config.Carcass = {
    'claws_armadilloc',
    'rat_c', 
	'horn_prong',
	'horn_bull', 
	'horn_cowh', 
	'wool', 
	'heart_chicken',
	'fat',
	'beak_eaglef',
	'claws_eaglet',
	'beak_hawkf',
	'claws_hawkt',
	'beak_egretf',
	'beak_turkeyf',
	'beak_seagullf', 
	'beak_rspoonf',
	'claws_cockc',
	'beak_boobyf', 
	'claws_ravenc', 
	'beak_ravenf',
	'beak_peasantf',
	'beak_pelicanf',
	'beak_bparrotf',
	'beak_condorf',
	'beak_bbirdf',
	'claws_owlt', 
	'beak_owlf', 
	'beak_goosef',  
	'beak_kbirdf',  
	'tail_chipmunk_c', 
	'beak_chickenf',  
	'beak_prairif',  
	'beak_vulturef',  
	'beak_duckf',  
	'tooth_boarmusk',  
	'wool', 
	'horn_bison',  
	'claws_bearc',
    'claws_beartc', 
	'tooth_beart',  
	'heart_bear', 
	'heart_wolf', 
	'heart_deer', 
	'horn_elkantler',  
	'horn_ram',  
	'tooth_wolftooth',  
	'tail_panthere', 
	'tooth_cougarf', 
	'tail_beaver', 
	'tooth_aligatorto',
	'tail_rabbitpaw', 
	'tooth_raccoont', 
	'claws_opossumc',
	'tail_chipmunk_c', 
	'tooth_foxt',  
	'tooth_coyotef',  
	'tooth_boarmusk',  
	'tooth_turtlet',  
	'tooth_snaket',
    'sinew',
    'feathers',
}
