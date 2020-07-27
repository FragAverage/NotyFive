-- Original pNotify by Nick78111 
-- FragAverage - Updated to Noty V3 and Implemented Outlaw Notification System

description "Advanced Notification Script using https://notifyjs.com/"

ui_page "html/index.html"

client_scripts {
    "client/main.lua",
    "client/funcs.lua",
    "config.lua"
}
server_scripts{
    "server/main.lua",
    "config.lua",
    "@mysql-async/lib/MySQL.lua",
}
files {
    "html/index.html",
    "html/NotyFive.js",
    "html/noty.js",
    "html/noty.css",
    "html/themes.css",
    "html/sound-example.wav"
}

export "SetQueueMax"
export "SendNotification"