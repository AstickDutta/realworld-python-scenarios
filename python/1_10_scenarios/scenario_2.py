import csv

def assign_trainee_ids(names):
    id_map = {}
    count = 1

    for name in names:
        padded_number = "0" * (3 - len(str(count))) + str(count)
        unique_id = "TRN2025" + padded_number
        id_map[name] = unique_id
        count += 1

    return id_map

def save_to_csv(data, filename="trainee_ids.csv"):
    with open(filename, 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(["Trainee Name", "Trainee ID"])
        for name in data:
            writer.writerow([name, data[name]])

trainee_names = [
    "Vinay Gurram",
    "Karthik Basha",
    "Kshitish Sandhibigraha",
    "Hemanth Baswaraj",
    "Prajwal Tandur"
]

trainee_id_list = assign_trainee_ids(trainee_names)

print("Assigned Trainee IDs:")
for trainee in trainee_id_list:
    print(f"{trainee}: {trainee_id_list[trainee]}")

save_to_csv(trainee_id_list)
print("All IDs saved successfully to 'trainee_ids.csv'")
