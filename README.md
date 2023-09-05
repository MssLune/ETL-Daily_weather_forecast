# ETL Daily Weather Forecast

## Scenario
Creation of an automated extract, transform and load (ETL) process to extract daily weather forecasts and observed weather data and load them into an active report that the analysis team will use for further analysis. As part of a larger forecast modeling project, the team wants to use the report to monitor and measure the historical accuracy of temperature forecasts by source and station.

As a proof of concept (POC), to start with we are only required to do this for a single station and a single source. For each day at noon (local time), it will collect both the actual temperature and the predicted temperature for noon the following day in Crema, Italy.

At a later stage, the team plans to expand the report to include lists of locations, different forecast sources, different update frequencies, and other weather parameters such as wind speed and direction, precipitation, and visibility.

## Data Source
Weather data package provided by the open source project [wttr.in](https://wttr.in/?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMLX0117ENSkillsNetwork860-2023-01-01), a web service that provides weather forecast information in a simple and text-based format. For more information about the service, visit the [Github Repo](https://github.com/chubin/wttr.in#readme).

![Weather in Crema, LOmbardy, Italy](https://github.com/MssLune/ETL-Daily_weather_forecast/blob/main/wttr_Crema.png?raw=true)


## Additional Information
- ``rx_poc.log`` : POC weather report log file (text file containing a growing history of the daily weather data to be scraped).
- ``rx_poc.sh``  : Bash script of the weather report from wttr.in.
- ``obs_tmp``    : Current temperature.
- ``fc_tmp``     : Tomorrow's temperature forecast for noon.

Finally, we schedule the Bash script rx_poc.sh to run every day at noon local time with cron. 
![Crontab editor](https://github.com/MssLune/ETL-Daily_weather_forecast/blob/main/crontab_rxpoc.png?raw=true)
