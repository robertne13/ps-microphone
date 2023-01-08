Config = {}

Config.Showzone = false

Config.MicrophoneZones = {
    
    [1] = {
        name = "vinewood_bowl", 
        coords = vector3(683.37, 569.31, 130.46),
        length = 3.4,
        width = 3.6,
        spawnProp = true, -- if set to true, it will let you spawn the prop at location
        data = {
            debugPoly = Config.Showzone,
            heading = 340,
            minZ = 127.86,
            maxZ = 131.86,
            range = 250.0 -- range for the voice
        }
    },

    [2] = {
        name = "PoliciaNacional", 
        coords = vector3(475.0109, -997.2214, 36.3391),
        length = 1.5,
        width = 1.5,
        spawnProp = false, -- if set to true, it will let you spawn the prop at location
        data = {
            debugPoly = Config.Showzone,
            heading = 7.7244,
            minZ = 35.3391,
            maxZ = 37.3391,
            range = 150.0 -- range for the voice

        }
    },

    [3] = {
        name = "Bahamadj", 
        coords = vector3(-1387.6877, -606.4934, 31.5184),
        length = 1.5,
        width = 1.5,
        spawnProp = false, -- if set to true, it will let you spawn the prop at location
        data = {
            debugPoly = Config.Showzone,
            heading = 301.6740,
            minZ = 29.3391,
            maxZ = 33.3391,
            range = 250.0 -- range for the voice

        }
    }
}
