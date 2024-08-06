{{ config(materialized='view') }}

with films as (
    select * 
    from {{ source('raw', 'raw2023') }}  -- Reference the source using the source macro
)

select * 
from films
