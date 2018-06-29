#include <macro.h>
/*
    File: fn_gangLoadout.sqf
    Author: Torsten "Demon" Ennenbach

    Description:
    Load the Gangspecific Loadout for Gangs
*/


if (playerSide == civilian) then
{

	_uniform = uniform player;
	_backpack = backpack player;
		

	
	if(is_member_of_life_gang_five0) then {
		switch(_uniform) do {
			case "U_B_CombatUniform_mcam" : {
				player setObjectTextureGlobal [0,"textures\SD\sec.paa"];
			};
			case "U_Rangemaster" : {
				player setObjectTextureGlobal [0, "textures\SD\Rangemaster-uniform.paa"]; 			
			};		
		};	
	};


	if (playerSide == east) then {
		switch(_uniform) do {
			case "U_Rangemaster" : {
				player setObjectTextureGlobal [0, "textures\ADAC\adac_uniform.paa"]; 			
			};
		};		
	};
};

	