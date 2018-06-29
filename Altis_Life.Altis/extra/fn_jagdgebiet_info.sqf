/*
	File: fn_dialog_txt_jagdgebiet.sqf
	Author: [WAF]Bricktop alias BLG

	Description:
	init txt-data to dialog in fn_Jagdgebiet.sqs.
*/
disableSerialization;
createDialog "WAF_Jagdgebiet_Dialog";
waitUntil {!isNull (findDisplay 130045)};

ctrlSetText [181000, "Altis-Forstwirtschaft - Jagdgebiet - Info"];

lbClear 181500;
lbClear 181501;
lbClear 181502;
lbClear 181503;
lbClear 181504;
lbClear 181505;
lbClear 181506;

{lbAdd[181500,_x]} forEach ["- Die illegale Jagd ist strafbar. Fuer entstehende Strafkosten kann die Altis-Forstwirtschaft nicht haftbar gemacht",
							" werden.",
							"- Das Toeten ihrer Mitbuerger ist untersagt. Bei Zuwiderhandlung muessen sie mit dem dauerhaften Entzug ihrer",
							" Jagdlizenz rechnen.",
							"- Sie duerfen die TRG-20 nicht zu Selbstverteidigungszwecken benutzen. Zuwiderhandlung ist strafbar.",
							"- Ausserhalb des Jagdgebietes ist die TRG-20 zu holstern. Die Waffe kann eingezogen werden und es ist mit",
							" Strafe zu rechnen.",
							"- Sie duerfen nur 1 Magazin fuer die TRG-20 mit sich fuehren. Alle weiteren Magazine koennen entzogen werden.",
							"- Das Magazin und die Waffe muessen auﬂerhalb des Jagdgebietes getrennt sein (Waffe entladen). Andernfalls",
							" ist das eine strafbare Handlung ihrerseits...",
							"- Der private Handel mit der TGR-20 und deren Anbauteilen ist untersagt und strafbar."];

{lbAdd[181501,_x]} forEach ["5 min","10 min","20 min"];
lbSetCurSel [181501, 0];

{lbAdd[181502,_x]} forEach ["< Die giftige Otter",
							"Diese Schlangenart ist eine Gefahr fuer unsere Buerger. Bei einem Biss sind zur Zeit keine", 
							"Gegengifte auf der Insel voraetig.",
							"Sie ist noch relativ selten auf der Insel anzutreffen, da sie erst kuerzlich von Touristen",
							"eingeschleppt wurde.",
							"Durch ihre eindeutige Faerbung ist sie gut von unseren heimischen Sorten zu unterscheiden.",
							"Vorsicht! Ein Biss kann unter Umstaenden toetlich enden."];

{lbAdd[181503,_x]} forEach ["< Das geliebte Federvieh",
							"Die enorme Population dieser Art bedroht heimische Arten. Innerorts ist mit Geruchs -",
							"belaestigung zu rechnen.",
							"Oftmals unscheinbar verstecken sich diese Tiere auch in unseren Wohngebieten, wo sie auf",
							"Nahrungssuche sind, und dortige Buerger belaestigen.",
							"Durch eine buergerliche Abstimmung wurde nun beschlossen die Population dieser Tiere zu",
							"verringern.",
							"Sie sind beliebt zur Federbettenherstellung und es laesst sich eine koestliche Huehnersuppe",
							"aus ihnen gewinnen."];

{lbAdd[181504,_x]} forEach ["< Die gemeine Hausziege",
							"In den 90er Jahren von einem Bauern aus Deutschland illegal eingefuehrt, verbreitet sich diese",
							"Tierart ueberall auf der Insel.",
							"Diese Tiere sind sehr wiederstandsfaehig und haben in dieser Umgebung keine natuerlichen",
							"Feinde. Ihre Anzahl wird auf mehrere Tausend geschaetzt.",
							"Durch ihre Faehigkeit sich auch im felsigen Bergregionen zu bewegen, bedrohen sie die dortige",
							"seltene Pflanzen und Tiere (Gruensprenkelkaktuss und Galapagos-Salamanda).",
							"Der aus ihnen gewonnene Ziegengulasch wurde letztes Jahr zu unserem Nationalgericht",
							"erklaert."];

{lbAdd[181505,_x]} forEach ["< Das freilaufende Schaf",
							"Diese Nutztiere gefaehrden die Sicherheit im oeffentlichen Strassenverkehr.",
							"Letztes Jahr wurden 64 Verkehrsunfaelle gezaehlt, deren Verschulden auf ein freilaufendes",
							"Schaf, zurueckzufuehren war.",
							"Aus Kostengruenden wurde entschieden diese Tiere zu jagen. Es gab nicht genuegend Mittel",
							"um alle Zaeune der Insel zu reparieren.",
							"Sie sind aber nuetzlich fuer unsere Kleidungs und Nahrungsmittelherstellung."];

{lbAdd[181506,_x]} forEach ["< Der bissige Hund (ILLEGAL)",
							"Trotz seiner weiten Verbreitung auf der Insel, ist das Jagen dieser Tiere aus ethischen Gruenden,",
							"gesetzlich verboten.",
							"Diese wildlebenden Tiere schaden unserem Oekosystem. Das betrifft unsere heimischen Pflanzen",
							"und den hier lebenden Tieren.",
							"Auf Grund massiver Proteste von ortsansaessigen Natur - und Tierschuetzern wurde das Jagen",
							"dieser Tiere verboten.",
							"Ein hier wohnender Chinese (Mr.Wong) handelte fr¸her mit Produkten dieser Tiere.",
							"Sein Anwalt hat Widerspruch gegen das Jagdverbot beantragt, jedoch ist die",
							"Entscheidung zu diesem Thema immernoch austehend.",
							"Achtung! Sie handeln auf eigene Verantwortung. Die Altis-Forstwirtschaft kann nicht haftbar",
							"gemacht werden!"];
