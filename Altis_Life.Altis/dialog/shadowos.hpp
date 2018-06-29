class smartphone {

	idd = 90000;
	movingEnable = true;
	enableSimulation = true;
	
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
	
	class controls
	{
		
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
		
		class IconSyncData : Life_RscStructuredText {
			idc = 90010;
			x = 0.18;
			y = 0.62;
			w = 0.08;
			h = 0.11;
		};
		
		class IconMoney : Life_RscStructuredText {
			idc = 90015;
			x = 0.18;
			y = 0.23;
			w = 0.08;
			h = 0.11;
		};
		
		class IconMessage : Life_RscStructuredText {
			idc = 90020;
			x = 0.26;
			y = 0.23;// - 0.28;
			w = 0.08;
			h = 0.11;
		};
		class IconInventory : Life_RscStructuredText {
			idc = 90025;
			x = 0.18;
			y = 0.36;
			w = 0.08;
			h = 0.11;
		};
		class IconLizenzen : Life_RscStructuredText {
			idc = 90500;
			x = 0.26;
			y = 0.36;
			w = 0.08;
			h = 0.11;
		};
		class IconGang : Life_RscStructuredText {
			idc = 90501;
			x = 0.75;
			y = 0.36;
			w = 0.08;
			h = 0.11;
		};
		class IconEinstellungen : Life_RscStructuredText {
			idc = 90502;
			x = 0.75;
			y = 0.62;
			w = 0.08;
			h = 0.11;
		};
		class IconSchluesselbund : Life_RscStructuredText {
			idc = 90503;
			x = 0.67;
			y = 0.36;
			w = 0.08;
			h = 0.11;
		};
		class IconFahndung : Life_RscStructuredText {
			idc = 90504;
			x = 0.26;
			y = 0.62;
			w = 0.08;
			h = 0.11;
		};
		class Iconpreise: Life_RscStructuredText {
			idc = 90505;
			x = 0.67;
			y = 0.23;
			w = 0.08;
			h = 0.11;
		};
		class Iconmarkt : Life_RscStructuredText {
			idc = 90506;
			x = 0.75;
			y = 0.23;
			w = 0.08;
			h = 0.11;
		};
		class Iconadmin : Life_RscStructuredText {
			idc = 90507;
			x = 0.67;
			y = 0.62;
			w = 0.08;
			h = 0.11;
		};
		class IconCraften : Life_RscStructuredText {
			idc = 90508;
			x = 0.34;
			y = 0.23;
			w = 0.08;
			h = 0.11;
		};
		/*
		class IconNine : Life_RscStructuredText {
			idc = 90508;
			x = 0.5 - (0.08 * 2);
			y = 0.49;
			w = 0.08;
			h = 0.11;
		};*/
		
		class ButtonClose : Life_RscButtonInvisible {
			idc = -1;
			shortcuts[] = {0x00050000 + 2};
			text = "";
			onButtonClick = "closeDialog 0;";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			tooltip = "Shadow OS 1.0 ausschalten";
			x = 0.48;
			y = 0.74;
			w = 0.06;
			h = 0.06;
		};
		
		class ButtonCell : Life_RscButtonInvisible {
			idc = 90040;
			text = "";
			onButtonClick = "createDialog ""Life_my_smartphone"";";
			tooltip = "Nachrichten verschicken";
			x = 0.35 - (0.08 * 1);
			y = 0.23;// - 0.28;
			w = 0.08;
			h = 0.11;
		};

		class ButtonSync : Life_RscButtonInvisible {
			idc = 90045;
			text = "";
			onButtonClick = "[] call SOCK_fnc_syncData;";
			tooltip = "Charakterinformationen an den Server schicken";
			x = 0.35 - (0.08 * 2);
			y = 0.9 - 0.28;
			w = 0.08;
			h = 0.11;
		};
		
		class ButtonMoney : Life_RscButtonInvisible {
			idc = 90045;
			text = "";
			onButtonClick = "createDialog ""life_money_menu""";
			tooltip = "Verwalte deine Finanzen";
			x = 0.18;
			y = 0.23;
			w = 0.08;
			h = 0.11;
		};
		class ButtonInventory : Life_RscButtonInvisible {
			idc = 90050;
			text = "";
			onButtonClick = "createDialog ""life_inventory_menu""";
			tooltip = "Übersicht und Verwaltung deines Inventars";
			x = 0.18;
			y = 0.36;
			w = 0.08;
			h = 0.11;
		};
		class ButtonLiz : Life_RscButtonInvisible {
			idc = 90600;
			text = "";
			onButtonClick = "createDialog ""life_license_menu"";";
			tooltip = "Übersicht deiner Lizenzen";
			x = 0.26;
			y = 0.36;
			w = 0.08;
			h = 0.11;
		};
		class ButtonGang : Life_RscButtonInvisible {
			idc = 90601;
			text = "";
			onButtonClick = "if(isNil ""life_action_gangInUse"") then {if(isNil {(group player) getVariable ""gang_owner""}) then {createDialog ""Life_Create_Gang_Diag"";} else {[] spawn life_fnc_gangMenu;};};";
			tooltip = "Übersicht und Verwaltung deiner Gang";
			x = 0.75;
			y = 0.36;
			w = 0.11;
			h = 0.11;
		};
		class ButtonOpt : Life_RscButtonInvisible {
			idc = 90602;
			text = "";
			onButtonClick = "[] call life_fnc_settingsMenu;";
			tooltip = "Spieleinstellungen";
			x = 0.75;
			y = 0.62;
			w = 0.08;
			h = 0.11;
		};
		
		class ButtonKey : Life_RscButtonInvisible {
			idc = 90603;
			text = "";
			onButtonClick = "createDialog ""Life_key_management"";";
			tooltip = "Dein momentaner Schlüsselbund";
			x = 0.67;
			y = 0.36;
			w = 0.08;
			h = 0.11;
		};
		/*
		class ButtonFive : Life_RscButtonInvisible {
			idc = 90604;
			text = "AUS";
			onButtonClick = "";
			tooltip = "inaktiver button";
			x = 0.5 - (0.08 * 2);
			y = 0.36;
			w = 0.08;
			h = 0.11;
		};*/
		
		class ButtonFahn : Life_RscButtonInvisible {
			idc = 90605;
			text = "";
			onButtonClick = "[] call life_fnc_wantedMenu";
			tooltip = "Fahndungsliste aufrufen";
			x = 0.26;
			y = 0.62;
			w = 0.08;
			h = 0.11;
		};
		class ButtonPreis : Life_RscButtonInvisible {
			idc = 90606;
			text = "";
			onButtonClick = "[] call life_fnc_economymenu";
			tooltip = "Hier könnt ihr euch Preise zu zahlreichen Dingen ansehen";
			x = 0.67;
			y = 0.23;
			w = 0.08;
			h = 0.11;
		};
		
		class ButtonBoerse : Life_RscButtonInvisible {
			idc = 90607;
			text = "";
			onButtonClick = "[] call life_fnc_openMarketView;";
			tooltip = "Ruft die Börse auf um den momentanen Preis für Rohstoffe anzuzeigen";
			x = 0.75;
			y = 0.23;
			w = 0.08;
			h = 0.11;
		};

		class ButtonAdmin : Life_RscButtonInvisible {
			idc = 90608;
			text = "";
			onButtonClick = "createDialog ""life_admin_menu"";";
			tooltip = "Tja schwere Frage...was wird hier wohl passieren....";
			x = 0.67;
			y = 0.62;
			w = 0.08;
			h = 0.11;
		};
		
		class ButtonCraft : Life_RscButtonInvisible {
			idc = 90609;
			text = "";
			onButtonClick = "createDialog ""Life_craft"";";
			tooltip = "Hier könnt ihr Items Craften";
			x = 0.34;
			y = 0.23;
			w = 0.08;
			h = 0.11;
		};
		
	};
};