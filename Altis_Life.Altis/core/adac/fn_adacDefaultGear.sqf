/*
	File: fn_copLoadout.sqf
	Author: Tobias 'Xetoxyc' Sittenauer

	Description:
	Loads the cops out with the default gear.
*/
removeAllContainers player;
removeAllWeapons player;
player addUniform  "U_IG_Guerilla2_1";
player addVest "V_Rangemaster_belt";
player addBackpack "B_FieldPack_oucamo_Repair";
player addItem "ToolKit";
player addItem "ToolKit";
player addItem "ToolKit";
player addItem "ToolKit";
player addItem "ToolKit";
removeGoggles player;
removeHeadGear player;
if(hmd player != "") then {
	player unlinkItem (hmd player);
};

[] call life_fnc_saveGear;