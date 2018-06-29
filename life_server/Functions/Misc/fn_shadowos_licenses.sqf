/*
	File: fn_KBSbook_licenses.sqf
	Author: Patrick 'snajdan' Knecht
	
	Description:
	shows all current licenses in your licensemodul from your kbsbook
*/
private["_display","_near"];

disableSerialization;
waitUntil {!isNull findDisplay 2001};

[] call life_fnc_p_updateMenu;

_display = findDisplay 2001;
_lic = _display displayCtrl 2014;

_side = switch(playerSide) do {case west:{"cop"}; case civilian:{"civ"}; case independent:{"medic"}; case east:{"ADAC"};};

{
	if((_x select 1) == _side) then
	{
		_str = [_x select 0] call life_fnc_varToStr;
		_val = missionNamespace getVariable [(_x select 0), false];
		if(_val && typeName _str == "STRING") then
		{
			_lic lbAdd _str;
		};
	};
} foreach life_licenses;