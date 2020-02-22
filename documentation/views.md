# VIEWS

>views
```sql
CREATE OR REPLACE VIEW v_dep_emp_latest_date AS
SELECT emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date
FROM dept_emp
GROUP BY emp_no;

```

## result

```sql
SELECT 
    *
FROM
    employees.v_dep_emp_latest_date;

```

| emp\_no | from\_date | to\_date |
| :--- | :--- | :--- |
| 10001 | 1986-06-26 | 9999-01-01 |
| 10002 | 1996-08-03 | 9999-01-01 |
| 10003 | 1995-12-03 | 9999-01-01 |
| 10004 | 1986-12-01 | 9999-01-01 |
| 10005 | 1989-09-12 | 9999-01-01 |
| 10006 | 1990-08-05 | 9999-01-01 |
| 10007 | 1989-02-10 | 9999-01-01 |
| 10008 | 1998-03-11 | 2000-07-31 |
| 10009 | 1985-02-18 | 9999-01-01 |
| 10010 | 2000-06-26 | 9999-01-01 |
