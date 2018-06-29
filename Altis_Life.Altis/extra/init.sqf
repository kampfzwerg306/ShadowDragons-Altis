[] spawn nok_fnc_radaron;
[] spawn nok_fnc_kopf;
[] execVM "extra\teargas.sqf";
[] execVM "scripts\monitor.sqf";
[] execVM "extra\AF_Keypad\AF_KP_vars.sqf";

{_x setMarkerAlphaLocal 0} forEach ["mrkRed","mrkRed_1","mrkRed_1_1","mrkRed_1_3"];