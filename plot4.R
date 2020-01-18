
#-------------------------------------------Plot_4 : source("ProcessData.R") before you run the following code ------------------------------------
setwd("figure/")

png("plot4.png", width = 480 , height = 480)

par(mfrow = c(2,2))

plotA <- plot(x = Feb_ePowerCons$DateTime, y = Feb_ePowerCons$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")

plotB <- plot(x = Feb_ePowerCons$DateTime, y = Feb_ePowerCons$Voltage, type="l", xlab = "datatime", ylab = "Voltage")

plotC <- plot(x = Feb_ePowerCons$DateTime, y = Feb_ePowerCons$Sub_metering_1, type="l", xlab = "", ylab = "Energy sub metering")
        lines(x = Feb_ePowerCons$DateTime, y = Feb_ePowerCons$Sub_metering_2, col = "red")
        lines(x = Feb_ePowerCons$DateTime, y = Feb_ePowerCons$Sub_metering_3, col = "blue")

plotD <- plot(x = Feb_ePowerCons$DateTime, y = Feb_ePowerCons$Global_reactive_power, type="l", xlab = "datatime", ylab = "Global_reactive_power")


dev.off()

setwd("..")
