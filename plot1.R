# Plot 1 - Global Active Power

# load raw data
rawdata <- read.table(file="../rawdata/household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")

# subset based on dates
dataset <- subset(x = rawdata, Date == "1/2/2007" | Date == "2/2/2007")

# set up plot
par(cex=0.75)

# build and save plot
png(filename="figure/plot1.png", width=480, height=480)
hist(dataset$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")
dev.off()
