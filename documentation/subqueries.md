# SUB QUERIES

>Sub queries in where 

```sql 
SELECT *
FROM dept_manager;

SELECT e.first_name, e.last_name
FROM employees e
WHERE e.emp_no IN (SELECT dp.emp_no FROM dept_manager dp);


```
## **result** :-

| emp\_no | dept\_no | from\_date | to\_date |
| :--- | :--- | :--- | :--- |
| 110022 | d001 | 1985-01-01 | 1991-10-01 |
| 110039 | d001 | 1991-10-01 | 9999-01-01 |
| 110085 | d002 | 1985-01-01 | 1989-12-17 |
| 110114 | d002 | 1989-12-17 | 9999-01-01 |
| 110183 | d003 | 1985-01-01 | 1992-03-21 |
| 110228 | d003 | 1992-03-21 | 9999-01-01 |
| 110303 | d004 | 1985-01-01 | 1988-09-09 |
| 110344 | d004 | 1988-09-09 | 1992-08-02 |
| 110386 | d004 | 1992-08-02 | 1996-08-30 |
| 110420 | d004 | 1996-08-30 | 9999-01-01 |
| 110511 | d005 | 1985-01-01 | 1992-04-25 |
| 110567 | d005 | 1992-04-25 | 9999-01-01 |
| 110725 | d006 | 1985-01-01 | 1989-05-06 |
| 110765 | d006 | 1989-05-06 | 1991-09-12 |
| 110800 | d006 | 1991-09-12 | 1994-06-28 |
| 110854 | d006 | 1994-06-28 | 9999-01-01 |
| 111035 | d007 | 1985-01-01 | 1991-03-07 |
| 111133 | d007 | 1991-03-07 | 9999-01-01 |
| 111400 | d008 | 1985-01-01 | 1991-04-08 |
| 111534 | d008 | 1991-04-08 | 9999-01-01 |
| 111692 | d009 | 1985-01-01 | 1988-10-17 |
| 111784 | d009 | 1988-10-17 | 1992-09-08 |
| 111877 | d009 | 1992-09-08 | 1996-01-03 |
| 111939 | d009 | 1996-01-03 | 9999-01-01 |

---


>Sub queries using `EXSISTS`

```sql 
SELECT e.first_name, e.last_name
FROM employees e
WHERE EXISTS(SELECT * FROM dept_manager dm WHERE dm.emp_no = e.emp_no);

```
## **result** :-
| first\_name | last\_name |
| :--- | :--- |
| Margareta | Markovitch |
| Vishwani | Minakawa |
| Ebru | Alpin |
| Isamu | Legleitner |
| Shirish | Ossenbruggen |
| Karsten | Sigstam |
| Krassimir | Wegerle |
| Rosine | Cools |
| Shem | Kieras |
| Oscar | Ghazalie |
| DeForest | Hagimont |
| Leon | DasSarma |
| Peternela | Onuegbe |
| Rutger | Hofmeyr |
| Sanjoy | Quadeer |
| Dung | Pesch |
| Przemyslawa | Kaelbling |
| Hauke | Zhang |
| Arie | Staelin |
| Hilary | Kambil |
| Tonny | Butterworth |
| Marjo | Giarratana |
| Xiaobin | Spinelli |
| Yuchang | Weedman |



---
>Sub queries in where 

```sql 
SELECT a.*
FROM (SELECT e.emp_no                                                AS employee_id,
             MIN(de.dept_no)                                         AS department_code,
             (SELECT emp_no FROM dept_manager WHERE emp_no = 110022) AS manager_id
      FROM employees e
               INNER JOIN dept_emp de on e.emp_no = de.emp_no
      WHERE e.emp_no <= 10020
      GROUP BY e.emp_no
      ORDER BY e.emp_no) AS a

UNION

SELECT b.*
FROM (SELECT e.emp_no                                                AS employee_id,
             MIN(de.dept_no)                                         AS department_code,
             (SELECT emp_no FROM dept_manager WHERE emp_no = 110039) AS manager_id
      FROM employees e
               INNER JOIN dept_emp de on e.emp_no = de.emp_no
      WHERE e.emp_no > 10020
      GROUP BY e.emp_no
      ORDER BY e.emp_no
      LIMIT 20) AS b    

```
## **result** :-

| employee\_id | department\_code | manager\_id |
| :--- | :--- | :--- |
| 10001 | d005 | 110022 |
| 10002 | d007 | 110022 |
| 10003 | d004 | 110022 |
| 10004 | d004 | 110022 |
| 10005 | d003 | 110022 |
| 10006 | d005 | 110022 |
| 10007 | d008 | 110022 |
| 10008 | d005 | 110022 |
| 10009 | d006 | 110022 |
| 10010 | d004 | 110022 |
| 10011 | d009 | 110022 |
| 10012 | d005 | 110022 |
| 10013 | d003 | 110022 |
| 10014 | d005 | 110022 |
| 10015 | d008 | 110022 |
| 10016 | d007 | 110022 |
| 10017 | d001 | 110022 |
| 10018 | d004 | 110022 |
| 10019 | d008 | 110022 |
| 10020 | d004 | 110022 |
| 10021 | d005 | 110039 |
| 10022 | d005 | 110039 |
| 10023 | d005 | 110039 |
| 10024 | d004 | 110039 |
| 10025 | d005 | 110039 |
| 10026 | d004 | 110039 |
| 10027 | d005 | 110039 |
| 10028 | d005 | 110039 |
| 10029 | d004 | 110039 |
| 10030 | d004 | 110039 |
| 10031 | d005 | 110039 |
| 10032 | d004 | 110039 |
| 10033 | d006 | 110039 |
| 10034 | d007 | 110039 |
| 10035 | d004 | 110039 |
| 10036 | d003 | 110039 |
| 10037 | d005 | 110039 |
| 10038 | d009 | 110039 |
| 10039 | d003 | 110039 |
| 10040 | d005 | 110039 |


