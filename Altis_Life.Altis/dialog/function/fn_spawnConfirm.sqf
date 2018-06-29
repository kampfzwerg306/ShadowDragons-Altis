/*
	File: fn_spawnConfirm.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Spawns the player where he selected.
*/
private["_spCfg","_sp","_spawnPos","_is_last_pos"];
closeDialog 0;
cutText ["","BLACK IN"];
if(count life_spawn_point == 0) then
{
	private["_sp","_spCfg"];
	_spCfg = [playerSide] call life_fnc_spawnPointCfg;
	_sp = _spCfg select 0;
	
	if(playerSide == civilian) then
	{
		if(isNil {(call compile format["%1", _sp select 0])}) then {
			player setPos (getMarkerPos (_sp select 0));
		} else {
			_spawnPos = (call compile format["%1", _sp select 0]) call BIS_fnc_selectRandom;
			_spawnPos = _spawnPos buildingPos 0;
			player setPos _spawnPos;
		};
	}
		else
	{
		player setPos (getMarkerPos (_sp select 0));
	};
	titleText[format["%2 %1",_sp select 1,localize "STR_Spawn_Spawned"],"BLACK IN"];
}
	else
{
	if(playerSide == civilian) then
	{

		////diag_log format["LIFE SPAWN POINT: %1", life_spawn_point];

		_is_last_pos = life_spawn_point select 0;
		////diag_log format["_IS LAST POS POINT: %1", _is_last_pos];		
		if (_is_last_pos == "last_pos") then {

			life_last_known_position = call compile format["%1", life_last_known_position];
			////diag_log format ["Debug Player Position : %1",life_last_known_position]; //For debugging
			player setPos [life_last_known_position select 0,life_last_known_position select 1,0];

		} else {
			// from now on you can only spawn at last position, syndicate spawn or your houses
//	 		_handle = [] spawn life_fnc_civDefaultGear;
//        	waitUntil {scriptDone _handle};
    

			life_player_alive=true;

			if(isNil {(call compile format["%1",life_spawn_point select 0])}) then {
				if((["house",life_spawn_point select 0] call BIS_fnc_inString)) then {
					private["_bPos","_house","_pos"];
					_house = nearestObjects [getMarkerPos (life_spawn_point select 0),["House_F"],10] select 0;
					_bPos = [_house] call life_fnc_getBuildingPositions;

					if(count _bPos == 0) exitWith {
						player setPos (getMarkerPos (life_spawn_point select 0));
					};
					
					_pos = _bPos call BIS_fnc_selectRandom;
					player setPosATL _pos;
				} else {

					player setPos (getMarkerPos (life_spawn_point select 0));

				};
			} else {
				_spawnPos = (call compile format["%1", life_spawn_point select 0]) call BIS_fnc_selectRandom;
				_spawnPos = _spawnPos buildingPos 0;
				player setPos _spawnPos;
			};

		};
	}
		else
	{
		player setPos (getMarkerPos (life_spawn_point select 0));
	};
	titleText[format["%2 %1",life_spawn_point select 1,localize "STR_Spawn_Spawned"],"BLACK IN"];
};

[] call life_fnc_RemoveLoot;
if(life_firstSpawn) then {
	life_firstSpawn = false;
	[] call life_fnc_welcomeNotification;
};
[] call life_fnc_hudSetup;

