# Load the packages
library(tidyverse)
library(dplyr)
library(lubridate)

# Load the data file regarding the population of the city of Carpinteria in California
weather <- read_csv("D:/Thanh - Personal/Data Analysis/Data cleaning in R/Ex_Files_Cleaning_Bad_Data_R/Ex_Files_Cleaning_Bad_Data_R/Exercise Files/3_1/mexicanweather.csv")

# Inspect the imported data set
weather
glimpse(weather)

# Data include: station number, max tempt and min tempt elements, tempt values, and date of recording the tempt
# Dates are currently in the format of yyyy-mm-dd
# There are 33,712 records in the data set
# We are going to split up the year, month, and day into separate columns utilizing the lubridate fuctions
# We create the new column with either year or month or day and then extract the value from the "date" column in the data set to each

weather$year <- year(weather$date)
weather$month <- month(weather$date)
weather$day <- day(weather$date)

# Done! Check again
weather

# But we still don't know what day is the first of April and so
# We can do it so we will do it!
# This is extra, but I want to know the day of the week as "Monday" or "Sunday" 
# So I'm going to expand the argument
weather$dayweek <- wday(weather$date, label = T, abbr = F)

# Done! Check again
weather

