#########################################################################
# 3-day R workshop 
# Day 3 pm - Project structure
# Part C
# 4th November 2018
# 06_readr.R
#########################################################################
# You can load the core tidyverse packages using library(tidyverse)
# But you can also load each package individually just like any other package

# library(readr) # Loaded when the tidyverse package is called

# 1. Read in "brauer_data.csv" using the readr function read_csv()
# You can get the correct code by using the import button and then
# copying the relevant code into this R script
read_csv("data/brauer_data.csv")

# Note that readr prints the column specification

# There are many additional arguments that can be fed into this function
# 2. Explore some of them manually by clicking the "Import Dataset" button

# It is designed to flexibly parse many types of data found in the wild, 
# including instances where the data unexpectedly changes
# For example, the file contains NAs intermittently

# 3. Let's repeat the process on an .xlsx copy using read_excel from read_xl package
library(readxl) # Needs to be explicitly called
read_excel("data/brauer_data.xlsx")

# readr also allow you to write you data files back to disc
# write_csv(data_to_save, "filename.csv")
