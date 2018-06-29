private ["_mode","_nok1","_nok2","_nok3","_nok4","_sun"];
_mode = _this select 0;
_nok1 = _this select 1;
_nok2 = _this select 2;
_nok3 = _this select 3;
_nok4 = _this select 4;
_sun = sunormoon;
if (isNil {_nok1 getvariable "rot"}) then {
	{
		_light = "#lightpoint" createVehiclelocal [0,0,0];
		_light setLightColor [20, 0.1, 0.1];
		_light lightAttachObject [_x, [0, 0.3, 1.8]];
		_light setLightBrightness 0;
		_light setLightAttenuation [0.181, 0, 2000, 10000000];
		_light setLightDayLight true;
		_x setvariable ["rot",_light];
		
		_light = "#lightpoint" createVehiclelocal [0,0,0];
		_light setLightColor [40, 40, 0];
		_light lightAttachObject [_x, [0, 0.3, 1.5]];
		_light setLightBrightness 0;
		_light setLightAttenuation [0.181, 0, 2000, 10000000];
		_light setLightDayLight true;
		_x setvariable ["gelb",_light];
		
		_light = "#lightpoint" createVehiclelocal [0,0,0];
		_light setLightColor [0.1, 20, 0.1];
		_light lightAttachObject [_x, [0, 0.3, 1.2]];
		_light setLightBrightness 0;
		_light setLightAttenuation [0.181, 0, 2000, 10000000];
		_light setLightDayLight true;
		_x setvariable ["gruen",_light];
		
	}foreach [_nok1,_nok2,_nok3,_nok4];
};
switch (_mode) do {
 case 1 : {
	{
		_light = _x getvariable "gruen";
		_light setLightBrightness 0;
		
		_light = _x getvariable "gelb";
		if (_sun > 0) then {
			_light setLightBrightness (_sun * 100);
			_light setLightAttenuation [0.181, 0, 2000, 10000000];
		} else {
			 _light setLightBrightness 10;
			 _light setLightAttenuation [0.2, 0, 50000, 0];
		};
		sleep 3;
		_light = _x getvariable "gelb";
		_light setLightBrightness 0;
		
		_light = _x getvariable "rot";
		if (_sun > 0) then {
		_light setLightBrightness (_sun * 100);
		_light setLightAttenuation [0.181, 0, 2000, 10000000];
		} else {
		_light setLightBrightness 10;
		_light setLightAttenuation [0.2, 0, 50000, 0];
		};	
		}foreach [_nok3,_nok4];
		
		{
		
		_light = _x getvariable "gelb";
		if (_sun > 0) then {
			_light setLightBrightness (_sun * 100);
			_light setLightAttenuation [0.181, 0, 2000, 10000000];
		} else {
			_light setLightBrightness 10;
			_light setLightAttenuation [0.2, 0, 50000, 0];
		};
		sleep 3;
		_light = _x getvariable "gelb";
		_light setLightBrightness 0;
		_light = _x getvariable "rot";
		_light setLightBrightness 0;
		
		_light = _x getvariable "gruen";
		if (_sun > 0) then {
			_light setLightBrightness (_sun * 100);
			_light setLightAttenuation [0.181, 0, 2000, 10000000];
		} else {
			_light setLightBrightness 10;
			_light setLightAttenuation [0.2, 0, 50000, 0];;
		};	
		}foreach [_nok1,_nok2];
	};
case 2 : {
	{
		_light = _x getvariable "gruen";
		_light setLightBrightness 0;
		
		_light = _x getvariable "gelb";
		if (_sun > 0) then {
			_light setLightBrightness (_sun * 100);
			_light setLightAttenuation [0.181, 0, 2000, 10000000];
		} else {
			_light setLightBrightness 10;
			_light setLightAttenuation [0.2, 0, 50000, 0];
		};
		sleep 3;
		_light = _x getvariable "gelb";
		_light setLightBrightness 0;
		
		_light = _x getvariable "rot";
		if (_sun > 0) then {
			_light setLightBrightness (_sun * 100);
			_light setLightAttenuation [0.181, 0, 2000, 10000000];
		} else {
			_light setLightBrightness 10;
			_light setLightAttenuation [0.2, 0, 50000, 0];
		};	
		}foreach [_nok1,_nok2];
		{
		
		_light = _x getvariable "gelb";
		if (_sun > 0) then {
			_light setLightBrightness (_sun * 100);
			_light setLightAttenuation [0.181, 0, 2000, 10000000];
		} else {
			_light setLightBrightness 10;
			_light setLightAttenuation [0.2, 0, 50000, 0];
		};
		sleep 3;
		_light = _x getvariable "gelb";
		_light setLightBrightness 0;
		_light = _x getvariable "rot";
		_light setLightBrightness 0;
		
		_light = _x getvariable "gruen";
		if (_sun > 0) then {
			_light setLightBrightness (_sun * 100);
			_light setLightAttenuation [0.181, 0, 2000, 10000000];
		} else {
			_light setLightBrightness 10;
			_light setLightAttenuation [0.2, 0, 50000, 0];
		};	
		}foreach [_nok3,_nok4];
	};
};