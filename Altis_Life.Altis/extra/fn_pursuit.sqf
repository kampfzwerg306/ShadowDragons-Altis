/*
Fahrzeug Beschleunigung
*/
_index = ["pursuit",((life_trunk_vehicle getVariable "Trunk") select 0)] call TON_fnc_index;
if ((driver vehicle player) != player) exitWith { hint "Finger weg von den Knopf"};
if(_index == -1) exitWith {hint "Du hast kein Nitro dabei";};
_num = 1;
_data = (life_trunk_vehicle getVariable "Trunk") select 0;
_old = life_trunk_vehicle getVariable "Trunk";
_weight = (["pursuit"] call life_fnc_itemWeight) * _num;
_value = _data select _index select 1;
if(_num == _value) then
	{
		_data set[_index,-1];
		_data = _data - [-1];
	}
		else
	{
		_data set[_index,["pursuit",(_value - _num)]];
	};
life_trunk_vehicle setVariable["Trunk",[_data,(_old select 1) - _weight],true];
nok_pursuit = true;
_vehicle = vehicle player;
_vel = velocity _vehicle;
_dir = direction _vehicle;
_speed = 10;
hintsilent "Super pursuitmode activated";
//diag_log format["CURRENT SPEED: %1", _vel];
_vehicle setVelocity [
(_vel select 0) + (sin _dir * _speed), 
(_vel select 1) + (cos _dir * _speed), 
(_vel select 2)
];
sleep 10;
nok_pursuit = nil;