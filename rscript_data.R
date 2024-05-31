#This script reads all dataframes and merges into just one dataframe.
#
#

# libraries

library(readxl)
library(dplyr)
library(tidyr)
library(lubridate)


# defining workspace


setwd("D:/Discord/0001_Test_Site-20240513T110025Z-001/0001_Test_Site")

# Read the CSV files that are in the working directory

# List all .csv files in the directory

arquivos_csv <- list.files(pattern = "\\.csv$")


lista_dataframes <- lapply(arquivos_csv, function(arquivo) {
  read.csv(arquivo, sep=";", header = TRUE) # Change reading options as needed
})

df<-lista_dataframes[[3]]


# Merge all dataframes into a single dataframe

df_final <- do.call(bind_rows, lista_dataframes)

df_final <- na.omit(df_final)


write.csv(df_final,file="D:/Discord/database_jack.csv")


summary(df_final)
