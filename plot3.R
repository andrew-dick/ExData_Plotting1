# Plot 3 - Timed Energy Sub metering

# load raw data
rawdata <- read.table(file="../rawdata/household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")

# subset based on dates
dataset <- subset(x = rawdata, Date == "1/2/2007" | Date == "2/2/2007")

# create timeseries
dataset$dateTime <- as.POSIXct(strptime(paste(dataset$Date, dataset$Time), "%d/%m/%Y %H:%M:%S"))

# set up plot
par(cex=0.75)

# build and save plot - TODO
png(filename="figure/plot3.png", width=480, height=480)
plot(data=dataset, Sub_metering_1 ~ dateTime, type="n", ylab = "Energy sub metering", xlab=NA)
points(data=dataset, Sub_metering_1 ~ dateTime, type="l", col="black")
points(data=dataset, Sub_metering_2 ~ dateTime, type="l", col="red")
points(data=dataset, Sub_metering_3 ~ dateTime, type="l", col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=1, lty=c(1,1,1))
dev.off()
