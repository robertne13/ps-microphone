fx_version 'cerulean'
game 'gta5'
lua54 'yes'
description 'Project Sloth Microphone Script'

shared_scripts {
  '@ox_lib/init.lua'
}

client_scripts {
  'client/main.lua',
  'client/megaphone.lua',
}

server_scripts {
  'server/main.lua',
}

shared_scripts {
  'config.lua',
}