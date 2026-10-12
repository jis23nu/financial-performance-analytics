
{{ config(materialized='table') }}

SELECT
    PRODUCT,
    SEGMENT,
    SUM(SALES) AS TOTAL_SALES,
    SUM(PROFIT) AS TOTAL_PROFIT,
    SUM(COGS) AS TOTAL_COGS,
    SUM(UNITS_SOLD) AS TOTAL_UNITS_SOLD,
    ROUND(
        SUM(PROFIT) / NULLIF(SUM(SALES), 0) * 100,
        2
    ) AS PROFIT_MARGIN_PCT
FROM {{ ref('stg_financial_data') }}
GROUP BY
    PRODUCT,
    SEGMENT
