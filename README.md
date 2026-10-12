\# Financial Performance \& Revenue Analytics



An end-to-end data analytics and engineering portfolio project analyzing revenue, profitability, customer segments, products, and discount patterns using \*\*Python, Pandas, PySpark, Snowflake, dbt, SQL, and Power BI\*\*.



\## Project Overview



This project demonstrates how raw financial data can be transformed into validated analytical datasets, warehouse models, and business intelligence dashboards.



The workflow covers data cleaning, exploratory analysis, distributed processing, cloud data warehousing, analytics engineering, data testing, and financial reporting.



\## Technology Stack



| Technology | Purpose |

|---|---|

| Python | Data preparation and exploratory analysis |

| Pandas | Data cleaning, summaries, and analysis |

| PySpark | Distributed data processing and validation |

| Snowflake | Cloud data warehouse |

| SQL | Financial aggregations and transformations |

| dbt | Staging models, analytical marts, and data tests |

| Power BI | Interactive dashboards and KPI reporting |

| Git \& GitHub | Version control and project portfolio |



\## Project Architecture



1\. \*\*Source data:\*\* Microsoft Financial Sample dataset.

2\. \*\*Data cleaning:\*\* Standardized column names and handled missing discount-band values.

3\. \*\*Analysis:\*\* Used Pandas to explore sales, profit, margin, products, segments, countries, and monthly trends.

4\. \*\*Processing:\*\* Used PySpark to validate and process the cleaned dataset.

5\. \*\*Data warehouse:\*\* Loaded 700 records into Snowflake.

6\. \*\*Transformation:\*\* Created staging and analytical models using dbt.

7\. \*\*Testing:\*\* Added not-null checks and a custom profit-margin range test.

8\. \*\*Visualization:\*\* Built a Power BI report to communicate financial performance and profitability insights.



\## Key Business Findings



The following results are based on the supplied sample dataset.



| Metric | Result |

|---|---:|

| Total Sales | Approximately $118.73 million |

| Total Profit | Approximately $16.89 million |

| Overall Profit Margin | Approximately 14.23% |

| Government Segment Profit | Approximately $11.39 million |

| Government Segment Margin | Approximately 21.69% |

| Enterprise Segment Loss | Approximately $614,500 |

| Enterprise Segment Margin | Approximately -3.13% |



\### Additional Insights



\- \*\*Product performance:\*\* Paseo generated the highest total sales and absolute profit among the products analyzed.

\- \*\*Segment performance:\*\* Government was the strongest major customer segment by total profit and margin.

\- \*\*Enterprise profitability:\*\* The Enterprise segment was loss-making overall. Its results varied across discount bands, which merits further investigation rather than proving discounts alone caused the losses.

\- \*\*Monthly performance:\*\* The monthly model supports analysis of sales and profit trends across the available 2013–2014 reporting periods.

\- \*\*Data interpretation:\*\* Comparisons across years should account for the fact that 2013 contains fewer months than 2014.



These findings describe the sample dataset and should not be interpreted as forecasts or recommendations for a real business without further validation.



\## Power BI Dashboard



The Power BI report includes two report pages.



\### 1. Financial Performance Overview



Includes headline KPIs for total sales, total profit, and overall profit margin, along with monthly sales and profit trends and profitability comparisons by segment and product.



!\[Financial Performance Overview](reports/screenshots/financial-performance-overview.png)



\### 2. Product \& Segment Analysis



Includes a product-by-segment profitability matrix with conditional formatting and a customer-segment profit-margin comparison, including the negative Enterprise margin.



!\[Product and Segment Analysis](reports/screenshots/product-segment-analysis.png)



\*\*Open the report:\*\* \[`Financial\_Performance\_Analytics.pbix`](reports/Financial\_Performance\_Analytics.pbix)



Download the PBIX file and open it in Power BI Desktop to explore the report interactively.



\## dbt Models and Data Quality



The dbt project is located in `financial\_performance\_dbt/`.



It includes:



\- `stg\_financial\_data.sql` — staging model for the raw Snowflake data.

\- `fct\_profitability.sql` — profitability aggregation by product and segment.

\- `mart\_segment\_profitability.sql` — customer-segment profitability summary.

\- `mart\_monthly\_financials.sql` — monthly financial summary.

\- `sources.yml` — definition of the source data.

\- `fct\_profitability.yml` — not-null tests for important profitability fields.

\- `profit\_margin\_range.sql` — custom test to flag profit margins outside the defined range.



The recorded successful dbt build completed \*\*6 models, 6 data tests, and 1 source\*\* with no warnings or errors.



\## Repository Structure



```text

financial-performance-analytics/

├── data/

│   ├── financial\_sample\_cleaned.csv

│   ├── financial\_spark\_output.csv

│   ├── country\_profitability\_summary.csv

│   ├── monthly\_financial\_summary.csv

│   ├── product\_profitability\_summary.csv

│   └── segment\_profitability\_summary.csv

├── financial\_performance\_dbt/

│   ├── models/

│   │   ├── staging/

│   │   ├── marts/

│   │   └── sources/

│   └── tests/

├── notebooks/

│   └── 01\_financial\_analysis.ipynb

├── reports/

│   ├── screenshots/

│   │   ├── financial-performance-overview.png

│   │   └── product-segment-analysis.png

│   ├── Financial\_Performance\_Analytics.pbix

│   └── analysis charts

├── .gitignore

└── README.md

```



\## How to Explore the Project



1\. Review `notebooks/01\_financial\_analysis.ipynb` for cleaning, exploration, and analysis.

2\. Explore the cleaned dataset and derived summaries in `data/`.

3\. Review the dbt staging and mart models under `financial\_performance\_dbt/models/`.

4\. Inspect the custom SQL test under `financial\_performance\_dbt/tests/`.

5\. View the Power BI screenshots above or open the PBIX file in Power BI Desktop.



Rebuilding the warehouse models requires a configured Snowflake connection, the appropriate permissions, and access to the source table. Keep credentials in local configuration and never commit passwords, tokens, or private connection details.



\## Data Note



The original Excel source file is excluded from this repository. The repository contains cleaned and derived sample data for analysis. Check the applicable source-data terms before redistributing the original dataset.



\## Author



\*\*Jishnu Gopinath\*\*



Portfolio project demonstrating data analytics, data engineering, analytics engineering, SQL transformation, data quality testing, and business intelligence.

