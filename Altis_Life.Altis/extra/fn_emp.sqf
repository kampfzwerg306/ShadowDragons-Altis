// gobbo's EMP bomb v0.5b
// use:
// nul = [Object, ?Markers?] execvm "emp\emp.sqf";
// Object: GameLogic or similar marking the target location
// Markers: Optional, put in 1 to have them
// Example: nul = [emptarget, 1] execvm "emp\emp.sqf";

// resolving vars


// create flash
//remove the action once it is activated

_id = _this select 2;
_target = _this select 3 select 0;
_actions = _this select 3 select 1;


//diag_log format["EMP ACTIVATED!: %1", _target];
_target say3D "empwarn";
sleep 3.35;
_target say3D "empwarn";
sleep 3.35;
_target say3D "empwarn";
sleep 3.35;

if(_target isKindOf "Air") then {
  _target setHit ["motor", 0.9];
};
if(_target isKindOf "Car") then {
  _target setHit ["motor", 1];
  _target setfuel 0;
};
if(_target isKindOf "Ship") then {
  _target setHit ["motor", 1];
};  

_light = "#lightpoint" createVehicleLocal getpos _target;
_light setLightAmbient[0, 750, 1500];
_light setLightColor[0, 750, 1500];
_light setLightBrightness 1000;
sleep 0.001;

deletevehicle _light;
life_actions = _actions;
life_actions removeAction _id;