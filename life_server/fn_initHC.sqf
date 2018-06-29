/*
	File: fn_initHC.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Server checks for the headless client and initializes?
*/
private["_HC_Monitor"];

_hc = _this select 0;
_slot = _this select 1;
Diag_log str _hc;
Diag_log str _slot;
switch (_hc) do {
	case "head_1" : 	{
					HC1_UID = getPlayerUID _slot;
					HC1 = true;
					HC1_owner = owner _slot;
					publicvariable "HC1";
					publicvariable "HC1_owner";
					_slot setvariable ["HC",_hc];
					[] spawn TON_fnc_hc1;
					};
	case "head_2" : 	{
					HC2_UID = getPlayerUID _slot;
					HC2 = true;
					HC2_owner = owner _slot;
					publicvariable "HC2";
					publicvariable "HC2_owner";
					_slot setvariable ["HC",_hc];
					[] spawn TON_fnc_hc2;
					};
};