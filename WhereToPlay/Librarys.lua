------------------------------------------------------------------------------------------
-- librarys file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- define librairies
------------------------------------------------------------------------------------------
import "Turbine";
import "Turbine.UI";
import "Turbine.UI.Lotro";
import "Turbine.UI.Extensions";
import "Turbine.Gameplay";
------------------------------------------------------------------------------------------
-- Import Globals --
------------------------------------------------------------------------------------------
if Turbine.Engine.GetLanguage() == Turbine.Language.German then
	import "Homeopatix.WhereToPlay.GlobalsDE";
	GLocale = "de";
elseif Turbine.Engine.GetLanguage() == Turbine.Language.French then
	import "Homeopatix.WhereToPlay.GlobalsFR";
	GLocale = "fr";
elseif Turbine.Engine.GetLanguage() == Turbine.Language.English then
	import "Homeopatix.WhereToPlay.GlobalsEN";
	GLocale = "en";
end
------------------------------------------------------------------------------------------
-- Import Utility --
------------------------------------------------------------------------------------------
import "Homeopatix.WhereToPlay.Notification";
import "Homeopatix.WhereToPlay.LoadAndSave";
import "Homeopatix.WhereToPlay.MinimizedIcon";
import "Homeopatix.WhereToPlay.VindarPatch";
import "Homeopatix.WhereToPlay.FCT";
------------------------------------------------------------------------------------------
-- Import initialization --
------------------------------------------------------------------------------------------
import "Homeopatix.WhereToPlay.Init";
import "Homeopatix.WhereToPlay.Activation";
import "Homeopatix.WhereToPlay.PlayerStats";
------------------------------------------------------------------------------------------
-- Import Scripts --
------------------------------------------------------------------------------------------
import "Homeopatix.WhereToPlay.Main";
------------------------------------------------------------------------------------------
-- Import UI elements --
------------------------------------------------------------------------------------------
import "Homeopatix.WhereToPlay.UI";
import "Homeopatix.WhereToPlay.UIInfos";
import "Homeopatix.WhereToPlay.OptionsWindow";
import "Homeopatix.WhereToPlay.MapWindow";
if Turbine.Engine.GetLanguage() == Turbine.Language.German then
	import "Homeopatix.WhereToPlay.DATA_DE";
elseif Turbine.Engine.GetLanguage() == Turbine.Language.French then
	import "Homeopatix.WhereToPlay.DATA_FR";
elseif Turbine.Engine.GetLanguage() == Turbine.Language.English then
	import "Homeopatix.WhereToPlay.DATA_EN";
end
import "Homeopatix.WhereToPlay.FarmWindow";
import "Homeopatix.WhereToPlay.InstanceWindow";
------------------------------------------------------------------------------------------
-- Import Commands --
------------------------------------------------------------------------------------------
import "Homeopatix.WhereToPlay.Commands";