#include <macro.h>
/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
private["_veh","_locked","_heal_action","_chem_r","_chem_y","_chem_g","_chem_b","_chem_d"];
life_actions = [];
switch (playerSide) do
{
	case civilian:
	{
			if(vehicle player == player) then {
				_veh = cursorTarget;
				//diag_log "CURSOR TARGET";
			} else {
				_veh = vehicle player;
				//diag_log "VEHICLE PLAYER";
			};
	
	
		//Drop fishing net
		life_actions = life_actions + [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions =  life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		//life_actions = life_actions + [player addAction["Harvest Organs",life_fnc_takeOrgans,"",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable ["missingOrgan",FALSE]) && !(player getVariable "Escorting") && !(player getVariable "hasOrgan") && !(player getVariable "transporting") && animationState cursorTarget == "Incapacitated"']];
		/*if(is_member_of_life_gang_five0)then {
		    life_actions = life_actions + [player addAction["Waffe beschlagnahmen",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];
		};*/

	};

	case west:
	{
		//Seize PlayerWeapons
	    life_actions = life_actions + [player addAction["Waffe beschlagnahmen",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Polizeimarke zeigen</t>",life_fnc_copShowLicense,"",1,false,true,"",' playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" ']];
	};
	
	case east:
	{
		//Kegel
	    life_actions = life_actions + [player addAction["<t color='#FF0000'>Kegel aufheben</t>",life_fnc_packukegel,"",0,false,false,"",' _kegel = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0; !isNil "_kegel" && !isNil {(_kegel getVariable "item")}']];
	};


};


	
		//Custom Heal
		_heal_action =  [player addAction["<t color='#00FF00'>Full Heal Self</t>",life_fnc_heal,"second",-1,false,false,"",' vehicle player == player && (damage player) > 0.01 && ("Medikit" in (items player))']];
		//life_actions = life_actions + [player addAction["<t color='#FF0000'>Repair Vehicle</t>",life_fnc_repairTruck,"",99,false,false,"", ' vehicle player == player && !isNull cursorTarget && ((cursorTarget isKindOf "Car") OR (cursorTarget isKindOf "Air") OR (cursorTarget isKindOf "Ship")) && (damage cursorTarget) > 0.001 && ("ToolKit" in (backpackItems player)) && (player distance cursorTarget < ((boundingBox cursorTarget select 1) select 0) + 2) ']];
		//Custom Repair
		

				//Use Chemlights in hand
		_chem_r = [player addAction["Chemlight (RED) in Hand",life_fnc_chemlightUse,"red",-1,false,false,"",
			' isNil "life_chemlight" && "Chemlight_red" in (magazines player) && vehicle player == player ']];
		_chem_y = [player addAction["Chemlight (YELLOW) in Hand",life_fnc_chemlightUse,"yellow",-1,false,false,"",
				' isNil "life_chemlight" && "Chemlight_yellow" in (magazines player) && vehicle player == player ']];
		_chem_g = [player addAction["Chemlight (GREEN) in Hand",life_fnc_chemlightUse,"green",-1,false,false,"",
				' isNil "life_chemlight" && "Chemlight_green" in (magazines player) && vehicle player == player ']];
		_chem_b = [player addAction["Chemlight (BLUE) in Hand",life_fnc_chemlightUse,"blue",-1,false,false,"",
			' isNil "life_chemlight" && "Chemlight_blue" in (magazines player) && vehicle player == player ']];
				//Drop Chemlight
		_chem_d = [player addAction["Drop Chemlight",{if(isNil "life_chemlight") exitWith {};if(isNull life_chemlight) exitWith {};detach life_chemlight; life_chemlight = nil;},"",-1,false,false,"",'!isNil "life_chemlight" && !isNull life_chemlight && vehicle player == player ']];
				
		//Housing 
life_actions = life_actions + [player addAction["<t color='#00AAFF'>Tür öffnen</t>",life_fnc_lockHouse,"",0,false,false,"",'
		if(_veh isKindOf "House_F" && playerSide == civilian) then {if(_veh in life_vehicles && player distance _veh < 8) then {_door = [_veh] call life_fnc_nearestDoor;if(_door == 0) exitWith {hint localize "STR_House_Door_NotNear"};_locked = _veh getVariable [format["bis_disabled_Door_%1",_door],0];if(_locked == 0) then {_veh setVariable[format["bis_disabled_Door_%1",_door],1,true];_veh animate [format["door_%1_rot",_door],0];systemChat localize "STR_House_Door_Lock";} else {_veh setVariable[format["bis_disabled_Door_%1",_door],0,true];_veh animate [format["door_%1_rot",_door],1];systemChat localize "STR_House_Door_Unlock";};};} ']];

		
