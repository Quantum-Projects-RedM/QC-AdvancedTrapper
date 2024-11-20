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
--------------------------------------------
---IMPORTANT
--------------------------------------------
Config.Notify = "ox_lib"  --oxlib or rnotify
Config.Menu = "ox_lib" --oxlib
--------------------------------------------
---IMPORTANT
--------------------------------------------
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


