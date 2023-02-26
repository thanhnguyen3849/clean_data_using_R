# Load the tidyverse
library(tidyverse)
library(dplyr)

# Load the data file regarding the population of the city of Carpinteria in California
carpinteria <- read_csv("D:/Thanh - Personal/Data Analysis/Data cleaning in R/Ex_Files_Cleaning_Bad_Data_R/Ex_Files_Cleaning_Bad_Data_R/Exercise Files/2_2/population.csv")

# Check the data set
view(carpinteria)
glimpse(carpinteria)

# The data set is not divided properly
# As we can see that they have the Total, Male, Female, and different age groups together
# We should split out the numbers for Genders and Age groups
carpinteria_gender <- carpinteria[2:3,]
carpinteria_ag <- carpinteria[4:16,]

# Now we have 2 data set, one for Genders and one for Age groups
glimpse(carpinteria_gender)
glimpse(carpinteria_ag)

# The sum of population in each data set will match to the total 
sum(carpinteria_gender$Population)
sum(carpinteria_ag$Population)