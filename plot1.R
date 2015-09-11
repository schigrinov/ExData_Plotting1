#read the data
consumption <- read.csv("~/Sergey/Coursera/DataScience/Exploratory data analysis/ExData_Plotting1/household_power_consumption.txt", 
                        sep=";", 
                        na.strings="?")
    #subsetting
    consumption <- consumption[consumption$Date %in% c("1/2/2007","2/2/2007") ,]
    
    png(filename = "plot1.png", 
        width = 480, height = 480, 
        units = "px", bg = "transparent")
    #plotting
    hist(consumption$Global_active_power, main = "Global Active Power", 
         col="red", xlab = "Global Active Power (kilowatts)",
         ylim = c(0, 1200), breaks=12)
    dev.off()
    
