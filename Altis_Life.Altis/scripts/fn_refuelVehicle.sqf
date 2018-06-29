/*
	fn_refuelVehicle.sqf
*/
private ["_vehicle","_refuelPrice","_failed","_upp","_ui","_progress","_pgText","_cP","_progressTime"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_refuelPrice = round((1-(fuel _vehicle)) * 2000);
_failed = false;
if ((BANK < _refuelPrice) && (CASH < _refuelPrice)) exitWith {hint format["Du hast keine $%1, um dein Auto aufzutanken!",_refuelPrice];};
if (count (crew _vehicle) > 0) exitWith {hint "Aus Sicherheitgründen müssen alle Personen während des Tankvorgangs das Fahrzeug verlassen!";};

// Setup our progress bar
_upp = "Auto auftanken...";
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;
_progressTime = round((1-(fuel _vehicle)))*0.4;
while{true} do
{
	sleep _progressTime;
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
	if(_cP >= 1) exitWith {};	
	if(player distance _vehicle > 10) exitWith {
		hintSilent "Der Zapfhahn ist abgerutscht, da du dich zu weit entfernt hast.";
		_failed = true;
	};
	if(!alive player) exitWith {
		_failed = true;
	};
};
5 cutText ["","PLAIN"];

if (!_failed) then {
	if(local _vehicle) then {
		_vehicle setFuel 1;
	} else {
		[[_vehicle,1],"life_fnc_setFuel",_vehicle,false] spawn life_fnc_MP;
	};
	if((CASH - _refuelPrice) < 0) then {
		BANK = BANK - _refuelPrice;
	} else {
		CASH = CASH - _refuelPrice;
	};
};
