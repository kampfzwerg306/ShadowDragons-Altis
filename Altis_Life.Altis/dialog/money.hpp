#include "player_sys.sqf"

class Life_money_menu {
	idd = playersys_DIALOG;
	name= "life_money_menu";
	movingEnable = true;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_shadowos_money";
	
	class controlsBackground {
		
		class MainBackground:Life_RscPictureKeepAspect {
			idc = -1;
			text = "shadowos\shadowosphone.paa";		
			colorBackground[] = {0, 0, 0, 0};
			x = 0;
			y = 0;
			w = 1;
			h = 1;
		};
		
	};
	
	class controls {

		class TextTime : Life_RscStructuredText
		{
			idc = 90035;
			text = "";
			colorBackground[] = {0, 0, 0, 0};
			colorText[] = {1, 1, 1, 0.75};
			x = 0; y = 0.165;
			w = 1; h = 0.05;
		};
		
		class TextStatusLeft : Life_RscStructuredText
		{
			idc = 90036;
			text = "";
			colorBackground[] = {0, 0, 0, 0};
			colorText[] = {1, 1, 1, 0.75};
			x = 0.5 - (0.08 * 2) - 0.005; y = 0.165;
			w = 0.3; h = 0.05;
		};
		
		class TextStatusRight : Life_RscStructuredText
		{
			idc = 90037;
			text = "";
			colorBackground[] = {0, 0, 0, 0};
			colorText[] = {1, 1, 1, 0.75};
			x = 0.34; y = 0.165;
			w = 1 - (0.34 * 2) - 0.02; h = 0.05;
			class Attributes {
				align = "right";
			};
		};
		
		class moneyStatusInfo : Life_RscStructuredText
		{
			idc = 2015;
			sizeEx = 0.020;
			text = "";
			colorBackground[] = {0, 0, 0, 0};
			x = 0.17;
			y = 0.22;
			w = 1;
			h = 0.4;
		};
		
		class moneyEdit : Life_RscEdit 
		{
			idc = 2018;
			
			text = "1";
			sizeEx = 0.030;
			x = 0.17;
			y = 0.45;
			w = 0.30;
			h = 0.03;
		};
		
		class iNearPlayers : Life_RscCombo
		{
			idc = 2022;
			x = 0.17;
			y = 0.5;
			w = 0.30;
			h = 0.04;
		};
		
		class moneyDrop : Life_RscButtonMenu
		{
			idc = 2001;
			text = "Give";
			colorBackground[] = {0.5, 0, 0, 0.5};
			onButtonClick = "[] call life_fnc_giveMoney";
			x = 0.17;
			y = 0.55;
			w = 0.30;
			h = 0.04;
		};
		
		class ButtonClose : Life_RscButtonInvisible {
			idc = -1;
			shortcuts[] = {0x00050000 + 2};
			text = "";
			onButtonClick = "closeDialog 0;";
			tooltip = "Geld-Modul schließen und zurück zum Hauptbildschirm";
			x = 0.48;
			y = 0.74;
			w = 0.06;
			h = 0.05;
		};
	};
};