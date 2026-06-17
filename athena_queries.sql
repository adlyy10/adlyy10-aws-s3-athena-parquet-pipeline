CREATE EXTERNAL TABLE IF NOT EXISTS de_project_db.sales (
    order_id STRING,
    customer_name STRING,
    country STRING,
    sales STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION 's3://mahmoud-data-engineering-project-2026/raw/'
TBLPROPERTIES ('skip.header.line.count'='1');

-- Total Sales

SELECT
    SUM(CAST(NULLIF(sales, '') AS INTEGER)) AS total_sales
FROM de_project_db.sales;

-- Sales by Country

SELECT
    country,
    SUM(CAST(NULLIF(sales, '') AS INTEGER)) AS total_sales
FROM de_project_db.sales
GROUP BY country;

-- Convert CSV to Parquet

CREATE TABLE de_project_db.sales_parquet
WITH (
    format = 'PARQUET',
    external_location = 's3://mahmoud-data-engineering-project-2026/processed/sales_parquet/'
)
AS
SELECT
    CAST(order_id AS INTEGER) AS order_id,
    customer_name,
    country,
    CAST(NULLIF(sales, '') AS INTEGER) AS sales
FROM de_project_db.sales;
