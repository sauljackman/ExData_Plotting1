##Exploratory Data Analysis
##Week 1
##Plot 1
##Saul Jackman

setwd("~/Dropbox/Data_Science/Exploratory_Data_Analysis/Week_1/")
data<-read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
data<-subset(data, Date == c("1/2/2007","2/2/2007"))
data$dateTime <- as.POSIXlt(paste(as.Date(data$Date, format="%d/%m/%Y"), data$Time, sep=" "))

##Plot 1
png(file = "plot11.png", width = 480, height = 480, units = "px")
with(data, hist(Global_active_power, breaks = seq(0, 12, .5), col="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power", xlim=c(0,8), axes=FALSE, freq=TRUE))
axis(1, at = c(0,2,4,6))
axis(2, at = seq(0, 600, length.out = 7), labels = c(0,200,400,600,800,1000,1200))
dev.off()