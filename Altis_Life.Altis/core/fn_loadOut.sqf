#include <macro.h>
/*
    File: fn_loadout.sqf
    Author: Torsten "Demon" Ennenbach

    Description:
    General Loadout seperated by Side
    Hate the "LoadGear/LoadOut Default mix CRAP by each fucking wannabe developer!"


*/
	_uniform = uniform player;
	_backpack = backpack player;
// civilian Part
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

	
};

// WEST PART
if (playerSide == west) then {

	_coplevel = (__GETC__(life_coplevel));

	
// Switch texture only if cop is wearing a specific uniform!
	if ( (_coplevel > 0) && (uniform player == "U_Rangemaster") ) then {
		player setObjectTextureGlobal [0, "textures\COP\Uniform\U_Rangemaster.paa"]; // this is for all cops whitelisted or public.
	};

	if ((_coplevel > 0) && (uniform player == "U_BG_Guerilla2_1") ) then {
		player setObjectTextureGlobal [0, "textures\COP\Uniform\U_BG_Guerilla2_1.paa"]; // this is for all cops whitelisted or public.
	};

	if ((_coplevel > 3) && (uniform player == "U_B_CombatUniform_mcam") ) then {
		player setObjectTextureGlobal [0, "textures\COP\Uniform\U_B_CombatUniform_mcam.paa"]; // this is for all whitelisted cops above the rank of 2 on the database (these numbers can be adjusted as needed)
	};

	if ((_coplevel> 0) && (Backpack player == "B_OutdoorPack_blk") ) then {
		(unitbackpack player) setObjectTextureGlobal [0, "textures\COP\Uniform\B_OutdoorPack_blk.paa"]; // this is for all whitelisted cops above the rank of 2 on the database (these numbers can be adjusted as needed)
	};
	if (Backpack player == "B_Carryall_khk") then {
		(unitBackpack player) setObjectTextureGlobal [0, "textures\COP\Uniform\B_Carryall_khk.paa"]; 
	};

};

// ADAC PART
if (playerSide == east) then {

/*
Allowed Uniforms:
U_I_CombatUniform_shortsleeve
U_I_HeliPilotCoveralls
U_I_pilotCoveralls
U_I_CombatUniform
U_I_CombatUniform_tshirt
U_I_Wetsuit
U_OG_Guerilla2_3
U_C_Scientist
U_Rangemaster

*/

	switch(_uniform) do {
		case "U_OG_Guerilla2_3" : {
			player setObjectTextureGlobal [0, "textures\ADAC\alr-garde.paa"]; 
		};
		case "U_Rangemaster" : {
			player setObjectTextureGlobal [0, "textures\ADAC\alr-garde.paa"]; 
		};
		case "U_C_Scientist" : {
			player setObjectTextureGlobal [0, "textures\ADAC\alr_overall.paa"]; 			
		};
	};		
};


// MEDICS PART
/*
if (playerSide == independent) then {



allowed uniforms:
U_IG_Guerilla2_1
U_IG_Guerilla2_2
U_IG_Guerilla2_3
U_Rangemaster



	switch(_uniform) do {
		case "U_Rangemaster" : {
			player setObjectTextureGlobal [0, "textures\MED\recrute_uniform_rettungsdienst.paa"]; 					
		};
		case "U_IG_Guerilla2_2" : {
			player setObjectTextureGlobal [0, "textures\MED\U_IG_Guerilla2.paa"]; 					
		};
		case "U_IG_Guerilla2_3" : {
			player setObjectTextureGlobal [0, "textures\MED\U_IG_Guerilla2.paa"]; 					
		};

	};

	if (Backpack player == "B_Bergen_mcamo") then {
		(unitbackpack player) setObjectTextureGlobal [0, "textures\Med\B_Bergen_mcamo.paa"]; // this is for all whitelisted cops above the rank of 2 on the database (these numbers can be adjusted as needed)
	};

};
*/
_canUse = player isUniformAllowed _uniform;


//diag_log format["PLAYERSIDE: %1", playerSide];
//diag_log format["UNIFORM: %1", _uniform];
//diag_log format["IS UNIFORM ALLOWED: %1", _canUse];
