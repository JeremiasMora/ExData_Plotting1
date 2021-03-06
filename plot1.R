##  Exploratory Data Analysis - Project 1 - Plot 1

# Loading data
data = read.csv("~/household_power_consumption.txt", sep=";")

# We will only be using data from the dates 2007-02-01 and 2007-02-02
realdata = subset(data, Date == "1/2/2007" | Date == "2/2/2007",)

# Plot 1
png("plot1.png", width=480, height=480)
hist(as.numeric(realdata$Global_active_power), col = "red",
     main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()