/*
    File: fn_adacUniform.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Loads saved civilian gear, this is limited for a reason and that's balance.
*/

[] spawn
{
    while {true} do
    {
        waitUntil {uniform player == "U_Rangemaster"};
        player setObjectTextureGlobal [0, "textures\ADAC\adac_uniform.paa"];
        waitUntil {uniform player != "U_Rangemaster"};
    };
};