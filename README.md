# rlanta-ammunationrobbery


 It is a system designed to enable players to obtain weapons illegally for FiveM servers.

Dependecies
- qb-core
- ps-dispatch
- qb-inventory(ps-inventory)
- ps-ui
- qb-target


Features
- Detailed configuration file.
- Police requirement can be adjusted.
- Includes target system.
- İki adet kasa verir, bu kasalardan silah ve mermi kutusu çıkar.
- Minigame bulunur.

Install
- Add the rlanta-ammunationrebbery file to your files.

- qb-core/shared/items.lua ADD
`camkesici = { name = 'camkesici', label = 'Cam Kesici', weight = 1000, type = 'item', image = 'camkesici.png', unique = false, useable = false, shouldClose = false, combinable = nil, description = '' },
guncrate = { name = 'guncrate', label = 'Silah Kasası', weight = 1000, type = 'item', image = 'guncrate.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Açmak için kesiciye ihtiyacın var.' },
ammocrate = { name = 'ammocrate', label = 'Mermi Kasası', weight = 1000, type = 'item', image = 'ammocrate.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Açmak için kesiciye ihtiyacın var.' },`
