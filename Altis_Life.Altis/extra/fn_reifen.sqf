
_car = _this select 0;
_HitLFWheel = _car getHitPointDamage "HitLFWheel";
 if (isnil "_HitLFWheel") then {_HitLFWheel = 0};
 _HitLBWheel = _car getHitPointDamage "HitLBWheel"; 
 if (isnil "_HitLBWheel") then {_HitLBWheel = 0}; 
 _HitLMWheel = _car getHitPointDamage "HitLMWheel";
 if (isnil "_HitLMWheel") then {_HitLMWheel = 0}; 
 _HitLF2Wheel = _car getHitPointDamage "HitLF2Wheel"; 
 if (isnil "_HitLF2Wheel") then {_HitLF2Wheel = 0}; 
 _HitRFWheel = _car getHitPointDamage "HitRFWheel"; 
 if (isnil "_HitRFWheel") then {_HitRFWheel = 0};
 _HitRBWheel = _car getHitPointDamage "HitRBWheel";
 if (isnil "_HitRBWheel") then {_HitRBWheel = 0}; 
 _HitRMWheel = _car getHitPointDamage "HitRMWheel";
 if (isnil "_HitRMWheel") then {_HitRMWheel = 0};
 _HitRF2Wheel = _car getHitPointDamage "HitRF2Wheel";
 if (isnil "_HitRF2Wheel") then {_HitRF2Wheel = 0}; 
 
_defekt = 0;
_i = 0;
_defz = [];
{if (_x == 1) then {_defekt = _defekt + 1; _defz pushBack _i; };_i = _i+1; }foreach [_HitLFWheel,_HitLBWheel,_HitLMWheel,_HitLF2Wheel,_HitRFWheel,_HitRBWheel,_HitRMWheel,_HitRF2Wheel];
if (_defekt != 0) then {
	life_action_inUse = true;
	_displayName = getText(configFile >> "CfgVehicles" >> (typeOf _car) >> "displayName");
	_upp = format["Reifen Wechseln an %1",_displayName];
	//Setup our progress bar.
	disableSerialization;
	5 cutRsc ["life_progress","PLAIN"];
	_ui = uiNameSpace getVariable "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
	_progress progressSetPosition 0.01;
	_cP = 0.01;
	nok_ani = true;
	[] spawn {
		while {!isnil "nok_ani"} do {
			waituntil {animationState player != "AinvPknlMstpSnonWnonDnon_medic_1"};
		if (isnil "nok_ani") exitwith {};
			[[player,"AinvPknlMstpSnonWnonDnon_medic_1",true],"life_fnc_animSync",true,false] spawn life_fnc_MP;
			player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
			sleep 1;
		};
	}; 
	while{true} do
	{
		sleep 0.27;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(!alive player) exitWith {};
		if(player != vehicle player) exitWith {};
		if(life_interrupted) exitWith {};
	};
	nok_ani =nil;
	life_action_inUse = false;
	5 cutText ["","PLAIN"];
	player playActionNow "stop";
	if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
	if(player != vehicle player) exitWith {titleText[localize "STR_NOTF_RepairingInVehicle","PLAIN"];};
	if (!([false,"reifen",1] call life_fnc_handleInv)) exitwith {Hint "Du hast keine Reifen mehr"};
	_select = _defz call BIS_fnc_selectRandom;
	_defz = _defz - [_select];
	_point = ["HitLFWheel","HitLBWheel","HitLMWheel","HitLF2Wheel","HitRFWheel","HitRBWheel","HitRMWheel","HitRF2Wheel"] select _select;
	_car allowdamage false;	
	_car sethitpointdamage [_point,0];
	_car setpos [getpos _car select 0,getpos _car select 1,(getpos _car select 3)+1];
	_car allowdamage true;
	titleText["Reifen Ausgetauscht","PLAIN"];
} else {Hint "Deine Reifen sind soweit in Ordnung"};




	



	
	
	//	{_car sethitpointdamage [_x,0]} foreach["HitLFWheel","HitLBWheel","HitLMWheel","HitLF2Wheel","HitRFWheel","HitRBWheel","HitRMWheel","HitRF2Wheel"];