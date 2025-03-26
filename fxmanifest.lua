fx_version 'cerulean'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game 'rdr3'
version '2.0.2'

quantum_github 'https://github.com/Quantum-Projects-RedM/QC-AdvancedTrapper'
author 'Pablo Enterprises'
description 'qc-advanced-trapper'

shared_scripts {
    '@rsg-core/shared/locale.lua',
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'locales/en.lua',
    'locales/*.lua',
    '@ox_lib/init.lua',
    'shared/*.lua'
}

client_scripts {
    'client/client.lua',
    'client/cl_legendary.lua',
    'client/main.js' 
}

server_scripts {
    'server/server.lua',
    'server/sv_legendary.lua'
}

dependencies {
    'rsg-core',
    'rsg-menu'
}

lua54 'yes'
