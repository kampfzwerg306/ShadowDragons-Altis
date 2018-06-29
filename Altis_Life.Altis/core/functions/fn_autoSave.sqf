/*
@Version: 0.3
@Author: =IFD= Cryptonat
@Edited: 5/16/14

Description:
Saves the player's gear every 10 minutes.
*/
//diag_log "CALLING UPDATE CLOTHES FROM: autosave";
while {true} do {
    sleep 600;
    [] call SOCK_fnc_updateRequest;
    hintsilent "Game Autosaved.";
    [] call life_fnc_updateClothes;
};






