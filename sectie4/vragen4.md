# Vragen Sectie 4


:::{mchoice} Vraag 1
:correct: b

Op welke regel kun je geen tekstfunctie gebruiken, dus functies zoals LOWER en UPPER?

* SELECT
* FROM
* WHERE
* ORDER BY

:::
 
:::{mchoice} Vraag 2
:correct: a

Met welke functie kun je een gedeelte van een string laten zien vanaf een bepaalde positie met eventueel een bepaalde lengte?

* SUBSTR
* CONCAT
* DISTINCT
* DESCRIBE

:::
 
:::{mchoice} Vraag 3
:correct: c

Met welke functie kun je twee kolommen aan elkaar plakken?

* SUBSTR
* REPLACE
* CONCAT
* DISTINCT

:::
 
:::{mchoice} Vraag 4
:correct: d

Hoe heet de centrale dummy tabel met één rij waar je gebruik van kunt maken om functies te testen?

* CEILING
* FLOOR
* SYSBASE
* DUAL

:::
 
:::{mchoice} Vraag 5
:correct: a

Neem onderstaande query. Hoeveel rijen zullen er worden geretourneerd?
 
```SQL
SELECT COUNT(department_id)
FROM employees;
```
 
* alle rijen van de tabel employees (20)
* alle rijen van de tabel employees waarvan de rijen van de kolom department_id niet de waarde NULL hebben (19)
* alle rijen van de tabel employees waarvan de rijen van de kolom department_id niet de waarde NULL hebben en waarbij de dubbele waarden niet meetellen  (7)
* alle rijen inclusief de rijen waarvan de kolom department_id de waarde NULL hebben, waarbij de dubbele waarden niet meetellen (8)

:::
 
:::{mchoice} Vraag 6
:correct: a

Als je `COUNT` in combinatie met `DISTINCT` gebruikt, tellen de uitkomsten met als waarde NULL niet mee.

* waar
* niet waar

:::
 
:::{mchoice} Vraag 7
:correct: a

Wat haal je op met onderstaande query?

```SQL
SELECT last_name achternaam, DAY(hire_date) AS dag
FROM employees
WHERE last_name = 'King';
```
 

* a
* b
* c
*  Deze query werkt niet.

:::
 
:::{mchoice} Vraag 8
:correct: a

Wat is de uitkomst van deze query?

 
```SQL
SELECT CEILING(ROUND(5.435, 2))
```
 

* 5
* 5,43
* 5.44
* 6

:::
 
:::{mchoice} Vraag 9
:correct: a

Wat moet er staan op de plaats van de puntjes in deze query?

 
```SQL
SELECT last_name AS achternaam, hire_date AS in_dienst, DATE_ADD(hire_date, ...) AS einde_proeftijd
FROM employees
WHERE last_name = 'Varga';
```

* INTERVAL 2 YEAR
* INTERVAL 2 YEARS
* ADD 2 YEAR
* ADD 2 YEARS

:::
 
:::{mchoice} Vraag 10
:correct: a

Wat moet er staan op de plaats van de puntjes in deze query?
 
```SQL
SELECT last_name AS achternaam, hire_date AS in_dienst_gekomen, TIMESTAMPDIFF(YEAR, hire_date, ...) AS jaren_in_dienst
FROM employees
WHERE last_name = 'Varga';
```

* SYSDATE
* NOW
* zowel SYSDATE als NOW zullen werken
* geen van bovenstaande antwoorden is juist

:::