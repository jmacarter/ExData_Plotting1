## Jeff Carter
## jeffcarter@mac.com
## Exploratory Data Analysis (Sep 12 2015)
## Course Project 1
## https://class.coursera.org/exdata-032/

# Data from: UC Irvine Machine Learning Repository, Individual household electric power consumption Data Set
# Source of data: https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

# This R script does the following:
# 1) reads and parses the data file found in the same directory, obtaining data for 2007-02-01 and 2007-02-02
# 2) plots a graph of Global Active Power, frequency vs kilowats and saves the plot in a PNG file called plot1.png


filePath<-file("household_power_consumption.txt")
data <- read.table(text = grep("^[1,2]/2/2007", readLines(filePath), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)

# Generating Plot 1
hist(Data$Global_active_power, col = "red", main = paste("Global Active Power"), xlab = "Global Active Power (kilowatts)")
        dev.copy(png, file="plot1.png", width=480, height=480)
        dev.off()
