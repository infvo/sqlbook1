# Vragen Sectie 7

:::{mchoice}
:correct: b

Hoe goed is jouw Nederlands? Wat is het meervoud van query?

* queries
* query's

:::

:::{mchoice}
:correct: b

Bekijk de volgende query.

 
```SQL
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >
    (SELECT hire_date
     FROM employees
     WHERE last_name = 'Vargas');
```
 

Deze query bestaat uit twee query's. Welk gedeelte is nu de subquery?

* de bovenste (niet tussen haakjes)
* de onderste (tussen haakjes)

:::

:::{shortanswer}

Wat is het verschil tussen een subquery en een inner query?

:::

:::{mchoice}
:correct: a

Geef een andere naam voor main query.

* outer query
* inner query
* subquery

:::

:::{mchoice}
:correct: a

Een inner query staat tussen haakjes.

* ja
* nee

:::

:::{mchoice}
:correct: a

IN en NOT IN zijn multiple-row vergelijkingsoperatoren.

* juist
* onjuist 
:::

:::{mchoice}
:correct: a

Een subquery kan geen `ORDER BY` hebben.

* juist
* onjuist

:::

:::{mchoice}
:correct: a

Je kunt meerdere subquery's gebruiken binnen één statement.

* juist
* onjuist

:::

:::{mchoice}
:correct: a

Bekijk deze query.

```SQL
SELECT last_name, YEAR(hire_date)
FROM employees
WHERE YEAR(hire_date) =
 (SELECT YEAR(hire_date)
  FROM employees
  WHERE department_id = 90);
```

Wat zal het resultaat zijn?

* alle employees van afdeling 90 worden getoond met het jaar van hun hire_date
* je krijgt een foutmelding

:::

:::{mchoice}
:correct: a

Wat is het resultaat van deze query?
 
```SQL
SELECT last_name
FROM employees
WHERE department_id =
    (SELECT department_id
     FROM employees
     WHERE last_name='Grant');
```

* je krijgt de naam Grant als enige
* je krijgt alle namen van de employees die op dezelfde afdeling werken als Grant
* je krijgt een lege set terug (0 rijen)
* je krijgt een foutmelding, de query werkt niet

 
:::

 

 

 

 

 

 

 

 

 


