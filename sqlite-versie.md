# SQLite versie

Deze SQL-cursus is onderdeel van het materiaal bij het keuzethema "Databases".
Het oorspronkelijke open source (CC-BY) materiaal is ontwikkeld door Frans Peeters, in opdracht van SLO.
Dit materiaal is te vinden via:

* 

Deze versie is is omgezet van MySQL naar SQLite, in het Jupyter Book formaat, door Eelco Dijkstra.
Bij deze versie horen Jupyter Notebooks (Basthon Notebooks) waarin de opdrachten uitgewerkt kunnen worden:
je hebt daarbij geen afzonderlijk database-systeem nodig.

Omdat de behandeling van datum/tijd-waarden in SQLite nogal verschilt van die in MySQL, is het oorspronkelijke MySQL hoofdstuk gehandhaafd, naast de aangepaste SQLite versie. 

## De voorbeeld-database

De voorbeeld-database ("employees") is afgeleid van het "HR" deel van de Oracle voorbeeld-database.
De oorspronkelijke database is te vinden op GitHub:

* https://github.com/oracle-samples/db-sample-schemas

Een beschrijving van deze database vind je hier: 

* https://docs.oracle.com/en/database/oracle/oracle-database/21/comsc/preface.html
* https://docs.oracle.com/en/database/oracle/oracle-database/21/comsc/introduction-to-sample-schemas.html
* https://docs.oracle.com/en/database/oracle/oracle-database/21/comsc/schema-diagrams.html

Een aanpassing van deze Oracle-database naar MySQL is ook te vinden op GitHub:

* https://www.andreinc.net/2013/10/05/hr-schema-for-mysql-and-maria-db
* https://github.com/nomemory/hr-schema-mysql
* https://github.com/simonkrenger/hr-schema-mysql


De Oracle database heeft een open source licentie ("BY"); de licentie vind je hier:

* https://github.com/oracle-samples/db-sample-schemas/blob/main/LICENSE.txt

```
Copyright (c) 2023 Oracle and/or its affiliates. All rights reserved.

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```

De MySQL-versie is aangepast aan SQLite door Eelco Dijkstra.