# This script splits the datetime column into two columns called data respectability and time 

library(readxl)
library(dplyr)
library(tidyr)
library(lubridate)
 
        
setwd("D:/Discord")               
        
# read database 

df <- read.csv("database_jack.csv")

# split datatime in two columns: data and time 

df <- df %>%
  mutate(TIME = as.POSIXct(TIME, format = "%d/%m/%Y %H:%M:%S"), 
         # Converting the column to POSIXct format
         data = as.Date(TIME),                                       
         # Extracting the date
         hora = format(TIME, "%H:%M:%S"))   %>%                    
  # Extracting the time
  select(-TIME) 

write.csv(df,file="database_jack_01.csv")
