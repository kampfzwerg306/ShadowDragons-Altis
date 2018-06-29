private["_array", "_player", "_hackType", "_hackValue"];

	// diag_log "ANTI-HACK 0.6.7 starting...";
	if (isServer) exitWith {};
    if ((getPlayerUID player) in ["76561197967160502"]) exitWith {};
	{
		if (loadFile _x != "") then 
		{
			// diag_log "ANTI-HACK 0.6.7: hacker?!";

			waitUntil {time > 0.1};

			cheatFlag = [player, "hack menu", _x];
			publicVariableServer "cheatFlag";

			endMission "LOSER";

			for "_i" from 0 to 99 do
			{
				(findDisplay _i) closeDisplay 0;
			};
		};
	} forEach ["used for hacking", "wuat\screen.sqf", "scripts\defaultmenu.sqf", "menu\initmenu.sqf", "scripts\exec.sqf", "menu\exec.sqf", "wuat\exec.sqf", "crinkly\keymenu.sqf", "scripts\ajmenu.sqf", "startup.sqf", "wookie_wuat\startup.sqf", "@DevCon\DevCon.pbo", "addons\@DevCon\DevCon.pbo", "DevCon.pbo", "ShadowyFaze\exec.sqf", "jestersMENU\exec.sqf", "vet@folder\vet@start.sqf", "LystoArma3\start.sqf", "scr\start.sqf", "Wookie_Beta\start.sqf", "used for hacking", "wuat\screen.sqf", "@DevCon\DevCon.pbo", "scripts\startup.sqf", "menu\exec.sqf", "scripts\exec.sqf", "scripts\fazeddays.sqf", "@ExtData\addons\loki_lost_key.pbo", "vet@folder\vet@start.sqf", "DevCon.pbo", "addons\@DevCon\DevCon.pbo", "WookieMenuV5.sqf", "menu\initmenu.sqf", "scripts\WookieMenuFinal.sqf", "addons\@ExtData\loki_lost_key.pbo", "LystoArma3\start.sqf", "fazeddays.sqf", "@ExtData\addons\loki_lost_key_models.pbo", "ShadowyFaze\exec.sqf", "WookieMenuFinal.sqf", "wuat\exec.sqf", "crinkly\keymenu.sqf", "scripts\ajmenu.sqf", "Wookie_Beta\start.sqf", "jestersMENU\exec.sqf", "scripts\WookieMenuV5.sqf", "addons\@ExtData\loki_lost_key_models.pbo", "scripts\WookieMenu.sqf", "scr\start.sqf", "startup.sqf", "WookieMenu.sqf", "wookie_wuat\startup.sqf", "scripts\defaultmenu.sqf", "used for hacking", "@DevCon\DevCon.pbo", "@ExtData\addons\loki_lost_key.pbo", "@ExtData\addons\loki_lost_key_models.pbo", "@ExtData\loki_lost_key.pbo", "@ExtData\loki_lost_key_models.pbo", "addons\@DevCon\DevCon.pbo", "addons\@ExtData\addons\loki_lost_key.pbo", "addons\@ExtData\addons\loki_lost_key_models.pbo", "addons\@ExtData\loki_lost_key.pbo", "addons\@ExtData\loki_lost_key_models.pbo", "crinkly\keymenu.sqf", "DevCon.pbo", "fazeddays.sqf", "jestersMENU\exec.sqf", "LystoArma3\start.sqf", "menu\exec.sqf", "menu\initmenu.sqf", "scripts\ajmenu.sqf", "scripts\defaultmenu.sqf", "scripts\exec.sqf", "scr\start.sqf", "ShadowyFaze\exec.sqf", "startup.sqf", "vet@folder\vet@start.sqf", "WookieMenu.sqf", "Wookie_Beta\start.sqf", "wookie_wuat\startup.sqf", "wuat\exec.sqf", "wuat\screen.sqf", "WookieMenuFinal.sqf", "Magnon\WookieMenuFinal.sqf", "A\WookieMenuFinal.sqf", "b\WookieMenuFinal.sqf", "c\WookieMenuFinal.sqf", "abc\WookieMenuFinal.sqf", "Magnon\WookieMenuFinal.sqf", "Lystic.sqf", "fun.sqf", "swastika.sqf", "jestersMENU\jester@start.sqf", "jester.sqf", "WookieMenuV5.sqf", "Wookie.sqf", "1.sqf", "2.sqf", "123.sqf"];

	// diag_log "ANTI-HACK 0.6.7: Starting loops!";

	[] spawn
	{
		// diag_log "ANTI-HACK 0.6.7: Detection of hack variables started!";

		while { true } do
		{
			private "_continueLoop";
			_continueLoop = true;

			{
				if !(isNil _x) exitWith 
				{
					// diag_log "ANTI-HACK 0.6.7: Found a hack variable!";

					waitUntil {time > 0.1};

					cheatFlag = [player, "hacked variable", _x];
					publicVariableServer "cheatFlag";

					endMission "LOSER";

					for "_i" from 0 to 99 do
					{
						(findDisplay _i) closeDisplay 0;
					};

					_continueLoop = false;
				};
			} forEach ["abcd", "abcdefGEH", "abox1", "activeITEMlist", "activeITEMlistanzahl", "addgun", "aesp", "aheaven", "antiantiantiantih4x", "AntiAntiAntiAntiHax", "anticrash", "antiloop", "ARGT_JUMP", "atext", "battleHIGH_vehpub", "BG_Pos_Orig", "BG_Scale_Orig", "bodyguardz", "boost", "bowen", "bowonky", "bulletz", "byebyezombies", "c0l0r", "c0lorthem", "cargod", "changebackpack", "changestats", "ChangingBullets_xx", "cr3d", "ctrl_onKeyDown", "dayzRespawn2", "dayzRespawn3", "dayzSetDate", "dayzSetFix", "DAYZ_CA1_Lollipops", "dayz_godmode", "debugConsoleIndex", "debugz", "debug_simple", "debug_star_colorful", "delaymenu", "desyncserver", "DEV_ConsoleOpen", "dontAddToTheArray", "drawic", "dwarden", "enamearr", "ESP", "esp2", "ezp", "fazelist", "faze_fillHax", "faze_fillPlrs", "faze_fill_color", "faze_fill_morph", "faze_fill_Objects", "faze_fill_spawn_misc_menu", "faze_fill_Specific", "faze_fill_VehiclesZ", "faze_fill_Weapons", "faze_funcs_inited", "faze_getControl", "faze_hax_dbclick", "faze_initMenu", "fffffffffff", "firstrun", "footSpeedIndex", "footSpeedKeys", "fuckmegrandma", "g0d", "g0dmode", "gluemenu", "god", "godall", "godlol", "hacks", "Hack_Pos_Orig", "hangender", "HaxSmokeOn", "HDIR", "helibus", "helitakoff", "HMDIR", "hotkeymenu", "iBeFlying", "igodokxtt", "InfiniteAmmo", "infi_STAR_exec", "inf_ammo_loop_infiSTAR", "initarr", "initarr2", "initarr3", "insult1", "invall", "isInSub", "keymenu", "keymenu2", "keyz", "lefont", "letmeknow", "Listw", "list_wrecked", "lmzsjgnas", "LOKI_GUI_Key_Color", "LowTerrain", "Lystic_FillMenu", "Lystic_FillObj", "Lystic_FillPlrs", "Lystic_FillThings", "Lystic_FillVeh", "Lystic_FillVehAir", "Lystic_FillVehWater", "Lystic_FillWep", "Lystic_Init", "Lystic_LMAOOOOOOOOOOOOOOOOOOO", "Lystic_Main", "Lystic_menutop", "lystic_menu_inited", "Lystic_Re", "Lystic_scrollable", "Lystic_Spawn", "Lysto_Lyst", "mahcaq", "maphalf", "mapm", "markPos", "mehatingjews", "Menulocations", "mk2", "monky", "monkytp", "Monky_funcs_inited", "Monky_hax_toggled", "moptions", "morphm3", "morphtoanimals", "musekeys", "MY_KEYDOWN_FNC", "n0clip", "namePlayer", "No_Recoil", "omgwtfbbq", "pathtoscrdir", "pbx", "playerDistanceScreen", "playericons", "playershield", "plrshldblckls", "plrshldblcklst", "Plr_Pos_Orig", "ptags", "qofjqpofq", "qopfkqpofqk", "r33d", "rainb0w", "rainbowbitch", "rainbow_var", "reinit", "removebuildings", "rspwn", "sbp", "sbpc", "scode", "selecteditem", "ShadowyFaz3VehZ", "shnmenu", "skinmenu", "slag", "smag", "spawnitems1", "spawnweapons1", "spawnz", "surrmenu", "swpn", "t0ggl3", "TAG_onKeyDown", "take1", "tempslag", "TentS", "testIndex", "tgod", "theKeyControl", "thingtoattachto", "timez", "toggle_keyEH", "TTT5OptionNR", "Ug8YtyGyvguGF", "unitList", "unitsmenu", "unlim", "unlimammo", "vehicleg0dv3_BushWookie", "vehiclegooov3ood_BushWookie", "Veh_Spawn_Shitt", "vgod", "ViLayer", "vspeed", "weapFun", "Wep_Spawn_Shitt", "wierdo", "Wookie_3Dtext", "Wookie_Add_To_Green", "Wookie_AdminMenu_404", "Wookie_AutoTakeOffV2", "Wookie_Base", "Wookie_BigFcknBullets", "Wookie_BlackNWhite_VF", "Wookie_BlackNWhite_VF_a", "Wookie_BlackNWhite_VF_t", "Wookie_CarGod_MODE", "Wookie_Car_RE", "Wookie_Cash", "Wookie_Cash_1k_t", "Wookie_Cash_3k_t", "Wookie_Cash_a", "Wookie_Cash_max_t", "Wookie_Cotton_1_VF", "Wookie_Cotton_2_VF", "Wookie_CyanGreen_VF", "Wookie_DarkBlue_VF", "Wookie_DarkGolden_VF", "Wookie_DarkGreen_VF", "Wookie_Dark_VF", "Wookie_Debug_Mon", "Wookie_DelCrate", "Wookie_DeleteCursor", "Wookie_ESP", "Wookie_Explode_t", "Wookie_ForceAdminMenu_404", "Wookie_FuckUp_GunStore", "Wookie_FuckUp_t", "Wookie_Gloomy_VF", "Wookie_Gloomy_VF_a", "Wookie_Gloomy_VF_t", "Wookie_GodeModeOff_a", "Wookie_GodeMode_a", "Wookie_GodMode_t", "Wookie_God_MODE", "Wookie_HealSelf", "Wookie_heal_t", "Wookie_HeliSquad", "Wookie_HeliSquad2", "Wookie_HighOnXmas_VF", "Wookie_Init_Menu", "Wookie_JoinVeh_t", "Wookie_Kick_t", "Wookie_KillCursor", "Wookie_Kill_t", "Wookie_List", "Wookie_MissileStrike", "Wookie_NewsBanner", "Wookie_NiggaBeFaded_VF", "Wookie_OldTimey_VF", "Wookie_PinkLemonade_VF", "Wookie_PlayerM", "Wookie_Pro_RE", "Wookie_QuickFire", "Wookie_Radiation_VF", "Wookie_RandParaLol_a", "Wookie_RandTPLol_a", "Wookie_RedBlue_VF", "Wookie_RemoveVF", "Wookie_Remove_VF_a", "Wookie_Remove_VF_t", "Wookie_SexyHeliLol", "Wookie_Shield", "Wookie_Shrooms_VF", "Wookie_SpawnCrate", "Wookie_Spectate_t", "Wookie_SpeedyGonzales", "Wookie_Spiderman_VF", "Wookie_Spiderman_VF_a", "Wookie_Spiderman_VF_t", "Wookie_SpinAround_t", "Wookie_Tele", "Wookie_TPAll_a", "Wookie_TPCursor", "Wookie_TpToMe_t", "Wookie_TpToThem_t", "Wookie_VehM", "Wookie_Wasteland_VF", "Wookie_Wasteland_VF_a", "Wookie_Wasteland_VF_t", "wuat_fpsMonitor", "xdistance", "xtags", "xtags_star_xx", "xyzaa", "xZombieBait", "zeus", "zeusmode", "zombieDistanceScreen", "zombieshield", "zshield", "_Shad0wt3xt", "LystoArma3" ,"AAN", "Zargabad", "Intro", "Mission", "abcd", "abcdefGEH", "abox1", "activeITEMlist", "activeITEMlistanzahl", "addgun", "aesp", "aheaven", "antiantiantiantih4x", "AntiAntiAntiAntiHax", "anticrash", "antiloop", "ARGT_JUMP", "atext", "battleHIGH_vehpub", "BG_Pos_Orig", "BG_Scale_Orig", "bodyguardz", "boost", "bowen", "bowonky", "bulletz", "byebyezombies", "c0l0r", "c0lorthem", "cargod", "changebackpack", "changestats", "ChangingBullets_xx", "cr3d", "ctrl_onKeyDown", "dayzRespawn2", "dayzRespawn3", "dayzSetDate", "dayzSetFix", "DAYZ_CA1_Lollipops", "dayz_godmode", "debugConsoleIndex", "debugz", "debug_simple", "debug_star_colorful", "delaymenu", "desyncserver", "DEV_ConsoleOpen", "dontAddToTheArray", "drawic", "dwarden", "enamearr", "ESP", "esp2", "ezp", "fazelist", "faze_fillHax", "faze_fillPlrs", "faze_fill_color", "faze_fill_morph", "faze_fill_Objects", "faze_fill_spawn_misc_menu", "faze_fill_Specific", "faze_fill_VehiclesZ", "faze_fill_Weapons", "faze_funcs_inited", "faze_getControl", "faze_hax_dbclick", "faze_initMenu", "fffffffffff", "firstrun", "footSpeedIndex", "footSpeedKeys", "fuckmegrandma", "g0d", "g0dmode", "gluemenu", "god", "godall", "godlol", "hacks", "Hack_Pos_Orig", "hangender", "HaxSmokeOn", "HDIR", "helibus", "helitakoff", "HMDIR", "hotkeymenu", "iBeFlying", "igodokxtt", "InfiniteAmmo", "infi_STAR_exec", "inf_ammo_loop_infiSTAR", "initarr", "initarr2", "initarr3", "insult1", "invall", "isInSub", "keymenu", "keymenu2", "keyz", "lefont", "letmeknow", "Listw", "list_wrecked", "lmzsjgnas", "LOKI_GUI_Key_Color", "LowTerrain", "Lystic", "Lystic_FillMenu", "Lystic_FillObj", "Lystic_FillPlrs", "Lystic_FillThings", "Lystic_FillVeh", "Lystic_FillVehAir", "Lystic_FillVehWater", "Lystic_FillWep", "Lystic_Init", "Lystic_LMAOOOOOOOOOOOOOOOOOOO", "Lystic_Main", "Lystic_menutop", "lystic_menu_inited", "Lystic_Re", "Lystic_scrollable", "Lystic_Spawn", "Lysto_Lyst", "mahcaq", "maphalf", "mapm", "markPos", "mehatingjews", "Menulocations", "mk2", "monky", "monkytp", "Monky_funcs_inited", "Monky_hax_toggled", "moptions", "morphm3", "morphtoanimals", "musekeys", "MY_KEYDOWN_FNC", "n0clip", "namePlayer", "No_Recoil", "omgwtfbbq", "pathtoscrdir", "pbx", "playerDistanceScreen", "playericons", "playershield", "plrshldblckls", "plrshldblcklst", "Plr_Pos_Orig", "ptags", "qofjqpofq", "qopfkqpofqk", "r33d", "rainb0w", "rainbowbitch", "rainbow_var", "reinit", "removebuildings", "rspwn", "sbp", "sbpc", "scode", "selecteditem", "ShadowyFaz3VehZ", "shnmenu", "skinmenu", "slag", "smag", "spawnitems1", "spawnweapons1", "spawnz", "surrmenu", "swpn", "t0ggl3", "TAG_onKeyDown", "take1", "tempslag", "TentS", "testIndex", "tgod", "theKeyControl", "thingtoattachto", "timez", "toggle_keyEH", "TTT5OptionNR", "Ug8YtyGyvguGF", "unitList", "unitsmenu", "unlim", "unlimammo", "vehicleg0dv3_BushWookie", "vehiclegooov3ood_BushWookie", "Veh_Spawn_Shitt", "vgod", "ViLayer", "vspeed", "weapFun", "Wep_Spawn_Shitt", "wierdo", "Wookie_3Dtext", "Wookie_Add_To_Green", "Wookie_AdminMenu_404", "Wookie_AutoTakeOffV2", "Wookie_Base", "Wookie_BigFcknBullets", "Wookie_BlackNWhite_VF", "Wookie_BlackNWhite_VF_a", "Wookie_BlackNWhite_VF_t", "Wookie_CarGod_MODE", "Wookie_Car_RE", "Wookie_Cash", "Wookie_Cash_1k_t", "Wookie_Cash_3k_t", "Wookie_Cash_a", "Wookie_Cash_max_t", "Wookie_Cotton_1_VF", "Wookie_Cotton_2_VF", "Wookie_CyanGreen_VF", "Wookie_DarkBlue_VF", "Wookie_DarkGolden_VF", "Wookie_DarkGreen_VF", "Wookie_Dark_VF", "Wookie_Debug_Mon", "Wookie_DelCrate", "Wookie_DeleteCursor", "Wookie_ESP", "Wookie_Explode_t", "Wookie_ForceAdminMenu_404", "Wookie_FuckUp_GunStore", "Wookie_FuckUp_t", "Wookie_Gloomy_VF", "Wookie_Gloomy_VF_a", "Wookie_Gloomy_VF_t", "Wookie_GodeModeOff_a", "Wookie_GodeMode_a", "Wookie_GodMode_t", "Wookie_God_MODE", "Wookie_HealSelf", "Wookie_heal_t", "Wookie_HeliSquad", "Wookie_HeliSquad2", "Wookie_HighOnXmas_VF", "Wookie_Init_Menu", "Wookie_JoinVeh_t", "Wookie_Kick_t", "Wookie_KillCursor", "Wookie_Kill_t", "Wookie_List", "Wookie_MissileStrike", "Wookie_NewsBanner", "Wookie_NiggaBeFaded_VF", "Wookie_OldTimey_VF", "Wookie_PinkLemonade_VF", "Wookie_PlayerM", "Wookie_Pro_RE", "Wookie_QuickFire", "Wookie_Radiation_VF", "Wookie_RandParaLol_a", "Wookie_RandTPLol_a", "Wookie_RedBlue_VF", "Wookie_RemoveVF", "Wookie_Remove_VF_a", "Wookie_Remove_VF_t", "Wookie_SexyHeliLol", "Wookie_Shield", "Wookie_Shrooms_VF", "Wookie_SpawnCrate", "Wookie_Spectate_t", "Wookie_SpeedyGonzales", "Wookie_Spiderman_VF", "Wookie_Spiderman_VF_a", "Wookie_Spiderman_VF_t", "Wookie_SpinAround_t", "Wookie_Tele", "Wookie_TPAll_a", "Wookie_TPCursor", "Wookie_TpToMe_t", "Wookie_TpToThem_t", "Wookie_VehM", "Wookie_Wasteland_VF", "Wookie_Wasteland_VF_a", "Wookie_Wasteland_VF_t", "wuat_fpsMonitor", "xdistance", "xtags", "xtags_star_xx", "xyzaa", "xZombieBait", "zeus", "zeusmode", "zombieDistanceScreen", "zombieshield", "zshield", "_Shad0wt3xt", "fdsgdr42424SpinAround", "fdsgdr42424GodMode_t", "404 Wasteland Admin Menu", "fdsgdr42424Base", "Swastika", "Hakenkreuz", "Harkenkreuz", "Wookie", "Unlim_star", "Burning", "W_O_O_K_I_E_ANTI_ANTI_HAX", "www.mpgh.net", "W_O_O_K_I_E_Car_God", "W_O_O_K_I_E_PlayerShield", "W_O_O_K_I_E", "W_O_O_K_I_E_", "W_O_O_K_I_E_NewsBanner", "W_O_O_K_I_E_Wasteland_VF", "W_O_O_K_I_E_ESP", "W_O_O_K_I_E_WookieESP", "W_O_O_K_I_E_Tele", "W_O_O_K_I_E_RandTPLol_a", "W_O_O_K_I_E_RandParaLol_a", "W_O_O_K_I_E_G0d_Mode", "W_O_O_K_I_E_Explode_t", "W_O_O_K_I_E_OPTIONS", "W_O_O_K_I_E_Kill_t", "W_O_O_K_I_E_TpToThem_t", "W_O_O_K_I_E_M_E_N_U_initMenu", "W_O_O_K_I_E_M_E_N_U", "dat4ClientStarted", "SADTOYCATS", "W_O_O_K_I_E_God_ModeLOL"];

			if (!_continueLoop) exitWith {};
 
			sleep 30;
		};
	};

	[] spawn
	{
		private["_keyDownHandlerCount", "_keyUpHandlerCount", "_ctrlDrawHandlerCount"];
		// diag_log "ANTI-HACK 0.6.7: Hack menu check started!";

		while {	true } do
		{
			(findDisplay 46) displayRemoveAllEventHandlers "KeyUp";
			((findDisplay 12) displayCtrl 51) ctrlRemoveAllEventHandlers "Draw";

			if (!isNull findDisplay 3030 || {!isNull findDisplay 155}) exitWith 
			{
				// diag_log "ANTI-HACK 0.6.7: Found a hack menu!";

				// player globalChat "[ANTI-HACK] This user has cheating scripts.";

				waitUntil {time > 0.1};

				cheatFlag = [player, "hack menu", _x];
				publicVariableServer "cheatFlag";

				endMission "LOSER";

				for "_i" from 0 to 99 do
				{
					(findDisplay _i) closeDisplay 0;
				};
			};

			sleep 5;
		};
	};
	[] spawn
	{
		private["_recoilSettings"];
		_recoilSettings = unitRecoilCoefficient player;

		// diag_log "ANTI-HACK 0.6.7: Godmode check started!";

		while { true } do
		{
			if (unitRecoilCoefficient player != _recoilSettings) exitWith 
			{
				// diag_log "ANTI-HACK 0.6.7: Detected recoil hack!";

				// player globalChat "[ANTI-HACK] This user has cheating scripts.";

				waitUntil {time > 0.1};

				cheatFlag = [player, "no recoil", "null"];
				publicVariableServer "cheatFlag";

				endMission "LOSER";

				for "_i" from 0 to 99 do
				{
					(findDisplay _i) closeDisplay 0;
				};
			};

			setTerrainGrid 25;
			sleep 5;
		};
	};
};

diag_log "ANTI-HACK 0.6.7: Starting...";
diag_log "ANTI-HACK 0.6.7: Adding public variable handler";

"cheatFlag" addPublicVariableEventHandler
{
	private["_array", "_player", "_playerName", "_playerID", "_playerNum", "_hackType", "_hackValue"];

	_array = _this select 1;
	_player = _array select 0;
	_playerName = name _player;
	_playerID = getPlayerUID _player;
	_playerNum = owner _player;
	_hackType = _array select 1;
	_hackValue = _array select 2;
	diag_log format ["ANTI-HACK 0.6.7: %1 (%2) has a scripts-detection for '%3' with the value '%4'", _playerName, _playerID, _hackType, _hackValue];

	// Bug #8396 - serverCommand doesn't work for ARMA 3 as of 2013-05-27
	serverCommand format ["#exec ban %1", _playerID];
	serverCommand format ["#kick %1", _playerID];

	sleep 0.5;

	[call compile format ["[{ player commandChat '[ANTI-HACK NOTICE] %1 was kicked for using cheating scripts.'; }]", _playerName], "BIS_fnc_spawn", true, false] call BIS_fnc_MP;
	diag_log format ["ANTI-HACK 0.6.7: %1 (%2) was kicked for '%3' with the value '%4'", _playerName, _playerID, _hackType, _hackValue];
};

"dat4ClientStarted" addPublicVariableEventHandler
{
	private["_client"];

	_client = _this select 1;
	(owner _client) publicVariableClient "THISIS43SPARTA";
	diag_log format ["ANTI-HACK 0.6.7: Initializing anti-hack on client #%1 (%2)", owner _client, name _client];
};
 
diag_log "ANTI-HACK 0.6.7: Ready.";