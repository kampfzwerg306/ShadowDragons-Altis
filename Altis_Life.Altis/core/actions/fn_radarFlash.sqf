#include <macro.h>

private["_blitz","_blitzer"];
_blitzer = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

_speed = speed player;
_pay = 0;
_veh = vehicle player;


if(is_member_of_life_gang_five0) exitWith {hint "Die Kamera erkennt ein Five-0 Fahrzeug und löst nicht aus";};

if((_veh getVariable "siren")) exitWith {};
if(getPosATL _veh select 2 > 20) exitWith {hint "Sie hatten nochmal glück!";};
if(!license_civ_driver) then {
	serv_killed = [player,"9023"];
	publicVariableServer "serv_killed";
	cutText[format[" !!! Sie wurden mit %1 km/h geblitzt!!! \n\n\n Besorgen Sie sich einen Führerschein!",round _speed,[_pay] call life_fnc_numberText],"PLAIN"];
		_blitz = "#lightpoint" createVehiclelocal [0,0,0];
		_blitz lightAttachObject [_blitzer,[0,0,1.5]];
		_blitz setLightBrightness 10;
		_blitz setLightAmbient [1, 1, 1];
		_blitz setLightColor [1, 1, 1];
		_blitz setLightDayLight true;
		uiSleep 0.2;
		deleteVehicle _blitz;
	_pay = 20000;
} else {
	if((round _speed > 135) && (round _speed < 145)) then {_pay = 2000;};
	if((round _speed > 144) && (round _speed < 161)) then {_pay = 5000;};
	if(round _speed > 160) then {_pay = 10000;};
};
if(life_atmcash < _pay) exitWith {
	if(_pay == 2000) then {
		serv_killed = [player,"902"];
		publicVariableServer "serv_killed"
	};
	if(_pay == 5000) then {
		serv_killed = [player,"9021"];
		publicVariableServer "serv_killed"
	};
	if(_pay == 10000) then {
		serv_killed = [player,"9022"];
		publicVariableServer "serv_killed"
	};
	cutText[format[" !!! Sie wurden mit %1 km/h geblitzt!!! \n\n\n Und bekommen ein Bußgeld von %2 $  ! \n\n\n !",round _speed,[_pay] call life_fnc_numberText],"PLAIN"];

	_blitz = "#lightpoint" createVehiclelocal [0,0,0];
	_blitz lightAttachObject [_blitzer,[0,0,1.5]];
	_blitz setLightBrightness 10;
	_blitz setLightAmbient [1, 1, 1];
	_blitz setLightColor [1, 1, 1];
	_blitz setLightDayLight true;
	uiSleep 0.2;
	deleteVehicle _blitz;
	license_civ_driver = false;
};
if((round _speed > 135) && (round _speed < 145)) then {
	if(life_atmcash >= _pay) then {
		cutText[format[" !!! Sie wurden mit  %1 km/h geblitzt!!! \n\n\n Und bekommen ein Bußgeld von %2 $ !",round _speed,[_pay] call life_fnc_numberText],"PLAIN"];
		_blitz = "#lightpoint" createVehiclelocal [0,0,0];
		_blitz lightAttachObject [_blitzer,[0,0,1.5]];
		_blitz setLightBrightness 10;
		_blitz setLightAmbient [1, 1, 1];
		_blitz setLightColor [1, 1, 1];
		_blitz setLightDayLight true;
		uiSleep 0.2;
		deleteVehicle _blitz;
		life_atmcash = life_atmcash - _pay;
	};
};

if((round _speed > 144) && (round _speed < 161)) then {
	if(life_atmcash >= _pay) then {
		cutText[format[" !!! Sie wurden mit %1 km/h geblitzt!!! \n\n\n Und bekommen ein Bußgeld von %2 $ !",round _speed,[_pay] call life_fnc_numberText],"PLAIN"];
		_blitz = "#lightpoint" createVehiclelocal [0,0,0];
		_blitz lightAttachObject [_blitzer,[0,0,1.5]];
		_blitz setLightBrightness 10;
		_blitz setLightAmbient [1, 1, 1];
		_blitz setLightColor [1, 1, 1];
		_blitz setLightDayLight true;
		uiSleep 0.2;
		deleteVehicle _blitz;
		life_atmcash = life_atmcash - _pay;
	};
};

if(round _speed > 160) then {
	_pay = 5000;
	if(life_atmcash >= _pay) then {
		cutText[format[" !!! Sie wurden mit %1 km/h geblitzt!!! \n\n\n Und bekommen ein Bußgeld von %2 $ ! \n\n\n Ihr Führerschein wurde eingezogen !",round _speed,[_pay] call life_fnc_numberText],"PLAIN"];
		_blitz = "#lightpoint" createVehiclelocal [0,0,0];
		_blitz lightAttachObject [_blitzer,[0,0,1.5]];
		_blitz setLightBrightness 10;
		_blitz setLightAmbient [1, 1, 1];
		_blitz setLightColor [1, 1, 1];
		_blitz setLightDayLight true;
		uiSleep 0.2;
		deleteVehicle _blitz;		
		license_civ_driver = false;
		license_civ_truck = false;
		life_atmcash = life_atmcash - _pay;
	};
};