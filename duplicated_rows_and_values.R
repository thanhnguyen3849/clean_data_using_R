# Load the tidyverse
library(tidyverse)
library(dplyr)

# Load the data file
continents <- read_csv("D:/Thanh - Personal/Data Analysis/Data cleaning in R/Ex_Files_Cleaning_Bad_Data_R/Ex_Files_Cleaning_Bad_Data_R/Exercise Files/2_1/continents.csv")

# As usual, examine the imported data set
view(continents)
glimpse(continents)

# We only have 7 continents, why are there 10 rows? Oops!
# There are 2 records for Antarctica with different data 
# 3 records for Europe with the same data 

# Deal with Europe first because it is easier to remove identical duplicates
continents_2 <- unique(continents)

# Come to Antarctica, we have to use our common sense to judge which one to remove
# It is illogical to have 4mil people living there!
# Use the filter() function with specified conditions for the record, and the population of the record

continents_3 <- continents_2 %>% 
  filter(!(Continent=='Antarctica' & Population>100000))

# Now we have exactly 7 continents
view(continents_3)
glimpse(continents_3)



