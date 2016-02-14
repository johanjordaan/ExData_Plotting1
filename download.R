library(data.table)
library(lubridate)
library(dplyr)

if(!file.exists("./data.zip")) {
   print("Downloading ...")
   download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","data.zip")
   unzip("data.zip")
} else {
   if(!file.exists("household_power_consumption.txt")) {
      unzip("data.zip")
   }
}

if(!exists("DT")) {
   DT <- fread("household_power_consumption.txt")
   DT$Date <- dmy(DT$Date)
   DT$DateTime <- DT$Date + hms(DT$Time)
   DT$Global_active_power <- as.numeric(DT$Global_active_power)

   DT <- DT %>% filter(Date == ymd("20070201") | Date == ymd("20070202"))
}
