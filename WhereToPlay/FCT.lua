------------------------------------------------------------------------------------------
-- FCT file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- Initialize datas
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- function to update the lvl of the player --
------------------------------------------------------------------------------------------
function UpdateLvl()
	local curentLvl = Player:GetLevel();

	if(settings["playerLvl"]["value"] ~= curentLvl)then
		settings["playerLvl"]["value"] = curentLvl;
		WhereToPlay:SetVisible(false);
		CreateMainWindow();
		WhereToPlay:SetVisible(true);
	end
end
------------------------------------------------------------------------------------------
-- Position changed window
------------------------------------------------------------------------------------------
function PositionChangedWindow()
	------------------------------------------------------------------------------------------
	-- if the position changes, save the new window location
	------------------------------------------------------------------------------------------
	WhereToPlay.PositionChanged = function( sender, args )
    	local x,y = WhereToPlay:GetPosition();
    	settings["windowPosition"]["xPos"] = x;
    	settings["windowPosition"]["yPos"] = y;
	end
end
------------------------------------------------------------------------------------------
-- split strings function
------------------------------------------------------------------------------------------
function Split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end
------------------------------------------------------------------------------------------
-- event handling
------------------------------------------------------------------------------------------
function EscapeKeyHandler()
	WhereToPlay.KeyDown=function(sender, args)
		if ( args.Action == Turbine.UI.Lotro.Action.Escape ) then
			if(settings["escEnable"]["escEnable"] == true) then
				WhereToPlay:SetVisible(false);
				settings["isWindowVisible"]["isWindowVisible"] = false;
			end
		end
	
		-- https://www.lotro.com/forums/showthread.php?493466-How-to-hide-a-window-on-F12&p=6581962#post6581962
		if ( args.Action == 268435635 ) then
			hudVisible=not hudVisible;
			if hudVisible then
				WhereToPlay:SetVisible(false);
				MainMinimizedIcon:SetVisible(false);
			else
				WhereToPlay:SetVisible(settings["isWindowVisible"]["isWindowVisible"]);
				MainMinimizedIcon:SetVisible(true);
			end
		end
	end
end
------------------------------------------------------------------------------------------
-- Closing window handler
------------------------------------------------------------------------------------------
function ClosingTheWindow()
	function WhereToPlay:Closing(sender, args)
		settings["isWindowVisible"]["isWindowVisible"] = false;
	end
end
function ClosingTheWindowOptions()
	function OptionsWindow:Closing(sender, args)
		settings["isOptionsWindowVisible"]["isOptionsWindowVisible"] = false;
	end
end
function CloseInstanceWindow()
	InstanceWindow:SetVisible(false);
    settings["isInstanceWindowVisible"]["value"] = false;
end
function CloseFarmWindow()
    FarmWindow:SetVisible(false);
    settings["isFarmWindowVisible"]["value"] = false;
end
------------------------------------------------------------------------------------------
-- Closing window handler
------------------------------------------------------------------------------------------
function commandsHelp()
	notification(
		rgb["start"] .. 
		Strings.PluginHelp1 ..
		rgb["clear"] ..
		Strings.PluginHelp2 ..
		Strings.PluginHelp3 ..
		Strings.PluginHelp4 ..
		Strings.PluginHelp5 ..
		Strings.PluginHelp6 ..
		Strings.PluginHelp7 ..
		Strings.PluginHelp8 ..
		Strings.PluginHelp9 ..
		Strings.PluginHelp10 ..
		Strings.PluginHelp11 ..
		Strings.PluginHelp12
	);
end
------------------------------------------------------------------------------------------
-- returning the value of the level
------------------------------------------------------------------------------------------
function ReturnValueLevel(i)
	local lvlNeeded = {};
	local lvlNeeded2 = {};
	local val1 = "";
	local val2 = "";

	lvlNeeded = Split(ZonesNamesAndLevel["zones" .. i].lvl, "-");

	val1 = string.gsub(tostring(lvlNeeded[1]), "%s+", "");
	if(lvlNeeded[2] ~= nil)then
		val2 = string.gsub(tostring(lvlNeeded[2]), "%s+", "");
	end

	if(val2 == "")then
		val2 = val1;
	else
		lvlNeeded2 = Split(val2, ",");
		val2 = lvlNeeded2[1];
	end

	lvlNeeded[1] = val1;
	lvlNeeded[2] = val2;
	return lvlNeeded;
end
------------------------------------------------------------------------------------------
-- display the race of the players
------------------------------------------------------------------------------------------
function DisplayRace(windowWidth)
	centerLabelB5 = Turbine.UI.Label();
	centerLabelB5:SetParent(WhereToPlay);
	centerLabelB5:SetPosition( windowWidth/2, 35 );
	centerLabelB5:SetSize( 32, 32  );

	if(PlayerRace == 81)then
		centerLabelB5:SetBackground(0x4110894A);
	end
	if(PlayerRace == 23)then
		centerLabelB5:SetBackground(0x41108945);
	end
	if(PlayerRace == 65)then
		centerLabelB5:SetBackground(0x41108947);
	end
	if(PlayerRace == 114)then
		centerLabelB5:SetBackground(0x4115920D);
	end
	if(PlayerRace == 120)then
		centerLabelB5:SetBackground(0x411DAE7E);
	end
	if(PlayerRace == 73)then
		centerLabelB5:SetBackground(0x41108946);
	end
	if(PlayerRace == 117)then
		centerLabelB5:SetBackground(0x411C8D6B);
	end
	if(PlayerRace == 125)then --hobbit des rivieres
		centerLabelB5:SetBackground(0x4110894A);
	end
	centerLabelB5:SetBlendMode(Turbine.UI.BlendMode.Overlay);
end
------------------------------------------------------------------------------------------
-- display the class of the players
------------------------------------------------------------------------------------------
function DisplayClass(windowWidth)
	centerLabelB6 = Turbine.UI.Control();
	centerLabelB6:SetParent(WhereToPlay);
	centerLabelB6:SetPosition( windowWidth/2 + 35, 35 );
	centerLabelB6:SetSize( 32, 32  );

	if(PlayerClass == 162)then
		centerLabelB6:SetBackground(0x410095C2);
		end
	if(PlayerClass == 31)then
		centerLabelB6:SetBackground(0x4110867A);
	end
	if(PlayerClass == 214)then
		centerLabelB6:SetBackground(0x41153604);
	end
	if(PlayerClass == 24)then
		centerLabelB6:SetBackground(0x410095C5);
	end
	if(PlayerClass == 193)then
		centerLabelB6:SetBackground(0x4110867B);
	end
	if(PlayerClass == 40)then
		centerLabelB6:SetBackground(0x410095BB);
	end
	if(PlayerClass == 185)then
		centerLabelB6:SetBackground(0x410095BF);
	end
	if(PlayerClass == 23)then
		centerLabelB6:SetBackground(0x410095B8);
	end
	if(PlayerClass == 172)then
		centerLabelB6:SetBackground(0x410095B5);
	end
	if(PlayerClass == 194)then
		centerLabelB6:SetBackground(0x41108673);
	end
	if(PlayerClass == 215)then
		centerLabelB6:SetBackground(0x4120fcd9);
	end
	if(PlayerClass == 216)then -- mariner
		centerLabelB6:SetBackground(0x4122f860);
	end
	centerLabelB6:SetBlendMode(Turbine.UI.BlendMode.Overlay);
end
------------------------------------------------------------------------------------------
-- display the separatoer and the title of the materials
------------------------------------------------------------------------------------------
function TitleDisplayer(windowToDisplay, posx, posy, textToDisplay, textColor, LineColor)
	windowToDisplay.Message=Turbine.UI.Label(); 
	windowToDisplay.Message:SetParent(windowToDisplay); 
	windowToDisplay.Message:SetSize(380, 30); 
	windowToDisplay.Message:SetPosition(windowToDisplay:GetWidth()/2 - 190, posy - 12); 
	windowToDisplay.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
	windowToDisplay.Message:SetFont(Turbine.UI.Lotro.Font.BookAntiqua24);
	windowToDisplay.Message:SetText( textToDisplay ); 
	windowToDisplay.Message:SetForeColor(textColor);

	windowToDisplay.Message=Turbine.UI.Label(); 
	windowToDisplay.Message:SetParent(windowToDisplay); 
	if(windowToDisplay == InstanceWindow)then
		sizex = 460;
	else
		sizex = 360;
	end
	windowToDisplay.Message:SetSize(sizex, 30); 
	windowToDisplay.Message:SetPosition(windowToDisplay:GetWidth()/2 - (sizex / 2), posy - 5); 
	windowToDisplay.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
	windowToDisplay.Message:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold22);
	windowToDisplay.Message:SetText("___________________________________________________________________________________"); 
	windowToDisplay.Message:SetForeColor(LineColor);
end
------------------------------------------------------------------------------------------
-- return table lenght
------------------------------------------------------------------------------------------
function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end
------------------------------------------------------------------------------------------
-- display the selected tier
------------------------------------------------------------------------------------------
-- !!!! to be modified when new zone is added !!!!
------------------------------------------------------------------------------------------
function ReturnTier(i)
	local val = 0;

	if(i == 1 or i == 2 or i == 3 or i == 4 or i == 5 or i == 6)then
		val = 1;
	elseif(i == 7 or i == 8 or i == 9 or i == 10 or i == 11 or i == 12)then
		val = 2;
	elseif(i == 13 or i == 14 or i == 15 or i == 16)then
		val = 3;
	elseif(i == 17 or i == 18 or i == 19)then
		val = 4;
	elseif(i == 20 or i == 21 or i == 22 or i == 23 or i == 24)then
		val = 5;
	elseif(i == 25 or i == 26 or i == 27 or i == 28 or i == 29 or i == 30 
	or i == 31 or i == 32 or i == 33 or i == 34 or i == 35 or i == 36 or i == 37 or i == 38)then
		val = 6;
	elseif(i == 39 or i == 40 or i == 41 or i == 42 or i == 43 or i == 44 
	or i == 45 or i == 46 or i == 47 or i == 48 or i == 49 or i == 50 or i == 51 or i == 52)then
		val = 7;
	elseif(i == 53 or i == 54 or i == 55 or i == 56 or i == 57 or i == 58 or i == 59)then
		val = 8;
	elseif(i == 60 or i == 61 or i == 62 or i == 63 or i == 64
	 or i == 65 or i == 66 or i == 67 or i == 69 or i == 70 or i == 72 or i == 73 or i == 74 or i == 75)then -- enlever or i == 71
		val = 9;
	elseif(i == 76 or i == 77 or i == 78 or i == 79 or i == 80
	 or i == 81 or i == 82 or i == 83 or i == 84 or i == 85 or i == 86 or i == 87 or i == 88
	  or i == 89 or i == 90 or i == 91 or i == 92 or i == 93 or i == 94)then
		val = 10;
	elseif(i == 71)then
		val = 101;
	elseif(i == 95 or i == 96 or i == 97 or i == 98 or i == 99 or i == 100 or i == 101 or i == 102 or i == 103)then
		val = 11;
	elseif(i == 104 or i == 105 or i == 106 or i == 107)then
		val = 12;
	elseif(i == 108 or i == 109 or i == 110 or i == 111 or i == 112)then
		val = 13;
	elseif(i == 113)then
		val = 131;
	elseif(i == 114 or i == 115 or i == 116)then -- enlever or i == 113
		val = 13;
	elseif(i == 117 or i == 118 or i == 119 or i == 120 or i == 121 or i == 122 or i == 123 or i == 124 or i == 125 or i == 126 or i == 127 )then
		val = 14;
	elseif(i == 128 or i == 129 or i == 130 or i == 131)then
		val = 15;
	end

	return val;
end
------------------------------------------------------------------------------------------
-- display the small label hover the little bac button of the tier
------------------------------------------------------------------------------------------
function DisplaySmallLabel(i, tier, posx, posy, whereToDisplay)
	
	local ButtonPlusVoc = {};
	local centerLabelBVoc = {};
	local texte = "";

	buttonDefineHouseLocationPersonalFaux = Turbine.UI.Control();
	buttonDefineHouseLocationPersonalFaux:SetParent( whereToDisplay );
	buttonDefineHouseLocationPersonalFaux:SetPosition(posx, posy);
	buttonDefineHouseLocationPersonalFaux:SetSize( 20, 20 );
	buttonDefineHouseLocationPersonalFaux:SetVisible(true);
	buttonDefineHouseLocationPersonalFaux:SetZOrder(19);

	ButtonPlusVoc[i] = Turbine.UI.Extensions.SimpleWindow();
	ButtonPlusVoc[i]:SetParent( whereToDisplay );
	ButtonPlusVoc[i]:SetPosition(posx + 30 , posy - 20);
	ButtonPlusVoc[i]:SetSize( 180, 30 );
	ButtonPlusVoc[i]:SetVisible(false);
	ButtonPlusVoc[i]:SetZOrder(100);
	ButtonPlusVoc[i]:SetBackground(ResourcePath .. "/Cadre_180_30.tga");

	centerLabelBVoc[i] = Turbine.UI.Label();
	centerLabelBVoc[i]:SetParent(ButtonPlusVoc[i]);
	centerLabelBVoc[i]:SetPosition( 2, 2 );
	centerLabelBVoc[i]:SetSize( 176, 26  );
	centerLabelBVoc[i]:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold19);
	if(tier == 1)then
		texte = Strings.PluginProfTier1;
	elseif(tier == 2)then
		texte = Strings.PluginProfTier2;
	elseif(tier == 3)then
		texte = Strings.PluginProfTier3;
	elseif(tier == 4)then
		texte = Strings.PluginProfTier4;
	elseif(tier == 5)then
		texte = Strings.PluginProfTier5;
	elseif(tier == 6)then
		texte = Strings.PluginProfTier6;
	elseif(tier == 7)then
		texte = Strings.PluginProfTier7;
	elseif(tier == 8)then
		texte = Strings.PluginProfTier8;
	elseif(tier == 9)then
		texte = Strings.PluginProfTier9;
	elseif(tier == 10)then
		texte = Strings.PluginProfTier10;
	elseif(tier == 11)then
		texte = Strings.PluginProfTier11;
	elseif(tier == 12)then
		texte = Strings.PluginProfTier12;
	elseif(tier == 13)then
		texte = Strings.PluginProfTier13;
	elseif(tier == 14)then
		texte = Strings.PluginProfTier14;
	elseif(tier == 15)then
		texte = Strings.PluginProfTier15;
	end
	centerLabelBVoc[i]:SetText( "T" .. tier .. " - " .. texte );
	centerLabelBVoc[i]:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabelBVoc[i]:SetZOrder(101);
	centerLabelBVoc[i]:SetForeColor(Turbine.UI.Color.Gold);
	centerLabelBVoc[i]:SetBackColor( Turbine.UI.Color( .9, .1, .4, .9) );

	buttonDefineHouseLocationPersonalFaux.MouseEnter = function()
		ButtonPlusVoc[i]:SetVisible(true);
	end

	buttonDefineHouseLocationPersonalFaux.MouseLeave = function()
		ButtonPlusVoc[i]:SetVisible(false);
	end

	if(settings["verbose"]["value"] == true)then
		-- open the window of the farm place location
		if(i <= NbrEntries)then
			buttonDefineHouseLocationPersonalFaux.MouseClick = function()
				--Turbine.Shell.WriteLine("Click Numero " .. tostring(i));
				if(settings["isFarmWindowVisible"]["value"] == true)then
					FarmWindow:SetVisible(false);
				end
				CreateFarmWindow(i);
				FarmWindow:SetVisible(true);
			end
		end
	end
end
------------------------------------------------------------------------------------------
--function to define the label for the instance
------------------------------------------------------------------------------------------
function DisplaySmallLabelForInstanse(i, posx, posy, whereToDisplay)

	buttonDefineHouseLocationPersonalFaux = Turbine.UI.Control();
	buttonDefineHouseLocationPersonalFaux:SetParent( whereToDisplay );
	buttonDefineHouseLocationPersonalFaux:SetPosition(posx, posy);
	buttonDefineHouseLocationPersonalFaux:SetSize( 20, 20 );
	buttonDefineHouseLocationPersonalFaux:SetVisible(true);
	buttonDefineHouseLocationPersonalFaux:SetZOrder(21);

	if(settings["displayInstances"]["value"] == true)then
		-- open the window of the instances location
		if(i <= NbrEntries)then
			buttonDefineHouseLocationPersonalFaux.MouseClick = function()
				if(settings["isInstanceWindowVisible"]["value"] == true)then
					InstanceWindow:SetVisible(false);
				end
				CreateInstanceWindow(i);
				InstanceWindow:SetVisible(true);
			end
		end
	end
end
------------------------------------------------------------------------------------------
--function to display the infos window --
------------------------------------------------------------------------------------------
function DisplayInfosWindow(posx, posy)
	ButtonInfos = Turbine.UI.Extensions.SimpleWindow();
	ButtonInfos:SetParent( WhereToPlay );
	ButtonInfos:SetPosition(posx, posy);
	ButtonInfos:SetSize( 150, 20 );
	ButtonInfos:SetVisible(true);
	--ButtonInfos:SetBackground(ResourcePath .. "Help.tga");
	ButtonInfos:SetZOrder(2000);

	--ButtonInfos:SetBackColor(Turbine.UI.Color.Lime);

	CreateInfosWindow();

	ButtonInfos.MouseEnter = function()
		InfosWindow:SetVisible(true);
	end

	ButtonInfos.MouseLeave = function()
		InfosWindow:SetVisible(false);
	end
end