private ["_nexte","_zombi","_sleep"];
diag_log "Zombi Aktiv";
zombi = createGroup east; //Zombi Gruppe erstellen
nok_zombi2 = false;

{createMarkerLocal [_x select 1,_x select 0];
Diag_log format ["Marker %1, Pos %2",_x select 1,_x select 0];
}foreach [
[[12266.3,7360.62,0],"z1"],
[[10785.2,7195.5,0],"z2"],
[[1012.7,7991.08,0],"z3"],
[[12036.1,9231.98,0],"z4"],
[[10720.1,8506.45,0],"z5"],
[[9634.35,8426.39,0],"z6"],
[[12216.2,6735.17,0],"z7"],
[[9979.6,9577.23,0],"z8"],
[[12746.6,9682.3,0],"z9"]
];
_marker = createMarker["mll",[10764.2,8337.52,0]];
_marker setMarkerSize [2500,2500];
_marker setMarkerShape "ELLIPSE";
_marker setMarkerColor "ColorBlack";
_marker setMarkerAlpha 1;
_marker = createMarker["mll2",[10764.2,8337.52,0]];
_marker setMarkerType "hd_warning";
_marker setMarkerShape "ICON";
_marker setMarkerText "Zombi Zone";
_marker setMarkerColor "ColorGreen";

zombinah = [];
[] spawn {
	_sleep = 20;
	While {nok_zombi} do {
		sleep _sleep;
		zombinah = [];
		{
			if (_x distance getmarkerpos "mll" < 1100) then {
				zombinah pushBack _x;
			};
		}foreach playableUnits;
		if (count zombinah == 0) then {nok_zombi2 = false; _sleep = 20;};
		if (count zombinah > 0) then {
			nok_zombi2 = true;
			_sleep = 3;
			{	_zombi = _x;
				if (count zombinah == 1) then { _x domove getpos (zombinah select 0)} else {
					_zombi domove getpos (([zombinah,[],{_zombi distance _x},"ASCEND"] call BIS_fnc_sortBy)select 0);
				};
				if (_zombi distance getmarkerpos "mll" > 1000) then {deletevehicle _x};
				_nexte = [];
				{if (_zombi distance _x < 2) then {
					[[_zombi,"AwopPercMstpSgthWnonDnon_end"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
					_x setDamage (damage _x + ((random 50)/100));};
				}foreach zombinah;
			
			}foreach units zombi;
		} else { nok_zombi2 = false};
	};
};
[] spawn {
	while {true} do {
		waituntil {nok_zombi2};
		while {nok_zombi2} do {
			if ((count units zombi) < ((count zombinah) * 20)) then {
				for "_i" from 1 to ((count zombinah) * 20) do {
					_marker = ["z1","z2","z3","z4","z5","z6","z7","z8","z9"] call BIS_fnc_selectRandom;
					if (random 100 < 5) then {
						"O_G_Soldier_F" createUnit [ getMarkerPos _marker,
						zombi,
						"enableRadio false;
						removeAllWeapons this;
						this setDamage 0.5;
						this setObjectMaterial [0, 'A3\Structures_F\Households\House_Shop01\Data\destruct_i_Shop_01_V3_F_multi.rvmat'];
						this switchMove 'AfalPknlMstpSnonWnonDnon';
						[[this,'AfalPknlMstpSnonWnonDnon'],'life_fnc_animSync',true,false] spawn life_fnc_MP;
						5 fadeRadio 0;
						this domove getpos (zombinah call BIS_fnc_selectRandom);
						this addEventHandler['Killed', {
							_pos = (_this select 0) modelToWorld[0,3,0];
							_pos = [_pos select 0, _pos select 1, 0];
							_obj = 'Land_Suitcase_F' createVehicle _pos;
							_obj setPos _pos;
							_obj setVariable['item',['spezial',1],true];
							deletevehicle (_this select 0);
						}];",
						1, "corporal"
						];
					} else {
						"O_G_Soldier_F" createUnit [ getMarkerPos _marker,
						zombi,
						"enableRadio false;
						removeAllWeapons this;
						this setDamage 0.5;
						this setObjectMaterial [0, 'A3\Structures_F\Households\House_Shop01\Data\destruct_i_Shop_01_V3_F_multi.rvmat'];
						this switchMove 'AfalPknlMstpSnonWnonDnon';
						[[this,'AfalPknlMstpSnonWnonDnon'],'life_fnc_animSync',true,false] spawn life_fnc_MP;
						5 fadeRadio 0;
						this domove getpos (zombinah call BIS_fnc_selectRandom);
						this addEventHandler['Killed', {deletevehicle (_this select 0);}];",
						1, "corporal"
						];
					};
				};
				sleep 20;
			};
		};
	};
};