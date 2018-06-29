/*
	File: fn_settingsMenu
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Setup the settings menu.
*/
if(isNull (findDisplay 2900)) then
{
	if(!createDialog "SettingsMenu") exitWith {hint "Something went wrong, the menu won't open?"};
};
 
disableSerialization;

ctrlSetText[2902, format["%1", tawvd_foot]];
ctrlSetText[2912, format["%1", tawvd_car]];
ctrlSetText[2922, format["%1", tawvd_air]];
ctrlSetText[2942, format["%1", tawvd_object]];

{ slidersetRange [_x,100,12000];} foreach [2901,2911,2921,2941];

{ ((findDisplay 2900) displayCtrl _x) sliderSetSpeed [100,100,100]; } foreach [2901,2911,2921,2941];

{
	sliderSetPosition[_x select 0, _x select 1];
} foreach [[2901,tawvd_foot],[2911,tawvd_car],[2921,tawvd_air],[2941,tawvd_object]];


if(tawvd_syncObject) then {
	ctrlEnable [2941,false];
	ctrlEnable [2942,false];
	sliderSetPosition [2941,0];
	ctrlSetText[2942, ""];
} else {
	ctrlEnable [2941,true];
	ctrlEnable [2942,true];
};



private["_display","_side","_tags","_objs","_schnee"];
_display = findDisplay 2900;
_side = _display displayCtrl 2971;
_tags = _display displayCtrl 2970;
_objs = _display displayCtrl 2972;
_schnee = _display displayCtrl 2973;
_licht = _display displayCtrl 2974;
_sync = _display displayCtrl 2931;
//_none = _display displayCtrl 2950;
_low = _display displayCtrl 2951;
_norm = _display displayCtrl 2952;
_high = _display displayCtrl 2953;

//_none ctrlSetTextColor [1,1,1,1];
_low ctrlSetTextColor [1,1,1,1];
_norm ctrlSetTextColor [1,1,1,1];
_high ctrlSetTextColor [1,1,1,1];
switch (tawvd_gras) do {
	case "" : {};
	//case "none" : {_none ctrlSetTextColor [0,1,0,1]};
	case "low" : {_low ctrlSetTextColor [0,1,0,1]};
	case "norm" : {_norm ctrlSetTextColor [0,1,0,1]};
	case "high" : {_high ctrlSetTextColor [0,1,0,1]};
};
if(tawvd_syncObject) then {
	_sync ctrlSetTextColor [0,1,0,1];
	_sync ctrlSetText "Sichtweite = Objektsicht";
	_sync buttonSetAction "tawvd_syncObject=false;[4,_this select 1] call life_fnc_s_onSliderChange;[] call life_fnc_settingsMenu;profileNamespace setVariable [""tawvd_syncObject"",tawvd_syncObject]";

} else {
	_sync ctrlSetTextColor [1,0,0,1];
	_sync ctrlSetText "Sichtweite = Objektsicht";
	_sync buttonSetAction "tawvd_syncObject=true;[4,_this select 1] call life_fnc_s_onSliderChange;[] call life_fnc_settingsMenu;profileNamespace setVariable [""tawvd_syncObject"",tawvd_syncObject]";
};
if(isNil "life_tagson") then {
	life_sidechat = true;
	life_tagson = true;
	life_revealObjects = true;
	life_schnee = true;
	life_licht = true;
	tawvd_syncObject = true;
};

if(life_revealObjects) then {
	_objs ctrlSetTextColor [0,1,0,1];
	_objs ctrlSetText "ON";
	_objs buttonSetAction "[LIFE_ID_RevealObjects,""onEachFrame""] call BIS_fnc_removeStackedEventHandler; life_revealObjects = false; [] call life_fnc_settingsMenu; profileNamespace setVariable [""life_revealObjects"",life_revealObjects]";
} else {
	_objs ctrlSetTextColor [1,0,0,1];
	_objs ctrlSetText "OFF";
	_objs buttonSetAction "LIFE_ID_RevealObjects = [""LIFE_RevealObjects"",""onEachFrame"",""life_fnc_revealObjects""] call BIS_fnc_addStackedEventHandler; life_revealObjects = true; [] call life_fnc_settingsMenu; profileNamespace setVariable [""life_revealObjects"",life_revealObjects]";
};

if(life_tagson) then {
	_tags ctrlSetTextColor [0,1,0,1];
	_tags ctrlSetText "ON";
	_tags buttonSetAction "[LIFE_ID_PlayerTags,""onEachFrame""] call BIS_fnc_removeStackedEventHandler; life_tagson = false; [] call life_fnc_settingsMenu; profileNamespace setVariable [""life_tagson"",life_tagson]";
} else {
	_tags ctrlSetTextColor [1,0,0,1];
	_tags ctrlSetText "OFF";
	_tags buttonSetAction "LIFE_ID_PlayerTags = [""LIFE_PlayerTags"",""onEachFrame"",""life_fnc_playerTags""] call BIS_fnc_addStackedEventHandler; life_tagson = true; [] call life_fnc_settingsMenu; profileNamespace setVariable [""life_tagson"",life_tagson]";
};

if(life_sidechat) then {
	_side ctrlSetTextColor [0,1,0,1];
	_side ctrlSetText "ON";
} else {
	_side ctrlSetTextColor [1,0,0,1];
	_side ctrlSetText "OFF";
};
if(life_schnee) then {
	_schnee ctrlSetTextColor [0,1,0,1];
	_schnee ctrlSetText "ON";
	_schnee buttonSetAction "life_schnee = false; deletevehicle snow;[] call life_fnc_settingsMenu;profileNamespace setVariable [""life_schnee"",life_schnee]";
} else {
	_schnee ctrlSetTextColor [1,0,0,1];
	_schnee ctrlSetText "OFF";
	_schnee buttonSetAction "life_schnee = true; [] call nok_fnc_schnee;[] call life_fnc_settingsMenu;profileNamespace setVariable [""life_schnee"",life_schnee]";
};
if(life_licht) then {
	_licht ctrlSetTextColor [0,1,0,1];
	_licht ctrlSetText "ON";
	_licht buttonSetAction "life_licht = false;[] call life_fnc_settingsMenu;profileNamespace setVariable [""life_licht"",life_licht]";
} else {
	_licht ctrlSetTextColor [1,0,0,1];
	_licht ctrlSetText "OFF";
	_licht buttonSetAction "life_licht = true;if (scriptDone lichtersqf) then {[] spawn nok_fnc_licht};[] call life_fnc_settingsMenu;profileNamespace setVariable [""life_licht"",life_licht]";
};