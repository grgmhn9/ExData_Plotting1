#Load the source data and subset the required data file

source <- "./sourcedata/household_power_consumption.txt"
data <- read.table(source, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSet_Data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
datetime <- strptime(paste(subSet_Data$Date, subSet_Data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSet_Data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
