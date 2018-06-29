#include <macro.h>
/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter", "_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret = [
			["U_IG_Guerilla1_1",nil,5000],
			["U_I_G_Story_Protagonist_F",nil,7500],
			["U_I_G_resistanceLeader_F",nil,11500],
			["U_O_SpecopsUniform_ocamo",nil,17500],
			["U_O_PilotCoveralls",nil,15610],
			["U_IG_leader","Guerilla Leader",15340],
			["U_O_GhillieSuit",nil,50000],
			["U_O_CombatUniform_oucamo",nil,15000],
			["U_O_OfficerUniform_ocamo",nil,50000],
			["U_I_OfficerUniform",nil,15000],
			["U_I_GhillieSuit",nil,50000],

			["U_B_survival_uniform",nil,50000],
			["U_B_CTRG_1",nil,50000],
			["U_B_CTRG_2",nil,50000],
			["U_BG_Guerilla1_1",nil,50000]
			


		];
		if(is_member_of_life_gang_five0) then {
			
		  _ret = _ret + [
		  			["U_B_CombatUniform_mcam", "SD COMBAT UNIFORM", 1800],
		  			["U_Rangemaster", "SD STANDARD UNIFORM", 1800],
		  			["U_NikosAgedBody", "SD Fine Dress", 1800]
	  			
		  		]
		};		

	};
	
	//Hats
	case 1:
	{
		_ret = [
			["H_ShemagOpen_tan",nil,850],
			["H_PilotHelmetFighter_O",nil,2500],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
			["H_HelmetO_ocamo",nil,2500],
			["H_MilCap_oucamo",nil,1200],
			["H_Bandanna_camo",nil,650],
			["H_Booniehat_khk_hs",nil,650],
			["H_Cap_oli_hs",nil,650]
		];

		if(is_member_of_life_gang_five0) then {
			
		  _ret = _ret + [
				
				["H_Bandanna_khk_hs",nil,650],
				["H_Beret_blk",nil,650],
				["H_MilCap_oucamo",nil,650],
				["H_Bandanna_camo",nil,650],
				["H_ShemagOpen_tan",nil,650],
				["H_Shemag_olive",nil,650],
				["H_ShemagOpen_khk",nil,650],
				["H_Shemag_olive_hs",nil,650],
				["H_Shemag_khk",nil,650],
				["H_Shemag_tan",nil,650],
				["H_Shemag_olive",nil,650],
				["H_CrewHelmetHeli_I",nil,650],
				["H_PilotHelmetFighter_I",nil,650]
		  		]
		};	
	};
	
	//Glasses
	case 2:
	{
		_ret = [
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Balaclava_blk",nil,50],
			["G_Balaclava_combat",nil,50],
			["G_Balaclava_lowprofile",nil,50]
		];
		if(is_member_of_life_gang_five0) then {
			
		  _ret = _ret + [
				["G_Bandanna_khk",nil,100],
				["G_Bandanna_oli",nil,100],
				["G_Bandanna_sport",nil,100],
				["G_Bandanna_tan",nil,100]

		  		]
		};	

	};
	
	//Vest
	case 3:
	{
		_ret = [
			["V_TacVest_khk",nil,12500],
			["V_BandollierB_cbr",nil,12500],
			["V_PlateCarrierIA1_dgtl",nil,12500],
			["V_PlateCarrierIA2_dgtl",nil,12500],
			["V_I_G_resistanceLeader_F",nil,4500],
			["V_HarnessOGL_gry",nil,4500],
			["V_BandollierB_cbr",nil,4500],
			["V_HarnessO_brn",nil,7500]
		];
		if(is_member_of_life_gang_five0) then {
			_ret = _ret + [
				["V_TacVest_blk",nil,1450],
				["V_Rangemaster_belt",nil,800],
				["V_BandollierB_blk",nil,1450]
			]
		}
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
			["B_Carryall_khk",nil,5000]
		];
		if(is_member_of_life_gang_five0) then {
			_ret = _ret + [
				["B_OutdoorPack_blk",nil,800],
				["B_FieldPack_blk",nil,500],
				["B_AssaultPack_blk",nil,700],
				["B_Bergen_blk",nil,2500],
				["B_Carryall_cbr",nil,3500],
				["B_Parachute",nil,5000]
			];

		};

	};
};
_ret;