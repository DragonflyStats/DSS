plot1 <- function(){
  
  hpc <- read.table("household_power_consumption.txt", 
                    sep = ";", header = TRUE, na.strings = "?")
  hpc$dt <- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")
  hpc$Date <- as.Date(hpc$Date, "%d/%m/%Y")
  
  png(file='plot1.png')
  
  hist(hpc_sub$Global_active_power, col = "red", 
       xlab = "Global Active Power (kilowatts)", 
       ylab = "Frequency", main = "Global Active Power", 
       breaks = 13, ylim = c(0,1200), xlim = c(0, 6))
  
  graphics.off()
}
