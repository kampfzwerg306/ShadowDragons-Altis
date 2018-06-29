/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Market",["water","rabbit","apple","redgull","tbacon","peach","pickaxe","fuelF","fishing","storagesmall","storagebig","underwatercharge"]]};
	case "rebel": {["Rebel Market",["water","rabbit","apple","redgull","tbacon","pickaxe","fuelF","peach","boltcutter","blastingcharge","storagesmall","storagebig","zipties","underwatercharge"]]};
	case "gang": {["Gang Market", ["water","rabbit","apple","redgull","tbacon","pickaxe","fuelF","peach","blastingcharge","boltcutter","storagesmall","storagebig","zipties","underwatercharge"]]};
	case "shadow": {["SD Markt", ["water","rabbit","apple","redgull","tbacon","pickaxe","fuelF","peach","blastingcharge","boltcutter","storagesmall","storagebig","zipties","underwatercharge"]]};
	
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle","moonshine","zigarren","hund"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana","methp","froglsd","uranp","kokain","kokainc"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["fishing","salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","pursuit"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "goldbar": {["Gold Buyer",["goldbar"]]};
	case "gas": {["Gas Station",["water","rabbit","apple","redgull","tbacon","fuelF","peach"]]};

	// MORE JOBS CONFIG
	case "adac": {["ADAC Item Shop",["donuts","coffee","water","rabbit","apple","redgull","fuelF","lockpick","pursuit","kegel"]]};
	case "sugar": {["Sugar Trader",["sugar","sugarc"]]};
	case "silver": {["Silver Trader",["silver","silverc"]]};
	case "gold": {["Gold Trader",["gold", "goldc"]]};
	case "Schwarzmarkt": {["Schwarzmarkt",["warhead","zigarren","zipties","underwatercharge"]]};
	case "Kraftwerk": {["Kraftwerk",["uran238"]]};
	case "beer": {["Liqour Store",["wine"]]};
	case "zigaretten": {["Zigarettenverkauf",["zigaretten"]]};
	case "Duffman": {["Duffman",["bottledwhiskey","bottledbeer"]]};
	case "adacshop": {["ADAC Shop",["water","rabbit","apple","redgull","tbacon","fuelF","peach"]]};
	case "medicshop": {["Medic Shop",["water","rabbit","apple","redgull","tbacon","fuelF","peach"]]};
	case "Prospector": {["Gold Ingot Dealer",["goldbarp"]]};
    case "organ": {["Organ Dealer",["kidney"]]}; 
};