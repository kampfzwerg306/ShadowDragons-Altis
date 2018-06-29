private ["_zombie", "_type"];
if (isserver) exitwith {};
_zombie = _this select 0;
if (player distance _zombie > 300) exitwith {};

_punchSound = ceil(random 4);
_zidleSound = ceil(random 5);
_zhurtSound = ceil(random 3);


_type = _this select 1;
if (_type == "idle") then {
	_zombie say3D format["zidle%1",_zidleSound];
};
if (_type == "hurt") then {
	_zombie say3D format["zhurt%1",_zhurtSound];
};
if (_type == "punch") then {
	_zombie say3D format["zpunch%1",_punchSound];
};