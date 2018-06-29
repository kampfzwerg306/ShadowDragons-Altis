class Life_key_management {
	idd = 2700;
	name= "life_key_chain";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_keyMenu;";
	
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
			idc = -1;
			text = "$STR_Keys_Title";
			x = 0.17;
			y = 0.22;
			w = 0.6;
			h = (1 / 25);
		};
		
		class KeyChainList : Life_RscListBox 
		{
			idc = 2701;
			text = "";
			sizeEx = 0.035;
			
			x = 0.17;
			y = 0.26;
			w = 0.66;
			h = 0.370;
		};

		class CloseButtonKey : Life_RscButtonInvisible {
		
			idc = -1;
			text = "";
			onButtonClick = "closeDialog 0;";
			tooltip = "Schlüssel-Modul schließen und zurück zum Hauptbildschirm";
			x = 0.48;
			y = 0.74;
			w = 0.06;
			h = 0.06;
		};
		
		class NearPlayers : Life_RscCombo {
		
			idc = 2702;
			x = 0.17;
			y = 0.64;
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class DropKey : life_RscButtonMenu {
			idc = -1;
			text = "$STR_Keys_DropKey";
			onButtonClick = "[] call life_fnc_keyDrop";
			
			x = 0.53;
			y = 0.69;
			w = 0.30;
			h = (1 / 25);
		};
		
		class GiveKey : Life_RscButtonMenu {
			idc = 2703;
			text = "$STR_Keys_GiveKey";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[] call life_fnc_keyGive";
			x = 0.17;
			y = 0.69;
			w = 0.23;
			h = (1 / 25);
		};
	};
};