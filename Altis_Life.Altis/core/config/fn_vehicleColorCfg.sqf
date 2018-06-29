/*
File: fn_vehicleColorCfg.sqf
Author: Bryan "Tonic" Boardwine
I_Heli_Transport_02_F
Description:
Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];


// BLACK: 			["#(rgb,1,1,1)color(0,0,0,1)","cop"],


diag_log format["SETTING COLOR FOR: %1", _vehicle];

switch (_vehicle) do
{
	case "I_Heli_Transport_02_F":
	{
	_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
	_ret =
		[
		[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
		[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"],
		["#(rgb,1,1,1)color(0,0,0,1)","civ","#(rgb,1,1,1)color(0,0,0,1)","#(rgb,1,1,1)color(0,0,0,1)"],
      	["#(rgb,1,1,1)color(1,0,0.6,1)","civ","#(rgb,1,1,1)color(1,0,0.6,1)","#(rgb,1,1,1)color(1,0,0.6,1)"]	


		];
	};

	case "C_Hatchback_01_sport_F":
	{
	_path = "\a3\soft_f_gamma\Hatchback_01\data\";
	_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			["textures\CIV\hatchback_sport_ken_block.paa","civ"],
			["textures\COP\Vehicles\C_Hatchback_01_sport_F.paa","cop"],
			["textures\CIV\hatchback_metallica.paa","civ"],
			["#(argb,1,1,1)color(1,0.78,0.05,1)","adac"],
			["textures\event\shorty.paa","fed"]
				
		];
	};

	case "C_Offroad_01_F":
	{


	_ret =
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["textures\COP\Vehicles\C_Offroad_01_F.paa","cop"],
			["textures\MED\C_Offroad_01_F.paa","med"],
			["#(argb,1,1,1)color(0.9,0.47,0.52,1)","civ"],
			["textures\ADAC\adac_offroad.paa","adac"]
			
		];
	};

	
case "O_G_Offroad_01_F":
	{


	_ret =
		[
			["textures\SD\offroad_50.paa","civ"]

		];
	};

	
	case "C_Hatchback_01_F":
	{
	_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"]
		];
	};

	case "C_SUV_01_F":
	{
	_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["textures\COP\Vehicles\C_SUV_01_F.paa","cop"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["textures\CIV\suv_black.paa","civ"],
			["textures\MED\C_SUV_01_F.paa","med"],
			["textures\ADAC\adac_suv.paa","adac"],
			["textures\CIV\fire_suv.paa","civ"],
			["textures\CIV\race_suv_black.paa","civ"],
			["textures\CIV\race_suv_hello.paa","civ"],
			["textures\CIV\race_suv_orange.paa","civ"]
		];
	};

	case "C_Van_01_box_F":
	{
	_ret =
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
			["textures\MED\rtwfrontneu.paa","med","textures\MED\rtwbackneu.paa"]
		];
	};

	case "C_Van_01_transport_F":
	{
	_ret =
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
			["#(rgb,1,1,1)color(0.04,0.01,0.19,1)","civ"]
            ];
	};
	
	case "C_Van_01_fuel_F":
	{
	_ret =
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
			["textures\ADAC\van_01_tank_red_co.paa","adac","textures\ADAC\van_02_tank_red_co.paa"]
		];
	};

	case "B_Quadbike_01_F":
	{
	_ret =
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","cop"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"],
			["#(rgb,1,1,1)color(1,0.78,0.05,1)","adac"]
		];
	};

	case "B_Heli_Light_01_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\B_Heli_Light_01_F.paa","cop"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["textures\MED\Notarzt_hummingbird.paa","med"],
			["#(rgb,1,1,1)color(0.01,0.58,0.23,1)","civ"],
			["#(rgb,1,1,1)color(0,0,0,1)","civ"],
      		["#(rgb,1,1,1)color(1,0,0.6,1)","civ","#(rgb,1,1,1)color(1,0,0.6,1)"]			

		];
	};

	case "O_Heli_Light_02_unarmed_F":
	{
	_ret =
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","fed"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
			["textures\ADAC\orca_adac.paa","adac"]


		];
	};
	
	case "O_Heli_Light_02_F":
	{
	_ret =
		[
			["textures\ADAC\orca_adac.paa","adac"]
		];
	};

	case "B_MRAP_01_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\B_MRAP_01_F_front.paa","cop","textures\COP\Vehicles\B_MRAP_01_F_back.paa"],
			["textures\MED\hunter_med_mrap_01.paa","med","textures\MED\hunter_med_mrap_02.paa"],
			["textures\ADAC\hunter_adac_mrap_01.paa","adac","textures\ADAC\hunter_adac_mrap_02.paa"]
		];
	};

	case "I_Truck_02_covered_F":
	{
	_ret =
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"],
			["#(rgb,1,1,1)color(0,0,0,1)","civ","#(rgb,1,1,1)color(0,0,0,1)"]
		];
	};

	case "I_Truck_02_transport_F":
	{
	_ret =
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"],
			["#(rgb,1,1,1)color(0,0,0,1)","civ","#(rgb,1,1,1)color(0,0,0,1)"]			
		];
	};


	case "I_Heli_light_03_unarmed_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\I_Heli_light_03_unarmed_F.paa","cop"],
			["textures\Med\notarzt_hellcat.paa","med"],
			["textures\Adac\ADAC_hellcat.paa","adac"]
		];
	};
	case "I_MRAP_03_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\I_MRAP_03_F.paa","cop","#(rgb,1,1,1)color(0,0,0,1)"],
			["#(rgb,1,1,1)color(0,0,0,1)","civ","#(rgb,1,1,1)color(0,0,0,1)"]
				
		];
	};
	
	case "B_Heli_Light_01_F":
	{
	_ret =
		[
			["textures\MED\Vehicles\Notarzt_Hummingbird.paa","med"]
		];
	};
	case "O_MRAP_02_F":
	{
	_ret =
		[
			["\a3\soft_f\MRAP_02\Data\mrap_02_ext_01_co.paa","civ","\a3\soft_f\MRAP_02\Data\mrap_02_ext_02_co.paa"],
			["textures\SD\O_MRAP_02_F_front.paa","civ","textures\SD\O_MRAP_02_F_back.paa"],
			["textures\COP\Vehicles\O_MRAP_02_F_front.paa","cop","textures\COP\Vehicles\O_MRAP_02_F_back.paa"]


		];
	};

	case "B_Heli_Transport_01_F":
	{
	_ret =
		[
			["textures\COP\Vehicles\B_Heli_Transport_01_F_front.paa","cop","textures\COP\Vehicles\B_Heli_Transport_01_F_back.paa"]
		];
	};
	case "B_Truck_01_mover_F":
	{
	_ret =
		[
			["textures\ADAC\adac_hemtt.paa","adac"]

		];
	};
	case "O_APC_Wheeled_02_rcws_F":
	{
	_ret =
		[
			["#(rgb,1,1,1)color(0,0,0,1)","cop","#(rgb,1,1,1)color(0,0,0,1)"]
		];
	};



	case "B_Truck_01_covered_F":
	{
	_ret =
		[
			["#(rgb,1,1,1)color(0,0,0,1)","civ","#(rgb,1,1,1)color(0,0,0,1)"]
		];
	};

	case "B_Truck_01_box_F":
	{
	_ret =
		[
			["#(rgb,1,1,1)color(0,0,0,1)","civ","#(rgb,1,1,1)color(0,0,0,1)"]

		];
	};

	case "B_Truck_01_transport_F":
	{
	_ret =
		[
			["#(rgb,1,1,1)color(0,0,0,1)","civ","#(rgb,1,1,1)color(0,0,0,1)"],
			["textures\ADAC\adac_hemtt.paa","adac","textures\ADAC\adac_hemtt_back.paa"]
		];
	};

	case "O_Truck_03_covered_F":
	{
	_ret =
		[
			["#(rgb,1,1,1)color(0,0,0,1)","civ","#(rgb,1,1,1)color(0,0,0,1)"]

		];
	};

	case "O_Heli_Transport_04_F":
	{
	_ret =
		[
			["textures\ADAC\Mi-290-Taru_01-Kufen.paa","adac","textures\ADAC\Mi-290-Taru_02-Chassi.paa"]

		];
	};

	case "C_Heli_Light_01_civil_F":
	{
	_ret =
		[
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_graywatcher_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_light_co","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_shadow_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wasp_co","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["textures\ADAC\m-900-adac.paa","adac"]

		];
	};
};

_ret;