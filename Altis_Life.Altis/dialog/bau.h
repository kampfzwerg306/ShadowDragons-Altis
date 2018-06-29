#define BGX 0.35
#define BGY 0.2
#define BGW 0.6

class Bau
{
	idd = 37400;
	movingEnabled = false;
	enableSimulation = true;
	onLoad = "[] spawn nok_fnc_adacbaucfg;";
	
	class controlsBackground
	{
		class RscTitleBackground:life_RscText 
		{
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = BGX;
			y = BGY;
			w = BGW;
			h = (1 / 25);
		};
		
		class MainBackground : life_RscText
		{
			idc = -1;
			colorBackground[] = {0,0,0,0.7};
			x = BGX;
			y = BGY + (11 / 250);
			w = BGW;
			h = 0.6 - (22 / 250);
		};
		
		class Title : life_RscTitle
		{
			colorBackground[] = {0,0,0,0};
			idc = 37401;
			text = "Baumenue";
			x = BGX;
			y = BGY;
			w = BGW;
			h = (1 / 25);
		};
	};
	
	class controls
	{
		class ButtonClose : life_RscButtonMenu 
		{
			idc = -1;
			//shortcuts[] = {0x00050000 + 2};
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = BGX;
			y = 0.8 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		class Buttondelall : life_RscButtonMenu 
		{
			idc = -1;
			//shortcuts[] = {0x00050000 + 2};
			text = "Alle Abbauen";
			onButtonClick = "closeDialog 0; [] call nok_fnc_dela;";
			x = BGX + 0.39;
			y = 0.8 - (1 / 25);
			w = (8.25 / 40);
			h = (1 / 25);
		};
		class Buttondele : life_RscButtonMenu 
		{
			idc = -1;
			//shortcuts[] = {0x00050000 + 2};
			text = "Einzelabbau";
			onButtonClick = "closeDialog 0; [] spawn nok_fnc_del;";
			x = BGX + 0.17;
			y = 0.8 - (1 / 25);
			w = (8.25 / 40);
			h = (1 / 25);
		};
		class adacliste : Life_RscListBox 
		{
			idc = 37451;
			text = "";
			sizeEx = 0.035;
			//colorBackground[] = {0,0,0,0};
			onLBSelChanged = "[_this] spawn nok_fnc_bau;";
			x = BGX + 0.03;
			y = BGY + 0.07;
			w = 0.4;
			h = 0.45;
		};
	};
};