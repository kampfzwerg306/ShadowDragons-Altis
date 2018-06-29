/*
File: fn_getPrices.sqf
Author: Worldtrade1101

Description:
Send a query to retrieve the price of stuff on the server
*/
private["_type","_side","_data","_unit","_ret","_tickTime","_queryResult"];
_type = [_this,0,0,[0]] call BIS_fnc_param;
_unit = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_data= [_this,2,"",[""]] call BIS_fnc_param;


//Error checks

//diag_log format ["%1   %2    %3",_unit,_type,_data];
if( (_data == "") OR (isNull _unit)) exitWith
{

//diag_log "data ou type ou unit null";
/*if(!isNull _unit) then
{
[[[]],"life_fnc_impoundMenu",(owner _unit),false] spawn life_fnc_MP;
}; */
};

_unit = owner _unit;


// shoptype eating = Donuts, Coffee
// shoptype adaccop 
// shoptype special_1
// shoptype special_2
// shoptype special_3
// shoptype special_4



_query = switch (_data) do {



case "car_shop" :{ format["SELECT class, buyprice, sellprice FROM vehicleshop WHERE shoptype='%1' ",_data];};
case "truck_shop" :{ format["SELECT class, buyprice, sellprice FROM vehicleshop WHERE shoptype='%1' ",_data];};
case "adac_shop" :{ format["SELECT class, buyprice, sellprice FROM vehicleshop WHERE shoptype='%1' ",_data];};
case "med_shop" :{ format["SELECT class, buyprice, sellprice FROM vehicleshop WHERE shoptype='%1' ",_data];};
case "cop_shop" :{ format["SELECT class, buyprice, sellprice FROM vehicleshop WHERE shoptype='%1' ",_data];};


default {"Error"};
};


if(_query == "Error") exitWith {
//diag_log "error";
};

waitUntil{sleep (random 0.3); !DB_Async_Active};
_tickTime = diag_tickTime;
_queryResult = [_query,2,true] call DB_fnc_asyncCall;

//diag_log "------------- Client Query Request -------------";
//diag_log format["QUERY: %1",_query];
//diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
//diag_log format["Result: %1",_queryResult];
//diag_log "------------------------------------------------";

if (_data == "vehicleshop") exitwith {[[_type,_queryResult],"life_fnc_virt_updateEconomy",_unit,false] spawn life_fnc_MP;};

[[_type,_queryResult],"life_fnc_virt_updateprice",_unit,false] spawn life_fnc_MP;