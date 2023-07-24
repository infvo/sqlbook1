# Vragen Sectie 3

:::{mchoice} Vraag 1
:correct: b

Wat is de juiste volgorde in voorrang bij de onderstaande operatoren?

* `NOT, OR, AND`
* `NOT, AND, OR`
* `AND, NOT, OR`
* `AND, OR, NOT`
:::

:::{mchoice} Vraag 2
:correct: a

Bekijk onderstaande query. Er is één afdeling zonder manager (Contracting). Komt Contracting onderaan (als laatste) of bovenaan (als eerste) bij deze query?

```SQL
SELECT department_name, manager_id
FROM departments
ORDER BY manager_id;
```

* bovenaan
* onderaan
* de query geeft een foutmelding
:::

 

:::{mchoice} Vraag 3
:correct: a

Bekijk onderstaande query. Gaat deze query werken?

```SQL
SELECT last_name, department_id
FROM employees
WHERE department_id = 60 OR department_id = 90 OR department_id = 110;
```

* ja
* nee, je mag maar één keer `OR` gebruiken in de `WHERE`
:::
 
:::{mchoice} Vraag 4
:correct: c

Kijk naar onderstaande twee query's. Het verschil zit hem in de haakjes. Krijg je hetzelfde resultaat denk je? Komt Hunold met beide query's tevoorschijn.

```SQL
SELECT employee_id, last_name
FROM employees
WHERE employee_id >= 200 AND last_name LIKE 'F%' OR last_name LIKE 'H%'
ORDER BY achternaam;
```
 
```SQL
SELECT employee_id, last_name
FROM employees
WHERE employee_id >= 200 AND (last_name LIKE 'F%' OR last_name LIKE 'H%')
ORDER BY achternaam;
```

* ja, het resultaat is hetzelfde
* nee, het resultaat is niet hetzelfde
* de query geeft een foutmelding
    * "achternaam" is niet gedefinieerd als kolom

:::


:::{mchoice} Vraag 5
:correct: a

Kijk naar onderstaande query. Hoe wordt een datumveld gesorteerd? Is dat van oud naar nieuw of van nieuw naar oud?

**VRAAG: hier staat geen ORDER BY? dan kun je toch niets over de volgorde zeggen?**
 
```SQL
SELECT last_name, hire_date
FROM employees
WHERE job_id = 'AD_VP';
```

* van oud naar nieuw
* van nieuw naar oud
:::
 

:::{mchoice} Vraag 6
:correct: a

Kijk naar onderstaande query. Zal deze query werken?

```SQL
SELECT first_name, job_id
FROM employees
ORDER BY last_name;
```

* ja, dat werkt
* nee, want je kunt niet sorteren op een veld dat niet op de bovenste regel is genoemd
:::

 

:::{mchoice} Vraag 7
:correct: b

Bekijk onderstaande query. Er is één afdeling zonder manager (Contracting). Komt Contracting onderaan (als laatste) of bovenaan (als eerste) bij deze query?

```SQL
SELECT department_name, manager_id
FROM departments
ORDER BY manager_id DESC;
```

* bovenaan
* onderaan
* de query geeft een foutmelding

:::
 

:::{mchoice} Vraag 8
:correct: a

Bekijk onderstaande query. Wordt er gesorteerd of werkt de query niet?

```SQL
SELECT last_name achternaam, job_id baan, salary salaris
FROM employees
ORDER BY 3 DESC, job_id, achternaam;
```
 
* Er wordt gesorteerd op salaris van hoog naar laag, daarna op job_id en tenslotte alfabetisch op achternaam.
* De query werkt niet. Je mag niet sorteren op verschillende manieren zoals hier is gedaan.
* De query werkt niet. ORDER BY 3 is een verkeerde sortering.
 
:::
 

:::{mchoice} Vraag 9
:correct: a

`ORDER BY ASC` is precies hetzelfde als `ORDER BY`.

* ja, dat is exact hetzelfde
* nee, met ORDER BY ASC komen de NULLS bovenaan in plaats van onderaan

:::

 

:::{mchoice} Vraag 10
:correct: a

Bekijk onderstaande query. Zal deze query werken op deze manier? Met andere woorden: kun je sorteren door gebruik te maken van een alias?

```SQL
SELECT last_name AS achternaam
FROM employees
ORDER BY achternaam;
```
 
* ja
* nee

:::