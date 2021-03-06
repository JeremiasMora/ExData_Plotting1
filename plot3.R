##  Exploratory Data Analysis - Project 1 - Plot 1

# Loading data
data = read.csv("~/household_power_consumption.txt", sep=";")

# We will only be using data from the dates 2007-02-01 and 2007-02-02
realdata = subset(data, Date == "1/2/2007" | Date == "2/2/2007",)

#Plot 3 
png("plot3.png", width=480, height=480)
date = strptime(paste(realdata$Date, realdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(date , as.numeric(realdata$Sub_metering_1), type = "l",
     main = "", xlab = "", ylab = "Energy sub metering")
lines(date, as.numeric(realdata$Sub_metering_2), col = "red")
lines(date, as.numeric(realdata$Sub_metering_3), col = "blue")
legend("topright", lty = 1, col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()