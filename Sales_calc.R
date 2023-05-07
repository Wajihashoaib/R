# Our first Calculations

quarter_1 <- 34654.98
quarter_2 <- 46345.98
mid_year_sales <- quarter_1 + quarter_2

year_sales <- mid_year_sales * 2


#Day 1 Start-Learning_R

#working_with_dataframes

library(ggplot2)    #calling library
data("diamonds")    #load datasets
View(diamonds)      # view dataset
head(diamonds)      #start 6 rows
str(diamonds)       #high_level information of dataset
colnames(diamonds)  #return column names 
library(tidyverse)
mutate(diamonds, carat_2 = carat*100) #create new column in existing dataset.



#Activity in Course creating a dataframe
names <- c("R", "python", "java", "C")
age <- c(23,34, 35 ,54)
lang <- data.frame(names, age)
head(lang)
str(lang)
glimpse(lang)
mutate(lang, age_in_20 = age + 20)


#import data from external resources

Hotel_booking_df <- read_csv("hotel_bookings")
