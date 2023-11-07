# Vragen 1



:::{mchoice} Vraag 1
:correct: a

De afkorting van SQL staat voor Standard Query Language.

* juist
    * juist
* onjuist
    * onjuist
:::
 
:::{mchoice} Vraag 2
:correct: b

Hoe toon je alle rijen van de tabel employees? (zie: {ref}`select`)

* `SELECT all FROM employees;`
* `SELECT * FROM employees;`
* `DESC employees;`
* `DESC * FROM employees;`
:::

:::{mchoice} Vraag 3
:correct: d

Hoe zien de koppen van de kolommen er uit bij de volgende query?

```sql
SELECT bear_id bears, color AS Color, age "Age"
FROM animals;
```
 
* `bears, color, Age`
* `BEARS, Color, AGE`
* `BEARS, color, Age`
* `bears, Color, Age`
 
:::

:::{mchoice} Vraag 4
:correct: a

Niet alle `employees` hebben een `commission_pct`. 
Bij de werknemers die geen `commission_pct` hebben, staat er dan `NULL` in de kolom. 
Zal onderstaande query werken of niet?

```sql
SELECT last_name, job_id, salary, commission_pct, salary / commission_pct
FROM employees;
```

* ja
    * je deelt door `NULL`, niet door 0; resultaat is `NULL`.
* nee, delen door 0 mag niet
    * je deelt door `NULL`, niet door 0; resultaat is `NULL`.
:::

:::{mchoice} Vraag 5
:correct: a

Hoe toon je de eerste tien rijen van de tabel employees?

* `SELECT * FROM employees LIMIT 10;`
* `SELECT * FROM employees<10;`
* `SELECT FROM employees LIMIT 10;`
* `SELECT 10 FROM employees;`

:::

:::{mchoice} Vraag 6
:correct: a

(a.) De volgorde van de kolommen in een tabel van een relationele database doet er niet toe.

(b.) De volgorde van de rijen in een tabel van een relationele database doet er niet toe.

Wat is er waar?

* zowel a als b zijn juist
* zowel a als b zijn onjuist
* a is juist en b is onjuist
* a is onjuist en b is juist

:::
 

:::{mchoice} Vraag 7
:correct: a

Neem de volgende query:

```sql
SELECT first_name AS voornaam
FROM employees;
```

In deze query kun je het woordje `AS` op de bovenste regel gewoon weglaten en dan krijg je exact hetzelfde resultaat.

* waar
* onwaar

:::
 

:::{mchoice} Vraag 8
:correct: d

Wat is de basis waarmee data wordt opgeslagen in een relationele database?

* een kolom
* een rij
* een cel
* een tabel
:::

:::{mchoice} Vraag 9
:correct: a

Welk getal komt er uit deze query?

```sql
SELECT 8 / 4 + 2 * 10;
```
 
* 22
    * Zie Rekenkundige operatoren.
* 40
    * is fout want je moet eerst delen en vermenigvuldigen en dan pas optellen.
* De query werkt niet.
    * De query werkt wel. In SQL kun je rekenen zonder een tabelnaam te noemen op een FROM regel. Het is ook niet nodig FROM dual te gebruiken.
* Net zo vaak als er rijen zijn in de tabel wordt de uitkomst van de berekening gegeven.
    * Er is geen tabel gekozen op de FROM regel, dus de uitkomst wordt maar één keer gegeven.
:::

:::{mchoice} Vraag 10
:correct: b

Een primary key verwijst naar een foreign key in een andere tabel.

* juist
    * een foreign key verwijst naar een primary key in een andere tabel; het omgekeerde hoeft niet het geval te zijn.
* onjuist
    * een foreign key verwijst naar een primary key in een andere tabel; het omgekeerde hoeft niet het geval te zijn.
:::
