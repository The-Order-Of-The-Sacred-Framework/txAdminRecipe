fx_version 'cerulean'
game 'gta5'

description 'Pickpocket - Created by NaorNC - Discord.gg/NCHub'
version '2.0.0'
author 'NaorNC'

ui_page 'html/index.html'

client_scripts {
    'client/main.lua',
}

server_scripts {
    'server/main.lua'
}

shared_scripts {
    '@qb-core/shared/locale.lua',
    --'@es_extended/imports.lua',
    'config.lua'
}

files {
    'html/index.html',
    'html/styles.css',
    'html/script.js',
    --'html/imgs/*.jpg',
    --'html/imgs/*.png'
}

lua54 'yes'
