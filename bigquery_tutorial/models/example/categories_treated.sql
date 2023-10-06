{{ config(materialized='table') }}

select * from {{ source('public', 'categories') }}