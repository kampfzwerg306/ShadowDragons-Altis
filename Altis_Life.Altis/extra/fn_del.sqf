Private ["_p","_a1","_a2"];
if(playerSide == east) then {
	abbau = true;
	_abbau = [];
	[] call nok_fnc_adacbaucfg;
	{ _abbau pushBack (_x select 1)}foreach abbau;
	abbau = nil;
	_p = Player;
	ende=false;
	dell=false;
	_a1 = _p addAction ["<t color='#11FF00'>Abbauen</t>",{dell=true}];
	_a2 = _p addAction ["<t color='#FF0000'>Abbrechen</t>",{ende=true}];  
	while{true} do {
		if (ende) exitwith {_p removeaction _a1;_p removeaction _a2;};
		if (!ende) then {
				waituntil {dell OR ende};
				if (dell && ( typeOf cursorTarget in _abbau)) then {
					deleteVehicle cursorTarget;
				};
		dell=false;
		};
		sleep 0.1;
		};
	};
_p removeaction _a1;
_p removeaction _a2;