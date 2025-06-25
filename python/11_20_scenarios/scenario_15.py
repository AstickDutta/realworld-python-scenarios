"""
Scenario 15: Payroll Calculator
Write a script to calculate the net salary from gross salary, considering:
    • 12% PF
    • 10% Income Tax
    • 5% Insurance
"""

def calculate_net_salary(gross_salary):
    pf_rate = 0.12
    tax_rate = 0.10
    insurance_rate = 0.05
    pf = gross_salary * pf_rate
    tax = gross_salary * tax_rate
    insurance = gross_salary * insurance_rate

    total_deductions = pf + tax + insurance
    net_salary = gross_salary - total_deductions

    print(f"Gross Salary     : {gross_salary:.2f}")
    print(f"PF (12%)         : {pf:.2f}")
    print(f"Income Tax (10%) : {tax:.2f}")
    print(f"Insurance (5%)   : {insurance:.2f}")
    print(f"Net Salary       : {net_salary:.2f}")

    return net_salary

gross = float(input("Enter your gross salary: "))
calculate_net_salary(gross)
