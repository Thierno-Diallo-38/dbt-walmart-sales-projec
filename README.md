# Walmart Sales Data Transformation with dbt

This project demonstrates data transformation and cleaning skills using dbt (Data Build Tool). The dataset used in this project comes from [Kaggle: Walmart Sales Dataset](https://www.kaggle.com/datasets/mikhail1681/walmart-sales). The focus of this project is to showcase proficiency in dbt for modular data transformation and testing, with no additional analysis or visualization.

---

## Project Overview

This project includes:
- Cleaning raw Walmart sales data.
- Aggregating sales data by store and generating monthly sales trends.
- Implementing rigorous data testing using dbt's built-in test framework.
- Documenting models for improved project readability and maintainability.

---

## Tools and Technologies

- **dbt**: For data transformation, testing, and documentation.
- **Snowflake**: As the data warehouse for storing and querying the transformed data.

---

## Data Overview

The original dataset includes information on weekly sales across multiple Walmart stores, along with related factors such as:
- Weekly Sales
- Holiday Flags
- Temperature
- Fuel Price
- CPI (Consumer Price Index)
- Unemployment Rate

More details can be found on the original dataset's [Kaggle page](https://www.kaggle.com/datasets/mikhail1681/walmart-sales).

---

## Project Structure

```plaintext
.
├── models/
│   ├── cleaned_sales.sql        # Cleans raw data by selecting relevant fields.
│   ├── aggregated_sales.sql     # Aggregates weekly sales by store.
│   ├── sales_trends.sql         # Calculates monthly sales trends.
│   ├── schema.yml               # Documentation and data tests.
├── sources.yml                  # Source configuration for the raw data.
├── dbt_project.yml              # Main dbt configuration file.
├── README.md                    # Project documentation (this file).
