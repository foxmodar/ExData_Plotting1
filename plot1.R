
#-------------------------------------------Plot_1 : source("ProcessData.R") before you run the following code-------------------------------------------
setwd("figure/")
png("plot1.png", width = 480 , height = 480)
plot1 <- hist(Feb_ePowerCons$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (Kilowatts)", ylab = "Frequency", col = "red")
setwd("..")
dev.off()
