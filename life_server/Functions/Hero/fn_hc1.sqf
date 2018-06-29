{
	if (!(isplayer _x)) then {
		_is=_x setowner HC1_owner;
		diag_log format ["Einheit %1, Neuer Owner %2, erfolgreich %3",_x,HC1_owner,_is];
	};
} forEach allUnits;
_serverID = owner (missionnamespace getvariable ["bis_functions_mainscope",objnull]);
/*
{
	if (owner _x == _serverID) then { 
		_is=_x setowner HC1_owner;
		diag_log format ["Objekt %1, Neuer Owner %2, erfolgreich %3",_x,HC1_owner,_is];
	};
}foreach allMissionObjects "All";
*/