
#include <macro.h>
/*
	File: fn_updateClothes.sqf
	Author: Torsten "Demon" Ennenbach
	
	Description:
	Centralized Update Outfit file.
*/


_coplevel = (__GETC__(life_coplevel));
//diag_log "UPDATE CLOTHES CALLED";
//diag_log format["COPLEVEL:%1", _coplevel];
[] call life_fnc_loadOut;

