library(base)
library(readr)
library(tidyverse)

###CPI from 1995-2011 with old methodology
CPI_old_95_11 <- read_delim("Corruption indices data/CPI_old_1995.csv", 
                           delim = ";", escape_double = FALSE, trim_ws = TRUE)
CPI_old_95_11 <- CPI_old_95_11 %>% select(c("Country name", "country", "time","value"))
view(CPI_old_95_11)

###CPI from 2012-2020 with new methodology
CPI_new_12_20 <- read_delim("Corruption indices data/CPI_new_2012.csv", delim = ";", escape_double = FALSE, trim_ws = TRUE)
CPI_new_12_20 <- CPI_new_12_20 %>% select(c("Country name", "country", "time","value"))
view(CPI_new_12_2)

###CCI from 1996-2021
CCI <- read_csv("Corruption indices data/CCI.csv")
colnames(CCI) <- c("Country Name", "Country Code", "Series Name", "Series Code", 1996:2021)
CCI <- CCI[,-c(3,4)]
View(CCI)

