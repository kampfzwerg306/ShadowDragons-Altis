_query = "SELECT list,id from wanted";
//diag_log "------------- Wanted List init -------------";
waitUntil{sleep (random 0.3); !DB_Async_Active};
_queryResult = [_query,2,true] call DB_fnc_asyncCall;

{
	_trunk = [_x select 0] call DB_fnc_mresToArray;
	if(typeName _trunk == "STRING") then {_trunk = call compile format["%1", _trunk];};

	//diag_log "------------- Client Query Request -------------";
	//diag_log format["QUERY: %1",_query];
	//diag_log format["_trunk: %1",_trunk];
	//diag_log format["life_wanted_list: %1",life_wanted_list];
	//diag_log "------------------------------------------------";
	life_wanted_list = _trunk;


} forEach _queryResult;