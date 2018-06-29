
/*
	File: fn_copLoadout.sqf
	Author: Tobias 'Xetoxyc' Sittenauer

	Description:
	Loads the cops out with the default gear.
*/
removeAllContainers player;
removeAllWeapons player;
player addUniform "U_OG_Guerilla2_1";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
removeGoggles player;
removeHeadGear player;
if(hmd player != "") then {
	player unlinkItem (hmd player);
};


#include <macro.h>
/*
	COP UNIFORM SCRIPT
	Author: [SD] Demon 
	
*/

/* if ((playerSide == independent)  && (uniform player == "U_OG_Guerilla2_1") )  then {
//diag_log "SETTING MEDIC TEXTURE";
		player setObjectTextureGlobal [0, "textures\MED\U_IG_Guerilla2.paa"]; // this is for all cops whitelisted or public.
	};
*/