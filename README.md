Below is use case assumption for context on why I created the pipeline like that.
- Batching data.
- Apache Airflow as orchestrator and scheduler pipeline.
- Apache airflow task trigger ingestion tools to do all query in layer_1 folder to pull data from data sources.
- Apache airflow task trigger BigQuery operator to do bigquery job for query in following layer folder.

Data Lake process:
- layer 1 : contains all query from database sources.
- layer 2 : contains all transformation query from layer 1
- layer 3 : contains finalize query from layer 2

Data Warehouse process:
- layer 4 : contains query for dimension table and fact table s
- layer 5 : contains query for flat table and data mart.
