------------------------------------------------------------------------------------------
-- OptionWindow file
-- Written by Homeopatix
-- 14 avril 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- define size of the window
------------------------------------------------------------------------------------------
local windowWidth = 0;
local windowHeight = 0;

windowWidth = 400;
windowHeight = 300;
------------------------------------------------------------------------------------------
-- create the options window
------------------------------------------------------------------------------------------
function GenerateOptionsWindow()
		OptionsWindow=Turbine.UI.Lotro.GoldWindow(); 
		OptionsWindow:SetSize(windowWidth, windowHeight); 
		OptionsWindow:SetText(Strings.PluginOptionsText); 

		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(150,10); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 75, windowHeight - 17 ); 
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetText(Strings.PluginText); 

		OptionsWindow:SetZOrder(0);
		OptionsWindow:SetWantsKeyEvents(true);

		OptionsWindow:SetPosition((Turbine.UI.Display:GetWidth()-OptionsWindow:GetWidth())/2,(Turbine.UI.Display:GetHeight()-OptionsWindow:GetHeight())/2);

		OptionsWindow:SetVisible(false);
		------------------------------------------------------------------------------------------
		-- option center panel --
		------------------------------------------------------------------------------------------
		local posx = 50;
		local posy = 60;


		
		posy = posy + 10;

		OptionsWindow.Message=Turbine.UI.Label(); 
			OptionsWindow.Message:SetParent(OptionsWindow); 
			OptionsWindow.Message:SetSize(300, 40); 
			OptionsWindow.Message:SetPosition(posx, posy ); 
			OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
			OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana16);
			OptionsWindow.Message:SetText(Strings.PluginOption1); 

			posy = posy + 25;

			checkBoxKeep = Turbine.UI.Lotro.CheckBox();
			checkBoxKeep:SetParent( OptionsWindow );
			checkBoxKeep:SetSize(250, 40); 
			checkBoxKeep:SetFont(Turbine.UI.Lotro.Font.Verdana16);
			checkBoxKeep:SetText(Strings.PluginOption2);
			checkBoxKeep:SetPosition(posx + 100, posy);
			checkBoxKeep:SetVisible(true);
			if(settings["verbose"]["value"] == true)then
				checkBoxKeep:SetChecked(true);
			else
				checkBoxKeep:SetChecked(false);
			end
			checkBoxKeep:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));

			posy = posy + 50;



	--[[
		OptionsWindow.Message=Turbine.UI.Label(); 
			OptionsWindow.Message:SetParent(OptionsWindow); 
			OptionsWindow.Message:SetSize(300, 40); 
			OptionsWindow.Message:SetPosition(posx, posy ); 
			OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
			OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana16);
			OptionsWindow.Message:SetText(Strings.PluginOption3); 

			posy = posy + 25;

			checkBoxInstance = Turbine.UI.Lotro.CheckBox();
			checkBoxInstance:SetParent( OptionsWindow );
			checkBoxInstance:SetSize(250, 40); 
			checkBoxInstance:SetFont(Turbine.UI.Lotro.Font.Verdana16);
			checkBoxInstance:SetText(Strings.PluginOption2);
			checkBoxInstance:SetPosition(posx + 100, posy);
			checkBoxInstance:SetVisible(true);
			if(settings["displayInstances"]["value"] == true)then
				checkBoxInstance:SetChecked(true);
			else
				checkBoxInstance:SetChecked(false);
			end
			checkBoxInstance:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));

			posy = posy + 50;

	--]]

		buttonValider = Turbine.UI.Lotro.GoldButton();
		buttonValider:SetParent( OptionsWindow );
		buttonValider:SetPosition(windowWidth/2 - 125,  windowHeight - 50);
		buttonValider:SetSize( 300, 20 );
		buttonValider:SetFont(Turbine.UI.Lotro.Font.Verdana16);
		buttonValider:SetText( Strings.PluginOptionValidate );
		buttonValider:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
		buttonValider:SetVisible(true);
		buttonValider:SetMouseVisible(true);


		ValidateChangesOptions();
		ClosingTheWindowOptions();

		OptionsWindow.KeyDown=function(sender, args)
		if ( args.Action == Turbine.UI.Lotro.Action.Escape ) then
			OptionsWindow:SetVisible(false);
			settings["isOptionsWindowVisible"]["isOptionsWindowVisible"] = false;
		end
	
		-- https://www.lotro.com/forums/showthread.php?493466-How-to-hide-a-window-on-F12&p=6581962#post6581962
		if ( args.Action == 268435635 ) then
			hudVisible=not hudVisible;
			if hudVisible then
				OptionsWindow:SetVisible(false);
				MainMinimizedIcon:SetVisible(false);
			else
				OptionsWindow:SetVisible(settings.isOptionsWindowVisible);
				MainMinimizedIcon:SetVisible(true);
			end
		end
	end
end
------------------------------------------------------------------------------------------
-- boutton valider
------------------------------------------------------------------------------------------
function ValidateChangesOptions()
	buttonValider.MouseClick = function(sender, args)

		if (checkBoxKeep:IsChecked()) then
			settings["verbose"]["value"] = true;
		else
			settings["verbose"]["value"] = false;
		end
		--[[
		if (checkBoxInstance:IsChecked()) then
			settings["displayInstances"]["value"] = true;
		else
			settings["displayInstances"]["value"] = false;
		end
		--]]
		SaveSettings();

		OptionsWindow:SetVisible(false);
		settings["isOptionsWindowVisible"]["isOptionsWindowVisible"] = false;
		CreateMainWindow();
		settings["isWindowVisible"]["isWindowVisible"] = true;
		WhereToPlay:SetVisible(true);
	end
end