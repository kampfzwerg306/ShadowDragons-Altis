if(is_member_of_life_gang_five0)then {
    life_actions = life_actions + [player addAction["Waffe beschlagnahmen",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];
	life_actions = life_actions + [player addAction["<t color='#00FF00'>Polizeimarke zeigen</t>",life_fnc_copShowLicense,"",1,false,true,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" ']];
} else {
	life_actions = life_actions + [player addAction ["", { playSound3D ['a3\sounds_f\weapons\Other\sfx2.wss', _this select 0]; hintSilent "Du bist in einer Savezone!" }, "", 0, false, true, "DefaultAction", "nok_save && currentWeapon player != """""]];
};
