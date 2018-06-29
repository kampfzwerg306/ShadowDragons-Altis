/*
	File: fn_chemlightUse.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Lets you hold chemlights in your hand!
*/
private["_color"];
_color = _this select 3;
if(!isNil "life_chemlight") exitWith {};

switch (_color) do
{
	case "red": {life_chemlight = "Chemlight_red"; player removeMagazine "Chemlight_red";};
	case "green": {life_chemlight = "Chemlight_green"; player removeMagazine "Chemlight_green";};
	case "yellow": {life_chemlight = "Chemlight_yellow"; player removeMagazine "Chemlight_yellow";};
	case "blue": {life_chemlight = "Chemlight_blue"; player removeMagazine "Chemlight_blue";};
};
[[life_chemlight,[0,0,0],0,"NONE",player] ,"life_fnc_createvehicle",false,false] spawn life_fnc_MP;
waituntil {!isnil "nok_createvehicle"};
life_chemlight = nok_createvehicle;
nok_createvehicle = nil;
life_chemlight attachTo[player,[0,0,0],"lefthand"];