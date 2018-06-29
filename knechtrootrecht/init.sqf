#define __CONST__(var1,var2) var1 = compileFinal (if(typeName var2 == "STRING") then {var2} else {str(var2)})
_extDB = false;
Diag_Log "__________________________________";
Diag_Log "|                                |";
Diag_Log "|       HC gestartet             |";
Diag_Log "|       HC gestartet             |";
Diag_Log "|       HC gestartet             |";
Diag_Log "|       HC gestartet             |";
Diag_Log "|                                |";
Diag_Log "|________________________________|";

"life_fnc_MP_packet" addPublicVariableEventHandler {[_this select 0,_this select 1] call life_fnc_MPexec;Diag_log str life_fnc_MP_packet;};

"jagd" addPublicVariableEventHandler {
	_jaeger = nearestObject [((_this select 1) select 2), "C_man_hunter_1_F"];
	_jagd = _jaeger getvariable ["jagd",[]];
	if (((_this select 1) select 1)) then {
		if (!(((_this select 1) select 0) in _jagd)) then {
			_jagd pushback ((_this select 1) select 0);
			_jaeger setvariable ["jagd",_jagd];
		} else {
			Diag_log format ["Fehler bei der Übergabe der Variable True %1 : %2 ",_this,_jagd];
		};
	} else {
		if (((_this select 1) select 0) in _jagd) then {
			_jagd = _jagd -[((_this select 1) select 0)];
			_jaeger setvariable ["jagd",_jagd];
		} else {
			Diag_log format ["Fehler bei der Übergabe der Variable False %1 : %2 ",_this,_jagd];
		};
	};
};
head_1 = player;
publicvariableserver "head_1";

//Only need to setup extDB once.
/*if(isNil {uiNamespace getVariable "life_sql_id"}) then {
	life_sql_id = round(random(9999));
	__CONST__(life_sql_id,life_sql_id);
	uiNamespace setVariable ["life_sql_id",life_sql_id];

	//extDB Version
	_result = "extDB" callExtension "9:VERSION";
	diag_log format ["extDB: Version: %1", _result];
	if(_result == "") exitWith {};
	if ((parseNumber _result) < 14) exitWith {diag_log "Error: extDB version 14 or Higher Required";};

	//Initialize the database
	_result = "extDB" callExtension "9:DATABASE:Database2";
	if(_result != "[1]") exitWith {diag_log "extDB: Error with Database Connection";};
	_result = "extDB" callExtension format["9:ADD:DB_RAW_V2:%1",(call life_sql_id)];
	if(_result != "[1]") exitWith {diag_log "extDB: Error with Database Connection";};
	"extDB" callExtension "9:LOCK";
	_extDB = true;
	diag_log "extDB: Connected to Database";

	"extDB" callExtension "9:LOCK";
} else {
	life_sql_id = uiNamespace getVariable "life_sql_id";
	__CONST__(life_sql_id,life_sql_id);
	_extDB = true;
	diag_log "extDB: Still Connected to Database";
};
*/
[] spawn hc_fnc_tueren;
[] spawn hc_fnc_bruecke;
//[] spawn hc_fnc_ampel;

[] spawn {
	sleep 10;
	{if (_x iskindof "O_G_Soldier_M_F") then {deletevehicle _x}}foreach allunits;
	sleep 10;
	[] spawn hc_fnc_zombi;
};