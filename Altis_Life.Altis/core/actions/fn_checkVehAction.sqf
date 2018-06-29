/*
	File: fn_searchVehAction.sqf
*/
private["_vehicle","_data", _stringEscapePercent];
_vehicle = cursorTarget;
_stringEscapePercent = "%"; // Required to get the % sign into a formatted string.


if((_vehicle isKindOf "Car") || !(_vehicle isKindOf "Air") || !(_vehicle isKindOf "Ship")) then
{
	_owners = _vehicle getVariable "vehicle_info_owners";
	if(isNil {_owners}) exitWith {hint localize "STR_NOTF_VehCheat"; deleteVehicle _vehicle;};

	life_action_inUse = true;
	hint localize "STR_vInAct_Checking";
	uiSleep 3;
	life_action_inUse = false;

	if(player distance _vehicle > 10 || !alive player || !alive _vehicle) exitWith {hint localize "STR_NOTF_CheckVehFail";};
	_owners = [_owners] call life_fnc_vehicleOwners;
	
	if(_owners == "any<br/>") then
	{
		_owners = "No owners, impound it<br/>";
	};
	hint parseText format[localize "STR_vInAct_CheckVeh",ceil ((damage _vehicle) * 100), _stringEscapePercent];
};