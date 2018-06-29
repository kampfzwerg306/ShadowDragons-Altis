/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {500}; //Drivers License cost
	case "boat": {1000}; //Boating license cost
	case "pilot": {365000}; //Pilot/air license cost
	case "gun": {100000}; //Firearm/gun license cost
	case "dive": {4000}; //Diving license cost
	case "oil": {10000}; //Oil processing license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "swat": {35000}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "heroin": {142000}; //Heroin processing license cost
	case "marijuana": {130000}; //Marijuana processing license cost
	case "medmarijuana": {1500}; //Medical Marijuana processing license cost
	case "gang": {70000}; //Gang license cost
	case "rebel": {565000}; //Rebel license cost
	case "truck": {20000}; //Truck license cost
	case "diamond": {95000};
	case "salt": {12000};
	case "cocaine": {125000};
	case "sand": {14500};
	case "iron": {9500};
	case "meth": {112000};
	case "copper": {8000};
	case "cement": {6500};
	case "air": {15000};
	case "home": {190000};
	case "uran": {95000};
	case "warhead" : {130000};
	case "passport": {25000};
  case "grapes": {12000};
  case "moonshine": {125000};
  case "tabak": {34000};
  case "zigarren": {90000};
	case "stiller":{50000};
	case "liquor":{100000};
	case "bottler":{100000};
	case "adac": {1000}; 
	case "adac_air": {1000}; 
	case "adac_driver": {1000}; 
	case "adac_truck": {1000};
	case "hunter": {180000};
	case "sheep": {100000};
	case "goat": {100000};
	case "chicken": {100000};
	case "keks": {100000};

};