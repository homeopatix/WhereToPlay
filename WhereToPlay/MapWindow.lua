------------------------------------------------------------------------------------------
-- MapWindow file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- create the window
------------------------------------------------------------------------------------------
function CreateMapWindow(i)
    width = 1044;
    height = 808;

    windowWidth, windowHeight = Turbine.UI.Display:GetSize();

    MapWindow=Turbine.UI.Lotro.GoldWindow(); 
    MapWindow:SetSize(windowWidth, windowHeight); 
    MapWindow:SetPosition(windowWidth / 2 - width / 2, (windowHeight / 2 - height / 2) - 20);
    MapWindow:SetSize(width, height);
    MapWindow:SetBlendMode(Turbine.UI.BlendMode.Undefined);
    MapWindow:SetBackColor(Turbine.UI.Color(0.0, 0, 0, 0));
    MapWindow:SetText(ZonesNamesAndLevel["zones" .. i].texte .. "    lvl : " .. ZonesNamesAndLevel["zones" .. i].lvl);
    MapWindow:SetVisible(false);
    MapWindow:SetWantsKeyEvents(true);

    mapLabel = Turbine.UI.Label();
    mapLabel:SetPosition(10, 30);
    mapLabel:SetSize(1024, 768);
    mapLabel:SetBackground(ZonesNamesAndLevel["zones" .. i].mapHex);
    mapLabel:SetParent(MapWindow);
    mapLabel:SetVisible(true);

    WhereToPlayerDatas=Turbine.UI.Label(); 
	WhereToPlayerDatas:SetParent(MapWindow); 
	WhereToPlayerDatas:SetSize(200,20); 
	WhereToPlayerDatas:SetPosition(804, 780); 
    WhereToPlayerDatas:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold24);
    WhereToPlayerDatas:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	WhereToPlayerDatas:SetText("LVL :    " .. ZonesNamesAndLevel["zones" .. i].lvl); 
	WhereToPlayerDatas:SetBackColor(Turbine.UI.Color(1, .2, .5, .75));
    WhereToPlayerDatas:SetForeColor(Turbine.UI.Color.Gold);
	WhereToPlayerDatas:SetZOrder(12);


    buttonValider = Turbine.UI.Lotro.GoldButton();
	buttonValider:SetParent( MapWindow );
	buttonValider:SetPosition(400, 776);
	buttonValider:SetSize( 300, 20 );
	buttonValider:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	buttonValider:SetText( Strings.PluginCloseButton );
	buttonValider:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	buttonValider:SetVisible(true);
	buttonValider:SetMouseVisible(true);
    buttonValider:SetZOrder(10);

    buttonValider.MouseClick = function(sender, args)
        CloseMapWindow();
    end

    MapWindow.KeyDown=function(sender, args)
		if ( args.Action == Turbine.UI.Lotro.Action.Escape ) then
			MapWindow:SetVisible(false);
		end
	end

end
------------------------------------------------------------------------------------------
-- boutton valider
------------------------------------------------------------------------------------------
function CloseMapWindow()
    MapWindow:SetVisible(false);
    settings["isMapWindowVisible"]["value"] = false;
end