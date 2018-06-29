/*
	File: fn_vehSave.sqf
	Author: Torsten "Demon" Ennenbach
	
	Description:
	Stores the Position of the Vehicle, stores also the Inventory and Trunk.
*/
private["_veh","_trunk","_inventory","_veh_data", "_vehPosition"];

// the vehicle itself
_veh = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

// position of vehicle
_vehPosition = getPosATL _veh
// trunk of vehicle
_trunk = _veh getVariable ["Trunk",[]];

// inventory of vehicle

_inventory = _veh getVariable ["Inventory",[]];



[_packet,"DB_fnc_vehicleUpdate",false,false] spawn life_fnc_MP;