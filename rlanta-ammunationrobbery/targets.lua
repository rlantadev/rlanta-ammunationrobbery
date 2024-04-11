local QBCore = exports['qb-core']:GetCoreObject()

-- Loja Grove Street
CreateThread(function ()
    exports['qb-target']:AddBoxZone("silahci1", vector3(20.58, -1104.17, 29.8), 1, 1, {
        name = "silahci1",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "ammunation-robbery:client:camkesici",
                icon = "fad fa-sack-cutter",
                label = 'Camı Kes'
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("silahci2", vector3(844.55, -1035.94, 28.19), 1, 1, {
        name = "silahci2",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "ammunation-robbery:client:camkesici",
                icon = "fad fa-sack-cutter",
                label = 'Camı Kes'
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("silahci3", vector3(-1302.99, -392.51, 36.7), 1, 1, {
        name = "silahci3",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "ammunation-robbery:client:camkesici",
                icon = "fad fa-sack-cutter",
                label = 'Camı Kes'
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("silahci4", vector3(255.06, -48.87, 69.94), 1, 1, {
        name = "silahci4",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "ammunation-robbery:client:camkesici",
                icon = "fad fa-sack-cutter",
                label = 'Camı Kes'
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("silahci5", vector3(812.56, -2159.61, 29.62), 1, 1, {
        name = "silahci5",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "ammunation-robbery:client:camkesici",
                icon = "fad fa-sack-cutter",
                label = 'Camı Kes'
            },
        },
        distance = 1.5
    })
end)
