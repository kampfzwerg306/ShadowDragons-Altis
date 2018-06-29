#define __CONST__(var1,var2) var1 = compileFinal (if(typeName var2 == "STRING") then {var2} else {str(var2)})
if(isNil "HC2_UID" &&{isNil "hc_2"}) then {
	diag_log str name player;
	player setvariable ["nok_hckick",true,true];
};
_extDB = false;
Diag_Log "__________________________________";
Diag_Log "|                                 |";
Diag_Log "|       HC2 gestartet             |";
Diag_Log "|       HC2 gestartet             |";
Diag_Log "|       HC2 gestartet             |";
Diag_Log "|       HC2 gestartet             |";
Diag_Log "|                                 |";
Diag_Log "|__________ ______________________|";

"life_fnc_MP_packet" addPublicVariableEventHandler {[_this select 0,_this select 1] call life_fnc_MPexec;Diag_log str life_fnc_MP_packet;};
"hc_fnc_MP_packet" addPublicVariableEventHandler {[_this select 0,_this select 1] call hc_fnc_MPexec;Diag_log str hc_fnc_MP_packet;};

head_2 = player;
publicvariableserver "head_2";
DB_Async_Active = false;
//Only need to setup extDB once.
if(isNil {uiNamespace getVariable "life_sql_id"}) then {
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
