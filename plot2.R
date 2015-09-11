#read the data
consumption <- read.csv("~/Sergey/Coursera/DataScience/Exploratory data analysis/ExData_Plotting1/household_power_consumption.txt", 
                        sep=";", 
                        na.strings="?")
#subsetting
consumption <- consumption[consumption$Date %in% c("1/2/2007","2/2/2007") ,]

# merge date & time for x axis
datetime <- strptime(paste(consumption$Date, consumption$Time, sep=" "),"%d/%m/%Y %H:%M:%S") 

png(filename = "plot2.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
#plotting
plot(datetime, consumption$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()


