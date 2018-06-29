private ["_nok1","_nok2","_nok3","_nok4"];
diag_log "Ampel online geschaltet";
sleep 60;
_nok1 = [3610.56,13129.5,0] nearestObject "Land_City_Pillar_F";
_nok2 = [3628.9,13141.1,0] nearestObject "Land_City_Pillar_F";
_nok3 = [3625.81,13130.2,0] nearestObject "Land_City_Pillar_F";
_nok4 = [3614.59,13145.6,0] nearestObject "Land_City_Pillar_F";
diag_log format ["_nok1 %1,_nok2 %2,_nok3 %3,_nok4 %4",_nok1,_nok2,_nok3,_nok4];
while {true} do {
[[1,_nok1,_nok2,_nok3,_nok4],"nok_fnc_ampel",true,false] spawn life_fnc_MP;
sleep (15 + random (25));
[[2,_nok1,_nok2,_nok3,_nok4],"nok_fnc_ampel",true,false] spawn life_fnc_MP;
sleep (15 + random (25));
};
