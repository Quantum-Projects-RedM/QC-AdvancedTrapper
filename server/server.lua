local RSGCore = exports['rsg-core']:GetCoreObject()

-- NOTE
-- ALL PELTS ARE rewarditem1

--ALL CARCUS REWARDS ARE rewarditem1, rewarditem2 and rewarditem3

-- Feather REWARDS SHOULD BE rewarditems


-- store pelt to rsg-inventory
RegisterNetEvent('qc-advanced-trapper:server:storepelt')
AddEventHandler('qc-advanced-trapper:server:storepelt', function(rewarditem1)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(rewarditem1, 1)
    TriggerClientEvent('rsg-inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem1], "add", 1)
    --RSGCore.Functions.Notify(src, 'You received pelt items', 'success', 4000)
    if Config.Notify == 'rnotify' then
        TriggerClientEvent('rNotify:NotifyLeft', src, "Hunting", "You received: " ..rewarditem1, "generic_textures", "tick", 4000)
    elseif Config.Notify == 'ox_lib' then
        TriggerClientEvent('ox_lib:notify', source, {title = "Hunting", description = "You received a: " ..rewarditem1, type = 'inform' })
    end
end)

-- store carcass to rsg-inventory
RegisterNetEvent('qc-advanced-trapper:server:storecarcass')
AddEventHandler('qc-advanced-trapper:server:storecarcass', function(rewarditem2, rewarditem3, rewarditem4, rewarditem5)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local chance2 = math.random(1, 100) -- carcass
    local chance3 = math.random(1, 100) -- carcass
    local chance4 = math.random(1, 100) -- carcass
    local chance5 = math.random(1, 100) -- feathers

    if rewarditem2 ~= nil then
        if chance2 > 50 then -- chance variable
            Player.Functions.AddItem(rewarditem2, 1)
            TriggerClientEvent('rsg-inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem2], "add", 1)
            if Config.Notify == 'rnotify' then
                TriggerClientEvent('rNotify:NotifyLeft', source, "You received a: " ..rewarditem2, "generic_textures", "tick", 4000)
            elseif Config.Notify == "ox_lib" then
                TriggerClientEvent('ox_lib:notify', source, {title = "Hunting", description = "You received a: " ..rewarditem2, type = 'inform' })
        end
    end

    if rewarditem3 ~= nil then
        if chance3 > 50 then -- chance variable
            Player.Functions.AddItem(rewarditem3, 1)
                TriggerClientEvent('rsg-inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem3], "add", 1)
            if Config.Notify == 'rnotify' then
                TriggerClientEvent('rNotify:NotifyLeft', source, rewarditem3, "generic_textures", "tick", 4000)
            elseif Config.Notify == 'ox_lib' then
                TriggerClientEvent('ox_lib:notify', source, {title = "Hunting", description = "You received a: " ..rewarditem3, type = 'inform' })
            end
        end
    end

    if rewarditem4 ~= nil then
        if chance4 > 50 then -- chance variable
            Player.Functions.AddItem(rewarditem4, 1)
                TriggerClientEvent('rsg-inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem4], "add", 1)
            if Config.Notify == 'rnotify' then
                TriggerClientEvent('rNotify:NotifyLeft', source, rewarditem4, "generic_textures", "tick", 4000)
            elseif Config.Notify == 'ox_lib' then
                TriggerClientEvent('ox_lib:notify', source, {title = "Hunting", description = "You received a: " ..rewarditem4, type = 'inform' })
            end
        end
    end

    if rewarditem5 ~= nil then
        if chance5 > 50 then -- chance variable --feathers
            Player.Functions.AddItem(rewarditem5, 1)
                TriggerClientEvent('rsg-inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem5], "add", 1)
            if Config.Notify == 'rnotify' then
                TriggerClientEvent('rNotify:NotifyLeft', source, rewarditem5, "generic_textures", "tick", 4000)
            elseif Config.Notify == 'ox_lib' then
                TriggerClientEvent('ox_lib:notify', source, {title = "Hunting", description = "You received a: " ..rewarditem5, type = 'inform' })
            end
        end
    end
end
end)

RegisterNetEvent('qc-advanced-trapper:server:storefeathers')
AddEventHandler('qc-advanced-trapper:server:storefeathers', function(giveItem2, giveItem3, giveItem4, giveItem5)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)

    if giveItem2 then
        Player.Functions.AddItem(giveItem2, 1)
        TriggerClientEvent('rsg-inventory:client:ItemBox', src, RSGCore.Shared.Items[giveItem2], "add", 1)
    end
    if giveItem3 then
        Player.Functions.AddItem(giveItem3, 1)
        TriggerClientEvent('rsg-inventory:client:ItemBox', src, RSGCore.Shared.Items[giveItem3], "add", 1)
    end
    if giveItem4 then
        Player.Functions.AddItem(giveItem4, 1)
        TriggerClientEvent('rsg-inventory:client:ItemBox', src, RSGCore.Shared.Items[giveItem4], "add", 1)
    end
    if giveItem5 then
        Player.Functions.AddItem(giveItem5, 1)
        TriggerClientEvent('rsg-inventory:client:ItemBox', src, RSGCore.Shared.Items[giveItem5], "add", 1)
    end
end)

RegisterServerEvent('qc-advanced-trapper:server:sellpelts')
AddEventHandler('qc-advanced-trapper:server:sellpelts', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local price = 0
    local haspelts = false
    local xp = Config.Xp
    local xp1 = Config.Xp1
    local xp2 = Config.Xp2
    local xp3 = Config.Xp3
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] ~= nil then
                -- bear_pelt
                if Player.PlayerData.items[k].name == "poor_bear_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_bear_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)                                                     ---Not implemented Yet
                elseif Player.PlayerData.items[k].name == "good_bear_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_bear_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "legendary_beaver_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("legendary_beaver_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_bear_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_bear_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                -- black_bear_pelt
                elseif Player.PlayerData.items[k].name == "poor_black_bear_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_black_bear_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_black_bear_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_black_bear_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    ----Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_black_bear_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_black_bear_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                   -- --Player.Functions.AddXp('main', xp2)
                -- poor_boar_pelt
                elseif Player.PlayerData.items[k].name == "poor_boar_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_boar_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_boar_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_boar_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                   -- --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_boar_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_boar_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                -- buck_pelt
                elseif Player.PlayerData.items[k].name == "poor_buck_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_buck_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_buck_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_buck_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_buck_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_buck_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true2
                    --Player.Functions.AddXp('main', xp2)
                -- buffalo_pelt
                elseif Player.PlayerData.items[k].name == "poor_buffalo_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_buffalo_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_buffalo_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_buffalo_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_buffalo_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_buffalo_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                -- bull_pelt
                elseif Player.PlayerData.items[k].name == "poor_bull_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_bull_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_bull_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_bull_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_bull_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_bull_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                -- cougar_pelt
                elseif Player.PlayerData.items[k].name == "poor_cougar_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_cougar_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_cougar_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_cougar_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_cougar_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_cougar_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                -- cow_pelt
                elseif Player.PlayerData.items[k].name == "poor_cow_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_cow_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_cow_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_cow_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_cow_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_cow_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                -- coyote_pelt
                elseif Player.PlayerData.items[k].name == "poor_coyote_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_coyote_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_coyote_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_cow_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_coyote_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_coyote_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                -- deer_pelt
                elseif Player.PlayerData.items[k].name == "poor_deer_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_deer_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_deer_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_deer_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_deer_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_deer_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                -- elk_pelt
                elseif Player.PlayerData.items[k].name == "poor_elk_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_elk_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_elk_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_elk_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_elk_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_elk_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                -- fox_pelt
                elseif Player.PlayerData.items[k].name == "poor_fox_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_fox_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_fox_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_fox_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_fox_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_fox_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                -- goat_pelt
                elseif Player.PlayerData.items[k].name == "poor_goat_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_goat_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_goat_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_goat_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_goat_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_goat_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                -- javelina_pelt
                elseif Player.PlayerData.items[k].name == "poor_javelina_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_javelina_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_javelina_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_javelina_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_javelina_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_javelina_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                -- moose_pelt
                elseif Player.PlayerData.items[k].name == "poor_moose_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_moose_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_moose_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_moose_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_moose_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_moose_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                -- ox_pelt
                elseif Player.PlayerData.items[k].name == "poor_ox_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_ox_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_ox_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_ox_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_ox_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_ox_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                -- panther_pelt
                elseif Player.PlayerData.items[k].name == "poor_panther_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_panther_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_panther_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_panther_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_panther_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_panther_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                -- pig_pelt
                elseif Player.PlayerData.items[k].name == "poor_pig_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_pig_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_pig_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_pig_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_pig_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_pig_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                -- pronghorn_pelt
                elseif Player.PlayerData.items[k].name == "poor_pronghorn_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_pronghorn_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_pronghorn_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_pronghorn_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_pronghorn_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_pronghorn_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                -- bighornram_pelt
                elseif Player.PlayerData.items[k].name == "poor_bighornram_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_bighornram_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_bighornram_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_bighornram_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_bighornram_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_bighornram_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                -- sheep_pelt
                elseif Player.PlayerData.items[k].name == "poor_sheep_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_sheep_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_sheep_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_sheep_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_sheep_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_sheep_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                -- wolf_pelt
                elseif Player.PlayerData.items[k].name == "poor_wolf_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_wolf_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_wolf_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_wolf_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_wolf_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_wolf_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                -- alligator_pelt
                elseif Player.PlayerData.items[k].name == "poor_alligator_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_alligator_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_alligator_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_alligator_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_alligator_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_alligator_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                -- legendary_alligator_pelt
                elseif Player.PlayerData.items[k].name == "legendary_alligator_pelt" then 
                    price = price + (Config.LegendaryPeltPrice * Config.LegendaryMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("legendary_alligator_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp3)
                -- legendary_boar_pelt
                elseif Player.PlayerData.items[k].name == "legendary_boar_pelt" then 
                    price = price + (Config.LegendaryPeltPrice * Config.LegendaryMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("legendary_boar_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp3)
                -- legendary_cougar_pelt
                elseif Player.PlayerData.items[k].name == "legendary_cougar_pelt" then 
                    price = price + (Config.LegendaryPeltPrice * Config.LegendaryMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("legendary_cougar_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp3)
                -- legendary_coyote_pelt
                elseif Player.PlayerData.items[k].name == "legendary_coyote_pelt" then 
                    price = price + (Config.LegendaryPeltPrice * Config.LegendaryMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("legendary_coyote_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp3)
                -- legendary_panther_pelt
                elseif Player.PlayerData.items[k].name == "legendary_panther_pelt" then 
                    price = price + (Config.LegendaryPeltPrice * Config.LegendaryMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("legendary_panther_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp3)
                -- legendary_wolf_pelt
                elseif Player.PlayerData.items[k].name == "legendary_wolf_pelt" then 
                    price = price + (Config.LegendaryPeltPrice * Config.LegendaryMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("legendary_wolf_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp3)
                -- raccoon_pelt
                elseif Player.PlayerData.items[k].name == "poor_raccoon_pelt" then 
                    price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("poor_raccoon_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                elseif Player.PlayerData.items[k].name == "good_raccoon_pelt" then 
                    price = price + (Config.GoodPeltPrice * Config.GoodMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("good_raccoon_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp1)
                elseif Player.PlayerData.items[k].name == "perfect_raccoon_pelt" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("perfect_raccoon_pelt", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp2)
                elseif Player.PlayerData.items[k].name == "pelt_rabbit" then 
                    price = price + (Config.PerfectPeltPrice * Config.PerfectMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("pelt_rabbit", Player.PlayerData.items[k].amount, k)
                    haspelts = true
                    --Player.Functions.AddXp('main', xp)
                end
            end
        end
        if haspelts == true then
            Player.Functions.AddMoney(Config.PaymentType, price, "pelts-sold")
            if Config.Notify == 'rnotify' then
            TriggerClientEvent('rNotify:Tip', source, Lang:t('success.you_have_sold_all_your_pelts_for')..price, 4000)
            elseif Config.Notify == 'ox_lib' then
                TriggerClientEvent('ox_lib:notify', source, {title = "Trapper", description = Lang:t('success.you_have_sold_all_your_pelts_for')..price, type = 'inform' })
            end
            haspelts = false
        else
            if Config.Notify == 'rnotify' then
            TriggerClientEvent('rNotify:Tip', source, Lang:t('error.you_dont_have_any_pelts_to_sell'), 4000)
            elseif Config.Notify == 'ox_lib' then
                TriggerClientEvent('ox_lib:notify', source, {title = "Trapper", description = Lang:t('error.you_dont_have_any_pelts_to_sell'), type = 'inform' })
            end
        end
    end
end)

RegisterServerEvent('qc-advanced-trapper:server:sellcarcass')
AddEventHandler('qc-advanced-trapper:server:sellcarcass', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local price = 0
    local hascarcass = false
    local xp4 = Config.Xp4
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] ~= nil then
                -- HEART
                if Player.PlayerData.items[k].name == "heart_bear" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("heart_bear", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "claws_beartc" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("claws_beartc", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "heart_wolf" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("heart_wolf", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "heart_deer" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("heart_deer", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "heart_chicken" then 
                    price = price + (Config.PoorCarcassPrice * Config.PoorCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("heart_chicken", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                elseif Player.PlayerData.items[k].name == "small_bird_meat" then 
                    price = price + (Config.PoorCarcassPrice * Config.PoorCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("small_bird_meat", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                elseif Player.PlayerData.items[k].name == "large_bird_meat" then 
                    price = price + (Config.PoorCarcassPrice * Config.PoorCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("large_bird_meat", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                elseif Player.PlayerData.items[k].name == "bird_meat" then 
                    price = price + (Config.PoorCarcassPrice * Config.PoorCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("bird_meat", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                -- BEAK
                elseif Player.PlayerData.items[k].name == "beak_bparrotf" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_bparrotf", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_quailb" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_quailb", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_bbirdf" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_bbirdf", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_boobyf" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_boobyf", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_daruf" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_daruf", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_condorf" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_condorf", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_pelicanf" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_pelicanf", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_peasantf" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_peasantf", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)

                elseif Player.PlayerData.items[k].name == "beak_loonf" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_loonf", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_kbirdf" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_kbirdf", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_goosef" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_goosef", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_egretf" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_egretf", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_turkeyf" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_turkeyf", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_seagullf" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_seagullf", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_rspoonf" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_rspoonf", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_prairif" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_prairif", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_bparrotf" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_bparrotf", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_chickenf" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_chickenf", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_eaglef" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_eaglef", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_hawkf" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_hawkf", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_owlf" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_owlf", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_ravenf" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_ravenf", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_duckf" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_duckf", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "beak_vulturef" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("beak_vulturef", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                
                -- TAIL
                elseif Player.PlayerData.items[k].name == "tail_beaver" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("tail_beaver", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "tail_chipmunk_c" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("tail_chipmunk_c", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "tail_panthere" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("tail_panthere", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "tail_lizardl" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("tail_lizardl", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "tail_rabbitpaw" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("tail_rabbitpaw", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
            
                -- HORN
                elseif Player.PlayerData.items[k].name == "horn_bison" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("horn_bison", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "horn_bull" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("horn_bull", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "horn_cowh" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("horn_cowh", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "horn_ox" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("horn_ox", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "horn_prong" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("horn_prong", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "horn_ram" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("horn_ram", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "horn_buckantler" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("horn_buckantler", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "horn_elkantler" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("horn_elkantler", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                
                -- CLAWS
                elseif Player.PlayerData.items[k].name == "claws_armadilloc" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("claws_armadilloc", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "claws_bearc" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("claws_bearc", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "claws_cockc" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("claws_cockc", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "claws_eaglet" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("claws_eaglet", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "claws_hawkt" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("claws_hawkt", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "claws_opossumc" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("claws_opossumc", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "claws_owlt" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("claws_owlt", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "claws_ravenc" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("claws_ravenc", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                -- TOOTH
                elseif Player.PlayerData.items[k].name == "tooth_aligatorto" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("tooth_aligatorto", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "tooth_beart" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("tooth_beart", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "tooth_cougarf" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("tooth_cougarf", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "tooth_coyotef" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("tooth_coyotef", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "tooth_foxt" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("tooth_foxt", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "tooth_raccoont" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("tooth_raccoont", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "tooth_snaket" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("tooth_snaket", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "tooth_turtlet" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("tooth_turtlet", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "tooth_wolftooth" then 
                    price = price + (Config.PerfectCarcassPrice * Config.PerfectCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("tooth_wolftooth", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "tooth_boarmusk" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("tooth_boarmuskt", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                elseif Player.PlayerData.items[k].name == "wool" then 
                    price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("wool", Player.PlayerData.items[k].amount, k)
                    hascarcass = true
                    --Player.Functions.AddXp('main', xp4)
                end
            end
        end
        if hascarcass == true then
            Player.Functions.AddMoney(Config.PaymentType, price, "carcass-sold")
            if Config.Notify == 'rnotify' then
            TriggerClientEvent('rNotify:Tip', source, Lang:t('success.you_have_sold_all_your_carcass_for') ..price, 4000)
            elseif Config.Notify == 'ox_lib' then
                TriggerClientEvent('ox_lib:notify', source, {title = "Trapper", description = Lang:t('success.you_have_sold_all_your_carcass_for')..price, type = 'inform' })
            end
            hascarcass = false
        else
            if Config.Notify == 'rnotify' then
            TriggerClientEvent('rNotify:Tip', source, Lang:t('error.you_dont_have_any_carcass_to_sell'), 4000)
            elseif Config.Notify == 'ox_lib' then
                TriggerClientEvent('ox_lib:notify', source, {title = "Trapper", description = Lang:t('error.you_dont_have_any_carcass_to_sell'), type = 'inform' })
            end
        end
    end
end)

RegisterServerEvent('qc-advanced-trapper:server:sellfeathers')
AddEventHandler('qc-advanced-trapper:server:sellfeathers', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local price = 0
    local hasfeathers = false
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] ~= nil then
                if Player.PlayerData.items[k].name == "feathers" then 
                    price =  price + (Config.FeathersPrice * Config.FeathersMultiplier * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("feathers", Player.PlayerData.items[k].amount, k)
                    hasfeathers = true
                end
            end
        end
        if hasfeathers == true then
            Player.Functions.AddMoney(Config.PaymentType, price, "feathers-sold")
            if Config.Notify == 'rnotify' then
                TriggerClientEvent('rNotify:Tip', source, Lang:t('success.you_have_sold_all_your_feathers_for')..price, 4000)
            elseif Config.Notify 'ox_lib' then
                TriggerClientEvent('ox_lib:notify', source, {title = "Trapper", description = Lang:t('success.you_have_sold_all_your_feathers_for')..price, type = 'inform' })
            hasfeathers = false
        else
            if Config.Notify == 'rnotify' then
                TriggerClientEvent('rNotify:Tip', source, Lang:t('error.you_dont_have_any_feathers_to_sell'), 4000)
            elseif Config.Notify == 'ox_lib' then
                TriggerClientEvent('ox_lib:notify', source, {title = "Trapper", description = Lang:t('error.you_dont_have_any_feathers_to_sell'), type = 'inform' })
                end
            end
        end
    end
end)
