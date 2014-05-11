library(sqldf)
data <- read.csv.sql("household_power_consumption.txt", sql = "select * from file where Date = '1/2/2007' or Date = '2/2/2007'",sep = ";", header=TRUE)
png(file = "plot1.png", bg = "transparent", width = 480, height = 480)

hist(data[,3], main="Global Active Power", xlab="Global Active Power (kilowatts)",col="red")

dev.off()