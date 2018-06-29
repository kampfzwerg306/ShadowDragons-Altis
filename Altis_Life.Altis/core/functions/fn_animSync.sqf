/*
	File: fn_animSync.sqf
*/
private["_unit","_anim"];
_unit = [_this,0,ObjNull,[Objnull]] call BIS_fnc_param;
_anim = [_this,1,"",[""]] call BIS_fnc_param;
_play = [_this,2,false,[false]] call bis_fnc_param;
if(isNull _unit) exitWith {};
if (_play) then {
	_unit playmoveNow _anim;
}else{
	_unit switchMove _anim;
};