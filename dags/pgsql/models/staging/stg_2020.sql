{{ config(materialized='view') }}

with films as (
    select * 
    from {{ source('public','raw_2020')}}  -- Reference to the raw table in a different database
)

select * 
from films
