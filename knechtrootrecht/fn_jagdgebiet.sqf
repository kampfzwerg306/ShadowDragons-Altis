_ziel = _this;
_jagd = [];

while {true} do {
	waituntil {uiSleep 10; count (_ziel getvariable ["jagd",[]]) >= 1};
	Diag_log "Erstelle Tiere";
	for "_i" from 1 to 50 do {
		_zahl = round random 10;
		//["Snake_random_F","Goat_random_F", "Rabbit_F","Hen_random_F", "Sheep_random_F","Fin_random_F"];
		switch (_zahl) do {
			//case 0  : { _tier = createAgent ["Snake_random_F", position _ziel, [], 300, "FORM"]; _tier setObjectTextureGlobal[0,"textures\vehicles\civ\snake_black_red.paa"]; _tier setdir random 360;_tier addEventHandler ["killed", "[[_this select 0],'nok_fnc_blut',true,false] spawn life_fnc_MP"]; _jagd pushBack _tier; };
			case 0  : { _tier = createAgent ["Goat_random_F", position _ziel, [], 200, "FORM"]; _tier setdir random 360;_tier addEventHandler ["killed", "[[_this select 0],'nok_fnc_blut',true,false] spawn life_fnc_MP"];_tier setvariable ["jagd",true,true]; _jagd pushBack _tier; };
			case 1  : { _tier = createAgent ["Goat_random_F", position _ziel, [], 200, "FORM"]; _tier setdir random 360;_tier addEventHandler ["killed", "[[_this select 0],'nok_fnc_blut',true,false] spawn life_fnc_MP"];_tier setvariable ["jagd",true,true]; _jagd pushBack _tier; };
			case 2  : { _tier = createAgent ["Fin_random_F", position _ziel, [], 200, "FORM"]; _tier setdir random 360;_tier addEventHandler ["killed", "[[_this select 0],'nok_fnc_blut',true,false] spawn life_fnc_MP"];_tier setvariable ["jagd",true,true]; _jagd pushBack _tier; };
			case 3  : { _tier = createAgent ["Hen_random_F", position _ziel, [], 200, "FORM"]; _tier setdir random 360;_tier addEventHandler ["killed", "[[_this select 0],'nok_fnc_blut',true,false] spawn life_fnc_MP"];_tier setvariable ["jagd",true,true]; _jagd pushBack _tier; };
			case 4  : { _tier = createAgent ["Hen_random_F", position _ziel, [], 200, "FORM"]; _tier setdir random 360;_tier addEventHandler ["killed", "[[_this select 0],'nok_fnc_blut',true,false] spawn life_fnc_MP"];_tier setvariable ["jagd",true,true]; _jagd pushBack _tier; };
			case 5  : { _tier = createAgent ["Sheep_random_F", position _ziel, [], 200, "FORM"]; _tier setdir random 360;_tier addEventHandler ["killed", "[[_this select 0],'nok_fnc_blut',true,false] spawn life_fnc_MP"];_tier setvariable ["jagd",true,true]; _jagd pushBack _tier; };
			case 6  : { _tier = createAgent ["Hen_random_F", position _ziel, [], 200, "FORM"]; _tier setdir random 360;_tier addEventHandler ["killed", "[[_this select 0],'nok_fnc_blut',true,false] spawn life_fnc_MP"];_tier setvariable ["jagd",true,true]; _jagd pushBack _tier; };
			case 7  : { _tier = createAgent ["Goat_random_F", position _ziel, [], 200, "FORM"]; _tier setdir random 360;_tier addEventHandler ["killed", "[[_this select 0],'nok_fnc_blut',true,false] spawn life_fnc_MP"];_tier setvariable ["jagd",true,true]; _jagd pushBack _tier; };
			case 8  : { _tier = createAgent ["Sheep_random_F", position _ziel, [], 200, "FORM"]; _tier setdir random 360;_tier addEventHandler ["killed", "[[_this select 0],'nok_fnc_blut',true,false] spawn life_fnc_MP"];_tier setvariable ["jagd",true,true]; _jagd pushBack _tier; };
			case 9  : { _tier = createAgent ["Hen_random_F", position _ziel, [], 200, "FORM"]; _tier setdir random 360;_tier addEventHandler ["killed", "[[_this select 0],'nok_fnc_blut',true,false] spawn life_fnc_MP"];_tier setvariable ["jagd",true,true]; _jagd pushBack _tier; };
			case 10 : { _tier = createAgent ["Fin_random_F", position _ziel, [], 200, "FORM"]; _tier setdir random 360;_tier addEventHandler ["killed", "[[_this select 0],'nok_fnc_blut',true,false] spawn life_fnc_MP"];_tier setvariable ["jagd",true,true]; _jagd pushBack _tier; };
		};
	};
	waituntil {sleep 10; count (_ziel getvariable ["jagd",[]]) == 0};
	Diag_log "Lösche Tiere";
	{deletevehicle _x}foreach _jagd
};