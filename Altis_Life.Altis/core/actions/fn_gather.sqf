/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for gathering.
*/
closeDialog 0;
private["_gather","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone"];
_resourceZones = ["apple_1","apple_2","apple_3","apple_3_1","apple_4","peaches_1","peaches_1_1","peaches_2","peaches_3","peaches_4","heroin_1","cocaine_1","cocaine_2","cocaine_3","weed_1","weed_2","meth_1","uran_1","grape_1","tabak_1","oil_1","oil_2","oil_3","diamond_1","diamond_2","turtle_1","turtle_2","turtle_3","rock_1","iron_1","salt_1","sand_1","hops_1","rye_1","yeast_1"];
_zone = "";


{
	if(player distance (getMarkerPos _x) < 75) exitWith {_zone = _x;};

} foreach _resourceZones;

if(life_action_gathering) exitWith {}; //Action is in use, exit to prevent spamming.
life_action_gathering = true;
//Find out what zone we're near

if(_zone == "") exitWith {
	hint localize "STR_NOTF_notNearResource";
	life_action_gather = false;
	life_action_gathering = false;
};

//Get the resource that will be gathered from the zone name...
switch(true) do {
	case (_zone in ["apple_1","apple_2","apple_3","apple_3_1","apple_4"]): {_gather = "apple"; _val = 5;};
	case (_zone in ["peaches_1","peaches_1_1","peaches_2","peaches_3","peaches_4"]): {_gather = "peach"; _val = 5;};
	case (_zone in ["heroin_1"]): {_gather = "heroinu"; _val = 3;};
	case (_zone in ["cocaine_1","cocaine_2","cocaine_3"]): {_gather = "cocaine"; _val = 3;};
	case (_zone in ["weed_1","weed_2"]): {_gather = "cannabis"; _val = 3;};
	// CUSTOM JOBS
	case (_zone in ["meth_1"]): {_gather = "methu"; _val = 3;};
	case (_zone in ["oil_1","oil_2","oil_3"]): {_gather = "oil"; _val = 4;};
	case (_zone in ["uran_1"]): {_gather = "uran"; _val = 3;};
	case (_zone in ["grape_1"]): {_gather = "grapes"; _val = 4;};
	case (_zone in ["tabak_1"]): {_gather = "tabak"; _val = 5;};
	case (_zone in ["diamond_1","diamond_2"]): {_gather = "diamond"; _val = 3;};
	case (_zone in ["turtle_1","turtle_2","turtle_3"]): {_gather = "turtle"; _val = 3;};
	case (_zone in ["rock_1"]): {_gather = "rock"; _val = 3;};
	case (_zone in ["iron_1"]): {_gather = "ironore"; _val = 3;};
	case (_zone in ["salt_1"]): {_gather = "salt"; _val = 3;};
	case (_zone in ["sand_1"]): {_gather = "sand"; _val = 3;};
	case (_zone in ["hops_1"]): {_gather = "hops"; _val = 3;};
	case (_zone in ["rye_1"]): {_gather = "rye"; _val = 3;};
	case (_zone in ["yeast_1"]): {_gather = "yeast"; _val = 3;};


	default {""};
};
//gather check??
if(vehicle player != player) exitWith {
	hint localize "STR_NOTF_GatherVeh";
	life_action_gather = false;
	life_action_gathering = false;
};

_diff = [_gather,ceil(random(_val)),life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {
	hint localize "STR_NOTF_InvFull";
	life_action_gather = false;
	life_action_gathering = false;
};

life_action_gather = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_gather,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_NOTF_Gather_Success",_itemName,_diff],"PLAIN"];
};

life_action_gather = false;
life_action_gathering = false;