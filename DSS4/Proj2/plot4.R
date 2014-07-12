NEI <- readRDS("summarySCC_PM25.rds")
SCC <- SCC <- readRDS("Source_Classification_Code.rds")
good<- grepl("Coal",SCC$SCC.Level.Three)
coal<-SCC[good,]
coal<-subset(NEI,NEI$SCC == coal$SCC)
x<-aggregate(coal$Emissions,by=list(year=coal$year),FUN=sum)
colnames(x)<-c("year","Emissions")
png("plot4.png",width=480,height=480)
plot(x$year,x$Emissions,type="o",col=c("blue"),xlab="year",ylab="Emissions",main="Emission of PM(2.5) per year of Coal Combustors")
dev.off()

