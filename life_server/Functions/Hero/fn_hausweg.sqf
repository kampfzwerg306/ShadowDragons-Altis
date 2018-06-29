//_toDelete = [1779863,490944,1126356,1126359,1126358,1126355,1126367,1126366,1126370]; //Hausnummer
//_obj = {getPos player nearestObject _x}foreach _todelete; //Hausposition Finden
//diag_log str getPos _obj; //Hausposition schreiben in die Log

private ["_toDelete","_obj"];
_toDelete =	[							 /* Position der Häuser */
			[[15190.9,17366.2,-0.00078392],490944],
			[[3286.66,12456.5,-6.77109e-005],1126356],
			[[3288.69,12449.7,0.000406265],1126359],
			[[3292.43,12435.5,-6.19032],1126358],
			[[3278.77,12447.7,-2.09808e-005],1126355],
			[[3282.3,12422.2,0.00376987],1126367],
			[[3260.09,12416.7,-0.0185547],1126366],
			[[3263.08,12440,0.126901],1126370],
			[[3269.53,12453.4,6.89667],1126209],
			[[3269.53,12453.4,6.89667],1126357],
			[[3628.8,13078.9,10.2633],1120878],
			[[3628.8,13078.9,10.2633],1120805],
			[[3628.8,13078.9,10.2633],1120877],
			[[3628.8,13078.9,10.2633],1121121]
			];
{
	_obj = (_x select 0) nearestObject (_x select 1);
	_obj hideObjectGlobal true;
	_obj allowdamage false;
	_obj enablesimulation false;
	deleteVehicle _obj;
	diag_log format ["Entferne Haus %1 Position %2",_obj,_x];
}forEach _toDelete;
