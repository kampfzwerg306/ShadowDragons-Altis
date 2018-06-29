#include <macro.h>
/*
 © 2014 nano2K - written for we-are-friendly.de
*/
private["_player"];
_player = _this select 0;
//_slot = assignedVehicleRole _player;
_vehicle = vehicle _player;
_result = false;

if (_vehicle != _player) then {
	if (playerSide == west || is_member_of_life_gang_five0) then {
	    if((typeof _vehicle in ["O_Heli_Light_02_unarmed_F","B_Heli_Transport_03_unarmed_F","O_MRAP_02_F"]) && (_vehicle getVariable ["nano_emp_enabled", false])) then {
	        //if(_slot select 0 == "Turret") then {
	          //  if(_slot select 1 select 0 == 0) then {
	                _result = true;
	            //};
	        //}
	    };
	};
};
_result