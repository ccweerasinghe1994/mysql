# STORED PROCEDERS

>  STORED PROCEDERS
```sql

CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure`()
BEGIN
SELECT * FROM employees LIMIT 10;
END

```
## Result 

```sql 

 call employees.new_procedure();

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


>Using input parameters
```sql
CREATE DEFINER=`root`@`localhost` PROCEDURE `salary`(IN employee_number INT)
BEGIN
SELECT e.first_name, e.last_name, s.salary, s.from_date, s.to_date
FROM employees E
         INNER JOIN salaries s on e.emp_no = s.emp_no where e.emp_no = employee_number limit 10;
END

```
## **Result:-**
```sql
call employees.salary(11300);

```

| first\_name | last\_name | salary | from\_date | to\_date |
| :--- | :--- | :--- | :--- | :--- |
| Lillian | Fontet | 44380 | 1992-09-10 | 1993-09-10 |
| Lillian | Fontet | 47360 | 1993-09-10 | 1994-09-10 |
| Lillian | Fontet | 47115 | 1994-09-10 | 1995-09-10 |
| Lillian | Fontet | 50291 | 1995-09-10 | 1996-09-09 |
| Lillian | Fontet | 51823 | 1996-09-09 | 1996-12-20 |

>Using Aggregated functions

```sql
CREATE DEFINER=`root`@`localhost` PROCEDURE `salary`(IN employee_number INT)
BEGIN
SELECT e.first_name, e.last_name, AVG(s.salary)
FROM employees E
         INNER JOIN salaries s on e.emp_no = s.emp_no where e.emp_no = employee_number limit 10;
END

```
## Result
| first\_name | last\_name | AVG\(s.salary\) |
| :--- | :--- | :--- |
| Lillian | Fontet | 48193.8000 |

