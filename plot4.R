##Exploratory Data Analysis
##Week 1
##Plot 4
##Saul Jackman

setwd("~/Dropbox/Data_Science/Exploratory_Data_Analysis/Week_1/")
data<-read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
data<-subset(data, Date == c("1/2/2007","2/2/2007"))
data$dateTime <- as.POSIXlt(paste(as.Date(data$Date, format="%d/%m/%Y"), data$Time, sep=" "))

##Plot 3
png(file = "plot4.png", width = 480, height = 480, units = "px")
par(mfrow=c(2,2))
plot(data$dateTime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
plot(data$dateTime, data$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(data$dateTime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(data$dateTime, data$Sub_metering_2, type="l", col = "red")
lines(data$dateTime, data$Sub_metering_3, type="l", col = "blue")
legend("topright", 
           legend = c("Sub_metering_1", 
                      "Sub_metering_2", 
                      "Sub_metering_3"), 
           col = c("black", "red", "blue"), 
           lwd = .75, 
           cex = .75
           )
plot(data$dateTime, data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()