------------------------------------------------------------------------------------------
-- LoadAndSave file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- create or load the settings
------------------------------------------------------------------------------------------
function LoadSettings()
	local _settings = PatchDataLoad(Turbine.DataScope.Character, "WhereToPlay_Settings", settings);
    if (_settings ~= nil) then 
		settings = _settings; 
	end
------------------------------------------------------------------------------------------
--- adding new vars in the settings file ---
------------------------------------------------------------------------------------------
    if ( not settings.isFarmWindowVisible or
    not settings.displayInstances or
    not settings.isInstanceWindowVisible or
    not settings.playerLvl or
    not settings.altEnable) then
		settings = {
            windowPosition = { 
                xPos = settings["windowPosition"]["xPos"], 
                yPos = settings["windowPosition"]["yPos"] 
            },
            IconPosition = { 
                xPosIcon = settings["IconPosition"]["xPosIcon"] , 
                yPosIcon = settings["IconPosition"]["yPosIcon"]  
            },
            isMinimizeEnabled = { 
                isMinimizeEnabled = settings["isMinimizeEnabled"]["isMinimizeEnabled"] 
            },
            isWindowVisible = { 
                isWindowVisible = true 
            },
            isOptionsWindowVisible = { 
                isOptionsWindowVisible = false 
            },
            isMapWindowVisible = { 
                value = false 
            },
            isFarmWindowVisible = { 
                value = false 
            },
            isInstanceWindowVisible = { 
                value = false 
            },
            displayInstances = { 
                value = false 
            },
            verbose = { 
                value = settings["verbose"]["value"] 
            },
            escEnable = { 
                escEnable = settings["escEnable"]["escEnable"] 
            },
            altEnable = { 
                altEnable = true 
            },
            playerLvl = { 
                value = 0 
            }
        };
	end
end
------------------------------------------------------------------------------------------
-- create the save settings
------------------------------------------------------------------------------------------
function SaveSettings()
	settings["windowPosition"]["xPos"] = tostring(WhereToPlay:GetLeft());
    settings["windowPosition"]["yPos"] = tostring(WhereToPlay:GetTop());
    settings["IconPosition"]["xPosIcon"] = tostring(MainMinimizedIcon:GetLeft());
   	settings["IconPosition"]["yPosIcon"] = tostring(MainMinimizedIcon:GetTop());
	settings["isMinimizeEnabled"]["isMinimizeEnabled"] = settings["isMinimizeEnabled"]["isMinimizeEnabled"];
	settings["isWindowVisible"]["isWindowVisible"] = settings["isWindowVisible"]["isWindowVisible"];
    settings["isOptionsWindowVisible"]["isOptionsWindowVisible"] = settings["isOptionsWindowVisible"]["isOptionsWindowVisible"];
	settings["isMapWindowVisible"]["value"] = settings["isMapWindowVisible"]["value"];
	settings["isFarmWindowVisible"]["value"] = settings["isFarmWindowVisible"]["value"];
    settings["isInstanceWindowVisible"]["value"] = settings["isInstanceWindowVisible"]["value"];
    settings["isInstanceWindowVisible"]["value"] = settings["isInstanceWindowVisible"]["value"];
    settings["verbose"]["value"] = settings["verbose"]["value"];
    settings["escEnable"]["escEnable"] = settings["escEnable"]["escEnable"];
    settings["altEnable"]["altEnable"] = settings["altEnable"]["altEnable"];
    settings["displayInstances"]["value"] = settings["displayInstances"]["value"];
    settings["playerLvl"]["value"] = settings["playerLvl"]["value"];

	PatchDataSave( Turbine.DataScope.Character, "WhereToPlay_Settings", settings);
end