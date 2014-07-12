plot1 <- function(){
  
  data <- read.table('household_power_consumption.txt',sep=';')
  
  clean_data <- data[which(data[,1]=='2/1/2007' | data[,1]=='2/2/2007')]
  
  png(file='plot1.png')
  
  hist(as.numeric(clean_data[,3]), col = 'red', 
       xlab = "Global Active Power (kilowatts)", 
       main =  "Global Active Power")
  title("Global Active Power")
  
  graphics.off()
}
