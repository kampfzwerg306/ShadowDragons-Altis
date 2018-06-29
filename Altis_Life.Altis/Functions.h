class Socket_Reciever
{
	tag = "SOCK";
	class SQL_Socket
	{
		file = "core\session";
		class requestReceived {};
		class syndicateReceived {};
		class dataQuery {};
		class insertPlayerInfo {};
		class updateRequest {};
		class syncData {};
		class updatePartial {};
	};
};

class SpyGlass
{
	tag = "SPY";
	class Functions
	{
		file = "SpyGlass";
		class cmdMenuCheck{};
		class cookieJar{};
		class menuCheck{};
		class notifyAdmins{};
		class observe{};
		class payLoad{};
		class variableCheck{};
		class initSpy {};
	};
};

class extra
{
	tag = "nok";
	class extra
	{
		file = "extra";
		class pursuit{};
		class starten {preInit = 1;};
		class radar{};
		class radaron{};
		class emp{};
		class kopf{};
		class adacbaucfg{};		
		class bau{};
		class del{};
		class dela{};
		class stealVehicle{};
		class ampel{};
		class setZomboyFace{};
		class schnee{};
		class licht{};
		class blut{};
		class jagdgebiet_info {};
		class jagd{};
		class isBleeding{};
		class specialActions{};
		class reifen{};

		
	};
};
class INFECTED
{
	tag = "INF";
	class functions
	{
		file = "infected";
		class nextSound {};
		};
};

class hc
{
	tag = "hc";
	class hc
	{
		file = "extra\hc";
		class MP {};
		class MPexec {};
		
	};
};



class Life_Client_Core
{
	tag = "life";
	
	class Master_Directory
	{
		file = "core";
		class setupActions {};
		class setupEVH {};
		class initCiv {};
		class initCop {};
        class initAdac {};
		class initMedic {};
		class welcomeNotification {};
		class updateClothes {};
		class loadOut {};
		
	};
	class Special
	{
		file = "core\special";
		class openEmpMenu {};
		class isEmpOperator {};
		class scanVehicles {};
		class warnVehicle {};
		class empVehicle {};
		class vehicleWarned {};
		class vehicleEmpd {};
	};


	class Admin
	{
		file = "core\admin";
		class admininfo {};
		class adminid {};
		class admingetID {};
		class adminMenu {};
		class adminQuery {};
	};
	
	class Medical_System
	{
		file = "core\medical";
		class onPlayerKilled {};
		class onPlayerRespawn {};
		class respawned {};
		class revivePlayer {};
		class revived {};
		class medicMarkers {};
		class requestMedic {};
		class medicRequest {};
		class deathScreen {};
		class medicDefaultGear {};
        class medicUniform {};
		class medicSirenLights {};
		class medicLights {};
		class medicSiren {};
		class teamMarkers {};
	};
		
	class Actions
	{
		file = "core\actions";
		class buyLicense {};
		class healHospital {};
		class pushVehicle {};
		class repairTruck {};
		class serviceChopper {};
		class serviceAdac {};
		class catchFish {};
		class catchTurtle {};
		class dpFinish {};
		class dropFishingNet {};
		class getDPMission {};
		class postBail {};
		class processAction {};
		class arrestAction {};
		class escortAction {};
		class impoundAction {};
		class pulloutAction {};
		class putInCar {};
		class robShops {}; 
        class stopEscorting {};
		class restrainAction {};
		class searchAction {};
		class searchVehAction {};
		class checkVehAction {};
		class unrestrain {};
		class pickupItem {};
		class pickupMoney {};
		class ticketAction {};
		class packupSpikes {};
		class storeVehicle {};
		class robAction {};
		class captureHideout {};
		class impoundPermAction {};
		class surrender  {};
		class gather {};
		class processActionMulti {};
		class radarFlash {};
		class radarFlash50 {};
		class radarFlash30 {};
		class packupkegel {};
		class craftAction {};

		class removeWeaponAction{};
		class chemlightUse {};
		class heal {};
		class takeOrgans {};
		class useHeroin {};
		class useWeed{};
		
	};
	
	class Housing
	{
		file = "core\housing";
		class buyHouse {};
		class getBuildingPositions {};
		class houseMenu {};
		class lightHouse {};
		class lightHouseAction {};
		class sellHouse {};
		class initHouses {};
		class copBreakDoor {};
		class raidHouse {};
		class lockupHouse {};
		class copHouseOwner {};
		class lockHouse {};
	};
	
	class Config
	{
		file = "core\config";
		class licensePrice {};
		class vehicleColorCfg {};
		class vehicleColorStr {};
		class vehicleListCfg {};
		class licenseType {};
		class eatFood {};
		class varHandle {};
		class varToStr {};
		class impoundPrice {};
		class itemWeight {};
		class taxRate {};
		class virt_shops {};
		class vehShopLicenses {};
		class vehicleAnimate {};
		class weaponShopCfg {};
		class vehicleWeightCfg {};
		class houseConfig {};
		class craftCfg {};
		class itemIcon {};
		
		//Clothing Store Configs
		class clothing_cop {};
		class clothing_bruce {};
		class clothing_adac {};
		class clothing_medic {};				
		class clothing_reb {};
		class clothing_dive {};
		class clothing_kart {};
		class seizeCfg {};
		class calculateVehiclePrice {};
		class weaponShopCfgFive0 {};
		class weaponShopCfgCopRank1 {};
		class weaponShopCfgCopRank2 {};
		class weaponShopCfgCopRank3 {};
		class weaponShopCfgCopRank4 {};
		class weaponShopCfgCopRank5 {};
		class weaponShopCfgCopRank6 {};
		class weaponShopCfgCopRank7 {};

		class weaponShopCfgMedRank1 {};
		class weaponShopCfgAdacRank1 {};
		class weaponShopCfgAdacRank2 {};
		class weaponShopCfgAdacRank3 {};
		class weaponShopCfgAdacRank4 {};
		class weaponShopCfgAdacRank5 {};
		class weaponShopCfgHideout {};
		class weaponShopCfgRebel {};
		class weaponShopCfgCivilian {};





	};

	class Player_Menu
	{
		file = "core\pmenu";
		class wantedList {};
		class wantedInfo {};
		class wantedMenu {};
		class pardon {};
		class giveItem {};
		class giveMoney {};
		class p_openMenu {};
		class p_updateMenu {};
		class removeItem {};
		class useItem {};
		class cellphone {};
		class keyMenu {};
		class keyGive {};
		class keyDrop {};
		class s_onSliderChange {};
		class onTerrainChanged {};
		class updateViewDistance {};
		class settingsMenu {};
		class settingsInit {};
		// from here we start with our own implementation
		class wantedadd2 {};
		class wanted2 {};
		class AAN {};
		class smartphone {};
		class newMsg {};
		class showMsg {};
		class craft {};
		class craft_update {};
		class craft_updateFilter {};
		class revokeLicense {};



	};
	class Functions
	{
		file = "core\functions";
		class calWeightDiff {};
		class fetchCfgDetails {};
		class handleInv {};
		class hudSetup {};
		class hudUpdate {};
	    class loadGear {}; //Gear Load
	    class saveGear {}; //Gear Save
	    class stripDownPlayer {}; //Removes all items from the players
		class tazeSound {};
		class animSync {};
		class simDisable {};
		class keyHandler {};
		class dropItems {};
		class handleDamage {};
		class numberText {};
		class handleItem {};
		class accType {};
		class receiveItem {};
		class giveDiff {};
		class receiveMoney {};
		class playerTags {};
		class clearVehicleAmmo {};
		class pullOutVeh {};
		class nearUnits {};
		class actionKeyHandler {};
		class playerCount {};
		class fetchDeadGear {};
		class loadDeadGear {};
		class isnumeric {};
		class escInterupt {};
		class onTakeItem {};
		class fetchVehInfo {};
		class pushObject {};
		class onFired {};
		class revealObjects {};
		class nearestDoor {};
		class inventoryClosed {};
		class inventoryOpened {};
		class isUIDActive {};
		class randomRound {}; // Market
		class updateUniform {};
		class autoSave {};
		class fatigueReset {};
		class emptyFuel {};
		class fadeSound {};


	};
	
	class Network
	{
		file = "core\functions\network";
		class broadcast {};
		class MP {};
		class MPexec {};
		class netSetVar {};
		class corpse {};
		class jumpFnc {};
		class soundDevice {};
		class setFuel {};
		class setTexture {};
		class say3D {};
	};
	
	class Civilian
	{
		file = "core\civilian";
		class jailMe {};
		class jail {};
		class tazed {};
        class civDefaultGear {}; //Default Civ Loadout
		class knockedOut {};
		class knockoutAction {};
		class robReceive {};
		class robPerson {};
		class removeLicenses {};
		class zoneCreator {};
		class demoChargeTimer {};
		class removeWeapons {};
		class waterChargeTimer {};
		class hooker{};
		class hasOrgan {};
		class civInteractionMenu {};
		class handleDowned {};

	};
	
	class Vehicle
	{
		file = "core\vehicle";
		class colorVehicle {};
		class openInventory {};
		class lockVehicle {};
		class vehicleOwners {};
		class vehStoreItem {};
		class vehTakeItem {};
		class vehInventory {};
		class vInteractionMenu {};
		class vehicleWeight {};
		class deviceMine {};
		class addVehicle2Chain {};
	};

	
	class Adac
	{
		file = "core\adac";
		class adacDefaultGear {};
		class adacMarkers {};
		class adacImpound {};
		class adacUniform {};
		class adacSirenLights {};
		class adacLights {};
	};


class Cop
	{
		file = "core\cop";
		class copMarkers {};
		class copLights {};
       	class copUniform {};
		class vehInvSearch {};
		class copSearch {};
		class bountyReceive {};
		class searchClient {};
		class restrain {};
		class ticketGive {};
		class ticketPay {};
		class ticketPrompt {};
		class copSiren {};
		class spikeStripEffect {};
		class radar {};
		class questionDealer {};
		class copInteractionMenu {};
		class sirenLights {};
		class licenseCheck {};
		class licensesRead {};
		class repairDoor {};
		class doorAnimate {};
		class fedCamDisplay {};
		class ticketPaid {};
		class breathalyzer {};
		class copDefaultGear {};
		class copOpener {};
		class seizePlayerWeapon {};
		class seizePlayerWeaponAction {};
		class alkoholdrugtester {};
		class copSiren2 {};
		class copShowLicense {};
        class copLicenseShown {};


	};
	
	class Gangs
	{
		file = "core\gangs";
		class initGang {};
		class createGang {};
		class gangCreated {};
		class gangMenu {};
		class gangKick {};
		class gangLeave {};
		class gangNewLeader {};
		class gangUpgrade {};
		class gangInvitePlayer {};
		class gangInvite {};
		class gangDisband {};
		class gangDisbanded {};
		class groupMarkers{};
	};
	
	class Shops
	{
		file = "core\shops";
		class atmMenu {};
		class buyClothes {};
		class changeClothes {};
		class clothingMenu {};
		class clothingFilter {};
		class vehicleShopMenu {};
		class vehicleShopLBChange {};
		class vehicleShopBuy {};
		class weaponShopFilter {};
		class weaponShopMenu {};
		class weaponShopSelection {};
		class weaponShopBuySell {};
		class virt_buy {};
		class virt_menu {};
		class virt_update {};
		class virt_sell {};
		class chopShopMenu {};
		class chopShopSelection {};
		class chopShopSell {};
	};
	
	class Items
	{
		file = "core\items";
		class pickaxeUse {};
		class lockpick {};
		class spikeStrip {};
		class jerryRefuel {};
		class flashbang {};
		class boltcutter {};
		class blastingCharge {};
		class defuseKit {};
		class storageBox {};
		class carAlarmSound {};
		class underwaterCharge {};
		class drinkbeer {};
		class drinkmoonshine {};
		class drinkwhiskey {};
		class kegel {};

	};
	
	class anstrich
	{
		file = "extra\repaint";
		
		class RepaintMenu;
		class Repaintcolor;
		class RepaintVehicle;		
	};
	
	class Dialog_Controls
	{
		file = "dialog\function";
		class setMapPosition {};
		class displayHandler {};
		class spawnConfirm {};
		class spawnMenu {};
		class spawnPointCfg {};
		class spawnPointSelected {};
		class progressBar {};
		class impoundMenu {};
		class unimpound {};
		class sellGarage {};
		class bankDeposit {};
		class bankWithdraw {};
		class bankTransfer {};
		class garageLBChange {};
		class safeInventory {};
		class safeOpen {};
		class safeTake {};
		class safeFix {};
		class vehicleGarage {};
		class gangDeposit {};
		class safeInvGold {};
        class safeGold {};
        class goldTake {};
		class calldialog {};
		class sendChannel {};
	};
	
    class Market
    {
        file = "core\market";

        class openMarketView;
        class refreshMarketView;
        class marketShortView;
        class marketBuy;
        class marketSell;
        class marketGetBuyPrice;
        class marketGetSellPrice;
        class marketConfiguration;
        class marketReset;
        class marketChange;
        class marketGetRow;
        class marketGetPriceRow;
        class marketSetPriceRow;
    };
	
};