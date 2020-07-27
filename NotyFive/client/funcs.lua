--[[ 
    
https://ned.im/noty/#/ 



]]

function SetQueueMax(queue, max)
    local tmp = {
        queue = tostring(queue),
        max = tonumber(max)
    }

    SendNUIMessage({maxNotifications = tmp})
end

function SendNotification(options)
    options.animation = options.animation or {}
    options.sounds = options.sounds or {}
    options.docTitle = options.docTitle or {}

    local options = {
        type = options.type or "success",
        layout = options.layout or "topRight",
        theme = options.theme or "metroui",
        text = options.text or "Empty Notification",
        timeout = options.timeout or 7500,
        progressBar = options.progressBar ~= false and true or false,
        closeWith = options.closeWith or {},
        animation = {
            open = options.animation.open or "noty_effects_open",
            close = options.animation.close or "noty_effects_close"
        },
        sounds = {
            volume = options.sounds.volume or 1,
            conditions = options.sounds.conditions or {},
            sources = options.sounds.sources or {}
        },
        docTitle = {
            conditions = options.docTitle.conditions or {}
        },
        modal = options.modal or false,
        id = options.id or false,
        force = options.force or false,
        queue = options.queue or "global",
        killer = options.killer or false,
        container = options.container or false,
        buttons = options.button or false
    }

    SendNUIMessage({options = options})
    PlaySound(-1, "Event_Start_Text", "GTAO_FM_Events_Soundset", 0, 0, 1)
end

RegisterNetEvent("NotyFive:SendNotification")
AddEventHandler("NotyFive:SendNotification", function(options)
    SendNotification(options)
end)

RegisterNetEvent("NotyFive:SetQueueMax")
AddEventHandler("NotyFive:SetQueueMax", function(queue, max)
    SetQueueMax(queue, max)
end)