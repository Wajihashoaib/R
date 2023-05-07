#Basic Data Cleaning Using R Language.


library(tidyverse) #to manipulate data
library(readr) #to load the library to raed csv
booking_df <- read_csv("hotel_bookings.csv") #importing dataset
head(booking_df)
glimpse(booking_df) #tidyverse function




#cleaning libraries

install.packages("here")  #This package makes referencing files easier.
install.packages("skimr") #This package makes summarizing data really easy
install.packages("janitor") #The Janitor package has functions for cleaning data

#loading libraries
library(here)
library(skimr)
library(janitor)
library(dplyr)


#loading the dataset
install.packages("palmerpenguins")
library(palmerpenguins)


#summary of the dataset
skim_without_charts(penguins)
glimpse(penguins)



#print only species we use pipe

penguins %>%  #ctrl+shift+M
  select(species)


#print whole data except species we use pipe

penguins %>%  #ctrl+shift+M
  select(-species)

#change the name of the column to new_island
penguins %>% 
  rename(new_island = island)

#change to uppercase and lowercase

rename_with(penguins, toupper)
rename_with(penguins, tolower)  

#clean columns names

clean_names(penguins)
