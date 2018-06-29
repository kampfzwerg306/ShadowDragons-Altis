private["_className","_trunkspace", "_factor", "_limiter","_classType"];

_className = [_this,0,"",[""]] call BIS_fnc_param;
_classType = [_this,1,"",["Car"]] call BIS_fnc_param;

_trunkspace =  [_className] call life_fnc_vehicleWeightCfg;
_factor = 3;
_limiter = 1.5;
_price = 1000;
_baseprice = 0; 
if (_className in ["B_Truck_01_fuel_F","O_Truck_03_device_F","O_MRAP_02_F","B_G_Offroad_01_armed_F"] ) then {
	_factor = 10;
	_baseprice = 6000;
	_trunkspace = 1000;
};


/*diag_log format["PRICE life_current_oil_price: %1 ", life_current_oil_price];
diag_log format["PRICE life_current_iron_price: %1 ", life_current_iron_price];
diag_log format["PRICE life_current_copper_price: %1 ", life_current_copper_price];
diag_log format["PRICE life_current_glass_price: %1 ", life_current_glass_price];
*/
_baseprice = (life_current_oil_price + life_current_iron_price + life_current_copper_price + life_current_glass_price) / 3;


switch (_classType) do
{
	case "Air":
	{
		_factor = 3;
		_price = (_trunkspace * _baseprice * _factor) / _limiter;

	};
	case "Car":
	{
		_factor = 1;
		_price = ((_trunkspace / 2) * _price * _factor) / _limiter; 
	};
	case "Truck_Small":
	{
		_factor = 3;
		_price = (((_trunkspace / 4) * _baseprice * _factor)  + 900000) / _limiter; 
	};
	case "Truck_Big":
	{
		_factor = 3;
		_price = (((_trunkspace / 4) * _baseprice * _factor) + 3000000)  / _limiter; 
	};

	case "Illegal":
	{
		_factor = 6;
		_price = (450 * _baseprice * _factor) / _limiter; 
	};		
	case "Special":
	{
		_factor = 8;
		_price = (((_trunkspace / 2) * _baseprice * _factor) + 14000000) / _limiter; 
	};		

	case "Special_2":
	{
		_factor = 3;
		_price = (((_trunkspace / 4) * _baseprice * _factor) + 6500000) / _limiter; 
	};		


	
};	


_price;

