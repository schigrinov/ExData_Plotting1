#read the data
consumption <- read.csv("~/Sergey/Coursera/DataScience/Exploratory data analysis/ExData_Plotting1/household_power_consumption.txt", 
                        sep=";", 
                        na.strings="?")
#subsetting
consumption <- consumption[consumption$Date %in% c("1/2/2007","2/2/2007") ,]

# merge date & time for x axis
datetime <- strptime(paste(consumption$Date, consumption$Time, sep=" "),"%d/%m/%Y %H:%M:%S") 

png(filename = "plot3.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
#plot first line
plot(datetime, consumption$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
#plot second line
lines(datetime, consumption$Sub_metering_2, type="l", col = "red")
#plot third line
lines(datetime, consumption$Sub_metering_3, type="l", col = "blue")

#legends
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1, col=c("black", "red", "blue"))
dev.off()