while {true} do {
	waitUntil {sleep 5;vehicle player isKindOf "Air" && isnil "nok_kopf"};
	vehicle player addEventHandler ["getout", {if (_this select 2 == player) then {10 fadesound 1;player removeaction nok_kopf; nok_kopf = nil}}];
	nok_kopf = player addAction ["<t color='#00FF00'>Kopfhörer Aufsetzen</t>",{
		10 fadesound 0.2;
		player removeaction nok_kopf;
		nok_kopf = player addAction ["<t color='#FF0000'>Kopfhörer Absetzen</t>",{
			10 fadesound 1;
			player removeaction nok_kopf;
			nok_kopf = nil;
		},nil,0.1,false,true];
	},nil,0.1,false,true];
};