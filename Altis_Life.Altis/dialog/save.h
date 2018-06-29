class saveHUD
{
	name="saveHUD";
	idd=-1;
	movingEnable=0;
  	fadein=0;
	duration = 9999999999999;
  	fadeout=0;
	
	class controlsBackground 
	{
		class saveHIcon : life_RscPicture 
		{
		
			idc = -1;
			text = "icons\SafeZone.paa";
			x = safeZoneX+safeZoneW-0.115; y = safeZoneY+safeZoneH-0.3;
			w = 0.1; h = 0.1;
		};
	};


};