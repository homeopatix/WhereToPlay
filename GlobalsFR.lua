------------------------------------------------------------------------------------------
-- GlobalFR file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
function CreateLocalizationInfo()
	Strings = {};

	------------------------------------------------------------------------------------------
	-- Francais --
	------------------------------------------------------------------------------------------
	Strings.PluginName = "WhereToPlay";
	Strings.PluginText = "Par Homeopatix";
	Strings.PluginEscEnable = "Touche Escape activ\195\169";
	Strings.PluginEscDesable = "Touche Escape desactiv\195\169";
	Strings.PluginAltEnable = "Touche Alt activ\195\169";
	Strings.PluginAltDesable = "Touche Alt desactiv\195\169";
	Strings.PluginToggleOn = "Basculage de la fen\195\170tre ON";
	Strings.PluginToggleOff = "Basculage de la fen\195\170tre OFF";
	Strings.PluginEscIconOn = "Affiche l'icone";
	Strings.PluginEscIconOff = "Masque l'icone";
	Strings.PluginWindowShow = "Affiche la fen\195\168tre.";
	Strings.PluginWindowHide = "Cache la fen\195\168tre.";
	Strings.PluginDateUpdate = "03.12.2023";
	------------------------------------------------------------------------------------------
	-- help --
	------------------------------------------------------------------------------------------
	Strings.PluginHelp1 = "\n\nListe des commandes:\n";
	Strings.PluginHelp2 = "/WTP help - affiche la fen\195\168tre. d'aide\n";
	Strings.PluginHelp3 = "/WTP show - affiche la fen\195\168tre.\n";
	Strings.PluginHelp4 = "/WTP hide - cache la fen\195\168tre.\n";
	Strings.PluginHelp5 = "/WTP esc - Active ou d\195\169sactive la touche Escape.\n";
	Strings.PluginHelp6 = "/WTP alt - Active ou d\195\169sactive la touche alt pour le d\195\169placement de l'icon.\n";
	Strings.PluginHelp7 = "/WTP options - affiche la fen\195\168tre d'options.\n";
	Strings.PluginHelp8 = "/WTP toggle - Basculer la fen\195\170tre.\n";
	Strings.PluginHelp9 = "/WTP icon - Affiche ou masque l'icone.\n\n";
	Strings.PluginHelp10 = "Vous pouvez cliquer sur le nom d'une r\195\169gion pour ouvrir la carte de cette r\195\169gion\n";
	Strings.PluginHelp11 = "Vous pouvez SHIFT + cliquer sur l'icon principale pour afficher la fen\195\168tre d'options\n";
	Strings.PluginHelp12 = "Vous pouvez cliquer sur l'icon du sac de Tier pour afficher les mat\195\169riaux r\195\169coltable dans la zone.\n";
	Strings.PluginCloseButton = "Fermer la fen\195\170tre";
	------------------------------------------------------------------------------------------
	-- farm window --
	------------------------------------------------------------------------------------------
	Strings.PluginFarm1 = "Artefacts";
	Strings.PluginFarm2 = "Mines";
	Strings.PluginFarm3 = "Bois";
	Strings.PluginFarm4 = "Peaux";
	Strings.PluginFarm5 = "Rare";
	Strings.PluginFarm6 = "Nom";
	Strings.PluginFarm7 = "Locations";
	------------------------------------------------------------------------------------------
	-- instances window --
	------------------------------------------------------------------------------------------
	Strings.PlugInstances1 = "Travail en cours";
	------------------------------------------------------------------------------------------
	-- professions tier --
	------------------------------------------------------------------------------------------
	Strings.PluginProfTier1 = "Apprenti";
	Strings.PluginProfTier2 = "Compagnon";
	Strings.PluginProfTier3 = "Expert";
	Strings.PluginProfTier4 = "Artisan";
	Strings.PluginProfTier5 = "Ma\195\174tre";
	Strings.PluginProfTier6 = "Supr\195\170me";
	Strings.PluginProfTier7 = "Ouestfolde";
	Strings.PluginProfTier8 = "Estemnet";
	Strings.PluginProfTier9 = "Ouestemnet";
	Strings.PluginProfTier10 = "An\195\182rien";
	Strings.PluginProfTier11 = "Folde du Destin";
	Strings.PluginProfTier12 = "Crevasse de fer";
	Strings.PluginProfTier13 = "Minas Ithil";
	Strings.PluginProfTier14 = "Gundabad";
	Strings.PluginProfTier15 = "Umbar";
	------------------------------------------------------------------------------------------
	-- Instances names --
	------------------------------------------------------------------------------------------
	Strings.Plugininstances1 = "Great Barrow: The Maze";
	------------------------------------------------------------------------------------------
	-- options window --
	------------------------------------------------------------------------------------------
	Strings.PluginOptionsText = "WhereToPlay Options";
	Strings.PluginOption1 = "Afficher le Tier de farming de mat\195\169riaux";
	Strings.PluginOption2 = "Afficher l'icone";
	Strings.PluginOption3 = "Afficher les instances du monde";
	Strings.PluginOptionValidate = "Valider les changements";
	Strings.PluginOptionShowWindow = "Affiche la fen\195\168tre d'options";
	------------------------------------------------------------------------------------------
	-- zones --
	-- lors de l'ajout d'une nouvelle zone-- ne pas oublie de mettre a jour la function 
	-- ReturnTier(i)
	------------------------------------------------------------------------------------------
	ZonesNamesAndLevel = {
        zones1 = {mapHex = 0x41008137, texte = "La compt\195\170", lvl = "1 - 15", souCat = false},
        zones2 = {mapHex = 0x4100812c, texte = "Ered Luin", lvl = "1 - 15", souCat = false},
		zones3 = {mapHex = 0x4121ea2e, texte = "les Noues des cygnes", lvl = "1 - 15", souCat = false}, -- new in U34
		zones4 = {mapHex = 0x41008136, texte = "Pays du Bree", lvl = "1 - 25, 30", souCat = false},
        zones5 = {mapHex = 0x41008136, texte = "Archet Dale, Combe, Staddle", lvl = "1 - 15", souCat = true},
        zones6 = {mapHex = 0x41008136, texte = "Pays du Bree (nord), Nen Harn", lvl = "15 - 21", souCat = true},
		zones7 = {mapHex = 0x4110a842, texte = "Haut des Galgals Sud", lvl = "20 - 25", souCat = true},
		zones8 = {mapHex = 0x41220239, texte = "Cardolan", lvl = "20 - 25", souCat = true}, -- new in U34
		zones9 = {mapHex = 0x4121994d, texte = "La Comt\195\170 lointaine", lvl = "20 - 23", souCat = false},
        zones10 = {mapHex = 0x41008130, texte = "Terres Solitaire", lvl = "20 - 35", souCat = false},
        zones11 = {mapHex = 0x41008130, texte = "L'auberge abandonn\195\170e", lvl = "18 - 23", souCat = true},
		zones12 = {mapHex = 0x41008130, texte = "Ost Guruth", lvl = "20 - 30", souCat = true},
		zones13 = {mapHex = 0x41008130, texte = "Garth Agarwen", lvl = "31 - 35", souCat = true},
		zones14 = {mapHex = 0x41008132, texte = "Haut du nord", lvl = "20 - 35", souCat = false},
		zones15 = {mapHex = 0x41008132, texte = "Esteld\195\173n (ouest)", lvl = "20 - 25", souCat = true},
		zones16 = {mapHex = 0x41008132, texte = "Esteld\195\173n (est)", lvl = "25 - 35", souCat = true},
		zones17 = {mapHex = 0x41008132, texte = "Fornost", lvl = "25 - 35", souCat = true},
		zones18 = {mapHex = 0x4101f084, texte = "Evendim", lvl = "30 - 40", souCat = false},
		zones19 = {mapHex = 0x412169ae, texte = "Trou\195\170e des trolls", lvl = "35 - 40", souCat = false},
		zones20 = {mapHex = 0x4100812f, texte = "Monts brumeux", lvl = "40 - 45", souCat = false},
		zones21 = {mapHex = 0x41216d0e, texte = "L'Angle de Mitheithel", lvl = "40 - 45", souCat = false},
		zones22 = {mapHex = 0x41008131, texte = "Angmar", lvl = "40 - 50", souCat = false},
		zones23 = {mapHex = 0x4122f2ed, texte = "Carn D\195\187m", lvl = "40 - 50", souCat = false},
		zones24 = {mapHex = 0x410e3f46, texte = "Forochel", lvl = "44 - 50", souCat = false},
		zones25 = {mapHex = 0x4120c7c8, texte = "Les Bois Sauvages", lvl = "45 - 50", souCat = false},
		zones26 = {mapHex = 0x410e8686, texte = "Eregion", lvl = "48 - 53", souCat = false},
		zones27 = {mapHex = 0x410e8708, texte = "Moria", lvl = "51 - 60", souCat = false},
		zones28 = {mapHex = 0x410e871c, texte = "Grande prospection", lvl = "51", souCat = true},
		zones29 = {mapHex = 0x410e8719, texte = "Filons de la corne d'argent", lvl = "52", souCat = true},
		zones30 = {mapHex = 0x410e871d, texte = "Voie du Durin", lvl = "53", souCat = true},
		zones31 = {mapHex = 0x410e871e, texte = "Zirakzigil", lvl = "53 - 54", souCat = true},
		zones32 = {mapHex = 0x410e8717, texte = "Syst\195\168me hydrolique", lvl = "54", souCat = true},
		zones33 = {mapHex = 0x410e871b, texte = "Zelem-Melek", lvl = "55", souCat = true},
		zones34 = {mapHex = 0x410e8718, texte = "Filons du rubicorne", lvl = "56", souCat = true},
		zones35 = {mapHex = 0x410e8716, texte = "Profondeurs ardentes", lvl = "57", souCat = true},
		zones36 = {mapHex = 0x410e871a, texte = "Nud-melek", lvl = "58", souCat = true},
		zones37 = {mapHex = 0x410e8715, texte = "Fondations de pierre", lvl = "59", souCat = true},
		zones38 = {mapHex = 0x410e8707, texte = "Lothl\195\179rien", lvl = "60", souCat = false},
		zones39 = {mapHex = 0x41100DF2, texte = "La for\195\170t noire", lvl = "61 - 65", souCat = false},
		zones40 = {mapHex = 0x411041a4, texte = "Enedwaith", lvl = "61 - 65", souCat = false},
		zones41 = {mapHex = 0x4111961d, texte = "Pays de Dun", lvl = "65 - 75", souCat = false},
		zones42 = {mapHex = 0x4111961d, texte = "Trum Dreng", lvl = "66", souCat = true},
		zones43 = {mapHex = 0x4111961d, texte = "Vall\195\170e des os", lvl = "66", souCat = true},
		zones44 = {mapHex =  0x4111961d, texte = "Pren Gwydh", lvl = "67", souCat = true},
		zones45 = {mapHex =  0x4111b941, texte = "T\195\162l Methedras", lvl = "68 - 72", souCat = true},
		zones46 = {mapHex =  0x4111961d, texte = "Apreterre", lvl = "69 - 71", souCat = true},
		zones47 = {mapHex =  0x4111961d, texte = "Marais de Dun", lvl = "70", souCat = true},
		zones48 = {mapHex =  0x4111961d, texte = "Carreglyn", lvl = "71", souCat = true},
		zones49 = {mapHex =  0x4111961d, texte = "Tristebois", lvl = "72", souCat = true},
		zones50 = {mapHex =  0x41116d55, texte = "Trou\195\170e du Rohan", lvl = "73 - 74", souCat = false},
		zones51 = {mapHex =  0x41116d55, texte = "Vall\195\170e d'isen", lvl = "73", souCat = true},
		zones52 = {mapHex =  0x41116d55, texte = "Terretomb\195\170", lvl = "74", souCat = true},
		zones53 = {mapHex =  0x41119607, texte = "Nan Curun\195\173r", lvl = "72 - 75", souCat = false},
		zones54 = {mapHex =  0x4111e1c0, texte = "Le grand Fleuve", lvl = "70 - 75", souCat = false},
		zones55 = {mapHex =  0x41129eb7, texte = "Rohan Est", lvl = "75 - 85", souCat = false},
		zones56 = {mapHex =  0x4112d1de, texte = "Le plateau", lvl = "75 - 76", souCat = true},
		zones57 = {mapHex =  0x4112d1dc, texte = "Le mur de l'est", lvl = "76 - 77", souCat = true},
		zones58 = {mapHex =  0x4112d1e0, texte = "Norcrofts", lvl = "78 - 80", souCat = true},
		zones59 = {mapHex =  0x4112d1e1, texte = "Vall\195\170e de l'entalluve", lvl = "80 - 82", souCat = true},
		zones60 = {mapHex =  0x4112d1df, texte = "Sutcrofts", lvl = "83 - 85", souCat = true},
		zones61 = {mapHex =  0x411375af, texte = "Les Landes farouches", lvl = "85", souCat = true},
		zones62 = {mapHex =  0x4113C325, texte = "Rohan Ouest", lvl = "85 - 95", souCat = false},
		zones63 = {mapHex =  0x4113C31F, texte = "Terre-du-Roi", lvl = "85 - 88", souCat = true},
		zones64 = {mapHex =  0x4113C321, texte = "Estfolde", lvl = "88 - 90", souCat = true},
		zones65 = {mapHex =  0x4113C320, texte = "Grands-Arpents", lvl = "90 - 91", souCat = true},
		zones66 = {mapHex =  0x4113C322, texte = "Pierreval", lvl = "91 - 93", souCat = true},
		zones67 = {mapHex =  0x4113C324, texte = "Ouestfolde", lvl = "93 - 95", souCat = true},
		zones68 = {mapHex =  0x4114BEAA, texte = "For\195\170t d'Ent", lvl = "95", souCat = true},
		zones69 = {mapHex =  0x411538df, texte = "Ouest du Gondor", lvl = "95 - 100", souCat = false},
		zones70 = {mapHex =  0x41154eed, texte = "Vall\195\170e de la racine noire", lvl = "95 - 97", souCat = true},
		zones71 = {mapHex =  0x41154eec, texte = "Lamedon", lvl = "97 - 98", souCat = true},
		zones72 = {mapHex =  0x41154eeb, texte = "Havres de Belfalas", lvl = "98 - 100", souCat = true},
		zones73 = {mapHex =  0x41158979, texte = "Les marais des morts", lvl = "100", souCat = false},
		zones74 = {mapHex =  0x4115b943, texte = "Centre du Gondor", lvl = "100", souCat = false},
		zones75 = {mapHex =  0x4115b93f, texte = "Val de Ringl\195\179", lvl = "100", souCat = true},
		zones76 = {mapHex =  0x4115b945, texte = "Dor-en-Ernil", lvl = "100", souCat = true},
		zones77 = {mapHex =  0x4115b944, texte = "Lebennin", lvl = "100", souCat = true},
		zones78 = {mapHex =  0x4115ee35, texte = "Est du Gondor", lvl = "100", souCat = false},
		zones79 = {mapHex =  0x4115ee38, texte = "Haut-Lebennin", lvl = "100", souCat = true},
		zones80 = {mapHex =  0x4115ee3c, texte = "Lossarnach", lvl = "100", souCat = true},
		zones81 = {mapHex =  0x4115ee3a, texte = "Ithilien du sud", lvl = "100", souCat = true},
		zones82 = {mapHex =  0x4115ee41, texte = "Osgiliath", lvl = "100", souCat = true},
		zones83 = {mapHex =  0x411656f1, texte = "Ancien An\195\179rien", lvl = "100", souCat = false},
		zones84 = {mapHex =  0x411656ee, texte = "Talath Anor", lvl = "100", souCat = true},
		zones85 = {mapHex =  0x411656f0, texte = "Pelennor", lvl = "100", souCat = true},
		zones86 = {mapHex =  0x411656ef, texte = "Minas Tirith", lvl = "100", souCat = true},
		zones87 = {mapHex =  0x4116af91, texte = "Lointain An\195\179rien", lvl = "100 - 104", souCat = false},
		zones88 = {mapHex =  0x4116af90, texte = "Taur Dr\195\186adan", lvl = "101 - 102", souCat = true},
		zones89 = {mapHex =  0x4116af8b, texte = "Les collines des feux", lvl = "103 - 104", souCat = true},
		zones90 = {mapHex =  0x4116B18E, texte = "Battle of Pelennor Fields", lvl = "105", souCat = true},
		zones91 = {mapHex =  0x411656f1, texte = "An\195\179rien (Apr\195\168s la bataille)", lvl = "105", souCat = false},
		zones92 = {mapHex =  0x4119389d, texte = "Minas Tirith (Apr\195\168s la bataille)", lvl = "105", souCat = true},
		zones93 = {mapHex =  0x411a42e8, texte = "Pelennor (Apr\195\168s la bataille)", lvl = "105", souCat = true},
		zones94 = {mapHex =  0x411a42e5, texte = "Osgiliath (Apr\195\168s la bataille)", lvl = "105", souCat = true},
		zones95 = {mapHex =  0x411a42e7, texte = "Ithilien", lvl = "105", souCat = false},
		zones96 = {mapHex =  0x411a42e7, texte = "Ithilien du nord", lvl = "105", souCat = true},
		zones97 = {mapHex =  0x411b84d4, texte = "Le Plateau de Gorgoroth", lvl = "105 - 115", souCat = false},
		zones98 = {mapHex =  0x411b9591, texte = "Ud\195\187n", lvl = "106 -108", souCat = true},
		zones99 = {mapHex =  0x411b958d, texte = "Dor Amarth", lvl = "108 -109", souCat = true},
		zones100 = {mapHex =  0x411b958e, texte = "Lhingris", lvl = "110 - 111", souCat = true},
		zones101 = {mapHex =  0x411b9590, texte = "Talath \195\186rui", lvl = "112 - 113", souCat = true},
		zones102 = {mapHex =  0x411b958c, texte = "Agarnaith", lvl = "114 - 115", souCat = true},
		zones103 = {mapHex =  0x411c2de2, texte = "Eryn lasgalen et des terres de Dale", lvl = "115", souCat = false},
		zones104 = {mapHex =  0x411c2de2, texte = "Eryn Lasgalen", lvl = "115", souCat = true},
		zones105 = {mapHex =  0x411c2de2, texte = "Terres de Dale", lvl = "115", souCat = true},
		zones106 = {mapHex =  0x411CD4B8, texte = "Bastions des Nains", lvl = "115 - 120", souCat = false},
		zones107 = {mapHex =  0x411CD4B8, texte = "Monts de fer", lvl = "115 - 117", souCat = true},
		zones108 = {mapHex =  0x411c8da9, texte = "Ered Mithrin", lvl = "117 - 120", souCat = true},
		zones109 = {mapHex =  0x411da4a0, texte = "Le Val d'Anduin", lvl = "120", souCat = false},
		zones110 = {mapHex =  0x411e9a41, texte = "Vall\195\170e de Morgul", lvl = "120 - 130", souCat = false},
		zones111 = {mapHex =  0x411e9a43, texte = "Le si\195\168ge du Mordor", lvl = "120 - 122", souCat = true},
		zones112 = {mapHex =  0x411e9a41, texte = "Rath D\195\186ath", lvl = "123 - 124", souCat = true},
		zones113 = {mapHex =  0x411e9a41, texte = "Cirith Ungol", lvl = "125", souCat = true},
		zones114 = {mapHex =  0x411e9a42, texte = "Minas Morgul", lvl = "126 - 130", souCat = true},
		zones115 = {mapHex =  0x411ee769, texte = "Puits du Long Fleuve", lvl = "130", souCat = false},
		zones116 = {mapHex =  0x411fb86f, texte = "Le Val-d'A\195\175eul", lvl = "130", souCat = false},
		zones117 = {mapHex =  0x41008133, texte = "Landes d'Etten (PvMP)", lvl = "130", souCat = false},
		zones118 = {mapHex =  0x41162479, texte = "La dislocation d'Osgiliath (PvMP)", lvl = "130", souCat = false},
		zones119 = {mapHex =  0x4121166a, texte = "Le mont Gundabad", lvl = "130 - 140", souCat = false},
		zones120 = {mapHex =  0x4121166f, texte = "Les profondeurs de Gundabad", lvl = "130 - 131", souCat = true},
		zones121 = {mapHex =  0x41211669, texte = "Matugarde", lvl = "131 - 132", souCat = true},
		zones122 = {mapHex =  0x4121166d, texte = "Tordesoif", lvl = "133 - 134", souCat = true},
		zones123 = {mapHex =  0x4121166c, texte = "La fosse de m\195\162cherocs", lvl = "134 - 135", souCat = true},
		zones124 = {mapHex =  0x41211668, texte = "C\195\162r Bronach", lvl = "135 - 136", souCat = true},
		zones125 = {mapHex =  0x41211670, texte = "Sombrelac", lvl = "137 - 138", souCat = true},
		zones126 = {mapHex =  0x4121166b, texte = "Fond-de-Fosse", lvl = "138 - 139", souCat = true},
		zones127 = {mapHex =  0x4121166e, texte = "Tassau-terres", lvl = "139 - 140", souCat = true},
		zones128 = {mapHex =  0x41231343, texte = "Gondor Royal", lvl = "140 - 143", souCat = true},
		zones129 = {mapHex =  0x4124848f, texte = "Gondor Ext\195\169rieur", lvl = "143 - 145", souCat = true},
		zones130 = {mapHex =  0x41248399, texte = "Les \195\174les du bouclier", lvl = "145 - 147", souCat = true},
		zones131 = {mapHex =  0x41248eef, texte = "Cap d'Umbar", lvl = "147 - 150", souCat = true}
        };
end
