# Plot 2 - timed active power

# load raw data
rawdata <- read.table(file="../rawdata/household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")

# subset based on dates
dataset <- subset(x = rawdata, Date == "1/2/2007" | Date == "2/2/2007")

# create timeseries
dataset$dateTime <- as.POSIXct(strptime(paste(dataset$Date, dataset$Time), "%d/%m/%Y %H:%M:%S"))


# set up plot
par(cex=0.75)

# build and save plot - TODO
png(filename="figure/plot2.png", width=480, height=480)
plot(data=dataset, Global_active_power ~ dateTime, type="l", ylab = "Global Active Power (kilowatts)", xlab=NA)
dev.off()
