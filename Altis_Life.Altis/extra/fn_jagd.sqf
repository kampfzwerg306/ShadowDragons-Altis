private["_tier","_type"];
_tier = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,1,"",[""]] call BIS_fnc_param;
if (isnull _tier) exitwith {};
if (_type == "") exitwith {};
if (!license_civ_hunter) exitwith {Hint "Ohne Erlaubnis ist das nicht möglich"};
if (_tier getvariable ["PickedUp",false]) exitwith {"Da ist schon wer dran"};
_itemName = [([_type,0] call life_fnc_varHandle)] call life_fnc_varToStr;
if (!(_tier getvariable ["jagd",false])) exitwith {hint "Das ist kein Tier was zum Abschuss freigegeben war"};

if (_type == "snake") exitwith {hint format ["Die Verwaltung ist dir Dankbar für deinen Einsatz und überweist ihnen %1$ Vielen Dank.",[hunter_snake] call life_fnc_numberText]; life_atmcash = life_atmcash + hunter_snake; deletevehicle _tier;};
_diff = [_type,1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff <= 0) exitWith {hint localize "STR_NOTF_InvFull"};
_tier setVariable["PickedUp",TRUE,TRUE];
[[player,"AinvPknlMstpSnonWnonDnon_medic_1",true],"life_fnc_animSync",true,false] spawn life_fnc_MP;
player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 4;
if (!alive Player) exitwith {_tier setVariable["PickedUp",false,TRUE]};
if(([true,_type,1] call life_fnc_handleInv)) then {
	titleText[format["Du hast ein %1 ausgelöst",_diff,_itemName],"PLAIN"];
};