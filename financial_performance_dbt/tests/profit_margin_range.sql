
SELECT *
FROM {{ ref('fct_profitability') }}
WHERE profit_margin_pct < -100
   OR profit_margin_pct > 100
