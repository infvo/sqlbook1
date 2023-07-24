# Vragen sectie 5



:::{mchoice} Vraag 1
:correct: a

Het datatype INTEGER is een eindige verzameling van gehele getallen. Kan een integer negatief zijn? Is bijvoorbeeld -1 een INTEGER of niet?

* ja
* nee
 
:::

:::{mchoice} Vraag 2
:correct: a

Hoort het getal 0 bij de verzameling van gehele getallen? Is 0 een INTEGER?

* ja
* nee
 
:::

:::{mchoice} Vraag 3
:correct: a

Een UNSIGNED INTEGER kan niet negatief zijn.

* juist
* onjuist
 
:::

:::{mchoice} Vraag 4
:correct: a

Welke van onderstaande twee statements is juist?

* een CHAR heeft een vaste lengte
* een VARCHAR heeft een vaste lengte
 
:::

:::{mchoice} Vraag 5
:correct: b

Met DATE() kun je ook uren, minuten en seconden weergeven.

* ja
* nee
 
:::

:::{mchoice} Vraag 6
:correct: a

Hoe noem je conversie van een datatype die automatisch plaatsvindt?

* impliciete conversie
* expliciete conversie
 
:::

:::{mchoice} Vraag 7
:correct: a

Welke functies kun je gebruiken om datatypes om te zetten van het ene type naar het andere type?

* CAST of CONVERT
* CAST of COALESCE
* CONVERT of COALESCE

:::

:::{mchoice} Vraag 8
:correct: c

Welke functies kun je gebruiken als je NULL wil vervangen door 0?

* CAST en COALESCE
* IFNULL en CAST
* IFNULL en COALESCE
 
:::

:::{mchoice} Vraag 9
:correct: a

Wat hoort er te staan op de plaats van de puntjes?

```SQL
SELECT last_name,
... department_id
 WHEN 90 THEN 'Management'
 WHEN 80 THEN 'Sales'
 WHEN 60 THEN 'It'
 ELSE 'Other department'
END AS department
FROM employees;
```
 

* CASE
* COALESCE
* IF
* CAST

:::

:::{mchoice} Vraag 10
:correct: a

Bekijk onderstaande query. Slechts vier employees hebben een commission_pct. Bij de rest is de inhoud NULL. Wat zal de uitkomst zijn in de kolommen vier en vijf? In kolom vier vermenigvuldig je en in kolom vijf deel je.

```SQL
SELECT last_name
,      salary
,      commission_pct
,      salary * commission_pct
,      salary / commission_pct 
FROM employees;
```

* Zowel in de vierde als de vijfde kolom zal de uitkomst NULL zijn voor de werknemers die geen commission_pct hebben.
* Zowel in de vierde als de vijfde kolom zal de uitkomst 0 zijn voor de werknemers die geen commission_pct hebben.
* Er komt een foutmelding want in de vijfde kolom deel je door 0 en dat mag niet.

:::
