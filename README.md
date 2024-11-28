## Project Description: Electric Vehicle Sales and Configuration Data Analysis

### Objective:
This project focuses on analyzing Electric Vehicle (EV) configuration and sales data using an ETL (Extract, Transform, Load) process. The project involves extracting data from Kaggle using the Kaggle API, transforming it using Python in a Jupyter notebook, and loading the processed data into a MySQL database via SQLAlchemy. After cleaning the data, the final outcome will be an interactive Power BI dashboard that visualizes EV sales trends, configuration details, and other key metrics.

### Steps Involved:

1. **Data Extraction**:
   - Data will be extracted from Kaggle using the Kaggle API. The datasets include information on EV configurations, such as model specifications, battery capacities, and ranges, as well as EV sales data across regions and time periods.
   - The sales dataset contains up to 12,000 rows, while the configuration dataset includes approximately 6,000 rows.

2. **Data Transformation**:
   - The extracted data will be loaded into a Jupyter notebook, where it will be cleaned and transformed using Python libraries like Pandas and NumPy.
   - Key transformation tasks include handling missing values, correcting data types, renaming columns, filtering out irrelevant data, and performing basic analysis to identify outliers or inconsistencies.
   - The datasets will be aggregated and formatted to ensure they are ready for analysis and visualization.

3. **Data Loading (ETL - Load)**:
   - The transformed data will be loaded into a MySQL database using SQLAlchemy. This ensures the datasets are stored in a structured format for further analysis.
   - Data will be appended to the MySQL server, preserving the original data while adding new datasets for deeper insights.

4. **Data Cleaning and Final Transformation in MySQL**:
   - Additional data cleaning tasks will be performed directly in MySQL using SQL queries. This includes handling any remaining inconsistencies, removing duplicates, and filling or removing null values.
   - SQL commands (e.g., `UPDATE`, `DELETE`, `JOIN`) will be used to refine the data for better analysis.

5. **Data Visualization (Power BI)**:
   - After cleaning and final transformation, the data will be used to create an interactive Power BI dashboard. This dashboard will provide visual insights on:
     - EV sales trends over time, derived from the sales data (up to 12,000 rows).
     - EV configuration comparisons across various models (using around 6,000 rows of configuration data).
     - Regional sales performance and the market share of electric vehicles.
     - Key metrics such as top-selling EV models, average monthly sales, and price distribution.

6. **Conclusion**:
   - The final deliverable will be a Power BI dashboard that presents actionable insights into the electric vehicle market.
   - The ETL process will ensure the data is efficiently processed, cleaned, and ready for analysis.
   - This project will provide a clear view of EV sales trends and configuration preferences, helping stakeholders make informed decisions about product offerings and market strategies in the EV industry.

### Technologies Used:
- **Kaggle API**: For downloading the datasets.
- **Python**: For data transformation and analysis (using libraries like Pandas and NumPy).
- **SQLAlchemy**: For connecting Python to MySQL and loading data into the database.
- **MySQL**: For storing and cleaning the data through SQL queries.
- **Power BI**: For creating the interactive dashboards and data visualizations.

### Expected Outcome:
The project will result in a clean, structured dataset stored in MySQL, ready for deep analysis and reporting. The Power BI dashboard will provide dynamic visualizations on EV sales and configuration trends, offering key insights such as top-selling models, sales growth, and popular configurations. The final dashboard will leverage both the 6,000 rows of configuration data and 12,000 rows of sales data, ensuring comprehensive coverage of the EV market.
