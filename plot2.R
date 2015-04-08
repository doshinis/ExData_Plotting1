
plot2 <- function(){

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
    png(file = "plot2.png", width = 480, height = 480)
    
    ## Plot the graph fpr the date vs Global_active_power of "line" type
    plot(date, dtHpc$Global_active_power, type="l", 
         xlab = "", ylab = paste0('Global Active Power (kilowatts)'))
    
    ## Close Device    
    dev.off()
}

