{{ config(materialized='table') }}

with monthly as (
    select 
        to_char(release_date, 'YYYY-MM-01') as month,
        count(*) as total_ticket_collection
    from 
        {{ ref('dim_films') }}
    group by 
        month
)

select * 
from monthly

order by 
    month
