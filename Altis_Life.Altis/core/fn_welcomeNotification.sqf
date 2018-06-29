/*
	File: fn_welcomeNotification.sqf
	
	Description:
	Called upon first spawn selection and welcomes our player.
*/
format["Willkommen %1, Bitte folgendes durchlesen!",player getVariable["realname",name player]] hintC
[
"Achtung Achtung",
"Die Lizenzpreise wurden abgepasst!",
"Respawn bedeutet den Verlust der Lizenzen( nur wenn min. Medic online ist )",
"Ein Cop zählt in dieser Berechnung nicht als Medic!",
"Ist KEIN Medic online und ihr drückt RESPAWN, verliert ihr keine Lizenz",
"Anmerkung: Ein abgesetzter Medic Request ist VERBINDLICH!"


];

/*format["Achtung: %1, ",player getVariable["realname",name player]] hintC
[
	"EVENT EVENT EVENT",
	"Teamspeak IP : 85.25.145.114:9987",
	"ES BEFINDEN SICH ZOMBIES IM SÜDLICHEN GEBIET DER INSEL!",
	"Finde und töte Sie, beschütze unser Altis",
	"Bring uns die Genproben, wir brauchen den Impfstoff",
	"Jede Probe ist nötig, je mehr desto Besser.",
	"wenn du der Erfolgreichste Zombiejäger bist winken:",
	"Platz 1: 10.000.000 $",
	"Platz 2: 7.000.000 $",
	"Platz 3: 5.000.000 $",
	"ABER: Das Töten von anderen Jäger ist verboten",
	"und führt zum Ausschluss aus dem Event!",
	"GUTE JAGD"
	


];
*/