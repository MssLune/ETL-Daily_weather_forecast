# ETL Daily Weather Forecast

## Scenario
Creation of an automated extract, transform and load (ETL) process to extract daily weather forecasts and observed weather data and load them into an active report that the analysis team will use for further analysis. As part of a larger forecast modeling project, the team wants to use the report to monitor and measure the historical accuracy of temperature forecasts by source and station.

As a proof of concept (POC), to start with we are only required to do this for a single station and a single source. For each day at noon (local time), it will collect both the actual temperature and the predicted temperature for noon the following day in Casablanca, Morocco.

At a later stage, the team plans to expand the report to include lists of locations, different forecast sources, different update frequencies, and other weather parameters such as wind speed and direction, precipitation, and visibility.

## Data Source
Weather data package provided by the open source project [wttr.in](https://wttr.in/?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMLX0117ENSkillsNetwork860-2023-01-01), a web service that provides weather forecast information in a simple and text-based format. 
