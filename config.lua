
Config = {}

Config.Locale = 'fr' --Language

Config.EnableGunAlert = true --True to enable gun's shot alert
Config.EnableLog = true --True to enable log on gun's shot alert
Config.PolicePhoneNumber = '17' --To Change according to your server's police's phone number
Config.PoliceJobName = 'police' --To Change according to your server's police's job name
Config.TimerWait = 1000 --Timer for thread
Config.TimerWaitAfterShoot = 120000 --Timer between two alerts coming from the same player
Config.TimerCheck = 0 --Timer for checking if is ped shooting
Config.ProbabilityOfTriggetAlert = 100 -- Percent
Config.HashToCheck = GetHashKey('WEAPON_UNARMED') --Hash of the fist

Config.CityCoordinates = {
    ['southCity'] = {x1 = -2322, y1 = 730, z1 = -200, x2 = 2304, y2 = -3651, z2 = 600},
    ['northCity'] = {x1 = -1080, y1 = 7186, z1 = -200, x2 = 264, y2 = 5482, z2 = 600},
    ['trevorCity'] = {x1 = 242, y1 = 3895, z1 = -200, x2 = 2225, y2 = 3516, z2 = 600},
}
