data <- read.csv.sql("household_power_consumption.txt", sql = "select * from file where Date = '1/2/2007' or Date = '2/2/2007'",sep = ";", header=TRUE)
time1 <-  as.POSIXct(strptime(paste(data[,1], data[,2]),"%d/%m/%Y %H:%M:%S"))
png(file = "plot4.png", bg = "transparent", width = 480, height = 480)

par(mfrow=c(2,2))
plot(time1,data[,3],type='l',xlab="",ylab="Global Active Power")
plot(time1,data[,5],type='l',xlab="datetime",ylab="Voltage")
plot(time1,data[,7], xlab="",ylab="Energy sub metering", type='l')
lines(time1,data[,8], col="red")
lines(time1,data[,9], col="blue")
legend("topright", legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty=c(1,1,1),col=c("black","red", "blue"),bty="n")
plot(time1, data[,4],type="l",xlab="datetime",ylab="Global_reactive_power")

dev.off()