#include <macro.h>
private ["_pay","_speedp","_speed","_blitz","_car"];
if (isnil "nok_blitzer") then {nok_blitzer = []};
while {true} do { waituntil {count nok_blitzer > 0}; 
	{
		if (player distance _x < 15 && (isOnRoad player) && (vehicle player != player)) then {
			_speed = _x getvariable ["speed",30];
			_speedp = speed player;
			_car = vehicle player;
			if (_speedp < (_speed + 5)) exitwith {};
			if (playerSide != civilian) exitwith {};
			if((_car getVariable "siren")) exitWith {};
			if(is_member_of_life_gang_five0) exitWith {};
			if(!(_car iskindof "car") or (driver vehicle player != player)) exitwith {};
			// bis 20 kmh mehr bis 50kmh mehr bis 100kmh mehr und noch mehr :D + 5kmh tolleranz
			if(!license_civ_driver) then {
				_pay = 10000;
				cutText[format[" !!! Sie wurden mit %1 km/h geblitzt \n Ohne Führerschein\n!!! \n\n Besorgen Sie sich einen Führerschein!",round _speedp,[_pay] call life_fnc_numberText],"PLAIN"];
				_blitz = "#lightpoint" createVehiclelocal [0,0,0];
				_blitz lightAttachObject [_x,[0,-1,1.5]];
				_blitz setLightBrightness 10;
				_blitz setLightAmbient [1, 1, 1];
				_blitz setLightColor [1, 1, 1];
				_blitz setLightDayLight true;
				sleep 0.2;
				deleteVehicle _blitz;
			} else {
				switch (true) do {
				
					case ((_speedp >= (_speed + 5)) && (_speedp <= (_speed + 25))) : { _pay = 1000;};
					case ((_speedp >= (_speed + 26)) && (_speedp <= (_speed + 55))) : { _pay = 2000;};
					case ((_speedp >= (_speed + 56)) && (_speedp <= (_speed + 105))) :  { _pay = 5000;};
					case ((_speedp >= (_speed + 106)) && (_speedp <= (_speed + 205))) :  { _pay = 10000;};
					case (_speedp >= (_speed + 206)) : { _pay = 20000;};
				};
			};
			if(life_atmcash < _pay) then {
				[[getPlayerUID player,name player,"5000",_pay],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
				if (license_civ_driver) then {cutText[format[" !!! Sie wurden mit  %1 km/h geblitzt!!! \n\n\n Und bekommen ein Bußgeld von %2 $ ! \n\n\n !",round _speedp,[_pay] call life_fnc_numberText],"PLAIN"];};
				_blitz = "#lightpoint" createVehiclelocal [0,0,0];
				_blitz lightAttachObject [_x,[0,-1,1.5]];
				_blitz setLightBrightness 10;
				_blitz setLightAmbient [1, 1, 1];
				_blitz setLightColor [1, 1, 1];
				_blitz setLightDayLight true;
				sleep 0.2;
				deleteVehicle _blitz;
				license_civ_driver = false;
			} else {
				if (license_civ_driver) then {cutText[format[" !!! Sie wurden mit  %1 km/h geblitzt!!! \n\n\n Und bekommen ein Bußgeld von %2 $ !",round _speedp,[_pay] call life_fnc_numberText],"PLAIN"];};
				_blitz = "#lightpoint" createVehiclelocal [0,0,0];
				_blitz lightAttachObject [_x,[0,-1,1.5]];
				_blitz setLightBrightness 10;
				_blitz setLightAmbient [1, 1, 1];
				_blitz setLightColor [1, 1, 1];
				_blitz setLightDayLight true;
				sleep 0.2;
				deleteVehicle _blitz;
				life_atmcash = life_atmcash - _pay;
			};
			waitUntil {player distance _x > 16};
			};
	}foreach nok_blitzer;
	sleep 0.1;
};
