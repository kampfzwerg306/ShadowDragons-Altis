//Blut auf Körper setzen
_einheit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if (isnull _einheit) exitwith {};
_einheit setObjectMaterial [0, 'A3\Characters_F\Common\Data\basicbody_injury.rvmat'];

