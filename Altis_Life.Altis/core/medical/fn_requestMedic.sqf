/*
	File: fn_requestMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	N/A
*/
private["_medicsOnline"];

_medicsOnline = {_x != player && {(side _x == independent) || (side _x == west)} && {alive _x}} count playableUnits > 0; //Check if medics (indep) are in the room.

//diag_log format["MEDICS ONLINE: %1", _medicsOnline];

if(_medicsOnline) then {
	//There is medics let's send them the request.
	[[life_corpse,profileName],"life_fnc_medicRequest",independent,FALSE] spawn life_fnc_MP;
	[[life_corpse,profileName],"life_fnc_medicRequest",west,FALSE] spawn life_fnc_MP;
	[[life_corpse,profileName],"life_fnc_medicRequest",east,FALSE] spawn life_fnc_MP;
} else {
	//No medics were online, send it to the police.
	[[life_corpse,profileName],"life_fnc_medicRequest",west,FALSE] spawn life_fnc_MP;
	[[life_corpse,profileName],"life_fnc_medicRequest",east,FALSE] spawn life_fnc_MP;
};
Life_request_timer = true;
//Create a thread to monitor duration since last request (prevent spammage).
[] spawn 
{
	((findDisplay 7300) displayCtrl 7303) ctrlEnable false;
	sleep (2 * 60);
	((findDisplay 7300) displayCtrl 7303) ctrlEnable true;
};