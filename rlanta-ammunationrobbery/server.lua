local QBCore = exports['qb-core']:GetCoreObject()
local CachedPoliceAmount = {}

RegisterServerEvent('ammunation-robbery:server:takeCreates', function() 
    local src = source
    local Player  = QBCore.Functions.GetPlayer(src)
    
    Player.Functions.AddItem("guncrate", 1)
    TriggerClientEvent('QBCore:Notify', src, 'Bir silah kasası buldun!', "success")
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["guncrate"], 'add')
    Player.Functions.AddItem("ammocrate", 1)
    TriggerClientEvent('QBCore:Notify', src, 'Bir mermi kasası buldun!', 'success')
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["ammocrate"], 'add')
    Player.Functions.RemoveItem("camkesici", 1)
    TriggerClientEvent('QBCore:Notify', src, 'Cam kesicin kırıldı!', 'error')
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["camkesici"], 'remove')
end)

RegisterServerEvent("ammunation-robbery:server:deleteCutter", function()
    local src = source
    local Player  = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("camkesici", 1)
    TriggerClientEvent('QBCore:Notify', src, 'Cam kesicin kırıldı!', 'remove')
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["camkesici"], 'remove')
end)

QBCore.Functions.CreateCallback('ammunation-robbery:server:checkPoliceCount', function(source, cb)
    local src = source
    local players = QBCore.Functions.GetPlayers()
    local policeCount = 0

    for i = 1, #players do
        local player = QBCore.Functions.GetPlayer(players[i])
        if player.PlayerData.job.name == 'police' then
            policeCount = policeCount + 1
        end
    end

    if policeCount >= Config.requiredPoliceCount then
        cb(true)
    else
        cb(false)
        TriggerClientEvent('QBCore:Notify', src, 'Yeterli polis yok!', 'error')
    end
end)

  QBCore.Functions.CreateUseableItem("guncrate", function(source, item)
    local src = source
    local Player  = QBCore.Functions.GetPlayer(src)
    local prob1 = math.random(1,3)
    local prob2 = math.random(1,3)
    local prob3 = math.random(1,3)

    if Player.Functions.RemoveItem("bolt_cutter", 1) then
        TriggerClientEvent('QBCore:Notify', src, 'Kasayı açabildin!', "success")

        if prob1 == 1 then
            Player.Functions.AddItem(Config.pistol1, Config.pistol1quantity)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.pistol1], 'add')
        elseif prob1 == 2 then
            Player.Functions.AddItem(Config.pistol2, Config.pistol2quantity)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.pistol2], 'add')
        elseif prob1 == 3 then
        Player.Functions.AddItem(Config.pistol3, Config.pistol3quantity)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.pistol2], 'add')
        end

        if prob2 == 1 then
            Player.Functions.AddItem(Config.smg1, Config.smg1quantity)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.smg1], 'add')
        elseif prob2 == 2 then
            Player.Functions.AddItem(Config.smg2, Config.smg2quantity)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.smg2], 'add')
        elseif prob3 == 3 then
            Player.Functions.AddItem(Config.smg3, Config.smg3quantity)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.smg3], 'add')
        end

        if prob3 == 1 then
            Player.Functions.AddItem(Config.rifle1, Config.rifle1quantity)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.rifle1], 'add')
        elseif prob3 == 2 then
            Player.Functions.AddItem(Config.rifle2, Config.rifle2quantity)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.rifle2], 'add')
        elseif prob3 == 3 then
            Player.Functions.AddItem(Config.rifle3, Config.rifle3quantity)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.rifle3], 'add')
        end

        Player.Functions.RemoveItem("guncrate", 1)

    else
        TriggerClientEvent('QBCore:Notify', src, 'Bu kasayı açabilmek için bir şeye ihtiyacın var!', 'error')
    end
end)

QBCore.Functions.CreateUseableItem("ammocrate", function(source, item)
    local src = source
    local Player  = QBCore.Functions.GetPlayer(src)

    if Player.Functions.RemoveItem("bolt_cutter", 1) then
        TriggerClientEvent('QBCore:Notify', src, 'Kasayı açabildin!', "success")
        Player.Functions.AddItem("pistol_ammo", Config.pammoquantity)
        Player.Functions.AddItem("smg_ammo", Config.sammoquantity)
        Player.Functions.AddItem("rifle_ammo", Config.rammoquantity)
        Player.Functions.RemoveItem("ammocrate", 1)
    else
        TriggerClientEvent('QBCore:Notify', src, 'Bu kasayı açabilmek için bir şeye ihtiyacın var!', 'error')
    end
end)