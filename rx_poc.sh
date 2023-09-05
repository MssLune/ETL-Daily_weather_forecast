#! /bin/bash

# 1. Builds a history of the weather forecast

# Today's weather report
today=`date +%Y%m%d`
weather_report=raw_data_$today

# Store the current hour, day, month and year
year=$(TZ="Italy/Crema" date +%Y)
month=$(TZ="Italy/Crema" date +%m)
day=$(TZ="Italy/Crema" date +%d)
hour=$(TZ="Italy/Crema" date +%H)

# Download the data from wttr.in for Casablanca  and save it in weather_report
city=Crema
curl wttr.in/$city --output $weather_report

# Extract all lines with temperature C from the weather report
grep °C  $weather_report > temperatures.txt

# Extract the current temperature
obs_tmp=`cat -A temperatures.txt | head -1 | cut -d "+" -f2 | cut -d "^" -f1`
echo "Observed temperature = $obs_tmp °C"

# Extract the forecast for tomorrow temperature
fc_tmp=`cat -A temperatures.txt | head -3 | tail -1 | cut -d "+" -f2  | cut -d "^" -f1`
echo "Tomorrow's temperature forecast for noon = $fc_tmp °C"

record=$(echo -e "$year\t$month\t$day\t$hour\t$obs_tmp\t$fc_tmp")

# Append the record to rx_roc.log
echo $record>>rx_poc.log
