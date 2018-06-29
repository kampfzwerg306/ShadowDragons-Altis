//Grid macros
#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.025)
#define GUI_GRID_H	(0.04)
#define GUI_GRID_WAbs	(1)
#define GUI_GRID_HAbs	(1)

class marketView
{
	idd = 39500;
	movingenable = true;
	enableSimulation = true;
	
	class controlsBackground
	{
	class MainBackground:Life_RscPictureKeepAspect {
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "shadowos\shadowosphone.paa";
			x = 0;
			y = 0;
			w = 1;
			h = 1;
		};
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.17;
			y = 0.22;
			w = 0.55;
			h = (1 / 25);
		};
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 1100;
			text = "Boersenmarkt"; 
			x = 0.17;
			y = 0.22;
			w = 0.55;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.8};
		};/*
		class IGUIBack_2200: IGUIBack
		{
			idc = 2200;
			x = 5 * GUI_GRID_W + GUI_GRID_X;
			y = 2 * GUI_GRID_H + GUI_GRID_Y;
			w = 40 * GUI_GRID_W;
			h = 21 * GUI_GRID_H;
		};*/
		class lblResourceName: RscText
		{
			idc = 1000;
			text = "Resource"; //--- ToDo: Localize;
			x = 0.455;
			y = 0.240;
			w = 25 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
			sizeEx = 2 * GUI_GRID_H;
		};
		class IGUIBack_2201: IGUIBack
		{
			idc = 2201;
			x = 0.455;
			y = 0.265;
			w = 0.375;
			h = 2.5 * GUI_GRID_H;
		};
		class lblResourcePrice: RscText
		{
			idc = 1001;
			text = "XXXXXXXXXXXXX$"; //--- ToDo: Localize;
			x = 0.455;
			y = 0.285;
			w = 0.375;
			h = 2.5 * GUI_GRID_H;
			colorText[] = {0,1,0,1};
			sizeEx = 1.3 * GUI_GRID_H;
		};
		class IGUIBack_2202: IGUIBack
		{
			idc = 2202;
			x = 0.455;
			y = 0.415;
			w = 0.375;
			h = 0.25;
		};
		class RscStructuredText_1101: RscStructuredText
		{
			idc = 1101;
			text = "Entwicklung"; //--- ToDo: Localize;
			x = 0.455;
			y = 0.37;
			w = 0.375;
			h = 0.04;
			colorBackground[] = {0,0,0,0.8};
		};
		class picTrendGlobal: RscPicture
		{
			idc = 1200;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.455;
			y = 0.415;
			w = 3 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
		};
		class picTrendLocal: RscPicture
		{
			idc = 1201;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.455;
			y = 0.535;
			w = 3 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "Seit Serverstart"; //--- ToDo: Localize;
			x = 0.527;
			y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			sizeEx = 1.2 * GUI_GRID_H;
		};
		class RscText_1003: RscText
		{
			idc = 1003;
			text = "Vor kurzem"; //--- ToDo: Localize;
			x = 0.527;
			y = 13.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			sizeEx = 1.2 * GUI_GRID_H;
		};
		class lblTrendGlobal: RscText
		{
			idc = 1004;
			text = "xxxxxxxx$"; //--- ToDo: Localize;
			x = 0.527;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class lblTrendLocal: RscText
		{
			idc = 1005;
			text = "xxxxxxxx$"; //--- ToDo: Localize;
			x = 0.527;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
	};
	
	class controls
	{
		class CloseLoadMenu : Life_RscButtonInvisible {
			idc = -1;
			text = "";
			onButtonClick = "closeDialog 0;[] call life_fnc_p_updateMenu";
			tooltip = "Börsen-Modul schließen und zurück zum Hauptbildschirm";
			x = 0.48;
			y = 0.74;
			w = 0.06;
			h = 0.06;
		};
		class listResources: RscListbox
		{
			sizeEx = 0.036;
			idc = 1500;
			x = 0.175;
			y = 0.265;
			w = 11.0 * GUI_GRID_W;
			h = 0.45;
			onLBSelChanged = "[] spawn life_fnc_refreshMarketView";
		};
	};
};

