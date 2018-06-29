/*
File: fn_vehicleColorStr.sqf
Author: Bryan "Tonic" Boardwine

Description:
Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";



switch (_vehicle) do
{

  case "O_G_Offroad_01_F" :
  {
    switch (_index) do
    {
      case 0: {_color = "Five-0";};
    };
  };

  case "C_Offroad_01_F" :
  {
    switch (_index) do
    {
      case 0: {_color = "Rot";};
      case 1: {_color = "Gelb";};
      case 2: {_color = "Weiss";};
      case 3: {_color = "Blau";};
      case 4: {_color = "Dunkel Rot";};
      case 5: {_color = "Blau Weiss"};
      case 6: {_color = "Polizei"};
      case 7: {_color = "Notarzt"};
      case 8: {_color = "Rosa"};
      case 9: {_color = "ADAC"};
	  case 10: {_color = "SD"};
    };
  };

  case "C_Hatchback_01_F":
  {
    switch (_index) do
    {
      case 0: {_color = "Beige";};
      case 1: {_color = "Green";};
      case 2: {_color = "Blue";};
      case 3: {_color = "Dark Blue";};
      case 4: {_color = "Yellow";};
      case 5: {_color = "White"};
      case 6: {_color = "Grey"};
      case 7: {_color = "Black"};
    };
  };

  case "C_Hatchback_01_sport_F":
  {
    switch(_index) do
    {
      case 0: {_color = "Red"};
      case 1: {_color = "Dark Blue"};
      case 2: {_color = "Orange"};
      case 3: {_color = "Black / White"};
      case 4: {_color = "Tan"};
      case 5: {_color = "Monster"};
      case 6: {_color = "Polizei"};
      case 7: {_color = "Metallica"};
	  case 8: {_color = "ADAC"};
	  case 9: {_color = "Event"};
    };
  };

  case "C_SUV_01_F":
  {
    switch (_index) do
    {
      case 0: {_color = "Dark Red";};
      case 1: {_color = "Polizei";};
      case 2: {_color = "Silver";};
      case 3: {_color = "Orange";};
      case 4: {_color = "Evangelion 02";};
      case 5: {_color = "Notarzt";};
      case 6: {_color = "ADAC";};
      case 7: {_color = "Feuer";};
	  case 8: {_color = "Feuer Skull";};
	  case 9: {_color = "Hello Kitty";};
	  case 10: {_color = "Black Web";};
    };
  };

  case "C_Van_01_box_F":
  {
    switch (_index) do
    {
      case 0: {_color = "White"};
      case 1: {_color = "Red"};
      case 2: {_color = "RTW"};
    };
  };

  case "C_Van_01_transport_F":
  {
    switch (_index) do
    {
      case 0: {_color = "White"};
      case 1: {_color = "Red"};
	  case 2: {_color = "Dark Blue"};
    };
  };

  case "C_Van_01_fuel_F":
  {
    switch (_index) do
    {
      case 0: {_color = "White"};
      case 1: {_color = "Red"};
	  case 2: {_color = "ADAC"};
    };
  };

  case "B_Quadbike_01_F" :
  {
    switch (_index) do
    {
      case 0: {_color = "Brown"};
      case 1: {_color = "Digi Desert"};
      case 2: {_color = "Black"};
      case 3: {_color = "Blue"};
      case 4: {_color = "Red"};
      case 5: {_color = "White"};
      case 6: {_color = "Digi Green"};
      case 7: {_color = "Hunter Camo"};
      case 8: {_color = "Rebel Camo"};
	  case 9: {_color = "ADAC"};
    };
  };

  case "B_Heli_Light_01_F":
  {
    switch (_index) do
    {
      case 0: {_color = "Polizei"};
      case 1: {_color = "Civ Blue"};
      case 2: {_color = "Civ Red"};
      case 3: {_color = "Digi Green"};
      case 4: {_color = "Blueline"};
      case 5: {_color = "Elliptical"};
      case 6: {_color = "Furious"};
      case 7: {_color = "Jeans Blue"};
      case 8: {_color = "Speedy Redline"};
      case 9: {_color = "Sunset"};
      case 10: {_color = "Vrana"};
      case 11: {_color = "Waves Blue"};
      case 12: {_color = "Rebel Digital"};
      case 13: {_color = "EMS White"};
      case 14: {_color = "Wood Green"};
      case 15: {_color = "Schwarz"};
      case 16: {_color = "Pink"};
    };
  };

  case "O_Heli_Light_02_unarmed_F":
  {
    switch (_index) do
    {
      case 0: {_color = "Black"};
      case 1: {_color = "White / Blue"};
      case 2: {_color = "Digi Green"};
      case 3: {_color = "Desert Digi"};
      case 4: {_color = "ALR"};
    };
  };

  case "O_Heli_Light_02_F":
  {
    switch (_index) do
    {
      case 0: {_color = "ALR-Radar"};
    };
  };
  
  case "B_MRAP_01_F":
  {
    switch (_index) do
    {
      case 0: {_color = "Polizei"};
      case 1: {_color = "Medic"};
	  case 2: {_color = "ADAC"};
    };
  };

  case "B_MRAP_01_hmg_F":
  {
    switch (_index) do
    {
      case 0: {_color = "GSGA"};
    };
  };

  case "O_MRAP_02_F":
  {
    switch (_index) do
    {
      case 0: {_color = "Tarnfleck"};
      case 1: {_color = "SD"};
      case 3: {_color = "Polizei"};

    };
  };
  case "O_MRAP_02_hmg_F":
  {
    switch (_index) do
    {
      case 0: {_color = "Tarnfleck"};
      case 1: {_color = "SD"};
      case 2: {_color = "KSK"};

    };
  };
  case "I_Truck_02_covered_F":
  {
    switch (_index) do
    {
      case 0: {_color = "Orange"};
      case 1: {_color = "Black"};
      case 2: {_color = "Schwarz"};

    };
  };

  case "I_Truck_02_transport_F":
  {
    switch (_index) do
    {
      case 0: {_color = "Orange"};
      case 1: {_color = "Black"};
      case 2: {_color = "Schwarz"};

    };
  };

  case "B_APC_Wheeled_01_cannon_F":
  {
    switch (_index) do
    {
      case 0: {_color = "Black"};
    };
  };

  case "O_Heli_Attack_02_black_F":
  {
    switch (_index) do
    {
      case 0: {_color = "Black"};
    };
  };

  case "I_Heli_Transport_02_F":
  {
    switch (_index) do
    {
      case 0: {_color = "Ion"};
      case 1: {_color = "Dahoman"};
      case 2: {_color = "SD"};
      case 3: {_color = "Pink"};


    };
  };

  case "B_APC_Wheeled_01_cannon_F":
  {
    switch (_index) do
    {
      case 0: {_color = "Black"};
    };
  };

  case "B_Heli_Transport_01_F":
  {
    switch (_index) do
    {
      case 0: {_color = "Black"};
      case 1: {_color = "Polizei"};
      case 2: {_color = "GSGA"};

    };
  };
  case "I_Heli_light_03_unarmed_F":
  {
    switch (_index) do
    {
      case 0: {_color = "Polizei"};
      case 1: {_color = "Notarzt"};
      case 2: {_color = "ADAC"};

    };
  };


  case "B_Truck_01_mover_F":
  {
    switch (_index) do
    {
      case 0: {_color = "ADAC"};
    };
  };
  case "O_APC_Wheeled_02_rcws_F":
  {
    switch (_index) do
    {
      case 0: {_color = "Polizei"};
    };
   };
  case "I_MRAP_03_F":
  {
    switch (_index) do
    {
      case 0: {_color = "KSK"};
      case 1: {_color = "SD"};
    };
  };
  case "I_MRAP_03_hmg_F":
  {
    switch (_index) do
    {
      case 0: {_color = "KSK"};
    };
  };

  case "B_Truck_01_covered_F":
  {
    switch (_index) do
    {
      case 0: {_color = "Schwarz"};


    };
  };
  case "B_Truck_01_box_F":
  {
    switch (_index) do
    {
      case 0: {_color = "Schwarz"};


    };
  };
  case "B_Truck_01_transport_F":
  {
    switch (_index) do
    {
      case 0: {_color = "Schwarz"};
      case 1: {_color = "ADAC"};

    };
  };
  case "O_Truck_03_covered_F":
  {
    switch (_index) do
    {
      case 0: {_color = "Schwarz"};

    };
  };

  case "O_Heli_Transport_04_F":
  {
    switch (_index) do
    {
      case 0: {_color = "ADAC"};

    };
  };
    case "C_Heli_Light_01_civil_F":
  {
    switch (_index) do
    {
      case 0: {_color = "Blueline"};
	  case 1: {_color = "Rebel Digital"};
	  case 2: {_color = "Elliptical"};
	  case 3: {_color = "Furious"};
	  case 4: {_color = "Graywatcher"};
	  case 5: {_color = "Jeans"};
	  case 6: {_color = "Light"};
	  case 7: {_color = "Shadow"};
	  case 8: {_color = "Sheriff"};
	  case 9: {_color = "Speedy"};
	  case 10: {_color = "Sunset"};
	  case 11: {_color = "Vrana"};
	  case 12: {_color = "Wasp"};
	  case 13: {_color = "Wave"};
	  case 14: {_color = "ADAC"};
	  
    };
  };
};
_color;