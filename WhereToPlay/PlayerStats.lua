------------------------------------------------------------------------------------------
-- PlayerStats file
-- Written by Homeopatix
-- 17 avril 2021
------------------------------------------------------------------------------------------
-- define player stats
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- Define vars --
------------------------------------------------------------------------------------------
Player = Turbine.Gameplay.LocalPlayer.GetInstance();
PlayerName = Player:GetName();
PlayerAlign = Player:GetAlignment(); --1: Free People / 2: Monster Play
PlayerLvl = Player:GetLevel();
PlayerRace = Player:GetRace();
PlayerClass = Player:GetClass();

settings["playerLvl"]["value"] = PlayerLvl;

valCheck = 200;
NbrEntries = 131;

------------------------------------------------------------------------------------------
-- load all the dats needed
------------------------------------------------------------------------------------------
LoadSettings();


local Today = Turbine.Engine.GetDate();
local TodayDay = Today.Day;
local TodayMonth = Today.Month;
local TodayYear = Today.Year;