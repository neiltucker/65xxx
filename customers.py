import csv
import random
from datetime import datetime, timedelta

# Configuration
FILE_NAME = 'customers.csv'
RECORD_COUNT = 10000

# Sample data for random generation
countries = ['USA', 'Canada', 'UK', 'Germany', 'Australia', 'France', 'Japan', 'Brazil']
first_names = ['James', 'Mary', 'Robert', 'Patricia', 'John', 'Jennifer', 'Michael', 'Linda']
last_names = ['Smith', 'Johnson', 'Williams', 'Brown', 'Jones', 'Garcia', 'Miller', 'Davis']

def generate_random_date(start_year=2020, end_year=2025):
    start = datetime(start_year, 1, 1)
    end = datetime(end_year, 12, 31)
    delta = end - start
    random_days = random.randrange(delta.days)
    return (start + timedelta(days=random_days)).date()

def create_csv():
    with open(FILE_NAME, mode='w', newline='', encoding='utf-8') as f:
        # csv.QUOTE_ALL ensures every field is wrapped in double quotes
        # If you only want text fields quoted, use csv.QUOTE_NONNUMERIC
        writer = csv.writer(f, delimiter=',', quotechar='"', quoting=csv.QUOTE_ALL)
        
        # Header Row (Row 1)
        writer.writerow(['CustomerID', 'FirstName', 'LastName', 'Email', 'Country', 'RegistrationDate'])
        
        for i in range(1, RECORD_COUNT + 1):
            fname = random.choice(first_names)
            lname = random.choice(last_names)
            email = f"{fname.lower()}.{lname.lower()}{i}@example.com"
            country = random.choice(countries)
            reg_date = generate_random_date()
            
            writer.writerow([i, fname, lname, email, country, reg_date])

    print(f"Successfully created {FILE_NAME} with {RECORD_COUNT} records.")

if __name__ == "__main__":
    create_csv()