/*
	File: fn_zoneCreator.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Creates triggers around the map to add the addAction for specific
	fields such as apples, cocaine, heroin, etc. This method is to reduce
	CPU load.
	
	Note: 
	Triggers are NOT my preferred method so this is considered temporary until a more suitable
	option is presented.
*/
private["_appleZones","_peachZones","_heroinZones","_cocaineZones","_weedZones","_oilZones"];
_appleZones = ["apple_1","apple_2","apple_3","apple_4"];
_peachZones = ["peaches_1","peaches_2","peaches_3","peaches_4"];
_heroinZones = ["heroin_1"];
_cocaineZones = ["cocaine_1","cocaine_2","cocaine_3"];
_weedZones = ["weed_1","weed_2"];
_methZones = ["meth_1"];
_uranZones = ["uran_1"];
_grapeZones = ["grape_1"];
_tabakZones = ["tabak_1"];
_oilZones = ["oil_1","oil_2","oil_3"];
_save =["ksave","psave"];
_jagd = [jagd_1,jagd_2,jagd_3,jagd_4];

//Create uran zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[70,70,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Uran = player addAction['Uran abbauen',life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Uran;"];
} foreach _uranZones;

//Create tabak zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[70,70,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Tabak = player addAction['Pflücke Tabak',life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Tabak;"];
} foreach _tabakZones;

//Create grape zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[70,70,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Grapes = player addAction['Gather Grapes',life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Grapes;"];
} foreach _grapeZones;


//Create meth zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[70,70,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Meth = player addAction['Methzutaten stehlen',life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Meth;"];
} foreach _methZones;

//Create apple zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[30,30,0,false];
	_zone setTriggerActivation["any","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Apples = player addAction[(localize ""STR_Gather_Apples""),life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Apples;"];
} foreach _appleZones;

//Create peach zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[39,30,0,false];
	_zone setTriggerActivation["any","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Peaches = player addAction[(localize ""STR_Gather_Peaches""),life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Peaches;"];
} foreach _peachZones;

//Create heroin zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[70,70,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_heroin = player addAction[(localize ""STR_Gather_Heroin""),life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Heroin;"];
} foreach _heroinZones;

//Create Weed zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[70,70,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Cannabis = player addAction[(localize ""STR_Gather_Cannabis""),life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Cannabis;"];
} foreach _weedZones;

//Create cocaine zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[70,70,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Coke = player addAction[(localize ""STR_Gather_Cocaine""),life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Coke;"];
} foreach _cocaineZones;

//Create oil zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[90,90,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Oil = player addAction[(localize ""STR_Gather_Oil""),life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Oil;"];
} foreach _oilZones;

{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[600,600,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist || vehicle player in thislist","3 cutrsc ['saveHUD','PLAIN'];nok_save = true;","3 cutText ['','PLAIN'];nok_save = nil"];
} foreach _save;

//Jagdgebiet 


{
	_zone = createTrigger ["EmptyDetector",(position _x)];
	_zone setTriggerArea[300,300,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist || vehicle player in thislist","if (!isnil 'HC1_owner') then {jagd = [player,true,getpos thistrigger];HC1_owner publicvariableclient 'jagd'}else {hint 'Kein HC online'};","if (!isnil 'HC1_owner') then {jagd = [player,false,getpos thistrigger];HC1_owner publicvariableclient 'jagd'}else {hint 'Kein HC online'};"];
} foreach _jagd;
//save zone
/*
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[600,600,0,false];
	_zone setTriggerActivation["ANY","PRESENT",true];
	_zone setTriggerStatements["player in thislist || vehicle player in thislist","player allowdamage false","player allowdamage true"];
} foreach _save;
*/
//save zone Unsterblich


//and at bottom under create zones
//Create zones
/*{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[70,70,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Rye = player addAction[(localize ""STR_Gather_Rye""),life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Rye;"];
} foreach _ryeZones;

//Create zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[70,70,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Hops = player addAction[(localize ""STR_Gather_Hops""),life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Hops;"];
} foreach _hopsZones;

//Create zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[70,70,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Yeast = player addAction[(localize ""STR_Gather_Yeast""),life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Yeast;"];
} foreach _yeastZones;*/