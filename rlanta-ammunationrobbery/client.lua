local QBCore = exports['qb-core']:GetCoreObject()
local RequiredCops = 0

RegisterNetEvent('ammunation-robbery:client:camkesici')
AddEventHandler("ammunation-robbery:client:camkesici", function()

    local hasGlascutter = QBCore.Functions.HasItem("camkesici")

    if hasGlascutter then
        QBCore.Functions.TriggerCallback('ammunation-robbery:server:checkPoliceCount', function(status)
            if status then
        CallPolice()
        QBCore.Functions.Progressbar("kesicihazirla", "Kesici hazırlanıyor...", Config.Time1, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "mini@repair",
            anim = "fixing_a_player",
            flags = 16,
        }, {}, {}, function() 
            exports['ps-ui']:Thermite(function(success)
                if success then
                    print("success")
                    QBCore.Functions.Notify("Cam kesildi!", "success")
                    QBCore.Functions.Progressbar("kesicihazirla", "Kasalar alınıyor...", Config.Time2, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = "mini@repair",
                        anim = "fixing_a_player",
                        flags = 16,
                    }, {}, {}, function() 
                        TriggerServerEvent("ammunation-robbery:server:takeCreates", source)
                    end)
                else
                    print("fail")
                    QBCore.Functions.Notify("Camı kesemedin!.", "error")
                    TriggerServerEvent("ammunation-robbery:server:deleteCutter", source)
                end
             end, 10, 5, 3) -- Time, Gridsize (5, 6, 7, 8, 9, 10), IncorrectBlocks
        end)
    end
end)
    else
        QBCore.Functions.Notify("Elininen mi yapacaksın dayı!?", "error")
    end
end)

function CallPolice()
    exports['ps-dispatch']:AmmunationRobbery()
end