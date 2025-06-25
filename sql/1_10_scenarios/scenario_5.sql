"""
5. Get the most recent joiner in each department
    • Use RANK() or MAX(join_date) with GROUP BY
"""

SELECT MAX(join_date) as recent_joiner , department_id
FROM employees
GROUP BY department_id;