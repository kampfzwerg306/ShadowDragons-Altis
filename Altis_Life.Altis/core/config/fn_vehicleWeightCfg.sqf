/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{

	// vehicles < 100

	case "C_Offroad_01_F": {80};
	case "B_G_Offroad_01_F": {80};
	case "B_Quadbike_01_F": {38};
	case "B_MRAP_01_F": {60};
	case "O_MRAP_02_F": {60};
	case "I_MRAP_03_F": {60};
	case "B_G_Offroad_01_armed_F": {60};
	case "O_MRAP_02_hmg_F": {202};
	case "B_Heli_Light_01_F": {32};
	case "C_Hatchback_01_F": {38};
	case "C_Hatchback_01_sport_F": {44};
	case "C_SUV_01_F": {60};
	case "C_Heli_Light_01_civil_F": {30};
	case "O_Heli_Transport_04_ammo_F": {76};
	case "O_Heli_Transport_04_bench_F": {76};
	case "O_Heli_Transport_04_box_F": {76};
	case "O_Heli_Transport_04_covered_F": {76};
	case "O_Heli_Transport_04_fuel_F": {76};
	case "O_Heli_Transport_04_medevac_F": {76};
	case "O_Heli_Transport_04_repair_F": {76};
	case "C_Boat_Civil_01_F": {84};
	case "C_Boat_Civil_01_police_F": {84};
	case "C_Boat_Civil_01_rescue_F": {84};
	case "O_Heli_Light_02_unarmed_F": {60};
	case "B_Heli_Transport_01_camo_F": {60};	
	case "O_Heli_Transport_04_F":{76};
	case "C_Van_01_transport_F": {120};
	case "I_G_Van_01_transport_F": {120};
	case "C_Van_01_box_F": {164};


	// Zamaks
	case "I_Truck_02_transport_F": {260};
	case "I_Truck_02_covered_F": {320};



	case "I_Heli_Transport_02_F": {380};
	case "B_Heli_Transport_03_unarmed_F":{560};
	case "O_Heli_Transport_04_covered_F":{560};
	case "C_Rubberboat": {100};
	case "O_Boat_Armed_01_hmg_F": {172};
	case "B_Boat_Armed_01_minigun_F": {172};
	case "I_Boat_Armed_01_minigun_F": {172};
	case "B_G_Boat_Transport_01_F": {200};
	case "B_Boat_Transport_01_F": {200};

	// tempest
	case "O_Truck_03_transport_F": {500};
	case "O_Truck_03_covered_F": {600};

	//tempest device
	case "O_Truck_03_device_F": {960};

	//hemmtt
	case "B_Truck_01_box_F": {1080};
	case "B_Truck_01_covered_F": {880};
	case "B_Truck_01_transport_F": {760};

	// hemmtt oil
	case "B_Truck_01_fuel_F": {1000};
	case "C_Van_01_fuel_F": {202};
	case "O_Truck_03_fuel_F": {600};


	case "Land_Box_AmmoOld_F": {700};
    case "B_supplyCrate_F": {1000};
	case "Land_CargoBox_V1_F": {5000};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	case "I_SDV_01_F":{120};
	case "B_SDV_01_F":{120};
	default {-1};
};