plot4 <- function(){

  data <- read.table('household_power_consumption.txt',sep=';', 
                     stringsAsFactors = FALSE)
  
  clean_data <- data[which(data[,1]=='1/2/2007' | data[,1]=='2/2/2007'),]
  png(file='plot4.png')
  dates <- 1:2880
  for (i in dates){
    date <- paste(clean_data[i,1],clean_data[i,2], sep = ";")
    dates[i] <- date
  }
  x <- strptime(dates, "%d/%m/%Y;%H:%M:%S")
  
  par(mfcol=c(2,2))
  
  y1 <- as.numeric(clean_data[,3])
  plot(x,y1, type = 'l', ylab= "Global Active Power (kilowatts)", xlab = "")
  
  y2a <- as.numeric(clean_data[,7])
  y2b <- as.character(clean_data[,8])
  y2c <- as.numeric(clean_data[,9])
  plot(x,y2a,type = 'n', ylab = 'Energy Sub Metering', xlab = "")
  lines(x,y2a,type = 'l')
  lines(x,y2b,type = 'l', col = 'red')
  lines(x,y2c,type = 'l', col = 'blue')
  axis(2,at = c(0,10,20,30))
  
  legend("topright", 
         legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),
         lty = c(1,1,1),
         lwd = c(2.5,2.5,2.5),
         col = c("black", "red", "blue"),
         bty = 'n')
  
  y3 <- clean_data[,5]
  plot(x,y3, type = 'l', ylab = "Voltage", xlab = "datetime")
  
  y4 <- clean_data[,4]
  plot(x,y4, type = 'l', ylab = "Global_reactive_power", xlab = "datetime")
  
  graphics.off()
}
