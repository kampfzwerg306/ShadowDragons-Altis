#include <macro.h>
/*
	File: fn_craftCfg.sqf
	Author: EdgeKiller

	Description:
	Master configuration file for the crafting menu.

*/
private["_craft"];
_craft = [_this,0,"",[""]] call BIS_fnc_param;
if(_craft == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_craft) do
{
	case "weapon":
	{
		switch(true) do
		{
			default
			{
				["Weapons",
					[
						//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
						["SMG_02_F", ["life_inv_ironr",3,"life_inv_copperr",3]],
						["30Rnd_9x21_Mag", ["life_inv_copperr",2,"life_inv_ironr",1]],
						["hgun_Pistol_heavy_02_F", ["life_inv_ironr",3,"life_inv_copperr",1]],
						["6Rnd_45ACP_Cylinder", ["life_inv_ironr",1,"life_inv_copperr",1]],
						["arifle_SDAR_F", ["life_inv_ironr",4,"life_inv_copperr",6]]

					]
				];
			};
		};
	};

	case "uniform":
	{
		switch(true) do
		{
			default
			{
				["Clothes",
					[
						//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
						["U_IG_Guerilla1_1", ["life_inv_glass",1]]
					]
				];
			};
		};
	};

	case "backpack":
	{
		switch(true) do
		{
			default
			{
				["Backpacks",
					[
						//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
						["B_Carryall_oli", ["life_inv_glass",1]]
					]
				];
			};
		};
	};

	case "item":
	{
		switch(true) do
		{
			default
			{
				["Items",
					[
						//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
						["life_inv_boltcutter", ["life_inv_wine",4,"life_inv_copperr",6]],
						["life_inv_lockpick", ["life_inv_glass",5,"life_inv_methp",5]]
					]
				];
			};
		};
	};
};
 