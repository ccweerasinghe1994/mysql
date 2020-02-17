# Aggregadded Functions


>COUNT()

```sql
SELECT COUNT(salary) FROM salaries
LIMIT 10;

SELECT COUNT(*) FROM salaries;
```
| COUNT\(salary\) |
| :--- |
| 967330 |

___

>SUM()

```sql
SELECT SUM(salary)
FROM salaries;
```
| SUM\(salary\) |
| :--- |
| 61678125784 |

___

>MAX()

```sql
SELECT MAX(salary)
FROM salaries;
```
| MAX\(salary\) |
| :--- |
| 158220 |

___

>MIN()

```sql
SELECT MIN(salary)
FROM salaries;
```
| MIN\(salary\) |
| :--- |
| 38735 |

___

>AVG()

```sql
SELECT AVG(salary)
FROM salaries;
```
| AVG\(salary\) |
| :--- |
| 63761.2043 |

___

>ROUND()

```sql
SELECT ROUND(AVG(salary))
FROM salaries;
```
| ROUND\(AVG\(salary\)\) |
| :--- |
| 63761 |

___
>ROUND()

```sql
SELECT ROUND(AVG(salary),2)
FROM salaries;
```
| ROUND\(AVG\(salary\)\) |
| :--- |
| 63761.20 |

___

>IFNULL()

```sql
SELECT dept_name, IFNULL(dept_name, 'Department name is not provided') as department_name
from departments_dup;
```

___
