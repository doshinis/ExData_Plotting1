plot4 <- function(){
    
    library(lubridate)
  
    ## Read dataset from household_power_consumption.txt    
    dtHpc <- read.table("household_power_consumption.txt",header=TRUE,na.strings="?",sep=";")
    
    ## Setting Date format for comparison and extracting only for 2007-02-01 and
    ## 2007-02-02        
    hpcDate <- as.Date(dtHpc$Date,format='%d/%m/%Y')
    
    dtHpc<- subset(dtHpc, hpcDate >= as.Date('2007-02-01',format='%Y-%m-%d') 
                   & hpcDate <= as.Date('2007-02-02',format='%Y-%m-%d'))
    
    ## Combine Date and Time columns into single date variable
    date <- dmy(dtHpc$Date) + hms(dtHpc$Time)
    
    ## set png device for 480 X 480
    png(file = "plot4.png", width = 480, height = 480)
    
    ## Set the layout for single view to contain 4 graphs in 2 X 2
    par(mfrow = c(2, 2),  mar = c(4, 4, 4, 2))

    ## Plot each graph one by one row wise    
    with(dtHpc, {
        plot(date, dtHpc$Global_active_power, type="l", xlab = "",
             ylab = paste0('Global Active Power'))
        
        plot(date, dtHpc$Voltage, type="l", xlab = "datetime", ylab = "Voltage")
        
        plot(date, dtHpc$Sub_metering_1, type="n", xlab = "",
             ylab = paste0('Energy sub metering'))
        lines(date, dtHpc$Sub_metering_1, type="l")
        lines(date, dtHpc$Sub_metering_2, type="l", col = "red")
        lines(date, dtHpc$Sub_metering_3, type="l", col = "blue")
        legend("topright", cex = 0.66, lty = c(1,1,1), lwd = c(3,3,3), 
               col = c("black", "red", "blue"), bty = "n",
               legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        
        plot(date, dtHpc$Global_reactive_power, type="l", xlab = "datetime", 
             ylab = paste0('Global_reactive_Power'))
        
    })
    
    ## Close the device    
    dev.off()
    
}
