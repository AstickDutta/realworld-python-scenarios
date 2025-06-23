"""
 Find employees who worked on more than 2 projects
    • Use GROUP BY emp_id and HAVING COUNT(project_id) > 2
"""

SELECT emp_id
FROM Projects
GROUP BY emp_id
HAVING COUNT(project_id) > 2;
