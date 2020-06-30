fx_version 'adamant'

game 'gta5'

client_scripts {
    '@es_extended/locale.lua',
    'locales/fr.lua',
	'locales/en.lua',
    'config.lua',
    'client.lua',
}

server_scripts {
    '@es_extended/locale.lua',
    'locales/fr.lua',
	'locales/en.lua',
    'config.lua',
    'server.lua',
}

dependencies {
    'es_extended',
    'esx_addons_gcphone',
}
