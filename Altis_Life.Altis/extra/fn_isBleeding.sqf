// fn_isBleeding 
// runns i a loop until you died or you get healed by a medic or stabelized from a medkit/first_ait_kit
diag_log "NOK FNC IS BLEEDING CALLED";

diag_log format["NOK FNC IS BLEEDING CALLED PLAYER IS BLEEDING: %1", player getVariable["life_is_bleeding", false]];

while { player getVariable ["life_is_bleeding", false] }  do { 
	
	if (!alive player) exitWith { player setVariable["life_is_bleeding",false,false]; };

	0 cutText["Du verblutest, lass dich Verarzten!","PLAIN"];
	_wounded = getDammage player;
	_wounded = _wounded + 0.0005;
	diag_log format["WOUNDINGS: %1", _wounded];

	player setDamage _wounded;
	_stabalized = player getVariable ["life_is_stabelized", false];
	if (_stabalized) then {
		sleep 60;
	} else {
		sleep 35;
	};

	if (_wounded > 0.85) then {
		[[player,"AinjPfalMstpSnonWnonDf_carried_fallwc"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		0 cutText["Du bist zu zu schwer verletzt und verlierst kurz das Bewusstsein","BLACK FADED"];
		0 cutFadeOut 20;
		sleep 5;
		disableUserInput true;
		[[player,"amovppnemstpsraswrfldnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		life_istazed = false;
		player allowDamage true;
		disableUserInput false;
	};

	[] call life_fnc_hudUpdate;
};


