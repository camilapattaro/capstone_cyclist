--1.Number of rides.
SELECT
  COUNT (member_casual) AS total,
  COUNTIF (member_casual) = "casual",
  COUNTIF (member_casual) = "member"
FROM
  `iconic-baton-427611-m0.cyclist_data.combined_tables3`
--Casual:1.1985.922 Members:3.581.392
--We can observe that the number of members is nearly double that of casual riders.

--2.Type of bike most frequently used.
SELECT
  rideable_type,
  member_casual,
  COUNT (ride_id) AS rides_total,
FROM
  `iconic-baton-427611-m0.cyclist_data.combined_tables3`
GROUP BY
  rideable_type,
  member_casual
ORDER BY 
  rides_total DESC
--Although the difference is not significant, we can observe that members tend to prefer classic bikes, while casual riders favor electric bikes.

--3.Average duration of the rides, in minutes.
SELECT
  member_casual,
AVG (trip_duration_minutes) AS avg_trip_duration
FROM
  `iconic-baton-427611-m0.cyclist_data.combined_tables3`
GROUP BY
  member_casual
--Casual:21 Members:12
--We can observe that casual riders have a significantly longer average trip duration.

--4.Which day of the week the bike-share service was used the most.
SELECT
  day_of_week,
  member_casual,
  COUNT (ride_id) AS rides_day,
FROM
  `iconic-baton-427611-m0.cyclist_data.combined_tables3`
GROUP BY
  day_of_week,
  member_casual
ORDER BY
  member_casual,
  rides_day DESC
--Here, we can clearly observe a pattern indicating that casual riders tend to utilize the service more during weekends, while members typically use it more on weekdays.
--This suggests that members likely use the bikes for commuting to work, while casual riders utilize them for recreational purposes.
--This also explains why the average trip duration for casual riders is longer than for members.
--Casual riders are often exploring and visiting places, resulting in longer rides compared to members, who primarily use the bikes for commuting between home and work.

--5.Which month the bike-share service was used the most.
SELECT
  month,
  member_casual,
  COUNT (ride_id) AS rides_month
FROM
  `iconic-baton-427611-m0.cyclist_data.combined_tables3`
GROUP BY
  month,
  member_casual
ORDER BY 
  member_casual,
  rides_month DESC
--We can see that during the warmest months, particularly in summer, the number of rides is higher for both members and casual riders.

--6.The busiest hours of the day.
SELECT
  member_casual,
  EXTRACT (hour FROM started_time) AS time_of_day,
  COUNT (ride_id) AS num_of_rides,
FROM
  `iconic-baton-427611-m0.cyclist_data.combined_tables3`
GROUP BY
  time_of_day,
  member_casual
ORDER BY
  member_casual,
  num_of_rides DESC
--Members tend to use the service during morning and evening rush hours, while casual riders show a steady increase in rides throughout the day, which subsequently decreases at night.

--7.To conclude my analysis, I compared the most popular stations for initiating a trip.
--Members:
SELECT
  start_station_name,
  member_casual,
  COUNT (ride_id) AS member_start_station,
FROM 
  `iconic-baton-427611-m0.cyclist_data.combined_tables3`
WHERE
  memer_casual = "member"
GROUP BY 
  start_station_name,
  member_casual
ORDER BY
  member_casual_station DESC

--Casual riders:
SELECT
  start_station_name,
  member_casual,
  COUNT (ride_id) AS casual_start_station,
FROM 
  `iconic-baton-427611-m0.cyclist_data.combined_tables3`
WHERE
  memer_casual = "casual"
GROUP BY 
  start_station_name,
  member_casual
ORDER BY
  casual_casual_station DESC
--Although I chose to continue with the analysis despite the missing data, it is important to note that the results regarding the popularity of the starting stations may not be completely accurate.
--A more detailed analysis would be required to obtain more comprehensive insights.
--We can observe that members tend to favor stations in downtown and closer to more commercial districts like River North and West Loop Gate.
--This reinforces the idea that members use the bikes for commuting to work.
--By contrast, the preferred locations for casual riders tend to be near the water and close to landmarks and tourist attractions, such as parks and museums, affirming the idea that casual riders primarily use the bikes for leisure.


