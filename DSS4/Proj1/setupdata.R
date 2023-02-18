library(tidyverse)

download <- download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",destfile = "temp")
unzip("temp")
unlink("temp")

hpc <- read.table("household_power_consumption.txt", 
                  sep = ";", header = TRUE, na.strings = "?")

hpc$dt <- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")
hpc$Date <- as.Date(hpc$Date, "%d/%m/%Y")

hpc_sub <- hpc %>% filter(Date >= as.Date("2007-02-01")) %>%
  filter( Date <= as.Date("2007-02-02"))