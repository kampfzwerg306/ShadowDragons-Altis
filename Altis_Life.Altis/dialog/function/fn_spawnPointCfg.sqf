#include <macro.h>
/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_markers","_mkName","_mk","_uniform","_gang_darg","_gang_sd", "_gang_adac","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;


//diag_log format["PLAYERSIDE: %1", _side];
//Spawn Marker, Spawn Name, PathToImage


switch (_side) do
{
	case west:
	{
		_markers = [
			["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Pyrgos HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Autobahn Polizei","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			//["cop_spawn_4","Air HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","HW Patrol","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_9","Knast","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	case civilian:
	{

		if (life_player_alive) then {
			_markers = [
				["last_pos","Letze Position","\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]
			];

		} else {
			_markers =  [
				["civ_spawn_2","Pyrgos(Schwer)","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_1","Kavala(Leicht)","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				//["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				//["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
			
			if(license_civ_rebel) then {
			_markers = _markers + [
						//["rebellen_1","Rebel Spawn 1","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
						//["rebellen_2","Rebel Spawn 2","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
						["rebellen_3","Rebel Spawn 3","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
					];
			};
		
		};
		
		// GANGS
		// DARG with loadout for Uniforms
		if(is_member_of_life_gang_tt )then {
			_markers = _markers + [
							["tt","[TT] HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
						  ];
		};					
		// Security service - with loadout for Uniforms
		if(is_member_of_life_gang_five0  )then {
			_markers = _markers + [
							["securityservice","Five-0 Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
							["securityservice_1","Aussenposten 5-0 - Grenzer","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
							["securityservice_2","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
							["securityservice_3","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]


						  ];
		};
			// ava service - with loadout for Uniforms
		if(is_member_of_life_gang_ava  )then {
			_markers = _markers + [
							["ava_spawn","AVA","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
						  ];
		};				


		
			// bwu service - with loadout for Uniforms
		if(is_member_of_life_gang_ba  )then {
			_markers = _markers + [
							["ba_spawn","BA","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
						  ];
		};				
		
			// pt service - with loadout for Uniforms
		if(is_member_of_life_gang_lms  )then {
			_markers = _markers + [
							["lms_spawn","LMS","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
						  ];
		};			
		
			// awc service - with loadout for Uniforms
		if(is_member_of_life_gang_awc  )then {
			_markers = _markers + [
							["awc","AWC Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
						  ];
		};			

		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				if (!(_house iskindof "Land_i_Garage_V1_F" OR _house iskindof "Land_i_Garage_V2_F")) then {
					_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
					_markers = _markers + [
					[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]
					];
				};
				//_return set[count _return,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
			} foreach life_houses;

		};



	};
	
	case independent: {
		_markers = [
			["medic_spawn_1","Kavala Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Sofia ","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pygros Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_6","Airfield","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]

		];
	};
	
	case east: {
		_markers = [
			["adac_1","ADAC Prüfungsgelände","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["adac_2","ADAC HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["adac_3","ADAC Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["adac_4","ADAC Pygros","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["adac_5","ADAC Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["medic_spawn_1","Kavala Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Sofia ","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pygros Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_6","Airfield","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]

		];
	};
};
_markers;