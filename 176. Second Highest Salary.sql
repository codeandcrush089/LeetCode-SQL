SELECT
    -- Use IFNULL or COALESCE to return NULL if the subquery yields an empty result set.
    IFNULL(
        (SELECT DISTINCT
            salary
        FROM
            Employee
        ORDER BY
            salary DESC
        LIMIT 1 OFFSET 1), -- LIMIT 1 gets the single result, OFFSET 1 skips the first (highest) result.
        NULL
    ) AS SecondHighestSalary;
