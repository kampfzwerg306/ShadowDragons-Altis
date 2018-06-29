/*
	File: fn_dialog_txt_lackierwerkstatt.sqf
	Author: [WAF]Bricktop alias BLG

	Description:
	init txt-data to dialog in fn_lackierwerkstatt.sqs.
*/

private["_vehicle","_veh"];

_vehicle = cursorTarget;
_veh = typeOf _vehicle;

lbClear 81500;
lbClear 81501;
lbClear 81502;

	switch (_veh) do
	{
		case "C_Offroad_01_F" :
		{
			{lbAdd[81500,_x]} forEach [ "nicht Lackieren","$5000 Rot","$5000 Ocker","$5000 Weiss","$5000 Blau","$5000 Weinrot","$5000 Blau-Weiss","$10000 Grau","$10000 Mattschwarz","$10000 Schwarz","$15000 Tiefschwarz","$20000 Taxi" ];
			{lbAdd[81502,_x]} forEach [ "Keine","$5000 Ueberrollbuegel","$5000 Bullenfaenger","$5000 Bullenfaenger-Winde","$10000 Ueberrollbuegel + Bullenfaenger","$10000 Ueberrollbuegel + Bullenfaenger-Winde"];
		};
		case "C_Hatchback_01_F":
		{
			{lbAdd[81500,_x]} forEach [ "nicht Lackieren","$5000 Beige","$5000 Gruen","$5000 Blau","$5000 Dunkelblau","$5000 Gelb","$5000 Hellgrau","$5000 Dunkelgrau","$5000 Schwarz",
										"$5000 Rot","$5000 Schwarz-Blau","$5000 Schwarz-Orange","$5000 Weiss-Grau","$5000 Schwarz-Grau","$5000 Schwarz-Gruen","$95000 Werbetraeger" ];
			lbAdd[81502,"Keine"];
		};
		case "C_Hatchback_01_sport_F":
		{
			{lbAdd[81500,_x]} forEach [ "nicht Lackieren","$5000 Beige","$5000 Gruen","$5000 Blau","$5000 Dunkelblau","$5000 Gelb","$5000 Hellgrau","$5000 Dunkelgrau","$5000 Schwarz",
										"$5000 Rot","$5000 Schwarz-Blau","$5000 Schwarz-Orange","$5000 Weiss-Grau","$5000 Schwarz-Grau","$5000 Schwarz-Gruen","$150000 Raucher-Gruen","$200000 WAF-Limo" ];
			lbAdd[81502,"Keine"];
		};
		case "C_SUV_01_F":
		{
			{lbAdd[81500,_x]} forEach [ "nicht Lackieren","$5000 Weinrot","$5000 Schwarz","$5000 Silber","$5000 Schwarz-Orange","$50000 Taxi","$50000 Pink-Lila","$180000 Teufelsrot",
										"$180000 Radioaktiv","$200000 Schwarz-Flammen","$200000 Schwarz-Weiss-Flammen" ];
			lbAdd[81502,"Keine"];
		};
		case "I_MRAP_03_F" :
		{
			{lbAdd[81500,_x]} forEach [ "nicht Lackieren","$25000 Tarnfarbig" ];
			lbAdd[81502,"Keine"];
		};
		case "B_MRAP_01_F" :
		{
			{lbAdd[81500,_x]} forEach [ "nicht Lackieren","$25000 Tarnfarbig" ];
			lbAdd[81502,"Keine"];
		};
		case "O_MRAP_02_F" :
		{
			{lbAdd[81500,_x]} forEach [ "nicht Lackieren","$25000 Tarnfarbig" ];
			lbAdd[81502,"Keine"];
		};
	};
	
	{lbAdd[81501,_x]} forEach [ "keine Unterbodenbeleuchtung","$5000 Rot","$5000 Gruen","$5000 Blau","Unterbodenleuchten ausbauen" ];
	
//	{lbAdd[81503,_x]} forEach [ "Permanent","Mieten" ];
	
	lbSetColor [81503, 0, [1,1, 1, 0.35]];

	ctrlSetText [81200, "textures\pics\waf.jpg"];
