class DefaultEventhandlers;
class CfgPatches 
{
	class knechtrootrecht
	{
		fileName = "knechtrootrecht.pbo";
		author[]= {"altis.life Team"}; 
	};
};

class CfgFunctions
{

	class knechtrootrecht
	{
		tag = "HC";
		class HC
		{
			file = "\knechtrootrecht";
			class zombi{};
			class tueren{};
			class bruecke{};
			class ampel{};
			class ampelon{};
			class jagdgebiet{};
		};
	
	};
	class INFECTED
	{
		tag = "INF";
		class functions
		{
			file = "\knechtrootrecht\functions";
			class attack {};
			class attacker {};
			class contact {};
			class nearesttarget {};
			class roaming {};
			class stuff {};
			class vehicle {};
			class infectedinit {};
			class spawner {};
			class roam {};
			class infectedzone {};
			class playerLeavingZone {};
			class inithordeattacker {};
			class inithorde {};
			class Edattack {};
			class infecthim {};
			class Ednearesttarget {};
			class Edroam {};
			class infinit{};
			class autopop {};
		};
	};
};