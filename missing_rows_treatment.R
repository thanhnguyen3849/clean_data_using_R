# Cleaning Bad Data with R
# Video 1.3
# Missing Rows

# Load the tidyverse
library(tidyverse)

# Load the data file
land <- read_csv("D:/Thanh - Personal/Data Analysis/Data cleaning in R/Ex_Files_Cleaning_Bad_Data_R/Ex_Files_Cleaning_Bad_Data_R/Exercise Files/1_3/publiclands.csv")

summary(land)
dim(land)

# there are 50 states in the US but only 42 rows present, so there must be some missing rows
unique(land$State)

# need to go back to the source to double check the source of errors
missing_states <- tibble(State=c('Connecticut', 'Delaware', 'Hawaii', 'Iowa','Maryland','Massachusetts',
                                 'New Jersey', 'Rhode Island'),
                         PublicLandAcres=c(0,0,0,0,0,0,0,0))

landnew <- rbind(land,missing_states)
summary(landnew)
view(landnew)