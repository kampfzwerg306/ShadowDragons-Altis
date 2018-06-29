/*
	File: fn_handleDamage.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles damage, handling for the tazer pistol,rubber bullet riffle and .
*/
private["_unit","_damage","_source","_projectile","_part","_curWep", "_canTaser"];
_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;

//Internal Debugging.
if(!isNil "TON_Debug") then {
	systemChat format["PART: %1 || DAMAGE: %2 || SOURCE: %3 || PROJECTILE: %4 || FRAME: %5",_part,_damage,_source,_projectile,diag_frameno];
};

//Handle the tazer first (Top-Priority).
if(!isNull _source) then {
	if(_source != _unit) then {
		_curWep = currentWeapon _source;
		if(_projectile in ["B_9x21_Ball","B_556x45_dual"] && _curWep in ["hgun_P07_snds_F","arifle_SDAR_F"]) then {
			// why ???
			_canTaser = false;
			if (side _source == west) then {
				_canTaser = true;
			};
			if (is_member_of_life_gang_five0) then {
				_canTaser = true;
			};

			if((_canTaser)  && playerSide != west) then {
				private["_distance","_isVehicle","_isQuad"];
				_distance = if(_projectile == "B_556x45_dual") then {100} else {35};
				_isVehicle = if(vehicle player != player) then {true} else {false};
                _isQuad = if(_isVehicle) then {if(typeOf (vehicle player) in ["B_Quadbike_01_F","C_Kart_01_Blu_F","C_Kart_01_Fuel_F","C_Kart_01_Red_F","C_Kart_01_Vrana_F"]) then {true} else {false}} else {false};
			
                _damage = 0;
                if(_unit distance _source < _distance) then
                {
                    if(!life_istazed && !(_unit getVariable["restrained",false])) then
                    {
                        if(_isVehicle && _isQuad) then
                        {
                            player action ["Eject",vehicle player];
                            [_unit,_source] spawn life_fnc_tazed;
                        };
                        if(vehicle player == player) then //replace else tazed to be more specific
                        {
                            [_unit,_source] spawn life_fnc_tazed;
                        };
                    };
                };
            };
	};
			//Temp fix for super tasers on cops.
			if(playerSide == west && side _source == west) then {
				if(_projectile in ["B_9x21_Ball","B_556x45_dual"] && _curWep in ["hgun_P07_snds_F","arifle_SDAR_F"]) then 
				{
					_damage = 0;
				};
			};
	};
};

//RubberBullet Gun
if(!isNull _source) then {
	if(_source != _unit) then {
		_curWep = currentWeapon _source;
		if(_projectile in ["B_556x45_Ball_Tracer_Red"] && _curWep in ["arifle_SDAR_F"]) then {
			_canTaser = false;
			if (side _source == west) then {
				_canTaser = true;
			};
			
			if((_canTaser)  && playerSide != west) then {
				private["_distance","_isVehicle","_isQuad"];
				_distance = if(_projectile == "B_556x45_Ball_Tracer_Red") then {100} else {35};
				_isVehicle = if(vehicle player != player) then {true} else {false};
				 _isQuad = if(_isVehicle) then {if(typeOf (vehicle player) in ["B_Quadbike_01_F","C_Kart_01_Blu_F","C_Kart_01_Fuel_F","C_Kart_01_Red_F","C_Kart_01_Vrana_F"]) then {true} else {false}} else {false};
				
				_damage = 0;	
				if(_unit distance _source < _distance) then
				{
					if(!life_isdowned && !(_unit getVariable["restrained",false])) then
					{
					
                        if(_isVehicle && _isQuad) then
                        {
                            player action ["Eject",vehicle player];
							[_unit,_source] spawn life_fnc_handleDowned;
						};
						if(vehicle player == player) then
						{
							[_unit,_source] spawn life_fnc_handleDowned;
						};
					};
				};
			};
			
			if(playerSide == west && side _source == west) then {
				if(_projectile in ["B_556x45_Ball_Tracer_Red"] && _curWep in ["arifle_SDAR_F"]) then 
				{
				_damage = 0;
				};
			};
		};
	};
};
//VDM Script 
// demon: i dont like this part
if(!isNull _source) then { 
   _isVehicle = if(vehicle _source != _source) then {true} else {false};
   if (_isVehicle) then {
        _damage = 0;
		_unit = [_this,0,ObjNull,[Objnull]] call BIS_fnc_param;
		_anim = [_this,1,"",[""]] call BIS_fnc_param;
		if(isNull _unit) exitWith {};
		_unit switchMove _anim;
   };
};

// Ohnmächtig

/*switch _part do {
	case "head" : {
			diag_log "BAM I AM UNCONCIOUS";
			// get unconcius for 20 seconds
			[[player,"AinjPfalMstpSnonWnonDf_carried_fallwc"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
			_unit attachTo [_obj,[0,0,0]];
			0 cutText["Du wurdest am Kopf getroffen, du bist Ohnmächtig","BLACK FADED"];
			0 cutFadeOut 20;
			disableUserInput true;
			sleep 25;
			[[player,"amovppnemstpsraswrfldnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
			life_istazed = false;
			player allowDamage true;
			disableUserInput false;
	};
};

_wounded =  getDammage player;

if (_damage > 40 || _wounded > 0.55 ) then {
	diag_log "BAM I AM HEAVY WOUNDED";
	// now you start bleeding because you are heavy wounded
	player setVariable["life_is_bleeding",true,true];
	[] spawn nok_fnc_isBleeding;
};

// bleeding
*/


[] call life_fnc_hudUpdate;
_damage;