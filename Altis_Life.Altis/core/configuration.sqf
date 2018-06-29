#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/


is_member_of_life_gang_five0 = false;
is_member_of_life_gang_ava = false;
is_member_of_life_gang_ba = false;
is_member_of_life_gang_tt = false;
is_member_of_life_gang_awc = false;
is_member_of_life_gang_lms = false;
is_member_of_life_gang_p3 = false;
is_member_of_life_gang_p4 = false;
is_member_of_life_gang_p5 = false;

is_member_of_life_gang_p6 = false;

life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed_query_one = false;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_siren2_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_action_gather = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_kegel = ObjNull;
life_respawn_timer = 3; //Scaled in minutes
life_has_insurance = false;
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gathering = false;
life_channel_send = true;
life_houses = [];
life_drink = 0;
life_drug = 0;
life_UranLaster = 1;
life_UranLaster2 = 1;
life_TankLaster = 1;
life_fadeSound = false;
nn_last_vehicles = [];
nn_empInUse = false;
life_current_oil_price = 6250;
life_current_iron_price = 2300;
life_current_copper_price = 1250;
life_current_glass_price = 2250;

hunter_snake = 10000;

life_sirenLightVehicles = ["B_Truck_01_box_F","B_Truck_01_mover_F","B_Truck_01_transport_F","B_Truck_01_covered_F","C_Van_01_box_F","C_Offroad_01_F","B_MRAP_01_F","B_MRAP_01_hmg_F","C_SUV_01_F","O_MRAP_02_F","O_MRAP_02_hmg_F","B_MRAP_01_hmg_F","B_APC_Wheeled_01_cannon_F", "I_MRAP_03_F","I_MRAP_03_hmg_F","I_Heli_light_03_unarmed_F","C_Hatchback_01_sport_F"];


life_is_bleeding = false;
life_is_stabelized = false;


__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for civs and cops? (Medics excluded for now)
__CONST__(life_sirenLightVehicles,life_sirenLightVehicles);
// Ghostychan changes
// fatigue not < 85% = no more slowmotion running.
life_fatigue = 0.85;


// [SD] Demon changes
// make vehicles more expensive while you can change this on your own: formula: rent-prices * life_vehicle_cost_multiplier = buy_price 
life_vehicle_cost_multiplier = 1.5;
life_sex_ill = 0;
life_checked = 0;
life_smartphoneTarget = ObjNull;


Life_request_timer = false;
//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,10250); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,9); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

__CONST__(life_enableFatigue,false); //Enable / Disable the ARMA 3 Fatigue System

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Food Variables *******
*****************************
*/
life_eat_Salema = 40;
life_eat_Ornate = 20;
life_eat_Mackerel = 20;
life_eat_Tuna = 100;
life_eat_Mullet = 30;
life_eat_CatShark = 60;
life_eat_Rabbit = 20;
life_eat_Apple = 5;
life_eat_turtlesoup = 62;
life_eat_donuts = 30;

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
life_last_known_position = [];
life_player_alive = true;

__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,2350);
__CONST__(life_impound_boat,2250);
__CONST__(life_impound_air,3850);
life_istazed = false;
life_isdowned = false;
life_my_gang = ObjNull;



life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		// make it basic
		life_atmcash = 15000; //Starting Bank Money
		life_paycheck = 3450; //Paycheck Amount


	};
	case civilian: 
	{
		life_atmcash = 15000; //Starting Bank Money
		life_paycheck = 1300; //Paycheck Amount

		if(is_member_of_life_gang_five0) then {
			life_atmcash = 15000; //Starting Bank Money
			life_paycheck = 9850; //Paycheck Amount
		};
	};
	
	case independent: {
		life_atmcash = 16500;
		life_paycheck = 4500;
	};
	case east: 
	{
 		life_atmcash = 16500;
 		life_paycheck = 9000;
 	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = [];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oil",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_cornmeal",
	"life_inv_beerp",
	"life_inv_whiskey",
	"life_inv_rye",
	"life_inv_hops",
	"life_inv_yeast",
	"life_inv_bottles",
	"life_inv_bottledbeer",
	"life_inv_bottledwhiskey",
	"life_inv_tomato",
	"life_inv_pear",
	"life_inv_strawberry",
	"life_inv_cherry",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_methu",
    "life_inv_methp",
    "life_inv_uran",
    "life_inv_uran238",
    "life_inv_warhead",
    "life_inv_moonshine",
    "life_inv_wine",
    "life_inv_grapes",
    "life_inv_zigarren",
    "life_inv_zigaretten",
    "life_inv_tabak",
    "life_inv_copper_r",
    "life_inv_iron_r",
    "life_inv_salt_r",
    "life_inv_gold",
    "life_inv_silverc",
    "life_inv_silver",
    "life_inv_sugarc",
    "life_inv_sugar",
    "life_inv_kokainc",
    "life_inv_kokain",
    "life_inv_uranp",
    "life_inv_cocainep",
    "life_inv_kidney",
    "life_inv_zipties",
	"life_inv_pursuit",
	"life_inv_goldbarp",
	"life_inv_spezial",
	"life_inv_underwatercharge",
	"life_inv_kegel",
	"life_inv_chickenp",
	"life_inv_chickenu",
	"life_inv_sheepp",
	"life_inv_sheepu",
	"life_inv_goatp",
	"life_inv_goatu",
	"life_inv_keksu",
	"life_inv_keksp",
	"life_inv_hund",
	"life_inv_reifen"

];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_warhead","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_meth","civ"],
	["license_civ_uran","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_civ_stiller","civ"],
	["license_civ_liquor","civ"],
	["license_civ_bottler","civ"],
	["license_adac","adac"],
	["license_adac_air","adac_air"],	
	["license_adac_truck","adac_truck"],	
	["license_adac_driver","adac_driver"],
	["license_civ_grapes","civ"],
    ["license_civ_moonshine","civ"],
    ["license_civ_tabak","civ"],
    ["license_civ_zigarren","civ"],
	["license_civ_hunter","civ"],
	["license_civ_sheep","civ"],
	["license_civ_goat","civ"],
	["license_civ_chicken","civ"],
	["license_civ_keks","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items =[
	["warhead",2000],
	["heroinu",1200],
	["heroinp",2500],
	["cocaine",1500],
	["cocainep",3500],
	["marijuana",2000],
	["turtle",3000],
	["moonshine",2000],
	["zigarren",650],
	["methu",400],
	["methp",4000],
	["blastingcharge",10000],
	["boltcutter",500],
    ["kidney",5000],
    ["goldbarp",50000],
    ["lockpick",4000],
    ["goldbar",95000],
    ["spikeStrip",4000],
    ["hund",4000],
	["reifen",500]

];
/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",50],
	["moonshine",4100],
    ["wine",4000],
    ["grapes",70],
	["heroinu",1850],
	["heroinp",5650],
	["methu",400],
    ["methp",9000],
    ["uran",8400],
    ["uran238",10500],
    ["warhead",13500],
	["salema",45],
	["ornate",40],	
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["oilp",6000],
	["turtle",6000],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",4350],
	["tbacon",25],
	["lockpick",75],
	["pickaxe",750],
	["redgull",200],
	["peach",55],
	["cocaine",3000],
	["cocainep",4500],
	["diamond",750],
	["diamondc",4000],
	["iron_r",3200], // weight 3
	["copper_r",2000], // weight 3 - 1000 to prevent fast farming 
	["salt_r",1650], // make money with salt ;)
	["glass",1450], // make glas more expensive
	["fuelF",500],
	["spikeStrip",1200],
	["cement", 4400],
	["goldbar",95000],
	["zigarren",2800],
    ["zigaretten",2255],
    ["tabak",1370],
    ["bottledwhiskey",11000],
    ["bottledbeer",10000],
    ["moonshine",7000],
    ["whiskey",5000],
    ["beerp",4500],
    ["rye",2000],
    ["hops",1800],
    ["yeast",2000],
    ["cornmeal",200],
    ["bottles",75],
    ["kidney",50000],
	["pursuit",50],
    ["zipties",250],
    ["goldbarp",75000],
    ["underwatercharge",25000],
	["kegel",20],
	["hund",5000],	
	["reifen",1000]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtle",7500],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",150],
	["pickaxe",1200],
	["redgull",800],
	["fuelF",850],
	["peach",68],
	["spikeStrip",2500],
	["blastingcharge",35000],
	["boltcutter",7500],
	["defusekit",2500],
	["storagesmall",75000],
	["storagebig",150000],
	["spikeStrip",2500],
	["moonshine",11250],
    ["wine",11400],
    ["grapes",95],
    ["zigarren",11250],
    ["zigaretten",11400],
    ["tabak",9095],
    ["warhead",321250],
    ["uran238",122400],
    ["uran",19995],
    ["bottledwhiskey",8000],
    ["bottledbeer",8000],
    ["moonshine",7500],
    ["whiskey",5500],
    ["beerp",5000],
    ["cornmeal",500],
    ["bottles",100],
	["pursuit",500],
    ["goldbar",170000],
	["zipties",500],
    ["kidney",75000],
    // treasure hunt
    ["goldbarp",75000],
    ["underwatercharge",40000],
	["kegel",20],
	["hund",5000]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",1750],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1150],
	["ItemGPS",45],
	["ToolKit",125],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",980],
	["16Rnd_9x21_Mag",150],
	["20Rnd_556x45_UW_mag",350],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",5750],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",1500],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",5000],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",25000],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_QuadBike_01_F",200],
	["C_Hatchback_01_F",500],
	["C_Offroad_01_F", 500],
	["B_G_Offroad_01_F",500],
	["C_SUV_01_F",1250],
	["C_Van_01_transport_F",1890],
	["C_Hatchback_01_sport_F",1350],
	["C_Van_01_fuel_F",1500],
	["I_Heli_Transport_02_F",1000],
	["C_Van_01_box_F",2000],
	["I_Truck_02_transport_F",2000],
	["I_Truck_02_covered_F",4500],
	["B_Truck_01_transport_F",5650],
	["B_Truck_01_box_F", 3000],
	["O_MRAP_02_F",4200],
	["B_Heli_Light_01_F",4000],
	["O_Heli_Light_02_unarmed_F",6000],
	["C_Rubberboat",400],
	["C_Boat_Civil_01_F",4500],
	["B_Boat_Transport_01_F",450],
	["C_Boat_Civil_01_police_F",3500],
	["B_Boat_Armed_01_minigun_F",16500],
	["B_SDV_01_F",2000],
	["B_MRAP_01_F",7500],
	["O_G_Van_01_fuel_F",100],
	["B_Truck_01_box_F",100],
	["B_Truck_01_covered_F",100]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",0],
	["C_Hatchback_01_F",0],
	["C_Offroad_01_F", 0],
	["B_G_Offroad_01_F",0],
	["C_SUV_01_F",0],
	["C_Van_01_transport_F",0],
	["C_Hatchback_01_sport_F",0],
	["C_Van_01_fuel_F",0],
	["I_Heli_Transport_02_F",0],
	["C_Van_01_box_F",0],

	["I_Truck_02_transport_F",0],
	["I_Truck_02_covered_F",0],
	["B_Truck_01_transport_F",0],
	["B_Truck_01_box_F", 0],
	["I_Truck_02_transport_F",0],
	["I_Truck_02_covered_F",0],
	["O_Truck_03_transport_F",0],
	["O_Truck_03_covered_F",0],
	["B_Truck_01_transport_F",0],			
	["B_Truck_01_box_F",0],
	["B_Truck_01_covered_F",0],
	["O_Truck_03_device_F",0],
	["O_MRAP_02_F",0],
	["B_Heli_Light_01_F",0],
	["O_Heli_Light_02_unarmed_F",0],
	["C_Rubberboat",0],
	["C_Boat_Civil_01_F",0],
	["B_Boat_Transport_01_F",0],
	["C_Boat_Civil_01_police_F",0],
	["B_Boat_Armed_01_minigun_F",0],
	["B_SDV_01_F",0],
	["B_MRAP_01_F",0],
	["B_Heli_Light_01_armed_F",0],
	["I_Heli_Transport_02_F",0],
	["O_MRAP_02_hmg_F",0],
	["B_Heli_Light_01_armed_F",0] 



];
__CONST__(life_garage_sell,life_garage_sell);
