#include <macro.h>
/*
	File: fn_keyHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main key handler for event 'keyDown'
*/
private ["_handled","_coplevel","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys","_player","_params","_position","_sweapon"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorTarget;
_handled = false;
_player = player;
_interactionKey = if(count (actionKeys "User10") == 0) then {219} else {(actionKeys "User10") select 0};
_mapKey = actionKeys "ShowMap" select 0;
_coplevel = (__GETC__(life_coplevel));
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D

//Vault handling...
if((_code in (actionKeys "GetOver") || _code in (actionKeys "salute")) && {(player getVariable ["restrained",false])}) exitWith {
	true;
};

if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};

//Hotfix for Interaction key not being able to be bound on some operation systems.
if(count (actionKeys "User10") != 0 && {(inputAction "User10" > 0)}) exitWith {
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	if(!life_action_inUse) then {
		[] spawn 
		{
			private["_handle"];
			_handle = [] spawn life_fnc_actionKeyHandler;
			waitUntil {scriptDone _handle};
			life_action_inUse = false;
		};
	};
	true;
};

switch (_code) do
{
	//Space key for Jumping
	case 57:
	{
		if(isNil "jumpActionTime") then {jumpActionTime = 0;};
		if(_shift && {animationState player != "AovrPercMrunSrasWrflDf"} && {isTouchingGround player} && {stance player == "STAND"} && {speed player > 2} && {!life_is_arrested} && {(velocity player) select 2 < 2.5} && {time - jumpActionTime > 1.5}) then {
			jumpActionTime = time; //Update the time.
			[player,true] spawn life_fnc_jumpFnc; //Local execution
			[[player,false],"life_fnc_jumpFnc",nil,FALSE] call life_fnc_MP; //Global execution 
			_handled = true;
		};
	};
	
	//Map Key
	case _mapKey:
	{
		switch (playerSide) do 
		{
			case west: {
				if(!visibleMap) then {
					[] spawn life_fnc_copMarkers;
					[] spawn life_fnc_medicMarkers;
				}
			};
			case independent: {
				if(!visibleMap) then {
					[] spawn life_fnc_medicMarkers;
					[] spawn life_fnc_teamMarkers;
				}
			};
			case east: {
				if(!visibleMap) then {
					[] spawn life_fnc_adacMarkers;
					[] spawn life_fnc_medicMarkers;
				}
			};
			//*Gangmarker
            if(playerSide == civilian && !visibleMap) then {
            	if(is_member_of_life_gang_five0) then  {
            		[] spawn life_fnc_copMarkers;
            		[] spawn life_fnc_medicMarkers;
            	};

            	[] spawn life_fnc_groupMarkers;
        	};
		};
	};
	
	//Holster / recall weapon.
	case 35:
	{
		if(_shift && !_ctrlKey && currentWeapon player != "") then {
				life_curWep_h = currentWeapon player;
				player action ["SwitchWeapon", player, player, 100];
				//player switchcamera cameraView;
		};
		
		if(!_shift && _ctrlKey && !isNil "life_curWep_h" && {(life_curWep_h != "")}) then {
				if(life_curWep_h in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
					player selectWeapon life_curWep_h;
			};
		};
		if(playerSide == west) then 
		{
			if (!_shift && _alt && !_ctrlKey && !dialog && (__GETC__(life_coplevel) >= 1)) then
			{
			createDialog "radar";
			disableSerialization;
			};
		};
		if(playerSide == east) then 
		{
			if (!_shift && _alt && !_ctrlKey && !dialog) then
			{
			createDialog "bau";
			disableSerialization;
			};
		};	
		
	};
	
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey:
	{
		if(!life_action_inUse) then {
			[] spawn 
			{
				private["_handle"];
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};

        };

	};

	//EMP Konsole - K

  case 37:
  {
    if (!_shift && !_alt && !_ctrlKey && (vehicle player != player)) then {
	    
    	if (playerSide == west && (_coplevel > 3) || is_member_of_life_gang_five0) then {

			[] call life_fnc_openEmpMenu; [player] call life_fnc_isEmpOperator;

		    _objects = nearestObjects [player, ["Air","Car","Ship"], 250];
		    life_actions_base = life_actions;
		    {
		        if(vehicle player != _x) then {
		        	_target = _x;
		        	_owner = (_x getVariable "vehicle_info_owners");
		        	_owner = [_owner] call life_fnc_vehicleOwners;
		        	diag_log format["Vehicle in my Near: %1", _owner];
		        	_cnt = count _owner;

		        	if (_cnt > 0) then {
		        		_title = format["EMP: %1 ", _owner];
						life_actions = life_actions + [player addAction[_title,nok_fnc_emp, [_target, life_actions_base]]];
					}; 
		        };
		    } foreach _objects;
		};
    };
  };
  
    // O, police gate opener
    case 24:
	{
		if (!_shift && !_alt && !_ctrlKey) then {
			[] call life_fnc_copOpener;
		} else {
			if(_shift) then {_handled = true;};
		  	if(_shift && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [civilian,independent]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		  	{
		   		if([false,"zipties",1] call life_fnc_handleInv) then
		    	{
		    		[] call life_fnc_restrainAction;
		    		hint "Du hast ihn gefesselt, benutze dein Interaktionsmenu für mehr Optionen";
		   		}
		   		else
		   		{
		    		hint "Du hast keine Kabelbinder";
		   		};
		   	};
		};
	};
	
	//Restraining (Shift + R)
	case 19:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [civilian,independent]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			[] call life_fnc_restrainAction;
		};
	};
	
	//Knock out, this is experimental and yeah...
		//Knock out, this is experimental and yeah...
	case 34:
	{
		if(_shift) then {_handled = true;};
		if(_shift && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && cursorTarget distance player < 4 && speed cursorTarget < 1) then
		{
			if((animationState cursorTarget) != "Incapacitated" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player getVariable["restrained",false]) && !life_istazed) then
			{
				[cursorTarget] spawn life_fnc_knockoutAction;
			};
		};
	};

	//T Key (Trunk)
	case 20:
	{
		if(!_alt && !_ctrlKey) then
		{
			if(vehicle player != player && alive vehicle player) then
			{
				if((vehicle player) in life_vehicles) then
				{
					[vehicle player] call life_fnc_openInventory;
				};
			}
				else
			{
				if((cursorTarget isKindOf "Car" OR cursorTarget isKindOf "Air" OR cursorTarget isKindOf "Ship" OR cursorTarget isKindOf "House_F") && player distance cursorTarget < 7 && vehicle player == player && alive cursorTarget) then
				{
					if(cursorTarget in life_vehicles OR {!(cursorTarget getVariable ["locked",true])}) then
					{
						[cursorTarget] call life_fnc_openInventory;
					};
				};
			};
		};
		//Surrender
		if(_shift) then {_handled = true;};
		
		if (_shift) then
		{
			if (vehicle player == player && !(player getVariable ["restrained", false]) && (animationState player) != "Incapacitated" && !life_istazed) then
			{
				if (player getVariable ["surrender", false]) then
				{
					player setVariable ["surrender", false, true];
				} else
				{
					[] spawn life_fnc_surrender;
				};
			};
		};
	};
	//L Key?
	case 38: 
	{
		//If cop run checks for turning lights on.
		if(_shift && playerSide in [west,independent,east]) then {
			if(vehicle player != player && ((typeOf vehicle player) in  __GETC__(life_sirenLightVehicles)) && (!isNil {vehicle player getVariable "lights"})) then {
				switch (playerSide) do {
					case west : {[vehicle player] call life_fnc_sirenLights;};
					case independent :{[vehicle player] call life_fnc_medicSirenLights;};
					case east : {[vehicle player] call life_fnc_adacsirenLights;};
				};
				_handled = true;
			};
		};
		 if(!_alt && !_ctrlKey) then { [] call life_fnc_radar; };

	};
	//Y Player Menu
	case 21:
	{
		if(player getVariable "restrained") exitWith {hint "solange DU gefesselt bist, ist hier nichts mit Telefonieren!"};
		if(!_alt && !_ctrlKey && !dialog) then {
			if(playerSide in [west,independent,civilian,east]) then {
				[] call life_fnc_updateclothing;
				[] call life_fnc_hudUpdate;
				[] call life_fnc_shadowos;
			};
		};
	};

	
	//F Key - Siren in Vehicle 
	case 33:
	{
		//Siren
		if(playerSide in [west,independent] && vehicle player != player && !life_siren_active && ((driver vehicle player) == player)) then
		{
			[] spawn
			{
				life_siren_active = true;
				sleep 4.7;
				life_siren_active = false;
			};
			_veh = vehicle player;
			if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
			if((_veh getVariable "siren")) then
			{
				titleText [localize "STR_MISC_SirensOFF","PLAIN"];
				_veh setVariable["siren",false,true];
			}
				else
			{
				titleText [localize "STR_MISC_SirensON","PLAIN"];
				_veh setVariable["siren",true,true];
				if(playerSide == west) then {
					[[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
				} else {
					//I do not have a custom sound for this and I really don't want to go digging for one, when you have a sound uncomment this and change medicSiren.sqf in the medical folder.
					[[_veh],"life_fnc_medicSiren",nil,true] spawn life_fnc_MP;
				};
			};
		};
		
			if (_shift) then
        {
            if(playerSide == west && vehicle player != player && !life_siren2_active && ((driver vehicle player) == player)) then
            {
                [] spawn
                {
                    life_siren2_active = true;
                    sleep 1.2;
                    life_siren2_active = false;
                };
                _veh = vehicle player;
                if(isNil {_veh getVariable "siren2"}) then {_veh setVariable["siren2",false,true];};
                if((_veh getVariable "siren2")) then
                {
                    titleText ["Yelp Off","PLAIN"];
                    _veh setVariable["siren2",false,true];
                }
                     else
                {
                    titleText ["Yelp On","PLAIN"];
                    _veh setVariable["siren2",true,true];
                    [[_veh],"life_fnc_copSiren2",nil,true] spawn life_fnc_MP;
                };
            };
        };
	};

	
	//U Key
	case 22:
	{
		if(!_alt && !_ctrlKey) then {
			if(vehicle player == player) then {
				_veh = cursorTarget;
				//diag_log "CURSOR TARGET";
			} else {
				_veh = vehicle player;
				//diag_log "VEHICLE PLAYER";
			};
			
			if(_veh isKindOf "House_F" && playerSide == civilian) then {
				if(_veh in life_vehicles && player distance _veh < 8) then {
					_door = [_veh] call life_fnc_nearestDoor;
					if(_door == 0) exitWith {hint localize "STR_House_Door_NotNear"};
					_locked = _veh getVariable [format["bis_disabled_Door_%1",_door],0];
					if(_locked == 0) then {
						_veh setVariable[format["bis_disabled_Door_%1",_door],1,true];
						_veh animate [format["door_%1_rot",_door],0];
						systemChat localize "STR_House_Door_Lock";
					} else {
						_veh setVariable[format["bis_disabled_Door_%1",_door],0,true];
						_veh animate [format["door_%1_rot",_door],1];
						systemChat localize "STR_House_Door_Unlock";
					};
				};
			} else {

				//diag_log "LOCK/UNLOCK";
				_locked = locked _veh;
				if(_veh in life_vehicles && player distance _veh < 8) then {
					//diag_log "NOT ELSE";
					if(_locked == 2) then {
						//diag_log "locked = 2";
						if(local _veh) then {
							_veh lock 0;
							_veh animateDoor ["door_back_R",1];
							_veh animateDoor ["door_back_L",1];
							_veh animateDoor ['door_R',1];
							_veh animateDoor ['door_L',1];
							_veh animateDoor ['Door_rear',1];
							_veh animateDoor ['Door_LM',1];
							_veh animateDoor ['Door_RM',1];
							_veh animateDoor ['Door_LF',1];
							_veh animateDoor ['Door_RF',1];
							_veh animateDoor ['Door_LB',1];
							_veh animateDoor ['Door_RB',1];
						} else {
							[[_veh,0],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
							_veh animateDoor ["door_back_R",1];
							_veh animateDoor ["door_back_L",1];
							_veh animateDoor ['door_R',1];
							_veh animateDoor ['door_L',1];
							_veh animateDoor ['Door_rear',1];
							_veh animateDoor ['Door_LM',1];
							_veh animateDoor ['Door_RM',1];
							_veh animateDoor ['Door_LF',1];
							_veh animateDoor ['Door_RF',1];
							_veh animateDoor ['Door_LB',1];
							_veh animateDoor ['Door_RB',1];
						};
						hint parseText format["<t color='#0ed83d'><t size='1.5'>Du hast dein Auto aufgeschlossen.</t></t>"];
						_veh say3D "unlock_sound";

					} else {
					//diag_log "ELSE?";
						if(local _veh) then {
							_veh lock 2;
							_veh animateDoor ["door_back_R",0];
							_veh animateDoor ["door_back_L",0];
							_veh animateDoor ['door_R',0];
							_veh animateDoor ['door_L',0];
							_veh animateDoor ['Door_rear',0];
							_veh animateDoor ['Door_LM',0];
							_veh animateDoor ['Door_RM',0];
							_veh animateDoor ['Door_LF',0];
							_veh animateDoor ['Door_RF',0];
							_veh animateDoor ['Door_LB',0];
							_veh animateDoor ['Door_RB',0];
						} else {
							[[_veh,2],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
							_veh animateDoor ["door_back_R",0];
							_veh animateDoor ["door_back_L",0];
							_veh animateDoor ['door_R',0];
							_veh animateDoor ['door_L',0];
							_veh animateDoor ['Door_rear',0];
							_veh animateDoor ['Door_LM',0];
							_veh animateDoor ['Door_RM',0];
							_veh animateDoor ['Door_LF',0];
							_veh animateDoor ['Door_RF',0];
							_veh animateDoor ['Door_LB',0];
							_veh animateDoor ['Door_RB',0];
						};	
						hint parseText format["<t color='#f01717'><t size='1.5'>Du hast dein Auto abgeschlossen.</t></t>"];

						_veh say3D "lock_sound";
					};
				} else {
					if(player distance _veh < 8) then {
						_owner = _veh getVariable "vehicle_info_owners";
						_owner = (_owner select 0) select 0;
						if (_owner == getplayeruid player) then {
							life_vehicles set[count life_vehicles,_veh];
						};
					};
				};
			};
			//diag_log format["VEHICLE TRUNK AFTER SPAWN CLIENTSIDE: %1", [_veh getVariable["Trunk",[]]]];
		};
	};



	case 62:
    {
    if(_alt && !_shift) then {
	    //diag_log format ["SERVER MSG: %1 Benutzt ALT+F4 (Report an die Admins)",_player getVariable["realname",name _player]];
	    [[1,format["SERVER MSG: %1 Benutzt ALT+F4 (Report an die Admins)",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	    };
    };
    case 211:
    {
    if(_ctrlKey && _alt)  then {
	    //diag_log format ["SERVER MSG: %1 Benutzt CTRL + ALT + DEL (report an die Admins)",_player getVariable["realname",name _player]];
	    [[1,format["SERVER MSG: %1 Benutzt CTRL + ALT + DEL (report an die Admins)",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	    };
    };
    case 1:
    {
    if( _ctrlKey )  then {
	    //diag_log format ["SERVER MSG: %1 Benutzt CTRL + ESC (report an die Admins)",_player getVariable["realname",name _player]];
	    [[1,format["SERVER MSG: %1 Benutzt CTRL + ESC (report an die Admins)",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	    };
    };

//Takwondo(Traditional Martial arts in korea)(Shift + Num 1)
case 79:
{
	if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
			cutText [format["Takwondo!!!"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exerciseKata";
		};
};

//Shift+P = Faded Sound
case 25:
{
    if(_shift) then
    {
        [] call life_fnc_fadeSound;
        _handled = true;
    };
};


//Kneebend Slow(Shift + Num 2)
case 80:
{
	if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
			cutText [format["KneeBend Slow baby~"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendA";
		};
};

//Kneebend Fast(Shift + Num 3)
case 81:
{
	if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
			cutText [format["KneeBend more Hard!!!Move!!Move!!"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendB";
		};
};

//Pushup(Shift + Num 4)
case 75:
{
	if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
			cutText [format["Pushup!!!!!!"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exercisePushup";
		};
};				

	//Numpad (,) Entfernt
    case 83:
    {
        if(playerSide == civilian) then 
        {
            _handled = true;
        };
		if(playerSide == west) then 
        {
            _handled = true;
        };
		if(playerSide == east) then
		{
			_handled = true;
		};
    };
	
	//y-key(ger) No Glitching in Jail!
	case 44:
	{
		if((life_is_arrested) or {(_player getVariable ["restrained",false])}) then {
			_handled = true;
		};
	};

	//Q Key
	case 16:
	{

		 if(_shift) then {
		    if(vehicle player != player && (isnil "nok_pursuit") && (vehicle player iskindof "Car")) then {
			[] spawn nok_fnc_pursuit ;
			};
		};



		if((!life_action_gather) && (vehicle player == player)) then
        {
        	if(life_inv_pickaxe > 0) then
            {
            	[] spawn life_fnc_pickAxeUse;
        	};
        };
	};
	case 74: // - Taste
	{
	if (bauscript) then {
		if (!_alt) then {
			nokh = nokh - 0.10;
			};
		if (_alt) then {
			nokw = nokw - 5;
			};
		};
	};
	case 78: // + Taste
	{
	if (nok_ostern) then {
		if((typeOf cursorTarget) == "Rabbit_F") then {
		[] call nok_fnc_fangostern;
		};
	};
	if (bauscript) then {
		if (!_alt) then {
			nokh = nokh + 0.10;
			};
		if (_alt) then {
			nokw = nokw +5;
			};
		};
	};
};



_handled;