fx_version 'cerulean'
game 'gta5'

server_script {
    'server/main.lua',
}

client_script {
    'client/main.lua',
    'config.lua',
}server_scripts { '@mysql-async/lib/MySQL.lua' }