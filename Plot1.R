#Load the source data and subset the required data file

source <- "./sourcedata/household_power_consumption.txt"
data <- read.table(source, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSet_Data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
globalActivePower <- as.numeric(subSet_Data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
