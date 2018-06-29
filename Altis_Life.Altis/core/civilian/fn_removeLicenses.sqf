/*
	File: fn_removeLicenses.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Used for stripping certain licenses off of civilians as punishment.
*/
private["_state","_medicsOnline","_randomnumber"];
_state = [_this,0,1,[0]] call BIS_fnc_param;

_medicsOnline = {_x != player && {side _x == independent} && {alive _x}} count playableUnits > 0; //Check if medics (indep) are in the room.

switch (_state) do
{
	//Death while being wanted
	case 0:
	{
		if(_medicsOnline) then {
			license_civ_rebel = false;
			license_civ_driver = false;
			license_civ_heroin = false;
			license_civ_marijuana = false;
			license_civ_coke = false;
			license_civ_gun = false;
			license_civ_boat = false;
			license_civ_air = false;
			license_civ_dive = false;
			license_civ_oil = false;
			license_civ_truck = false;
			[2] call SOCK_fnc_updatePartial;
		};
	};
	
	//Jail licenses
	case 1:
	{

		//lets role the dice!
		_randomnumber = random 100;
		hint "Richter Donald Schrill befragt die Geschworenen über den Verbleib deiner Lizenzen";
		sleep 10;

		if (_randomnumber < 30) then {
			hint "Die Geschworenen sind von der Schwere deine Straftat angewiedert und befinden das dir deine Lizenzen entzogen werden sollen!";

			license_civ_gun = false;
			license_civ_rebel = false;
			license_civ_driver = false;
			license_civ_air = false;
			license_civ_dive = false;
			license_civ_oil = false;
			license_civ_heroin = false;
			license_civ_marijuana = false;
			[2] call SOCK_fnc_updatePartial;
		} else {
			hint "Die Geschworenen empfinden Mitleid mit dir und die behälst deine Lizenzen";
		};
	};
	
	//Remove motor vehicle licenses
	case 2:
	{
		//if(license_civ_driver OR license_civ_air OR license_civ_truck OR license_civ_boat) then {
			//license_civ_driver = false;
			//license_civ_air = false;
			//license_civ_truck = false;
			//license_civ_boat = false;
			//hint localize "STR_Civ_LicenseRemove_1";
		//};
	};
	
	//Killing someone while owning a gun license
	case 3:
	{
		//if(license_civ_gun) then {
			//license_civ_gun = false;
			//hint localize "STR_Civ_LicenseRemove_2";
		//};
	};
	
	// Revoking Licenses
	
	// Führerschein Lizenz
	case 10:
	{
		license_civ_driver = false;
		hint localize "STR_Civ_RevokeLicense_Driver";
	};
	// LKW Führerschein Lizenz
	case 11:
	{
		license_civ_truck = false;
		hint localize "STR_Civ_RevokeLicense_Truck";
	};
	// Pilotenschein Lizenz
	case 12:
	{
		license_civ_air = false;
		hint localize "STR_Civ_RevokeLicense_Pilot";
	};
	// Bootsschein Lizenz
	case 13:
	{
		license_civ_boat = false;
		hint localize "STR_Civ_RevokeLicense_Boating";
	};
	// Taucherschein Lizenz
	case 14:
	{
		license_civ_dive = false;
		hint localize "STR_Civ_RevokeLicense_Diving";
	};
	// Taxischein Lizenz
	case 15:
	{
		license_civ_gun = false;
		hint localize "STR_Civ_RevokeLicense_Taxi";
	};
	// Alle Scheine
	case 16:
	{
		license_civ_driver = false;
		license_civ_truck = false;
		license_civ_air = false;
		license_civ_boat = false;
		license_civ_air = false;
		license_civ_dive = false;
		license_civ_gun = false;
		hint localize "STR_Civ_RevokeLicense_AllMotor";
	};
};