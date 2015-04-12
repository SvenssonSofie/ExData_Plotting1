data <- read.table("household_power_consumption.txt",sep=";",header=TRUE, na.strings="?")
subsetData <- data[data$"Date" == "1/2/2007" | data$"Date" == "2/2/2007" ,]

subsetData$"Day_time" <- strptime(paste(subsetData$"Date", subsetData$"Time"), '%d/%m/%Y %H:%M:%S')
png("plot2.png")
plot(subsetData$"Day_time",subsetData$"Global_active_power",type="l", xlab="",ylab="Global Active Power (kilowatts)")
dev.off()