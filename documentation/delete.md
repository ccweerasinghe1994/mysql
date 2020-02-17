#DELETE

>DELETE WITH WHERE
```sql

USE employees;
COMMIT;

DELETE
FROM departments_dup;

SELECT *
FROM departments_dup;

ROLLBACK;
COMMIT;

```
___
>DELETE WITH WHERE
```SQL
USE employees;
COMMIT;

DELETE FROM departments_dup  WHERE emp_no = 999999999;

SELECT * FROM titles ORDER BY emp_no DESC;

ROLLBACK ;

```