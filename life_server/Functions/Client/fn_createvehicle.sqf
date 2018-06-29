_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_posi = [_this,1,[],[[]]] call BIS_fnc_param;
_radius = [_this,2,0,[0]] call BIS_fnc_param;
_form = [_this,3,"",[""]] call BIS_fnc_param;
_unit = [_this,4,objNull,[objNull]] call BIS_fnc_param;
if (isnull _unit) exitwith {diag_log format ["%1,%2,%3,%4,%5",_vehicle,_posi,_radius,_form,_unit];};
//diag_log format ["Objekt erstellt: %1,%2,%3,%4,%5",_vehicle,_posi,_radius,_form,_unit];
nok_createvehicle = createVehicle [_vehicle, _posi, [],_radius, _form];
owner _unit publicvariableclient "nok_createvehicle";
