library(tidyverse)
library(dplyr)
library(readr)
economic_data <- read_delim("economic_data.csv", 
                            ";", escape_double = FALSE, trim_ws = TRUE)
View(economic_data)

df <- economic_data %>% spread(key = `Subject Descriptor`,value =`2019`)
df %>% View()
names(df) <- c('country','units','scale','gdp','inflation_avgcp','inflation_eopcp','population',
               'unemployment_rate','exports','imports')
write.csv(df,file="economic_data_clean.csv")
