/*
File : fn_copShowLicense.sqf
Create : Black Lagoon
Edit : Noldy and CYNX
Link : http://www.global-gamer.com/home/wbb/index.php/Thread/509-Turorial-Polizeimarke-zeigen/

Beschreibung : Fuegt einen 'Polizeiausweis' hinzu, den man ueber scrollen Zivilisten zeigen kann
*/

private["_target", "_message","_coplevel","_rang","_canShow"];

_target = cursorTarget;
_canShow = false;




if (playerSide == west) then {
	_canShow = true;
};
if (is_member_of_life_gang_five0) then {
	_canShow = true;
};

if(!(_canShow)) exitWith
{
	hint "Du bist kein Cop!";
};


if( isNull _target) then {_target = player;};

if( !(_target isKindOf "Man") ) then {_target = player;};

if( !(alive _target) ) then {_target = player;};

_coplevel = call life_coplevel;

switch ( _coplevel ) do
{
	case 1: { _rang = "Officer"; };
	case 2: { _rang = "Detective"; };
	case 3: { _rang = "Sergeant"; };
	case 4: { _rang = "Lieutnant"; };
	case 5: { _rang = "Captain"; };
	case 6: { _rang = "Commander"; };
	case 7: { _rang = "Chief"; };
	default {_rank =  "Error";};
};


if (is_member_of_life_gang_five0) then {
	_message = format["<img size='10' color='#FFFFFF' image='textures\marke.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1.8'>%2</t><br/><t size='1'>Five-0 Altis</t>", name player, "Special Agent"];
} else {
	_message = format["<img size='10' color='#FFFFFF' image='textures\marke.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1.8'>%2</t><br/><t size='1'>Polizei Altis</t>", name player, _rang];
};


[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
