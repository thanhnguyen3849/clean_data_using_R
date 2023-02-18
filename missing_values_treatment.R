# Cleaning Bad Data with R
# Video 1.2
# Missing Fields

# Load the tidyverse
library(tidyverse)

# Load the data file
heating <- read_csv("D:/Thanh - Personal/Data Analysis/Data cleaning in R/Ex_Files_Cleaning_Bad_Data_R/Ex_Files_Cleaning_Bad_Data_R/Exercise Files/1_2/heating.csv")

# Tidy the data
heating <- heating %>% 
  gather(key="age", value="homes", -Source)

summary(heating)
view(heating)

heating %>% 
  mutate(homes=as.numeric(homes))

heating %>%
  filter(is.na(as.numeric(homes)))

heatingnew <- heating %>%
  mutate(homes=ifelse(homes==".",0,homes)) %>% 
  mutate(homes=ifelse(homes=="Z",0,homes)) %>% 
  mutate(homes=as.numeric(homes))

summary(heatingnew)




