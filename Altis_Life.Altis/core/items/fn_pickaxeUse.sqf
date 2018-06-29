/*
	File: fn_pickaxeUse.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for pickaxe in mining.
*/
closeDialog 0;

//diag_log "PICKAXE USE";



private["_mine","_itemWeight","_diff","_itemName","_val"];
// <= not needed if you have key handler check but two are better than one
switch (true) do
{
	case (player distance (getMarkerPos "lead_1") < 30): {_mine = "copperore"; _val = ceil(random(5));};
	case (player distance (getMarkerPos "lead_1_1") < 30): {_mine = "copperore"; _val = ceil(random(5));};
	case (player distance (getMarkerPos "iron_1") < 30): {_mine = "ironore"; _val = ceil(random(5));};
	case (player distance (getMarkerPos "salt_1") < 120) : {_mine = "salt"; _val = ceil(random(4));};
	case (player distance (getMarkerPos "sand_1") < 75) : {_mine = "sand"; _val = ceil(random(6));};
	case (player distance (getMarkerPos "diamond_1") < 75): {_mine = "diamond"; _val = ceil(random(3));};
	case (player distance (getMarkerPos "diamond_2") < 75): {_mine = "diamond"; _val = ceil(random(3));};
	case (player distance (getMarkerPos "rock_1") < 50): {_mine = "rock"; _val = ceil(random(3));};
	default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {hint localize "STR_ISTR_Pick_NotNear"};
if(vehicle player != player) exitWith {hint localize "STR_ISTR_Pick_MineVeh";};

_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_gather = true;

player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";

if(([true,_mine,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_ISTR_Pick_Success",_itemName,_diff],"PLAIN"];
};
sleep 2;
life_action_gather = false;
