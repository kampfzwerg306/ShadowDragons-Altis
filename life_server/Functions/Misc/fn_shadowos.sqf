#include <macro.h>
/*
	File: fn_shadowos
	Author: Tim Fehmer
	
	Description:
	Opens the modified player inventory in tablet mode
	No permission if you not willing to ask me and wait for my response
*/

private ["_buttons","_display","_sync","_message","_money","_inventory","_button","_text","_lastButton","_time","_hour","_min"];

if(!alive player || dialog) exitWith {}; //Prevent them from opening this for exploits while dead.
createDialog "smartphone";
disableSerialization;

_display = findDisplay 90000;
_sync = _display displayCtrl 90010;
_message = _display displayCtrl 90020;
_money = _display displayCtrl 90015;
_inventory = _display displayCtrl 90025;
_lizenzen = _display displayCtrl 90500;
_gangmenu = _display displayCtrl 90501;
_einstellungen = _display displayCtrl 90502;
_schluesselbund = _display displayCtrl 90503;
_fahndungsliste = _display displayCtrl 90504;
_preisliste = _display displayCtrl 90505;
_boerse = _display displayCtrl 90506;
_adminmenu = _display displayCtrl 90507;
_craftmenu = _display displayCtrl 90508;


// Global buttons
_sync ctrlSetStructuredText parseText "<t align='center' shadow='0'><img size='2' image='shadowos\shadowos_button_sync.paa' /><br /><t size='0.7' color='#ffffff'>Sync</t></t>";
_message ctrlSetStructuredText parseText "<t align='center' shadow='0'><img size='2' image='shadowos\shadowos_button_sms.paa' /><br /><t size='0.7' color='#ffffff'>SMS</t></t>";
_money ctrlSetStructuredText parseText "<t align='center' shadow='0'><img size='2' image='shadowos\shadowos_button_konto.paa' /><br /><t size='0.7' color='#ffffff'>Konto</t></t>";
_inventory ctrlSetStructuredText parseText "<t align='center' shadow='0'><img size='2' image='shadowos\shadowos_button_bag.paa' /><br /><t size='0.7' color='#ffffff'>Inventar</t></t>";
_lizenzen ctrlSetStructuredText parseText "<t align='center' shadow='0'><img size='2' image='shadowos\shadowos_button_liz.paa' /><br /><t size='0.7' color='#ffffff'>Lizenzen</t></t>";
_gangmenu ctrlSetStructuredText parseText "<t align='center' shadow='0'><img size='2' image='shadowos\shadowos_button_gangster.paa' /><br /><t size='0.7' color='#ffffff'>Gangverwaltung</t></t>";
_einstellungen ctrlSetStructuredText parseText "<t align='center' shadow='0'><img size='2' image='shadowos\shadowos_button_optionen.paa' /><br /><t size='0.7' color='#ffffff'>Optionen</t></t>";
_schluesselbund ctrlSetStructuredText parseText "<t align='center' shadow='0'><img size='2' image='shadowos\shadowos_button_key.paa' /><br /><t size='0.7' color='#ffffff'>Schlüssel</t></t>";
_fahndungsliste ctrlSetStructuredText parseText "<t align='center' shadow='0'><img size='2' image='shadowos\shadowos_button_wanted.paa' /><br /><t size='0.7' color='#ffffff'>Fahndung</t></t>";
_preisliste ctrlSetStructuredText parseText "<t align='center' shadow='0'><img size='2' image='shadowos\shadowos_button_preise.paa' /><br /><t size='0.7' color='#ffffff'>Preise</t></t>";
_boerse ctrlSetStructuredText parseText "<t align='center' shadow='0'><img size='2' image='shadowos\shadowos_button_boerse.paa' /><br /><t size='0.7' color='#ffffff'>Börse</t></t>";
_adminmenu ctrlSetStructuredText parseText "<t align='center' shadow='0'><img size='2' image='shadowos\shadowos_button_boss.paa' /><br /><t size='0.7' color='#ffffff'>Admin</t></t>";
_craftmenu ctrlSetStructuredText parseText "<t align='center' shadow='0'><img size='2' image='shadowos\shadowos_button_craft.paa' /><br /><t size='0.7' color='#ffffff'>Crafting</t></t>";

if(__GETC__(life_adminlevel) < 1) then
{
	ctrlShow[90507,false];
	ctrlShow[90608,false];
};

[] call life_fnc_p_updateMenu;

if(__GETC__(life_adminlevel) < 1) then
{
	ctrlShow[90507,false];
	ctrlShow[90608,false];
};

switch(playerSide) do
{
	case west: 
	{
		ctrlShow[90501,false];
		ctrlShow[90601,false];
		ctrlShow[90508,false];
	};
	case civilian:
	{
		ctrlShow[90504,false];
		ctrlShow[90605,false];
	};
	case east:
	{
		ctrlShow[90504,false];
		ctrlShow[90605,false];
		ctrlShow[90501,false];
		ctrlShow[90601,false];
	};
	case independent:
	{
		ctrlShow[90504,false];
		ctrlShow[90605,false];
		ctrlShow[90501,false];
		ctrlShow[90601,false];
	};
};
/*
[] spawn
{
	while {!isNull (findDisplay 90000)} do
	{
		[] call life_fnc_p_updateMenu;
		sleep 2;
	};
};*/