/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	When a client disconnects this will remove their corpse and
	clean up their storage boxes in their house.
*/
private["_unit","_id","_uid","_name"];
_unit = _this select 0;
_id = _this select 1;
_uid = _this select 2;
_name = _this select 3;
Diag_log str _this;
Diag_log str (_unit getvariable "HC");
switch (_unit) do {
	case hc_1 :	{ _hc = _unit getvariable "HC"};
	case hc_2 :	{ _hc = _unit getvariable "HC"};
};
if (!isnil "_hc") then {
	switch (_hc) do {
		case "head_1" :	{	diag_log "HC1 ist Disconnectet";
							HC1_UID = nil;
							HC1 = false;
							HC1_owner = nil;
							publicvariable "HC1";
							publicvariable "HC1_owner";
							_unit setvariable ["HC",nil];
							if (!(isnil "nok_zombi_remove")) then {	
								{deletevehicle _x; Diag_log format ["Remove %1 Gruppe: %2",_x,nok_zombi_remove select 0];}foreach units nok_zombi_remove select 0;
								{deletevehicle _x; Diag_log format ["Remove %1 Gruppe: %2",_x,nok_zombi_remove select 1];}foreach units nok_zombi_remove select 1;
								{deletevehicle _x; Diag_log format ["Remove %1 Gruppe: %2",_x,nok_zombi_remove select 2];}foreach units nok_zombi_remove select 2;
							};
						};
		case "head_2" :	{	diag_log "HC2 ist Disconnectet";
							HC2_UID = nil;
							HC2 = false;
							HC2_owner = nil;
							publicvariable "HC2";
							publicvariable "HC2_owner";
							_unit setvariable ["HC",nil];		
						};
	};
};
		
_containers = nearestObjects[_unit,["WeaponHolderSimulated"],5];
{deleteVehicle _x;} foreach _containers;
deleteVehicle _unit;

_uid spawn TON_fnc_houseCleanup;


//Empty group cleanup - Spectator bug fix
{
    if(count units _x == 0) then {
    deleteGroup _x;
    };
} forEach allGroups;