# SELELCT 

>`SELECT FROM`

```sql

SELECT first_name, last_name
FROM employees;

SELECT *
FROM employees;

```
Results :-



| first\_name | last\_name |
| :--- | :--- |
| Georgi | Facello |
| Bezalel | Simmel |
| Parto | Bamford |
| Chirstian | Koblick |
| Kyoichi | Maliniak |
| Anneke | Preusig |
| Tzvetan | Zielinski |
| Saniya | Kalloufi |
| Sumant | Peac |
| Duangkaew | Piveteau |
| Mary | Sluis |
| Patricio | Bridgland |
| Eberhardt | Terkki |
| Berni | Genin |
| Guoxiang | Nooteboom |
| Kazuhito | Cappelletti |
| Cristinel | Bouloucos |
| Kazuhide | Peha |
___

>`SELECT WHERE`
```sql
SELECT * FROM employees
WHERE first_name = 'Denis'
```

| emp\_no | birth\_date | first\_name | last\_name | gender | hire\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 11688 | 1958-09-04 | Denis | Coullard | F | 1994-10-29 |
| 15083 | 1958-11-24 | Denis | Nicolson | M | 1994-03-02 |
| 15824 | 1957-07-28 | Denis | Schwabacher | F | 1988-02-14 |
| 17116 | 1961-02-03 | Denis | Mullainathan | F | 1998-12-23 |
| 17224 | 1955-04-06 | Denis | Back | M | 1985-07-29 |
| 18031 | 1957-06-15 | Denis | Munke | F | 1987-06-26 |
| 18121 | 1953-08-26 | Denis | Stanfel | M | 1990-05-21 |
| 18187 | 1965-01-08 | Denis | Falster | M | 1989-10-12 |
| 18772 | 1957-05-17 | Denis | Hempstead | F | 1986-08-05 |
| 19798 | 1962-12-22 | Denis | Schmezko | M | 1986-10-30 |


___

>AND
```sql
SELECT *
FROM employees
WHERE first_name = 'Denis'
  and gender = 'M';

```
| emp\_no | birth\_date | first\_name | last\_name | gender | hire\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 15083 | 1958-11-24 | Denis | Nicolson | M | 1994-03-02 |
| 17224 | 1955-04-06 | Denis | Back | M | 1985-07-29 |
| 18121 | 1953-08-26 | Denis | Stanfel | M | 1990-05-21 |
| 18187 | 1965-01-08 | Denis | Falster | M | 1989-10-12 |
| 19798 | 1962-12-22 | Denis | Schmezko | M | 1986-10-30 |
| 23004 | 1955-05-21 | Denis | Besselaar | M | 1995-01-17 |
| 27522 | 1960-06-09 | Denis | Duclos | M | 1993-12-06 |
| 28741 | 1954-05-10 | Denis | Marrakchi | M | 1990-02-07 |
| 32288 | 1964-08-26 | Denis | Rossi | M | 1990-12-12 |
| 33817 | 1962-12-28 | Denis | Gulik | M | 1985-08-23 |


___

>OR

```SQL

SELECT *
FROM employees
WHERE first_name = 'Denis'
  OR first_name = 'Elvis';

```
| emp\_no | birth\_date | first\_name | last\_name | gender | hire\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 10030 | 1958-07-14 | Elvis | Demeyer | M | 1994-02-17 |
| 11050 | 1952-09-23 | Elvis | Katiyar | M | 1986-05-06 |
| 11688 | 1958-09-04 | Denis | Coullard | F | 1994-10-29 |
| 12870 | 1960-03-24 | Elvis | Pfau | F | 1990-04-09 |
| 13620 | 1956-10-31 | Elvis | Dolinsky | M | 1985-06-12 |
| 14434 | 1954-07-08 | Elvis | Maginnis | M | 1987-11-27 |
| 15083 | 1958-11-24 | Denis | Nicolson | M | 1994-03-02 |
| 15824 | 1957-07-28 | Denis | Schwabacher | F | 1988-02-14 |
| 16500 | 1953-02-02 | Elvis | Servieres | M | 1985-07-15 |
| 17116 | 1961-02-03 | Denis | Mullainathan | F | 1998-12-23 |

___
>OPERARTOR PRECEDENCE

```sql

SELECT *
FROM employees
WHERE first_name = 'Denis'
  AND (gender = 'M' OR gender = 'F')

```
| emp\_no | birth\_date | first\_name | last\_name | gender | hire\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 11688 | 1958-09-04 | Denis | Coullard | F | 1994-10-29 |
| 15083 | 1958-11-24 | Denis | Nicolson | M | 1994-03-02 |
| 15824 | 1957-07-28 | Denis | Schwabacher | F | 1988-02-14 |
| 17116 | 1961-02-03 | Denis | Mullainathan | F | 1998-12-23 |
| 17224 | 1955-04-06 | Denis | Back | M | 1985-07-29 |
| 18031 | 1957-06-15 | Denis | Munke | F | 1987-06-26 |
| 18121 | 1953-08-26 | Denis | Stanfel | M | 1990-05-21 |
| 18187 | 1965-01-08 | Denis | Falster | M | 1989-10-12 |
| 18772 | 1957-05-17 | Denis | Hempstead | F | 1986-08-05 |
| 19798 | 1962-12-22 | Denis | Schmezko | M | 1986-10-30 |

___
>IN
```sql
SELECT *
FROM employees
WHERE first_name IN ('Mark', 'Nathan', 'Cathie')
```
| emp\_no | birth\_date | first\_name | last\_name | gender | hire\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 10135 | 1956-12-23 | Nathan | Monkewich | M | 1988-02-19 |
| 10415 | 1957-11-12 | Mark | Coorg | M | 1993-10-25 |
| 10428 | 1957-06-25 | Cathie | Brlek | M | 1992-06-04 |
| 11095 | 1961-12-31 | Nathan | Flowers | M | 1994-05-28 |
| 11503 | 1953-08-01 | Nathan | Picht | F | 1993-01-25 |
| 12859 | 1963-11-19 | Cathie | Katiyar | M | 1994-05-17 |
| 13284 | 1959-02-15 | Cathie | Pews | F | 1990-04-17 |
| 13390 | 1954-06-18 | Nathan | Hutton | M | 1989-07-24 |
| 13517 | 1961-02-22 | Mark | Setlzner | M | 1988-01-02 |
| 14153 | 1959-05-25 | Nathan | Kamble | F | 1987-06-26 |

___



___
>NOT IN
```sql
SELECT *
FROM employees
WHERE first_name NOT IN ('Mark', 'Nathan', 'Cathie')
```
| emp\_no | birth\_date | first\_name | last\_name | gender | hire\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 10001 | 1953-09-02 | Georgi | Facello | M | 1986-06-26 |
| 10002 | 1964-06-02 | Bezalel | Simmel | F | 1985-11-21 |
| 10003 | 1959-12-03 | Parto | Bamford | M | 1986-08-28 |
| 10004 | 1954-05-01 | Chirstian | Koblick | M | 1986-12-01 |
| 10005 | 1955-01-21 | Kyoichi | Maliniak | M | 1989-09-12 |
| 10006 | 1953-04-20 | Anneke | Preusig | F | 1989-06-02 |
| 10007 | 1957-05-23 | Tzvetan | Zielinski | F | 1989-02-10 |
| 10008 | 1958-02-19 | Saniya | Kalloufi | M | 1994-09-15 |
| 10009 | 1952-04-19 | Sumant | Peac | F | 1985-02-18 |
| 10010 | 1963-06-01 | Duangkaew | Piveteau | F | 1989-08-24 |

___



___
>
```sql
SELECT *
FROM employees
WHERE first_name LIKE ('Mar%')
```
| emp\_no | birth\_date | first\_name | last\_name | gender | hire\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 10011 | 1953-11-07 | Mary | Sluis | F | 1990-01-22 |
| 10069 | 1960-09-06 | Margareta | Bierman | F | 1989-11-05 |
| 10109 | 1958-11-25 | Mariusz | Prampolini | F | 1993-06-16 |
| 10137 | 1959-07-30 | Maren | Hutton | M | 1985-02-18 |
| 10144 | 1959-06-17 | Marla | Brendel | M | 1985-10-14 |
| 10196 | 1954-01-27 | Marc | Hellwagner | M | 1994-11-16 |
| 10232 | 1956-03-11 | Marko | Auria | F | 1992-06-04 |
| 10249 | 1954-06-10 | Marie | Boreale | M | 1991-12-08 |
| 10275 | 1961-10-22 | Marek | Luck | F | 1987-09-08 |
| 10287 | 1963-11-28 | Marie | Pietracaprina | M | 1992-12-28 |


>
```sql
SELECT *
FROM employees
WHERE first_name LIKE ('%Mar')

```
| emp\_no | birth\_date | first\_name | last\_name | gender | hire\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 10029 | 1956-12-13 | Otmar | Herbst | M | 1985-11-20 |
| 10266 | 1958-02-24 | Sukumar | Rassart | M | 1990-05-25 |
| 10402 | 1953-07-23 | Volkmar | Ebeling | M | 1987-01-02 |
| 10442 | 1955-09-09 | Volkmar | Unno | M | 1988-03-13 |
| 10608 | 1955-07-11 | Adhemar | Talmor | F | 1986-05-25 |
| 10653 | 1953-06-16 | Otmar | Feinberg | M | 1987-04-30 |
| 10873 | 1952-07-09 | Sukumar | Wegerle | M | 1994-03-23 |
| 11260 | 1963-06-11 | Ingemar | Schade | M | 1993-09-29 |
| 11513 | 1954-07-16 | Otmar | Mahnke | M | 1986-03-27 |
| 12010 | 1956-09-26 | Otmar | Thebaut | F | 1988-11-06 |


>
```sql
SELECT *
FROM employees
WHERE first_name LIKE ('%Mar%')

```
| emp\_no | birth\_date | first\_name | last\_name | gender | hire\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 10011 | 1953-11-07 | Mary | Sluis | F | 1990-01-22 |
| 10029 | 1956-12-13 | Otmar | Herbst | M | 1985-11-20 |
| 10069 | 1960-09-06 | Margareta | Bierman | F | 1989-11-05 |
| 10109 | 1958-11-25 | Mariusz | Prampolini | F | 1993-06-16 |
| 10137 | 1959-07-30 | Maren | Hutton | M | 1985-02-18 |
| 10144 | 1959-06-17 | Marla | Brendel | M | 1985-10-14 |
| 10168 | 1964-09-11 | Dharmaraja | Stassinopoulos | M | 1986-12-06 |
| 10195 | 1963-11-13 | Annemarie | Redmiles | M | 1985-02-15 |
| 10196 | 1954-01-27 | Marc | Hellwagner | M | 1994-11-16 |
| 10232 | 1956-03-11 | Marko | Auria | F | 1992-06-04 |


```sql
SELECT *
FROM employees
WHERE first_name LIKE ('Mar_')

```
| emp\_no | birth\_date | first\_name | last\_name | gender | hire\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 10011 | 1953-11-07 | Mary | Sluis | F | 1990-01-22 |
| 10196 | 1954-01-27 | Marc | Hellwagner | M | 1994-11-16 |
| 10377 | 1954-08-19 | Marl | Grospietsch | M | 1990-05-07 |
| 10415 | 1957-11-12 | Mark | Coorg | M | 1993-10-25 |
| 10532 | 1959-08-31 | Mary | Wossner | F | 1986-05-18 |
| 10921 | 1955-07-20 | Mara | Bahi | F | 1986-07-27 |
| 11457 | 1959-02-06 | Marl | Vesna | M | 1991-02-10 |
| 11821 | 1954-10-18 | Mary | Piazza | F | 1995-12-13 |
| 12264 | 1953-12-30 | Mart | Pagter | M | 1987-07-24 |
| 12334 | 1962-03-08 | Mary | Ertl | F | 1990-03-06 |




___
>BETWEEN AND
```sql
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-1' AND '2000-01-1'
```
| emp\_no | birth\_date | first\_name | last\_name | gender | hire\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 10008 | 1958-02-19 | Saniya | Kalloufi | M | 1994-09-15 |
| 10011 | 1953-11-07 | Mary | Sluis | F | 1990-01-22 |
| 10012 | 1960-10-04 | Patricio | Bridgland | M | 1992-12-18 |
| 10016 | 1961-05-02 | Kazuhito | Cappelletti | M | 1995-01-27 |
| 10017 | 1958-07-06 | Cristinel | Bouloucos | F | 1993-08-03 |
| 10019 | 1953-01-23 | Lillian | Haddadi | M | 1999-04-30 |
| 10020 | 1952-12-24 | Mayuko | Warwick | M | 1991-01-26 |
| 10022 | 1952-07-08 | Shahaf | Famili | M | 1995-08-22 |
| 10024 | 1958-09-05 | Suzette | Pettey | F | 1997-05-19 |
| 10026 | 1953-04-03 | Yongqiao | Berztiss | M | 1995-03-20 |




___
>IS NOT NULL  
```sql
SELECT *
FROM employees
WHERE first_name IS NOT NULL 
```
| emp\_no | birth\_date | first\_name | last\_name | gender | hire\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 10001 | 1953-09-02 | Georgi | Facello | M | 1986-06-26 |
| 10002 | 1964-06-02 | Bezalel | Simmel | F | 1985-11-21 |
| 10003 | 1959-12-03 | Parto | Bamford | M | 1986-08-28 |
| 10004 | 1954-05-01 | Chirstian | Koblick | M | 1986-12-01 |
| 10005 | 1955-01-21 | Kyoichi | Maliniak | M | 1989-09-12 |
| 10006 | 1953-04-20 | Anneke | Preusig | F | 1989-06-02 |
| 10007 | 1957-05-23 | Tzvetan | Zielinski | F | 1989-02-10 |
| 10008 | 1958-02-19 | Saniya | Kalloufi | M | 1994-09-15 |
| 10009 | 1952-04-19 | Sumant | Peac | F | 1985-02-18 |
| 10010 | 1963-06-01 | Duangkaew | Piveteau | F | 1989-08-24 |





___
>IS NULL
```sql
SELECT *
FROM employees
WHERE first_name IS NULL 
```




___
>OTHER OPERATORS
```sql
SELECT *
FROM employees
WHERE hire_date >= '2000-01-1'

SELECT *
FROM employees
WHERE hire_date <= '2000-01-1'


SELECT *
FROM employees
WHERE hire_date <> '2000-01-1'

SELECT *
FROM employees
WHERE hire_date != '2000-01-1'

```
| emp\_no | birth\_date | first\_name | last\_name | gender | hire\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 47291 | 1960-09-09 | Ulf | Flexer | M | 2000-01-12 |
| 60134 | 1964-04-21 | Seshu | Rathonyi | F | 2000-01-02 |
| 72329 | 1953-02-09 | Randi | Luit | F | 2000-01-02 |
| 108201 | 1955-04-14 | Mariangiola | Boreale | M | 2000-01-01 |
| 205048 | 1960-09-12 | Ennio | Alblas | F | 2000-01-06 |
| 222965 | 1959-08-07 | Volkmar | Perko | F | 2000-01-13 |
| 226633 | 1958-06-10 | Xuejun | Benzmuller | F | 2000-01-04 |
| 227544 | 1954-11-17 | Shahab | Demeyer | M | 2000-01-08 |
| 422990 | 1953-04-09 | Jaana | Verspoor | F | 2000-01-11 |
| 424445 | 1953-04-27 | Jeong | Boreale | M | 2000-01-03 |

___



___
>DISTINCT
```sql
SELECT DISTINCT gender
FROM employees;
```
| gender |
| :--- |
| M |
| F |

___



___
>AGGREGADED FUNCTION
```sql
SELECT COUNT(emp_no)
FROM employees;

SELECT COUNT(DISTINCT first_name)
FROM employees;

```

| COUNT\(emp\_no\) |
| :--- |
| 300024 |


| COUNT\(DISTINCT first\_name\) |
| :--- |
| 1275 |

___



___
>ORDER BY ASC/DESC
```sql
SELECT *
FROM employees
ORDER BY first_name


SELECT *
FROM employees
ORDER BY first_name,last_name

```
| emp\_no | birth\_date | first\_name | last\_name | gender | hire\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 11935 | 1963-03-23 | Aamer | Jayawardene | M | 1996-10-26 |
| 13011 | 1955-02-25 | Aamer | Glowinski | F | 1989-10-08 |
| 22279 | 1959-01-30 | Aamer | Kornyak | M | 1985-02-25 |
| 20678 | 1963-12-25 | Aamer | Parveen | F | 1987-03-25 |
| 23269 | 1952-02-15 | Aamer | Szmurlo | M | 1988-05-25 |
| 12160 | 1954-12-11 | Aamer | Garrabrants | M | 1989-09-19 |
| 24404 | 1960-04-21 | Aamer | Tsukuda | M | 1998-12-25 |
| 11800 | 1958-12-09 | Aamer | Fraisse | M | 1990-08-08 |
| 28043 | 1957-07-13 | Aamer | Kroll | F | 1986-05-17 |
| 15332 | 1961-12-29 | Aamer | Slutz | F | 1989-05-19 |


| emp\_no | birth\_date | first\_name | last\_name | gender | hire\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 69256 | 1962-04-14 | Aamer | Anger | M | 1998-03-16 |
| 486584 | 1952-08-12 | Aamer | Armand | M | 1990-09-15 |
| 237165 | 1962-02-23 | Aamer | Azevdeo | F | 1991-06-28 |
| 413688 | 1955-06-26 | Aamer | Azuma | M | 1989-12-10 |
| 281363 | 1956-05-18 | Aamer | Baak | F | 1994-03-10 |
| 242368 | 1959-07-26 | Aamer | Baaleh | F | 1989-08-06 |
| 206549 | 1960-02-24 | Aamer | Baar | M | 1995-06-12 |
| 259089 | 1963-06-08 | Aamer | Baba | M | 1995-02-02 |
| 283280 | 1962-10-21 | Aamer | Bahl | F | 1985-11-22 |
| 60922 | 1961-01-01 | Aamer | Bahl | F | 1992-06-21 |

___

>GROUP BY
```SQL
SELECT first_name, COUNT(first_name)
FROM employees
GROUP BY first_name
ORDER BY first_name


```
| first\_name | COUNT\(first\_name\) |
| :--- | :--- |
| Aamer | 228 |
| Aamod | 216 |
| Abdelaziz | 227 |
| Abdelghani | 247 |
| Abdelkader | 222 |
| Abdelwaheb | 241 |
| Abdulah | 220 |
| Abdulla | 226 |
| Achilleas | 231 |
| Adam | 251 |

___
>ALIASES
```SQL
SELECT first_name, COUNT(first_name) AS name_count
FROM employees
GROUP BY first_name
ORDER BY first_name


```
| first\_name | name_count |
| :--- | :--- |
| Aamer | 228 |
| Aamod | 216 |
| Abdelaziz | 227 |
| Abdelghani | 247 |
| Abdelkader | 222 |
| Abdelwaheb | 241 |
| Abdulah | 220 |
| Abdulla | 226 |
| Achilleas | 231 |
| Adam | 251 |

___

>HAVING
```SQL
SELECT first_name, COUNT(first_name)
FROM employees
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name

```
| first\_name | COUNT\(first\_name\) |
| :--- | :--- |
| Basem | 198 |
| Beshir | 198 |
| Domenico | 199 |
| Ebbe | 190 |
| Gladys | 194 |
| Gou | 199 |
| Jaroslava | 193 |
| Lech | 185 |
| Nahid | 199 |
| Perla | 198 |

___

>LIMIT
```SQL

SELECT first_name, COUNT(first_name)
FROM employees
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name
LIMIT 10;
;
```
___





















>`WHERE` vs `HAVING`

```SQL

SELECT first_name, COUNT(first_name) AS name_count
FROM employees
WHERE hire_date > '1999-01-1'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name;

```



| first\_name | name\_count |
| :--- | :--- |
| Aamod | 2 |
| Abdelaziz | 3 |
| Abdelghani | 2 |
| Abdelkader | 4 |
| Abdelwaheb | 2 |
| Abdulla | 2 |
| Achilleas | 2 |
| Adamantios | 1 |
| Adas | 1 |
| Adel | 1 |
