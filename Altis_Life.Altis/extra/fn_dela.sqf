if(playerSide == east) then {
	_p = Player;
	abbau = true;
	_abbau = [];
	[] call nok_fnc_adacbaucfg;
	{ _abbau pushBack (_x select 1)}foreach abbau;
	abbau = nil;
	{deleteVehicle _x} forEach (nearestObjects [_p, _abbau, 10]);
};