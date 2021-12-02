install.packages("writexl")
install.packages("readxl")
install.packages("pracma")
install.packages("zoo")
library(writexl)
library(readxl)
library(pracma) 
library(zoo)

KOSDAQ <- read.csv("c:/r_temp/source/KOSDAQ.csv")
#KOSDAQ <- zoo(KOSDAQ$Date[1:5149], KOSDAQ$Close[1:5149])
KOSPI_50 <- read.csv("c:/r_temp/source/KOSPI 50.csv")
KOSPI_200 <- read.csv("c:/r_temp/source/KOSPI 200.csv")
NASDAQ_100 <- read.csv("c:/r_temp/source/NASDAQ 100(F).csv")
NASDAQ <- read.csv("c:/r_temp/source/NASDAQ.csv")
SP_500 <- read.csv("c:/r_temp/source/S&P 500.csv")
HANGSENG <- read.csv("c:/r_temp/source/HANGSENG.csv")

# KOSDAQ ÀÌµ¿Æò±Õ
ma5 <- movavg(KOSDAQ$Close[1:5149], n = 5)
KOSDAQ[,"C_5MA"] <- ma5

ma20 <- movavg(KOSDAQ$Close[1:5149], n = 20)
KOSDAQ[,"C_20MA"] <- ma20

ma60 <- movavg(KOSDAQ$Close[1:5149], n = 60)
KOSDAQ[,"C_60MA"] <- ma60

ma120 <- movavg(KOSDAQ$Close[1:5149], n = 120)
KOSDAQ[,"C_120MA"] <- ma120

KOSDAQ$MP <- (KOSDAQ$High+KOSDAQ$Low+KOSDAQ$Close)/3
KOSDAQ$MF <- KOSDAQ$MP*KOSDAQ$Volume

write.csv(KOSDAQ,"C:/r_temp/source/KOSDAQ_1.csv")

KOSDAQ

# KOSPI 50 ÀÌµ¿Æò±Õ
ma5 <- movavg(KOSPI_50$Close[1:2461], n = 5)
KOSPI_50[,"C_5MA"] <- ma5

ma20 <- movavg(KOSPI_50$Close[1:2461], n = 20)
KOSPI_50[,"C_20MA"] <- ma20

ma60 <- movavg(KOSPI_50$Close[1:2461], n = 60)
KOSPI_50[,"C_60MA"] <- ma60

ma120 <- movavg(KOSPI_50$Close[1:2461], n = 120)
KOSPI_50[,"C_120MA"] <- ma120

KOSPI_50$MP <- (KOSPI_50$High+KOSPI_50$Low+KOSPI_50$Close)/3
KOSPI_50$MF <- KOSPI_50$MP*KOSPI_50$Volume

write.csv(KOSPI_50,"C:/r_temp/source/KOSPI 50_1.csv")

# KOSPI 200 ÀÌµ¿Æò±Õ
ma5 <- movavg(KOSPI_200$Close[1:5149], n = 5)
KOSPI_200[,"C_5MA"] <- ma5

ma20 <- movavg(KOSPI_200$Close[1:5149], n = 20)
KOSPI_200[,"C_20MA"] <- ma20

ma60 <- movavg(KOSPI_200$Close[1:5149], n = 60)
KOSPI_200[,"C_60MA"] <- ma60

ma120 <- movavg(KOSPI_200$Close[1:5149], n = 120)
KOSPI_200[,"C_120MA"] <- ma120

KOSPI_200$MP <- (KOSPI_200$High+KOSPI_200$Low+KOSPI_200$Close)/3
KOSPI_200$MF <- KOSPI_200$MP*KOSPI_200$Volume

write.csv(KOSPI_200,"C:/r_temp/source/KOSPI 200_1.csv")

# NASDAQ ÀÌµ¿Æò±Õ
ma5 <- movavg(NASDAQ$Close[1:3872], n = 5)
NASDAQ[,"C_5MA"] <- ma5

ma20 <- movavg(NASDAQ$Close[1:3872], n = 20)
NASDAQ[,"C_20MA"] <- ma20

ma60 <- movavg(NASDAQ$Close[1:3872], n = 60)
NASDAQ[,"C_60MA"] <- ma60

ma120 <- movavg(NASDAQ$Close[1:3872], n = 120)
NASDAQ[,"C_120MA"] <- ma120

NASDAQ$MP <- (NASDAQ$High+NASDAQ$Low+NASDAQ$Close)/3
NASDAQ$MF <- NASDAQ$MP*NASDAQ$Volume

write.csv(NASDAQ,"C:/r_temp/source/NASDAQ_1.csv")

# NASDAQ 100 ÀÌµ¿Æò±Õ
ma5 <- movavg(NASDAQ_100$Close[1:3798], n = 5)
NASDAQ_100[,"C_5MA"] <- ma5

ma20 <- movavg(NASDAQ_100$Close[1:3798], n = 20)
NASDAQ_100[,"C_20MA"] <- ma20

ma60 <- movavg(NASDAQ_100$Close[1:3798], n = 60)
NASDAQ_100[,"C_60MA"] <- ma60

ma120 <- movavg(NASDAQ_100$Close[1:3798], n = 120)
NASDAQ_100[,"C_120MA"] <- ma120

NASDAQ_100$MP <- (NASDAQ_100$High+NASDAQ_100$Low+NASDAQ_100$Close)/3
NASDAQ_100$MF <- NASDAQ_100$MP*NASDAQ_100$Volume

write.csv(NASDAQ_100,"C:/r_temp/source/NASDAQ 100_1.csv")

# S&P 500 ÀÌµ¿Æò±Õ
ma5 <- movavg(SP_500$Close[1:3983], n = 5)
SP_500[,"C_5MA"] <- ma5

ma20 <- movavg(SP_500$Close[1:3983], n = 20)
SP_500[,"C_20MA"] <- ma20

ma60 <- movavg(SP_500$Close[1:3983], n = 60)
SP_500[,"C_60MA"] <- ma60

ma120 <- movavg(SP_500$Close[1:3983], n = 120)
SP_500[,"C_120MA"] <- ma120

SP_500$MP <- (SP_500$High+SP_500$Low+SP_500$Close)/3
SP_500$MF <- SP_500$MP*SP_500$Volume

write.csv(SP_500,"C:/r_temp/source/S&P 500_1.csv")

# HANGSENG ÀÌµ¿Æò±Õ
library(plyr)
library(magrittr)
HANGSENG <- HANGSENG %>% arrange(Date)

ma5 <- movavg(HANGSENG$Close[1:2401], n = 5)
HANGSENG[,"C_5MA"] <- ma5

ma20 <- movavg(HANGSENG$Close[1:2401], n = 20)
HANGSENG[,"C_20MA"] <- ma20

ma60 <- movavg(HANGSENG$Close[1:2401], n = 60)
HANGSENG[,"C_60MA"] <- ma60

ma120 <- movavg(HANGSENG$Close[1:2401], n = 120)
HANGSENG[,"C_120MA"] <- ma120

HANGSENG$MP <- (HANGSENG$High+HANGSENG$Low+HANGSENG$Close)/3
HANGSENG$MF <- HANGSENG$MP*HANGSENG$Volume

write.csv(HANGSENG,"C:/r_temp/source/HANGSENG_1.csv")

#-------------------------------------------------------------
