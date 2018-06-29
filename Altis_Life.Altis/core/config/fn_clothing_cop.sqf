#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
//Uniforms
	case 0:
	{
		if(__GETC__(life_coplevel) > 0) then
		{
		_ret set[count _ret,["U_Rangemaster","Steifenuniform",25]];
		};
		if(__GETC__(life_coplevel) > 1) then
		{
		_ret set[count _ret,["U_BG_Guerilla2_1","Streifenuniform 2",25]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["U_B_Wetsuit",nil,1500]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam",nil,1500]];
		};
	};

//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret set[count _ret,["H_Watchcap_blk",nil,75]];
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
			_ret set[count _ret,["H_Cap_blk",nil,100]];
		};

		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,100]];
			_ret set[count _ret,["H_Beret_ocamo",nil,75]];
		};

		if(__GETC__(life_coplevel) > 2) then
		{
		    _ret set[count _ret,["H_HelmetB",nil,120]];
		    _ret set[count _ret,["H_BandMask_khk",nil,75]];
		    _ret set[count _ret,["H_HelmetB_black",nil,175]];
		    _ret set[count _ret,["H_HelmetB_plain_mcamo",nil,75]];
		    _ret set[count _ret,["H_PilotHelmetHeli_B",nil,75]];
			_ret set[count _ret,["H_PilotHelmetHeli_O",nil,75]];
		};

		if(__GETC__(life_coplevel) > 3) then
		{
		    _ret set[count _ret,["H_CrewHelmetHeli_B",nil,120]];
		    _ret set[count _ret,["H_HelmetB_light_black",nil,175]];
		    _ret set[count _ret,["H_Cap_headphones",nil,75]];
		    _ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
		    _ret set[count _ret,["H_Booniehat_khk_hs",nil,80]];
		    _ret set[count _ret,["H_BandMask_blk",nil,100]];
			_ret set[count _ret,["H_Beret_02",nil,100]];
			_ret set[count _ret,["H_Beret_Colonel",nil,100]];
		};

		[] call life_fnc_updateClothes;
	};

	//Glasses
	case 2:
	{
		_ret =
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Diving",nil,500],
			["H_BandMask_blk",nil,100],
			["G_Combat",nil,55]
		];
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["G_Bandanna_aviator",nil,25]];
			_ret set[count _ret,["G_Bandanna_beast",nil,25]];
			_ret set[count _ret,["G_Bandanna_blk",nil,25]];
			_ret set[count _ret,["G_Bandanna_shades",nil,25]];
		};
	};

//Vest
	case 3:
	{

		if(__GETC__(life_coplevel) > 0) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
			_ret set[count _ret,["V_RebreatherIR",nil,800]];
		};

		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["V_TacVest_blk_POLICE",nil,1300]];
			_ret set[count _ret,["V_Chestrig_blk",nil,1450]];
		};

		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["V_TacVest_blk",nil,1450]];
			_ret set[count _ret,["V_RebreatherIA",nil,1450]];
		};

		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,1500]];
			_ret set[count _ret,["V_BandollierB_blk",nil,1450]];
			_ret set[count _ret,["V_TacVestIR_blk",nil,1450]];
		};

		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["V_TacVestIR_blk",nil,1450]];
		};

	};

//Backpacks
	case 4:
	{
		_ret =
		[
			["B_OutdoorPack_blk",nil,800],
			["B_FieldPack_blk",nil,500],
			["B_Bergen_blk",nil,2500],
			["B_Carryall_khk",nil,3500],
			["B_Carryall_khk",nil,5000]
		];

		if(__GETC__(life_coplevel) > 3) then{
			_ret = _ret + [
				["B_AssaultPack_blk",nil,700]
			];
		};
	};
};
_ret;