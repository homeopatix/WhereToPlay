------------------------------------------------------------------------------------------
-- Init file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- Plugin's name --
------------------------------------------------------------------------------------------
pluginName = "WhereToPlay";
------------------------------------------------------------------------------------------
-- File names --
------------------------------------------------------------------------------------------
settingsFileName = "WhereToPlay_Settings";
------------------------------------------------------------------------------------------
-- Default settings --
------------------------------------------------------------------------------------------
settings = {
    windowPosition = { 
        xPos = 500, 
        yPos = 500 
    },
    IconPosition = { 
        xPosIcon = 500, 
        yPosIcon = 500 
    },
    isMinimizeEnabled = { 
        isMinimizeEnabled = false 
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
    verbose = { 
        value = false 
    },
    displayInstances = { 
        value = false 
    },
    escEnable = { 
        escEnable = true 
    },
    altEnable = { 
        altEnable = true 
    },
    playerLvl = { 
        value = 0 
    }
};
------------------------------------------------------------------------------------------
-- Resources settings --
------------------------------------------------------------------------------------------
ResourcePath = "Homeopatix/WhereToPlay/Resources/";

Images = {
	MinimizedIcon = ResourcePath .. "WhereToPlay.tga",
};
------------------------------------------------------------------------------------------
-- RGB color codes --
------------------------------------------------------------------------------------------
rgb = {
    start = "<rgb=#DAA520>",
    gold = "<rgb=#FFD700>",
    orange = "<rgb=#EE8F12>",
    white = "<rgb=#FFFFFF>",
    green = "<rgb=#1FE126>",
    blue = "<rgb=#1FCDE1>",
    purple = "<rgb=#9B41CE>",
    yellow = "<rgb=#FFFF00>",
    grey = "<rgb=#C7C7BE>",
    red = "<rgb=#FF0000>",
    error = "<rgb=#FF0000>",
    clear = "</rgb>"
};
------------------------------------------------------------------------------------------
-- Load settings --
------------------------------------------------------------------------------------------
LoadSettings();