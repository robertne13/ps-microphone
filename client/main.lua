local oldProximity = 0.0

local prop = "v_ilev_fos_mic"

function string.starts(String,Start)    
    return string.sub(String,1,string.len(Start))==Start 
end
CreateThread(function()
    for k, v in pairs(Config.MicrophoneZones) do
        -- exports["ps-zones"]:CreateBoxZone("microphone_"..v.name, v.coords, v.length, v.width, v.data)
        local box = lib.zones.box({
            coords = v.coords,
            size = vec3(v.length, v.length, v.length),
            rotation = 45,
            debug = false,
            inside = insideZone,
            onEnter = onEnter,
            onExit = onExit
        })
    end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(7)
        inRange = false
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        for k,v in ipairs(Config.MicrophoneZones) do
            if v.spawnProp then
                local dist = #(pos - v.coords)
                if dist <= 150.0 then
                    if v.obj == nil then
                        local obj = CreateObject(GetHashKey(prop), vector3(v.coords.x, v.coords.y, v.coords.z - 1.0), false)
                        if v.data.heading ~= nil then
                            SetEntityHeading(obj, v.heading)
                        end
                        FreezeEntityPosition(obj, true)
                        v.obj = obj
                    end
                else
                    if v.obj then
                        DeleteEntity(v.obj)
                        v.obj = nil
                    end
                end
            end
        end

		if not inRange then
			Citizen.Wait(500)
		end
	end
end)

function onEnter(self)
    print('entro')
    local playerped = PlayerPedId()
    local pos = GetEntityCoords(playerped)
    local range = 20
    for k, v in pairs(Config.MicrophoneZones) do
        local distance = GetDistanceBetweenCoords(pos, v.coords, true)
        if distance < 25 then 
           range = v.data.range
        end
    end
    oldProximity =  LocalPlayer.state['proximity'].distance
    exports["pma-voice"]:overrideProximityRange(range, true)
end

function onExit(self)
    print('salgo')
    exports["pma-voice"]:clearProximityOverride()
end


-- RegisterNetEvent("ps-zones:enter", function(ZoneName, ZoneData)
--     if string.starts(ZoneName, "microphone_") then

--     end
-- end)

-- RegisterNetEvent("ps-zones:leave", function(ZoneName, ZoneData)
--     if string.starts(ZoneName, "microphone_") then
       
--     end
-- end)

AddEventHandler('onResourceStop', function(resource)
	if (GetCurrentResourceName() ~= resource) then return end
    for k, v in pairs(Config.MicrophoneZones) do
        if v.obj then
            DeleteEntity(v.obj)
            v.obj = nil
        end
    end
end)