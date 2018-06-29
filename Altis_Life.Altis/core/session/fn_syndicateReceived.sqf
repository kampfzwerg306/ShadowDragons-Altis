#include <macro.h>
//fn_syndicateReceived.sqf

//diag_log "SYNDICATE INFORMATION RECEIVED";
life_session_tries = life_session_tries + 1;
if(life_session_completed) exitWith {}; //Why did this get executed when the client already initialized? Fucking arma...
if(life_session_tries > 5) exitWith {cutText[localize "STR_Session_Error","BLACK FADED"]; 0 cutFadeOut 999999999;};


0 cutText [localize "Syndicate loaded","BLACK FADED"];
0 cutFadeOut 9999999;


_currentSyndicate = _this select 0;

//diag_log format["PLAYER IS IN SYNDICATE: %1", _currentSyndicate];	




// now we enable the Syndicates for the player
if (_currentSyndicate == "ava") then {
	is_member_of_life_gang_ava = true;
	player setVariable["is_member_of_life_gang_ava",true,true];
};
if (_currentSyndicate == "ba") then {
	is_member_of_life_gang_ba = true;
	player setVariable["is_member_of_life_gang_ba",true,true];

};


if (_currentSyndicate == "five-0") then {
	is_member_of_life_gang_five0 = true;
	player setVariable["is_member_of_life_gang_five0",true,true];
};
if (_currentSyndicate == "tt") then {
	is_member_of_life_gang_tt = true;
	player setVariable["is_member_of_life_gang_tt",true,true];

};
if (_currentSyndicate == "awc") then {
	is_member_of_life_gang_awc = true;
	player setVariable["is_member_of_life_gang_awc",true,true];

};
if (_currentSyndicate == "lms") then {
	is_member_of_life_gang_lms = true;
	player setVariable["is_member_of_life_gang_lms",true,true];

};
if (_currentSyndicate == "syndicate2") then {
	is_member_of_life_gang_p2 = true;
	player setVariable["is_member_of_life_gang_syndicate2",true,true];

};
if (_currentSyndicate == "syndicate3") then {
	is_member_of_life_gang_p3 = true;
	player setVariable["is_member_of_life_gang_syndicate3",true,true];

};
if (_currentSyndicate == "syndicate4") then {
	is_member_of_life_gang_p4 = true;
	player setVariable["is_member_of_life_gang_syndicate4",true,true];

};
if (_currentSyndicate == "syndicate5") then {
	is_member_of_life_gang_p5 = true;
	player setVariable["is_member_of_life_gang_syndicate5",true,true];
};
if (_currentSyndicate == "syndicate6") then {
	is_member_of_life_gang_p6 = true;
	player setVariable["is_member_of_life_gang_syndicate7",true,true];
};



life_session_completed = true;