/*
	File: fn_healHospital.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Doesn't matter, will be revised later.
*/
/*if(life_cash < 100) exitWith {hint format[localize "STR_NOTF_HS_NoCash",100];};
titleText[localize "STR_NOTF_HS_Healing","PLAIN"];
uiSleep 8;
if(player distance (_this select 0) > 5) exitWith {titleText[localize "STR_NOTF_HS_ToFar","PLAIN"]};
titleText[localize "STR_NOTF_HS_Healed","PLAIN"];
player setdamage 0;
life_cash = life_cash - 100;
*/

/*
	File: fn_healHospital.sqf
	Author: Bryan "Tonic" Boardwine
	Modified by Zaickz and cat24max
	Translated by cat24max
	
	Description:
	Doesn't matter, will be revised later.
*/

_mode = _this select 3;


switch (_mode) do 
{
	case "heilen":
					{
						if(life_cash < 50) exitWith {hint "Du hast keine $50 um geheilt zu werden."};
						titleText["Doktor House wird eine Diagnose stellen, einen kleinen Augenblick ","PLAIN"];
						uiSleep 2;
						titleText["Es ist kein Lupos!..","PLAIN"];
						player setDamage 0.5;
						uiSleep 5;
						titleText["Steroide helfen nicht, Ihre Nieren versagen, Sie bluten aus aus allen Öffnungen, Sie werden Sterben ..","PLAIN"];
						uiSleep 2;
						player setDamage 0.8;
						titleText["Sie haben einen Bandwum der sich in die Bauchdecke einfressen hat, ich kann sie Heilen ..","PLAIN"];
						if(player distance (_this select 0) > 5) exitWith {titleText["Sie müssen in einem Radius von 5 Metern bleiben, damit der Doktor Sie behandeln kann.","PLAIN"]};
						titleText["Sie sind nun völlig gesund!","PLAIN"];
						player setdamage 0;
						life_cash = life_cash - 50;
						player setVariable["life_is_bleeding",false,false];
						player setVariable["life_is_stabelized",false,false];



					};
	case "checken":
					{
						 if(life_checked == 1) exitWith { hint "Sie wurden bereits durchgecheckt, und sollten sich behandeln lassen"; };
						 if(life_sex_ill == 0) then
						 {
							 hint format["Diagnose: \n\n Name: %1 \n\n Krankheit: keinen Hypochonder?",name player];
							 life_checked = 0;
						 };
						 if(life_sex_ill == 1) then
						 {
							 hint format["Diagnose: \n\n Name: %1 \n\n Krankheit: Tripper \n\n Sie solten sich bei mir behandeln lassen!",name player];
							 life_checked = 1;
						 };
						 if(life_sex_ill == 2) then
						 {
							hint format["Diagnose: \n\n Name: %1 \n\n Krankheit: Herpes \n\n Sie solten sich bei mir behandeln lassen!",name player];
							life_checked = 1;
						 };
					 };
	case "behandeln":
					 {
						if(life_checked == 0) exitWith { hint "Wie soll ich Sie behandeln, wenn ich nicht mal weiß was Sie haben?! Also lassen Sie sich durchchecken"; };
						if(life_sex_ill == 1) then
						{
							if(life_cash<1000) exitWith { hint "Sie haben eine Geschlechtskrankheit, haben nur nicht genug Geld um sich behandeln zu lassen!";};
							titleText["Sie haben einen Tripper. Ich werde Sie nun heilen. \n Das kann bis zu 20 Sekunden dauern.","PLAIN"];
							sleep 20;
							titleText["Hier eine Spritze, da was Abschnibbeln, Verbinden und Sie sind nun geheilt! Hier nehmen sie ein paar Kondome mit!!","PLAIN"];
							life_cash = life_cash - 1000;
							player setDamage 0;
							life_sex_ill = 0;
							life_checked = 0;
						};
						if(life_sex_ill == 2) then
						{
							if(life_cash<1000) exitWith { hint "Sie haben eine Geschlechtskrankheit, haben nur nicht genug Geld um sich behandeln zu lassen!";};
							titleText["Sie haben Genital Herpes. Ich werde Sie nun heilen. \n Das kann bis zu 20 Sekunden dauern.","PLAIN"];
							sleep 45;
							titleText["Hier eine Salbe und Du bist im nu wieder Fit! Nehmen Sie sich bitte ein Paar Kondome!","PLAIN"];
							life_cash = life_cash - 10000;
							player setDamage 0;
							life_sex_ill = 0;
							life_checked = 0;
						};
					 };
};