## Step 1: Load packages

install.packages("here")  #This package makes referencing files easier.
install.packages("skimr") #This package makes summarizing data really easy
install.packages("janitor") #The Janitor package has functions for cleaning data

#loading libraries
library(here)
library(skimr)
library(janitor)
library(dplyr)

## Step 2: Import data
bookings_df <- read_csv("hotel_bookings.csv")


## Step 3: Getting to know your data
head(bookings_df)

str(bookings_df)

glimpse(bookings_df)

colnames(bookings_df)

skim_without_charts(bookings_df)


## Step 4: Cleaning your data
trimmed_df <- bookings_df %>% 
  select( 'hotel', 'is_canceled', 'lead_time' )


trimmed_df %>% 
  select(hotel, is_canceled, lead_time) %>% 
  rename(hotel_type = hotel)

example_df <- bookings_df %>%
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")


View(example_df)
## Step 5: Another way of doing things
example_df <- bookings_df %>%
  mutate(guests = adults + children +babies )

example_df <- bookings_df %>%
summarize(number_canceled = sum(is_canceled),
          average_lead_time = mean(lead_time))


View(example_df)

