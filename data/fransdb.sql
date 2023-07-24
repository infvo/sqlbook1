-- Tabelstructuur voor tabel `countries`
--

DROP TABLE IF EXISTS countries;
DROP TABLE IF EXISTS `departments`;
DROP TABLE IF EXISTS `employees`;
DROP TABLE IF EXISTS `jobs`;
DROP TABLE IF EXISTS `job_grades`;
DROP TABLE IF EXISTS `job_history`;
DROP TABLE IF EXISTS `locations`;
DROP TABLE IF EXISTS `regions`;


CREATE TABLE IF NOT EXISTS countries (
  country_id TEXT NOT NULL DEFAULT '',
  country_name TEXT DEFAULT NULL,
  region_id INT DEFAULT NULL
);

--
-- Gegevens worden geëxporteerd voor tabel `countries`
--

INSERT INTO countries (country_id, country_name, region_id) VALUES
('CA', 'Canada', 2),
('DE', 'Germany', 1),
('UK', 'United Kingdom', 1),
('US', 'United States of America', 2);

--
-- Tabelstructuur voor tabel `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `department_id` INT NOT NULL DEFAULT '0',
  `department_name` TEXT DEFAULT NULL,
  `manager_id` INT DEFAULT NULL,
  `location_id` INT DEFAULT NULL
);

--
-- Gegevens worden geëxporteerd voor tabel `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`, `manager_id`, `location_id`) VALUES
(10, 'Administration', 200, 1700),
(20, 'Marketing', 201, 1800),
(50, 'Shipping', 124, 1500),
(60, 'IT', 103, 1400),
(80, 'Sales', 149, 2500),
(90, 'Executive', 100, 1700),
(110, 'Accounting', 205, 1700),
(190, 'Contracting', NULL, 1700);

--
-- Tabelstructuur voor tabel `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `employee_id` INT NOT NULL DEFAULT '0',
  `first_name` TEXT DEFAULT NULL,
  `last_name` TEXT DEFAULT NULL,
  `email` TEXT DEFAULT NULL,
  `phone_number` TEXT DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `job_id` TEXT DEFAULT NULL,
  `salary` NUMERIC DEFAULT NULL,
  `commission_pct` NUMERIC DEFAULT NULL,
  `manager_id` INT DEFAULT NULL,
  `department_id` INT DEFAULT NULL,
  `bonus` TEXT DEFAULT NULL
);

--
-- Gegevens worden geëxporteerd voor tabel `employees`
--

INSERT INTO `employees` (`employee_id`, `first_name`, `last_name`, `email`, `phone_number`, `hire_date`, `job_id`, `salary`, `commission_pct`, `manager_id`, `department_id`, `bonus`) VALUES
(100, 'Steven', 'King', 'SKING', '515.123.4567', '1987-06-17', 'AD_PRES', '24000.00', NULL, NULL, 90, NULL),
(101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '1989-09-21', 'AD_VP', '17000.00', NULL, 100, 90, NULL),
(102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '1993-01-13', 'AD_VP', '17000.00', NULL, 100, 90, NULL),
(103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '1990-01-03', 'IT_PROG', '9000.00', NULL, 102, 60, NULL),
(104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '1991-05-21', 'IT_PROG', '6000.00', NULL, 103, 60, NULL),
(107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '1999-02-07', 'IT_PROG', '4200.00', NULL, 103, 60, NULL),
(124, 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', '1999-11-16', 'ST_MAN', '5800.00', NULL, 100, 50, NULL),
(141, 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', '1995-10-17', 'ST_CLERK', '3500.00', NULL, 124, 50, NULL),
(142, 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', '1997-01-29', 'ST_CLERK', '3100.00', NULL, 124, 50, NULL),
(143, 'Randall', 'Matos', 'RMATOS', '650.121.2874', '1998-03-15', 'ST_CLERK', '2600.00', NULL, 124, 50, NULL),
(144, 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', '1998-07-09', 'ST_CLERK', '2500.00', NULL, 124, 50, NULL),
(149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', '2000-01-29', 'SA_MAN', '10500.00', '0.20', 100, 80, '1500'),
(174, 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', '1996-05-11', 'SA_REP', '11000.00', '0.30', 149, 80, '1700'),
(176, 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', '1998-03-24', 'SA_REP', '8600.00', '0.20', 149, 80, '1250'),
(178, 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', '1999-05-24', 'SA_REP', '7000.00', '0.15', 149, NULL, NULL),
(200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', '1987-09-17', 'AD_ASST', '4400.00', NULL, 101, 10, NULL),
(201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', '1996-02-17', 'MK_MAN', '13000.00', NULL, 100, 20, NULL),
(202, 'Pat', 'Fay', 'PFAY', '603.123.6666', '1997-08-17', 'MK_REP', '6000.00', NULL, 201, 20, NULL),
(205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', '1994-06-07', 'AC_MGR', '12000.00', NULL, 101, 110, NULL),
(206, 'William', 'Gietz', 'WGIETZ', '515.123.8181', '1994-06-07', 'AC_ACCOUNT', '8300.00', NULL, 205, 110, NULL);

--
-- Tabelstructuur voor tabel `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `job_id` TEXT NOT NULL DEFAULT '',
  `job_title` TEXT DEFAULT NULL,
  `min_salary` INT DEFAULT NULL,
  `max_salary` INT DEFAULT NULL
);

--
-- Gegevens worden geëxporteerd voor tabel `jobs`
--

INSERT INTO `jobs` (`job_id`, `job_title`, `min_salary`, `max_salary`) VALUES
('AC_ACCOUNT', 'Public Accountant', 4200, 9000),
('AC_MGR', 'Accounting Manager', 8200, 16000),
('AD_ASST', 'Administration Assistant', 3000, 6000),
('AD_PRES', 'President', 20000, 40000),
('AD_VP', 'Administration Vice President', 15000, 30000),
('IT_PROG', 'Programmer', 4000, 10000),
('MK_MAN', 'Marketing Manager', 9000, 15000),
('MK_REP', 'Marketing Representative', 4000, 9000),
('SA_MAN', 'Sales Manager', 10000, 20000),
('SA_REP', 'Sales Representative', 6000, 12000),
('ST_CLERK', 'Stock Clerk', 2000, 5000),
('ST_MAN', 'Stock Manager', 5500, 8500);

--
-- Tabelstructuur voor tabel `job_grades`
--

CREATE TABLE IF NOT EXISTS `job_grades` (
  `grade_level` TEXT DEFAULT NULL,
  `lowest_sal` INT DEFAULT NULL,
  `highest_sal` INT DEFAULT NULL
);

--
-- Gegevens worden geëxporteerd voor tabel `job_grades`
--

INSERT INTO `job_grades` (`grade_level`, `lowest_sal`, `highest_sal`) VALUES
('A', 1000, 2999),
('B', 3000, 5999),
('C', 6000, 9999),
('D', 10000, 14999),
('E', 15000, 24999),
('F', 25000, 40000);

-- Tabelstructuur voor tabel `job_history`
--

CREATE TABLE IF NOT EXISTS `job_history` (
  `employee_id` INT NOT NULL DEFAULT '0',
  `start_date` TEXT NOT NULL DEFAULT '0000-00-00',
  `end_date` TEXT NOT NULL DEFAULT '0000-00-00',
  `job_id` TEXT NOT NULL,
  `department_id` INT NOT NULL
);

--
-- Gegevens worden geëxporteerd voor tabel `job_history`
--

INSERT INTO `job_history` (`employee_id`, `start_date`, `end_date`, `job_id`, `department_id`) VALUES
(101, '1989-09-21', '1993-10-27', 'AC_ACCOUNT', 110),
(101, '1993-10-28', '1997-03-15', 'AC_MGR', 110),
(102, '1993-01-13', '1998-07-24', 'IT_PROG', 60),
(114, '1998-03-24', '1999-12-31', 'ST_CLERK', 50),
(122, '1999-01-01', '1999-12-31', 'ST_CLERK', 50),
(176, '1998-03-24', '1998-12-31', 'SA_REP', 80),
(176, '1999-01-01', '1999-12-31', 'SA_MAN', 80),
(200, '1987-09-17', '1993-06-17', 'AD_ASST', 90),
(200, '1994-07-01', '1998-12-31', 'AC_ACCOUNT', 90),
(202, '1996-02-17', '1999-12-19', 'MK_REP', 20);

--
-- Tabelstructuur voor tabel `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `location_id` INT NOT NULL DEFAULT '0',
  `street_address` TEXT DEFAULT NULL,
  `postal_code` TEXT DEFAULT NULL,
  `city` TEXT DEFAULT NULL,
  `state_province` TEXT DEFAULT NULL,
  `country_id` TEXT DEFAULT NULL
);

--
-- Gegevens worden geëxporteerd voor tabel `locations`
--

INSERT INTO `locations` (`location_id`, `street_address`, `postal_code`, `city`, `state_province`, `country_id`) VALUES
(1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'),
(1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US'),
(1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'),
(1800, '460 Bloor St. W.', 'ON M5S 1X8', 'Toronto', 'Ontario', 'CA'),
(2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK');

--
-- Tabelstructuur voor tabel `regions`
--

CREATE TABLE IF NOT EXISTS `regions` (
  `region_id` INT NOT NULL DEFAULT '0',
  `region_name` TEXT DEFAULT NULL
);

--
-- Gegevens worden geëxporteerd voor tabel `regions`
--

INSERT INTO `regions` (`region_id`, `region_name`) VALUES
(1, 'Europe'),
(2, 'Americas'),
(3, 'Asia'),
(4, 'Middle East and Africa');

--
-- Indexen voor tabel `countries`
--
-- ALTER TABLE `countries`
--  ADD PRIMARY KEY (`country_id`);

--
-- Indexen voor tabel `departments`
--
-- ALTER TABLE `departments`
--  ADD PRIMARY KEY (`department_id`), ADD KEY `dept_location_ix` (`location_id`);

--
-- Indexen voor tabel `employees`
--
-- ALTER TABLE `employees`
--  ADD PRIMARY KEY (`employee_id`), ADD UNIQUE KEY `emp_email_uk` (`email`), ADD KEY `emp_department_ix` (`department_id`), ADD KEY `emp_job_ix` (`job_id`), ADD KEY `emp_manager_ix` (`manager_id`), ADD KEY `emp_name_ix` (`last_name`,`first_name`);

--
-- Indexen voor tabel `jobs`
--
-- ALTER TABLE `jobs`
--  ADD PRIMARY KEY (`job_id`);

--
-- Indexen voor tabel `job_history`
--
-- ALTER TABLE `job_history`
--  ADD PRIMARY KEY (`employee_id`,`start_date`), ADD KEY `jhist_department_ix` (`department_id`), ADD KEY `jhist_employee_ix` (`employee_id`), ADD KEY `jhist_job_ix` (`job_id`);

--
-- Indexen voor tabel `locations`
--
-- ALTER TABLE `locations`
--  ADD PRIMARY KEY (`location_id`), ADD KEY `loc_city_ix` (`city`), ADD KEY `loc_country_ix` (`country_id`), ADD KEY `loc_state_province_ix` (`state_province`);

--
-- Indexen voor tabel `regions`
--
-- ALTER TABLE `regions`
--  ADD PRIMARY KEY (`region_id`);
