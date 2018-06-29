/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.
 
//What is the crime?
switch(_type) do
{
	case "187V": {_type = ["Fahrzeug Mord",100000]};
	case "187": {_type = ["Mord",100000]};
	case "901": {_type = ["Gefaengnisausbruch",100000]};
	case "261": {_type = ["Rape",200000]}; //What type of sick bastard would add this?
	case "261A": {_type = ["Attempted Rape",100000]};
	case "215": {_type = ["Versuchter Autodiebstahl",10000]};
	case "213": {_type = ["Benutzen von Sprengstoff",50000]};
	case "211": {_type = ["Raub",50000]};
	case "207": {_type = ["Geiselnahme",200000]};
	case "207A": {_type = ["Versuchte Geiselnahme",100000]};
	case "487": {_type = ["Grosser Diebstahl",60000]};
	case "488": {_type = ["Kleiner Diebstahl",50000]};
	case "480": {_type = ["Hit and run",50000]};
	case "481": {_type = ["Drogenbesitz",100000]};
	case "482": {_type = ["Intent to distribute",50000]};
	case "483": {_type = ["Drogenhandel",95000]};
	case "459": {_type = ["Einbruch",100000]};
	case "390": {_type = ["oeffentlicher Rausch",15000]};
	case "919": {_type = ["Organ Handel",200000]};

  case "1": {_type = ["Fahren ohne Fuehrerschein",10000]};
  case "2": {_type = ["Versuchter Diebstahl Fahrzeugs",25000]};
  case "3": {_type = ["Diebstahl/Fuehren e.fremden Zivilfahrzeugs",30000]};
  case "4": {_type = ["Fahren ohne Licht",5000]};
  case "5": {_type = ["ueberhoehte Geschwindigkeit",5000]};
  case "6": {_type = ["Gefaehrliche Fahrweise",5000]};
  case "7": {_type = ["Versuchter Diebstahl e.Polizeifahrzeugs",15000]};
  case "8": {_type = ["Diebstahl von Polizeifahrzeugen",50000]};
  case "9": {_type = ["Landen in einer Flugverbotszone",25000]};
  case "10": {_type = ["Fahren von illegalen Fahrzeugen",100000]};
  case "11": {_type = ["Unfallverursacher/Fahrerflucht nach Unfall",50000]};
  case "12": {_type = ["Fahrerflucht vor der Polizei",30000]};
  case "13": {_type = ["ueberfahren eines anderen Spielers",25000]};
  case "14": {_type = ["Illegale Strassensperren",50000]};
  case "15": {_type = ["Widerstand gegen die Staatsgewalt",30000]};
  case "16": {_type = ["Nicht befolgen e.pol.Anordnung",25000]};
  case "17": {_type = ["Beamtenbeleidigung",10000]};
  case "18": {_type = ["Belaestigung eines Polizisten",9000]};
  case "19": {_type = ["Betreten der pol.Sperrzone",20000]};
  case "20": {_type = ["Toeten eines Polizisten",100000]};
  case "21": {_type = ["Beschuss auf Polizei/Beamte/Eigentum",50000]};
  case "22": {_type = ["Zerstoerung von Polizeieigentum",30000]};
  case "23": {_type = ["Drogendelikte",12000]};
  case "24": {_type = ["Waffenbesitz ohne Lizenz",15000]};
  case "25": {_type = ["Mit gez.Waffe durch Stadt",10000]};
  case "26": {_type = ["Besitz einer verbotenen Waffe",60000]};
  case "27": {_type = ["Schusswaffengebrauch innerhalb Stadt",100000]};
  case "28": {_type = ["Geiselnahme",200000]};
  case "29": {_type = ["ueberfall auf Personen/Fahrzeuge",50000]};
  case "30": {_type = ["Bankraub",500000]};
  case "31": {_type = ["Mord",300000]};
  case "32": {_type = ["Aufstand",35000]};
  case "33": {_type = ["Angriff durch Rebellen",100000]};
  case "34": {_type = ["Angriff/Belagerung von Hauptstaedten",500000]};
  case "35": {_type = ["Vers.Landung in einer Flugverbotszone",15000]};
  case "36": {_type = ["Fliegen/Schweben unterhalb 150m ue.Stadt",10000]};
  case "37": {_type = ["Ausbruch aus dem Gefaengnis",100000]};
  case "38": {_type = ["Fliegen ohne Fluglizenz",25000]};
  case "39": {_type = ["Dauerhaft stoerendes Hupen",10000]};
  case "40": {_type = ["Handel mit exotischen Guetern",70000]};
  case "500": {_type = ["Geblitzt",1000]};
  case "501": {_type = ["Geblitzt",1900]}; 
  case "502": {_type = ["Geblitzt",3800]};
  case "503": {_type = ["Geblitzt",7600]};
  case "504": {_type = ["Geblitzt",15200]};
  case "505": {_type = ["Geblitzt",30400]};
  case "506": {_type = ["Geblitzt",50401]};
  case "507": {_type = ["Geblitzt",130402]};
  case "5000": {_type = ["Geblitzt",100]};

	default {_type = [];};
};
 
if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call TON_fnc_index;

if(_index != -1) then
{
	_data = life_wanted_list select _index;
	_crimes = _data select 2;
	_crimes set[count _crimes,(_type select 0)];
	_val = _data select 3;
	life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
}
	else
{
	life_wanted_list set[count life_wanted_list,[_name,_uid,[(_type select 0)],(_type select 1)]];
};


diag_log format["WANTED_LIST = %1", life_wanted_list];

_wantedlist = [life_wanted_list] call DB_fnc_mresArray;
_query = format["UPDATE wanted set list = '%1'", _wantedlist];

waitUntil {sleep (random 0.3); !DB_Async_Active};
_queryResult = [_query,1] call DB_fnc_asyncCall;