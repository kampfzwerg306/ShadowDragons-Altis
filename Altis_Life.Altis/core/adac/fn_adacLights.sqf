/*
	@Version: 1.0
	@Author: Tonic
	@Edited: 28.08.2013
*/
private ["_vehicle","_lightyelow","_lightleft","_lightright","_brightness","_attach"];

_vehicle = _this select 0;

if (isNil "_vehicle" || isNull _vehicle || !(_vehicle getVariable "lights")) exitWith {};

switch (typeOf _vehicle) do {
	case "C_Offroad_01_F": { _attach = [[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
	case "B_Truck_01_transport_F": { _attach = [[-1, -2.8, 0.55], [1, -2.8, 0.55]]; };
	case "B_Heli_Light_01_F": { _attach = [[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
	case "I_Heli_Transport_02_F": { _attach = [[-1, -2.8, 0.55], [1, -2.8, 0.55]]; };
	case "C_SUV_01_F": { _attach = [[0.37, -1.2, 0.42], [0.37, -1.2, 0.42]]; };
	case "B_Truck_01_mover_F" : { _attach = [[-0.8, 5, -0.3],[0.8, 5, -0.3]]; };
	case "B_MRAP_01_F": 	{ _attach = [[-0.37, -1.9, 0.7],[0.37, -1.9, 0.7]]; };	
};

_lightyelow = [20, 20, 0.1];

_lightleft = "#lightpoint" createVehicleLocal [0,0,0];
sleep 0.2;
_lightleft setLightColor _lightyelow;
_lightleft setLightBrightness 0.2;
_lightleft lightAttachObject [_vehicle, _attach select 0];
_lightleft setLightAttenuation [0.181, 0, 1000, 130];
_lightleft setLightIntensity 10;
_lightleft setLightFlareSize 0.38;
_lightleft setLightFlareMaxDistance 150;
_lightleft setLightUseFlare true;
_lightleft setLightDayLight true;

_lightright = "#lightpoint" createVehicleLocal [0,0,0];
sleep 0.2;
_lightright setLightColor _lightyelow;
_lightright setLightBrightness 0.2;
_lightright lightAttachObject [_vehicle, _attach select 1];
_lightright setLightAttenuation [0.181, 0, 1000, 130];
_lightright setLightIntensity 10;
_lightright setLightFlareSize 0.38;
_lightright setLightFlareMaxDistance 150;
_lightright setLightUseFlare true;
_lightright setLightDayLight true;

if (sunOrMoon < 1) then {
	_brightness = 4;
} else {
	_brightness = 30;
};

while {(alive _vehicle)} do { 
	if (!(_vehicle getVariable "lights")) exitWith {};  
	_lightleft setLightBrightness _brightness;
	_lightright setLightBrightness _brightness; 
 	sleep 0.5;
	_lightright setLightBrightness 6; 
	_lightleft setLightBrightness 6;
	sleep 0.8;  
};  
deleteVehicle _lightleft;
deleteVehicle _lightright;