/*
	File: fn_goldUpdate.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Uhhh, adds to it?
*/
private["_goldB"];
while {true} do
{
	uiSleep (30 * 270);
	_goldB = gold_safe getVariable["gold",0];
	gold_safe setVariable["gold",round(_goldB+round(random 50)),true]; //Adds a random number of gold ever hour or 2 hours.
};