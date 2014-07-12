Quiz 4.
============================
### Problem 1.

<pre><code>
data <- read.csv("./data/microdata.csv")
names(data)[123]
strsplit(names(data)[123], "wgtp")
# [[1]]
# [1] ""   "15"
</code></pre>

### Problem 2.
<pre></code>
gdpData <- read.csv("./data/gdp.csv")
cleanedData <- gsub(",", "", gdpData[5:194, 5])
numData <- as.numeric(cleanedData)
mean(numData) 
# [1] 377652.4
</code></pre>

### Problem 3.
<pre><code>
countryNames <- gdpData[5:194,4]
regexec("^United", countryNames)
# 3
</code></pre>
### Problem 4. 
<pre><ocde>
newGdpData <- gdpData[6:194, c(1, 2, 4, 5)]
colnames(newGdpData) <- c("CountryCode", "Ranking", "Economy", "GDP")
rownames(newGdpData) <- NULL # renumbering
educationData <- read.csv("./data/education.csv")
names(educationData)
mergedData <- merge(newGdpData, educationData, by.x="CountryCode", by.y="CountryCode", all=TRUE)
head(mergedData)
names(mergedData) <- tolower(names(mergedData))
a <- as.character(mergedData[,13])
length(grep("Fiscal year end: June", a))
# 13
</code></pre>

# Problem 5.
library(quantmod)
amzn <- getSymbols("AMZN",auto.assign=FALSE)
sampleTimes <- index(amzn)
length(sampleTimes)
bool1 <- year(sampleTimes) == 2012
length(sampleTimes[bool1]) # 250
bool2 <- weekdays(sampleTimes)=="Monday"
length(sampleTimes[bool1 & bool2]) # 47
