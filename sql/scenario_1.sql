"""
1. Find all employees who have not taken any leave in the last 3 months
    • Use NOT EXISTS with Leaves table.
"""

SELECT e.emp_id, e.name
FROM Employees e
LEFT JOIN Leaves l
    ON e.emp_id = l.emp_id
    AND l.leave_date >= CURDATE() - INTERVAL 3 MONTH
WHERE l.emp_id IS NULL;
