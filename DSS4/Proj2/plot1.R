NEI <- readRDS("summarySCC_PM25.rds")
x   <- aggregate(NEI$Emissions,by=list(Category=NEI$year),FUN=sum)

colnames(x)<-c("year","Emissions")

png("plot1.png",width=480,height=480)

plot(x$year,x$Emissions,
    type="o",col=c("blue"),
    xlab="year",ylab="Emissions",
    main="Emission of PM(2.5) per year of all sources")
dev.off()
