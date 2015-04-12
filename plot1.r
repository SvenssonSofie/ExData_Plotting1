data <- read.table("household_power_consumption.txt",sep=";",header=TRUE, na.strings="?")
subsetData <- data[data$"Date" == "1/2/2007" | data$"Date" == "2/2/2007" ,]

png("plot1.png")
hist(subsetData$Global_active_power,main="Global Active Power", col=2, xlab="Global Active Power (kilowatts)")
dev.off()
