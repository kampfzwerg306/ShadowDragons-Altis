#define ctrlSelData(ctrl) (lbData[##ctrl,(lbCurSel ##ctrl)])
/*
	File: fn_vehStoreItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Used in the vehicle trunk menu, stores the selected item and puts it in the vehicles virtual inventory
	if the vehicle has room for the item.
*/
private["_ctrl","_num","_totalWeight","_itemWeight","_veh_data","_inv","_index","_val","_FuelTrucks","_FuelStuff","_Truck2","_Truck","_Uranstuff","_UranStuff2","_UranTrucks","_UranHouse","_UranTrucks2"];
disableSerialization;

_ctrl = ctrlSelData(3503);
_num = ctrlText 3506;
if(!([_num] call TON_fnc_isnumber)) exitWith {hint "Invalid Number format";};
_num = parseNumber(_num);
if(_num < 1) exitWith {hint "You can't enter anything below 1!";};

if(life_trunk_vehicle isKindOf "House_F") then {
	_mWeight = 0;
	{_mWeight = _mWeight + ([(typeOf _x)] call life_fnc_vehicleWeightCfg);} foreach (life_trunk_vehicle getVariable["containers",[]]);
	_totalWeight = [_mWeight,(life_trunk_vehicle getVariable["Trunk",[[],0]]) select 1];
} else {
	_totalWeight = [life_trunk_vehicle] call life_fnc_vehicleWeight;
};
_itemWeight = ([_ctrl] call life_fnc_itemWeight) * _num;
_veh_data = life_trunk_vehicle getVariable ["Trunk",[[],0]];
_inv = _veh_data select 0;

if(_ctrl == "goldbar" && {!(life_trunk_vehicle isKindOf "LandVehicle" OR life_trunk_vehicle isKindOf "House_F")}) exitWith {hint "You cannot store that in anything but a land vehicle!"};

_Truck = TypeOf life_trunk_vehicle;
_FuelStuff = ["oil","oilp"]; //Wich Items can be stored in?
_FuelTrucks = ["C_Van_01_fuel_F","B_Truck_01_fuel_F","O_Truck_02_fuel_F","O_Truck_03_fuel_F","I_Heli_Transport_02_F","O_Truck_03_device_F","B_Heli_Transport_03_unarmed_F","C_Van_01_fuel_F"]; //Fuel Trucks, who are allowed to carry fuel

switch (true) do
{
case ((_ctrl in _FuelStuff) && (_Truck in _FuelTrucks)): {life_TankLaster = 1}; //Fuel in FuelTruck -> Allowed
case (!(_ctrl in _FuelStuff) && !(_Truck in _FuelTrucks)): {life_TankLaster = 2}; //NonFuel in NonFuelTruck -> Allowed
	case (!(_ctrl in _FuelStuff) && (_Truck in _FuelTrucks)): {
		if ((_Truck == "O_Truck_03_device_F") || (_Truck isKindOf "House_F") || (_Truck == "I_Heli_Transport_02_F") || (_Truck == "B_Heli_Transport_03_unarmed_F" ) ) then {
			life_TankLaster = 2;
		} else {
			life_TankLaster = 3;
		};
	}; //NonFuel in FuelTruck -> Nope except it is the tempest device!

case ((_ctrl in _FuelStuff) && !(_Truck in _FuelTrucks)): {life_TankLaster = 4}; //Fuel in NonFuelTruck -> Nope!
};
if (life_TankLaster == 3) exitWith {hint "Ey Jung! Dat passt ni durch de Stutzen! Du kannst nur Öl oder Kerosin in einen Tanklaster füllen!)"};
if (life_TankLaster == 4) exitWith {hint "BISSU IRRE? Dat Zeusch würd überall auslaufe! (Du kannst Öl oder Kerosin NUR in einen Tanklaster füllen!)";};







_Truck = TypeOf life_trunk_vehicle;
_UranStuff = ["uran","uran238"];
_UranStuff2 = ["heroinp"];
_UranTrucks = ["B_Truck_01_box_F"];
_UranHouse = ["House_F"];
switch (true) do
{
case ((_ctrl in _UranStuff) && (_Truck in _UranTrucks)) : {life_UranLaster = 1}; //Uran Stufe 1 + 2 in Uranlaster -> Allowed
case ((_ctrl in _UranStuff2) && (_Truck in _UranTrucks)) : {life_UranLaster = 1}; //Uran Stufe 3 in Uranlaster -> Allowed
case ((_ctrl in _UranStuff) && !(_Truck in _UranHouse)) : {life_UranLaster = 1}; //Uran Stufe 1 + 2 in Haus -> Allowed
case (!(_ctrl in _UranStuff) && !(_Truck in _UranTrucks)): {life_UranLaster = 2}; //Kein Uran  -> Allowed
	case (!(_ctrl in _UranStuff) && (_Truck in _UranTrucks)): {
		if ((_Truck == "O_Truck_03_device_F") || (_Truck == "I_Heli_Transport_02_F") || (_Truck == "B_Heli_Transport_03_unarmed_F" ) ) then {
			life_TankLaster = 2;
		} else {
			life_TankLaster = 3;
		};
	}; //NonFuel in FuelTruck -> Nope except it is the tempest device!
	
case ((_ctrl in _UranStuff2) && !(_Truck in _UranHouse)) : {life_UranLaster = 4}; //Uran Stufe 3 in Haus -> Nope
case ((_ctrl in _UranStuff2) && !(_Truck in _UranTrucks)) : {life_UranLaster = 4}; //Uran Stufe 3 in Haus -> Nope
case ((_ctrl in _UranStuff) && !(_Truck in _UranTrucks)): {life_TankLaster = 4}; //Uran Stufe 1+2 in Nich Uran Truck -> Nope
};
    if (life_UranLaster == 3) exitWith {hint "Bist du bekloppt? Willst du Anfangen zu leuchten?! Uran ist schädlich für die Umwelt. (Du kannst Uran NUR im HEMTT Munition lagern)"};
    if (life_UranLaster == 4) exitWith {hint "Der Behälter ist verstrahlt und du möchtest dort Lebensmittel lagern? Na du bist ja ne Type"};

	
if(_ctrl == "money") then
{
	_index = [_ctrl,_inv] call TON_fnc_index;
	if(life_cash < _num) exitWith {hint "Du hast nicht so viel Bargeld um das Fahrzeug zu speichern!"};
	if(_index == -1) then
	{
		_inv set[count _inv,[_ctrl,_num]];
	}
		else
	{
		_val = _inv select _index select 1;
		_inv set[_index,[_ctrl,_val + _num]];
	};
	
	life_cash = life_cash - _num;
	life_trunk_vehicle setVariable["Trunk",[_inv,(_veh_data select 1) + _itemWeight],true];
	[life_trunk_vehicle] call life_fnc_vehInventory;
}
	else
{
	if(((_totalWeight select 1) + _itemWeight) > (_totalWeight select 0)) exitWith {hint "Das Fahrzeug ist entweder voll oder können nicht so viel zu lagern."};

	if(!([false,_ctrl,_num] call life_fnc_handleInv)) exitWith {hint "Couldn't remove the items from your inventory to put in the vehicle.";};
	_index = [_ctrl,_inv] call TON_fnc_index;
	if(_index == -1) then
	{
		_inv set[count _inv,[_ctrl,_num]];
	}
		else
	{
		_val = _inv select _index select 1;
		_inv set[_index,[_ctrl,_val + _num]];
	};
	
	life_trunk_vehicle setVariable["Trunk",[_inv,(_veh_data select 1) + _itemWeight],true];
	[life_trunk_vehicle] call life_fnc_vehInventory;
};
