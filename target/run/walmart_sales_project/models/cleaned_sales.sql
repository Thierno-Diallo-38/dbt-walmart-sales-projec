
  create or replace   view WALMART_SALES_DB.PUBLIC.cleaned_sales
  
   as (
    WITH CLEANED_DATA AS (
    SELECT
        STORE,
        DATE,
        WEEKLY_SALES,
        HOLIDAY_FLAG,
        TEMPERATURE,
        FUEL_PRICE,
        CPI,
        UNEMPLOYMENT
    FROM WALMART_SALES_DB.PUBLIC.WALMART_SALES
)
SELECT * FROM CLEANED_DATA
  );

