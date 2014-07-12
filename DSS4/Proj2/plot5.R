NEI <- readRDS("summarySCC_PM25.rds")
BAL<-subset(NEI,fips == "24510")
vehicles<-subset(BAL,type=="ON-ROAD")
x<-aggregate(vehicles$Emissions,by=list(year=vehicles$year),FUN=sum)
colnames(x)<-c("year","Emissions")
png("plot5.png",width=480,height=480)
plot(x$year,x$Emissions,type="o",col=c("blue"),xlab="year",ylab="Emissions from vehicles",main="Emission of PM(2.5) per year from vehicles Baltimore")
dev.off()

