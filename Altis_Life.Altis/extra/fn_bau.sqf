Private ["_p","_schrank","_schrank2","_d","_u","_u2"];
_u = lbData[37451,((_this select 0) select 1)];
closedialog 0;

_p = player;
_schrank = _u createVehiclelocal [0,0,0]; //locales Objekt wird Erstellt
_schrank enableSimulation false;
_schrank allowdamage false;
nokh = 0;
nokw = 0;
ende=false; 
bau=false;
bauscript=true;
_a1 = _p addAction ["<t color='#11FF00'>Bauen</t>",{bau=true}];
_a2 = _p addAction ["<t color='#FF0000'>Abbrechen</t>",{ende=true}];
while{bauscript} do { 
	_d = getDir _p; //Sichtrichtung des Spielers wird Ermittelt
	_d = _d + nokw;
	_schrank setDir _d; //das Locale Objekt wird gedreht wie der Spieler steht
	_schrank setPosASL [((getPosASL _p)select 0) + sin(getDir _p) * 6, ((getPosASL _p)select 1) + cos(getdir _p) * 6,((getPosASL _p)select 2) + nokh]; //das Locale Objekt wird zum Spieler gestellt
	sleep 0.1;
	if (bau) exitWith{
		_u2 = [((getPosASL _p)select 0) + sin(getDir _p) * 6, ((getPosASL _p)select 1) + cos(getdir _p) * 6,((getPosASL _p)select 2) + nokh]; //Position wird in Variable _u2 geschrieben
		deleteVehicle _schrank; //Locales Objekt wird gelöscht
		sleep 0.1;
		//Globales Objekt wird erstellt
        _schrank2 = createVehicle [_u,_u2, [], 0, "CAN_COLLIDE"]; //Globales Objekt wird erstellt
		_schrank2 setDir _d; //Gobales Objekt wird richtig gedreht
		_schrank2 setPosASL _u2;
		_schrank2 setVariable["vehicle_info_owners",[[getPlayerUID player,name player]],true];
		_p removeaction _a1; //bau Aktion wird aus der Aktionsleiste gelöscht
		_p removeaction _a2; //abbrechen Aktion wird gelöscht
		bauscript = false;
		_schrank2 allowdamage false;
		_schrank2 enableSimulationGlobal false;
		if (_u == "B_static_AT_F") then {
		_schrank2 removeWeapon "missiles_titan_static";
		[false,"radar",1] call life_fnc_handleInv;
		};
	};
	if(ende) exitWith{
		deleteVehicle _schrank;
		_p removeaction _a1;
		_p removeaction _a2;
		bauscript = false;
	};
};
deleteVehicle _schrank;
_p removeaction _a1;
_p removeaction _a2;
bauscript = false;