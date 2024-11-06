local RSGCore = exports['rsg-core']:GetCoreObject()

-------------------------------------------
-- prompts
-------------------------------------------
local SpawnedTrapperBilps = {}
lib.locale()

CreateThread(function()
    for _, v in pairs(Config.TrapperLocations) do
        if not v.showTarget then
                exports['rsg-core']:createPrompt(v.location, v.coords, RSGCore.Shared.Keybinds[Config.KeyShop],  Lang:t('menu.open') .. v.name, {
                    type = 'client',
                    event = 'qc-advanced-trapper:client:openstore',
                    args = {},
                })
        else
            exports['rsg-target']:AddCircleZone(v.location, v.coords, 2, {
                name = v.location,
                debugPoly = false,
            }, {
                options = {
                    {
                        type = "client",
                        event = 'qc-advanced-trapper:client:openstore',
                        icon = "fas fa-comments-dollar",
                        label =  Lang:t('menu.open') .. v.name,
                    },
                },
                distance = 3,
            })
        end
        if v.showblip == true then
            local TrapperBlip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.coords)
            SetBlipSprite(TrapperBlip, GetHashKey(Config.Blip.blipSprite), true)
            SetBlipScale(TrapperBlip, Config.Blip.blipScale)
            Citizen.InvokeNative(0x9CB1A1623062F402, TrapperBlip, Config.Blip.blipName)
            table.insert(SpawnedTrapperBilps, TrapperBlip)
        end
    end
end)

----------------------------------------
-- open store with opening hours
----------------------------------------
AddEventHandler('qc-advanced-trapper:client:openstore', function()
    local hour = GetClockHours()
    if (hour < Config.OpenTime) or (hour >= Config.CloseTime) then
        if Config.Notify == 'rnotify' then
            TriggerEvent('rNotify:NotifyLeft', "Store Closed", "come back after "..Config.OpenTime.." am", "generic_textures", "tick", 4000)
        elseif Config.Notify == 'ox_lib' then
            lib.notify( {title = "Store Closed", description = "come back after "..Config.OpenTime.." am", type = 'inform' })
        end
        return
    end
    TriggerEvent('qc-advanced-trapper:client:menu')
end)

-- get store hours function
local GetTrapperHours = function()
    local hour = GetClockHours()
    if (hour < Config.OpenTime) or (hour >= Config.CloseTime) then
        for k, v in pairs(SpawnedTrapperBilps) do
            Citizen.InvokeNative(0x662D364ABF16DE2F, v, joaat('BLIP_MODIFIER_MP_COLOR_2'))
        end
    else
        for k, v in pairs(SpawnedTrapperBilps) do
            Citizen.InvokeNative(0x662D364ABF16DE2F, v, joaat('BLIP_MODIFIER_MP_COLOR_8'))
        end
    end
end

-- get shop hours on player loading
RegisterNetEvent('RSGCore:Client:OnPlayerLoaded', function()
    GetTrapperHours()
end)

-- update shop hourse every min
CreateThread(function()
    while true do
        GetTrapperHours()
        Wait(60000) -- every min
    end
end)


-----------------------------------------------------------------------------------

-- trapper menu
RegisterNetEvent('qc-advanced-trapper:client:menu', function()
    print("THIS WAS MADE WITH LOVE BY Pablo Enterprises")
    if Config.Menu == 'rsg-menu' then
    exports['rsg-menu']:openMenu({
        {
            header =  Lang:t('menu.trapper_menu'),
            isMenuHeader = true,
        },
        {
            header = Lang:t('menu.sell_stored_pelts'),
            txt = Lang:t('text.sell_store_pelts'),
            icon = "fas fa-paw",
            params = {
                event = 'qc-advanced-trapper:client:sellpelts',
                isServer = false,
            }
        },
        -----------
        {
            header = Lang:t('menu.sell_stored_carcass'),
            txt = Lang:t('text.sell_store_carcass'),
            icon = "fas fa-horse",
            params = {
                event = 'qc-advanced-trapper:client:sellcarcass',
                isServer = false,
            }
        },
        {
            header = Lang:t('menu.sell_stored_feathers'),
            txt = Lang:t('text.sell_stored_feathers'),
            icon = "fas fa-feather",
            params = {
                event = 'qc-advanced-trapper:client:sellfeathers',
                isServer = false,
            }
        },
        {
            header = Lang:t('menu.close_menu'),
            txt = '',
            params = {
                event = 'rsg-menu:closeMenu',
            }
        },
    })
elseif Config.Menu == 'ox_lib' then
            -- Menu would go here.
        lib.registerContext({
            id = 'trapper_menu',
            title = Lang:t('menu.trapper_menu'),
            options = {
                {
                    title = Lang:t('menu.sell_stored_pelts'),
                    description = Lang:t('text.sell_store_pelts'),
                    icon = 'fas fa-paw',
                    event = 'qc-advanced-trapper:client:sellpelts',
                    arrow = true
                },
                {
                    title = Lang:t('menu.sell_stored_carcass'),
                    description = Lang:t('menu.sell_stored_carcass'),
                    icon = 'fas fa-horse',
                    event = 'qc-advanced-trapper:client:sellcarcass',
                    arrow = true
                },
                {
                    title = Lang:t('menu.sell_stored_feathers'),
                    description = Lang:t('menu.sell_stored_feathers'),
                    icon = 'fas fa-feather',
                    event = 'qc-advanced-trapper:client:sellfeathers',
                    arrow = true
                }
            }
        })
        lib.showContext('trapper_menu')
    end
end)

-------------------------------------------
-- process bar before sell pelts
-------------------------------------------
RegisterNetEvent('qc-advanced-trapper:client:sellpelts', function()
    exports['progressbar']:Progress({
        name = 'make-product',
        label = Lang:t('progressbar.checking_pelts'),
        duration = Config.SellTime,
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }
    }, function() -- Done
        TriggerServerEvent('qc-advanced-trapper:server:sellpelts')
    end)
end)


RegisterNetEvent('qc-advanced-trapper:client:sellcarcass', function()
    exports['progressbar']:Progress({
            name = 'make-product',
            label = Lang:t('progressbar.checking_carcass'),
            duration = Config.SellTime,
            useWhileDead = false,
            canCancel = true,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = true,
            }
        }, function() 
    TriggerServerEvent('qc-advanced-trapper:server:sellcarcass')
    end)
end)


RegisterNetEvent('qc-advanced-trapper:client:sellfeathers', function()
    exports['progressbar']:Progress({
            name = 'make-product',
            label = Lang:t('progressbar.checking_feathers'),
            duration = Config.SellTime,
            useWhileDead = false,
            canCancel = true,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = true,
            }
        }, function() 
    TriggerServerEvent('qc-advanced-trapper:server:sellfeathers')

    end)
end)

----------------------------
-- delete holding
---------------------------
local function DeleteThis(holding)
    local timeout = 2000  --- 2 -second timeout
    local startTime = GetGameTimer()
    while not NetworkRequestControlOfEntity(holding) and (GetGameTimer() - startTime) < timeout do
        NetworkRequestControlOfEntity(holding)
        Wait(10)
    end
    if not NetworkHasControlOfEntity(holding) then
        return false
    end
    SetEntityAsMissionEntity(holding, true, true)
    Wait(100)
    DeleteEntity(holding)
    Wait(500)
    if not DoesEntityExist(holding) then
        return false
    else
        return false
    end
end

-------------------------------------------
-- rewards
-------------------------------------------
CreateThread(function()
    while true do
        Wait(1000)
        local ped = PlayerPedId()
        local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, ped)
        local pelthash = Citizen.InvokeNative(0x31FEF6A20F00B963, holding)
        if Config.Debug then
            print("entity model:", tostring(GetEntityModel(holding)))
            print("holding entity:", tostring(holding))
            print("pelthash:", tostring(pelthash))
        end
        if holding and holding ~= false then
            print("Holding entity detected:", GetEntityModel(holding))
            for i = 1, #Config.Pelts do
                local peltData = Config.Pelts[i]
                if peltData.pelthash and pelthash == peltData.pelthash then
                    local name = peltData.name
                    local rewarditem1 = peltData.rewarditem1
                    local rewarditem2 = peltData.rewarditem2
                    local rewarditem3 = peltData.rewarditem3
                    local rewarditem4 = peltData.rewarditem4
                    local deleted = false
                    if DoesEntityExist(holding) then
                        deleted = DeleteEntity(holding)
                        print("Entity deletion result:", deleted)
                    else
                        print("Entity does not exist or cannot be deleted")
                    end
                    if deleted then
                        TriggerServerEvent('qc-advanced-trapper:server:storepelt', rewarditem1)
                        TriggerServerEvent('qc-advanced-trapper:server:storecarcass', rewarditem2, rewarditem3, rewarditem4)
                        if Config.Notify == 'rnotify' then
                        TriggerEvent('rNotify:Tip', name .. Lang:t('primary.stored'), 4000)
                        elseif Config.Notify == 'ox_lib' then
                            lib.notify( {title = "Hunting", description = name .. Lang:t('primary.stored'), type = 'inform' })
                        end
                        Wait(5000)
                    else
                        if Config.Notify == 'rnotify' then
                            TriggerEvent('rNotify:Tip', Lang:t('error.something_went_wrong'), 4000)
                        elseif Config.Notify == 'ox_lib' then
                            lib.notify( {title = "Hunting", description = Lang:t('error.something_went_wrong'), type = 'inform' })
                        end
                    end
                elseif Config.Pelts[i].holding and GetEntityModel(holding) == Config.Pelts[i].holding then
                    local name = Config.Pelts[i].name
                    local rewarditem1 = Config.Pelts[i].rewarditem1
                    local rewarditem2 = Config.Pelts[i].rewarditem2
                    local rewarditem3 = Config.Pelts[i].rewarditem3
                    local rewarditem4 = Config.Pelts[i].rewarditem4
                    Wait(5000)
                    TriggerServerEvent('qc-advanced-trapper:server:storepelt', rewarditem1) -- PELT REWARDS
                    TriggerServerEvent('qc-advanced-trapper:server:storecarcass', rewarditem2, rewarditem3, rewarditem4) -- PELT REWARDS
                    if Config.Notify == 'rnotify' then
                        TriggerEvent('rNotify:Tip', name .. Lang:t('primary.stored'), 4000)
                    elseif Config.Notify == 'ox_lib' then
                        lib.notify({title = "Hunting", description = name .. Lang:t('primary.stored'), type = 'inform' })
                    end
                   
                end
            end
        end
    end
end)


-------------------------------------------
-- CHECKS MODEL AFTER EVENT AND TRIGGERS SERVER ADDITEM EVENT
-------------------------------------------
-- CHECKS MODEL AFTER EVENT AND TRIGGERS SERVER ADDITEM EVENT
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2)
        local size = GetNumberOfEvents(0)
        if size > 0 then
            for index = 0, size - 1 do
                local event = GetEventAtIndex(0, index)
                if event == 1376140891 then
                    local view = exports["qc-advanced-trapper"]:DataViewNativeGetEventData(0, index, 3)
                    local pedGathered = view['2']
                    local ped = view['0']
                    local model = GetEntityModel(pedGathered)
                    local model = model
                    local bool_unk = view['4']

                    local player = PlayerPedId()
                    local playergate = player == ped

                    -- Used to get models of animals in F8 Console menu turn on if you want to see what the hash is for animal.
                    if model and playergate == true then
                        print('Animal Gathered: ' .. model)
                    end
                   
                    for i = 1, #Config.Animal do 
                        if model and Config.Animal[i].modelhash ~= nil and playergate and bool_unk == 1 then
                            local chosenmodel = Config.Animal[i].modelhash
                            if model == chosenmodel then
                                local rewarditem2 = Config.Animal[i].rewarditem2 -- MODEL REWARDS
                                local rewarditem3 = Config.Animal[i].rewarditem3 -- MODEL REWARDS
                                local rewarditem4 = Config.Animal[i].rewarditem4 -- MODEL REWARDS
                                local rewarditem5 = Config.Animal[i].rewarditem5 -- MODEL REWARDS
                                TriggerServerEvent('qc-advanced-trapper:server:storefeathers', rewarditem2, rewarditem3, rewarditem4, rewarditem5)
                            end
                        end
                    end
                end
            end
        end
    end
end)


----------------------------------------
-- trapper shop
-------------------------------------------
RegisterNetEvent('qc-advanced-trapper:client:OpenTrapperShop')
AddEventHandler('qc-advanced-trapper:client:OpenTrapperShop', function()
    local ShopItems = {}
    ShopItems.label = Lang:t('text.trapper_shop')
    ShopItems.items = Config.TrapperShop
    ShopItems.slots = #Config.TrapperShop
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "TrapperShop_"..math.random(1, 99), ShopItems)
end)


-----------------------------------------------------------------------------------

RegisterCommand('spawn_animal', function(source, args, rawCommand)
    local animal = args[1] -- example : mp_a_c_wolf_01
    local outfit = args[2] -- example : 0
    local wait = args[3] -- example : 1000
    local player = PlayerPedId()
    local playerCoords = GetEntityCoords(player)
    if animal == nil then
        animal = 'mp_a_c_wolf_01'
    end
    if outfit == nil then
        outfit = 0
    end
    if wait == nil then
        wait = '10000'
    end
    wait = tonumber(wait)
    if Config.Debug then
        RequestModel(animal)
        while not HasModelLoaded(animal) do
            Wait(10)
        end
        animal = CreatePed(animal, playerCoords.x, playerCoords.y +5, playerCoords.z, true, true, true)
        Citizen.InvokeNative(0x77FF8D35EEC6BBC4, animal, outfit, false)
        Wait(wait)
        FreezeEntityPosition(animal, true)
    end
end, false)


