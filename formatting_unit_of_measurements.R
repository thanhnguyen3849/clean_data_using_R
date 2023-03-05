# Load the tidyverse
library(tidyverse)
library(dplyr)
library(lubridate)

# Load the data file regarding the population of the city of Carpinteria in California
weather <- read_csv("D:/Thanh - Personal/Data Analysis/Data cleaning in R/Ex_Files_Cleaning_Bad_Data_R/Ex_Files_Cleaning_Bad_Data_R/Exercise Files/3_2/mexicanweather.csv")

# So I am going to clean the data set first
# I want to know what class this data set belongs to: a list? a data frame? a vector?
class(weather)

# There are more than 33,000 rows
# I am going to count the rows with NA
sum(is.na(weather))

# In total there are 10883 rows with NA. That's approx. 30% of the records we have
# Normally we are advised to only remove NA as long as they are less than, may be 10-15%
# But for the simplicity of this exercise, I am going to remove them instead of employing other approaches
weather_2 <- weather %>% drop_na()
weather_2

# Make the dataset wider, so the tmax and tmin will automatically split into individual columns
weather_2 <- weather_2 %>%
  spread(element, value)
head(weather_2)

# Rename to make it easier to see
weather_3 <- weather_2 %>%
  rename(maxtemp=TMAX, mintemp=TMIN) %>%
  select(station, date, mintemp, maxtemp)
head(weather_3)

# Now inspect the temperature values
# 310 can be in F, but it is still high
# So may be it is in C but multiply by 10
weather_4 <- weather_3 %>% 
  mutate(mintemp=mintemp/10) %>% 
  mutate(maxtemp=maxtemp/10)
head(weather_4)

# Convert the tempts to F
weather_5 <- weather_4 %>% 
  mutate(mintemp=mintemp*(9/5)+32) %>%
  mutate(maxtemp=maxtemp*(9/5)+32)
head(weather_5, n=30)