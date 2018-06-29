/*
	File: fn_updateViewDistance.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Updates the view distance dependant on whether the player is on foot, a car or an aircraft.
*/
if (isnil "tawvd_syncObject") then {tawvd_syncObject = false};
switch (true) do
{
	case ((vehicle player) isKindOf "Man"): {setViewDistance tawvd_foot;
		if(tawvd_syncObject) then {
			setObjectViewDistance [tawvd_foot,100];
		};
	};
	case ((vehicle player) isKindOf "LandVehicle"): {setViewDistance tawvd_car;
		if(tawvd_syncObject) then {
			setObjectViewDistance [tawvd_car,100];
		};
	};
	case ((vehicle player) isKindOf "Air"): {setViewDistance tawvd_air;
		if(tawvd_syncObject) then {
			setObjectViewDistance [tawvd_air,100];
		};
	};
};
