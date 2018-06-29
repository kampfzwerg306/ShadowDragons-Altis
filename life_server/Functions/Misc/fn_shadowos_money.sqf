/*
	File: fn_KBSbook_money.sqf
	Author: Patrick 'snajdan' Knecht
	
	Description:
	shows the current money on your hand and bank
*/
private["_display","_near"];

disableSerialization;
waitUntil {!isNull findDisplay 2001};

[] call life_fnc_p_updateMenu;

_display = findDisplay 2001;
_near = _display displayCtrl 2022;
_mstatus = _display displayCtrl 2015;

//Near players
_near_units = [];
{if(player distance _x < 10) then {_near_units pushBack _x};} foreach playableUnits;
{
	if(!isNull _x && alive _x && player distance _x < 10 && _x != player) then
	{
		_near lbAdd format["%1 - %2",_x getVariable["realname",name _x], side _x];
		_near lbSetData [(lbSize _near)-1,str(_x)];
	};
} foreach _near_units;

_mstatus ctrlSetStructuredText parseText format["<img size='1.5' image='icons\bank.paa'/><br/><t size='1.0px'>$%1</t><br/><img size='1.5' image='icons\money.paa'/><br/><t size='1.0px'>$%2</t>",[life_atmcash] call life_fnc_numberText,[life_cash] call life_fnc_numberText];