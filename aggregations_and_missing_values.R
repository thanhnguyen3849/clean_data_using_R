# Load the tidyverse
library(tidyverse)

# Load the data file
employees <- read_csv("D:/Thanh - Personal/Data Analysis/Data cleaning in R/Ex_Files_Cleaning_Bad_Data_R/Ex_Files_Cleaning_Bad_Data_R/Exercise Files/1_4/employees.csv")

# View the data and see that there are missing values
view(employees)

# Aggerate functions do not tolerate NAs so they would not function as long as there are NAs
# Examples
sum(employees$Salary)
mean(employees$Salary)

# One possible way to do is to remove the missing values
# The "na.rm=T/F" command can tell R to *ignore* the missing values
sum(employees$Salary, na.rm = TRUE)
mean(employees$Salary, na.rm = TRUE)




