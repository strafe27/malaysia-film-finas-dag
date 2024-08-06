# Data Engineering Database Modeling Project with dbt, Snowflake and Apache Airflow

## Overview

This project involves a comprehensive data engineering workflow for analyzing Malaysian box office data from FINAS. The data spans from 2018 to 2023 and includes various stages of processing, from ingestion to visualization.

## Project Workflow

1. **Data Ingestion**
   - **Source**: FINAS Malaysian Box Office Data [FINAS](https://www.finas.gov.my/en/malaysian-box-office/)
   - **Period Covered**: 2018 to 2023

<p align="center">
  <img src="https://github.com/user-attachments/assets/94400f44-2b40-4c03-8a75-b4396453cf41" alt="Data Pipeline Diagram"/>
</p>

2. **OCR Processing**
   - **Task**: Converted PDF files to CSV format using Optical Character Recognition (OCR) technology.

3. **Data Upload**
   - **Action**: Uploaded the raw CSV data into Snowflake.

4. **Data Modeling**
   - **Stages Created**:
     - **Staging**: Preliminary data processing and preparation.
     - **Warehouse**: Created DIM and FACT tables
     - **Data Mart**: Using DIM and FACT tables, data marts are created for strategic team use purposes such as monthly ticket revenue and monthly movie releases.

<p align="center">
  <img src="https://github.com/user-attachments/assets/640b6add-4d8e-4967-816a-6e335e9613ec" alt="Data Pipeline Diagram"/>
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/c7857ce7-f17b-4c39-8f99-09e826a07a1a" alt="Data Pipeline Diagram"/>
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/e5066e34-c36b-41cb-be40-4d8187f909d7" alt="Data Pipeline Diagram"/>
</p>

6. **Data Orchestration**
   - **Tool Used**: Apache Airflow
   - To allow daily sceduling to ingest new data

<p align="center">
  <img src="https://github.com/user-attachments/assets/0c34b05b-2e9a-4b85-b45c-1e37444b60b1" alt="Data Pipeline Diagram"/>
</p>

5. **Visualization**
   - **Tool Used**: Power BI for creating interactive visualizations and reports.

<p align="center">
  <img src="https://github.com/user-attachments/assets/7544743c-6351-4ee7-81f2-1ee6e04eb49f" alt="Data Pipeline Diagram"/>
</p>


## Tools Used

- **Snowflake**: Cloud-based data warehouse platform for data storage and management.
- **dbt**: Data build tool for transforming and modeling data within the warehouse.
- **Airflow**: Workflow orchestration tool for managing and automating data pipelines.
- **Docker**: Containerization platform used for managing the development and deployment environment.
- **Power BI**: Business analytics tool for visualizing and analyzing data.

## Setup and Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/yourusername/your-repo.git
   cd your-repo
