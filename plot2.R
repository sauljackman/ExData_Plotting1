##Exploratory Data Analysis
##Week 1
##Plot 2
##Saul Jackman

setwd("~/Dropbox/Data_Science/Exploratory_Data_Analysis/Week_1/")
data<-read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
data<-subset(data, Date == c("1/2/2007","2/2/2007"))
data$dateTime <- as.POSIXlt(paste(as.Date(data$Date, format="%d/%m/%Y"), data$Time, sep=" "))

##Plot 2
png(file = "plot2.png", width = 480, height = 480, units = "px")
plot(data$dateTime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()