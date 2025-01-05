import pandas as pd

# File path to your Walmart Sales CSV file
file_path = r"C:\Users\Thier\.dbt\dbt walmart sales project\Walmart_Sales.csv.csv"

# Load the data
try:
    data = pd.read_csv(file_path)
    print("File loaded successfully.")
except FileNotFoundError:
    print(f"File not found at {file_path}. Please check the file path.")
    exit()

# Function to fix mixed date formats
def fix_date_format(date):
    try:
        # Try parsing as YYYY-MM-DD
        return pd.to_datetime(date, format='%Y-%m-%d')
    except ValueError:
        # If that fails, try parsing as DD-MM-YYYY
        return pd.to_datetime(date, format='%d-%m-%Y')

# Apply the function to the 'date' column
try:
    data['date'] = data['date'].apply(fix_date_format).dt.strftime('%Y-%m-%d')
    print("Date column cleaned successfully.")
except Exception as e:
    print(f"An error occurred while cleaning the date column: {e}")
    exit()

# Save the cleaned file
cleaned_file_path = r"C:\Users\Thier\.dbt\dbt walmart sales project\Walmart_Sales_Cleaned.csv"
try:
    data.to_csv(cleaned_file_path, index=False)
    print(f"Cleaned file saved to: {cleaned_file_path}")
except Exception as e:
    print(f"An error occurred while saving the cleaned file: {e}")
    exit()

