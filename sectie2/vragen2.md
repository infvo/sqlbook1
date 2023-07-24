# Vragen 2

:::{mchoice} Vraag 1
:correct: d

Hoe kun je dubbele waarden voorkomen als je alle `job_id`'s wil tonen van de tabel `employees`?

* `SELECT DESC job_id FROM employees;`
* `SELECT LIMIT job_id FROM employees;`
* `SELECT CONCAT job_id FROM employees;`
* `SELECT DISTINCT job_id FROM employees;`

:::

:::{mchoice} Vraag 2
:correct: d

Wat zal deze query tonen?

```SQL
SELECT employee_id, CONCAT(first_name last_name), email
FROM employees;
```
 
* Het employee_id, de voornaam en achternaam in hoofdletters en het e-mailadres.
* Het employee_id, de voornaam en achternaam aan elkaar en het e-mailadres.
    * bijna goed: er is nog een komma nodig tussen de argumenten van `CONCAT`
* Het employee_id, de voornaam en achternaam met een spatie ertussen en het e-mailadres.
* De query werkt niet. Je krijgt een foutmelding.
    * er is een komman nodig tussen de argumenten van `CONCAT`
:::

:::{mchoice} Vraag 3
:correct: d

```SQL
SELECT CONCAT(first_name, ' ', last_name) AS Volledige Naam
FROM employees;
```

Wat wordt er getoond in de *kolomnaam* van de uitvoer?

* `volledige naam`
* `Volledige Naam`
* `VOLLEDIGE NAAM`
* De query werkt niet. Je krijgt een foutmelding.
    * een alias-naam met spaties moet altijd tussen dubbele aanhalingstekens staan: "Volledige Naam"

:::

:::{mchoice} Vraag 4:
:correct: c

Je wil graag alle salarissen tonen tussen 10000 en 24000. Wat zou je gebruiken?

* `LIKE`
* `IS NULL`
* `BETWEEN ... AND`
* `IN`

:::

:::{mchoice} Vraag 5
:correct: c

Je wil graag alle rijen tonen die aan een bepaald patroon voldoen. Wat zou je gebruiken?

* `IN`
* `SIMILAR`
* `LIKE`
* `ALMOST`

:::

:::{mchoice} Vraag 6
:correct: a

Met welke `WHERE` wordt het getal 10 niet gekozen?

* `WHERE hours <> 10`
* `WHERE hours <= 10`
* `WHERE hours BETWEEN 10 AND 20`
* `WHERE hours IN(8, 9, 10)`
:::

:::{mchoice} Vraag 7:
:correct: b

Als je `BETWEEN ... AND` gebruikt, maakt het niet uit in welke volgorde je de waarden invoert. Zo zal bijvoorbeeld `BETWEEN 8 AND 10` hetzelfde resultaat opleveren als `BETWEEN 10 AND 8`.

* waar
* niet waar

:::

 

 

:::{mchoice} Vraag 8:
:correct: b

Welke twee symbolen kun je gebruiken als joker als je zoekt naar patronen met LIKE?

* `&` (ampersand) en `%` (procent)
* `%` (procent) en `_ `(underscore)
* `$` (dollar) en `#` (hashtag)
* `@` (apenstaart) en `&` (ampersand)

:::

 

 

:::{mchoice} Vraag 9
:correct: a

Bij deze query vraag je de achternaam op en het commission_pct van de personeelsleden die een commission_pct hebben. Daarna deel je het salaris door commission_pct. Wat is het resultaat van deze query? Met andere woorden: mag je delen door `NULL`?

```SQL
SELECT last_name, salary, commission_pct, salary / commission_pct
FROM employees
WHERE commission_pct IS NOT NULL;
```
 
* ja, delen door `NULL` is toegestaan
* nee, delen door `NULL` is niet toegestaan
:::

:::{mchoice} Vraag 10:
:correct: a

`DESCRIBE employees;` levert exact hetzelfde resultaat op als `DESC employees;`.

* waar
* niet waar
:::
