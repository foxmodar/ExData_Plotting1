# Exploratory Data Analysis - Week_1

if(!file.exists("./data")){ dir.create("./data")}
  
  fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileUrl, destfile = "./data/ElectricPowerConsumption.zip", method = "curl")
  unzip("./data/ElectricPowerConsumption.zip", exdir = "data/")
  
  library(dplyr)
  library(lubridate)
  
  # The dataset contained "?" insted of "NA"
  ePowerCons <- read.table("data/household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")  
  #Reclass date from factor to Date
  ePowerCons$Date <- dmy(ePowerCons$Date) 
  #Filter by date range
  Feb_ePowerCons <- ePowerCons %>% filter(Date >= "2007-02-01", Date <= "2007-02-02")
  
  #add new variable combine data & time as POSIXct
  Feb_ePowerCons$DateTime <- as.POSIXct(paste(Feb_ePowerCons$Date, Feb_ePowerCons$Time, format = "%d/%m/%Y %H:%M:%S"))
  
  
  
  source("plot1.R")
  source("plot2.R")
  source("plot3.R")
  source("plot4.R")
  
  dev.off()
