// Dialog for fn_jagdgebiet.sqs .. Made by [WAF]Bricktop alias BLG
class WAF_Jagdgebiet_Dialog
{
	idd=130045;
	movingenable=false;
	
	class controlsBackground
	{
		class WAF_Jagdgebiet_Background: Life_RscBackground
		{
			colorBackground[] = {0,0,0,0.7};
			idc = -1;
			x = 0.1 * safezoneW + safezoneX;
			y = 0.1 * safezoneH + safezoneY;
			w = 0.8 * safezoneW;
			h = 0.8 * safezoneH;
		};
		class WAF_Jagdgebiet_Fehler_Auswahl_Txt: Life_RscText
		{
			colorText[] = {1,0,0,1.0};
			idc = 180999;
			text = "";
			x = 0.65 * safezoneW + safezoneX;
			y = 0.12 * safezoneH + safezoneY;
			w = (20 / 40);
			h = (1 / 25);
		};
		class WAF_Jagdgebiet_Forstwirtschaft_Txt: Life_RscText
		{
			idc = 181000;
			text = "";
			x = 0.12 * safezoneW + safezoneX;
			y = 0.12 * safezoneH + safezoneY;
			w = (40 / 40);
			h = (1 / 25);
		};
		class WAF_Jagdgebiet_Schlange_Txt: Life_RscListBox
		{
			colorSelectBackground[] = {0.28,0.28,0.28,0.28};
			colorSelectBackground2[] = {0.28,0.28,0.28,0.28};
			idc = 181502;
			text = "";
			sizeEx = 0.0275;
			x = 0.29 * safezoneW + safezoneX;
			y = 0.17 * safezoneH + safezoneY;
			w = 0.465 * safezoneW;
			h = 0.1 * safezoneH;
		};
		class WAF_Jagdgebiet_Schlange_Bild: life_RscPicture
		{
			idc = -1;
			text = "textures\pics\schlange.jpg";
			x = 0.12 * safezoneW + safezoneX;
			y = 0.17 * safezoneH + safezoneY;
			w = 0.16 * safezoneW;
			h = 0.1 * safezoneH;
		};

		class WAF_Jagdgebiet_Huhn_Txt: Life_RscListBox
		{
			colorSelectBackground[] = {0.28,0.28,0.28,0.28};
			colorSelectBackground2[] = {0.28,0.28,0.28,0.28};
			idc = 181503;
			text = "";
			sizeEx = 0.0275;
			x = 0.29 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.465 * safezoneW;
			h = 0.1 * safezoneH;
		};
		class WAF_Jagdgebiet_Huhn_Bild: life_RscPicture
		{
			idc = -1;
			text = "textures\pics\huhn.jpg";
			x = 0.12 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.16 * safezoneW;
			h = 0.1 * safezoneH;
		};

		class WAF_Jagdgebiet_Ziege_Txt: Life_RscListBox
		{
			colorSelectBackground[] = {0.28,0.28,0.28,0.28};
			colorSelectBackground2[] = {0.28,0.28,0.28,0.28};
			idc = 181504;
			text = "";
			sizeEx = 0.0275;
			x = 0.29 * safezoneW + safezoneX;
			y = 0.39 * safezoneH + safezoneY;
			w = 0.465 * safezoneW;
			h = 0.1 * safezoneH;
		};
		class WAF_Jagdgebiet_Ziege_Bild: life_RscPicture
		{
			idc = -1;
			text = "textures\pics\ziege.jpg";
			x = 0.12 * safezoneW + safezoneX;
			y = 0.39 * safezoneH + safezoneY;
			w = 0.16 * safezoneW;
			h = 0.1 * safezoneH;
		};

		class WAF_Jagdgebiet_Schaf_Txt: Life_RscListBox
		{
			colorSelectBackground[] = {0.28,0.28,0.28,0.28};
			colorSelectBackground2[] = {0.28,0.28,0.28,0.28};
			idc = 181505;
			text = "";
			sizeEx = 0.0275;
			x = 0.29 * safezoneW + safezoneX;
			y = 0.50 * safezoneH + safezoneY;
			w = 0.465 * safezoneW;
			h = 0.1 * safezoneH;
		};
		class WAF_Jagdgebiet_Schaf_Bild: life_RscPicture
		{
			idc = -1;
			text = "textures\pics\schaf.jpg";
			x = 0.12 * safezoneW + safezoneX;
			y = 0.50 * safezoneH + safezoneY;
			w = 0.16 * safezoneW;
			h = 0.1 * safezoneH;
		};

		class WAF_Jagdgebiet_Hund_Txt: Life_RscListBox
		{
			colorBackground[] = {1,0,0,0.5};
			colorSelectBackground[] = {0.28,0.28,0.28,0.28};
			colorSelectBackground2[] = {0.28,0.28,0.28,0.28};
			idc = 181506;
			text = "";
			sizeEx = 0.0275;
			x = 0.29 * safezoneW + safezoneX;
			y = 0.61 * safezoneH + safezoneY;
			w = 0.465 * safezoneW;
			h = 0.1 * safezoneH;
		};
		class WAF_Jagdgebiet_Hund_Bild: life_RscPicture
		{
			idc = -1;
			text = "textures\pics\hund.jpg";
			x = 0.12 * safezoneW + safezoneX;
			y = 0.61 * safezoneH + safezoneY;
			w = 0.16 * safezoneW;
			h = 0.1 * safezoneH;
		};

		class WAF_Jagdgebiet_Bescreibung_Txt: Life_RscText
		{
			idc = -1;
			text = "Beschreibung/Regeln";
			x = 0.12 * safezoneW + safezoneX;
			y = 0.724 * safezoneH + safezoneY;
			w = (40 / 40);
			h = (1 / 25);
		};
		class WAF_Jagdgebiet_Bescreibungs_Text_Txt: Life_RscListBox
		{
			idc = 181500;
			text = "";
			sizeEx = 0.03;
			x = 0.12 * safezoneW + safezoneX;
			y = 0.769 * safezoneH + safezoneY;
			w = 0.635 * safezoneW;
			h = 0.1 * safezoneH;
		};

	};
	class controls 
	{
		class WAF_Jagdgebiet_EXIT_Btn: Life_RscButtonMenu
		{
			idc = -1;
			text = "verlassen";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			x = 0.798 * safezoneW + safezoneX;
			y = 0.86 * safezoneH + safezoneY;
			w = (6 / 40);
			h = (1 / 25);
			default = true;
			action = "closeDialog 0;";
		};
	};
};