#-------------------------------------------Plot_3 : source("ProcessData.R") before you run the following code--------------------------------

setwd("figure/")

png("plot3.png", width = 480 , height = 480)
plot3 <- plot(x = Feb_ePowerCons$DateTime, y = Feb_ePowerCons$Sub_metering_1, type="l", xlab = "", ylab = "Energy sub metering")
        lines(x = Feb_ePowerCons$DateTime, y = Feb_ePowerCons$Sub_metering_2, col = "red")
        lines(x = Feb_ePowerCons$DateTime, y = Feb_ePowerCons$Sub_metering_3, col = "blue")
        legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1), lwd=c(2.5,2.5), col=c("green","orange", "blue"))
        
dev.off()

setwd("..")
