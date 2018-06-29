/*
	File: fn_fetchSyndicatesOfPlayer.sqf
	Author: Torsten "Demon" Ennenbach
	
	Description:
	Fetches the Syndicate Data to each connected Client all 3 minutes
	Now we can 
*/


// NOT YET FINISHED

private["_pid", "_identifier","_query","_return","_ownerID"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_realname = [_this,1,"",[""]] call BIS_fnc_param;
_ownerID = [_this,2,ObjNull,[ObjNull]] call BIS_fnc_param;

 _query = format["select identifier from syndicates where pid ='%1' and name = '%2'", _uid, _realname];
//diag_log format["SYDICATES QUERY: %1", _query];
waitUntil{sleep (random 0.3); !DB_Async_Active};
_queryResult = [_query,2,false] call DB_fnc_asyncCall;

//diag_log format["SYDICATES QUERY RESULT: %1", _queryResult];

_ownerID = owner _ownerID;
if(count _queryResult == 0) exitWith {
	[["none"],"SOCK_fnc_syndicateReceived",_ownerID ,false] spawn life_fnc_MP;
};
[_queryResult,"SOCK_fnc_syndicateReceived",_ownerID ,false] spawn life_fnc_MP;