#include <macro.h>
/*
ADAC Bauliste Config,
[Name der Angezeigt wird, Arma Bezeichnung]
*/
_adacbauliste = [
	["Kegel","RoadCone_L_F"],
	["Straßen Barriere","RoadBarrier_F"],
	["Absperrband","TapeSign_F"],
	["Baustellen Lampe","Land_PortableLight_single_F"],
	["Baustellen Lampe Doppelt","Land_PortableLight_double_F"],
	["Pfeil Rechts","ArrowDesk_R_F"],
	["Pfeil Links","ArrowDesk_L_F"],
	["Landebahn Markierung","Land_LandMark_F"],
	["Cargo Box - Testweise","Land_CargoBox_V1_F"],
	["Schranke","Land_BarGate_F"]
];
if (!isnil "abbau") exitWith {abbau = _adacbauliste};
if(__GETC__(life_adaclevel) == 0) exitWith {closeDialog 0;};
private["_display","_list","_side"];
disableSerialization;
waitUntil {!isNull (findDisplay 37400)};
_display = findDisplay 37400;
_list = _display displayCtrl 37451;
if(__GETC__(life_adaclevel) == 0) exitWith {closeDialog 0;};
//Purge List
lbClear _list;
_i = 0;
{
	_list lbAdd format["%1",_x select 0];
	_list lbSetdata [_i,(_x select 1)];
	_i = _i +1;
} foreach _adacbauliste;