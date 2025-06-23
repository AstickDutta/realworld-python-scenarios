"""
2. List top 3 highest paid employees per department
    • Use ROW_NUMBER() or DENSE_RANK() window function partitioned by department.
"""

SELECT emp_id, name, salary, department_id
FROM (
    SELECT e.*,
           ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rn
    FROM Employees e
) ranked
WHERE rn <= 3;