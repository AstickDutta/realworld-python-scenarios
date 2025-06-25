import csv
from datetime import datetime

cutoff_time = datetime.strptime("09:30 AM", "%I:%M %p").time()

late_trainees = []

file_path = 'D:/python_practice_for_real_time/realworld-python-scenarios/python/1_10_scenarios/trainee_logins.csv'

try:
    with open(file_path, 'r') as file:
        reader = csv.DictReader(file)

        for row in reader:
            try:
                name = row['Trainee Name']
                login_time_str = row['Login Time']
                login_time = datetime.strptime(login_time_str, "%I:%M %p").time()

                if login_time > cutoff_time:
                    late_trainees.append(name)

            except KeyError as key_err:
                print(f"Missing column: {key_err}")
            except ValueError:
                print(f"Invalid time format for {name}: '{login_time_str}'")
            except Exception as e:
                print(f"Unexpected error for {name}: {e}")

except FileNotFoundError:
    print(f"File not found: {file_path}")
except Exception as e:
    print(f"Could not open the file: {e}")

if late_trainees:
    print("Late trainees:")
    for trainee in late_trainees:
        print(f"{trainee}")
else:
    print("No one was late today.")
