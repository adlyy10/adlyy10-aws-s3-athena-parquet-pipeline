# AWS S3 to Athena Parquet Pipeline

## Project Overview

This project demonstrates a simple Data Engineering pipeline built using AWS services.

The pipeline ingests raw CSV data into Amazon S3, catalogs it using AWS Glue Data Catalog, analyzes it using Amazon Athena, and converts the data into Parquet format for optimized analytics.

## Architecture

CSV File
↓
Amazon S3 (Raw Layer)
↓
AWS Glue Data Catalog
↓
Amazon Athena
↓
Parquet Conversion
↓
Amazon S3 (Processed Layer)

## Technologies Used

* Amazon S3
* AWS Glue Data Catalog
* Amazon Athena
* SQL
* Parquet

## Key Tasks

* Created an S3 bucket and organized raw and processed zones
* Uploaded and managed CSV datasets
* Created a Glue database
* Configured Athena query results
* Created external tables on top of S3 data
* Performed SQL analytics on cloud data
* Cleaned invalid values using SQL
* Converted CSV data into Parquet format

## Results

* Successfully queried data directly from S3 using Athena
* Improved storage format by converting CSV to Parquet
* Built a cloud-based analytics workflow following Data Lake principles

## Future Improvements

* AWS Glue ETL Jobs
* Amazon Redshift Integration
* PySpark Data Transformations
* Apache Airflow Orchestration
