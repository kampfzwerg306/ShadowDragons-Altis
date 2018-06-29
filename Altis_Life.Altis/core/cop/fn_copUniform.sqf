#include <macro.h>
/*
    File: fn_copUniform.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Loads saved civilian gear, this is limited for a reason and that's balance.
*/

[] spawn
{
    while {true} do
    {
        waitUntil {uniform player == "U_Rangemaster"};
        if(__GETC__(life_coplevel) == 1) then
        {
            player setObjectTextureGlobal [0, "textures\cop_uniform1.paa"];
        };

        if(__GETC__(life_coplevel) == 2) then
        {
            player setObjectTextureGlobal [0, "textures\cop_uniform2.paa"];
        };
        waitUntil {uniform player != "U_Rangemaster"};
    };
};