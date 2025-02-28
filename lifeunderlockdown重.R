library(dplyr)
library(readr)

read_csv("Users/ysh/Desktop/lifeunder重/data/life-under-lockdown-wave2-extract.csv")

setwd("/Users/ysh/Desktop/lifeunder重/data/")
df <- read_csv("life-under-lockdown-wave2-extract.csv")
spec(df)
print(df)
lul2_d <- read_csv("life-under-lockdown-wave2-extract.csv")

lul2_d %>% 
  mutate(know_facebook = ordered(
    know_facebook,
    levels = c(
      'Nothing at all' ,
      'Not very much' ,
      'A fair amount' ,
      'A great deal'
    ))) %>%
  group_by(know_facebook) %>% 
  summarise(n=n(), beliefs = mean (beliefs))
