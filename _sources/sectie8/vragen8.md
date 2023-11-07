# Vragen sectie 8

:::{mchoice}
:correct: b

Bekijk onderstaande query en het resultaat.

```SQL
SELECT last_name, commission_pct
FROM employees
WHERE last_name = 'Zlotkey' OR last_name = 'Hartstein';
```
 
![](figs/clip0270.png)

Wat zal dan het resultaat zijn van deze query?

```SQL
SELECT ROUND(AVG(commission_pct),2)
FROM employees
WHERE last_name = 'Zlotkey' OR last_name = 'Hartstein';
```
 
* 0.10
    * Groepsfuncties negeren NULL waarden. Die tellen dus niet mee en het gemiddelde is dan 0.20.
* 0.20
    * Groepsfuncties negeren NULL waarden. Die tellen dus niet mee en het gemiddelde is dan 0.20.
*  NULL. Als er in één rij het resultaat NULL is, dan is het gemiddelde van die rijen ook NULL.
    * Groepsfuncties negeren NULL waarden. Die tellen dus niet mee en het gemiddelde is dan 0.20.
*  De query werkt niet, je mag niet delen door NULL.
    * Groepsfuncties negeren NULL waarden. Die tellen dus niet mee en het gemiddelde is dan 0.20.

:::

 
:::{mchoice}
:correct: d

Bekijk de onderstaande query's:

query a:

```SQL
SELECT department_id AS afdeling, MAX(salary) AS max_salaris
FROM employees
GROUP BY afdeling
WHERE department_id =! 90
HAVING COUNT(*) > 1
ORDER BY max_salaris DESC;
```

query b:

```SQL
SELECT department_id AS afdeling, MAX(salary) AS max_salaris
FROM employees
WHERE department_id =! 90
HAVING COUNT(*) > 1
GROUP BY afdeling
ORDER BY max_salaris DESC;
```

query c:
 
```SQL
SELECT department_id AS afdeling, MAX(salary) AS max_salaris
FROM employees
GROUP BY afdeling
HAVING COUNT(*) > 1
WHERE department_id =! 90
ORDER BY max_salaris DESC;
```

Welke query zal werken?

* query a 
* query b
* query c
* Ze werken geen van alle.
    * Ze werken geen van alle. De volgorde is niet goed. De juiste volgorde is als volgt:
      `SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY` 

:::

:::{mchoice}
:correct: d

Wat moet er staan op de laatste regel bij de drie puntjes om te sorteren?

```SQL 
SELECT department_id AS afdeling, MAX(salary) AS maximum_salaris
FROM employees
GROUP BY department_id
ORDER BY ...;
```

* `MAX(salary)`
* `maximum_salaris`
* `2`
* Alle drie genoemde mogelijkheden die hierboven genoemd zijn, zullen exact hetzelfde resultaat opleveren.

:::
 
 
:::{mchoice}
:correct: a

Het is mogelijk een WHERE te gebruiken in combinatie met GROUP BY.

* waar
* niet waar
:::
  
:::{shortanswer}  
Noem vijf groepsfuncties.

:::

 
:::{mchoice}
:correct: d
 
Hoeveel rijen worden er geretourneerd met onderstaande query.

```SQL 
SELECT SUM(*)
FROM employees;
```

* Eén.
* Net zoveel als er employees zijn.
* Het aantal employees min de employee die geen department_id heeft.
* De query werkt niet.
    * Je kunt employees niet sommeren (bij elkaar optellen).
:::

:::{mchoice}
:correct: c

Wat wordt er geretourneerd met onderstaande query?

```SQL 
SELECT MIN(last_name)
FROM employees;
```
 

* Alle achternamen die met de letter 'A' beginnen.
* Alle achternamen die met de letter 'Z' beginnen.
* Eén achternaam, namelijk de achternaam die helemaal bovenaan komt als je sorteert op alfabet.
* Eén achternaam, namelijk de achternaam die helemaal onderaan komt als je sorteert op alfabet.
* De query werkt niet. Je kunt MIN niet gebruiken voor alfanumerieke velden.
:::
 

:::{mchoice}
:correct: a

Gaat onderstaande query werken?

```SQL
SELECT MIN(salary), MAX(salary), AVG(salary), COUNT(salary), SUM(salary)
FROM employees;
```

* Ja, je mag meerdere groepsfuncties op de SELECT regel gebruiken.
* Nee, je mag niet meer dan één groepsfunctie op de SELECT regel gebruiken.

:::

:::{mchoice}
:correct: a

Mag je een *alias* gebruiken in de `GROUP BY`? Werkt bijvoorbeeld een query zoals onderstaand?

```SQL 
SELECT department_id AS afdeling, COUNT(department_id)
FROM employees
GROUP BY afdeling;
```

* ja
* nee

:::

:::{mchoice}
:correct: b

Wat toon je met deze query?

```SQL
SELECT last_name, hire_date
FROM employees
WHERE hire_date =
 (SELECT MAX(hire_date)
  FROM employees);
```
 
* De last_name en de hire_date van de werknemer die het eerst in dienst is gekomen.
* De last_name en de hire_date van de werknemer die het laatst in dienst is gekomen.
* Alle achternamen van de werknemers met de datum waarop ze in dienst zijn gekomen.
* De query werkt niet, want je kunt MIN en MAX niet gebruiken met datatypes.

:::