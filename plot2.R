
#-------------------------------------------Plot_2 : source("ProcessData.R") before you run the following code------------------------------------
setwd("figure/")
png("plot2.png", width = 480 , height = 480)
plot2 <- plot(x = Feb_ePowerCons$DateTime, y = Feb_ePowerCons$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
setwd("..")
dev.off()

