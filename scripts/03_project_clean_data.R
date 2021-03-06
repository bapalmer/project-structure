#########################################################################
# 3-day R workshop 
# Day 3 pm - Project structure
# Part B
# 4th November 2018
# 03_project_clean_data.R
#########################################################################
# Load the required packages
# library(tidyverse)

# Section 1: Load the data ----
# This data frame has 2 lines of meta data that must be skipped over
who_tb_data <- read_csv("data/raw_data/who_tb_data.csv",
                        skip = 2)%>%
  
  gather(new_ep_f014:new_sp_m65, # columns to be collapsed
         key = "key", 
         value = "cases", na.rm = TRUE) %>%
  
  # Two separate steps required to process the "key" column
  separate(key, 
           c("new", "type", "sexage"), 
           sep = "_") %>%
  
  separate(sexage, 
           c("sex", "age"), 
           sep = 1) %>%
  
  select(-iso2, -iso3, -new) %>% # Removes the redundant columns 
  
  spread(sex, cases) %>% # Places males and females in separate columns
  
  mutate(total = m + f)

#Section 2: Save the cleaned data ----
# This is commented out
# I only use this when I need to keep a record of what I've done
# write_csv(who_tb_data,
#           paste("data/",Sys.Date(),"_clean_who_tb_data.csv",
#                 sep=""))

