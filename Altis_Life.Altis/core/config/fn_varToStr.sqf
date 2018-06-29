/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oil": {(localize "STR_Item_OilU")};
	case "life_inv_oilp": {(localize "STR_Item_OilP")};
	case "life_inv_heroinu": {(localize "STR_Item_HeroinU")};
	case "life_inv_heroinp": {(localize "STR_Item_HeroinP")};
	case "life_inv_cannabis": {(localize "STR_Item_Cannabis")};
	case "life_inv_marijuana": {(localize "STR_Item_Marijuana")};
	case "life_inv_apple": {(localize "STR_Item_Apple")};
	case "life_inv_rabbit": {(localize "STR_Item_RabbitMeat")};
	case "life_inv_salema": {(localize "STR_Item_SalemaMeat")};
	case "life_inv_ornate": {(localize "STR_Item_OrnateMeat")};
	case "life_inv_mackerel": {(localize "STR_Item_MackerelMeat")};
	case "life_inv_tuna": {(localize "STR_Item_TunaMeat")};
	case "life_inv_mullet": {(localize "STR_Item_MulletMeat")};
	case "life_inv_catshark": {(localize "STR_Item_CatSharkMeat")};
	case "life_inv_turtle": {(localize "STR_Item_TurtleMeat")};
	case "life_inv_fishingpoles": {(localize "STR_Item_FishingPole")};
	case "life_inv_water": {(localize "STR_Item_WaterBottle")};
	case "life_inv_coffee": {(localize "STR_Item_Coffee")};
	case "life_inv_turtlesoup": {(localize "STR_Item_TurtleSoup")};
	case "life_inv_donuts": {(localize "STR_Item_Donuts")};
	case "life_inv_fuelE": {(localize "STR_Item_FuelE")};
	case "life_inv_fuelF": {(localize "STR_Item_FuelF")};
	case "life_inv_pickaxe": {(localize "STR_Item_Pickaxe")};
	case "life_inv_copperore": {(localize "STR_Item_CopperOre")};
	case "life_inv_ironore": {(localize "STR_Item_IronOre")};
	case "life_inv_ironr": {(localize "STR_Item_IronIngot")};
	case "life_inv_copperr": {(localize "STR_Item_CopperIngot")};
	case "life_inv_sand": {(localize "STR_Item_Sand")};
	case "life_inv_salt": {(localize "STR_Item_Salt")};
	case "life_inv_saltr": {(localize "STR_Item_SaltR")};
	case "life_inv_glass": {(localize "STR_Item_Glass")};
	case "life_inv_diamond": {(localize "STR_Item_DiamondU")};
	case "life_inv_diamondr": {(localize "STR_Item_DiamondC")};
	case "life_inv_tbacon": {(localize "STR_Item_TBacon")};
	case "life_inv_redgull": {(localize "STR_Item_RedGull")};
	case "life_inv_lockpick": {(localize "STR_Item_Lockpick")};
	case "life_inv_peach": {(localize "STR_Item_Peach")};
	case "life_inv_coke": {(localize "STR_Item_CocaineU")};
	case "life_inv_cokep": {(localize "STR_Item_CocaineP")};
	case "life_inv_spikeStrip": {(localize "STR_Item_SpikeStrip")};
	case "life_inv_rock": {(localize "STR_Item_Rock")};
	case "life_inv_cement": {(localize "STR_Item_CementBag")};
	case "life_inv_goldbar": {(localize "STR_Item_GoldBar")};
	case "life_inv_blastingcharge": {(localize "STR_Item_BCharge")};
	case "life_inv_boltcutter": {(localize "STR_Item_BCutter")};
	case "life_inv_defusekit": {(localize "STR_Item_DefuseKit")};
	case "life_inv_storagesmall": {(localize "STR_Item_StorageBS")};
	case "life_inv_storagebig": {(localize "STR_Item_StorageBL")};
	case "life_inv_uran": {"Uranerz"};
    case "life_inv_uranp": {"Uran 238"};
    case "life_inv_Warhead": {"Warhead"};
	case "life_inv_methu": {"Methamphetamine Grundstoffe"};
    case "life_inv_methp": {"Meth"};
    case "life_inv_wine": {"Wine"};
    case "life_inv_grapes": {"Grapes"};
    case "life_inv_zigarren": {"Zigarren"};
    case "life_inv_zigaretten": {"Zigaretten"};
    case "life_inv_tabak": {"Tabak"};
    case "life_inv_warhead": {"Sprengkopf"};
    case "life_inv_uran238": {"Uran 238"};
    case "life_inv_iron_r": {"Eisen"};
    case "life_inv_salt_r": {"Salz"};
    case "life_inv_gold": {"Gold"};
    case "life_inv_silverc": {"Silver"};
    case "life_inv_silver": {"Silver"};
    case "life_inv_sugarc": {"Zucker"};
    case "life_inv_sugar": {"Zucker"};
    case "life_inv_kokainc": {"Kokain"};
    case "life_inv_kokain": {"Kokain"};
    case "life_inv_cocainep": {"Koks"};
	case "life_inv_bottledwhiskey": {"Whiskey (21 Jahre)"};
	case "life_inv_bottledbeer": {"Bier (Pils)"};
	case "life_inv_pursuit" : {"Nitro"};
	case "life_inv_spezial" : {"Event Objekt"};
    case "life_inv_moonshine": {(localize "STR_Item_Distilled_Moonshine")};
	case "life_inv_goatu": {"Ziegenfleisch"};
	case "life_inv_goatp": {"Ziegengulasch"};
	case "life_inv_sheepu": {"Schafsfleisch"};
	case "life_inv_sheepp": {"Schaafsgyros"};
	case "life_inv_chickenu": {"Huehnerfleisch"};
	case "life_inv_chickenp": {"Chicken Nuggets"};
	case "life_inv_keksu": {"Mehl"};
	case "life_inv_keksp": {"Mohnbrötchen"};
	case "life_inv_hund": {"Hund"};
	case "life_inv_reifen" : {"Reifen"};
	
	//License Block
	case "license_civ_driver": {(localize "STR_License_Driver")};
	case "license_civ_air": {(localize "STR_License_Pilot")};
	case "license_civ_heroin": {(localize "STR_License_Heroin")};
	case "license_civ_oil": {(localize "STR_License_Oil")};
	case "license_civ_dive": {(localize "STR_License_Diving")};
	case "license_civ_boat": {(localize "STR_License_Boat")};
	case "license_civ_gun": {(localize "STR_License_Firearm")};
	case "license_cop_air": {(localize "STR_License_Pilot")};
	case "license_cop_swat": {(localize "STR_License_Swat")};
	case "license_cop_cg": {(localize "STR_License_CG")};
	case "license_civ_rebel": {(localize "STR_License_Rebel")};
	case "license_civ_truck": {(localize "STR_License_Truck")};
	case "license_civ_diamond": {(localize "STR_License_Diamond")};
	case "license_civ_copper": {(localize "STR_License_Copper")};
	case "license_civ_iron": {(localize "STR_License_Iron")};
	case "license_civ_sand": {(localize "STR_License_Sand")};
	case "license_civ_salt": {(localize "STR_License_Salt")};
	case "license_civ_coke": {(localize "STR_License_Cocaine")};
	case "license_civ_marijuana": {(localize "STR_License_Marijuana")};
	case "license_civ_cement": {(localize "STR_License_Cement")};
	case "license_med_air": {(localize "STR_License_Pilot")};
	case "license_civ_home": {(localize "STR_License_Home")};


	case "license_civ_meth": {"Methamphetamine Training"};
	case "license_civ_uran": {"Gefahrengutschein"};
	case "license_civ_Warhead": {"Waffenhersteller"};
	case "license_civ_grapes": {"Wein Keltern"};
    case "license_civ_moonshine": {"Moonshine Processing"};
    case "license_civ_tabak": {"Zigarettenherstellung"};
    case "license_civ_zigarren": {"Zigarrenherstellung"};
	case "license_civ_warhead": {"Sprengstoffmanufaktur"};
	
    //Virtual Inventory Items
	case "license_civ_stiller": {(localize "STR_License_Stiller")};
    case "license_civ_liquor": {(localize "STR_License_Liquor")};
    case "license_civ_bottler": {(localize "STR_License_Bottling")};

	case "license_adac":  {"ADAC Lizenz"};
	case "license_adac_air": {"ADAC Fluglizenz"};
	case "license_adac_truck": {"ADAC Trucklizenz"};
	case "license_adac_driver": {"ADAC Fahrzeuglizenz"};
	case "life_inv_kegel": {"Kegel"};

	case "life_inv_kidney": {"Schwarzmarkt Niere"}; 
	case "life_inv_zipties": {"Kabelbinder"};
	
	// Jagd etc
	case "license_civ_hunter": {"Jagdschein"};
	case "license_civ_sheep": {"Anatomie Schaaf"};
	case "license_civ_goat": {"Anatomie Ziege"};
	case "license_civ_chicken": {"Anatomie Huhn"};
	case "license_civ_keks": {"Bäckerei-Ausbildung"};

	// treasure hunt
    case "life_inv_underwatercharge": {(localize "STR_Item_UCharge")};
    case "life_inv_goldbarp": {(localize "STR_Item_GoldScrap")};	

};
