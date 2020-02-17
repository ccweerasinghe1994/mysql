# INSERT

>
```sql

INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES (999999999,
        '1994-02-1',
        'john',
        'smith',
        'M',
        '2010-01-1');

SELECT *
FROM employees
ORDER BY emp_no DESC
LIMIT 1

```
| emp\_no | birth\_date | first\_name | last\_name | gender | hire\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 999999999 | 1994-02-01 | john | smith | M | 2010-01-01 |

____

>WHITHOUT VALUES() 
```sql 

INSERT INTO employees 
VALUES (999999999,
        '1994-02-1',
        'john',
        'smith',
        'M',
        '2010-01-1');

SELECT *
FROM employees
ORDER BY emp_no DESC
LIMIT 1
```

____

>INSERT USING_SELECT
```sql
INSERT INTO departments_dup
    (dept_no, dept_name)
SELECT *
FROM departments;
```
| dept\_no | dept\_name |
| :--- | :--- |
| d009 | Customer Service |
| d005 | Development |
| d002 | Finance |
| d003 | Human Resources |
| d001 | Marketing |
| d004 | Production |
| d006 | Quality Management |
| d008 | Research |
| d007 | Sales |

____

>
```sql

```

____

>
```sql

```

____

>
```sql

```

____

>
```sql

```

____

>
```sql

```

____