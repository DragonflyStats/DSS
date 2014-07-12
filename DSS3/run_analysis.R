run_Analysis <- function(){
    xtrain <- read.table("X_train.txt")
    xtest <- read.table("X_test.txt")
    xdata <- rbind(xtrain,xtest)
    xdata <- rbind(xtrain,xtest)
    ytest <- read.table("Y_test.txt")
    ytrain <- read.table("Y_train.txt")
    stest <- read.table("subject_test.txt")
    strain <- read.table("subject_train.txt")
    ydata <- rbind(ytrain,ytest)
    sdata <- rbind(strain,stest)
    fdata <- read.table("features.txt")
    adata <- read.table("activity_labels.txt")
    print("Data Downloaded and Read!")
    meanstd <- grep("mean\\(\\)|std", fdata[,2])
    fdata2 <- fdata[meanstd,]
    xdata2 <- xdata[,meanstd]
    names(xdata2) <- fdata2[,2]
    xdata2$Activity <- ydata[,1]
    xdata2$Subject <- sdata[,1]
    
    for (act in 1:6){
        xdata2$Activity[as.numeric(xdata2$Activity) == act] <- as.character(adata[act,2])
    }
    
    xdata2$Activity <- as.factor(xdata2$Activity)
    xdata2$Subject <- as.factor(xdata2$Subject)
    xdata3 <- split(xdata2, list(xdata2$Activity, xdata2$Subject))
    cm <- c()
    
    for (i in 1:180){
      means <- lapply(xdata3[[i]][1:66], mean)
      cm <- rbind(cm, means, deparse.level = 0)
    }
    
    Observation_Class <- names(xdata3)
    tidy_data <- cbind(Observation_Class, cm)
    write.csv(tidy_data, "tidy_data.csv")
  
 
}
