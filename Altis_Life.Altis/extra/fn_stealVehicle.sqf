/*
File: fn_stealVehicle.sqf
Author: Kevin Webb
Description: Allows the player to put a stolen vehicle in his garage.
*/
disableSerialization;
private["_control","_price","_vehicle","_nearVehicles","_color"];
_control = ((findDisplay 39400) displayCtrl 39402);
_price = _control lbValue (lbCurSel _control);
_price = _price*0.65;
if(life_cash < _price) exitWith {hint format["Du hast nicht genügend Geld, Du brauchst %1 .",_price]; };
_vehicle = _control lbData (lbCurSel _control);
_vehicle = call compile format["%1", _vehicle];
_nearVehicles = nearestObjects [getMarkerPos life_chopShop,["Car","Truck"],25];
_vehicle = _nearVehicles select _vehicle;
if(isNull _vehicle) exitWith {};
if(typeOf _vehicle == "B_MRAP_01_F") exitWith {hint "Du kannst dieses Fahrzeug nicht in deine Gerage Stellen!"; };
if(!(isnil {_vehicle getVariable "lights"})) exitwith {hint "Dienstfahrzeuge, nein Danke hau ab!"};
_color = _vehicle getVariable "Life_VEH_color";
if (isnil "_color") exitwith {hint "Finde nicht die richtige Farbe"};

hint format["Wir haben die Schilder getauscht das macht dann %1.",_price];
["atm","take",_price] call life_fnc_updateCash;
[[(getPlayerUID player),playerSide,_vehicle,_color,1],"TON_fnc_vehicleCreate",false,false] spawn life_fnc_MP;
[[_vehicle],"TON_fnc_vehicleIsDead",false,false] spawn life_fnc_MP;
[[getPlayerUID player,profileName,"490"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
closeDialog 0;
sleep 0.5;
if(!isNil "_vehicle" && !isNull _vehicle) then { deleteVehicle _vehicle; };