# Data Engineering Database Modeling Project

## Overview

This project involves a comprehensive data engineering workflow for analyzing Malaysian box office data from FINAS. The data spans from 2018 to 2023 and includes various stages of processing, from ingestion to visualization.

## Project Workflow

1. **Data Ingestion**
   - **Source**: FINAS Malaysian Box Office Data [FINAS](https://www.finas.gov.my/en/malaysian-box-office/)
   - **Period Covered**: 2018 to 2023

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
  <img src="[https://github.com/user-attachments/assets/5fbd7c1a-f446-4674-be6f-f5b9eec66634" alt="Data Pipeline Diagram](https://github.com/user-attachments/assets/640b6add-4d8e-4967-816a-6e335e9613ec)"/>
</p>

5. **Visualization**
   - **Tool Used**: Power BI for creating interactive visualizations and reports.

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
