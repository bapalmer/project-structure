#########################################################################
# 3-day R workshop 
# Day 3 pm - Project structure
# Part E
# 4th November 2018
# 11_practise_plots.R
#########################################################################
# Have a go at generating some plots
# library(tidyverse)

# Load the data
who_tb_data <- read_csv("data/clean_who_tb_data.csv")

# or
clean_brauer_data <- read_csv("morning_session/data/clean_brauer_data.csv")

# or use sample data that comes with ggplot2
diamonds <- ggplot2::diamonds

# Draw a couple of plots

# Play with the geoms, aesthetics and themes

# Save a few to file

# Create a few plot objects

# Suggestion: A bar plot of all TB cases in Ireland 
who_ire <- who_tb_data %>%
  filter(country == "Ireland") %>%
# Basic barplot with data by age shown
ggplot() +
  geom_bar(mapping = aes(x = year, y = total, fill = age),
           stat = "identity") 

# 1. Add a title

# 2. Change the X and Y axis labels

# 3. Move the legend to underneath the plot

# 4. Change the background theme

# 5. Increase the font size of the 

# 6. Change the plot below using the fuctions  
# coord_flip() or theme(axis.text.x = element_text()) 
# to make the x-axis labels legible
who_ire <- who_tb_data %>%
  filter(country == "Ireland") %>%
ggplot() +
  # In the next line factor() converts the numeric input to a factor
  geom_bar(mapping = aes(x = factor(year), y = total, fill = age),
           stat = "identity") 
