 /*
	File: fn_lackierwerkstatt.sqf
	Author: [WAF]Bricktop alias BLG

	Description:
	Atach vehiclegroundlights / set textures / set custom parts to a vehicle.
*/

private["_vehicle","_veh","_countObjects","_ui","_line1","_line2","_rnd","_priceVC","_priceULC","_priceAB","_price","_einb","_ex",
		"_tex","_tex2","_color","_textVC","_textULC","_textAB","_vehicleName","_color","_ul","_smoke1","_smoke2","_i","_e"];	

_vehicle = cursorTarget;		
_veh = typeOf _vehicle;
_countObjects = count nearestObjects [_vehicle, ["Land_CarService_F"], 5.5];

	if (_countObjects > 0) then
	{
		if(!(isEngineOn _vehicle)) then 
		{
			if(_veh == "B_Quadbike_01_F") exitwith
			{
				hint"Diesen Fahrzeugtyp koennen sie nicht lackieren lassen.";
				sleep 1;
				disableSerialization;

					("10" call BIS_fnc_rscLayer) cutRsc ["WAF_cutrsc_display_1","PLAIN"];

				_ui = uiNameSpace getVariable "WAF_cutrsc_display_1","PLAIN";
				_line1 = _ui displayCtrl 191000;
				_line2 = _ui displayCtrl 191001;
				_rnd = random 10;
				if((_rnd <= 10) && (_rnd >=9)) then {_line1 ctrlSetText "An dem Teil gibt es nichts zu lackieren.";_line2 ctrlSetText "Komm doch mal mit einem AUTO her . . :)";};
				if((_rnd <= 9) && (_rnd >=8)) then {_line1 ctrlSetText "Alle Mitarbeiter machen gerade Pause.";_line2 ctrlSetText "Bitte kommen sie nicht wieder :) ...";};
				if((_rnd <= 8) && (_rnd >=7)) then {_line1 ctrlSetText "Eyyy - Du da. Hasste mal ne Kippe ...";_line2 ctrlSetText "HA HA HA ... So ein kleines Ding . . .";};
				if((_rnd <= 7) && (_rnd >=6)) then {_line1 ctrlSetText "Der Meister sagte - <<Nicht die Dinger>>";_line2 ctrlSetText "Tut uns wirklich leid, so ein Pech ...";};
				if((_rnd <= 6) && (_rnd >=0)) then {_line1 ctrlSetText "Wegen Renovierungsarbeiten geschlossen.";_line2 ctrlSetText " . . . . . . Der Besitzer . . . . . . ";};
				sleep 10;

					("10" call BIS_fnc_rscLayer) cutText ["","PLAIN"];
			 };

				if((!(_veh == "C_Offroad_01_F")) && (!(_veh == "C_Hatchback_01_F")) && (!(_veh == "C_Hatchback_01_sport_F")) && (!(_veh == "C_SUV_01_F")) && (!(_veh == "B_MRAP_01_F")) && (!(_veh == "I_MRAP_03_F")) && (!(_veh == "O_MRAP_02_F"))) exitwith {hint"Diesen Fahrzeugtyp koennen sie nicht lackieren lassen.";};
				
				player setVariable["lack",true,true];
				
				btnKaufen = false;
				btnExit = false;

				disableSerialization;
				createDialog "WAF_Lackierer_Dialog";
				waitUntil {!isNull (findDisplay 30045)};

				_priceVC = 0;
				_priceULC = 0;
				_priceAB = 0;
				_price = 0;
				_einb = 0;
				_ex = 0;
				_tex = "";
				_tex2 = "";
				_color = "";

				ctrlSetText [81201, "Fahrzeugfarbe Preis: . . . . "];
				ctrlSetText [81202, "Unterbodenlicht Preis: . . . . "];
				ctrlSetText [81204, "Anbauteile Preis: . . . . "];
				ctrlSetText [81203, "Ihre Rechnung: KEINE "];

					while{(alive _vehicle)} do
					{
						_textVC = lbText [81500,(lbCurSel 81500)];
				
						if(!(_textVC == "nicht Lackieren")) then
						{

							switch (typeOf _vehicle) do
							{
							
								case "C_Offroad_01_F":
								{
									switch(true) do
									{
										case (_textVC == "$5000 Rot"): 			 {_tex = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa";		_color = "Rot";			_priceVC = 5000;	ctrlSetText [81200, "textures\pics\o_01.jpg"];};
										case (_textVC == "$5000 Ocker"): 		 {_tex = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa"; _color = "Ocker";		_priceVC = 5000;	ctrlSetText [81200, "textures\pics\o_02.jpg"];};
										case (_textVC == "$5000 Weiss"):  	 	 {_tex = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa"; _color = "Weiss";		_priceVC = 5000;	ctrlSetText [81200, "textures\pics\o_03.jpg"];};
										case (_textVC == "$5000 Blau"): 	 	 {_tex = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa"; _color = "Blau";		_priceVC = 5000;	ctrlSetText [81200, "textures\pics\o_04.jpg"];};
										case (_textVC == "$5000 Weinrot"):       {_tex = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa"; _color = "Weinrot";		_priceVC = 5000;	ctrlSetText [81200, "textures\pics\o_05.jpg"];};
										case (_textVC == "$5000 Blau-Weiss"):    {_tex = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa"; _color = "Blau-Weiss";  _priceVC = 5000;	ctrlSetText [81200, "textures\pics\o_06.jpg"];};
										case (_textVC == "$10000 Grau"): 	     {_tex = "#(argb,8,8,3)color(0.7,0.7,0.7,0.03)";					_color = "Grau";		_priceVC = 10000;	ctrlSetText [81200, "textures\pics\o_07.jpg"];};
										case (_textVC == "$10000 Mattschwarz"):  {_tex = "#(argb,8,8,3)color(0.05,0.05,0.05,1)";					_color = "Mattschwarz"; _priceVC = 10000;	ctrlSetText [81200, "textures\pics\o_08.jpg"];};
										case (_textVC == "$10000 Schwarz"): 	 {_tex = "#(argb,8,8,3)color(0.14,0.05,0.06,0.07)";					_color = "Schwarz";		_priceVC = 10000;	ctrlSetText [81200, "textures\pics\o_09.jpg"];};
										case (_textVC == "$15000 Tiefschwarz"):  {_tex = "textures\vehicles\civ\race_offroad_black.paa";			_color = "Tiefschwarz";	_priceVC = 15000;	ctrlSetText [81200, "textures\pics\o_10.jpg"];};
										case (_textVC == "$20000 Taxi"): 		 {_tex = "textures\vehicles\civ\race_offroad_taxi.paa";				_color = "Taxi"; 		_priceVC = 20000;	ctrlSetText [81200, "textures\pics\o_11.jpg"];};
									};
								};
								case "C_Hatchback_01_F":
								{
									switch(true) do
									{
										case (_textVC == "$5000 Beige"): 			{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa";	_color = "Beige";			_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_01.jpg"];};
										case (_textVC == "$5000 Gruen"): 			{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa";	_color = "Gruen";			_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_02.jpg"];};
										case (_textVC == "$5000 Blau"): 			{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa";	_color = "Blau";			_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_03.jpg"];};
										case (_textVC == "$5000 Dunkelblau"): 		{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa";	_color = "Dunkelblau";		_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_04.jpg"];};
										case (_textVC == "$5000 Gelb"): 			{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa";	_color = "Gelb";			_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_05.jpg"];};
										case (_textVC == "$5000 Hellgrau"): 		{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa";	_color = "Hellgrau";		_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_06.jpg"];};
										case (_textVC == "$5000 Dunkelgrau"): 		{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa";	_color = "Dunkelgrau";		_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_07.jpg"];};
										case (_textVC == "$5000 Schwarz"): 			{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa";	_color = "Schwarz";			_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_08.jpg"];};
										case (_textVC == "$5000 Rot"): 				{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport01_co.paa";	_color = "Rot";				_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_09.jpg"];};
										case (_textVC == "$5000 Schwarz-Blau"): 	{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport02_co.paa";	_color = "Schwarz-Blau";	_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_10.jpg"];};
										case (_textVC == "$5000 Schwarz-Orange"): 	{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport03_co.paa";	_color = "SchwarzOrange";	_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_11.jpg"];};
										case (_textVC == "$5000 Weiss-Grau"): 		{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport04_co.paa";	_color = "Weiss-Grau";		_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_12.jpg"];};
										case (_textVC == "$5000 Schwarz-Grau"): 	{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport05_co.paa";	_color = "Schwarz-Grau";	_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_13.jpg"];};
										case (_textVC == "$5000 Schwarz-Gruen"): 	{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport06_co.paa";	_color = "Schwarz-Gruen";	_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_14.jpg"];};
										case (_textVC == "$95000 Werbetraeger"): 	{_tex = "textures\vehicles\civ\race_limo_orange.paa";							_color = "Werbetraeger";	_priceVC = 95000;	ctrlSetText [81200, "textures\pics\l_16.jpg"];};
									};
								};
								case "C_Hatchback_01_sport_F":
								{
									switch(true) do
									{
										case (_textVC == "$5000 Beige"): 			{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa";	_color = "Beige";			_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_01.jpg"];};
										case (_textVC == "$5000 Gruen"): 			{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa";	_color = "Gruen";			_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_02.jpg"];};
										case (_textVC == "$5000 Blau"): 			{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa";	_color = "Blau";			_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_03.jpg"];};
										case (_textVC == "$5000 Dunkelblau"): 		{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa";	_color = "Dunkelblau";		_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_04.jpg"];};
										case (_textVC == "$5000 Gelb"): 			{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa";	_color = "Gelb";			_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_05.jpg"];};
										case (_textVC == "$5000 Hellgrau"): 		{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa";	_color = "Hellgrau";		_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_06.jpg"];};
										case (_textVC == "$5000 Dunkelgrau"): 		{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa";	_color = "Dunkelgrau";		_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_07.jpg"];};
										case (_textVC == "$5000 Schwarz"): 			{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa";	_color = "Schwarz";			_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_08.jpg"];};
										case (_textVC == "$5000 Rot"): 				{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport01_co.paa";	_color = "Rot";				_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_09.jpg"];};
										case (_textVC == "$5000 Schwarz-Blau"): 	{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport02_co.paa";	_color = "Schwarz-Blau";	_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_10.jpg"];};
										case (_textVC == "$5000 Schwarz-Orange"): 	{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport03_co.paa";	_color = "SchwarzOrange";	_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_11.jpg"];};
										case (_textVC == "$5000 Weiss-Grau"): 		{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport04_co.paa";	_color = "Weiss-Grau";		_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_12.jpg"];};
										case (_textVC == "$5000 Schwarz-Grau"): 	{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport05_co.paa";	_color = "Schwarz-Grau";	_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_13.jpg"];};
										case (_textVC == "$5000 Schwarz-Gruen"): 	{_tex = "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport06_co.paa";	_color = "Schwarz-Gruen";	_priceVC = 5000;	ctrlSetText [81200, "textures\pics\l_14.jpg"];};
										case (_textVC == "$150000 Raucher-Gruen"): 	{_tex = "textures\vehicles\civ\race_limo_green.paa";							_color = "Raucher-Gruen";	_priceVC = 150000;	ctrlSetText [81200, "textures\pics\l_15.jpg"];};
										case (_textVC == "$200000 WAF-Limo"): 		{_tex = "textures\vehicles\civ\race_limo_waf.paa";								_color = "WAF-Limo";		_priceVC = 200000;	ctrlSetText [81200, "textures\pics\l_17.jpg"];};
									};
								};
								case "C_SUV_01_F":
								{
									switch(true) do
									{
										case (_textVC == "$5000 Weinrot"): 					{_tex = "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa";		_color = "Weinrot";					_priceVC = 5000;	ctrlSetText [81200, "textures\pics\s_01.jpg"];};
										case (_textVC == "$5000 Schwarz"): 					{_tex = "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa";	_color = "Schwarz";					_priceVC = 5000;	ctrlSetText [81200, "textures\pics\s_02.jpg"];};
										case (_textVC == "$5000 Silber"): 					{_tex = "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa";	_color = "Silber";					_priceVC = 5000;	ctrlSetText [81200, "textures\pics\s_03.jpg"];};
										case (_textVC == "$5000 Schwarz-Orange"): 			{_tex = "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa";	_color = "Schwarz-Orange";			_priceVC = 5000;	ctrlSetText [81200, "textures\pics\s_04.jpg"];};
										case (_textVC == "$50000 Taxi"): 					{_tex = "textures\vehicles\civ\race_suv_taxi.paa";				_color = "Taxi";					_priceVC = 50000;	ctrlSetText [81200, "textures\pics\s_05.jpg"];};
										case (_textVC == "$50000 Pink-Lila"): 				{_tex = "textures\vehicles\civ\race_suv_lila.paa";				_color = "Pink-Lila";				_priceVC = 50000;	ctrlSetText [81200, "textures\pics\s_06.jpg"];};
										case (_textVC == "$180000 Teufelsrot"): 			{_tex = "textures\vehicles\civ\race_suv_red.paa";				_color = "Teufelsrot";				_priceVC = 180000;	ctrlSetText [81200, "textures\pics\s_07.jpg"];};
										case (_textVC == "$180000 Radioaktiv"): 			{_tex = "textures\vehicles\civ\race_suv_orange.paa";			_color = "Radioaktiv";				_priceVC = 180000;	ctrlSetText [81200, "textures\pics\s_08.jpg"];};
										case (_textVC == "$200000 Schwarz-Flammen"): 		{_tex = "textures\vehicles\civ\race_suv_black.paa";				_color = "Schwarz-Flammen";			_priceVC = 200000;	ctrlSetText [81200, "textures\pics\s_09.jpg"];};
										case (_textVC == "$200000 Schwarz-Weiss-Flammen"): 	{_tex = "textures\vehicles\civ\race_suv_white.paa";				_color = "Schwarz-Weiss-Flammen";	_priceVC = 200000;	ctrlSetText [81200, "textures\pics\s_10.jpg"];};
									};
								};
								case "I_MRAP_03_F":
								{
									switch(true) do
									{
										case (_textVC == "$25000 Tarnfarbig"): {_tex = "\a3\soft_f_beta\mrap_03\data\mrap_03_ext_indp_co.paa";_tex2 ="\a3\data_f\vehicles\turret_indp_co.paa";_color = "Tarn";_priceVC = 25000;ctrlSetText [81200, "textures\pics\xs_01.jpg"];};
									};
								};

								case "B_MRAP_01_F":
								{
									switch(true) do
									{
										case (_textVC == "$25000 Tarnfarbig"): {_tex = "\A3\soft_F\MRAP_01\data\MRAP_01_base_CO.paa";_color = "Tarn";_priceVC = 25000;ctrlSetText [81200, "textures\pics\xh_01.jpg"];};
									};
								};

								case "O_MRAP_02_F":
								{
									switch(true) do
									{
										case (_textVC == "$25000 Tarnfarbig"): {_tex = "\A3\soft_F\MRAP_02\data\MRAP_02_ext_01_CO.paa";_tex2 = "\A3\soft_F\MRAP_02\data\MRAP_02_ext_02_CO.paa";_color = "Tarn";_priceVC = 25000;ctrlSetText [81200, "textures\pics\xi_01.jpg"];};
									};
								};
							};
						}
						else
						{
							_tex = "";
							_tex2 = "";
							_priceVC = 0;
							ctrlSetText [81200, "textures\pics\waf.jpg"];
						};
						
						if(_priceVC == 0) then	{ctrlSetText [81201, "Fahrzeugfarbe Preis: . . . . "];} else {ctrlSetText[81201,format["Fahrzeugfarbe Preis:  $%1",_priceVC]];};

						_textAB = lbText [81502,(lbCurSel 81502)];

						if(!(_textAB == "Keine")) then
						{
							switch(true) do
							{
								case (_textAB == "$5000 Ueberrollbuegel"): 							{_priceAB = 5000;	_einb = 1;};
								case (_textAB == "$5000 Bullenfaenger"): 							{_priceAB = 5000;	_einb = 2;};
								case (_textAB == "$5000 Bullenfaenger-Winde"):						{_priceAB = 5000;	_einb = 3;};
								case (_textAB == "$10000 Ueberrollbuegel + Bullenfaenger"): 		{_priceAB = 10000;	_einb = 4;};
								case (_textAB == "$10000 Ueberrollbuegel + Bullenfaenger-Winde"): 	{_priceAB = 10000;	_einb = 5;};
							};
						}
						else
						{
								_priceAB = 0;
								_einb = 0;
						};
						
						if(_priceAB == 0) then	{ctrlSetText [81204, "Anbauteile Preis: . . . . "];} else {ctrlSetText[81204,format["Anbauteile Preis:  $%1",_priceAB]];};
							
						_textULC = lbText [81501,(lbCurSel 81501)];

						if((_textULC == "$5000 Rot") OR (_textULC == "$5000 Gruen") OR (_textULC == "$5000 Blau")) then {_priceULC = 5000;}	else {_priceULC = 0;};
						if(_priceULC == 0) then {ctrlSetText [81202, "Unterbodenlicht Preis: . . . . "];} else {ctrlSetText[81202,format["Unterbodenlicht Preis:  $%1",_priceULC]];};
						
						_price = _priceVC + _priceAB + _priceULC;
						if(_price == 0) then {ctrlSetText [81203, "Ihre Rechnung: KEINE "];} else {ctrlSetText[81203,format["Ihre Rechnung:  $%1",_price]];};

						if(btnKaufen) exitWith {btnKaufen = false;closeDialog 0;};
						if(btnExit) exitWith {btnExit = false;_ex = 1;closeDialog 0;};
						if(!(dialog)) exitWith {_ex = 1;};
						sleep 0.2;
						
					};
					
						if(_ex == 1) exitWith {player setVariable["lack",false,true];};

						if((!(alive _vehicle)) OR (!(alive player))) exitWith {player setVariable["lack",false,true];};

						_pay = 0;
						_paytext = "";
						if(life_cash < _price) then {_pay = 2; if(life_atmcash < _price) then {_pay = 0;};} else {_pay = 1;};
						if(_pay == 0) exitWith {hint"Sie besitzen nicht genug Bargeld, oder ihr Konto ist nicht ausreichend gedeckt.";player setVariable["lack",false,true];};
						if(_pay == 1) then {life_cash = life_cash - _price;_paytext = "in Bar gezahlt.";};
						if(_pay == 2) then {life_atmcash = life_atmcash - _price;_paytext = "ueberwiesen.";};

						disableSerialization;

								("11" call BIS_fnc_rscLayer) cutRsc ["WAF_cutrsc_display_1","PLAIN"];

							_ui = uiNameSpace getVariable "WAF_cutrsc_display_1","PLAIN";
							_line1 = _ui displayCtrl 191000;
							_line2 = _ui displayCtrl 191001;
							_line1 ctrlSetText format["Sie haben den Betrag: %1$ %2", _price, _paytext];
							_line2 ctrlSetText "Der Lackiervorgang startet in 10 Sekunden...";
							sleep 10;
							
								("11" call BIS_fnc_rscLayer) cutText ["","PLAIN"];


						_vehicleName = "";
						_ul = "";

						hint"Bitte starten sie nicht den Motor, der Lackier-Einbauvorgang wird sonst abgebrochen. Der Vorgang wird etwa 45 Sekunden dauern.";
						_posi = position _vehicle;
						[["SmokeShell",_posi,0,"NONE",player] ,"life_fnc_createvehicle",false,false] spawn life_fnc_MP;
						waituntil {!isnil "nok_createvehicle"};
						_smoke1 = nok_createvehicle;
						nok_createvehicle = nil;
						[["SmokeShell",_posi,0,"NONE",player] ,"life_fnc_createvehicle",false,false] spawn life_fnc_MP;
						waituntil {!isnil "nok_createvehicle"};
						_smoke2 = nok_createvehicle;
						nok_createvehicle = nil;

							switch (typeOf _vehicle) do
							{
								case "C_Offroad_01_F": {_vehicleName = "Offroad";_smoke1 attachTo [_vehicle, [0,2.1,-0.93]];_smoke2 attachTo [_vehicle, [0,-2.8,-0.89]];};
								case "C_Hatchback_01_F": {_vehicleName = "Limo";_smoke1 attachTo [_vehicle, [0,1.95,-0.5]];_smoke2 attachTo [_vehicle, [0,-2.45,-0.65]];};
								case "C_Hatchback_01_sport_F": {_vehicleName = "Sportlimo";_smoke1 attachTo [_vehicle, [0,1.95,-0.5]];_smoke2 attachTo [_vehicle, [0,-2.45,-0.65]];};
								case "C_SUV_01_F": {_vehicleName = "SUV";_smoke1 attachTo [_vehicle, [0,2,-0.9]];_smoke2 attachTo [_vehicle, [0,-2.85,-0.74]];};
								case "I_MRAP_03_F": {_vehicleName = "Strider";_smoke1 attachTo [_vehicle, [0,1.75,-0.6]];_smoke2 attachTo [_vehicle, [0,-2.75,-0.8]];};
								case "B_MRAP_01_F": {_vehicleName = "Hunter";_smoke1 attachTo [_vehicle, [0,1.2,-0.9]];_smoke2 attachTo [_vehicle, [0,-3.95,-1.1]];};
								case "O_MRAP_02_F": {_vehicleName = "Ifrit";_smoke1 attachTo [_vehicle, [0,1.5,-0.95]];_smoke2 attachTo [_vehicle, [0,-4.1,-0.95]];};
							};

						_i = 0;
						_e = 0;

							while{(alive _vehicle)} do
							{
								sleep 1;
								_i = _i + 1;
								if(_i == 20) then {hint"noch 25 Sekunden";}; if(_i == 25) then {hint"noch 20 Sekunden";};
								if(_i == 30) then {hint"noch 15 Sekunden";}; if(_i == 35) then {hint"noch 10 Sekunden";}; if(_i == 40) then {hint"noch 05 Sekunden";};
								if(_i == 41) then {hint"noch 04 Sekunden";}; if(_i == 42) then {hint"noch 03 Sekunden";}; if(_i == 43) then {hint"noch 02 Sekunden";};
								if(_i == 44) then {hint"noch 01 Sekunden";}; if((_i == 45) OR(_i >= 45)) exitWith {detach _smoke1;detach _smoke2;};
								if(isEngineOn _vehicle) exitWith {_e = 1;};
								if(!(alive player)) exitWith {_e = 1;};
							};

						if((_e == 1) OR (!(alive _vehicle))) exitWith {hint"Vorgang Abgebrochen";detach _smoke1;detach _smoke2;sleep 1;deletevehicle _smoke1;deletevehicle _smoke2; player setVariable["lack",false,true];};

						if(!(_tex == "")) then
						{
							if(_vehicle getVariable "lightsCop") then {_vehicle setVariable["lightsCop",false,true];};
							if(_vehicle getVariable "lightsMed") then {_vehicle setVariable["lightsMed",false,true];};
							if(_vehicle getVariable "lightsADAC") then {_vehicle setVariable["lightsADAC",false,true];};
							if(_vehicle getVariable "medicsiren") then {_vehicle setVariable["medicsiren",false,true];};
							if(_vehicle getVariable "siren") then {_vehicle setVariable["siren",false,true];};
							if(!isNil {_vehicle getVariable "lightsCop"}) then {_vehicle setVariable ["lightsCop",nil];};
							if(!isNil {_vehicle getVariable "lightsMed"}) then {_vehicle setVariable ["lightsMed",nil];};
							if(!isNil {_vehicle getVariable "lightsADAC"}) then {_vehicle setVariable ["lightsADAC",nil];};
							if(!isNil {_vehicle getVariable "medicsiren"}) then {_vehicle setVariable ["medicsiren",nil];};
							if(!isNil {_vehicle getVariable "siren"}) then {_vehicle setVariable ["siren",nil];};
						};
						
						if(_veh == "C_Offroad_01_F") then
						{
							if(((_textVC == "$10000 Grau") OR (_textVC == "$10000 Mattschwarz") OR (_textVC == "$10000 Schwarz")) && (!(_tex == ""))) then {_vehicle setObjectTextureGlobal[0, _tex];_vehicle setObjectTextureGlobal[1,"textures\vehicles\civ\race_offroad_black.paa"];} else {if(!(_tex == "")) then {_vehicle setObjectTextureGlobal[0, _tex];_vehicle setObjectTextureGlobal[1, _tex];};};
							if((_vehicle animationPhase "HideServices") == 0) then {_vehicle animate ["HideServices", 1];};
							if((_vehicle animationPhase "HidePolice") == 0) then {_vehicle animate ["HidePolice", 1];};
							if((_vehicle animationPhase "HideDoor3") == 1) then {_vehicle animate ["HideDoor3", 0];};
							if((_vehicle animationPhase "HideBumper2") == 0) then {_vehicle animate ["HideBumper2", 1];};
							if((_vehicle animationPhase "HideBumper1") == 0) then {_vehicle animate ["HideBumper1", 1];};
							if((_vehicle animationPhase "HideConstruction") == 0) then {_vehicle animate ["HideConstruction", 1];};
							if((_vehicle animationPhase "HideGlass2") == 0) then {_vehicle animate ["HideGlass2", 1];};
							if(_einb == 1) then {_vehicle animate ["HideConstruction", 0];};
							if(_einb == 2) then {_vehicle animate ["HideBumper1", 0];};
							if(_einb == 3) then {_vehicle animate ["HideBumper2", 0];};
							if(_einb == 4) then {_vehicle animate ["HideConstruction", 0];sleep 0.1;_vehicle animate ["HideBumper1", 0];};
							if(_einb == 5) then {_vehicle animate ["HideConstruction", 0];sleep 0.1;_vehicle animate ["HideBumper2", 0];};
						}
						else
						{
							if(!(_tex == "")) then
							{
								_vehicle setObjectTextureGlobal[0, _tex];
								if((_veh == "I_MRAP_03_F") OR (_veh == "O_MRAP_02_F")) then {_vehicle setObjectTextureGlobal[1, _tex2];};
								if((_textVC == "$200000 Schwarz-Weiss-Flammen") && (_veh == "C_SUV_01_F")) then
								{
									[[_vehicle,1],"life_fnc_attachObj",true,false] call life_fnc_MP;
								};
							};
						};

						if(_textVC == "") then {_color = "Orginal";_priceVC = 0;};

						if(!(_textULC == "keine Unterbodenbeleuchtung")) then
						{	
							if(_textULC == "$5000 Rot") then {_ul = "Rot";_priceULC = 5000;_vehicle setVariable["redULC",true,true];_vehicle setVariable["greenULC",false,true];_vehicle setVariable["blueULC",false,true];_vehicle setVariable["groundlights",false,true];_vehicle setVariable["glON",true,true];};
							if(_textULC == "$5000 Gruen") then {_ul = "Gruen";_priceULC = 5000;_vehicle setVariable["redULC",false,true];_vehicle setVariable["greenULC",true,true];_vehicle setVariable["blueULC",false,true];_vehicle setVariable["groundlights",false,true];_vehicle setVariable["glON",true,true];};
							if(_textULC == "$5000 Blau") then {_ul = "Blau";_priceULC = 5000;_vehicle setVariable["redULC",false,true];_vehicle setVariable["greenULC",false,true];_vehicle setVariable["blueULC",true,true];_vehicle setVariable["groundlights",false,true];_vehicle setVariable["glON",true,true];};
							if(_textULC == "Unterbodenbeleuchtung ausbauen") then {_priceULC = 0;_vehicle setVariable["groundlights",true,true];_vehicle setVariable["glON",false,true];};
						}
						else
						{
							_priceULC = 0;
							_ul = "Orginal";
						};
						
						if(_textULC == "") then {_ul = "keine";_priceULC = 0;};
						if(!(_vehicle getVariable "glON")) then {_ul = "ausgebaut";};

					hint"Vorgang Abgeschlossen";
					sleep 1;
					disableSerialization;
					
				("12" call BIS_fnc_rscLayer) cutRsc ["WAF_cutrsc_display_1","PLAIN"];

			_ui = uiNameSpace getVariable "WAF_cutrsc_display_1","PLAIN";
			_line1 = _ui displayCtrl 191000;
			_line2 = _ui displayCtrl 191001;
			_line1 ctrlSetText format["%1 Lackierung war erfolgreich.", _vehicleName];
			_line2 ctrlSetText format["Farbe: %1  UBLicht: %2", _color, _ul];
			sleep 25;

				("12" call BIS_fnc_rscLayer) cutText ["","PLAIN"];
		}
		else
		{
			hint"Sie muessen erst den Motor abstellen";
		};
	}
	else
	{
		hint"Sie befinden sich nicht in einer Lackierwerkstatt";
	};
	
player setVariable["lack",false,true];