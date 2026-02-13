------------------------------------------------------------------------------------------
-- UI file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- Initialize datas
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- create the main window
------------------------------------------------------------------------------------------
function CreateMainWindow()
	local windowWidth = 500;
	local heightWind = 500;

	WhereToPlay=Turbine.UI.Lotro.GoldWindow(); 
	WhereToPlay:SetSize(windowWidth, heightWind); 
	WhereToPlay:SetText(Strings.PluginName); 
	WhereToPlay.Message11=Turbine.UI.Label(); 
	WhereToPlay.Message11:SetParent(WhereToPlay); 
	WhereToPlay.Message11:SetSize(150,10); 
	WhereToPlay.Message11:SetPosition(WhereToPlay:GetWidth()/2 - 75, WhereToPlay:GetHeight() - 18); 
	WhereToPlay.Message11:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
	WhereToPlay.Message11:SetText(Strings.PluginText); 
	WhereToPlay:SetZOrder(1);
	WhereToPlay:SetMouseVisible(true);
	WhereToPlay:SetWantsKeyEvents(true);
	WhereToPlay:SetWantsUpdates(true);

	WhereToPlay:SetPosition(settings["windowPosition"]["xPos"], settings["windowPosition"]["yPos"]);
	
	listbox = Turbine.UI.ListBox();
    listbox:SetParent( WhereToPlay );
    --listbox:SetBackColor( Turbine.UI.Color.Red );
	listbox:SetSize(windowWidth - 45, 400);
	listbox:SetPosition(20, 70);
	listbox:IsMouseVisible(true);
	listbox:SetZOrder(10);


	WhereToPlayerDatas=Turbine.UI.Label(); 
	WhereToPlayerDatas:SetParent(WhereToPlay); 
	WhereToPlayerDatas:SetSize(200,20); 
	WhereToPlayerDatas:SetPosition(10, 40); 
	WhereToPlayerDatas:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleRight); 
	WhereToPlayerDatas:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold22);
	WhereToPlayerDatas:SetForeColor(Turbine.UI.Color.Lime);
	WhereToPlayerDatas:SetText(PlayerName); 

	DisplayRace(windowWidth);
	DisplayClass(windowWidth);

	WhereToPlayerDatas=Turbine.UI.Label(); 
	WhereToPlayerDatas:SetParent(WhereToPlay); 
	WhereToPlayerDatas:SetSize(50,20); 
	WhereToPlayerDatas:SetPosition(windowWidth/2 + 90, 40); 
	WhereToPlayerDatas:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleRight); 
	WhereToPlayerDatas:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold22);
	WhereToPlayerDatas:SetForeColor(Turbine.UI.Color.White);
	WhereToPlayerDatas:SetText("lvl");

	WhereToPlayerDatas=Turbine.UI.Label(); 
	WhereToPlayerDatas:SetParent(WhereToPlay); 
	WhereToPlayerDatas:SetSize(50,20); 
	WhereToPlayerDatas:SetPosition(windowWidth/2 + 150, 40); 
	WhereToPlayerDatas:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft); 
	WhereToPlayerDatas:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold24);
	WhereToPlayerDatas:SetForeColor(Turbine.UI.Color.Gold);
	WhereToPlayerDatas:SetText(settings["playerLvl"]["value"]); 

	------------------------------------------------------------------------------------------
	-- box bleu fond
	------------------------------------------------------------------------------------------
	WhereToPlayerDatas=Turbine.UI.Label(); 
	WhereToPlayerDatas:SetParent(WhereToPlay); 
	WhereToPlayerDatas:SetSize(430,36); 
	WhereToPlayerDatas:SetPosition(25, 32); 
	WhereToPlayerDatas:SetText(""); 
	WhereToPlayerDatas:SetBackColor(Turbine.UI.Color(1, .2, .5, .75));
	WhereToPlayerDatas:SetZOrder(-2);
	------------------------------------------------------------------------------------------
	-- box bleu cover black
	------------------------------------------------------------------------------------------
	WhereToPlayerDatas=Turbine.UI.Label(); 
	WhereToPlayerDatas:SetParent(WhereToPlay); 
	WhereToPlayerDatas:SetSize(428,34); 
	WhereToPlayerDatas:SetPosition(26, 33); 
	WhereToPlayerDatas:SetText(""); 
	WhereToPlayerDatas:SetBackColor(Turbine.UI.Color.Black);
	WhereToPlayerDatas:SetZOrder(-1);

	------------------------------------------------------------------------------------------
	-- debug purpose
	--settings["playerLvl"]["value"] = 23;
	------------------------------------------------------------------------------------------
	local valLvl = {};
	local WhereToPlayZoneName = {};
	local WhereToPlayFarmPlace = {};
	local WhereToPlayFarmPlaceTier = {};
	local WhereToPlayInstancePlace = {};
	local posx = 10;
	local posy = 5;

	for i=1, NbrEntries do

		listItem = Turbine.UI.Control();
        listItem:SetSize( 460, 25 );
		listItem:SetMouseVisible(true);


		WhereToPlayZoneName[i]=Turbine.UI.Label(); 
		WhereToPlayZoneName[i]:SetParent(listItem); 
		WhereToPlayZoneName[i]:SetSize(318,20); 
		WhereToPlayZoneName[i]:SetPosition(posx, posy); 
		WhereToPlayZoneName[i]:SetTextAlignment(Turbine.UI.ContentAlignment.Middleleft); 
		WhereToPlayZoneName[i]:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold19);

		if(ZonesNamesAndLevel["zones" .. i].souCat == false)then
			WhereToPlayZoneName[i]:SetText(ZonesNamesAndLevel["zones" .. i].texte); 
		else
			WhereToPlayZoneName[i]:SetText("    " .. ZonesNamesAndLevel["zones" .. i].texte); 
		end

		if(settings["verbose"]["value"] == true)then
			if(i <= NbrEntries)then 
				WhereToPlayFarmPlaceTier[i]=Turbine.UI.Label(); 
				WhereToPlayFarmPlaceTier[i]:SetParent(listItem); 
				WhereToPlayFarmPlaceTier[i]:SetSize(40,20); 
				WhereToPlayFarmPlaceTier[i]:SetPosition(288, posy + 1);
				local tier = ReturnTier(i);
				if(tier == 101)then
					tier = 10;
				elseif(tier == 131)then
					tier = 13;
				end
				WhereToPlayFarmPlaceTier[i]:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold18);
				WhereToPlayFarmPlaceTier[i]:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleRight); 
				WhereToPlayFarmPlaceTier[i]:SetForeColor(Turbine.UI.Color.Red);
				if(tier < 10)then
					WhereToPlayFarmPlaceTier[i]:SetText(tier .. "  ");  
				else
					WhereToPlayFarmPlaceTier[i]:SetText(tier .. " ");  
				end
				WhereToPlayFarmPlaceTier[i]:SetBlendMode(Turbine.UI.BlendMode.Overlay);
				WhereToPlayFarmPlaceTier[i]:SetZOrder(2);

				WhereToPlayFarmPlace[i]=Turbine.UI.Label(); 
				WhereToPlayFarmPlace[i]:SetParent(listItem); 
				WhereToPlayFarmPlace[i]:SetSize(20,20); 
				WhereToPlayFarmPlace[i]:SetPosition(308, posy); 
				WhereToPlayFarmPlace[i]:SetText(""); 
				WhereToPlayFarmPlace[i]:SetBackground(0x4114B0F0); 
				WhereToPlayFarmPlace[i]:SetBlendMode(Turbine.UI.BlendMode.Overlay);

				DisplaySmallLabel(i, tier, 308, posy, listItem);
			end
		end

		if(settings["displayInstances"]["value"] == true)then
			if(i > 2 and i ~= 4)then
				local posxButton = 0;
				WhereToPlayInstancePlace[i]=Turbine.UI.Label(); 
				WhereToPlayInstancePlace[i]:SetParent(listItem); 
				WhereToPlayInstancePlace[i]:SetSize(20,20); 
				if(settings["verbose"]["value"] == true)then
					posxButton = 278;
				else
					posxButton = 308;
				end
				WhereToPlayInstancePlace[i]:SetPosition(posxButton, posy); 
				WhereToPlayInstancePlace[i]:SetText(""); 
				WhereToPlayInstancePlace[i]:SetBackground(ResourcePath .. "/Instances.tga"); 
				WhereToPlayInstancePlace[i]:SetBlendMode(Turbine.UI.BlendMode.Overlay);

				DisplaySmallLabelForInstanse(i, posxButton, posy, listItem);
			end
		end

		------------------------------------------------------------------------------------------
		-- change the color if the player has the level of the zone to display
		------------------------------------------------------------------------------------------
		valLvl = ReturnValueLevel(i);

		if(settings["playerLvl"]["value"] >= tonumber(valLvl[1]) and settings["playerLvl"]["value"] <= tonumber(valLvl[2]))then
			WhereToPlayZoneName[i]:SetBackColor(Turbine.UI.Color( .9, .5, .7, .5));
			WhereToPlayZoneName[i]:SetForeColor(Turbine.UI.Color.Black);
		else
			WhereToPlayZoneName[i]:SetBackColor(Turbine.UI.Color.Black);
			WhereToPlayZoneName[i]:SetForeColor(Turbine.UI.Color.White);
		end
		WhereToPlayZoneName[i]:SetMouseVisible(true);

		------------------------------------------------------------------------------------------
		-- open the window of the map location
		------------------------------------------------------------------------------------------
		WhereToPlayZoneName[i].MouseClick = function()
			--Turbine.Shell.WriteLine("Click Numero " .. tostring(i));
			if(settings["isMapWindowVisible"]["value"] == true)then
				MapWindow:SetVisible(false);
			end
			CreateMapWindow(i);
			MapWindow:SetVisible(true);
		end

		WhereToPlayZoneLvl=Turbine.UI.Label(); 
		WhereToPlayZoneLvl:SetParent(listItem); 
		WhereToPlayZoneLvl:SetSize(100,20); 
		WhereToPlayZoneLvl:SetPosition(posx + 328, posy); 
		WhereToPlayZoneLvl:SetTextAlignment(Turbine.UI.ContentAlignment.Middleleft); 
		WhereToPlayZoneLvl:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold19);
		WhereToPlayZoneLvl:SetForeColor(Turbine.UI.Color.Gold);
		WhereToPlayZoneLvl:SetText("lvl    " .. ZonesNamesAndLevel["zones" .. i].lvl); 

		if(settings["playerLvl"]["value"] >= tonumber(valLvl[1]) and settings["playerLvl"]["value"] <= tonumber(valLvl[2]))then
			WhereToPlayZoneLvl:SetForeColor(Turbine.UI.Color.Lime);
		else
			WhereToPlayZoneLvl:SetForeColor(Turbine.UI.Color.Gold);
		end

		listbox:AddItem( listItem );

	end


	vscrollListBox=Turbine.UI.Lotro.ScrollBar();
	vscrollListBox:SetParent(WhereToPlay);
	vscrollListBox:SetOrientation(Turbine.UI.Orientation.Vertical);
	vscrollListBox:SetPosition(windowWidth-20, 70);
	vscrollListBox:SetSize(10, 400); -- set width to 12 since it's a "Lotro" style scrollbar and the height is set to match the control that we will be scrolling
	vscrollListBox:SetBackColor(Turbine.UI.Color(.1,.1,.2)); -- just to give it a little style
	vscrollListBox:SetMinimum(0);
	vscrollListBox:SetMaximum( (NbrEntries * 25) - 400); -- we will allow scrolling the height of the map-the viewport height
	vscrollListBox:SetValue(0); -- set the initial value
	------------------------------------------------------------------------------------------
	-- set the ValueChanged event handler to take an action when our value changes, in this case, change the map position relative to the viewport
	------------------------------------------------------------------------------------------
	vscrollListBox.ValueChanged=function()
		listbox:SetTop(0-vscrollListBox:GetValue());
	end

	listbox:SetVerticalScrollBar(vscrollListBox);

	EscapeKeyHandler();
	PositionChangedWindow();
	ClosingTheWindow();
	UpdateChecker();

	------------------------------------------------------------------------------------------
	-- Display the info window on mouse over my name
	------------------------------------------------------------------------------------------
	DisplayInfosWindow(WhereToPlay:GetWidth()/2 - 75, WhereToPlay:GetHeight() - 18);
end

------------------------------------------------------------------------------------------
-- Update checker
------------------------------------------------------------------------------------------
function UpdateChecker()
	WhereToPlay.Update = function()
		if(valCheck <= 0)then
			valCheck = 100;
			UpdateLvl();
		else
			valCheck = valCheck - 1;
		end
	end
end