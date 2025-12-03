```sql
SELECT
    x,
    y,
    z,
    CASE
        -- Check if all three sides satisfy the Triangle Inequality Theorem
        WHEN x + y > z AND x + z > y AND y + z > x THEN 'Yes'
        ELSE 'No'
    END AS triangle
FROM
    Triangle;
```
