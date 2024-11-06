# Case Study: How Does a Bike-Share Navigate Speedy Success?
[Medium](https://medium.com/@camilapattaro/case-study-how-does-a-bike-share-navigate-speedy-success-561fe81e042a)

# Introduction
Welcome to my Cyclistic bike-share analysis case study, which serves as the capstone project for the Google Data Analytics Professional Certificate. In this project, I am collaborating with a key team members on behalf of the fictional company, Cyclistic. To address the business questions posed, I will be applying the data analysis process as outlined in the course, following these steps: Ask, Prepare, Process, Analyze, Share, and Act.

# Scenario
I am a junior data analyst working on the marketing analytics team at Cyclistic, a bike-share company based in Chicago. The director of marketing believes that the company’s future success hinges on increasing the number of annual memberships. Consequently, my team is focused on understanding the differences in how casual riders and annual members utilize Cyclistic bikes. Based on these insights, we will develop a new marketing strategy aimed at converting casual riders into annual members.

# About the company
In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime. Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members. Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a solid opportunity to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs. Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.

# 1. Ask
The first step is to identify the business task, which refers to the problem I am aiming to solve. In this case, it involves converting casual riders into annual members. To achieve this, it will be necessary to conduct an analysis of how casual riders and annual members use Cyclistic bikes differently. Based on these insights, my team and I will design a new marketing strategy.

Identifying my key stakeholders is also important, and in this case, they are the executive team and Lily Moreno, the director of marketing and my manager. Moreno is responsible for the development of campaigns and initiatives to promote the bike-share program.

# 2. Prepare
The second step is to prepare the data that will be used for my analysis. This stage involves not only gathering the data but also checking its credibility and integrity.

I used Cyclistic’s historical trip data, which can be found at this here. As instructed, for the purposes of this study, I analyzed the data from the last 12 months, from September 2023 to August 2024.

To ensure the data’s credibility, I applied the ROCCC method.

Reliable: The data is reliable and unbiased.

Original: The data is original, as it was collected directly by the company.

Comprehensive: The data is comprehensive, as it does not contain any missing relevant information.

Current: The data is up-to-date, covering a period slightly over one year ago.

Cited: The data is cited (company’s website) and distributed under this licence.

Upon closer inspection, it was evident that all the files contain the same 13 columns or attributes, and the data types are suitable and consistent across all entries. The columns are as follows:

ride_id — unique ID for each customer.
rideable_type — type of bikes, between electric and classic.
started_at — time, day, month and year when the ride started.
ended_at — time, day, month and year when the ride ended.
start_station_name — name of the station where the ride started.
start_station_id — ID of the station where the ride started.
end_station_name — name of the station where the ride ended.
end_station_id — ID of the station where the ride ended.
start_lat — starting ride latitude.
start_lng — starting ride longitude.
end_lat — endeding ride latitude.
end_lng — ending ride longitude.
member_casual — to identify each rider as member or casual rider.

# 3. Process
It is now time to integrate all the data and perform the necessary cleaning to ensure a thorough analysis in the next stages.

As instructed in the course, I used Excel to perform a preliminary cleaning.

Excel

The date and time data for the start and end of the rides were consolidated within a single cell (“started_at” and “ended_at”). Consequently, the initial step I undertook was to separate these cells, thereby establishing distinct columns for each data point, “started_date”, “started_time”, “ended_date” and “ended_time”.

After that, the start and end times of each ride were in two distinct columns, so I created a third column, applying only the subtraction of the cells “ended_time” and “started_time”, labeled “ride_length,” where I calculated the duration of each ride, using HH:MM:SS format.

Big Query

Subsequently, I created a column named “day_of_week” to facilitate the visualization of the day of the week when each ride commenced. I used the WEEKDAY function in Excel, where Sunday is represented as 1 and Saturday as 7.

Lastly, I checked for duplicates, filtered and sorted all the columns to identify any relevant blank spaces and inconsistencies in formatting. I noticed that there were many blank cells in the columns related to the start and end stations of the trips. However, I chose not to exclude them, as the other data in those rows were still valuable for my analysis.

Due to the large size of the dataset, I decided to transition from Excel to SQL and finish the cleaning process using BigQuery.
Codes inside CLEANING folder.

# 4. Analyse
I used Big Query to conduct my analysis, and I will outline my steps below to facilitate visualization and understanding. My entire analysis was executed by comparing the data between casual riders and members.
Codes inside ANALYSING folder.

# 5. Share
This is the stage where we share our findings. This is achieved by creating impactful visualizations that will assist the audience in easily understanding the assessment. Presenting the extensive data in the form of graphs and plots makes it easier to visualize trends, identify patterns, and effectively convey the results of my analysis.

For that purpose, I transferred my data to Tableau and created a dashboard, which can be accessed [here](https://public.tableau.com/app/profile/camila.pattaro7144/viz/CyclistBikeShareAnalysis_17294455179800/CyclistDashboard)

# 6. Act
The final stage of our analysis involves applying our insights to drive solutions and recommendations that are supported by data. Our business task was to identify the differences in usage between members and casual riders of the Cyclistic bike-share system, with the goal of designing effective marketing strategies aimed at converting casual riders into annual members.

Data-driven recommendations:

With the use of digital marketing, promote bike usage in general, encouraging a more sustainable commuting option and a healthier lifestyle. Topics such as global warming and maintaining health through physical exercise are of general interest to the public, and it would be beneficial to leverage these in our favor. This approach could not only attract new members but also encourage casual riders to switch to an annual plan.
Identify the most frequented locations by casual riders and partner with businesses in those areas to offer member-only deals and discounts, encouraging casual riders to transition to a membership plan.
Promote the use of bikes during the off-peak season months by offering early bird sign-up promotions with discounts for memberships.
Offer discount plans for families and friends to encourage collective memberships.

# Conclusion
This analysis provides valuable insights into the preferences and behaviors of Cyclistic members and casual riders. By considering these differences, the company can effectively develop a strategy to convert casual riders into potential members.
