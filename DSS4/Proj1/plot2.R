plot2 <- function(){
  data <- read.table('household_power_consumption.txt',sep=';')
  clean_data <- data[which(data[,1]=='1/2/2007' | data[,1]=='2/2/2007'),]
  png(file='plot2.png')
  dates <- 1:2880
  for (i in dates){
    date <- paste(clean_data[i,1],clean_data[i,2], sep = ";")
    dates[i] <- date
  }
  x <- strptime(dates, "%d/%m/%Y;%H:%M:%S")
  y <- as.numeric(clean_data[,3])
  plot(x,y, type = 'l', ylab= "Global Active Power (kilowatts)", xlab = "")
  
  
  
  
  graphics.off()
}
