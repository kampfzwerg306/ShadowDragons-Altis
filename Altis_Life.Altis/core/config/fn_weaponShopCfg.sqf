#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/


//getPlayerUID player
//player getVariable["realname",name player]
//syndicate Title

private["_shop", "_coplevel"];




_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.




switch(_shop) do
{
	case "security":
	{
		switch(true) do
		{
			case (is_member_of_life_gang_five0): 
			{
				call life_fnc_weaponShopCfgFive0;
			};
			default {"Du bist kein Mitglied von Five-0"};
		};
	};
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide == independent): {
				call life_fnc_weaponShopCfgMedRank1;
			};
			default {
				"Du bist kein Rettungsdienstmitarbeiter";
			};
		};
	};
	case "adac_basic":
	{
		switch (true) do 
		{
			case (playerSide == east): {
				
				switch(__GETC__(life_adaclevel)) do
				{
					case 1: {call life_fnc_weaponShopCfgAdacRank1};
					case 2: {call life_fnc_weaponShopCfgAdacRank2};
					case 3: {call life_fnc_weaponShopCfgAdacRank3};
					case 4: {call life_fnc_weaponShopCfgAdacRank4};
					case 5: {call life_fnc_weaponShopCfgAdacRank5};
				};
			};
			default {
				"Du bist kein ADAC Mitarbeiter"
			};
		};
	};

	case "cop_shop":
	{
		switch(true) do
		{
			case (playerSide == west): {

				switch(__GETC__(life_coplevel)) do
				{
					case 1: {call life_fnc_weaponShopCfgCopRank1};
					case 2: {call life_fnc_weaponShopCfgCopRank2};
					case 3: {call life_fnc_weaponShopCfgCopRank3};
					case 4: {call life_fnc_weaponShopCfgCopRank4};
					case 5: {call life_fnc_weaponShopCfgCopRank5};
					case 6: {call life_fnc_weaponShopCfgCopRank6};
					case 7: {call life_fnc_weaponShopCfgCopRank7};
				};
			};
		};
	};

	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_rebel): {"Du brauchst erst ein Rebellentraining!"};
			default
			{
				call life_fnc_weaponShopCfgRebel;
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_gun): {"Du benötigst einen Waffenschein"};
			default
			{
				call life_fnc_weaponShopCfgCivilian;
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			default
			{
				call life_fnc_weaponShopCfgHideout;
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ItemCompass",nil,100],
				["ItemRadio",nil,100],
				["ItemMap",nil,100],
				["ToolKit",nil,2500],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
	case "gas":
	{
		["Altis General Store",
			[
				["Binocular",nil,300],
				["ItemGPS",nil,100],
				["ToolKit",nil,3500],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
