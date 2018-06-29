class DefaultEventhandlers;
class CfgPatches 
{
	class hc_2DB
	{
		fileName = "hc_2DB.pbo";
		author[]= {"altis.life Team"}; 
	};
};

class CfgFunctions
{

	class hc_2DB
	{
		tag = "HC";
		class HC
		{
			file = "\hc_2DB";
		};
	};

	class MySQL_Database
	{
		tag = "DB";
		class MySQL
		{
			file = "\hc_2DB\MySQL";
			class numberSafe {};
			class mresArray {};
			class queryRequest{};
			class asyncCall{};
			class insertRequest{};
			class updateRequest{};
			class mresToArray {};
			class insertVehicle {};
			class bool{};
			class mresString {};
			class updatePartial {};
			class repaintVehicle {};
		};	
	};
};