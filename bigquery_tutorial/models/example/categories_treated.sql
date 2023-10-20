{{ config(materialized='table') }}

select * from {{ source('raw', 'categories') }}