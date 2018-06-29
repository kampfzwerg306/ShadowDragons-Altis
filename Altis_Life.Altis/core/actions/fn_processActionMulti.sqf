/*
    File: fn_processActionMulti.sqf
    Author: Niels "Gamewalker" Kräupl, Bryan "Tonic" Boardwine
    Description:
    Master handling for processing multiple items.
*/
private["_vendor","_type","_itemInfo","_oldItem","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_ui","_progress","_pgText","_cP", "_detMinValArray"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 10)) exitWith {};
//unprocessed item,processed item, cost if no license,Text to display (I.e Processing  (percent) ..."
_itemInfo = switch (_type) do
{
    case "whiskey": {[["yeast", "rye"],"whiskey",500,"Brenne Whisky"]};
    case "mash": {[["water", "cornmeal"],"mash",200,"Mixe Getreidemaische"]};
    case "beer": 
    {
        player say3D "brauen";
        [["yeast", "hops"],"beerp",500,"Braue Bier"]
    };
    case "moonshine": {[["yeast", "mash"],"moonshine",1050,"Schwarzbrennen"]};
    case "bottledshine": {[["moonshine", "bottles"],"bottledshine",700,"Fülle Schwarzgebrantes ab"]};
    case "bottledbeer": {[["beerp", "bottles"],"bottledbeer",500,"Fülle Bier ab"]};
    case "bottledwhiskey": {[["whiskey", "bottles"],"bottledwhiskey",500,"Fülle Whisky ab"]};
    default {[];};
};
//Error checking
if(count _itemInfo == 0) exitWith {};
//Setup vars.
_oldItemArray = _itemInfo select 0;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;
if(_vendor in [mari_processor,cocaine_processor,heroin_processor]) then {
    _hasLicense = true;
} else {
    _hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
};
_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_detMinValArray = [];
{
    _detMinValArray = _detMinValArray + [missionNamespace getVariable ([_x,0] call life_fnc_varHandle)];
} forEach _oldItemArray;
_oldVal = _detMinValArray call BIS_fnc_lowestNum;
_cost = _cost * _oldVal;
//Some more checks
if(_oldVal == 0) exitWith {};
//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;
life_is_processing = true;
if(_hasLicense) then
{
    while{true} do
    {
        uiSleep  0.3;
        _cP = _cP + 0.01;
        _progress progressSetPosition _cP;
        _pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
        if(_cP >= 1) exitWith {};
        if(player distance _vendor > 10) exitWith {};
    };
    if(player distance _vendor > 10) exitWith {hint "Du hast dich zuweit entfernt!"; 5 cutText ["","PLAIN"]; life_is_processing = false;};
    
    {
        if(!([false,_x,_oldVal] call life_fnc_handleInv)) exitWith {
            5 cutText ["","PLAIN"]; 
            life_is_processing = false;
        };
    } forEach _oldItemArray;
    
    if(!life_is_processing) exitWith {};
    
    if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {
        5 cutText ["","PLAIN"];         
        {
            [true,_x,_oldVal] call life_fnc_handleInv; 
        } forEach _oldItemArray;
        life_is_processing = false;
    };
    
    5 cutText ["","PLAIN"];
    titleText[format["Du hast %1 zu %2 verarbeitet",_oldVal,_itemName],"PLAIN"];
    life_is_processing = false;
}
else
{
    if(life_cash < _cost) exitWith {hint format["Du brauchst $%1 um ohne Lizenz verarbeiten zu können!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
    while{true} do
    {
        uiSleep  0.9;
        _cP = _cP + 0.01;
        _progress progressSetPosition _cP;
        _pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
        if(_cP >= 1) exitWith {};
        if(player distance _vendor > 10) exitWith {};
    };
    if(player distance _vendor > 10) exitWith {hint "Du hast dich zuweit entfernt!"; 5 cutText ["","PLAIN"]; life_is_processing = false;};
    
    if(life_cash < _cost) exitWith {hint format["Du brauchst $%1 um ohne Lizenz verarbeiten zu können!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
    
    {
        if(!([false,_x,_oldVal] call life_fnc_handleInv)) exitWith {
            5 cutText ["","PLAIN"]; 
            life_is_processing = false;
        };
    } forEach _oldItemArray;
    
    if(!life_is_processing) exitWith {};
    
    if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {
        5 cutText ["","PLAIN"];         
        {
            [true,_x,_oldVal] call life_fnc_handleInv; 
        } forEach _oldItemArray;
        life_is_processing = false;
    };
    
    5 cutText ["","PLAIN"];
    titleText[format["Du hast %1 zu %2 zu $%3 verarbeitet",_oldVal,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
    life_cash = life_cash - _cost;
    life_is_processing = false;
};