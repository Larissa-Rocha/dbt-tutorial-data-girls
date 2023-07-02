{{ config(materialized='table') }}

select
    name_album
    , avg(value_acousticness) as avg_acousticness
    , avg(value_danceability) as avg_danceability
    , avg(value_energy) as avg_energy
    , avg(popularity) as avg_popularity
from {{ ref('stg_taylor_swift') }}
group by 1