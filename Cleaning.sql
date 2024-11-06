--Merging the all tables into a single one.
SELECT
  * 
FROM 
  `iconic-baton-427611-m0.cyclist_data.202309`
UNION ALL
SELECT
  * 
FROM
  `iconic-baton-427611-m0.cyclist_data.202310`
UNION ALL
SELECT
  *
FROM 
  `iconic-baton-427611-m0.cyclist_data.202311`
UNION ALL
SELECT
  *
FROM
  `iconic-baton-427611-m0.cyclist_data.202312`
UNION ALL
SELECT
  *
FROM
  `iconic-baton-427611-m0.cyclist_data.202401`
UNION ALL
SELECT
  *
FROM
  `iconic-baton-427611-m0.cyclist_data.202402`
UNION ALL
SELECT
  *
FROM
  `iconic-baton-427611-m0.cyclist_data.202403`
UNION ALL
SELECT
  *
FROM
  `iconic-baton-427611-m0.cyclist_data.202404`
UNION ALL
SELECT
  *
FROM
  `iconic-baton-427611-m0.cyclist_data.202405`
UNION ALL
SELECT
  * 
FROM
  `iconic-baton-427611-m0.cyclist_data.202406`
UNION ALL
SELECT
  *
FROM
  `iconic-baton-427611-m0.cyclist_data.202407`
UNION ALL
SELECT
  *
FROM
  `iconic-baton-427611-m0.cyclist_data.202408`

--Renaming days of the week and creating a column that displays the starting month of each ride.
SELECT
  *,
  CASE
    WHEN started_weekday = 1 THEN "Sunday"
    WHEN started_weekday = 2 THEN "Monday"
    WHEN started_weekday = 3 THEN "Tuesday"
    WHEN started_weekday = 4 THEN "Wednesday"
    WHEN started_weekday = 5 THEN "Thursday"
    WHEN started_weekday = 6 THEN "Friday"
    WHEN started_weekday = 7 THEN "Saturday"
END
  AS day_of_week,
  CASE
    WHEN EXTRACT(month FROM started_date) = 1 THEN "January"
    WHEN EXTRACT(month
  FROM
    started_date) = 2 THEN "February"
    WHEN EXTRACT(month FROM started_date) = 3 THEN "March"
    WHEN EXTRACT(month
  FROM
    started_date) = 4 THEN "April"
    WHEN EXTRACT(month FROM started_date) = 5 THEN "May"
    WHEN EXTRACT(month
  FROM
    started_date) = 6 THEN "June"
    WHEN EXTRACT(month FROM started_date) = 7 THEN "July"
    WHEN EXTRACT(month
  FROM
    started_date) = 8 THEN "August"
    WHEN EXTRACT(month FROM started_date) = 9 THEN "September"
    WHEN EXTRACT(month
  FROM
    started_date) = 10 THEN "October"
    WHEN EXTRACT(month FROM started_date) = 11 THEN "November"
    WHEN EXTRACT(month
  FROM
    started_date) = 12 THEN "December"
END
  AS month
FROM
  `iconic-baton-427611-m0.cyclist_data.combined_tables`

-- Creating a new column that displays the trip duration of each ride, in minutes.
SELECT
  * EXCEPT (started_weekday),
  EXTRACT (hour
  FROM
    ride_lenght)*60 + EXTRACT (minute
  FROM
    ride_lenght) + EXTRACT (second
  FROM
    ride_lenght)/60 AS trip_duration_minutes
FROM
  `iconic-baton-427611-m0.cyclist_data.combined_tables2`

-- Excluding rows where the trip duration was less than one minute or greater than 12 hours.
DELETE
FROM
  `iconic-baton-427611-m0.cyclist_data.combined_tables3`
WHERE
  ride_lenght < "00:01:00"
OR
  ride_lengh > "12:00:00"
--132,325 rows were deleted