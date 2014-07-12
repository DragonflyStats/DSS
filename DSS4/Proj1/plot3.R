plot3 <- function(){
  data <- read.table('household_power_consumption.txt',sep=';', stringsAsFactors = FALSE)
  clean_data <- data[which(data[,1]=='1/2/2007' | data[,1]=='2/2/2007'),]
  png(file='plot3.png')
  dates <- 1:2880
  for (i in dates){
    date <- paste(clean_data[i,1],clean_data[i,2], sep = ";")
    dates[i] <- date
  }
  
  ###############
  
  x <- strptime(dates, "%d/%m/%Y;%H:%M:%S")
  y1 <- as.numeric(clean_data[,7])
  y2 <- as.character(clean_data[,8])
  y3 <- as.numeric(clean_data[,9])
  
  ###############
  
  plot(x,y1,type = 'n', ylab = 'Energy Sub Metering', xlab = "")
  lines(x,y1,type = 'l')
  lines(x,y2,type = 'l', col = 'red')
  lines(x,y3,type = 'l', col = 'blue')
  axis(2,at = c(0,10,20,30))
  
  ###############
  
  legend("topright", 
    legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),
    lty = c(1,1,1),
    lwd = c(2.5,2.5,2.5),
    col = c("black", "red", "blue"))
  
  graphics.off()
}
