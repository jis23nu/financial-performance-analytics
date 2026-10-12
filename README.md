\# Financial Performance \& Revenue Analytics



An end-to-end analytics project exploring financial performance, revenue trends, product profitability, customer segments, and discount impact using \*\*Python, PySpark, Snowflake, dbt, SQL, and Power BI\*\*.



\## Project Overview



This project transforms financial sample data into validated analytical models and an interactive Power BI report. It demonstrates data cleaning, distributed data processing, cloud data warehousing, analytics engineering, SQL testing, and business intelligence.



\## Technology Stack



\- \*\*Python \& Pandas\*\* — Data cleaning, exploratory analysis, and business insights

\- \*\*PySpark\*\* — Data processing and validation

\- \*\*Snowflake\*\* — Cloud data warehouse and analytical storage

\- \*\*dbt\*\* — Staging and mart models, source definitions, and data tests

\- \*\*SQL\*\* — Transformations and financial aggregations

\- \*\*Power BI\*\* — Interactive dashboard and KPI reporting

\- \*\*Git \& GitHub\*\* — Version control and project documentation



\## Architecture



1\. \*\*Source:\*\* Microsoft Financial Sample dataset

2\. \*\*Clean:\*\* Standardized column names and handled missing discount-band values

3\. \*\*Process:\*\* Used Pandas and PySpark to validate and analyze the dataset

4\. \*\*Warehouse:\*\* Loaded 700 records into Snowflake

5\. \*\*Transform:\*\* Built staging and analytical models with dbt

6\. \*\*Test:\*\* Validated required fields and profit-margin ranges

7\. \*\*Visualize:\*\* Built a Power BI report for financial and profitability analysis



\## Key Findings



\- \*\*Total sales:\*\* approximately $118.73 million

\- \*\*Total profit:\*\* approximately $16.89 million

\- \*\*Overall profit margin:\*\* approximately 14.23%

\- \*\*Government segment:\*\* approximately $11.39 million in profit, with a margin of about 21.69%

\- \*\*Enterprise segment:\*\* approximately $614,500 in losses, with a margin of about -3.13%

\- \*\*Product insight:\*\* Paseo generated the highest total sales and absolute profit among the products analyzed.



These findings are based on the supplied sample dataset and are intended for analytical demonstration, not financial forecasting.



\## dbt Models and Testing



The dbt project includes:

\- A staging model for the Snowflake source table

\- Product-and-segment profitability analysis

\- Segment profitability aggregation

\- Monthly financial aggregation

\- Not-null tests on important profitability fields

\- A custom test that checks profit margins against a defined range



The dbt build completed successfully with \*\*6 models, 6 data tests, and 1 source\*\* in the recorded run.



\## Power BI Dashboard



The report includes:

\- \*\*Financial Performance Overview:\*\* sales, profit, overall margin, and monthly trends

\- \*\*Product \& Segment Analysis:\*\* profitability by product and customer segment, including segment-margin comparisons



The Power BI report is available in `reports/Financial\_Performance\_Analytics.pbix`.



\## Repository Structure



```text

financial-performance-analytics/

├── data/                       # Cleaned data and analytical outputs

├── financial\_performance\_dbt/  # dbt project, models, and tests

├── notebooks/                  # Python financial analysis

├── reports/                    # Power BI report and charts

├── .gitignore

└── README.md

```



\## How to Explore



1\. Review `notebooks/01\_financial\_analysis.ipynb` for data cleaning and exploratory analysis.

2\. Explore the dbt models under `financial\_performance\_dbt/models/`.

3\. Review the custom SQL test under `financial\_performance\_dbt/tests/`.

4\. Open `reports/Financial\_Performance\_Analytics.pbix` in Power BI Desktop.



Running the dbt models requires a configured Snowflake connection and appropriate access to the source table. Keep credentials in local configuration and never commit passwords or tokens.



\## Data Note



The repository contains cleaned and derived sample data for reproducibility. The original Excel source file is excluded. Please check the original dataset's applicable terms before redistributing it.



\## Author



\*\*Jishnu Gopinath\*\*



Portfolio project demonstrating financial analytics, data engineering, analytics engineering, and business intelligence.



