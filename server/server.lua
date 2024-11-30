local RSGCore = exports['rsg-core']:GetCoreObject()
-- NOTE
-- ALL PELTS ARE rewarditem1
--ALL CARCUS REWARDS ARE rewarditem1, rewarditem2 and rewarditem3
--Feather REWARDS SHOULD BE rewarditems5

RegisterNetEvent('qc-advanced-trapper:server:storepelt')
AddEventHandler('qc-advanced-trapper:server:storepelt', function(rewarditem1)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(rewarditem1, 1)
    TriggerClientEvent('rsg-inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem1], "add", 1)
    if Config.Notify == 'rnotify' then
        TriggerClientEvent('rNotify:NotifyLeft', src, "Hunting", "You received: " ..rewarditem1, "generic_textures", "tick", 4000)
    elseif Config.Notify == 'ox_lib' then
        TriggerClientEvent('ox_lib:notify', source, {title = "Hunting", description = "You received a: " ..rewarditem1, type = 'inform' })
    end
end)

RegisterNetEvent('qc-advanced-trapper:server:storecarcass')
AddEventHandler('qc-advanced-trapper:server:storecarcass', function(rewarditem2, rewarditem3, rewarditem4, rewarditem5)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local chance2 = math.random(1, 100) -- carcass
    local chance3 = math.random(1, 100) -- carcass
    local chance4 = math.random(1, 100) -- carcass
    local chance5 = math.random(1, 100) -- feathers
    if rewarditem2 ~= nil then
        if chance2 > 50 then 
            Player.Functions.AddItem(rewarditem2, 1)
            TriggerClientEvent('rsg-inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem2], "add", 1)
            if Config.Notify == 'rnotify' then
                TriggerClientEvent('rNotify:NotifyLeft', source, "You received a: " ..rewarditem2, "generic_textures", "tick", 4000)
            elseif Config.Notify == "ox_lib" then
                TriggerClientEvent('ox_lib:notify', source, {title = "Hunting", description = "You received a: " ..rewarditem2, type = 'inform' })
        end
    end
    if rewarditem3 ~= nil then
        if chance3 > 50 then
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
        if chance4 > 50 then
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
        if chance5 > 50 then
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
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] ~= nil then
                for _, peltName in ipairs(ConfigSell.Pelts) do
                    if Player.PlayerData.items[k].name == peltName then
                        price = price + (Config.PoorPeltPrice * Config.PoorMultiplier * Player.PlayerData.items[k].amount)
                        Player.Functions.RemoveItem(peltName, Player.PlayerData.items[k].amount, k)
                        haspelts = true
                        break
                    end
                end
            end
        end
        if haspelts then
            Player.Functions.AddMoney(Config.PaymentType, price, "pelts-sold")
            if Config.Notify == 'rnotify' then
                TriggerClientEvent('rNotify:Tip', source, Lang:t('success.you_have_sold_all_your_pelts_for')..price, 4000)
            elseif Config.Notify == 'ox_lib' then
                TriggerClientEvent('ox_lib:notify', source, {title = "Trapper", description = Lang:t('success.you_have_sold_all_your_pelts_for')..price, type = 'inform' })
            end
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
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] ~= nil then
                for _, carcassName in ipairs(ConfigSell.Carcass) do
                    if Player.PlayerData.items[k].name == carcassName then
                        price = price + (Config.GoodCarcassPrice * Config.GoodCarcassMultiplier * Player.PlayerData.items[k].amount)
                        Player.Functions.RemoveItem(carcassName, Player.PlayerData.items[k].amount, k)
                        hascarcass = true
                        break
                    end
                end
            end
        end
        if hascarcass then
            Player.Functions.AddMoney(Config.PaymentType, price, "carcass-sold")
            if Config.Notify == 'rnotify' then
                TriggerClientEvent('rNotify:Tip', source, Lang:t('success.you_have_sold_all_your_carcass_for') .. price, 4000)
            elseif Config.Notify == 'ox_lib' then
                TriggerClientEvent('ox_lib:notify', source, {title = "Trapper", description = Lang:t('success.you_have_sold_all_your_carcass_for') .. price, type = 'inform' })
            end
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
                for _, featherName in ipairs(ConfigSell.Feathers) do
                    if Player.PlayerData.items[k].name == featherName then 
                        price = price + (Config.FeathersPrice * Config.FeathersMultiplier * Player.PlayerData.items[k].amount)
                        Player.Functions.RemoveItem(featherName, Player.PlayerData.items[k].amount, k)
                        hasfeathers = true
                        break
                    end
                end
            end
        end
        if hasfeathers then
            Player.Functions.AddMoney(Config.PaymentType, price, "feathers-sold")
            if Config.Notify == 'rnotify' then
                TriggerClientEvent('rNotify:Tip', src, Lang:t('success.you_have_sold_all_your_feathers_for') .. price, 4000)
            elseif Config.Notify == 'ox_lib' then
                TriggerClientEvent('ox_lib:notify', src, {title = "Trapper", description = Lang:t('success.you_have_sold_all_your_feathers_for') .. price, type = 'inform' })
            end
        else
            if Config.Notify == 'rnotify' then
                TriggerClientEvent('rNotify:Tip', src, Lang:t('error.you_dont_have_any_feathers_to_sell'), 4000)
            elseif Config.Notify == 'ox_lib' then
                TriggerClientEvent('ox_lib:notify', src, {title = "Trapper", description = Lang:t('error.you_dont_have_any_feathers_to_sell'), type = 'inform' })
            end
        end
    end
end)

local function CheckVersion()
    PerformHttpRequest('https://raw.githubusercontent.com/Quantum-Projects-RedM/QC-VersionCheckers/master/QC-AdvancedTrapper.txt', function(err, newestVersion, headers)
        local currentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version')
        local resourceName = GetCurrentResourceName()
        local githubLink = GetResourceMetadata(resourceName, 'quantum_github') or "No GitHub URL provided"

        if not newestVersion then
            print("\n^1[Quantum Projects]^7 Unable to perform version check.\n")
            return
        end

        local isLatestVersion = newestVersion:gsub("%s+", "") == currentVersion:gsub("%s+", "")
        if isLatestVersion then
            print(("^3[Quantum Projects]^7: You are running the latest version of ^2%s^7 (^2%s^7)."):format(resourceName, currentVersion))
        else
            print("\n^6========================================^7")
            print("^3[Quantum Projects]^7 Version Checker")
            print("")
            print(("^3Version Check^7:\n ^2Current^7: %s\n ^2Latest^7: %s\n"):format(currentVersion, newestVersion))
            print(("^1You are running an outdated version of %s.\n^6Repository: ^4%s^7\n"):format(resourceName, githubLink))
            print("^6========================================^7\n")
        end
    end)
end

CheckVersion()

