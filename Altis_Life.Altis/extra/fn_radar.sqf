Private ["_p","_obje","_obje2","_d","_speed","_u2","_blitzer"];
_speed = ctrlText 1400;
if(! ([_speed] call TON_fnc_isnumber)) exitWith
{
	hint "Du must eine Zahl angeben.";
};
_speed = parseNumber _speed; 
_speed = round _speed;
closeDialog 0;
_p = player;
_blitze = "Land_Runway_PAPI" createvehiclelocal getpos player;
_obje = "Land_City_Pillar_F" createvehiclelocal getpos player;
_blitze attachto [_obje,[0,0,2.5]];
_blitze allowdamage false;
_obje allowdamage false;
nokh = 1;
nokw = 0;
end=false; 
bau=false;
bauscript=true;
_a1 = _p addAction ["<t color='#11FF00'>Bauen</t>",{bau=true}];
_a2 = _p addAction ["<t color='#FF0000'>Abbrechen</t>",{end=true}];

while{bauscript} do {
	_obje attachto [player,[0,4,nokh]];
	_nokh = nokh;
	waituntil {bau OR end OR (_nokh == nokh)};
	if (bau) then {
		_posi = getpos _obje;
		_dir = getdir _obje;
		deleteVehicle _obje; 
		deleteVehicle _blitze;
		sleep 0.1;
        _obje2 = createVehicle ["Land_City_Pillar_F",_posi, [], 0, "CAN_COLLIDE"]; 
        _blitzer = "Land_Runway_PAPI" createvehicle getpos player;


		_obje2 setDir _dir;
		_blitzer setdir _dir;
		_blitzer attachto [_obje2,[0,0,2.5]];
		_obje2 setPos _posi;
		_obje2 enableSimulation false;
		_obje2 allowdamage false;
		end = true;
		sleep 1;
		detach _blitzer;
		_blitzer setpos getpos _blitzer;
		_blitzer setvariable ["speed",_speed,true];
		_blitzer setvariable ["bau",[true,_obje2,_blitzer],true];
		if (isnil "nok_blitzer") then {nok_blitzer = [];};
		nok_blitzer set [count nok_blitzer,_blitzer];
		publicvariable "nok_blitzer";
		_blitzer allowdamage false;
	};
	if (end) then {
		deleteVehicle _obje;
		deleteVehicle _blitze;
		_p removeaction _a1;
		_p removeaction _a2;
		bauscript = false;
	};
};		
deleteVehicle _obje;
deleteVehicle _blitze;
_p removeaction _a1;
_p removeaction _a2;
bauscript = false;
