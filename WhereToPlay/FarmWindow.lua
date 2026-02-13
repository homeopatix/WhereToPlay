------------------------------------------------------------------------------------------
-- FarmWindow file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
local ButtonPlusStats = {};
local centerLabelStats = {};
------------------------------------------------------------------------------------------
-- create the window
------------------------------------------------------------------------------------------
function CreateFarmWindow(i)
    width = 400;
    height = 770;

	tier = ReturnTier(i);

    windowWidth, windowHeight = Turbine.UI.Display:GetSize();

    FarmWindow=Turbine.UI.Lotro.GoldWindow(); 
    FarmWindow:SetSize(windowWidth, windowHeight); 
    FarmWindow:SetPosition(windowWidth / 2 - width / 2, (windowHeight / 2 - height / 2) - 20);
    FarmWindow:SetSize(width, height);
    FarmWindow:SetBlendMode(Turbine.UI.BlendMode.Undefined);
    --FarmWindow:SetBackColor(Turbine.UI.Color(1, 0, 0, 0));
    FarmWindow:SetText(ZonesNamesAndLevel["zones" .. i].texte .. "    lvl : " .. ZonesNamesAndLevel["zones" .. i].lvl);
    FarmWindow:SetVisible(false);
    FarmWindow:SetWantsKeyEvents(true);

    local posx = 20;
    local posy = 40;

	WhereToPlayerDatas=Turbine.UI.Label(); 
	WhereToPlayerDatas:SetParent(FarmWindow); 
	WhereToPlayerDatas:SetSize(380,40); 
	WhereToPlayerDatas:SetPosition(FarmWindow:GetWidth()/2 - 190, posy); 
    WhereToPlayerDatas:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold24);
    WhereToPlayerDatas:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	------------------------------------------------------------------------------------------
	-- define the diferent title from tier
	------------------------------------------------------------------------------------------
	local title = ReturnTier(i);
	if(title == 101)then
		title = 10;
	elseif(title == 131)then
		title = 13;
	end
	if(title == 1)then
		WhereToPlayerDatas:SetText("Tier " .. title .. " - " .. Strings.PluginProfTier1);
	elseif(title == 2)then
		WhereToPlayerDatas:SetText("Tier " .. title .. " - " .. Strings.PluginProfTier2);
	elseif(title == 3)then
		WhereToPlayerDatas:SetText("Tier " .. title .. " - " .. Strings.PluginProfTier3);
	elseif(title == 4)then
		WhereToPlayerDatas:SetText("Tier " .. title .. " - " .. Strings.PluginProfTier4);
	elseif(title == 5)then
		WhereToPlayerDatas:SetText("Tier " .. title .. " - " .. Strings.PluginProfTier5);
	elseif(title == 6)then
		WhereToPlayerDatas:SetText("Tier " .. title .. " - " .. Strings.PluginProfTier6);
	elseif(title == 7)then
		WhereToPlayerDatas:SetText("Tier " .. title .. " - " .. Strings.PluginProfTier7);
	elseif(title == 8)then
		WhereToPlayerDatas:SetText("Tier " .. title .. " - " .. Strings.PluginProfTier8);
	elseif(title == 9)then
		WhereToPlayerDatas:SetText("Tier " .. title .. " - " .. Strings.PluginProfTier9);
	elseif(title == 10)then
		WhereToPlayerDatas:SetText("Tier " .. title .. " - " .. Strings.PluginProfTier10);
	elseif(title == 11)then
		WhereToPlayerDatas:SetText("Tier " .. title .. " - " .. Strings.PluginProfTier11);
	elseif(title == 12)then
		WhereToPlayerDatas:SetText("Tier " .. title .. " - " .. Strings.PluginProfTier12);
	elseif(title == 13)then
		WhereToPlayerDatas:SetText("Tier " .. title .. " - " .. Strings.PluginProfTier13);
	elseif(title == 14)then
		WhereToPlayerDatas:SetText("Tier " .. title .. " - " .. Strings.PluginProfTier14);
	elseif(title == 15)then
		WhereToPlayerDatas:SetText("Tier " .. title .. " - " .. Strings.PluginProfTier15);
	end
	 
    WhereToPlayerDatas:SetForeColor(Turbine.UI.Color.Gold);

	------------------------------------------------------------------------------------------
	-- define the differents color lines
	------------------------------------------------------------------------------------------
	posy = posy + 50;
	local colorUsedFortexte = Turbine.UI.Color.White;
	local colorUsedForLines1 = Turbine.UI.Color( 0, 0.66, 0.75); -- nice blue
	local colorUsedForLines2 = Turbine.UI.Color( 0.33, 0.66, 0.33 ); -- nice green
	local colorUsedForLines3 = Turbine.UI.Color( 0.5, 0.35, 0.1); -- brown
	local colorUsedForLines4 = Turbine.UI.Color( 0.7, 0.6, 0.2 ); -- rusted gold
	local colorUsedForLines5 = Turbine.UI.Color( 1, 0.7, 0 ); -- orange
	local colorUsedForLines6 = Turbine.UI.Color.Blue; -- rusted gold
	local colorUsedForLines7 = Turbine.UI.Color.Red; -- rusted gold
	------------------------------------------------------------------------------------------
	-- display the title of the materials
	------------------------------------------------------------------------------------------
	TitleDisplayer(FarmWindow, posx - 30, posy, Strings.PluginFarm1, colorUsedFortexte, colorUsedForLines1);
    DisplayIcones(1, i, posx, posy + 25, colorUsedForLines1);

    posy = posy + 70;

	TitleDisplayer(FarmWindow, posx - 30, posy, Strings.PluginFarm2, colorUsedFortexte, colorUsedForLines2);
    DisplayIcones(2, i, posx, posy + 25, colorUsedForLines2);

    posy = posy + 70;

	TitleDisplayer(FarmWindow, posx - 30, posy, Strings.PluginFarm3, colorUsedFortexte, colorUsedForLines3);
    DisplayIcones(3, i, posx, posy + 25, colorUsedForLines3);

    posy = posy + 70;

	TitleDisplayer(FarmWindow, posx - 30, posy, Strings.PluginFarm4, colorUsedFortexte, colorUsedForLines4);
    DisplayIcones(4, i, posx, posy + 25, colorUsedForLines4);

    posy = posy + 70;

	TitleDisplayer(FarmWindow, posx - 30, posy, Strings.PluginFarm5, colorUsedFortexte, colorUsedForLines5);
    DisplayIcones(5, i, posx, posy + 25, colorUsedForLines5);

    posy = posy + 70;


	TitleDisplayer(FarmWindow, posx - 30, posy + 6, Strings.PluginFarm6, colorUsedFortexte, colorUsedForLines6);
	posy = posy + 20;

	------------------------------------------------------------------------------------------
	-- box bleu fond
	------------------------------------------------------------------------------------------
	WhereToPlayerDatas=Turbine.UI.Label(); 
	WhereToPlayerDatas:SetParent(FarmWindow); 
	WhereToPlayerDatas:SetSize(360,46); 
	WhereToPlayerDatas:SetPosition(20, posy); 
	WhereToPlayerDatas:SetText(""); 
	WhereToPlayerDatas:SetBackColor(Turbine.UI.Color.Blue);
	WhereToPlayerDatas:SetZOrder(-2);
	------------------------------------------------------------------------------------------
	-- box bleu cover black
	------------------------------------------------------------------------------------------
	WhereToPlayerDatas=Turbine.UI.Label(); 
	WhereToPlayerDatas:SetParent(FarmWindow); 
	WhereToPlayerDatas:SetSize(358,44); 
	WhereToPlayerDatas:SetPosition(21, posy+1); 
	WhereToPlayerDatas:SetText(""); 
	WhereToPlayerDatas:SetBackColor(Turbine.UI.Color.Black);
	WhereToPlayerDatas:SetZOrder(-1);

	WhereToPlayerDatasNameObjects=Turbine.UI.Label(); 
	WhereToPlayerDatasNameObjects:SetParent(FarmWindow); 
	WhereToPlayerDatasNameObjects:SetSize(355,44); 
	WhereToPlayerDatasNameObjects:SetPosition(22, posy + 1); 
    WhereToPlayerDatasNameObjects:SetFont(Turbine.UI.Lotro.Font.BookAntiqua20);
    WhereToPlayerDatasNameObjects:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	WhereToPlayerDatasNameObjects:SetText(""); 
	------------------------------------------------------------------------------------------
	-- debug purpose
	--WhereToPlayerDatasNameObjects:SetBackColor(Turbine.UI.Color.Red); 
	------------------------------------------------------------------------------------------

	posy = posy + 60;

	TitleDisplayer(FarmWindow, posx - 30, posy + 6, Strings.PluginFarm7, colorUsedFortexte, colorUsedForLines7);
	posy = posy + 20;

	------------------------------------------------------------------------------------------
	-- box red fond
	------------------------------------------------------------------------------------------
	WhereToPlayerDatas=Turbine.UI.Label(); 
	WhereToPlayerDatas:SetParent(FarmWindow); 
	WhereToPlayerDatas:SetSize(360,176); 
	WhereToPlayerDatas:SetPosition(20, posy); 
	WhereToPlayerDatas:SetText(""); 
	WhereToPlayerDatas:SetBackColor(Turbine.UI.Color.Red);
	WhereToPlayerDatas:SetZOrder(-2);

	------------------------------------------------------------------------------------------
	-- box bleu cover black
	------------------------------------------------------------------------------------------
	WhereToPlayerDatas=Turbine.UI.Label(); 
	WhereToPlayerDatas:SetParent(FarmWindow); 
	WhereToPlayerDatas:SetSize(358,174); 
	WhereToPlayerDatas:SetPosition(21, posy+1); 
	WhereToPlayerDatas:SetText(""); 
	WhereToPlayerDatas:SetBackColor(Turbine.UI.Color.Black);
	WhereToPlayerDatas:SetZOrder(-1);

	WhereToPlayerDatasNameLocation=Turbine.UI.Label(); 
	WhereToPlayerDatasNameLocation:SetParent(FarmWindow); 
	WhereToPlayerDatasNameLocation:SetSize(355,174); 
	WhereToPlayerDatasNameLocation:SetPosition(22, posy + 1); 
    WhereToPlayerDatasNameLocation:SetFont(Turbine.UI.Lotro.Font.BookAntiqua18);
    WhereToPlayerDatasNameLocation:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	WhereToPlayerDatasNameLocation:SetText(""); 
	------------------------------------------------------------------------------------------
	-- debug purpose
	--WhereToPlayerDatasNameLocation:SetBackColor(Turbine.UI.Color.Red); 
	------------------------------------------------------------------------------------------

	------------------------------------------------------------------------------------------
	-- Button to close the window
	------------------------------------------------------------------------------------------
    buttonValider = Turbine.UI.Lotro.GoldButton();
	buttonValider:SetParent( FarmWindow );
	buttonValider:SetPosition(FarmWindow:GetWidth()/2 - 125, FarmWindow:GetHeight() - 35);
	buttonValider:SetSize( 300, 34 );
	buttonValider:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	buttonValider:SetText( Strings.PluginCloseButton );
	buttonValider:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	buttonValider:SetVisible(true);
	buttonValider:SetMouseVisible(true);
    buttonValider:SetZOrder(10);

    buttonValider.MouseClick = function(sender, args)
        CloseFarmWindow();
    end

    FarmWindow.KeyDown=function(sender, args)
		if ( args.Action == Turbine.UI.Lotro.Action.Escape ) then
			settings["isFarmWindowVisible"]["value"] = false;
			FarmWindow:SetVisible(false);
		end
	end

end
------------------------------------------------------------------------------------------
-- function to display all the icons of the materials per tier and zone
------------------------------------------------------------------------------------------
function DisplayIcones(val, tier,  posx, posy, textColor)
	local datas = {};
	local datasLocation = {};
	local nbrIcons = 0;
	local i = tier;

	tier = ReturnTier(i);

	if(tier == 1)then
		if(val == 1)then
			datas = datasArtifactTier1;
			datasLocation = datasArtifactLocationTier1;
		elseif(val == 2)then
			datas = datasOreTier1;
			datasLocation = datasOreLocationTier1;
		elseif(val == 3)then
			datas = datasWoodTier1;
			datasLocation = datasWoodLocationTier1;
		elseif(val == 4)then
			datas = datasHideTier1;
			datasLocation = datasHideLocationTier1;
		elseif(val == 5)then
			datas = datasRareTier1;
			datasLocation = datasRareLocationTier1;
		end
	elseif(tier == 2)then
		if(val == 1)then
			datas = datasArtifactTier2;
			datasLocation = datasArtifactLocationTier2;
		elseif(val == 2)then
			datas = datasOreTier2;
			datasLocation = datasOreLocationTier2;
		elseif(val == 3)then
			datas = datasWoodTier2;
			datasLocation = datasWoodLocationTier2;
		elseif(val == 4)then
			datas = datasHideTier2;
			datasLocation = datasHideLocationTier2;
		elseif(val == 5)then
			datas = datasRareTier2;
			datasLocation = datasRareLocationTier2;
		end
	elseif(tier == 3)then
		if(val == 1)then
			datas = datasArtifactTier3;
			datasLocation = datasArtifactLocationTier3;
		elseif(val == 2)then
			datas = datasOreTier3;
			datasLocation = datasOreLocationTier3;
		elseif(val == 3)then
			datas = datasWoodTier3;
			datasLocation = datasWoodLocationTier3;
		elseif(val == 4)then
			datas = datasHideTier3;
			datasLocation = datasHideLocationTier3;
		elseif(val == 5)then
			datas = datasRareTier3;
			datasLocation = datasRareLocationTier3;
		end
	elseif(tier == 4)then
		if(val == 1)then
			datas = datasArtifactTier4;
			datasLocation = datasArtifactLocationTier4;
		elseif(val == 2)then
			datas = datasOreTier4;
			datasLocation = datasOreLocationTier4;
		elseif(val == 3)then
			datas = datasWoodTier4;
			datasLocation = datasWoodLocationTier4;
		elseif(val == 4)then
			datas = datasHideTier4;
			datasLocation = datasHideLocationTier4;
		elseif(val == 5)then
			datas = datasRareTier4;
			datasLocation = datasRareLocationTier4;
		end
	elseif(tier == 5)then
		if(val == 1)then
			datas = datasArtifactTier5;
			datasLocation = datasArtifactLocationTier5;
		elseif(val == 2)then
			datas = datasOreTier5;
			datasLocation = datasOreLocationTier5;
		elseif(val == 3)then
			datas = datasWoodTier5;
			datasLocation = datasWoodLocationTier5;
		elseif(val == 4)then
			datas = datasHideTier5;
			datasLocation = datasHideLocationTier5;
		elseif(val == 5)then
			datas = datasRareTier5;
			datasLocation = datasRareLocationTier5;
		end
	elseif(tier == 6)then
		if(val == 1)then
			datas = datasArtifactTier6;
			datasLocation = datasArtifactLocationTier6;
		elseif(val == 2)then
			datas = datasOreTier6;
			datasLocation = datasOreLocationTier6;
		elseif(val == 3)then
			datas = datasWoodTier6;
			datasLocation = datasWoodLocationTier6;
		elseif(val == 4)then
			datas = datasHideTier6;
			datasLocation = datasHideLocationTier6;
		elseif(val == 5)then
			datas = datasRareTier6;
			datasLocation = datasRareLocationTier6;
		end
	elseif(tier == 7)then
		if(val == 1)then
			datas = datasArtifactTier7;
			datasLocation = datasArtifactLocationTier7;
		elseif(val == 2)then
			datas = datasOreTier7;
			datasLocation = datasOreLocationTier7;
		elseif(val == 3)then
			datas = datasWoodTier7;
			datasLocation = datasWoodLocationTier7;
		elseif(val == 4)then
			datas = datasHideTier7;
			datasLocation = datasHideLocationTier7;
		elseif(val == 5)then
			datas = datasRareTier7;
			datasLocation = datasRareLocationTier7;
		end
	elseif(tier == 8)then
		if(val == 1)then
			datas = datasArtifactTier8;
			datasLocation = datasArtifactLocationTier8;
		elseif(val == 2)then
			datas = datasOreTier8;
			datasLocation = datasOreLocationTier8;
		elseif(val == 3)then
			datas = datasWoodTier8;
			datasLocation = datasWoodLocationTier8;
		elseif(val == 4)then
			datas = datasHideTier8;
			datasLocation = datasHideLocationTier8;
		elseif(val == 5)then
			datas = datasRareTier8;
			datasLocation = datasRareLocationTier8;
		end
	elseif(tier == 9)then
		if(val == 1)then
			datas = datasArtifactTier9;
			datasLocation = datasArtifactLocationTier9;
		elseif(val == 2)then
			datas = datasOreTier9;
			datasLocation = datasOreLocationTier9;
		elseif(val == 3)then
			datas = datasWoodTier9;
			datasLocation = datasWoodLocationTier9;
		elseif(val == 4)then
			datas = datasHideTier9;
			datasLocation = datasHideLocationTier9;
		elseif(val == 5)then
			datas = datasRareTier9;
			datasLocation = datasRareLocationTier9;
		end
	elseif(tier == 10)then
		if(val == 1)then
			datas = datasArtifactTier10;
			datasLocation = datasArtifactLocationTier10;
		elseif(val == 2)then
			datas = datasOreTier10;
			datasLocation = datasOreLocationTier10;
		elseif(val == 3)then
			datas = datasWoodTier10;
			datasLocation = datasWoodLocationTier10;
		elseif(val == 4)then
			datas = datasHideTier10;
			datasLocation = datasHideLocationTier10;
		elseif(val == 5)then
			datas = datasRareTier10;
			datasLocation = datasRareLocationTier10;
		end
	elseif(tier == 101)then
		if(val == 1)then
			datas = datasArtifactTier10_1;
			datasLocation = datasArtifactLocationTier10_1;
		elseif(val == 2)then
			datas = datasOreTier10_1;
			datasLocation = datasOreLocationTier10_1;
		elseif(val == 3)then
			datas = datasWoodTier10_1;
			datasLocation = datasWoodLocationTier10_1;
		elseif(val == 4)then
			datas = datasHideTier10_1;
			datasLocation = datasHideLocationTier10_1;
		elseif(val == 5)then
			datas = datasRareTier10_1;
			datasLocation = datasRareLocationTier10_1;
		end
	elseif(tier == 11)then
		if(val == 1)then
			datas = datasArtifactTier11;
			datasLocation = datasArtifactLocationTier11;
		elseif(val == 2)then
			datas = datasOreTier11;
			datasLocation = datasOreLocationTier11;
		elseif(val == 3)then
			datas = datasWoodTier11;
			datasLocation = datasWoodLocationTier11;
		elseif(val == 4)then
			datas = datasHideTier11;
			datasLocation = datasHideLocationTier11;
		elseif(val == 5)then
			datas = datasRareTier11;
			datasLocation = datasRareLocationTier11;
		end
	elseif(tier == 12)then
		if(val == 1)then
			datas = datasArtifactTier12;
			datasLocation = datasArtifactLocationTier12;
		elseif(val == 2)then
			datas = datasOreTier12;
			datasLocation = datasOreLocationTier12;
		elseif(val == 3)then
			datas = datasWoodTier12;
			datasLocation = datasWoodLocationTier12;
		elseif(val == 4)then
			datas = datasHideTier12;
			datasLocation = datasHideLocationTier12;
		elseif(val == 5)then
			datas = datasRareTier12;
			datasLocation = datasRareLocationTier12;
		end
	elseif(tier == 13)then
		if(val == 1)then
			datas = datasArtifactTier13;
			datasLocation = datasArtifactLocationTier13;
		elseif(val == 2)then
			datas = datasOreTier13;
			datasLocation = datasOreLocationTier13;
		elseif(val == 3)then
			datas = datasWoodTier13;
			datasLocation = datasWoodLocationTier13;
		elseif(val == 4)then
			datas = datasHideTier13;
			datasLocation = datasHideLocationTier13;
		elseif(val == 5)then
			datas = datasRareTier13;
			datasLocation = datasRareLocationTier13;
		end
	elseif(tier == 131)then
		if(val == 1)then
			datas = datasArtifactTier13_1;
			datasLocation = datasArtifactLocationTier13_1;
		elseif(val == 2)then
			datas = datasOreTier13_1;
			datasLocation = datasOreLocationTier13_1;
		elseif(val == 3)then
			datas = datasWoodTier13_1;
			datasLocation = datasWoodLocationTier13_1;
		elseif(val == 4)then
			datas = datasHideTier13_1;
			datasLocation = datasHideLocationTier13_1;
		elseif(val == 5)then
			datas = datasRareTier13_1;
			datasLocation = datasRareLocationTier13_1;
		end
	elseif(tier == 14)then
		if(val == 1)then
			datas = datasArtifactTier14;
			datasLocation = datasArtifactLocationTier14;
		elseif(val == 2)then
			datas = datasOreTier14;
			datasLocation = datasOreLocationTier14;
		elseif(val == 3)then
			datas = datasWoodTier14;
			datasLocation = datasWoodLocationTier14;
		elseif(val == 4)then
			datas = datasHideTier14;
			datasLocation = datasHideLocationTier14;
		elseif(val == 5)then
			datas = datasRareTier14;
			datasLocation = datasRareLocationTier14;
		end
	elseif(tier == 15)then
		if(val == 1)then
			datas = datasArtifactTier15;
			datasLocation = datasArtifactLocationTier15;
		elseif(val == 2)then
			datas = datasOreTier15;
			datasLocation = datasOreLocationTier15;
		elseif(val == 3)then
			datas = datasWoodTier15;
			datasLocation = datasWoodLocationTier15;
		elseif(val == 4)then
			datas = datasHideTier15;
			datasLocation = datasHideLocationTier15;
		elseif(val == 5)then
			datas = datasRareTier15;
			datasLocation = datasRareLocationTier15;
		end
	end

	nbrIcons = tablelength(datas);

	local WhereToPlayerDatas = {};
	local WhereToPlayerDatasIcon = {};
	local WhereToPlayerDatasLocation = {};

	for i=1, nbrIcons do
		WhereToPlayerDatas[i]=Turbine.UI.Label(); 
		WhereToPlayerDatas[i]:SetParent(FarmWindow); 
		WhereToPlayerDatas[i]:SetSize(32,32); 
		WhereToPlayerDatas[i]:SetPosition(posx, posy); 
		-- 0x4111CE26
		if(tier == 101)then
			if(i == 7 or i == 8 or i == 9)then
				WhereToPlayerDatas[i]:SetBackground(0x4111CE26); 
			else
				WhereToPlayerDatas[i]:SetBackground(0x410002A9);
			end
		else
			if(val ~= 5)then
				WhereToPlayerDatas[i]:SetBackground(0x410002A9);
			else
				if(tier > 1)then
					if(tier == 8)then
						if(i == 4 or i == 5)then
							WhereToPlayerDatas[i]:SetBackground(0x410D461E); 
						else
							WhereToPlayerDatas[i]:SetBackground(0x410002A9); 
						end
					else
						WhereToPlayerDatas[i]:SetBackground(0x410002A9); 
					end
				end
			end
		end
		WhereToPlayerDatas[i]:SetBlendMode(Turbine.UI.BlendMode.Overlay); 

		WhereToPlayerDatasIcon[i]=Turbine.UI.Label(); 
		WhereToPlayerDatasIcon[i]:SetParent(WhereToPlayerDatas[i]); 
		WhereToPlayerDatasIcon[i]:SetSize(32,32); 
		WhereToPlayerDatasIcon[i]:SetPosition(0, 0); 
		if(val ~= 5)then
			WhereToPlayerDatasIcon[i]:SetBackground(datas[i]); 
		else
			if(tier > 1)then
				WhereToPlayerDatasIcon[i]:SetBackground(datas[i]); 
			end
		end
		WhereToPlayerDatasIcon[i]:SetBlendMode(Turbine.UI.BlendMode.Overlay);
		
	--[[
		WhereToPlayerDatasLocation[i]=Turbine.UI.Label(); 
		WhereToPlayerDatasLocation[i]:SetParent(FarmWindow); 
		WhereToPlayerDatasLocation[i]:SetSize(360,60); 
		WhereToPlayerDatasLocation[i]:SetPosition(20, posy + 30); 
		WhereToPlayerDatasLocation[i]:SetFont(Turbine.UI.Lotro.Font.Verdana16);
		WhereToPlayerDatasLocation[i]:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
		WhereToPlayerDatasLocation[i]:SetText(datasLocation[i]); 
		WhereToPlayerDatasLocation[i]:SetBlendMode(Turbine.UI.BlendMode.Overlay);
	]]--

		WhereToPlayerDatas[i].MouseEnter = function()
			WhereToPlayerDatasNameObjects:SetForeColor(textColor);
			if(tier == 1)then
				if(val == 1)then
					WhereToPlayerDatasNameObjects:SetText(datasArtifactNamesTier1[i]);
				elseif(val == 2)then
					WhereToPlayerDatasNameObjects:SetText(datasOreNamesTier1[i]);
				elseif(val == 3)then
					WhereToPlayerDatasNameObjects:SetText(datasWoodNamesTier1[i]);
				elseif(val == 4)then
					WhereToPlayerDatasNameObjects:SetText(datasHideNamesTier1[i]);
				elseif(val == 5)then
					WhereToPlayerDatasNameObjects:SetText(datasRareNamesTier1[i]);
				end
			elseif(tier == 2)then
				if(val == 1)then
					WhereToPlayerDatasNameObjects:SetText(datasArtifactNamesTier2[i]);
				elseif(val == 2)then
					WhereToPlayerDatasNameObjects:SetText(datasOreNamesTier2[i]);
				elseif(val == 3)then
					WhereToPlayerDatasNameObjects:SetText(datasWoodNamesTier2[i]);
				elseif(val == 4)then
					WhereToPlayerDatasNameObjects:SetText(datasHideNamesTier2[i]);
				elseif(val == 5)then
					WhereToPlayerDatasNameObjects:SetText(datasRareNamesTier2[i]);
				end
			elseif(tier == 3)then
				if(val == 1)then
					WhereToPlayerDatasNameObjects:SetText(datasArtifactNamesTier3[i]);
				elseif(val == 2)then
					WhereToPlayerDatasNameObjects:SetText(datasOreNamesTier3[i]);
				elseif(val == 3)then
					WhereToPlayerDatasNameObjects:SetText(datasWoodNamesTier3[i]);
				elseif(val == 4)then
					WhereToPlayerDatasNameObjects:SetText(datasHideNamesTier3[i]);
				elseif(val == 5)then
					WhereToPlayerDatasNameObjects:SetText(datasRareNamesTier3[i]);
				end
			elseif(tier == 4)then
				if(val == 1)then
					WhereToPlayerDatasNameObjects:SetText(datasArtifactNamesTier4[i]);
				elseif(val == 2)then
					WhereToPlayerDatasNameObjects:SetText(datasOreNamesTier4[i]);
				elseif(val == 3)then
					WhereToPlayerDatasNameObjects:SetText(datasWoodNamesTier4[i]);
				elseif(val == 4)then
					WhereToPlayerDatasNameObjects:SetText(datasHideNamesTier4[i]);
				elseif(val == 5)then
					WhereToPlayerDatasNameObjects:SetText(datasRareNamesTier4[i]);
				end
			elseif(tier == 5)then
				if(val == 1)then
					WhereToPlayerDatasNameObjects:SetText(datasArtifactNamesTier5[i]);
				elseif(val == 2)then
					WhereToPlayerDatasNameObjects:SetText(datasOreNamesTier5[i]);
				elseif(val == 3)then
					WhereToPlayerDatasNameObjects:SetText(datasWoodNamesTier5[i]);
				elseif(val == 4)then
					WhereToPlayerDatasNameObjects:SetText(datasHideNamesTier5[i]);
				elseif(val == 5)then
					WhereToPlayerDatasNameObjects:SetText(datasRareNamesTier5[i]);
				end
			elseif(tier == 6)then
				if(val == 1)then
					WhereToPlayerDatasNameObjects:SetText(datasArtifactNamesTier6[i]);
				elseif(val == 2)then
					WhereToPlayerDatasNameObjects:SetText(datasOreNamesTier6[i]);
				elseif(val == 3)then
					WhereToPlayerDatasNameObjects:SetText(datasWoodNamesTier6[i]);
				elseif(val == 4)then
					WhereToPlayerDatasNameObjects:SetText(datasHideNamesTier6[i]);
				elseif(val == 5)then
					WhereToPlayerDatasNameObjects:SetText(datasRareNamesTier6[i]);
				end
			elseif(tier == 7)then
				if(val == 1)then
					WhereToPlayerDatasNameObjects:SetText(datasArtifactNamesTier7[i]);
				elseif(val == 2)then
					WhereToPlayerDatasNameObjects:SetText(datasOreNamesTier7[i]);
				elseif(val == 3)then
					WhereToPlayerDatasNameObjects:SetText(datasWoodNamesTier7[i]);
				elseif(val == 4)then
					WhereToPlayerDatasNameObjects:SetText(datasHideNamesTier7[i]);
				elseif(val == 5)then
					WhereToPlayerDatasNameObjects:SetText(datasRareNamesTier7[i]);
				end
			elseif(tier == 8)then
				if(val == 1)then
					WhereToPlayerDatasNameObjects:SetText(datasArtifactNamesTier8[i]);
				elseif(val == 2)then
					WhereToPlayerDatasNameObjects:SetText(datasOreNamesTier8[i]);
				elseif(val == 3)then
					WhereToPlayerDatasNameObjects:SetText(datasWoodNamesTier8[i]);
				elseif(val == 4)then
					WhereToPlayerDatasNameObjects:SetText(datasHideNamesTier8[i]);
				elseif(val == 5)then
					WhereToPlayerDatasNameObjects:SetText(datasRareNamesTier8[i]);
				end
			elseif(tier == 9)then
				if(val == 1)then
					WhereToPlayerDatasNameObjects:SetText(datasArtifactNamesTier9[i]);
				elseif(val == 2)then
					WhereToPlayerDatasNameObjects:SetText(datasOreNamesTier9[i]);
				elseif(val == 3)then
					WhereToPlayerDatasNameObjects:SetText(datasWoodNamesTier9[i]);
				elseif(val == 4)then
					WhereToPlayerDatasNameObjects:SetText(datasHideNamesTier9[i]);
				elseif(val == 5)then
					WhereToPlayerDatasNameObjects:SetText(datasRareNamesTier9[i]);
				end
			elseif(tier == 10)then
				if(val == 1)then
					WhereToPlayerDatasNameObjects:SetText(datasArtifactNamesTier10[i]);
				elseif(val == 2)then
					WhereToPlayerDatasNameObjects:SetText(datasOreNamesTier10[i]);
				elseif(val == 3)then
					WhereToPlayerDatasNameObjects:SetText(datasWoodNamesTier10[i]);
				elseif(val == 4)then
					WhereToPlayerDatasNameObjects:SetText(datasHideNamesTier10[i]);
				elseif(val == 5)then
					WhereToPlayerDatasNameObjects:SetText(datasRareNamesTier10[i]);
				end
			elseif(tier == 101)then
				if(val == 1)then
					WhereToPlayerDatasNameObjects:SetText(datasArtifactNamesTier10_1[i]);
				elseif(val == 2)then
					WhereToPlayerDatasNameObjects:SetText(datasOreNamesTier10_1[i]);
				elseif(val == 3)then
					WhereToPlayerDatasNameObjects:SetText(datasWoodNamesTier10_1[i]);
				elseif(val == 4)then
					WhereToPlayerDatasNameObjects:SetText(datasHideNamesTier10_1[i]);
				elseif(val == 5)then
					WhereToPlayerDatasNameObjects:SetText(datasRareNamesTier10_1[i]);
				end
			elseif(tier == 11)then
				if(val == 1)then
					WhereToPlayerDatasNameObjects:SetText(datasArtifactNamesTier11[i]);
				elseif(val == 2)then
					WhereToPlayerDatasNameObjects:SetText(datasOreNamesTier11[i]);
				elseif(val == 3)then
					WhereToPlayerDatasNameObjects:SetText(datasWoodNamesTier11[i]);
				elseif(val == 4)then
					WhereToPlayerDatasNameObjects:SetText(datasHideNamesTier11[i]);
				elseif(val == 5)then
					WhereToPlayerDatasNameObjects:SetText(datasRareNamesTier11[i]);
				end
			elseif(tier == 12)then
				if(val == 1)then
					WhereToPlayerDatasNameObjects:SetText(datasArtifactNamesTier12[i]);
				elseif(val == 2)then
					WhereToPlayerDatasNameObjects:SetText(datasOreNamesTier12[i]);
				elseif(val == 3)then
					WhereToPlayerDatasNameObjects:SetText(datasWoodNamesTier12[i]);
				elseif(val == 4)then
					WhereToPlayerDatasNameObjects:SetText(datasHideNamesTier12[i]);
				elseif(val == 5)then
					WhereToPlayerDatasNameObjects:SetText(datasRareNamesTier12[i]);
				end
			elseif(tier == 13)then
				if(val == 1)then
					WhereToPlayerDatasNameObjects:SetText(datasArtifactNamesTier13[i]);
				elseif(val == 2)then
					WhereToPlayerDatasNameObjects:SetText(datasOreNamesTier13[i]);
				elseif(val == 3)then
					WhereToPlayerDatasNameObjects:SetText(datasWoodNamesTier13[i]);
				elseif(val == 4)then
					WhereToPlayerDatasNameObjects:SetText(datasHideNamesTier13[i]);
				elseif(val == 5)then
					WhereToPlayerDatasNameObjects:SetText(datasRareNamesTier13[i]);
				end
			elseif(tier == 131)then
				if(val == 1)then
					WhereToPlayerDatasNameObjects:SetText(datasArtifactNamesTier13_1[i]);
				elseif(val == 2)then
					WhereToPlayerDatasNameObjects:SetText(datasOreNamesTier13_1[i]);
				elseif(val == 3)then
					WhereToPlayerDatasNameObjects:SetText(datasWoodNamesTier13_1[i]);
				elseif(val == 4)then
					WhereToPlayerDatasNameObjects:SetText(datasHideNamesTier13_1[i]);
				elseif(val == 5)then
					WhereToPlayerDatasNameObjects:SetText(datasRareNamesTier13_1[i]);
				end
			elseif(tier == 14)then
				if(val == 1)then
					WhereToPlayerDatasNameObjects:SetText(datasArtifactNamesTier14[i]);
				elseif(val == 2)then
					WhereToPlayerDatasNameObjects:SetText(datasOreNamesTier14[i]);
				elseif(val == 3)then
					WhereToPlayerDatasNameObjects:SetText(datasWoodNamesTier14[i]);
				elseif(val == 4)then
					WhereToPlayerDatasNameObjects:SetText(datasHideNamesTier14[i]);
				elseif(val == 5)then
					WhereToPlayerDatasNameObjects:SetText(datasRareNamesTier14[i]);
				end
			elseif(tier == 15)then
				if(val == 1)then
					WhereToPlayerDatasNameObjects:SetText(datasArtifactNamesTier15[i]);
				elseif(val == 2)then
					WhereToPlayerDatasNameObjects:SetText(datasOreNamesTier15[i]);
				elseif(val == 3)then
					WhereToPlayerDatasNameObjects:SetText(datasWoodNamesTier15[i]);
				elseif(val == 4)then
					WhereToPlayerDatasNameObjects:SetText(datasHideNamesTier15[i]);
				elseif(val == 5)then
					WhereToPlayerDatasNameObjects:SetText(datasRareNamesTier15[i]);
				end
			end

			if(val == 5)then
				WhereToPlayerDatasNameLocation:SetText(datasLocation[i]);
			else
				WhereToPlayerDatasNameLocation:SetText(datasLocation[1]);
			end
		end

		WhereToPlayerDatas[i].MouseLeave = function()
			WhereToPlayerDatasNameObjects:SetText("");
			WhereToPlayerDatasNameLocation:SetText("")
		end

		posx = posx + 35;
	end        
end