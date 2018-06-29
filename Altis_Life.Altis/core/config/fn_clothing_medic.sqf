#include <macro.h>
/*
	File: fn_clothing_med.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Medic shop.
*/
private["_filter", "_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Heiliges Blut Arbeitsklamotten"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret = [
			["U_Rangemaster","Rekruten Anzug",800],
			["U_IG_Guerilla2_2","Uniform 2",800],
			["U_IG_Guerilla2_3","Uniform 3",800],
			["U_I_Wetsuit","Tauchenanzug",1200]
		];
	};
	
	//Hats
	case 1:
	{
		_ret = [
			["H_Bandanna_camo","Camo Bandanna",120],
			["H_Bandanna_surfer","Surfer Bandanna",130],
			["H_Bandanna_gry","Grey Bandanna",150],
			["H_Bandanna_cbr",nil,165],
			["H_Bandanna_surfer",nil,135],
			["H_Bandanna_khk","Khaki Bandanna",145],
			["H_Bandanna_sgg","Sage Bandanna",160],
			["H_StrawHat","Straw Fedora",225],
			["H_BandMask_blk","Hat & Bandanna",300],
			["H_Booniehat_tan",nil,425]
		];
	};
	
	//Glasses
	case 2:
	{
		_ret = [
			["G_I_Diving",nil,250],
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		_ret = [
			["V_Rangemaster_belt",nil,1000],
			["V_RebreatherIA",nil,3500]

		];
	};
	
	//Backpacks
	case 4:
	{
		_ret = [
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000],
			["B_Bergen_mcamo",nil,5000]
		];
	};
};
_ret;