//Copyright by Carmen Kamm, Maxi Melanie Merz und Torsten Ennenbach

waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};
player createDiarySubject ["adminrules","Adminregeln"];
player createDiarySubject ["serverrules","Allgemeine Regeln"];
player createDiarySubject ["cops","Polizei"];
player createDiarySubject ["adac","ADAC"];
player createDiarySubject ["rd","Rettungsdienst"];
player createDiarySubject ["cops","Polizei"];
player createDiarySubject ["acts","Ausnahmezustand"];
player createDiarySubject ["strafen","Bußgelder"];
player createDiarySubject ["five","Five-0"];
player createDiarySubject ["vehicle","Fahrzeuge"];
player createDiarySubject ["farming","Farmen"];
player createDiarySubject ["newbie","Einsteigertipps"];
player createDiarySubject ["controls","Controls"];

player createDiaryRecord ["adminrules",
[
"Admins & Support",
"
Head of Admins<br/><br/>
- Jethro Demon<br/>
- Catman<br/><br/>
Schlichtern: [ADAC] Repair Engel + Fumiku<br/>
Aufgabe: Alles wo zwischenmenschliche Probleme entstehen, treten auch als Schlichter zwischen den Admins auf.<br/><br/>

Cheaterbuster: [SD] Jubii <br/>
Aufgabe: durchsucht die Datenbank nach illegalen(gehackten/nicht verfügbaren) Gegenständen

Balancing Admins: Fumiku + Kate Beckett<br/>
Aufgabe: Sorgen für ausgeglichene Seiten (Rebellen/Cops/Civs)<br/><br/>

Ingamesupport: Frank Martin/Jubii & Josh v. Wolf/Wölfchen<br/>
Aufgabe: Das sind die Ansprechpartner wenn euch Fahrzeuge abhanden kommen, durch Dsync verloren gehen oder unberechtigt zerstört wurden<br/><br/>

Webseiteadmin: [ADAC] Yuri_Rodriguez<br/>
Aufgabe: Die Webseite, Clanforenbereiche und co<br/>
"
]
];

player createDiaryRecord ["adminrules",
[
"Vorteile ingame",
"
Unsere Admins haben ingame Fairerweise keine Vorteile, weder in Form von besonderen Fahrzeugen oder Geldmitteln.<br/>
Sollte ein Admin euch mal Geld zustecken ist das sein eigenes erfarmtes Geld.<br/>
Wir bekommen auch keine Sonderpreise o.Ä<br/>
"
]
];

player createDiaryRecord ["adminrules",
[
"Adminregeln",
"
Warum brauchen wir Admins? Ganz einfach: Ein Multiplayer Server ist kein Selbstläufer! Damit alles reibungslos funktioniert und alle eine schöne Zeit genießen können, gibt es Leute, die sich darum kümmern. Ein Admin soll ein Vorbild für die anderen Benutzer sein. Das bedeutet, dass ein Admin geduldig und freundlich sein muss. Zudem muss er belastbar sein und darf die Contenance nicht verlieren. Ist ein Admin zu aufgewühlt, ist es besser, er nimmt eine Auszeit von einigen Minuten oder Stunden, als dass aus Emotionalität heraus schlechte Entscheidungen getroffen werden.<br/>
<br/>
Was darf ein Admin?<br/><br/>
Admins sind das Gericht des Servers. Sie überwachen das Einhalten der Regeln, ahnden Verstöße, leisten Hilfestellung bei Problemen aller Art und sind grundsätzlicher Ansprechpartner für sämtliche Belange, die den Server betreffen.
In dieser Rolle benötigen Admins natürlich weitreichende Befugnisse.<br/><br/>
Zu diesen Befugnissen gehört:<br/><br/>
- Zugriff auf den Server per RCON<br/>
- Das Recht, Spieler zu kicken, temporär oder sogar permanent zu bannen<br/>
- Das Recht, im Namen der gesamten Administration zu sprechen<br/><br/>
Gebannt wird nur im äußersten Notfall - ausgenommen Cheating, Werbung und rassistische/sexistische Hetze. Bitte immer die mildeste Strafe ansetzen. Bei weiteren Verfehlungen, entsprechend erhöhen.<br/>

Aufgrund dieser Befugnisse habe die Admins vielfältige Möglichkeiten Verstöße aufzudecken und zu beweisen.<br/><br/>

Das hat folgende Konsequenzen:<br/><br/>

Ein Admin hat immer das letzte Wort.<br/>
Wenn ein Admin eine (gerechtfertigte) Ahndung eines Verstoßes ausspricht, tut er das im Namen des Servers.<br/>
Versuche, einen anderen Admin zum Aufheben der Ahndung zu bewegen (die Admins gegeneinander auszuspielen) führen unweigerlich zum permanenten Bann.<br/>
Die Admins vergewissern sich gut und treffen Entscheidungen meist nie allein.<br/><br/>
RCON Rechte: Diese sind nur und ausschließlich für das Kicken/Bannen oder Notfallrestart des Servers zu gebrauchen.<br/>
Das Lesen des Chatlogs ist verboten!<br/>

"
]
];

player createDiaryRecord ["newbie",
[
"Einsteigertipps",
"
Tipps für Altis Life-Neulinge:<br/><br/>
Das Wichtigste: Sprecht Leute an wenn ihr nicht weiter wisst! <br/>
Vor allem Cops, Medics, Five-0 und der ADAC sind sehr hilfsbereit!!!<br/><br/>
Vom Pfirsichbauer zum Millionär - jeder fängt mal klein an.<br/>
Deswegen hier ein paar Starttipps zum Geldverdienen:<br/>
-lauft zum Kavala-Marktplatz und hebt dort ein bisschen Geld vom ATM(Bankautomat) ab<br/>
-auf dem Markt befindet sich ein Schneider, bei dem ihr euch einen Rucksack kaufen könnt <br/>
-vergesst auch nicht euch beim Supermarkt ein bisschen Wasser und was zu Essen mitzunehmen<br/>
-lauft dann zum Autohändler und kauft euch ein Quad (Bedienung siehe -Controls-)<br/>
-fahrt danach mit eurem Quad zum Pfirsichfeld nördlich von Kavala<br/>
-sammelt dort fleißig Pfirsiche bis euer Rucksack und Quad voll sind<br/>
-fahrt nun zurück zum Marktplatz und verkauft eure Pfirsiche beim Supermarkt<br/>
-macht das bis ihr euch einen Geländewagen oder Truck Boxer kaufen könnt<br/>
dazu benötigt ihr dann einen Führerschein für 500$ (Lizenzhändler am Markt)<br/>
-wenn ihr dann ein größeres Auto habt könnt ihr anderes Zeug farmen <br/>
wie z.B. Wein (Traubenplantage - Weinverarbeiung - Weingeschäfft am Markt)<br/>
oder Kupfer (Kupfermine - Kupferverarbeitung - Kupferhändler)<br/>
Vergesst aber nicht, dass ihr für das Verabeiten Lizenzen benötigt!<br/><br/>
Wenn ihr eure Autos einparken wollt, dann fahrt einfach zur Garage (auf derm Map rot markiert).<br/>
Dort steht ein Mann bei dem ihr Fahrzeuge ein- und ausparken könnt. <br/><br/>
WICHTIG: Bei uns kann man nur an seiner letzten Position spawnen und die Fahrzeuge (+Inventar)<br/>
bleiben auch nach dem Restart stehen!!!<br/>
"
]
];

player createDiaryRecord ["farming",
["Gewicht",
"
Produkt---Rohware..verarbeitete Ware in kg/slots<br/><br/>
Apfel---------1...x<br/>
Pfirsich------1...x<br/><br/>
Kupfer--------4...3<br/>
Eisen---------5...3<br/>
Zement--------6...5<br/><br/>
Diamanten-----4...2<br/>
Öl------------4...2<br/>
Salz----------3...1<br/>
Sand----------3...1<br/><br/>
Gold---------12...x<br/>
Tabak---------3...2<br/>
Trauben-------3...2<br/>
Uran----------8...6<br/><br/>
Mariuhana-----3...1<br/>
Meth----------4...3<br/>
Heroin--------4...2<br/><br/>
Schildkröte---6...2<br/>
Katzenhai-----6...x<br/>
Makrele-------4...x<br/>
Thunfisch-----6...x<br/>
Mullet--------4...x<br/>
Ornate--------2...x<br/>
Salema--------2...x<br/>

"
]
];

player createDiaryRecord ["farming",
["Lizenzen",
"
PKW-Führerschein---------500$<br/>
LKW-Führerschein------20.000$<br/>
Pilotenschein--------365.000$<br/>
Bootsführerschein------1.000$<br/><br/>
Tauchschein------------4.000$<br/>
Waffenschein---------100.000$<br/><br/>
Rebellen-Lizenz------565.000$<br/><br/>
Häuser-Lizenz--------190.000$<br/><br/>
Zement-Lizenz----------6.500$<br/>
Kupfer-Lizenz----------8.000$<br/>
Eisen-Lizenz-----------9.500$<br/>
Ölbohr-Lizenz---------10.000$<br/>
Salz-Lizenz-----------12.000$<br/>
Weinbau-Lizenz--------12.000$<br/>
Sand-Lizenz-----------14.500$<br/>
Zigaretten-Lizenz-----34.000$<br/>
Zigarren-Lizenz-------90.000$<br/>
Uran-Lizenz-----------95.000$<br/>
Diamant-Lizenz--------95.000$<br/>
Marijuana-Lizenz-----130.000$<br/>
Heroin-Lizenz--------142.000$<br/>
Meth-Lizenz----------112.000$<br/>
Kokain-Lizenz--------125.000$<br/>
Moonshine-Lizenz-----125.000$<br/>

"
]
];

player createDiaryRecord ["adac",
[
"ADAC",
"
- Der ADAC stelt euch das Abschleppen in Rechnung (10.000$).<br/>
- Das Reparieren ist kostenlos<br/>
- Ist die Reparatur nicht möglich kann der ADAC das Fahrzeug aus RP-Gründen bis Restart beschlagnahmen<br/>
- Solange ein ADAC-Mitglied verfügbar ist, sollten Fahrzeuge auschließlich vom ADAC beschlagnahmt <br/>
  oder abgeschleppt werden! (Ausnahmen sind Situationsabhängig) <br/>
- Der ADAC ist eine nicht angreifbare Fraktion und darf somit nicht beschossen,<br/>
  entführt, verletzt oder bestohlen werden! (dies gilt auch für ADAC-Fahrzeuge)<br/>
- Es steht dem ADAC frei, zu entscheiden wem sie zu Hilfe kommen und wem nicht.<br/>
  Also seid nett zum ADAC und verhaltet euch vernünftig!<br/><br/>
Eine ADAC-Plus Mitgliedschaft kann für 500.000 $ pro Monat erworben werden. <br/>
Diese beinhaltet folgende Vergünstigungen und Dienste: <br/>
- Ihr könnt euch Fahrzeuge ausleihen <br/>
- Der ADAC beliefert euch mit Nahrungsmitteln<br/>
- Das Abschleppen eurer Fahrzeuge ist kostenlos<br/>
- Für weitere Vergünstigungen, wenden Sie sich an den Mitarbeiter Ihres Vertrauens!<br/>

"
]
];
player createDiaryRecord ["rd",
[
"Rettungsdienst",
"
Der RD ist eine nicht angreifbare Fraktion und darf somit nicht beschossen, entführt, verletzt oder bestohlen werden! (dies gilt auch für RD-Fahrzeuge)<br/>
Entscheide Dich! Ein Request an den RD ist bindend und verpflichtet Dich, auf einen Sanitäter zu warten.<br/>
Solltest Du dennoch respawnen, behält sich der RD vor, eine Strafzahlung von bis zu 100.000 $ von Dir zu fordern.<br/>
Bei einer Verweigerung der Zahlung erfolgt eine Pfändung deines Kontos duch den Ingamesupport<br/>
Der RD ist neutral! Er meldet keine illegalen Aktivitäten und behandelt alle Fraktionen gleich.<br/>
Sollte eine Partei nicht wünschen, dass der Rettungsdienst in einer Situation eingreift, so ist dies durch einen Notruf kund zu tun. In diesem sollte der/die Name/n des/der Betroffenen und eine ungefähre Dauer des Verbotes enthalten sein! (Bsp. Herren XY für die nächsten 10 Min nicht behandeln). Sollte es keinen offensichtlichen Grund mehr geben diese Anweisung zu befolgen (Verlegung/Ende des Gefechts) ist diese Anweisung aufzuheben bzw. zu missachten. Die Polizei kann dieses Verbot ausserdem Aufheben wenn sie nicht an dem Kampf beteiligt ist.<br/>
Personen, welche sich nicht an die oben genannten Regeln halten (mehrfach), landen auf der RD-Black List! Die Blacklist wird öffentlich im Forum gepflegt!<br/>
Das bedeutet, dass der RD nicht mehr auf Notrufe dieser Personen reagiert und auch kein RP mehr mit diesen betreibt. <br/>
"
]
];
player createDiaryRecord ["rd",
[
"RD MUSS",
"
Eng mit der Polizei zusammen Arbeiten (bezüglich der Einsätze im Gefecht, Bankraub usw.) <br/>
Jeden Request zumindest beantworten<br/>
"
]
];

player createDiaryRecord ["rd",
[
"RD SOLLTE",
"
Immer auf das RP des Gegenüber eingehen. Ausnahmen sind hier möglich!<br/>
Immer freundlich und zuvorkommend sein.<br/>
Den Respekt vor jedem Spieler waren.<br/>
Ab einer Wassertiefe von 1.20m selbstständig mit Schwimmbewegungen anfangen. <br/>
Bei erreichen des Baumwipfels die Kletterbewegungen einstellen.<br/>
"
]
];
player createDiaryRecord ["rd",
[
"RD DARF",
"
Ein Handfeuerwaffe zum Selbstschutz(Zombies) bei sich tragen. Dient bei Einführung des ais_medic Systems als Defibrillator.<br/>
Blacklisten führen, diese werden nach 7 Tagen gelöscht.<br/>
"
]
];

player createDiaryRecord ["rd",
[
"RD DARF NICHT",
"
In bestehende Kampfhandlungen aktiv eingreifen.<br/>
Aktiv an Kampfhandlungen Teilnehmen.<br/>
"
]
];

player createDiaryRecord ["cops",
[
"APD MUSS",
"
Immer auf der Gesetztestreuen Seite bleiben.<br/>
Die Markierung des Ranges(Off. , Det. , Sgt. , Lt. , Cpt. , Cmd. , Chief) im Namen tragen<br/>
Den Gesuchten darüber - Auf Anfrage - Auskunft darüber erteilen warum er gesucht wird und was eine Strafe ihn erwartet.<br/>
Einen nachvollziehbaren Grund haben ein Fahrzeug oder Spieler zu durchsuchen. (Er kam aus Richtung Drogenfeld ist kein Grund) <br/>
"
]
];

player createDiaryRecord ["cops",
[
"APD SOLLTE",
"
Immer auf das RP des Gegenüber eingehen. Ausnahmen sind hier möglich!<br/>
Immer freundlich und zuvorkommend sein.<br/>
Den Respekt vor jedem Spieler waren.<br/>
Ab einer Wassertiefe von 1.20m selbstständig mit Schwimmbewegungen anfangen.<br/>
Bei erreichen des Baumwipfels die Kletterbewegungen einstellen.<br/>
"
]
];

player createDiaryRecord ["cops",
[
"APD DARF",
"
Straßensperren errichten und allgemeinen Fahrzeugkontrollen durchführen.*4<br/>
Einen Spieler auf der Straße anhalten und (Achtung RP) befragen.<br/>
Die Drogendealer befragen.<br/>
Seine Dienstwaffe offen führen.<br/>
Sich jederzeit auch mit Waffengewalt verteidigen. !Achtung! Verhältnismäßigkeit wahren!<br/>
Einen Spieler der sich der Kontrolle oder Festname (Flucht) entzieht Tasern und bei schweren Straftaten auch erschießen - Töten ist das letzte Mittel!<br/>
Jederzeit in eine Kampfhandlung eingreifen(Ausnahme Krieg in unbewohntem Gebiet).*5<br/>
Auf Nachfrage oder bei schwerwiegendem Verdacht(gesuchter Verbrecher, langfristige Beobachtung bei illegalen Handlungen, V-Männer) die Ladung eines Fahrzeuges durchsuchen.<br/>
Eine Flugverbotszone errichten und diese mit Waffengewalt verteidigen/säubern.<br/>
Einen Platzverweis aussprechen und diesen entsprechend durchsetzen.<br/>
Die Androhung von Gewalt als Gefahr einstufen.<br/>
Die Kommunikation(SMS) auf terroristische Aktivitäten Überwachen (Altis Patriot Act).<br/>
Razzien durchführen<br/>
Checkpoints errichten<br/><br/>
"
]
];
player createDiaryRecord ["cops",
[
"APD DARF NICHT",
"
Andere Spieler - ohne triftigen Grund - erschießen, Tasern oder foltern (Dauer Tasern).<br/>
Ohne Rollenspiel und Grund ein Fahrzeug durchsuchen.<br/>
Die Armaengine im Bezug auf Waffen holstern nach dem Aussteigen dazu verwenden eine illegale Waffe zu beschlagnahmen oder das Feuer zu eröffnen. (15 Sekunden Zeit für jeden Spieler!)<br/>
In irgendeiner Art und Weise gegen das Gesetz und die Dienstordnung verstoßen<br/>
Dauerhaft mit gepanzerten Fahrzeugen Patrouillieren<br/>
Waffen an Zivilisten verkaufen<br/>
Einen Zivilisten ohne Status Rekrut/Officer in den Polizeidienst erheben.<br/>
Mit Granatwerfern absichtlich auf Zivilisten, Rebellen oder bereits deaktivierte Fahrzeuge schießen<br/>
Fahrzeuge absichtlich Zerstören(Dafür ist die beschlagnahmen Funktion da)<br/>
Spieler durch übermäßig langes Fesseln dauerhaft festsetzen oder via lauten Hubschrauber trollen<br/> 
"
]
];


player createDiaryRecord ["cops",
[
"Razzia/Camping Prozedur",
"
Bei Razzien betritt die Polizei Bereiche in denen sie kriminelle Aktivitäten vermutet.<br/><br/>

- Razzien müssen von einem hochrangigen Polizeimitglied durchgeführt werden.<br/>
- Alle Zivilisten im Bereich der Razzia werden gefesselt und durchsucht. Wenn nichts illegales gefunden wurde, müssen sie freigelassen werden.<br/>
- Wenn etwas illegales gefunden wurde, wird mit der üblichen Prozedur(Gefängnisstrafe oder Ticket) fortgefahren.<br/>
- Nachdem der Bereich sicher ist müssen alle Beamten den Ort verlassen.<br/>

Beim Camping betritt die Polizei einen Bereich und wartet dort auf Kriminelle.<br/><br/>

- Polizisten dürfen in der Staatsbank campen, wenn sie einen Überfall vermuten.<br/>
- Polizisten dürfen in illegalen Bereichen campen.<br/><br/>

"
]
];



player createDiaryRecord ["cops",
[
"Checkpoint Prozedur",
"
Checkpoint Prozedur:<br/>
Polizisten sollten Checkpoints in strategischen Gebieten errichten um illegale Aktivitäten zu unterbinden und um die Sicherheit auf den Straßen zu gewährleisten.<br/><br/>

1. Ein Checkpoint darf nicht weniger als 500m von einem illegalen Bereich entfernt sein.<br/>
2. Checkpoints sollten nur auf Straßen errichtet werden.<br/>
3. Checkpoints dürfen nicht auf der Karte markiert werden.<br/><br/>

"
]
];

player createDiaryRecord ["cops",
[
"Checkpoint Prozedur",
"
Checkpoint Prozedur:<br/>
1. Der Fahrer sollte das Fahrzeug in einer sicheren Distanz anhalten und den Motor ausschalten.<br/>
2. Frage den Fahrer nach weiteren Passagieren und Waffen.<br/>
3. Sag dem Fahrer sie sollen aussteigen und die Waffen senken(falls vorhanden), gib ihnen hierbei eine vernünftige Zeit zum reagieren.<br/>
4. Frag sie woher sie kommen und wohin sie fahren.<br/>

"
]
];
player createDiaryRecord ["cops",
[
"Anmerkungen",
"
*1 Spieler steht bereits als Massenmörder(> 3 Morden) und extremer Gewalttäter(>5 Raubüberfälle) auf der Fahndungsliste<br/><br/> 
*2 Ausnahmen<br/>
*3 Ausgenommen Five-0<br/>
*4 Ein Checkpoint bedarf mindestens 3 Polizisten<br/>
*5 Als unbewohnt gilt freies Feld. Jede Stadt ist regulär Bewohnt!<br/>
"
]
];

player createDiaryRecord ["cops",
[
"Wann kommt jemand ins Gefängnis",
"
1. Mord / Außnahmen: sollte sich jemand SOFORT melden, weil er aufrgrund Selbstverteidigung jemanden erschossen hat, kann er von der Wanted-List ohne weiteres gelöscht werden.<br/> 
    Nach eigenem Ermessen kann statt Gefängnis das Bußgeld verdoppelt werden<br/><br/>
<br/> 	
2. Banküberfall<br/>
3. 3-faches Vergehen bei illegalen Waffen/Beschuß mit Waffen oder illegalen Aktivitäten wie Fahrzeuge/Raub/Einbruch/Geiselnahme<br/>
4. nach 3-maliger Aufforderung die Geldbuße nicht bezahlt wurde.<br/>
<br/> 
5. KEIN Gefängnis für Drogen/Geschwindigkeitsübertretung/Beleidigung/Mißachtung einer Anweisung oder Offroadfahren<br/>
"
]
];



player createDiaryRecord ["strafen",
[
"Bußgeldkatalog",
"
<b>Bußgeldkatalog<br/><br/>
1. Ein Rebell bzw. Zivilist hat 3 Chancen sein Ticket <br/> zu bezahlen, verweigert er die Zahlung wird <br/>
   er/sie in eine Besserungsanstalt gebracht.<br/>
2. Bei Unsicherheit über den Preis eines Tickets, wird <br/>ein ranghöherer Polizist gefragt bzw. hinzugezogen.<br/>
3. Bei Serientätern wird das Kopfgeld verdoppelt <br/> und mit einem Gefängnisaufenthalt muss gerechnet werden. <br/> <br/>

<b>Paragraph 1.Allgemeine Verkehrsregeln<br/><br/>
Abs1. Geschwindigkeitsübertretung = 5.000$<br/>
Abs2. Fahren ohne Licht = 5.000$<br/>
Abs3. Fahren ohne gültigen Führerschein = 10.000$ <br/>
Abs4. Fliegen ohne Fluglizenz = 25.000$ <br/>
Abs5. Gefährliche Fahrweise/Offroad fahren = 5.000$<br/>
Abs6. Behindern des Verkehrs = 5.000$<br/>
Abs7. Mutwilliges Zerstören von fremden Eigentum <br/>mit Fahrzeugen = Entzug des Fahrzeuges + 5.000$<br/>
Abs8. Fliegen/Schweben unter 150m<br/> über Städten und HQs = 10.000$ <br/>
Abs9. Illegale Strassensperren = 50.000$<br/>
Abs10.Überfahren eines anderen Spielers = 25.000$ <br/>
Abs11.Dauerhaft störendes Hupen = 10.000$ <br/> <br/>

<b>Paragraph 2.Waffen- und Drogenbesitz<br/><br/>

Abs1. Waffenbesitz ohne gültigen Waffenschein = 10.000$ + Entzug der Waffe<br/>
Abs2. Illegaler Waffenbesitz = 15.000$ + Entzug der Waffe<br/>
Abs3. Illegaler Sprengstoffbesitz = 30.000$ + Gefängnisstrafe<br/>
Abs4. Öffentliches Tragen einer Waffe innerhalb <br/> von Städten = 20.000$ +Entzug der Waffe<br/>
Abs5. Drogenbesitz = 100.000$ + Gefängnis<br/>
Abs6. Drogenhandel = 95.000$ <br/>
Abs7. Öffentlicher Rausch/Weitergabe = 15.000$ <br/><br/>

<b>Paragraph 4. Diebstahl, Raub und Einbruch<br/><br/>
Abs1. Führen e.fremden Zivilfahrzeugs = 30.000$ <br/>
Abs2. Grosser Diebstahl = 60.000$ <br/>
Abs3. Kleiner Diebstahl (versucht) = 50.000$ <br/>
Abs4. Überfall auf Personen/Fahrzeuge = 50.000$-Gefängnis<br/>
Abs5. Einbruch = 100.000$ + Gefängnis 
Abs6. Raub (z.B. Tankstelle)= 100.000$<br/><br/>
<b>Paragraph 5. Sonstige, Schwere Vergehen<br/><br/>
Abs1. Fahrzeug Mord = 100.000$ <br/>
Abs2. Mord = 100.000$<br/>
Abs3. Versuchter Mord = 20.000$
Abs4. Benutzen von Sprengstoff = 50.000$<br/>
Abs5. Geiselnahme = 200.000$<br/>
Abs6. Versuchte Geiselnahme = 100.000$<br/>
Abs7. Bankraub = 500.000$<br/>
Abs8. Aufstand = 35.000$<br/>
Abs9. Angriff durch Rebellen = 100.000$<br/>
Abs10.Angriff/Belagerung von Hauptstädten = 500.000$<br/>
Abs11.Ausbruch aus dem Gefängnis = 100.000$<br/>
Abs12.Illegaler Fahrzeugbesitz 100.000$ Strafe. Fahrzeug wird eingezogen.<br/>
Abs13.Gefängnisausbruch = 100.000$<br/>
<b>Auf all diese Vergehen ist eine Gefängnisstrafe ausgesetzt!<br/><br/><br/>


<b>Paragraph 6. Polizeispezifische Vergehen<br/><br/>
Abs1. Versuchter Diebstahl eines Polizeifahrzeugs = 15.000$<br/>
Abs2. Diebstahl von Polizeifahrzeugen = 50.000$<br/>
Abs3. Beschuss auf Polizei/Beamte/Eigentum = 100.000$ + Gefängnis<br/>
Abs4. Töten eines Polizisten = 200.000$ + Gefängnis<br/>
Abs5. Betreten der pol.Sperrzone = 20.000$<br/>
Abs6. Belästigung / Beleidung eines Polizisten = 10.000$ <br/>
Abs7. Nicht befolgen einer pol. Anordnung = 25.000$<br/>
Abs8. Widerstand gegen die Staatsgewalt = 30.000$<br/>
Abs9. Fahrerflucht vor der Polizei = 30.000$ <br/>
Abs10.Zerstörung von Polizeieigentum = 30.000$ <br/><br/>

<b> Andere hier nicht aufgeführte Straftaten werden bitte nach <br/>eigenem Ermessen erhoben. Ggf. einen ranghöreren Beamten hinzuziehen.<br/><br/>

<b>Bussgeldkatalog Update: 17.10.2014 by Cookie<br/><br/>
"
]
];



player createDiaryRecord ["five",
[
"Five-0",
"
Five-0 entspricht dem Sicherheitsdienst. In erster Linie ist der Five-0 dafür da auf Anforderung den Zivilisten oder Rebellen - kostenfrei - Schutz vor anderen Rebellen zu bieten. Das betrifft nur und ausschließlich Warentransporte oder Geleitschutz. Five-0 ist keine Gang der man einen Krieg aufzwingen kann. Jedes Scharmützel gegen oder mit Five-0 führt nicht zu Racheakten Seitens Five-0. Five-0 wird nur zur Kriminalitätsbekämpfung Aktiv auf Wunsch der Polizei und auch nur für diesen einen Vorgang. Wer zu Kampfhandlungen unaufgefordert hinzukommt muss damit rechnen in die Schusslinie zu geraten.Five-0 wird geführt von [5-0] Jethro Demon
"
]
];

player createDiaryRecord ["five",
[
"Five-0 MUSS",
"
Immer die Erlaubnis der Polizei haben um in Polizeihandlungen einzugreifen.<br/>
Immer auf der Gesetztestreuen Seite bleiben.<br/>
Ein Auftrag ist ein Auftrag ist ein Auftrag.<br/>
Die Markierung [5-0] Im Namen tragen.<br/>
Spätestens nach jedem Schusswechsel die Polizei via SMS oder TS informieren und/oder hinzuziehen.<br/>
Zu Kopfgeldjagd ein offizielles polizeiliches Mandat erhalten.<br/>
Jeder Polizeiaktion Unterstüzung gewähren (hiermit sind Checkpoints usw. gemeint).<br/>
Die Quarantänezone im Süden Sichern.<br/>

"
]
];

player createDiaryRecord ["five",
[
"Five-0 SOLLTE",
"
Immer auf das RP des Gegenüber eingehen. Ausnahmen sind hier möglich!<br/>
Immer freundlich und zuvorkommend sein.<br/>
Den Respekt vor jedem Spieler waren.<br/>
"
]
];

player createDiaryRecord ["five",
[
"Five-0 DARF",
"
Als Five-0 alle LEGALEN Möglichkeiten ausschöpfen um an Geld zu bekommen (Farmen etc.)<br/>
Permanent seine Dienstfahrzeuge benutzen und Dienstwaffen tragen(Geholstert)<br/>
ggf.- Diskussion: Die Bank bewachen.<br/>
ggf.- Diskussion: die Tankstellen der Hauptstraße bewachen.<br/>
Jederzeit das Leben von Zivilisten schützen und verteidigen.<br/>
Bei der Polizei Unterstützung erbeten.<br/>
Eigene gestohlene Five-0 Fahrzeuge sprengen.<br/>
Personen im Rahmen einer Polizei/Kopfgeld oder Verteidigungsmaßnahmen Festnehmen und der Polizei übergeben.<br/>
Fahrzeuge im Rahmen vom Kampfhandlungen deaktivieren.<br/>
"
]
];


player createDiaryRecord ["five",
[
"Five-0 DARF NICHT",
"
Verteidigung des Schützlings gegen die Polizei.<br/>
Teilnahme/Parteiergreifung in einem Gangkrieg.<br/>
Gegnerische Fahrzeuge vernichten.<br/>
Rebellenteilnahme an einem Bankraub.<br/>
Das Farmen von illegalen Gegenständen.<br/>
Das Benutzen der Dienstwaffe 3GL gegen Zivilisten/Fusstruppen.<br/>
Straftaten, bei denen keine Zivilisten/Unbeteiligten DIREKT zu Schaden kommen, verfolgen.<br/>
Wiederbeleben von Spielern ohne Aufforderung des Rettungsdienstes oder der Polizei, außer der/die Rettungsdienst/Polizei ist nicht verfügbar.<br/>
Abschleppen von Fahrzeugen, außer auf Anforderung der/dem Polizei/ADAC oder im Notfall*1<br/>
Beschlagnahmen von Fahrzeugen, außer auf Anforderung der Polizei und dies ist auf den aktuellen Einsatz begrenzt.<br/>
Allianzen mit anderen Rebellengruppen eingehen oder bestimmte Gruppen bevorzugt behandeln.<br/>
Der Five-0 SPIELER als PERSON darf NIEMALS sein Five-0 Equipment als Rebell einsetzen.<br/>
Den (Rollenspiel)korrupten Five-0 Spielen.<br/>
Häuser ohne Polizeimandat durchsuchen.<br/>
Banale Straftaten auf eigene Faust verfolgen.*3<br/>
"
]
];
player createDiaryRecord ["five",
[
"Aufnahmebedingungen",
"
Mindestens 18<br/>
Man muss sich das Vertrauen erspielen.<br/>
Der Wunsch muss bekannt sein.<br/>
Five-0 lädt ein, es gibt kein Bewerberverfahren.<br/>
Mindestens Rank 2 in der Altis Polizei sein oder die Zustimmung des Polizeichefs erhalten.<br/>
Waffenkenntnisse.<br/>
Im Teamspeak präsent sein.<br/>
Mindestens 3 Five-0 angehörige Mentoren vorweisen die für ihn Bürgen.<br/>
Die Probezeit und Ausbildung bestehen.<br/>
Persönlich zu Five-0 passen.<br/>
Er muss mit Verantwortung umgehen können.<br/>
"
]
];

player createDiaryRecord ["five",
[
"Anmerkungen",
"
*1 Fahrzeug brennt!<br/><br/>
*2 Alle anderen Fahrzeuge unterliegen den normalen für Zivilisten
geltenden Preisschwankungen.<br/>
Damit gibt es den vielleicht angenommen Vorteil des günstigeren
Farmens nicht.<br/><br/> 
*3 Banale Straftaten<br/>
- Geschwindigkeitsüberschreitungen<br/>
- Fahrzeugdiebstahl<br/>
- Fliegen unter 150 Meter über Städten<br/>
"
]
];



player createDiaryRecord ["serverrules",
[
"Allgemeines",
"
Roleplay:<br/><br/>
- Dies ist ein Rollenspielserver, verhalte dich so!<br/>
- Dein toter Hamster tut uns leid, aber er ist KEIN Grund für einen Kampf.<br/>
- Arschloch sein kann Roleplay sein, ist aber schwer - bedenke dies!<br/>
- Fairness ist hier wichtig!<br/>
- Die Regeln gelten für alle gleich und sind KEINE Auslegungssache!<br/><br/>
Transport von Fahrzeugen:<br/><br/>
-das Heben bzw der Transport von Fahrzeugen mittels Helikoptern ist strengstens verboten. Wird dies beobachtet dürfen die Cops sofort das EMP verwenden bzw darf die Person gekickt werden (ohne Schadensersatz)!<br/>
-Ausnahme hierbei ist der ADAC<br/><br/>
Gangversteck:<br/><br/>
-an jedem Gangversteck muss mit Shoot On Side gerechnet werden.<br/>
-Die Cops haben sich nicht einzumischen, wenn dort mindestens 2 Gangs um das Gangversteck kämpfen.<br/><br/>
Interaktionen mit Cops:<br/><br/>
- Wer sich nicht an die Anweisungen der Polizei hält, muss mit Bußgeldern oder sogar einer Haftstrafe rechnen!<br/>
- Weisen Sie den Polizisten ggf. darauf hin, dass Sie Waffen bei sich führen.<br/>
- Tragen Zivilisten Waffen bei sich, haben sie diese sofort zu senken oder wegzustecken.<br/>
- Zivilisten dürfen, an einem Checkpoint, ohne Angabe von Gründen von der Polizei durchsucht werden.<br/>
- Wer illegale Substanzen/Waffen bei sich trägt, läuft Gefahr bestraft und/oder verhaftet zu werden.<br/>
- Auch die bloße Androhung von Gewalt gegen die Polizei ist eine Straftat!<br/><br/>

"
]
];


player createDiaryRecord ["serverrules",
[
"Exploits",
"
Exploits<br/><br/>
- Aus dem Gefängnis darf nur durch Abholung per Helikopter oder Zahlen der Kaution entkommen werden.<br/>
  Alles andere ist NICHT erlaubt und kann mit einem Ban bestraft werden!<br/>
- Selbstmord ist KEIN geduldetes Mittel um aus einer Situation zu entkommen!<br/>
- Solltest du unbegründet große Geldsummen von einem Fremden bekommen, melde dies umgehend einem Admin!<br/>
  (Die Admins sehen es sowieso, es dient zu deinem eigenen Schutz!)<br/>
- Sowohl das Spawnen als auch die Benutzung von gehackten Items ist verboten! <br/>
  Sollte dir etwas in der Art auffallen, melde es SOFORT einem Admin!<br/>
- Bug-using ist untersagt! Das Ausnutzen von Bugs ist ein Banngrund!<br/>
- Random oder Vehicle Deathmatch (RDM/VDM) ist verboten! Mehrfache Vergehen dieser Art führen zu einem Bann!<br/><br/>

"
]
];
player createDiaryRecord ["serverrules",
[
"Banngründe",
"
Betrachtet dies als eure einzige Warnung für folgende Fälle.<br/>
- Hacking<br/>
- Cheating<br/>
- Exploiting<br/>
- Drei Kicks führen auch zu einem Bann!<br/>
- Ein bestehender VAC Ban führt zu sofortigem Ausschluss (Automatisiert)<br/>
- Das Überfallen von Spielern während man sich als Polizist ausgibt.<br/>
- Permanente Kopfgeldaktionen auf ein und den selben Spieler.<br/>
- Permanentes Mobbing, Sexuelle Nötigung usw.<br/>
- Falschinformation/Einseitiges Informieren der Admins<br/>
- Diebstahl von ADAC und MEDIC Fahrzeugen<br/>
- Roleplaytrolling (Hamster ist tot, Grillparties, einseitiges Roleplay)<br/>

"
]
];

player createDiaryRecord ["serverrules",
[
"Kommunikationsregeln",
"
Die folgenden Taten können zu einem Bann führen, abhängig von der Sicht der Admins.<br/><br/>

- Der Sidechat darf nur für schriftliche Kommunikation benutzt werden.<br/>
- Das Spammen von einem beliebigen Chat Kanal resultiert in einem Bann.<br/>
- Teamspeak Kanäle sind mit einem Grund da: Cops müssen sich jederzeit in einem Cop Kanal aufhalten.<br/>
- Zivilisten haben in Cop Kanälen nichts zu suchen! Jeder Zivilist welcher einem Cop Kanal joint wird sofort aus dem Kanal entfernt.<br/>
  Wiederholungstäter können gebannt werden.<br/>

"
]
];
player createDiaryRecord ["serverrules",
[
"Random Deathmatching (RDM)",
"
Die Folgenden Taten können zu einem Bann führen, abhängig von der Sicht der Admins.<br/><br/>

- Das Töten eines Mitspielers ohne Roleplay Grund.<br/>
- Cops und Zivilisten dürfen nur in Verbindung mit einem begangenen Verbrechen aufeinander Schießen.<br/>
- Wenn du im Kreuzfeuer eines Gefechts erschossen wirst, zählt dies NICHT als RDM.<br/>
- Jemanden, mit dem Zweck sich selbst zu schützen, zu töten, zählt NICHT als RDM (Notwehr).<br/>
- Einen Spieler zu erschiessen, ohne ihm genügend Zeit zu geben deinen Anweisungen zu folgen, zählt als RDM.<br/>
  Jeder Fall wird von einem oder mehreren Admins beurteilt.<br/><br/>

"
]
];

player createDiaryRecord ["serverrules",
[
"Rollenspiel",
"
- Wir legen Wert auf ausgewogenes echtes Rollenspiel!<br/>
- Die Sirene oder das Blaulicht ist ein Einstieg in ein RP - Halte an oder flüchte - <br/>
  Flucht gilt als Widerstand und kann mit Waffengewalt (Reifen zerschiessen, Nagelbänder usw.) unterbunden werden.<br/>
- Der Polizist muss fragen ob er dich festnehmen/durchsuchen darf. Die direkte Festnahme bei Fahrzeugkontrollen ist verboten!<br/>
  Gib deinem gegenüber genug Zeit mit RP zu reagieren.<br/>
- Überfälle auf die Polizei sind kein RP/LowRP.<br/>
- Behandel auch deine Opfer mit Respekt.<br/>
- Der Sidechat ist kein RP Instrument und gilt als Metagaming.<br/>
- Überfälle sollten möglichst ohne Tote und im Rollenspielkontext stattfinden!<br/>
- Mit Rollenspiel Zeit zu schinden um seine Freunde, nach einer Festnahme, in Position zu bringen zählt als lowRP!<br/>
- Ein Warnschuss ist Grund für aggressives Vorgehen der Polizei.<br/>
- Permanentes Überzahlverhalten ist KEIN Grund für Straffreiheit!<br/>
- Illegale Fahrzeuge sind Kriegsinstrumente und werden von der Polizei so behandelt.
  (Beschuss auf Reifen und co - mit Vorankündigung, dass sie Gesichtet wurden)<br/>
- Verlieren gehört dazu.<br/>
- Erwarte immer angemessene Reaktionen auf Provokationen.<br/>
- Illegale Fahrzeuge in Savezones dürfen von den Cops vernichtet werden, wenn es keinen echten RP Hintergrund dafür gibt!<br/>
- Autodiebstahl ist in Savezones verboten und wird mit Bann bestraft!<br/>
- Jedem Spieler muss genug Zeit gegeben werden (mind. 15 sec) sein Fahrzeug zu Parken oder abzuschliessen!<br/>

"
]
];
player createDiaryRecord["serverrules",
[
"Kampfregeln",
"
- Kämpfe die in Kavala oder Pyrgos starten sind verboten und werden mit KICK oder BANN bestraft!<br/>
  Dies sind die Orte an denen neue Spieler spawnen, die sollt ihr nicht direkt (v)erschrecken!<br/>
- Eine Kampfverlagerung nach Kavala wird geduldet, wenn sie RP-technisch einwandfrei ist (KEINE HAMSTER)!<br/>
- Angriffe auf (Polizei-)HQs oder Bases zeugen nicht von taktischer Finesse sondern sind Selbstmord!<br/>
  Denn jemanden aus dem Polizei-HQ zu befreien und dabei 2 Mitglieder zu verlieren ist kein gutes RP.<br/>
  Angriffe auf Gang-HQs sind immer zum Scheitern verurteilt. Seid clever und wartet bis sie rauskommen.<br/>
  (100m Savezone-Radius beachten!)<br/>
- Gang-HQs sind erklärte Savezones, außer der Kampf verlagert sich wärend einer Aktion da hin. <br/>
- Warnschüße gelten als BESCHUSS!<br/>
- Das absichtliche Zerstören von Fahrzeugen ist verboten.<br/>
- Bei Verfolgungsjagten mit der Polizei ist das Einparken des Fahrzeuges, um illegale Dinge Verschwinden zu lassen, verboten.<br/>

"
]
];
player createDiaryRecord["serverrules",
[
"Polizei vs. Gang",
"
- Angriffe auf Polizei-HQs sind VERBOTEN! Sind Spieler festgenommen worden und im Polizei-HQ festgesetzt ist der Kampf für diese Spieler vorbei!<br/>
  Befreiungsaktionen beschränken damit sich auf den Gefangenentransport oder das Gefängnis!<br/>
- Die Polizei versucht den Kampf immer zu vermeiden, schießt ihr jedoch scharf auf die Polizei, MÜSST ihr mit entsprechender Reaktion rechnen.<br/>
- Warnschüße gelten als BESCHUSS!<br/>
- Verhandelt! Benimm dich als würdest du an deinem Leben hängen!<br/>

"
]
];

player createDiaryRecord ["serverrules",
[
"HQ Raid",
"
Diese Regeln gelten für alle Fraktionen.<br/>
Zeitbegrenzung:<br/>
Die Angreifende Truppe hat genau 45 Minuten Zeit die gegnerische Basis einzunehmen<br/>
Danach darf die Base für 4h nicht angegriffen werden<br/>
<br/>
Ankündigung:<br/>
Vor Raidbeginn MUSS die Gegnerfraktion per SMS Informiert werden.<br/>
"
]
];


player createDiaryRecord ["serverrules",
[
"Zentralbank",
"
- Die Zentralbank ist ein gesperrtes Gebiet für Zivilisten und darf NICHT ohne Genehmigung betreten werden.<br/>
  Jeder der das Gelände unerlaubt betritt wird verhaftet. <br/>
- Im Falle eines Bankraubes wird JEDER Zivilist als Mittäter angesehen und muss mit scharfem Beschuss von Seiten der Polizei rechnen!<br/>
- Im Bereich der Zentralbank herrscht striktes Flugverbot!<br/>
- Der Bankraub ist erst möglich, wenn mindestens 6 Polizisten im Dienst sind.<br/>
- Ein Bankraub hat für die Polizei die höchste Priorität! Im Falle eines Bankraubes rücken alle verfügbaren Einheiten aus, um diesen zu verhindern.<br/>
- Im Rahmen eines Banküberfalls darf jeder Polizist die Respawnregel EINMAL ignorieren und erneut am Banküberfall teilnehmen.<br/>

"
]
];

player createDiaryRecord ["serverrules",
[
"Tankstellenraub",
"
Ein Tankstellenraub ist immer mit auch eine Bedrohungsituation gegenüber dem Tankstellenmitarbeiter.<br/> 
Die Polizei wird hier abwägen ob du bereits ein bekannter, schießwütiger und vorbestrafter Straftäter bist oder ob man dich auch mit RP mitteln zur Flucht oder zur Aufgabe zwingen kann<br/>

"
]
];


player createDiaryRecord ["serverrules",
[
"Rebellengebiete",
"
Es gibt keine Rebellengebiete auf dieser Insel<br/> 
Auf eine Clanbasis ist kein Rebellengebiet.<br/>
Die Polizei wird die Schwarzmärkte und Clanbases nicht ohne Grund betreten.<br/>
"
]
];
player createDiaryRecord["serverrules",
[
"Gangregeln",
"
Gang Politik:<br/><br/>
Politik zwischen den Organisationen ist sehr wichtig für das Leben auf unserem Inselstaat.<br/>
<br/><br/>
Jede Organisation muss einen Head Commander bzw. Diplomaten und Stlv. Diplo haben.<br/>
Die Identität des Diplomaten muss nach außen hin bekannt sein, er ist öffentlicher Ansprechpartner für die Bevölkerung / Organisationen und Polizei von Altis.<br/>
<br/><br/>
HC = Head Commander einer Organisation<br/>
Diplo = Diplomat einer Organisation<br/>
<br/><br/>
Alle Organisationen haben die Möglichkeit Ressourcen- und geografische Kriege zu führen.<br/>
Clankriege müssen angemeldet und von den Admins erlaubt werden!
<br/><br/>
In unserem Forum auf http://shadow.g3ce.net findet Ihr alle bekannten Verträge und Bündnisse der Organisationen.<br/>
<br/><br/>
Man unterscheidet zwischen: <br/>
VB = Verteidigungsbündnis<br/>
AUVB/AuVB = Angriffs- und Verteidigungsbündnis<br/>
NAP = Nichtangriffspakt<br/>
Meta = Bündnis aus mehreren Organisationen (Ähnlichkeit zur NATO)<br/>
<br/><br/>
Beispiel:
<br/><br/>
[VB] Schließen zwei Gangs ein VB ab, so muss die Gang sich Gegenseitig bei einem Angriff auf einer der beiden Gangs bei der Verteidigung unterstützen.
<br/><br/>
[AuVB] Wird einer Gang der Krieg erklärt, so wird automatisch allen Gangs im AuVB-Vertrag der Krieg erklärt.
<br/><br/>
[NAP] Einen Nichtangriffspakt abzuschließen bedeutet, dass sich beide Gangs nicht mehr angreifen/überfallen.<br/>
Sollte es doch zu einem Angriff kommen, wird der NAP automatisch hinfällig.
<br/><br/>
[Meta] Eine Meta abzuschließen, bedeutet sich mit anderen Organisationen auf lange Zeit zusammen zu tun, um gemeinsame Ziele zu erreichen.	<br/>
"
]
];
player createDiaryRecord["serverrules",
[
"Scharmützel",
"
1: Respawn bei tot ist verboten<br/>
2: Respawn bei tot ist verboten<br/>
3: Respawn bei tot ist verboten<br/>
4: 15 Min. warte vor Respawnerlaubs. Ausnahmen regeln die Medics!<br/>
5: Widersetzen gegen die Regeln bedeutet kick!<br/>
6: Wiederholtes widersetzen bedeutet Ban!<br/>
7: Ist kein Medic online gelten Regeln 1-6 nicht!<br/>
"
]
];


player createDiaryRecord["serverrules",
[
"Krieg",
"
- Sobald 2 oder mehr Gruppierungen miteinander im Krieg sind, greift die Polizei nur ein,<br/>
  wenn Zivilisten zu Schaden kommen oder das Kriegsgebiet sich auf die Städte ausweitet.<br/><br/>
- Ein Krieg ist kein Grund wahllos andere (nicht beteiligte) Spieler zu töten. <br/>
  Sollten Zivilisten allerdings in ein Feuergefecht geraten und verletzt werden, zählt dies als Eigenverschulden.<br/><br/>
- Auch whärend des Krieges muss der Gegenpartei die Möglichkeit gegeben werden, eine Waffenruhe oder einen Friedensvertrag zu erwirken.<br/><br/>
- Die Dauer eines Krieges darf MAXIMAL 4 Tage betragen und zwischen 2 Kriegen müssen mindestens 2 Tage Waffenruhe liegen.<br/><br/>
- Während des Krieges ist der Aufenthalt in einer Savezone, für die beteiligten Spieler, auf ein absolutes Minimum zu begrenzen!<br/><br/>
  Heißt unterm Strich: Spawnen - Einkaufen - Verschwinden!<br/> Sonst eskort von Polizei, SD o.ä. ! <br/><br/>
- Das Startdatum und der Kriegszustand zwischen den Parteien muss im Forum bekannt gegeben werden (http://shadow.g3ce.net).<br/><br/>
- Während des Krieges sind die Parteien berechtigt mit allen zur Verfügung stehenden Mitteln zu kämpfen. <br/><br/>
- Zerstörte Fahrzeuge/Hubschrauber/Schiffe werden von den Admins NICHT ersetzt. Ihr Spielt Krieg, lebt mit den Konsequenzen. Krieg ist eben teuer!<br/><br/>
- Das zerstören/verkaufen von Fahrzeugen,Schiffen und Hubschraubern ist ein erlaubtes Kampfmittel im Krieg.<br/><br/>
- Während des Krieges dürfen Mitglieder der beteiligten Gangs nicht am RD oder Cop Dienst teilnehmen, sondern müssen als Zivilisten spielen!<br/>
  Der ADAC ist von dieser Regelung nicht betroffen.<br/><br/>
- Jeder Spieler, dessen Gang sich im Krieg befindet, ist verpflichtet einen TAG vor seinem Namen zu tragen um zweifelsfrei als Mitglied dieser Gang identifiziert werden zu können! <br/>
  Bsp.: [XXX] Dosenkohl ist definitiv Mitglied einer Gang, welche sich im Krieg befindet. <br/>
  Es ist ihm daher nicht gestattet sich ohne seinen GangTAG einzuloggen um gefahrlos zu farmen oder seiner Gang zu helfen! <br/><br/>
- Der Krieg ist vorbei, sobald eine Partei aufgibt!<br/><br/>
- Abgesehen von der Respawnregel (15 Minuten), sind im Kriegsfall die RP-Regeln außer Kraft gesetzt (shoot on sight).<br/><br/>
- Wenn eine Partei einer anderen den Krieg erklärt, dürfen sich nur deren Mitglieder beteiligen! Eine Einmischung einer 3.<br/>
  Partei ist nur erlaubt, wenn diese VOR der Kriegserklärung schon ein Bündnis mit einer der Fraktionen eingegangen ist<br/>
  (dabei zählen keine NAPs, sondern NUR Angriffs,- und Verteidigungsbündnisse). <br/><br/>
- Zivilisten dürfen sich nicht in Kriege einmischen!<br/><br/>
- Kriegserklärungen müssen erst von den Admins genehmigt werden, bevor der Krieg stattfinden darf!<br/>
- während des Krieges dürfen die Gangs keine neuen Rekruten einstellen, bzw. dürfen diese sich nicht an der Kriegshandlung beteiligen <br/>

"
]
];
player createDiaryRecord["serverrules",
[
"Savezones",
"
Das absichtliche Sprengen von Fahrzeugen, Raub, Fahrzeugdiebstahl oder das Töten anderer Spieler in oder um die folgenden Gebiete wird mit einem Bann bestraft.<br/><br/>
- Jeder Waffenladen Umkreis 100 Meter<br/>
- Alle Polizeihauptquartiere und Stationen Umkreis 100 Meter<br/>
- Rebellenstützpunkte Umkreis 100 Meter<br/>
- Jeder ATM Umkreis 100 Meter<br/><br/>
- Jede Rebellenbasis<br/><br/>
- Kavala und Pyrgos!<br/>
- ALLE Spawnpunkte im Allgemeinen Umkreis 100 Meter<br/>
<br/>
Befindet man sich in einer Verfolgungsjagd, gelten Safezones nicht als Safezones!<br/>
D. h. das Retten in eine Savezone ist nicht erlaubt! Ein Kampf mit der Polizei endet sobald die Polizei das Kavala HQ oder Pyrgos HQ erreicht!<br/><br/>
"
]
];
player createDiaryRecord ["serverrules",
[
"Straßenverkehrsregeln",
"
Folgende Geschwindigkeitsbegrenzungen gelten in ganz Altis:<br/>
-Marktplatz: 30km/h<br/>
-Innerorts: 50km/h<br/>
-Ausserorts: 100km/h<br/>
-Highway: 130km/h<br/><br/><br/>
Abseits der Wege und Straßen zu fahren ist illegal und wir gefahndet.<br/><br/>
Bei Nebel, Dämmerung oder Nachts muss das Licht eingeschaltet werden, egal ob Boden- oder Luftfahrzeuge. <br/><br/>
Kollisionslichter anzuschalten ist Pflicht für alle Fraktionen! <br/><br/>
Es gelten die normalen Vorfahrtsregeln, d.h. Hauptstraßen oder rechts-vor-links beachten.<br/><br/>
Über Städten oder HQs darf mit dem Helicopter nicht gehovert werden. Die Fluggrenze liegt bei 150m. <br/><br/>
Das Landen und Starten vom zivilen Landeplatz ist hierbei ausgenommen. <br/>
"
]
];
player createDiaryRecord ["serverrules",
[
"Waffen",
"

Legale Waffen für Zivilisten sind:<br/><br/>
- Rook<br/>
- SDAR 9mm<br/>
- Sting 9mm
- PDW2000<br/><br/>
Jede andere Waffe ist illegal!<br/><br/>
Zivilisten ist es nicht erlaubt innerhalb einer Stadt eine Waffe offen zu tragen.<br/><br/>
Zivilisten können außerhalb von Städten legale Waffen tragen, doch sollten sie auf Nachfrage bereit sein, dem Polizisten ihre Lizenzen zu zeigen.<br/><br/>
"
]
];
player createDiaryRecord ["serverrules",
[
"Verhalten Rebel City",
"
- RDM ist auch hier nicht erlaubt! <br/>
<br/>
- Illegale Handlungen wie Raub, Geiselnahme, Schusswechsel, etc. müssen im RP-Stil begründet werden! <br/>
- Je schlimmer diese Tat ist desto ´besser` und glaubwürdiger muss dieser Grund/Geschichte sein. <br/>
- Das missachten dieser Regeln wird mit einem sofortigen Time-Ban (24h) geahndet! <br/>
- Wichtig!!!  Wie der Name schon sagt, ist es eine Stadt in Hand der Rebellen. <br/>
<br/>
- Zivilisten müssen mit Überfällen etc. rechnen und betreten das Gebiet auf eigene Gefahr. <br/>
- Der 5-0 darf und kann euch Schutz geben. Kann aber genauso wie Zivilisten überfallen werden. <br/>
- Alle Morde und Überfälle in Rebel City werden durch die Polizei verfolgt und bestraft. <br/>
<br/>
- Grundsätzlich wird die Polizei nicht in Rebel City bei Verbrechen einschreiten. <br/>
- Somit können alle Waffen offen getragen werden. Ferner dürfen hier illegale Fahrzeuge gefahren werden. <br/>
- Wird ein Rebell nach einer Straftat verfolgt und flüchtet nach/in Rebel City, darf die Polizei dort die Verfolgung fortsetzen. <br/>
<br/>"
]
];

player createDiaryRecord ["serverrules",
[
"Verhalten bei einem Bankraub:",
"
- Die Zentralbank ist Sperrgebiet fuer Zivilisten, ausser wenn sie eine gueltige Authorisierung fuer das Betreten erhalten haben. <br/>
- Das heisst betretet ihr das Gebiet, wird von einem Bankueberfall ausgegangen und ihr habt die Konsequenzen zu tragt. <br/>
<br/>
- Die Polizei geht auf Kontaktaufnahmen der Bankräuber ein, bevor sie das Feuer eröffnet! <br/>
- Luftfahrzeuge, die ueber die Zentralbank fliegen koennen, erhalten keine Warnung der Polizei und werden direkt beschossen. <br/>
- Falls es keine Alternative gibt, darf gegen die Bankraeuber toedliche Gewalt eingesetzt werden. <br/>
- Zivilisten, diese die Polizei daran hindern den Bankraub zu vereiteln werden als Komplizen angesehen. <br/>
- Zivilisten, die sich während eines Banküberfalls auf oder um das Gelände der Bank befinden werden als Komplizen angesehen. <br/>
- Banküberfälle sind nur möglich wenn sich min.6 Polizisten und 5-0 Menber auf dem Server befinden! <br/>

<br/>"
]
];

player createDiaryRecord ["serverrules",
[
"Geiselnahmen",
"
- Geiselnahmen müssen grundsätzlich einen RP-Hintergrund haben und dürfen nicht mit der Geisel abgesprochen sein, um Geld von der Polizei zu ergattern!<br/>
- RP heißt nicht Gebt uns Geld, oder die Geisel stirbt! Seid kreativ und lasst euch was einfallen!<br/>
- Beide Parteien (Cops und Geiselnehmer) sollten sich gegenseitig Zugeständnisse machen! Beharrt nicht stur auf eurem Standpunkt, das ruiniert das RP! <br/>
- Um ein Zufriedenstellendes RP für ALLE Beteiligten zu ermöglichen, sollte sich an Abmachungen während der Geiselnahme grundlegend gehalten werden!<br/>
  Wir wollen schließlich ein geiles RP und nicht 3 Stunden Diskussion wegen einer halben Stunde Geiselnahme!
<br/>"
]
];


player createDiaryRecord ["serverrules",[
"Illegale Güter",
"
Illegale Güter sind:<br/>
- Zigarren<br/>
- Kokain<br/>
- Heroin<br/>
- Mariuhana<br/>
- Methamphitamine (Meth) <br/>
- Schnaps (Moonshine)<br/>
- Sprengköpfe<br/>
- Schildkrötenfleisch<br/>
- Bolzenschneider<br/>
- Minen und Sprengsätze<br/>
- Dietriche<br/>
- Goldbarren<br/>
- Zipties (Kabelbinder) <br/>
- Ausrüstung von Polizei, ADAC und Rettungsdienst <br/>
- ALLE Waffen aus dem Rebellenshop<br/>
"
]
];

player createDiaryRecord ["serverrules",[
"Illegale Fahrzeuge",
"
Für Zivilisten sind die folgenden Fahrezeuge illegal zu führen:<br/><br/>
- Ifrit<br/>
- Polizeifahrzeuge<br/>
- Geländewagen-HMG<br/>
- Strider<br/>
- Alle ADAC und Rettungsdienstfahrzeuge<br/>
"
]
];

player createDiaryRecord ["acts",[
"Die Acts",
"
Die Acts dienen zur Verbrechensbekämpfung und gleichen jeweils einem Ausnahmezustand für eine bestimmte Gruppe oder für die ganze Insel. Diese Acts sind zeitlich begrenzt und müssen vor Inkrafttreten angekündigt werden!<br/>
"
]
];

player createDiaryRecord ["acts",[
"Altis Gang-Act",
"
Eine Gang kann bei mehrfachen schweren Verbrechen gesammelt als illegale Vereinigung angesehen werden.<br/>
Dadurch gerät jedes Gangmitglied in das Visier der Ermittler.<br/>
Die Polizei hat damit das Recht die Gangmitlieder zu Überwachen, Festzunehmen und zu durchsuchen (dies gilt auch für andere anwesende Rebellen!).<br/>

Hinweis:<br/><br/>
!Eine Gang kann Maximal für 48 Stunden mit dem Gang-Act belegt werden, dieser Act ist im Forum anzukündigen!<br/>
"
]
];

player createDiaryRecord ["acts",[
"Altis Patriot Act",
"
Dieser Act ermächtigt die Polizei die GPS Tracker der Fahrzeuge und Handies zu überwachen und das allgemeine Versammlungsrecht, sowie die Redefreiheit zu unterbinden.

Hinweis:<br/><br/>
Muss auf der Webseite angekündigt werden. Begründung ist nötig (z.B. Polizeiwaffen im Umlauf, Massenmorde, Einbruchserien, Terroranschläge).<br/>
Die Überwachung der Kommunikation(SMS) zwischen den Spielern unterliegt der Geheimhaltung, ein Spieler wird nicht darüber Informiert.<br/>
Die Überwachung der Kommunikation dauert maximal 48 Stunden und darf nur auf 12 Stunden rückwirkend ausgeweitet werden.<br/><br/>
"
]
];


player createDiaryRecord ["vehicle",
[
"Autos",
"
Quadbike<br/>
-Mietpreis: 2.500$<br/>
-Kaufpreis: 3.750$<br/>
-Kofferraum: 35 Slots<br/><br/>
Limousine<br/>
-Mietpreis: 9.500$<br/>
-Kaufpreis: 14.250$<br/>
-Kofferraum: 35 Slots<br/><br/>
Geländewagen<br/>
-Mietpreis: 12.500$<br/>
-Kaufpreis: 18.750$<br/>
-Kofferraum: 80 Slots<br/><br/>
SUV<br/>
-Mietpreis: 35.000$<br/>
-Kaufpreis: 52.500$<br/>
-Kofferraum: 50 Slots<br/><br/>
Sport-Limousine<br/>
-Mietpreis: 49.500$<br/>
-Kaufpreis: 74,250$<br/>
-Kofferraum: 45 Slots<br/><br/>
Truck<br/>
-Mietpreis: 40.000$<br/>
-Kaufpreis: 60.000$<br/>
-Kofferraum: 100 Slots<br/><br/>
Truckboxer<br/>
-Mietpreis: 60.000$<br/>
-Kaufpreis: 90.000$<br/>
-Kofferraum: 150 Slots<br/><br/>
<br/>
"
]
];
player createDiaryRecord ["vehicle",
["LKWs",
"
Zamak-Transport<br/>
-Mietpreis: 375.000$<br/>
-Kaufpreis: 562.500$<br/>
-Kofferraum: 200 Slots<br/><br/>
Zamak-Abgedeckt<br/>
-Mietpreis: 400.000$<br/>
-Kaufpreis: 600.000$<br/>
-Kofferraum: 250 Slots<br/><br/>
Tempest-Transport<br/>
-Mietpreis: 3.524.000$<br/>
-Kaufpreis: 5.286.000$<br/>
-Kofferraum: 520 Slots<br/><br/>
Hemtt-Treibstoff (nur Öl) <br/>
-Mietpreis: 4.224.000$<br/>
-Kaufpreis: 6.336.000$<br/>
-Kofferraum: 1.000 Slots<br/><br/>
Tempest-Abgedeckt<br/>
-Mietpreis: 4.750.000$<br/>
-Kaufpreis: 7.125.000$<br/>
-Kofferraum: 620 Slots<br/><br/>
Hemtt-Transport<br/>
-Mietpreis: 5.224.000$<br/>
-Kaufpreis: 7.836.000$<br/>
-Kofferraum: 620 Slots<br/><br/>
Hemtt-Abgedeckt <br/>
-Mietpreis: 6.524.000$<br/>
-Kaufpreis: 9.786.000$<br/>
-Kofferraum: 880 Slots<br/><br/>
Hemtt-Container<br/> 	
-Mietpreis: 10.000.000$<br/>
-Kaufpreis: 15.000.000$<br/>
-Kofferraum: 1080 Slots<br/><br/>
Tempest-Gerät<br/>	
-Mietpreis: 36.450.000$<br/>
-Kaufpreis: 54.675.000$<br/>	
-Kofferraum: 850 Slots<br/>
"
]
];

player createDiaryRecord ["vehicle",
["Helicopter",
"
Hummingbird MH-9<br/> 
-Mietpreis: 1.325.000$<br/>
-Kaufpreis: 1.987.500$<br/>
-Kofferraum: 30 Slots<br/><br/>
Hummingbird (geschlossen) MH-900 <br/>
-Mietpreis: 1.325.000$<br/>
-Kaufpreis: 1.987.500$<br/>
-Kofferraum: 30 Slots <br/><br/>
Orca<br/> 
-Mietpreis: 2.500.000$<br/>
-Kaufpreis: 3.750.000$<br/>
-Kofferraum: 60 Slots<br/><br/>
Mohawk CH-49<br/> 
-Mietpreis: 6.325.000$<br/>
-Kaufpreis: 9.487.500$<br/>
-Kofferraum: 375 Slots<br/><br/>
Huron CH-67 <br/>
-Mietpreis: 16.000.000$<br/>
-Kaufpreis: 24.000.000$<br/>
-Kofferraum: 560 Slots <br/>
"
]
];

player createDiaryRecord ["vehicle",
["Boote",
"
Rettungsboot <br/>	
-Mietpreis: 5.000$<br/>
-Kaufpreis: 7.500$<br/>
-Kofferraum: 45 Slots<br/><br/>
Motorboot<br/>	
-Mietpreis: 22.000$<br/>	
-Kaufpreis: 33.000$<br/>	
-Kofferraum: 85 Slots<br/><br/>
SDV U-Boot<br/>	
-Mietpreis: 4.000.000$<br/>
-Kaufpreis: 6.000.000$<br/>
-Kofferraum: 25 Slots<br/><br/>

"
]
];



player createDiaryRecord ["controls",
[
"Controls",
"
Personen:<br/>
-ergeben: Shift+T<br/>
-hocken: X <br/>
-hinlegen: Y<br/>
-Waffe holstern: Shift+H<br/>
-Waffe rausholen: F<br/>
-Waffe senken: 2xStrg<br/>
-niederschlagen: Shift+G<br/>
-übersteigen: V<br/>
-sprinten: Shift<br/>
-springen: Shift+Space<br/>
-Sachen aufheben: linke Windowstaste<br/>
-GPS: rechte Strg+M<br/>
-Nachtsichtgerät: N<br/>
-Kabelbinder: Shift+O<br/><br/>
Farmen, Werkzeuge:<br/>
-Spitzhacke: Q<br/>
-Farmen: linke Windowstaste, Scrollmenü<br/>
-Dietriche, Bolzenschneider, Benzin: Z-Menü<br/><br/>
Fahrzeuge:<br/>
-öffnen,schließen: U<br/>
-Kofferraum(z,t-Inventar): T<br/>
-Inventar(i): Scrollmenü<br/>
-Licht an, aus: L, Scrollmenü<br/>
-Hupen: Linksklick<br/>
-Werkzeugkasten benutzen: linke Windowstaste<br/><br/>
Helis:<br/>
-Kollisionslichter: Scroll<br/>
Boote:<br/>
-zurück ins Wasser schieben: linke Windowstaste<br/><br/>
Haus:<br/>
-kaufen,verkaufen: linke Windowstaste<br/>
-Lagerboxen: (i) Scrollen an der Kiste<br/>
(z,t) T am oder im Haus<br/>
-Tür auf-, zuschließen: U<br/>
-Garagen: linke Windowstaste<br/><br/>
"
]
];
