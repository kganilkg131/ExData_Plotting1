
#download the household power consumption file and unzip it.
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile="data.zip")
unzip ("data.zip")

#read the information from file with dates range 2007-02-01 and 2007-02-02
data_full <- read.table("household_power_consumption.txt", header=TRUE, na.strings="?", sep=";")
data <- data_full[(data_full$Date=="1/2/2007" | data_full$Date=="2/2/2007" ), ]

## create histogram for - Plot 1
hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red", cex.sub=0.8)

## export file as png
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()




