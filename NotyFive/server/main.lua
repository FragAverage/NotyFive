RegisterCommand('noty', function(source, args, raw)
    TriggerClientEvent('NotyFive:SendNotification', source, ({text = "(ERROR) Testing Notification<br>This is the second line<br>third line here", type = "error", timeout = math.random(1000, 10000)}))
    TriggerClientEvent('NotyFive:SendNotification', source, ({text = "(INFO) Testing Notification<br>This is the second line<br>third line here", type = "info", timeout = math.random(1000, 10000)}))
    TriggerClientEvent('NotyFive:SendNotification', source, ({text = "(SUCCESS) Testing Notification<br>This is the second line<br>third line here", type = "success", timeout = math.random(1000, 10000)}))
    TriggerClientEvent('NotyFive:SendNotification', source, ({text = "(ALERT) Testing Notification<br>This is the second line<br>third line here", type = "alert", timeout = math.random(1000, 10000)}))
    TriggerClientEvent('NotyFive:SendNotification', source, ({text = "(WARNING) Testing Notification<br>This is the second line<br>third line here", type = "warning", timeout = math.random(1000, 10000)}))
    Citizen.Wait(500)
    TriggerClientEvent('NotyFive:SendNotification', source, ({text = "This was a forced notification", type = "success", timeout = math.random(1000, 10000), force = true}))
    Citizen.Wait(1000)
    TriggerClientEvent('NotyFive:SendNotification', source, ({text = "This is a killer notification", type = "warning", timeout = math.random(1000, 10000), killer = true}))
end)