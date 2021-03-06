##  Exploratory Data Analysis - Project 1 - Plot 2

# Loading data
data = read.csv("~/household_power_consumption.txt", sep=";")

# We will only be using data from the dates 2007-02-01 and 2007-02-02
realdata = subset(data, Date == "1/2/2007" | Date == "2/2/2007",)

# Plot 2
png("plot2.png", width=480, height=480)
date = strptime(paste(realdata$Date, realdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(date, as.numeric(realdata$Global_active_power), type = "l",
     main = "", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()