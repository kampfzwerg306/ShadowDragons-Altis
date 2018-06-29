Diag_Log "__________________________________";
Diag_Log "|                                |";
Diag_Log "|     Zombis gestartet           |";
Diag_Log "|________________________________|";

_marker = createMarker ["zone02_1", [11321.179,7833.144] ];
"zone02_1" setMarkerSize [3000,3000];
"zone02_1" setMarkerColor "ColorRed";
"zone02_1" setMarkerBrush "Solid";
"zone02_1" setMarkerAlpha 0.5;
"zone02_1" setMarkerShape "ELLIPSE";
_var = createTrigger [ "EmptyDetector", [11301.435,7818.1582] ];
_var setTriggerArea [3000, 3000, 0, false];
_var setTriggerActivation ["CIV", "PRESENT", true];
_var setTriggerStatements [ "this","nul= [thistrigger,['zone02_1'],50, true, true] spawn INF_fnc_infectedzone" , "{if (_x iskindof 'O_G_Soldier_M_F') then {deletevehicle _x}}foreach allunits;"];

//hunter Marker
{
	_marker = createMarker [format["hunter_%1",_x],getpos _x ];
	format["hunter_%1",_x] setMarkerShape "ICON";
	format["hunter_%1",_x] setMarkerType "mil_dot";
	format["hunter_%1",_x] setMarkerSize [0.5,0.5];
	format["hunter_%1",_x] setMarkerColor "ColorBlack";
	format["hunter_%1",_x] setMarkerText "Jagdgebiet";

	_marker = createMarker [format["hunterg_%1",_x],getpos _x ];
	format["hunterg_%1",_x] setMarkerShape "ELLIPSE";
	format["hunterg_%1",_x] setMarkerType "empty";
	format["hunterg_%1",_x] setMarkerSize [350,350];
	format["hunterg_%1",_x] setMarkerColor "ColorGUER";
	format["hunterg_%1",_x] setMarkerBrush "DiagGrid";
	_x spawn hc_fnc_jagdgebiet;
}foreach [jagd_1,jagd_2,jagd_3,jagd_4];