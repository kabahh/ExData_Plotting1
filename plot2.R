library(sqldf)
data <- read.csv.sql("household_power_consumption.txt", sql = "select * from file where Date = '1/2/2007' or Date = '2/2/2007'",sep = ";", header=TRUE)
time1 <-  as.POSIXct(strptime(paste(data[,1], data[,2]),"%d/%m/%Y %H:%M:%S"))
png(file = "plot2.png", bg = "transparent", width = 480, height = 480)

plot(time1, data[,3], type="l", xlab="",ylab="Global Active Power (kilowatts)")

dev.off()