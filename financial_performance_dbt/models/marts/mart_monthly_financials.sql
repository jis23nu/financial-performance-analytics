
{{ config(materialized='table') }}

SELECT
    YEAR,
    MONTH_NUMBER,
    MONTH_NAME,
    MIN(DATE) AS MONTH_START_DATE,
    SUM(SALES) AS TOTAL_SALES,
    SUM(PROFIT) AS TOTAL_PROFIT,
    SUM(COGS) AS TOTAL_COGS,
    ROUND(
        SUM(PROFIT) / NULLIF(SUM(SALES), 0) * 100,
        2
    ) AS PROFIT_MARGIN_PCT
FROM {{ ref('stg_financial_data') }}
GROUP BY
    YEAR,
    MONTH_NUMBER,
    MONTH_NAME
