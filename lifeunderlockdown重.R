library(dplyr)
library(readr)

read_csv("Users/ysh/Desktop/lifeunder重/data/life-under-lockdown-wave2-extract.csv")

setwd("/Users/ysh/Desktop/lifeunder重/data/")
df <- read_csv("life-under-lockdown-wave2-extract.csv")
spec(df)
print(df)
lul2_d <- read_csv("life-under-lockdown-wave2-extract.csv")
