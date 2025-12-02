```sql
-- Solution to find the name and bonus amount of employees who have a bonus less than 1000 or no bonus at all.

SELECT
    E.name,
    B.bonus
FROM
    Employee E
-- Use a LEFT JOIN to include ALL employees from the Employee table (E), 
-- even those who do not have a matching entry in the Bonus table (B).
LEFT JOIN
    Bonus B ON E.empId = B.empId
WHERE
    -- Condition 1: The employee has no bonus record (B.bonus IS NULL, covering 'John' and 'Brad').
    B.bonus IS NULL
    -- OR Condition 2: The employee has a bonus record, but the amount is less than 1000 (covering 'Dan').
    OR B.bonus < 1000;
```
