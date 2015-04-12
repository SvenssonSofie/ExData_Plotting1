data <- read.table("household_power_consumption.txt",sep=";",header=TRUE, na.strings="?")
subsetData <- data[data$"Date" == "1/2/2007" | data$"Date" == "2/2/2007" ,]

subsetData$"Day_time" <- strptime(paste(subsetData$"Date", subsetData$"Time"), '%d/%m/%Y %H:%M:%S')
x <- subsetData$"Day_time"

png("plot3.png")
plot(x,subsetData$"Sub_metering_1",type="l", xlab="",ylab="Energy sub metering",)
lines(x,subsetData$"Sub_metering_2",col="red")
lines(x,subsetData$"Sub_metering_3",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"))
dev.off()