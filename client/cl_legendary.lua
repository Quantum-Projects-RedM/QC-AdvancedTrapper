local RSGCore = exports['rsg-core']:GetCoreObject()
local Zones = {}
local zonename = nil
local inHuntingZone = false
local baitLocation = nil
local spawnLocation = nil
local animal = {}
local baitProp = nil


local remainingCooldowns = {}

function modelrequest( model )
    Citizen.CreateThread(function()
        RequestModel( model )
    end)
end

-- load animal
Citizen.CreateThread(function()
    for z, x in pairs(Config.SpawnAnimal) do
    while not HasModelLoaded( GetHashKey(Config.SpawnAnimal[z]["Model"]) ) do
        Wait(500)
        modelrequest( GetHashKey(Config.SpawnAnimal[z]["Model"]) )
    end
    local npc = CreatePed(GetHashKey(Config.SpawnAnimal[z]["Model"]), Config.SpawnAnimal[z]["Pos"].x, Config.SpawnAnimal[z]["Pos"].y, Config.SpawnAnimal[z]["Pos"].z, Config.SpawnAnimal[z]["Heading"], true, true, 0, 0)
    while not DoesEntityExist(npc) do
        Wait(300)
    end
    Citizen.InvokeNative(0x283978A15512B2FE, npc, true)
	Citizen.InvokeNative(0xDC19C288082E586E, npc, true, false)
	Citizen.InvokeNative(0xBB9CE077274F6A1B, npc, 10.0, 10)
    SetModelAsNoLongerNeeded(GetHashKey(Config.SpawnAnimal[z]["Model"]))
    end
end)

RegisterNetEvent('qc-advanced-trapper:client:cooldownMessage')
AddEventHandler('qc-advanced-trapper:client:cooldownMessage', function(remainingCooldown, totalCooldown)
    print("Received cooldownMessage event from server. Remaining Cooldown:", remainingCooldown, "Total Cooldown:", totalCooldown)
    local remainingMinutes = math.floor(remainingCooldown / 60)
    local remainingSeconds = remainingCooldown % 60
    local totalMinutes = math.floor(totalCooldown / 60)
    local totalSeconds = totalCooldown % 60
    if Config.Notify == 'rnotify' then
        TriggerEvent('rNotify:NotifyLeft', "You need to wait ".. remainingMinutes .. " minutes and ".. remainingSeconds .. " seconds before hunting in this zone again. (Total cooldown: " .. totalMinutes .. " minutes and " .. totalSeconds .. " seconds)", "Hunting Zones", "generic_textures", "tick", 4000)
    elseif Config.Notify == 'ox_lib' then
        lib.notify( {title = "Hunting", description = "You need to wait ".. remainingMinutes .. " minutes and ".. remainingSeconds .. " seconds before hunting in this zone again. (Total cooldown: " .. totalMinutes .. " minutes and " .. totalSeconds .. " seconds)", type = 'inform' })
    end
end)

----------------------------------------  FUNCTIONS  ----------------------------------------------------------
function DeleteBaitProp()
    if baitProp ~= nil and DoesEntityExist(baitProp) then
        DeleteEntity(baitProp)
        baitProp = nil
    end
end


CreateThread(function()
    for k=1, #Config.HuntingZones do
        Zones[k] = CircleZone:Create(Config.HuntingZones[k].coords, Config.HuntingZones[k].radius, {
            name = Config.HuntingZones[k].name,
            debugPoly=false,
        })
        Zones[k]:onPlayerInOut(function(isPointInside)
            if isPointInside then
                inHuntingZone = true
                zonename = Zones[k].name
                local animal = Config.HuntingZones[k].animalname
                local bait = Config.HuntingZones[k].baitname
                if Config.HuntingZones[k].enterzone then
                    if Config.Notify == 'rnotify' then
                        TriggerEvent('rNotify:NotifyLeft', "You have entered a hunting zone! Animal: " .. animal, "Bait: " ..bait, "generic_textures", "tick", 4000)
                    elseif Config.Notify == 'ox_lib' then
                        lib.notify( {title = "You have entered a hunting zone! Animal: " .. animal, description = "Bait: " ..bait, type = 'inform' })
                    end
                end
            else
                inHuntingZone = false
                zonename = nil
                local animalName = Config.HuntingZones[k].animalname
                local baitName = Config.HuntingZones[k].baitname
                if Config.HuntingZones[k].enterzone then
                    DeleteBaitProp()
                end
            end
        end)
        if Config.HuntingZones[k].showblip == true then
            local HuntingBlip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, Config.HuntingZones[k].coords)
            local blipSprite = Config.HuntingZones[k].blipSprite
            SetBlipSprite(HuntingBlip, Config.HuntingZones[k].blipSprite, true)
            SetBlipScale(HuntingBlip, Config.HuntingZones[k].blipScale)
            Citizen.InvokeNative(0x9CB1A1623062F402, HuntingBlip, Config.HuntingZones[k].blipName)
        end
    end
end)

-- spawn location
local function getSpawnLoc()
    local playerCoords = GetEntityCoords(PlayerPedId())
    local spawnCoords = nil
    while spawnCoords == nil do
        local spawnX = math.random(-Config.SpawnDistanceRadius, Config.SpawnDistanceRadius)
        local spawnY = math.random(-Config.SpawnDistanceRadius, Config.SpawnDistanceRadius)
        local spawnZ = baitLocation.z
        local vec = vector3(baitLocation.x + spawnX, baitLocation.y + spawnY, spawnZ)
        if #(playerCoords - vec) > Config.SpawnDistanceRadius then
            spawnCoords = vec
        end
    end
    local worked, groundZ, normal = GetGroundZAndNormalFor_3dCoord(spawnCoords.x, spawnCoords.y, 1023.9)
    spawnCoords = vector3(spawnCoords.x, spawnCoords.y, groundZ)
    return spawnCoords
end

RegisterNetEvent('qc-advanced-trapper:server:useHuntingBait')
AddEventHandler('qc-advanced-trapper:server:useHuntingBait', function(item)
    local playerServerId = GetPlayerServerId(PlayerId()) 
    if inHuntingZone == true then
        local currentZone = nil
        for _, zone in pairs(Config.HuntingZones) do
            if zone.name == zonename then
                currentZone = zone
                break
            end
        end
        if currentZone then
            local requiredBait = currentZone.bait
            if item == requiredBait then 
                local ped = PlayerPedId()
                local playerId = PlayerId()

                local zoneCooldown = remainingCooldowns[currentZone.name] or 0
                local currentTime = GetGameTimer() / 1000
                local elapsedTime = currentTime - (zoneCooldown - currentZone.timer * 60) 

                -- Check zoneCooldown before using the bait
                if elapsedTime < currentZone.timer * 60 then
                    local remainingCooldown = currentZone.timer * 60 - elapsedTime
                    local remainingMinutes = math.floor(remainingCooldown / 60)
                    local remainingSeconds = math.floor(remainingCooldown % 60)
                    if Config.Notify == 'rnotify' then
                        TriggerEvent('rNotify:NotifyLeft', "Hunting Zones", "You need to wait :" .. remainingMinutes .. "minutes and" .. remainingSeconds .."seconds before using the bait again", "generic_textures", "tick", 4000)
                    elseif Config.Notify == 'ox_lib' then
                        lib.notify( {title = "Hunting Zones", description = "You need to wait :" .. remainingMinutes .. "minutes and" .. remainingSeconds .."seconds before using the bait again", type = 'inform' })
                    end
                        return
                end
                baitLocation = GetEntityCoords(PlayerPedId())
                spawnLocation = getSpawnLoc()
                TaskStartScenarioInPlace(ped, `WORLD_HUMAN_CROUCH_INSPECT`, 0, true)
                Wait(10000)
                ClearPedTasks(ped)
                TriggerServerEvent('qc-advanced-trapper:server:removeItem', requiredBait)

                local propModel = currentZone.baitprop 
                if not propModel then
                    print("No bait prop specified for this zone!")
                    return
                end
                baitProp = CreateObject(GetHashKey(propModel), baitLocation.x, baitLocation.y, baitLocation.z, true, true, true)
                SetEntityHeading(baitProp, GetEntityHeading(PlayerPedId()))
                FreezeEntityPosition(baitProp, true)
                local floor = PlaceEntityOnGroundProperly(baitProp, 0)
                if not floor then
                    print("Failed to place entity on the ground properly")
                end

                remainingCooldowns[currentZone.name] = currentTime + currentZone.timer * 60
                TriggerServerEvent('qc-advanced-trapper:server:updateCooldown', currentZone.name, remainingCooldowns[currentZone.name])
                if Config.Notify == 'rnotify' then
                    TriggerEvent('rNotify:NotifyLeft', "Bait has been set, hide and wait for the animal! ", "Hunting Zones", "generic_textures", "tick", 4000)
                elseif Config.Notify == 'ox_lib' then
                    lib.notify( {title = "Hunting", description = "Bait has been set, hide and wait for the animal! ", type = 'inform' })
                end
                Wait(Config.HideTime)
                local spawnanimal = currentZone.animal
                local model = spawnanimal
                RequestModel(model)
                while not HasModelLoaded(model) do
                    Wait(10)
                end
                animal = CreatePed(model, spawnLocation.x, spawnLocation.y, spawnLocation.z, true, true, true)
                Citizen.InvokeNative(0x283978A15512B2FE, animal, true)
                Citizen.InvokeNative(0xDC19C288082E586E, animal, true, false)
                TaskGoToCoordAnyMeans(animal, baitLocation.x, baitLocation.y, baitLocation.z, 1.0, 0, 0, 786603, 0.0)
                SetEntityMaxHealth(animal, currentZone.health)
                SetEntityHealth(animal, currentZone.health)
                SetModelAsNoLongerNeeded(spawnanimal)

                -- Monitor if the animal reaches the bait
                CreateThread(function()
                    local finished = false
                    while not IsPedDeadOrDying(animal) and not finished do
                        local spawnedAnimalCoords = GetEntityCoords(animal)
                        local distance = #(baitLocation - spawnedAnimalCoords)
                        if distance < 1.0 then
                            Wait(Config.AnimalWait)
                            Citizen.InvokeNative(0xBB9CE077274F6A1B, animal, 10.0, 10)
                            finished = true
                        end
                        Wait(1000)
                    end
                end)
            else
                if Config.Notify == 'rnotify' then
                    TriggerEvent('rNotify:NotifyLeft', "You can\'t use this bait in this hunting zone!", "Hunting Zones", "generic_textures", "tick", 4000)
                elseif Config.Notify == 'ox_lib' then
                    lib.notify( {title = "Hunting Zones", description = "You can\'t use this bait in this hunting zone!", type = 'inform' })
                end
            end
        else
            if Config.Notify == 'rnotify' then
            TriggerEvent('rNotify:NotifyLeft', "Failed to find current hunting zone.", "Hunting Zones", "generic_textures", "tick", 4000)
            elseif Config.Notify == 'ox_lib' then
                lib.notify( {title = "Hunting Zones", description = "Failed to find current hunting zone.", type = 'inform' })
            end
        end
    else
        if Config.Notify == 'rnotify' then
        TriggerEvent('rNotify:NotifyLeft', "You can\'t use that outside a hunting zone!", "Hunting Zones", "generic_textures", "tick", 4000)
        elseif Config.Notify == 'ox_lib' then
            lib.notify( {title = "Hunting Zones", description = "You can\'t use that outside a hunting zone!", type = 'inform' })
        end
    end
end)


AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        if IsEntityAnObject(baitProp) then
            DeleteEntity(baitProp)
        end
        if IsEntityAPed(animal) then
            DeleteEntity(animal)
        end
    end
end)
