/*
	File: fn_fetchPlayerVehicle.sqf
	Author: Torsten "Demon" Ennenbach
	
	Description:
	Fetch Player Vehicle to last known position (on server restart)
*/

private['_query',"_tickTime","_position","_positionArr", "_vehicle_class","_vehicle","_vInfo","_pid", "_name","_trunk","_damage","_direction","_queryResult"];

_query = "SELECT vehicles.id, vehicles.side, vehicles.classname, vehicles.type, vehicles.pid, vehicles.alive, vehicles.active, vehicles.plate, vehicles.color, vehicles.position, players.name, vehicles.trunk, vehicles.inventory,vehicles.damage, vehicles.direction  FROM vehicles LEFT JOIN players ON (vehicles.pid = players.playerid) WHERE active='1' AND vehicles.alive='1' AND side='civ'";

//diag_log "------------- Fetch Player Vehicle called -------------";

waitUntil{sleep (random 0.3); !DB_Async_Active};
_queryResult = [_query,2,true] call DB_fnc_asyncCall;




if(count _queryResult == 0) exitWith {};
//diag_log "------------- Client Query Request -------------";
//diag_log format["QUERY: %1",_query];
//diag_log format["Result: %1",_queryResult];
//diag_log "------------------------------------------------";



_vInfo = _queryResult;
{

  _positionArr = call compile format["%1",_x select 9];
	_position = [_x select 9];
	_damage = [_x select 13] call DB_fnc_numberSafe;
	_direction = [_x select 14] call DB_fnc_numberSafe;


	//if(typeName _damage == "STRING") then {_damage = call compile format["%1", _damage];};
	_damage = parseNumber _damage;

	//_name = call compile format["%1",_x select 10];
	_pid = _x select 4;
	_name = format["%1",_x select 10];
	_trunk = [_x select 11] call DB_fnc_mresToArray;
	if(typeName _trunk == "STRING") then {_trunk = call compile format["%1", _trunk];};
	//_damage = parseNumber _damage;	
	
	_vehicle_class = format["%1", _x select 2];		
	//Object = createVehicle [type, position, markers, placement, special]


	/*diag_log "############################ INFO BLOCK BEGIN ###############################";
	diag_log format["VEHICLE CLASS = %1", _vehicle_class];
	diag_log format["POS ARRAY = %1", _positionArr];
	diag_log "############################ INFO BLOCK END ###############################";
*/


	if (!isnil "_vehicle_class" and !isnil "_positionArr" and {count _positionArr >0} ) then {
		_vehicle = createVehicle[_vehicle_class, _positionArr, [], 0, "CAN_COLLIDE"];
		_vehicle allowDamage false;
		waitUntil {!isNil "_vehicle" && {!isNull _vehicle}};
		_direction = parseNumber _direction;

		_vehicle setPos [_positionArr select 0,_positionArr select 1,0];
		_vehicle setDir _direction; 
		//Reskin the vehicle 
		[[_vehicle, _x select 8],"life_fnc_colorVehicle",nil,false] spawn life_fnc_MP;
		_vehicle setVariable["vehicle_info_owners",[[_pid,_name]],true];
		_vehicle setVariable["dbInfo",[(_x select 4),_x select 7],true];
		_vehicle setVariable["Trunk",_trunk,true];
		
		/*
		//diag_log "############################ INFO BLOCK BEGIN ###############################";
		//diag_log format["DAMAGE TYPENAME = %1", typeName _damage];
		//diag_log format["DAMAGE VALUE = %1", _damage];
		//diag_log format["VEHICLE POSITION: %1",_position];
		//diag_log format["VEHICLE CLASS : %1",_vehicle_class];
		//diag_log format["VEHICLE DAMAGE: %1",_damage];	
		//diag_log format["PID: %1",_pid];
		//diag_log format["VEHICLE OWNER: %1",(str _name)];
		//diag_log format["QUERY: %1", _query];
		//diag_log format["POSITION : %1",_position];
		//diag_log format["POSTION ARRAY: %1",_positionArr];
		//diag_log format["VEHICLE DIRECTION: %1",_direction];
		//diag_log format["VEHICLE TRUNK AFTER SPAWN: %1", [_vehicle getVariable["Trunk",[]]]];	
		//diag_log "############################ INFO BLOCK END ###############################";
		*/
		
		_vehicle lock true;
		_vehicle allowDamage true;
		_vehicle setDamage 0;
		[_vehicle] call life_fnc_clearVehicleAmmo;
	};
} forEach _vInfo;

////diag_log "------------- Fetch Player Vehicle end -------------";

