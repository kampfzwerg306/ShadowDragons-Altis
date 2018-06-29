/*
Created by =BTC= Giallustio
Version: 0.14 rc 1
Date: 20/03/2013
Visit us at: http://www.blacktemplars.altervista.org/
*/
if (isServer) then 
{
	BTC_id_repo = 10;publicVariable "BTC_id_repo";
	BTC_cargo_repo = "Land_HBarrierBig_F" createVehicle [- 5000,- 5000,0];publicVariable "BTC_cargo_repo";
};
if (isDedicated) exitwith {};
BTC_active_lift      = 1;
BTC_active_fast_rope = 0;
BTC_active_cargo     = 1;
//Common
BTC_dir_action = "extra\=BTC=_Logistic\=BTC=_addAction.sqf";
BTC_l_placement_area = 20;
if (BTC_active_lift == 1) then
{
	//Lift
	BTC_lift_pilot    = [];
	BTC_lift          = 1;
	BTC_lifted        = 0;
	BTC_lift_min_h    = 7;
	BTC_lift_max_h    = 20;
	BTC_lift_radius   = 5;
	BTC_def_hud       = 0;
	BTC_def_pip       = 1;
	BTC_l_def_veh_pip = ["B_Heli_Light_01_F","O_Heli_Light_02_F","B_Heli_Transport_01_F","I_Heli_Transport_02_F","O_Heli_Light_02_unarmed_F"];
	BTC_l_pip_cond    = false;
	BTC_cargo_lifted  = objNull;
	BTC_Hud_Cond      = false;
	BTC_HUD_x         = (SafeZoneW+2*SafeZoneX) - 0.155;//+ 0.045;
	BTC_HUD_y         = (SafeZoneH+2*SafeZoneY) + 0.045;
	_lift = [] execVM "extra\=BTC=_Logistic\=BTC=_lift\=BTC=_lift_init.sqf";


	BTC_LightVehicles = ["B_Quadbike_01_F","C_Quadbike_01_F","I_Quadbike_01_F","O_Quadbike_01_F","C_Rubberboat","O_Rubberboat","B_Rubberboat","Motorcycle","C_Kart_01_Blu_F",
            "C_Kart_01_Fuel_F","C_Kart_01_F","C_Kart_01_Red_F","C_Kart_01_Vrana_F"];

    BTC_MediumVehicles = ["Car","Wheeled_APC","C_Boat_Civil_01_F","C_Boat_Civil_01_rescue_F","C_Boat_Civil_01_police_F","B_UAV_02_CAS_F","O_UAV_02_CAS_F","I_UAV_02_CAS_F",
            "B_UAV_02_F","O_UAV_02_F","I_UAV_02_F","O_UGV_01_F","O_UGV_01_rcws_F","I_UGV_01_F","B_UGV_01_F","I_UGV_01_rcws_F","B_UGV_01_rcws_F"];

    BTC_HeavyVehicles =["B_MBT_01_arty_F","B_MBT_01_cannon_F","I_MBT_01_cannon_F","B_MBT_01_mlrs_F","B_MBT_01_TUSK_F","B_APC_Tracked_01_rcws_F","B_APC_Tracked_01_CRV_F",
            "B_APC_Tracked_01_AA_F","B_APC_Wheeled_01_cannon_F","B_Truck_01_covered_F","B_Truck_01_transport_F","O_APC_Tracked_02_AA_F","O_APC_Tracked_02_cannon_F","O_APC_Wheeled_02_rcws_F",
            "O_MBT_02_arty_F","O_MBT_02_cannon_F","I_Truck_01_covered_F","I_Truck_01_transport_F","O_Truck_01_covered_F","O_Truck_01_transport_F","I_Boat_Armed_01_minigun_F",
            "B_Boat_Armed_01_minigun_F","O_Boat_Armed_01_hmg_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_Truck_01_box_F","B_Truck_01_Repair_F","B_Truck_01_ammo_F",
            "B_Truck_01_fuel_F","B_Truck_01_medical_F","B_Truck_01_mover_F","O_Truck_03_transport_F","O_Truck_03_covered_F","O_Truck_03_box_F","O_Truck_03_Repair_F","O_Truck_03_ammo_F",
            "O_Truck_03_fuel_F","O_Truck_03_medical_F","O_Truck_03_device_F","O_Truck_03_covered_F"];

    NG_Helicopter = ["B_Heli_Transport_01_F", "B_Heli_Transport_02_F", "I_Heli_light_03_unarmed_F", "B_Heli_Light_01_F", "O_Heli_Light_02_unarmed_F", "I_Heli_Transport_02_F"];


	BTC_get_liftable_array =
	{
		_chopper = _this select 0;
		_array   = [];
		switch (typeOf _chopper) do
		{
			//MH9
			case "I_Heli_light_03_unarmed_F"     : {_array = BTC_LightVehicles + BTC_MediumVehicles + BTC_HeavyVehicles + NG_Helicopter;};
			case "I_Heli_Transport_02_F"     : {_array = BTC_LightVehicles + BTC_MediumVehicles + BTC_HeavyVehicles + NG_Helicopter;};
			case "B_Heli_Light_01_F"     : {_array = BTC_LightVehicles;};
			case "O_Heli_Light_02_F"	: {_array = BTC_LightVehicles + BTC_MediumVehicles + BTC_HeavyVehicles + NG_Helicopter;};
			case "O_Heli_Light_02_unarmed_F"	: {_array = BTC_LightVehicles + BTC_MediumVehicles + BTC_HeavyVehicles + NG_Helicopter;};
		};
		_array
	};
};
if (BTC_active_fast_rope == 1) then
{
	//Fast roping
	BTC_fast_rope_h = 35;
	BTC_fast_rope_h_min = 5;
	BTC_roping_chopper = ["B_Heli_Light_01_F","O_Heli_Light_02_F","B_Heli_Transport_01_F","I_Heli_Transport_02_F"];
	_rope = [] execVM "extra\=BTC=_Logistic\=BTC=_fast_roping\=BTC=_fast_roping_init.sqf";
};
if (BTC_active_cargo == 1) then
{
	//Cargo System
	_cargo = [] execVM "extra\=BTC=_Logistic\=BTC=_cargo_system\=BTC=_cargo_system_init.sqf";
	BTC_def_vehicles     = ["Tank","Wheeled_APC","Truck","Car","Helicopter"];
	BTC_def_cargo        = ["Motorcycle","ReammoBox","ReammoBox_F","Strategic"];
	BTC_def_drag         = ["ReammoBox","ReammoBox_F","Strategic"];
	BTC_def_placement    = ["ReammoBox","ReammoBox_F","Strategic"];
	BTC_cargo_selected   = objNull;
	BTC_def_cc =
	[
		"B_Quadbike_01_F",2,
		//Trucks
		"B_Truck_01_transport_F",10,
		"B_Truck_01_covered_F",10,
		"I_Truck_02_covered_F",10,
		"O_Truck_02_covered_F",10,
		"I_Truck_02_transport_F",10,
		"O_Truck_02_transport_F",10,
		"O_Truck_02_transport_F",10
	];
	BTC_def_rc =
	[
		"Land_BagBunker_Small_F",4
	];
};
//Functions
BTC_l_paradrop =
{
	_veh          = _this select 0;
	_dropped      = _this select 1;
	_chute_type   = _this select 2;
	private ["_chute"];
	_dropped_type = typeOf _dropped;
	_dropped attachTo [_veh,[0,2,-5]];
	sleep 0.1;
	detach _dropped;
	_dropped setvariable ["BTC_cannot_lift",1,false];
	waitUntil {_dropped distance _veh > 50};
	_dropped setvariable ["BTC_cannot_lift",0,false];
	_chute = createVehicle [_chute_type, getposatl _dropped, [], 0, "FLY"];
	_smoke        = "SmokeshellGreen" createVehicle position _dropped;
	_chem         = "Chemlight_green" createVehicle position _dropped;


    _smoke attachto [_dropped,[0,0,0]];
	_chem attachto [_dropped,[0,0,0]]; 
	_dropped attachTo [_chute,[0,0,0]];
	_heigh = 0;
	while {((getPos _chute) select 2) > 0.3} do {sleep 1;_heigh = (getPos _chute) select 2;};
	detach _dropped;

};
BTC_l_obj_fall =
{
	_obj    = _this select 0;
	_height = (getPos _obj) select 2;
	_fall   = 0.09;
	while {((getPos _obj) select 2) > 0.1} do 
	{

		_fall = (_fall * 1.1);
		_obj setPos [getPos _obj select 0, getPos _obj select 1, _height];
		_height = _height - _fall;
		//hint format ["%1 - %2", (getPos _obj) select 2,_height];
		sleep 0.01;
	};
	//if (((getPos _obj) select 2) < 0.3) then {_obj setPos [getPos _obj select 0, getPos _obj select 1, 0.2];};
};