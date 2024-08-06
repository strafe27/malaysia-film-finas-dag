import os
from datetime import datetime

from cosmos import DbtDag, ProjectConfig, ProfileConfig, ExecutionConfig
from cosmos.profiles import PostgresUserPasswordProfileMapping   # Ensure you have the correct import for PostgreSQL profile mapping

profile_config = ProfileConfig(
    profile_name="pgsql",
    target_name="dev",
    profile_mapping=PostgresUserPasswordProfileMapping (
        conn_id="postgres",  # The Airflow connection ID for PostgreSQL
        profile_args={
            "dbname": "malaysiafilms",
            "schema": "malaysiafilms",
        },
    ),
)

dbt_postgres_dag = DbtDag(
    project_config=ProjectConfig("/usr/local/airflow/dags/pgsql",),
    operator_args={"install_deps": True},
    profile_config=profile_config,
    execution_config=ExecutionConfig(dbt_executable_path=f"{os.environ['AIRFLOW_HOME']}/dbt_venv/bin/dbt",),
    schedule_interval="@daily",
    start_date=datetime(2023, 9, 10),
    catchup=False,
    dag_id="dbt_dag",
)

