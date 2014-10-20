# Histogram with Normal Curve 
# (Peter Dalgaard)

x <- mtcars$mpg 
h<-hist(x, breaks=10, col="red", xlab="Miles Per Gallon",   
    main="Histogram with Normal Curve") 
    
    

xfit<-seq(min(x),max(x),length=40) 
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x)) 
yfit <- yfit*diff(h$mids[1:2])*length(x) 
lines(xfit, yfit, col="blue", lwd=2) 

## Density Plot

d <- density(mtcars$mpg) # returns the density data 
plot(d) # plots the results 


## Filled Density Plot

 d <- density(mtcars$mpg)
 plot(d, main="Kernel Density of Miles Per Gallon")
 polygon(d, col="red", border="blue") 
