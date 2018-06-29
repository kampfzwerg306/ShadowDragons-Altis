[] spawn  {
	private["_fnc_food","_fnc_water"];
	_fnc_food = 
	{
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";}
		else
		{
		life_hunger = life_hunger - 10;
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";};
		switch(life_hunger) do {
			case 30: {hint localize "STR_NOTF_EatMSG_1";};
			case 20: {hint localize "STR_NOTF_EatMSG_2";};
			case 10: {hint localize "STR_NOTF_EatMSG_3";player setFatigue 1;};
			};
		};
	};
	
	_fnc_water = 
	{
		if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";}
		else
		{
			life_thirst = life_thirst - 10;
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";};
			switch(life_thirst) do 
			{
				case 30: {hint localize "STR_NOTF_DrinkMSG_1";};
				case 20: {hint localize "STR_NOTF_DrinkMSG_2"; player setFatigue 1;};
				case 10: {hint localize "STR_NOTF_DrinkMSG_3"; player setFatigue 1;};
			};
		};
	};
	
	while{true} do
	{
		uiSleep 600;
		[] call _fnc_water;
		uiSleep 250;
		[] call _fnc_food;
	};
};

[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 4);
		life_maxWeight = life_maxWeightT + _load;
		if(playerSide in [independent,west,east]) then {(unitBackpack player) setObjectTextureGlobal [0,""];};
		
		waitUntil {backpack player != _bp};
		if(backpack player == "") then 
		{
			life_maxWeight = life_maxWeightT;
		};
		uiSleep 7;
	};
};

[] spawn
{
	while {true} do
	{
		uiSleep 10;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint localize "STR_NOTF_MaxWeight";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};

/*[] spawn  
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do 
	{
		uiSleep 0.5;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};
*/

[] spawn  {
	while {true} do
	{
		waitUntil {(life_drink > 0)};
		while{(life_drink > 0)} do {

			if(life_drink >= 1.0) then {
				"radialBlur" ppEffectEnable true;
				"radialBlur" ppEffectAdjust[0.08, 0,0.35,0.37];
				"radialBlur" ppEffectCommit 3;
				uiSleep 240;
				life_drink = life_drink - 0.2;
			} else {
				"radialBlur" ppEffectEnable true;
				"radialBlur" ppEffectAdjust[0.05, 0,0.36,0.38];
				"radialBlur" ppEffectCommit 1;
				uiSleep 180;
				life_drink = life_drink - 0.2;
			};
		};

		"radialBlur" ppEffectAdjust [0,0,0,0];
		"radialBlur" ppEffectCommit 5;
		"radialBlur" ppEffectEnable false;
		life_drink = 0;
		uiSleep 20;
		};
	};


_illegalmarkers = ["Dealer_1_3","Dealer_1","awdvads_1_1_1_2","awdvads_1_1_1","awdvads_1_1_1_1","dhabab_1","methsdkljf","awdvads","Dealer_1_4","Weed_p_1","cocaine processing","heroin_p"];

/*if (playerSide == west) then {

{ deleteMarkerLocal _x; } forEach _illegalmarkers;

};*/