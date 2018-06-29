////////////////////////////////////////////////////////////
//             TEARGAS SCRIPT FÜR ALTIS LIFE 3.1.3        //
////////////////////////////////////////////////////////////

While{true} do {
"dynamicBlur" ppEffectEnable true; // enables ppeffect
"dynamicBlur" ppEffectAdjust [0]; // enables normal vision
"dynamicBlur" ppEffectCommit 15; // time it takes to normal
resetCamShake; // resets the shake
20 fadeSound 1;	 //fades the sound back to normal


waituntil{
    (((nearestObject [getpos player, "SmokeShellGreen"]) distance player < 10) or ((nearestObject [getpos player, "G_40mm_Smoke"]) distance player < 10))  
    and 
    ((getpos (nearestObject [getpos player, "SmokeShellGreen"]) select 2 < 0.5) or (getpos (nearestObject [getpos player, "G_40mm_Smoke"]) select 2 < 0.5))
    };


    if (headgear player in ["H_CrewHelmetHeli_B","H_CrewHelmetHeli_I","H_CrewHelmetHeli_O","H_PilotHelmetFighter_B"]) then
    {
        // do nothing
    } else {

        cuttext ["Tränengas!", "Leg dich hin!"];
        "dynamicBlur" ppEffectEnable true; // enables ppeffect
        "dynamicBlur" ppEffectAdjust [20]; // intensity of blur
        "dynamicBlur" ppEffectCommit 3; // time till vision is fully blurred
        enableCamShake true;     // enables camera shake
        addCamShake [10, 45, 10];    // sets shakevalues
        player setFatigue 1; // sets the fatigue to 100%
        5 fadeSound 0.1;     // fades the sound to 10% in 5 seconds

    };
    
    sleep 0.1;
};