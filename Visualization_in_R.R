#Visualization in R

install.packages('Tmisc')
library(Tmisc)
data(quartet)
View(quartet)

quartet %>% 
  group_by(set) %>% 
  summarize(mean(x) , sd(x) , mean(y),sd(y) , cor(x,y))


#Hands on activity
library(ggplot2) 
library(palmerpenguins)
data(penguins)
View(penguins)

ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm , y = body_mass_g))


#this graph show the realtionship between two variables, The larger the penguin the bigger the flipper.




?geom_bar  #to study more about function use ? 
#Right now, our plot's in black and white. 
#It clearly shows the positive relationship between the two variables.
#As the values on the x-axis increase, the values on the y-axis increase. 
#But it's also got some limitations. 
#For example, we can't tell which data points refer to 
#each of the three penguin species. To solve this problem,
#we can map a new variable to a new aesthetic


ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm , y = body_mass_g , color = species))

#The Gentoo are the largest of the three penguin species.

ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm , y = body_mass_g , shape = species))

#instead of color points graph show the shape.

ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm , y = body_mass_g ,shape= species, color = species))

#change the shape and color as well
ggplot(data = penguins)+geom_point(mapping = aes(x=flipper_length_mm , y = body_mass_g ,alpha= species))

#only shades of black

ggplot(data = penguins)+geom_smooth(mapping = aes(x=flipper_length_mm , y = body_mass_g))


#different line for each species "linetype"
ggplot(data = penguins)+geom_smooth(mapping = aes(x=flipper_length_mm , y = body_mass_g ,linetype = species))


ggplot(data = penguins)+geom_jitter(mapping = aes(x=flipper_length_mm , y = body_mass_g ,linetype = species))

#jitter function creates a scatter plot and then adds a small amount of random noise to each point in the plot. Jittering helps us deal with over-plotting, which happens when the data points in a plot overlap with each other.



#working with geom_bar

data("diamonds")
View(diamonds)

#Create a bar graph

ggplot(data = diamonds)+ geom_bar(mapping = aes(x= cut))
#shows the number of diamond for each category of cut.

#using color
ggplot(data = diamonds)+ geom_bar(mapping = aes(x= cut ,color = cut))

#to fill
ggplot(data = diamonds)+ geom_bar(mapping = aes(x= cut ,fill = cut))

#to fill with variable color inside of diamond
ggplot(data = diamonds)+ geom_bar(mapping = aes(x= cut ,fill = color))

#facet 


ggplot(data = penguins)+
  geom_point(mapping = aes(x=flipper_length_mm , y = body_mass_g , color = species))+
  facet_wrap(~species)

#The separate plots show the relationship between body mass and flipper length within each species of penguin.


#use facet on diamond dataset.

ggplot(data = diamonds)+ 
  geom_bar(mapping = aes(x= color ,fill = cut))+
  facet_wrap(~cut)



#hands on activity
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel))


ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel, fill = deposit_type))


ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel, fill = market_segment))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~ deposit_type)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45)) #to make code clear


ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~market_segment) + #based on market segment
  theme(axis.text.x = element_text(angle = 45))


ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment) +
  theme(axis.text.x = element_text(angle = 45))