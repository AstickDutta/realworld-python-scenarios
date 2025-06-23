"""
 Scenario 9: Password Policy Enforcer
Create a function that accepts a password and checks:
    • Minimum 8 characters
    • At least 1 uppercase, 1 lowercase, 1 number, 1 special character
"""

import re

def is_valid_password(password):
    if len(password) < 8:
        return "Password must be at least 8 characters long."
    
    if not re.search(r'[A-Z]', password):
        return "Password must contain at least one uppercase letter."
    
    if not re.search(r'[a-z]', password):
        return "Password must contain at least one lowercase letter."
    
    if not re.search(r'\d', password):
        return "Password must contain at least one digit."
    
    if not re.search(r'[!@#$%^&*(),.?":{}|<>]', password):
        return "Password must contain at least one special character."
    
    return "Password is valid."

password = input("Please input a password for validation: ")
print(is_valid_password(password))