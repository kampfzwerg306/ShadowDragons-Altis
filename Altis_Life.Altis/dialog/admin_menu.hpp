class life_admin_menu {
	idd = 2900;
	name= "life_admin_menu";
	movingenable = true;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_adminMenu;";
	
	class controlsBackground {
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
			w = 0.66;
			h = (1 / 25);
		};
	};
	
	class controls {

		
		class Title : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 2901;
			text = "$STR_Admin_Title";
			x = 0.17;
			y = 0.22;
			w = 0.6;
			h = (1 / 25);
		};
		
		class PlayerList_Admin : Life_RscListBox 
		{
			idc = 2902;
			text = "";
			sizeEx = 0.035;
			//colorBackground[] = {0,0,0,0};
			onLBSelChanged = "[_this] spawn life_fnc_adminQuery";
			
			x = 0.175;
			y = 0.27;
			w = 0.30; h = 0.4;
		};
		
		class PlayerBInfo : Life_RscStructuredText
		{
			idc = 2903;
			text = "";
			x = 0.50;
			y = 0.25;
			w = 0.35;
			h = 0.6;
		};

		class CloseLoadMenu : Life_RscButtonInvisible {
			idc = -1;
			text = "";
			onButtonClick = "closeDialog 0;[] call life_fnc_p_updateMenu";
			tooltip = "Admin-Modul schließen und zurück zum Hauptbildschirm";
			x = 0.48;
			y = 0.74;
			w = 0.06;
			h = 0.06;
		};
		
		class AdminID : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Admin_GetID";
			onButtonClick = "[] call life_fnc_admingetID;";
			x = 0.17;
			y = 0.688;
			w = (6.25 / 40);
			h = (1 / 25);
		};
		class TeleportToHim : Life_RscButtonMenu {
			idc = 2030;
			text = "TP zu ihm";
			onButtonClick = "[] call life_fnc_admintp;";
			x = 0.33;
			y = 0.688;
			w = (6.25 / 40);
			h = (1 / 25);
		};

		class MapTeleport : Life_RscButtonMenu {
			idc = 2070;
			text = "TP via Map";
			onButtonClick = "[] spawn life_fnc_admintpmap;closeDialog 0;";
			x = 0.65;
			y = 0.688;
			w = (6.25 / 40);
			h = (1 / 25);
		};

		class TeleportToMe : Life_RscButtonMenu {
			idc = 2060;
			text = "TP zu mir";
			onButtonClick = "[] spawn life_fnc_admintptome;";
			x = 0.49;
			y = 0.688;
			w = (6.25 / 40);
			h = (1 / 25);
		};
	};
};