

{{ config(materialized='view') }}

SELECT
    SEGMENT,
    COUNTRY,
    PRODUCT,
    DISCOUNT_BAND,
    UNITS_SOLD,
    MANUFACTURING_PRICE,
    SALE_PRICE,
    GROSS_SALES,
    DISCOUNTS,
    SALES,
    COGS,
    PROFIT,
    DATE,
    MONTH_NUMBER,
    MONTH_NAME,
    YEAR
FROM {{ source('financial_raw', 'financial_data') }}
