"""
11. Get the second highest salary in each department
    • Use DENSE_RANK() or nested SELECT
"""

SELECT * FROM (
    SELECT * ,
DENSE_RANK() OVER(PARTITION BY department_id ORDER BY salary DESC) as second_highest_ranked 
FROM employees
) AS ranked

WHERE second_highest_ranked = 2

