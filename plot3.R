
plot3 <- function(){

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
    png(file = "plot3.png", width = 480, height = 480)
    
    ## plot the base graph first without lines. Annotate lines for 3 sub-metering
    ## varibales and then set legend.
    with(dtHpc, plot(date, dtHpc$Sub_metering_1, type="n", 
                     xlab = "", ylab = paste0('Energy sub metering')))
    
    with(dtHpc, lines(date, dtHpc$Sub_metering_1, type="l"))
    with(dtHpc, lines(date, dtHpc$Sub_metering_2, type="l", col = "red"))
    with(dtHpc, lines(date, dtHpc$Sub_metering_3, type="l", col = "blue"))
    legend("topright", lty = c(1,1,1), lwd = c(3,3,3), 
           col = c("black", "red", "blue"), 
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    
    ## Close the device
    dev.off()
    
}

