
/*
	Author: Torsten "Demon" Ennenbach
	
	Description:
	Saves the Position of the Vehicle. To Spawn after Serverrestart at this position
	Saves also the Inventory and Trunk
	Trunk = Tonics virtual Items
	Inventory = vehicle Inventory for Gear and Stuff and and and 
*/

private["_vehicle","_positionATL","_plate","_unit","_uid","_trunk","_inventory","_direction","_flag"];

////diag_log "------------- CALL THIS FUCKING SCRIPT  -------------";

_unit = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_vehicle = [_this,1,objNull,[objNull]] call BIS_fnc_param;
_positionATL = [_this,2,[],[[]]] call BIS_fnc_param;
_trunk = [_this,3,[],[[]]] call BIS_fnc_param;
_inventory = [_this,4,[],[[]]] call BIS_fnc_param;
_flag = [_this,5,"",[""]] call BIS_fnc_param;

_direction = getDir _vehicle;

/*
_positionATL = [_positionATL] call DB_fnc_mresArray;
_trunk 		 = [_trunk] call DB_fnc_mresArray;
_inventory   = [_inventory] call DB_fnc_mresArray;
*/

_trunk 		 = [_trunk] call DB_fnc_mresArray;
_dbInfo = _vehicle getVariable["dbInfo",[]];

////diag_log "------------- Server _dbInfo Request  -------------";
////diag_log format["Update Request Query: %1", _dbInfo];
////diag_log format["VEHICLE TRUNK: %1", _trunk];
////diag_log "--------------------------------------------------";



if(count _dbInfo > 0) then {
	_uid = _dbInfo select 0;
	_plate = _dbInfo select 1;
} else {
	exit;
};

if(isNil {_uid}) exitWith {};

_damage = damage _vehicle;
//_query = format["UPDATE vehicles SET position='%1', trunk='%4', inventory='%5' WHERE pid='%2' AND plate='%3'",_positionATL,_uid,_plate,_trunk,_inventory];
_query = format["UPDATE vehicles SET position='%1', trunk='%4', damage='%5', direction='%6' WHERE pid='%2' AND plate='%3' and side='civ'", _positionATL,_uid,_plate,_trunk,_damage, _direction];

////diag_log "------------- Server Update Request  -------------";
////diag_log format["Update Request Query: %1", _query];
////diag_log format["Vehicle Position %1", str _positionATL];
////diag_log format["Params %1", _this];
////diag_log "--------------------------------------------------";

waitUntil {sleep (random 0.3); !DB_Async_Active};
_queryResult = [_query,1] call DB_fnc_asyncCall;

////diag_log "------------- Server Update Query Result  -------------";
////diag_log format["Update Request QueryResult: %1", str _queryResult];
////diag_log "--------------------------------------------------";