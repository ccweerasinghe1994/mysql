# JOINS

>`INNER JOIN`
```SQL
SELECT *
FROM departments d
         INNER JOIN dept_emp de on d.dept_no = de.dept_no
```
| dept\_no | dept\_name | emp\_no | dept\_no | from\_date | to\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| d009 | Customer Service | 10011 | d009 | 1990-01-22 | 1996-11-09 |
| d009 | Customer Service | 10038 | d009 | 1989-09-20 | 9999-01-01 |
| d009 | Customer Service | 10049 | d009 | 1992-05-04 | 9999-01-01 |
| d009 | Customer Service | 10060 | d009 | 1992-11-11 | 9999-01-01 |
| d009 | Customer Service | 10088 | d009 | 1992-03-21 | 9999-01-01 |
| d009 | Customer Service | 10098 | d009 | 1989-06-29 | 1992-12-11 |
| d009 | Customer Service | 10112 | d009 | 1998-05-01 | 9999-01-01 |
| d009 | Customer Service | 10115 | d009 | 1988-03-03 | 1992-05-24 |
| d009 | Customer Service | 10126 | d009 | 1985-09-08 | 9999-01-01 |
| d009 | Customer Service | 10128 | d009 | 1988-06-06 | 9999-01-01 |

___

>HOW TO AVOID DUPLICATES IN A QUIERY
```SQL
SELECT *
FROM departments d
         INNER JOIN dept_emp de on d.dept_no = de.dept_no
GROUP BY d.dept_no

```
| dept\_no | dept\_name | emp\_no | dept\_no | from\_date | to\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| d001 | Marketing | 10017 | d001 | 1993-08-03 | 9999-01-01 |
| d002 | Finance | 10042 | d002 | 1993-03-21 | 2000-08-10 |
| d003 | Human Resources | 10005 | d003 | 1989-09-12 | 9999-01-01 |
| d004 | Production | 10003 | d004 | 1995-12-03 | 9999-01-01 |
| d005 | Development | 10001 | d005 | 1986-06-26 | 9999-01-01 |
| d006 | Quality Management | 10009 | d006 | 1985-02-18 | 9999-01-01 |
| d007 | Sales | 10002 | d007 | 1996-08-03 | 9999-01-01 |
| d008 | Research | 10007 | d008 | 1989-02-10 | 9999-01-01 |
| d009 | Customer Service | 10011 | d009 | 1990-01-22 | 1996-11-09 |

___

>LEFT JOIN
```SQL
SELECT *
FROM departments d
         LEFT JOIN dept_emp de on d.dept_no = de.dept_no
GROUP BY d.dept_no
```
| dept\_no | dept\_name | emp\_no | dept\_no | from\_date | to\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| d001 | Marketing | 10017 | d001 | 1993-08-03 | 9999-01-01 |
| d002 | Finance | 10042 | d002 | 1993-03-21 | 2000-08-10 |
| d003 | Human Resources | 10005 | d003 | 1989-09-12 | 9999-01-01 |
| d004 | Production | 10003 | d004 | 1995-12-03 | 9999-01-01 |
| d005 | Development | 10001 | d005 | 1986-06-26 | 9999-01-01 |
| d006 | Quality Management | 10009 | d006 | 1985-02-18 | 9999-01-01 |
| d007 | Sales | 10002 | d007 | 1996-08-03 | 9999-01-01 |
| d008 | Research | 10007 | d008 | 1989-02-10 | 9999-01-01 |
| d009 | Customer Service | 10011 | d009 | 1990-01-22 | 1996-11-09 |

___

> RIGHT JOIN
```SQL
SELECT *
FROM departments d
         RIGHT JOIN dept_emp de on d.dept_no = de.dept_no
GROUP BY d.dept_no
```
| dept\_no | dept\_name | emp\_no | dept\_no | from\_date | to\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| d001 | Marketing | 10017 | d001 | 1993-08-03 | 9999-01-01 |
| d002 | Finance | 10042 | d002 | 1993-03-21 | 2000-08-10 |
| d003 | Human Resources | 10005 | d003 | 1989-09-12 | 9999-01-01 |
| d004 | Production | 10003 | d004 | 1995-12-03 | 9999-01-01 |
| d005 | Development | 10001 | d005 | 1986-06-26 | 9999-01-01 |
| d006 | Quality Management | 10009 | d006 | 1985-02-18 | 9999-01-01 |
| d007 | Sales | 10002 | d007 | 1996-08-03 | 9999-01-01 |
| d008 | Research | 10007 | d008 | 1989-02-10 | 9999-01-01 |
| d009 | Customer Service | 10011 | d009 | 1990-01-22 | 1996-11-09 |

___

>JOIN WITH WHERE
```SQL
SELECT *
FROM departments d
         RIGHT JOIN dept_emp de on d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'
GROUP BY d.dept_no
```
| dept\_no | dept\_name | emp\_no | dept\_no | from\_date | to\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| d007 | Sales | 10002 | d007 | 1996-08-03 | 9999-01-01 |

___

>
```SQL
SELECT *
FROM departments d
         CROSS JOIN dept_emp de on d.dept_no = de.dept_no

GROUP BY d.dept_no

```
| dept\_no | dept\_name | emp\_no | dept\_no | from\_date | to\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| d001 | Marketing | 10017 | d001 | 1993-08-03 | 9999-01-01 |
| d002 | Finance | 10042 | d002 | 1993-03-21 | 2000-08-10 |
| d003 | Human Resources | 10005 | d003 | 1989-09-12 | 9999-01-01 |
| d004 | Production | 10003 | d004 | 1995-12-03 | 9999-01-01 |
| d005 | Development | 10001 | d005 | 1986-06-26 | 9999-01-01 |
| d006 | Quality Management | 10009 | d006 | 1985-02-18 | 9999-01-01 |
| d007 | Sales | 10002 | d007 | 1996-08-03 | 9999-01-01 |
| d008 | Research | 10007 | d008 | 1989-02-10 | 9999-01-01 |
| d009 | Customer Service | 10011 | d009 | 1990-01-22 | 1996-11-09 |

___

>JOIN WITH AGGREGADE FUNCTIONS
```SQL
SELECT e.gender,AVG(s.salary)
FROM employees e
         INNER JOIN salaries s on e.emp_no = s.emp_no
GROUP BY e.gender
```
| gender | AVG\(s.salary\) |
| :--- | :--- |
| M | 63755.9134 |
| F | 63769.1222 |

___

>
```SQL
SELECT e.gender,AVG(s.salary)
FROM employees e
         INNER JOIN salaries s on e.emp_no = s.emp_no INNER
         JOIN titles t on e.emp_no = t.emp_no
         GROUP BY e.gender

```
| dept\_no | dept\_name | emp\_no | dept\_no | from\_date | to\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| d001 | Marketing | 10017 | d001 | 1993-08-03 | 9999-01-01 |
| d002 | Finance | 10042 | d002 | 1993-03-21 | 2000-08-10 |
| d003 | Human Resources | 10005 | d003 | 1989-09-12 | 9999-01-01 |
| d004 | Production | 10003 | d004 | 1995-12-03 | 9999-01-01 |
| d005 | Development | 10001 | d005 | 1986-06-26 | 9999-01-01 |
| d006 | Quality Management | 10009 | d006 | 1985-02-18 | 9999-01-01 |
| d007 | Sales | 10002 | d007 | 1996-08-03 | 9999-01-01 |
| d008 | Research | 10007 | d008 | 1989-02-10 | 9999-01-01 |
| d009 | Customer Service | 10011 | d009 | 1990-01-22 | 1996-11-09 |

___

>
```SQL

```

___

>
```SQL

```

___