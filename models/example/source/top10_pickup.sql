{{
    config(
        materialized='table'
    )
}}

SELECT pickup_community_area, COUNT(*) as total_trips
FROM {{ ref ('chicago_taxi_trips') }}
GROUP BY pickup_community_area
ORDER BY total_trips DESC
LIMIT 10