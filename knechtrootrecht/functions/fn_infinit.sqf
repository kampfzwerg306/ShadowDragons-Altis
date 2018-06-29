if (hasInterface) exitwith {};
/*__________________________________________
  Script by Sickboy (sb _at_ 6thSense.eu)
  Version: v0.1
__________________________________________*/
T_INIT = true;
T_Server = true;
T_Client = false;
T_JIP = false;
T_MP = true;

/*_________________________________________________________
	Any script that has to work with the player object will have to wait until T_INIT == true
		waitUntil { T_INIT };
	SinglePlayer: !T_MP
	MultiPlayer: T_MP
	Dedicated Server: T_Server && !T_Client
	Dedicated Server or ServerClient: T_Server
	ClientOnly: T_Client && !T_Server
	Client or ServerClient: T_Client
	Client or ServerClient, NOT JIP: T_Client && !T_JIP
	JIP Client: T_JIP
_________________________________________________________*/

	
infected = createGroup east;
infected setCombatMode "CARELESS";
infected setSpeedMode "LIMITED";
infectedattacker = createGroup east;
infectedattacker setCombatMode "CARELESS";
infectedattacker setSpeedMode "FULL";
infectedFrozen = createGroup east;
infectedFrozen setCombatMode "CARELESS";
infectedFrozen setSpeedMode "LIMITED";
nok_zombi_remove =  [infected] + [infectedattacker] + [infectedFrozen];
publicvariableserver "nok_zombi_remove";

Infected_Switch=true; //just in case
	
infectedCount=0;
Attacking=0;
Frozen=0;
infectedkilled=0;
infected_init=true;
