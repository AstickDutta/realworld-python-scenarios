"""
6. Find employees who didn’t log attendance for 5 consecutive working days
    • Use LAG() or recursive query
"""

SELECT emp_id, work_date,
       LAG(work_date, 1) OVER (PARTITION BY emp_id ORDER BY work_date) AS prev_day,
       DATEDIFF(work_date, LAG(work_date, 1) OVER (PARTITION BY emp_id ORDER BY work_date)) AS day_diff
FROM Attendance;
