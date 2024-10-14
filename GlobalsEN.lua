------------------------------------------------------------------------------------------
-- GlobalEN file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
function CreateLocalizationInfo()
	Strings = {};

	------------------------------------------------------------------------------------------
	-- English --
	------------------------------------------------------------------------------------------
	Strings.PluginName = "WhereToPlay";
	Strings.PluginText = "By Homeopatix";
	Strings.PluginEscEnable = "Escape key Activated";
	Strings.PluginEscDesable = "Escape key Desactivated";
	Strings.PluginAltEnable = "Alt key Activated";
	Strings.PluginAltDesable = "Alt key Desactivated";
	Strings.PluginToggleOn = "Toggle the window ON";
	Strings.PluginToggleOff = "Toggle the window OFF";
	Strings.PluginEscIconOn = "Display the icon";
	Strings.PluginEscIconOff = "Hide the icon";
	Strings.PluginWindowShow = "Show the window.";
	Strings.PluginWindowHide = "Hide the window.";
	Strings.PluginDateUpdate = "03.12.2023";
	------------------------------------------------------------------------------------------
	-- help --
	------------------------------------------------------------------------------------------
	Strings.PluginHelp1 = "\n\nList of all commands:\n";
	Strings.PluginHelp2 = "/WTP help - Show the help window.\n";
	Strings.PluginHelp3 = "/WTP show - Show the window.\n";
	Strings.PluginHelp4 = "/WTP hide - Hide the window.\n";
	Strings.PluginHelp5 = "/WTP esc - Activate or deactivate the Escape key.\n";
	Strings.PluginHelp6 = "/WTP alt - Activate or deactivate the alt key to move the icon.\n";
	Strings.PluginHelp7 = "/WTP options - Display the options window.\n";
	Strings.PluginHelp8 = "/WTP toggle - Toggle window.\n";
	Strings.PluginHelp9 = "/WTP icon - Display or hide the icon.\n\n";
	Strings.PluginHelp10 = "You can click on the name of a region to open the map of the region\n";
	Strings.PluginHelp11 = "You can SHIFT + click on the main icon to display the options window\n";
	Strings.PluginHelp12 = "You can click on the little bag icon to display the harvestable materials in the area.\n";
	Strings.PluginCloseButton = "Close window";
	------------------------------------------------------------------------------------------
	-- farm window --
	------------------------------------------------------------------------------------------
	Strings.PluginFarm1 = "Artifacts";
	Strings.PluginFarm2 = "Ore";
	Strings.PluginFarm3 = "Wood";
	Strings.PluginFarm4 = "Hides";
	Strings.PluginFarm5 = "Rare";
	Strings.PluginFarm6 = "Name";
	Strings.PluginFarm7 = "Locations";
	------------------------------------------------------------------------------------------
	-- instances window --
	------------------------------------------------------------------------------------------
	Strings.PlugInstances1 = "Work in progress";
	------------------------------------------------------------------------------------------
	-- professions tier --
	------------------------------------------------------------------------------------------
	Strings.PluginProfTier1 = "Apprentice";
	Strings.PluginProfTier2 = "Journeyman";
	Strings.PluginProfTier3 = "Expert";
	Strings.PluginProfTier4 = "Artisan";
	Strings.PluginProfTier5 = "Master";
	Strings.PluginProfTier6 = "Supreme";
	Strings.PluginProfTier7 = "Westfold";
	Strings.PluginProfTier8 = "Eastemnet";
	Strings.PluginProfTier9 = "Westemnet";
	Strings.PluginProfTier10 = "Anorien";
	Strings.PluginProfTier11 = "Doomfold";
	Strings.PluginProfTier12 = "Ironfold";
	Strings.PluginProfTier13 = "Minas Ithil";
	Strings.PluginProfTier14 = "Gundabad";
	Strings.PluginProfTier15 = "Umbar";
	------------------------------------------------------------------------------------------
	-- options window --
	------------------------------------------------------------------------------------------
	Strings.PluginOptionsText = "WhereToPlay Options";
	Strings.PluginOption1 = "Show Material Farming Tier";
	Strings.PluginOption2 = "Display icon";
	Strings.PluginOption3 = "Display the world instances";
	Strings.PluginOptionValidate = "Validate the changes";
	Strings.PluginOptionShowWindow = "Display the options window";
	------------------------------------------------------------------------------------------
	-- zones --
	------------------------------------------------------------------------------------------
	ZonesNamesAndLevel = {
        zones1 = {mapHex = 0x41008137, texte = "The Shire", lvl = "1 - 15", souCat = false},
        zones2 = {mapHex =  0x4100812c, texte = "Ered Luin", lvl = "1 - 15", souCat = false},

		zones3 = {mapHex = 0x4121ea2e, texte = "Swanfleet", lvl = "1 - 15", souCat = false}, -- new in U34

        zones4 = {mapHex =  0x41008136, texte = "Bree-land", lvl = "1 - 25, 30", souCat = false},
        zones5 = {mapHex =  0x41008136, texte = "Archet Dale, Combe, Staddle", lvl = "1 - 15", souCat = true},
        zones6 = {mapHex =  0x41008136, texte = "Bree-land (north), Nen Harn", lvl = "15 - 21", souCat = true},
		zones7 = {mapHex =  0x4110a842, texte = "The Great Barrow", lvl = "20 - 25", souCat = true},

		zones8 = {mapHex = 0x41220239, texte = "Cardolan", lvl = "20 - 25", souCat = true}, -- new in U34

		zones9 = {mapHex =  0x4121994d, texte = "The Yondershire", lvl = "20 - 23", souCat = false},
        zones10 = {mapHex =  0x41008130, texte = "The Lone-lands", lvl = "20 - 35", souCat = false},
        zones11 = {mapHex =  0x41008130, texte = "The Forsaken Inn", lvl = "18 - 23", souCat = true},
		zones12 = {mapHex =  0x41008130, texte = "Ost Guruth", lvl = "20 - 30", souCat = true},
		zones13 = {mapHex =  0x41008130, texte = "Garth Agarwen", lvl = "31 - 35", souCat = true},
		zones14 = {mapHex = 0x41008132, texte = "The North Downs", lvl = "20 - 35", souCat = false},
		zones15 = {mapHex = 0x41008132, texte = "Esteld\195\173n (west)", lvl = "20 - 25", souCat = true},
		zones16 = {mapHex = 0x41008132, texte = "Esteld\195\173n (east)", lvl = "25 - 35", souCat = true},
		zones17 = {mapHex = 0x41008132, texte = "Fornost", lvl = "25 - 35", souCat = true},
		zones18 = {mapHex = 0x4101f084, texte = "Evendim", lvl = "30 - 40", souCat = false},
		zones19 = {mapHex = 0x412169ae, texte = "The Trollshaws", lvl = "35 - 40", souCat = false},
		zones20 = {mapHex = 0x4100812f, texte = "The Misty Mountains", lvl = "40 - 45", souCat = false},
		zones21 = {mapHex = 0x41216d0e, texte = "The Angle of Mitheithel", lvl = "40 - 45", souCat = false},
		zones22 = {mapHex = 0x41008131, texte = "Angmar", lvl = "40 - 50", souCat = false},
		zones23 = {mapHex = 0x4122f2ed, texte = "Carn D\195\187m", lvl = "40 - 50", souCat = false},
		zones24 = {mapHex = 0x410e3f46, texte = "Forochel", lvl = "44 - 50", souCat = false},
		zones25 = {mapHex =  0x4120c7c8, texte = "The Wildwood", lvl = "45 - 50", souCat = false},
		zones26 = {mapHex =  0x410e8686, texte = "Eregion", lvl = "48 - 53", souCat = false},
		zones27 = {mapHex =  0x410e8708, texte = "Moria", lvl = "51 - 60", souCat = false},
		zones28 = {mapHex =  0x410e871c, texte = "The Great Delving", lvl = "51", souCat = true},
		zones29 = {mapHex =  0x410e8719, texte = "The Silvertine Lodes", lvl = "52", souCat = true},
		zones30 = {mapHex =  0x410e871d, texte = "Durin's Way", lvl = "53", souCat = true},
		zones31 = {mapHex =  0x410e871e, texte = "Zirakzigil", lvl = "53 - 54", souCat = true},
		zones32 = {mapHex =  0x410e8717, texte = "The Water-works", lvl = "54", souCat = true},
		zones33 = {mapHex =  0x410e871b, texte = "Zelem-Melek", lvl = "55", souCat = true},
		zones34 = {mapHex =  0x410e8718, texte = "The Redhorn Lodes", lvl = "56", souCat = true},
		zones35 = {mapHex =  0x410e8716, texte = "The Flaming Deeps", lvl = "57", souCat = true},
		zones36 = {mapHex =  0x410e871a, texte = "Nud-melek", lvl = "58", souCat = true},
		zones37 = {mapHex =  0x410e8715, texte = "The Foundations of Stone", lvl = "59", souCat = true},
		zones38 = {mapHex =  0x410e8707, texte = "Lothl\195\179rien", lvl = "60", souCat = false},
		zones39 = {mapHex =  0x41100DF2, texte = "Mirkwood", lvl = "61 - 65", souCat = false},
		zones40 = {mapHex =  0x411041a4, texte = "Enedwaith", lvl = "61 - 65", souCat = false},
		zones41 = {mapHex =  0x4111961d, texte = "Dunland", lvl = "65 - 75", souCat = false},
		zones42 = {mapHex =  0x4111961d, texte = "Trum Dreng", lvl = "66", souCat = true},
		zones43 = {mapHex =  0x4111961d, texte = "Bonevales", lvl = "66", souCat = true},
		zones44 = {mapHex =  0x4111961d, texte = "Pren Gwydh", lvl = "67", souCat = true},
		zones45 = {mapHex =  0x4111b941, texte = "T\195\162l Methedras", lvl = "68 - 72", souCat = true},
		zones46 = {mapHex =  0x4111961d, texte = "Starkmoor", lvl = "69 - 71", souCat = true},
		zones47 = {mapHex =  0x4111961d, texte = "Dunbog", lvl = "70", souCat = true},
		zones48 = {mapHex =  0x4111961d, texte = "Carreglyn", lvl = "71", souCat = true},
		zones49 = {mapHex =  0x4111961d, texte = "Gravenwood", lvl = "72", souCat = true},
		zones50 = {mapHex =  0x41116d55, texte = "Gap of Rohan", lvl = "73 - 74", souCat = false},
		zones51 = {mapHex =  0x41116d55, texte = "Isendale", lvl = "73", souCat = true},
		zones52 = {mapHex =  0x41116d55, texte = "Heathfells", lvl = "74", souCat = true},
		zones53 = {mapHex =  0x41119607, texte = "Nan Curun\195\173r", lvl = "72 - 75", souCat = false},
		zones54 = {mapHex =  0x4111e1c0, texte = "The Great River", lvl = "70 - 75", souCat = false},
		zones55 = {mapHex =  0x41129EB7, texte = "East Rohan", lvl = "75 - 85", souCat = false},
		zones56 = {mapHex =  0x4112d1de, texte = "The Wold", lvl = "75 - 76", souCat = true},
		zones57 = {mapHex =  0x4112d1dc, texte = "The East Wall", lvl = "76 - 77", souCat = true},
		zones58 = {mapHex =  0x4112d1e0, texte = "Norcrofts", lvl = "78 - 80", souCat = true},
		zones59 = {mapHex =  0x4112d1e1, texte = "Entwash Vale", lvl = "80 - 82", souCat = true},
		zones60 = {mapHex =  0x4112d1df, texte = "Sutcrofts", lvl = "83 - 85", souCat = true},
		zones61 = {mapHex =  0x411375af, texte = "Wildermore", lvl = "85", souCat = true},
		zones62 = {mapHex =  0x4113C325, texte = "West Rohan", lvl = "85 - 95", souCat = false},
		zones63 = {mapHex =  0x4113C31F, texte = "Kingstead", lvl = "85 - 88", souCat = true},
		zones64 = {mapHex =  0x4113C321, texte = "Eastfold", lvl = "88 - 90", souCat = true},
		zones65 = {mapHex =  0x4113C320, texte = "Broadacres", lvl = "90 - 91", souCat = true},
		zones66 = {mapHex =  0x4113C322, texte = "Stonedeans", lvl = "91 - 93", souCat = true},
		zones67 = {mapHex =  0x4113C324, texte = "Westfold", lvl = "93 - 95", souCat = true},
		zones68 = {mapHex =  0x4114BEAA, texte = "Entwood", lvl = "95", souCat = true},
		zones69 = {mapHex =  0x411538df, texte = "Western Gondor", lvl = "95 - 100", souCat = false},
		zones70 = {mapHex =  0x41154eed, texte = "Blackroot Vale", lvl = "95 - 97", souCat = true},
		zones71 = {mapHex =  0x41154eec, texte = "Lamedon", lvl = "97 - 98", souCat = true},
		zones72 = {mapHex =  0x41154eeb, texte = "Havens of Belfalas", lvl = "98 - 100", souCat = true},
		zones73 = {mapHex =  0x41158979, texte = "The Dead Marshes", lvl = "100", souCat = false},
		zones74 = {mapHex =  0x4115b943, texte = "Central Gondor", lvl = "100", souCat = false},
		zones75 = {mapHex =  0x4115b93f, texte = "Ringl\195\179 Vale", lvl = "100", souCat = true},
		zones76 = {mapHex =  0x4115b945, texte = "Dor-en-Ernil", lvl = "100", souCat = true},
		zones77 = {mapHex =  0x4115b944, texte = "Lebennin", lvl = "100", souCat = true},
		zones78 = {mapHex =  0x4115ee35, texte = "Eastern Gondor", lvl = "100", souCat = false},
		zones79 = {mapHex =  0x4115ee38, texte = "Upper Lebennin", lvl = "100", souCat = true},
		zones80 = {mapHex =  0x4115ee3c, texte = "Lossarnach", lvl = "100", souCat = true},
		zones81 = {mapHex =  0x4115ee3a, texte = "South Ithilien", lvl = "100", souCat = true},
		zones82 = {mapHex =  0x4115ee41, texte = "Osgiliath", lvl = "100", souCat = true},
		zones83 = {mapHex =  0x411656f1, texte = "Old An\195\179rien", lvl = "100", souCat = false},
		zones84 = {mapHex =  0x411656ee, texte = "Talath Anor", lvl = "100", souCat = true},
		zones85 = {mapHex =  0x411656f0, texte = "Pelennor", lvl = "100", souCat = true},
		zones86 = {mapHex =  0x411656ef, texte = "Minas Tirith", lvl = "100", souCat = true},
		zones87 = {mapHex =  0x4116af91, texte = "Far An\195\179rien", lvl = "100 - 104", souCat = false},
		zones88 = {mapHex =  0x4116af90, texte = "Taur Dr\195\186adan", lvl = "101 - 102", souCat = true},
		zones89 = {mapHex =  0x4116af8b, texte = "The Beacon Hills", lvl = "103 - 104", souCat = true},
		zones90 = {mapHex =  0x4116B18E, texte = "Battle of Pelennor Fields", lvl = "105", souCat = true},
		zones91 = {mapHex =  0x411656f1, texte = "An\195\179rien (After Battle)", lvl = "105", souCat = false},
		zones92 = {mapHex =  0x4119389d, texte = "Minas Tirith (After-battle)", lvl = "105", souCat = true},
		zones93 = {mapHex =  0x411a42e8, texte = "Pelennor (After Battle)", lvl = "105", souCat = true},
		zones94 = {mapHex =  0x411a42e5, texte = "Osgiliath (After Battle)", lvl = "105", souCat = true},
		zones95 = {mapHex =  0x411a42e7, texte = "Ithilien", lvl = "105", souCat = false},
		zones96 = {mapHex =  0x411a42e7, texte = "North Ithilien", lvl = "105", souCat = true},
		zones97 = {mapHex =  0x411b84d4, texte = "The Plateau of Gorgoroth", lvl = "105 - 115", souCat = false},
		zones98 = {mapHex =  0x411b9591, texte = "Ud\195\187n", lvl = "106 -108", souCat = true},
		zones99 = {mapHex =  0x411b958d, texte = "Dor Amarth", lvl = "108 -109", souCat = true},
		zones100 = {mapHex =  0x411b958e, texte = "Lhingris", lvl = "110 - 111", souCat = true},
		zones101 = {mapHex =  0x411b9590, texte = "Talath \195\186rui", lvl = "112 - 113", souCat = true},
		zones102 = {mapHex =  0x411b958c, texte = "Agarnaith", lvl = "114 - 115", souCat = true},
		zones103 = {mapHex =  0x411c2de2, texte = "Eryn Lasgalen and the Dale-lands", lvl = "115", souCat = false},
		zones104 = {mapHex =  0x411c2de2, texte = "Eryn Lasgalen", lvl = "115", souCat = true},
		zones105 = {mapHex =  0x411c2de2, texte = "The Dale-lands", lvl = "115", souCat = true},
		zones106 = {mapHex =  0x411CD4B8, texte = "The Dwarf-holds", lvl = "115 - 120", souCat = false},
		zones107 = {mapHex =  0x411CD4B8, texte = "The Ironfold", lvl = "115 - 117", souCat = true},
		zones108 = {mapHex =  0x411c8da9, texte = "Ered Mithrin", lvl = "117 - 120", souCat = true},
		zones109 = {mapHex =  0x411da4a0, texte = "Vales of Anduin", lvl = "120", souCat = false},
		zones110 = {mapHex =  0x411e9a41, texte = "The Morgul Vale", lvl = "120 - 130", souCat = false},
		zones111 = {mapHex =  0x411e9a43, texte = "Mordor Besieged", lvl = "120 - 122", souCat = true},
		zones112 = {mapHex =  0x411e9a41, texte = "Rath D\195\186ath", lvl = "123 - 124", souCat = true},
		zones113 = {mapHex =  0x411e9a41, texte = "Cirith Ungol", lvl = "125", souCat = true},
		zones114 = {mapHex =  0x411e9a42, texte = "Minas Morgul", lvl = "126 - 130", souCat = true},
		zones115 = {mapHex =  0x411ee769, texte = "Wells of Langflood", lvl = "130", souCat = false},
		zones116 = {mapHex =  0x411fb86f, texte = "Elderslade", lvl = "130", souCat = false},
		zones117 = {mapHex =  0x41008133, texte = "Ettenmoors (PvMP)", lvl = "130", souCat = false},
		zones118 = {mapHex =  0x41162479, texte = "The Sundering of Osgiliath (PvMP)", lvl = "130", souCat = false},
		zones119 = {mapHex =  0x4121166a, texte = "Mount Gundabad", lvl = "130 - 140", souCat = false},
		zones120 = {mapHex =  0x4121166f, texte = "Delvings of Gundabad", lvl = "130 - 131", souCat = true},
		zones121 = {mapHex =  0x41211669, texte = "Mattugard", lvl = "132 - 133", souCat = true},
		zones122 = {mapHex =  0x4121166d, texte = "Deepscrave", lvl = "133 - 134", souCat = true},
		zones123 = {mapHex =  0x4121166c, texte = "Pit of Stonejaws", lvl = "134 - 135", souCat = true},
		zones124 = {mapHex =  0x41211668, texte = "C\195\162r Bronach", lvl = "135 - 136", souCat = true},
		zones125 = {mapHex =  0x41211670, texte = "Gloomingtarn", lvl = "137 - 138", souCat = true},
		zones126 = {mapHex =  0x4121166b, texte = "Clovengap", lvl = "138 - 139", souCat = true},
		zones127 = {mapHex =  0x4121166e, texte = "Welkin-lofts", lvl = "139 - 140", souCat = true},
		zones128 = {mapHex =  0x41231343, texte = "King's Gondor", lvl = "140 - 143", souCat = true},
		zones129 = {mapHex =  0x4124848f, texte = "Outer Gondor", lvl = "143 - 145", souCat = true},
		zones130 = {mapHex =  0x41248399, texte = "The Shield Isles", lvl = "145 - 147", souCat = true},
		zones131 = {mapHex =  0x41248eef, texte = "Umbar", lvl = "147 - 150", souCat = true}
        };
end
