_objHouse = nearestObjects [getmarkerpos "city", ["House"], 500];
Diag_log "Beleuchtung An";
_lichter = [
	[250,150,50],//Gelb
	[100,200,255],//Tv
	[80,40,20],//dunkelgeld
	[255,200,100],//gelb
	[255,204,102],//gelb3
	[255,255,255],//weis
	[180,200,255]//tv2
	];
if (!isnil "nok_hauslichter") then {
for "_i" from 0 to (count nok_hauslichter - 1) do
	{
		_house = nok_hauslichter select _i;
			//Remove light from lit house out of range
			deletevehicle (_house getvariable "hauslicht");
			_house setvariable ["hauslicht",nil];
	};
};
nok_hauslichter = [];
while {life_licht} do {
	waituntil {sleep 60;sunOrMoon != 1;player distance schnee < 1000};
	if (!life_licht) exitwith {};
	diag_log "Lichter gehen an";
	if (count nok_hauslichter == 0) then {
		{
			if (!life_licht) exitwith {};
			if (random 1 >0.8 && life_licht) then {
				sleep random 3;
				_licht = "#lightpoint" createVehiclelocal getPos _x;
				_licht setLightDayLight true;
				_random = _lichter select (random(round(count _lichter)-1));
				_licht setLightBrightness random 2;
				_licht setLightColor _random;
				_licht setLightAmbient [random 1,random 1,random 1];
				_licht setLightIntensity random 10;
				_x setvariable ["hauslicht",_licht];
				nok_hauslichter set [count nok_hauslichter, _x];
			};
		} forEach _objHouse;
		Diag_log "Lichter alle Erstellt";
		if (!life_licht) exitwith {};
	};
	waituntil {sleep 60;sunOrMoon == 1 OR !life_licht};
	Diag_log "Lichter entfernen";
	for "_i" from 0 to (count nok_hauslichter - 1) do
	{
		_house = nok_hauslichter select _i;
			//Remove light from lit house out of range
			deletevehicle (_house getvariable "hauslicht");
			_house setvariable ["hauslicht",nil];
	};
	nok_hauslichter = [];
};
Diag_log "Beleuchtung Aus";
for "_i" from 0 to (count nok_hauslichter - 1) do
{
	_house = nok_hauslichter select _i;
		//Remove light from lit house out of range
		deletevehicle (_house getvariable "hauslicht");
		_house setvariable ["hauslicht",nil];
};
nok_hauslichter = [];
