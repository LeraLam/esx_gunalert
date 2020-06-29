  
ESX = nil
RegisterServerEvent('esx_gunalert:logshot')
AddEventHandler('esx_gunalert:logshot', function(position, player)
	if Config.EnableLog then
        print("esx_gunshot : A shot was fired by : " .. player .. "at position : " .. position .."")
	end
end)