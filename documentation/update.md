# UPDATE

>
```SQL
UPDATE employees
SET birth_date= '1994-02-1',
    first_name = 'john',
    last_name = 'smith',
    gender = 'F'
WHERE emp_no = 999999999;

```
| emp\_no | birth\_date | first\_name | last\_name | gender | hire\_date |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 999999999 | 1994-02-01 | john | smith | F | 2010-01-01 |

___
>COMMIT,ROLLBACK
```SQL
COMMIT;

UPDATE departments_dup
SET dept_no   = 'ASDF',
    dept_name = 'EASFF';

ROLLBACK;
COMMIT;

```
___ 
>
```SQL


```
___