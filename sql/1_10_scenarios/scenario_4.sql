"""
4. Calculate the average salary for each department
    • GROUP BY department_id
"""

SELECT AVG(salary) AS average_salary, department_id
FROM employees
GROUP BY department_id