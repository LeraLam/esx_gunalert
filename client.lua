ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
    
    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end

    while (Config.EnableGunAlert) do
        local playerPed = PlayerPedId()
        local pedPosition = GetEntityCoords(playerPed)
        if (ESX.PlayerData.job.name ~= Config.PoliceJobName) then
            local willTrigger = (math.random(0, 100) < Config.ProbabilityOfTriggetAlert)
            if  willTrigger then
                for city, coordinates in pairs(Config.CityCoordinates) do
                    local checkX =  ((coordinates.x1 <= pedPosition.x) and (pedPosition.x <= coordinates.x2))
                    local checkY =  ((coordinates.y2 <= pedPosition.y) and (pedPosition.y <= coordinates.y1))
                    local checkZ = ((coordinates.z1 <= pedPosition.z) and (pedPosition.z <= coordinates.z2))
                    local inArea = (checkX and checkY and checkZ)
                    if inArea and IsPedShooting(playerPed) and not IsPedCurrentWeaponSilenced(playerPed)  then
                        TriggerServerEvent('esx_addons_gcphone:startCall', Config.PolicePhoneNumber, _U('gunalert') , pedPosition, true, {
                            pedPosition = pedPosition,
                            })
                        TriggerServerEvent('esx_gunalert:logshot', pedPosition,  playerPed)
                        Citizen.Wait(Config.TimerWaitAfterShoot)
                    end
                end
            end
        end
        Citizen.Wait(Config.TimerWait)
    end
end)