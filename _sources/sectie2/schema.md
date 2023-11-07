# Schema

Om een database goed te kunnen gebruiken, moet je weten welke gegevens er in opgeslagen zijn, en hoe deze opgeslagen zijn. 
Het *schema* van een relationele database geeft aan welke tabellen er zijn, wat de namen en de types van de kolommen zijn, wat de *keys* zijn van een tabel, en welke indexen er zijn voor een tabel.

Het is vaak handig om het schema van een database grafisch weer te geven, zoals hieronder voor de voorbeeld-database die we gebruiken.

FIGUUR - schema van de voorbeeld-database.

## DESCRIBE

In standaard-SQL kun je het schema van tabel `mytable` opvragen met behulp van `DESCRIBE mytable;`.
In MySQL geeft dit bijvoorbeeld het volgende resultaat:

## 

In SQLite heb je hiervoor geen speciale SQL-constructie, maar je gebruikt het feit dat de tabel-beschrijvingen zelf in de tabel `sqlite_schema` opgeslagen zijn: 

FIGUUR - uitvoer van query naar de `department`-tabel.

Merk op dat het schema van de database in een database in het DMBS opgeslagen is.
Als je toch een DMBS voorhanden hebt, is het handig om ook dergelijke *metadata* (data die data beschrijft) in een database op te slaan.
