#include "player_sys.sqf"

class Life_inventory_menu {

	idd = playersys_DIALOG;
	name= "life_inventory_menu";
	movingEnable = true;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_shadowos_inventory";
	
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
		
		class Title : life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			//text = "$STR_PM_Title";
			x = 0.20;
			y = 0.62;
			w = 0.08;
			h = 0.11;
		};
		
		class PlayersName : Title {
			idc = carry_weight;
			style = 1;
			text = "";
			x = 0.57;
			y = 0.62;
			w = 0.10;
			h = 0.11;
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
		
		class itemList : life_RscListBox 
		{
			idc = item_list;
			sizeEx = 0.030;
			
			x = 0.17;
			y = 0.22;
			w = 0.35;
			h = 0.51;
		};
		
		class itemEdit : Life_RscEdit {
		
			idc = item_edit;
			
			text = "1";
			sizeEx = 0.030;
			x = 0.53;
			y = 0.22;
			w = 0.30;
			h = 0.04;
		
		};
		class iNearPlayers : Life_RscCombo
		{
			idc = 2023;
			x = 0.53;
			y = 0.27;
			w = 0.30;
			h = 0.04;
		};
		
		class DropButton : life_RscButtonMenu {
			
			idc = 2002;
			text = "$STR_Global_Give";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[] call life_fnc_giveItem;";
			
			x = 0.53;
			y = 0.32;
			w = 0.30;
			h = (1 / 25);
			
		};
		
		class UseButton : life_RscButtonMenu {
			
			text = "$STR_Global_Use";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[] call life_fnc_useItem;";
			
			x = 0.53;
			y = 0.37;
			w = 0.30;
			h = (1 / 25);
			
		};
		
		class RemoveButton : life_RscButtonMenu {
			
			text = "$STR_Global_Remove";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[] call life_fnc_removeItem;";
			
			x = 0.53;
			y = 0.42;
			w = 0.30;
			h = (1 / 25);
			
		};
		
		class ButtonClose : Life_RscButtonInvisible {
			idc = -1;
			shortcuts[] = {0x00050000 + 2};
			text = "";
			onButtonClick = "closeDialog 0;";
			tooltip = "Inventar-Modul schließen und zurück zum Hauptbildschirm";
			x = 0.48;
			y = 0.74;
			w = 0.06;
			h = 0.06;
		};
	};
};