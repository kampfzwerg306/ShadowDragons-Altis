/*
	File: initPlayerLocal.sqf
	
	Description:
	Starts the initialization of the player.
*/
"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};
if(!hasInterface) exitWith {
	_binConfigPatches = configFile >> "CfgPatches";
	for "_i" from 0 to count (_binConfigPatches)-1 do {
		_patchEntry = _binConfigPatches select _i;
		if(isClass _patchEntry) then {
			if((configName _patchEntry) in ["knechtrootrecht","hc_2DB"]) exitwith {
				switch (configName _patchEntry) do {
					case "knechtrootrecht" : {[] call compile PreprocessFileLineNumbers "\knechtrootrecht\init.sqf"};
					case "hc_2DB" : {[] call compile PreprocessFileLineNumbers "\hc_2DB\init.sqf"};
				};
			};
		};
	};	
};
 //This is a headless client, he doesn't need to do anything but keep being headless..
 
#define __CONST__(var1,var2) var1 = compileFinal (if(typeName var2 == "STRING") then {var2} else {str(var2)})
__CONST__(BIS_fnc_endMission,BIS_fnc_endMission);

//[] execVM "SpyGlass\fn_initSpy.sqf";

[] execVM "core\init.sqf";
[] spawn life_fnc_emptyFuel;
//Execute JIP code.
if((_this select 1)) then {
	[] execVM "core\jip.sqf";
};

//Settings auslesen und anpassen
tawvd_foot = profileNamespace getVariable ["tawvd_foot",1600];
tawvd_car = profileNamespace getVariable ["tawvd_car",1600];
tawvd_air = profileNamespace getVariable ["tawvd_air",1600];
[] call life_fnc_updateViewDistance;
life_revealObjects = profileNamespace getVariable ["life_revealObjects",true];
life_tagson = profileNamespace getVariable ["life_tagson",true];
life_schnee = profileNamespace getVariable ["life_schnee",false];
life_licht = profileNamespace getVariable ["life_licht",false];

//schneefall
[] spawn nok_fnc_schnee;
if (life_licht) then {lichtersqf = [] spawn nok_fnc_licht;};