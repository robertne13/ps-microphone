![image](https://user-images.githubusercontent.com/82112471/191800203-0563a725-4b6a-4caf-9d3b-29239960b0d6.png)
[EDIT]
REAL CREATOR:
https://github.com/Project-Sloth/ps-microphone
Modified to use ox_lib instead ps-zone script

# ps-microphone
Script to enhance as a microphone/loudspeaker when an user enters a define zoned. 

# Installation

## For Microphone

* Download file and make sure it's named ps-microphone
* Ensure ps-microphone 

* Add image to your inventory folder for the megaphone.
* Add to qb-core > shared > items.lua
```
	["megaphone"]						= {["name"] = "megaphone",			["label"] = "Megaphone",		["weight"] = 20000,	["type"] = "item",	["image"] = "megaphone.png",	["unique"] = true,	["useable"] = true,	["shouldClose"] = false,	["combinable"] = nil,	   ["description"] = "A loudspeaker to yell at civilians."},
```

## For Zones
- Add more zones under the Config.MicrophoneZones

```lua
Config.MicrophoneZones = {
    [1] = {
        name = "vinewood_bowl", -- unique name of the zone
        coords = vector3(683.37, 569.31, 130.46), -- coords of the created boxzone
        length = 3.4, -- length of the created boxzone
        width = 3.6, -- width of the created boxzone
        spawnProp = true, -- if set to true, it will let you spawn the prop at location
        data = {
            debugPoly = Config.Showzone, 
            heading = 340, -- heading from created boxzone
            minZ = 127.86, --minZ from the created boxzone
            maxZ = 131.86, -- maxZ from the created boxzone
            range = 50.0 -- range for the voice at that particular boxzone

        }
    }
}
```

# Dependecies
* Latest [pma-voice](https://github.com/AvarianKnight/pma-voice) 
* [ox_lib](https://github.com/overextended/ox_lib)

# Credits 
* [ProjectSloth] (https://github.com/Project-Sloth)
* [Snipe](https://github.com/pushkart2)
* [Devyn](https://github.com/darktrovx)
* [not jay](https://github.com/jay-fivem)
