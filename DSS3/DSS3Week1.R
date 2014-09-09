##################################################################
# Quiz 1
# Problem 1
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileUrl, destfile="./data/microdata.csv", method="curl")
list.files("./data")
microData <- read.table("./data/microdata.csv", sep=",", header=TRUE)
head(microData)
dim(microData) 
# 6496x188
sum(!is.na(microData$VAL[microData$VAL==24])) 
# 53
##################################################################
# Problem 2
microData$FES
##################################################################
# Problem 3
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(fileUrl, destfile="./data/nga.xlsx", method="curl")
dateDownloaded <- date()
library(xlsx)
list.files("./data")
colIndex <- 7:15
rowIndex <- 18:23
dat <- read.xlsx("./data/nga.xlsx", sheetIndex=1, header=TRUE, colIndex=colIndex, rowIndex=rowIndex)
head(dat)
sum(dat$Zip*dat$Ext,na.rm=T) 
# 36534720
##################################################################
# Problem 4
fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
doc <- xmlTreeParse(fileUrl, useInternal=TRUE)
doc
rootNode <- xmlRoot(doc)
rootNode
xmlName(rootNode)
names(rootNode)
sum(xpathSApply(rootNode, "//zipcode", xmlValue)==21231) 
# 127
##################################################################
# Problem 5
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(fileUrl, destfile="./data/microdata3.csv", method="curl")
DT <- fread("./data/microdata3.csv")
file.info("./data/microdata3.csv")$size
system.time(DT[,mean(pwgtp15),by=SEX])
system.time(mean(DT[DT$SEX==1,]$pwgtp15))+system.time(mean(DT[DT$SEX==2,]$pwgtp15))
system.time(sapply(split(DT$pwgtp15,DT$SEX),mean))
system.time(mean(DT$pwgtp15,by=DT$SEX))
system.time(tapply(DT$pwgtp15,DT$SEX,mean))
system.time(rowMeans(DT)[DT$SEX==1])+system.time(rowMeans(DT)[DT$SEX==2]
)
#A
st = proc.time()
for (i in 1:100){
  sapply(split(DT$pwgtp15,DT$SEX),mean)
}
print (proc.time() - st)

#B
st = proc.time()
for (i in 1:100){
  rowMeans(DT)[DT$SEX==1];rowMeans(DT)[DT$SEX==2]
}
print (proc.time() - st)

#C
st = proc.time()
for (i in 1:100){
  mean(DT$pwgtp15,by=DT$SEX)
}
print (proc.time() - st)

#D
st = proc.time()
for (i in 1:100){
  tapply(DT$pwgtp15,DT$SEX,mean)
}
print (proc.time() - st)

#E
st = proc.time()
for (i in 1:100){
  mean(DT[DT$SEX==1,]$pwgtp15);mean(DT[DT$SEX==2,]$pwgtp15)
}
print (proc.time() - st)

#F
st = proc.time()
for (i in 1:100){
  DT[,mean(pwgtp15),by=SEX]
}
print (proc.time() - st)
##################################################################
