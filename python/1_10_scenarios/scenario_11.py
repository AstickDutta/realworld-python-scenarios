"""
Scenario 11: Marks Report Formatter
Given a list of names and three subject scores, calculate average and grade them:
    • 80: Excellent
    • 60–80: Good
    • <60: Needs Improvement
"""

def format_marks_report(students):
    for student in students:
        name = student["name"]
        scores = student["scores"]
        average = sum(scores) / len(scores)

        if average >= 80:
            grade = "Excellent"
        elif average >= 60:
            grade = "Good"
        else:
            grade = "Needs Improvement"

        print(f"{name}: Average = {average:.2f}, Grade = {grade}")

students_data = [
    {"name": "Astick", "scores": [85, 90, 88]},
    {"name": "Vinay", "scores": [70, 65, 75]},
    {"name": "Praveen", "scores": [50, 55, 58]}
]

format_marks_report(students_data)