SELECT
    -- Select the name of the employee (E)
    E.name AS Employee
FROM
    Employee E -- E represents the employee
INNER JOIN
    Employee M ON E.managerId = M.id -- M represents the manager
WHERE
    -- Filter for cases where the employee's salary is strictly greater than the manager's salary
    E.salary > M.salary;
