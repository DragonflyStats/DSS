
# Source of data for this project: 
#  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#  This R script does the following:

#### Part 1. 

# Merges the training and the test sets to create one data set.

temp_1 <- read.table("train/X_train.txt")
temp_2 <- read.table("test/X_test.txt")
X <- rbind(temp_1, temp_2)

temp_1 <- read.table("train/subject_train.txt")
temp_2 <- read.table("test/subject_test.txt")
S <- rbind(temp_1, temp_2)

temp_1 <- read.table("train/y_train.txt")
temp_2 <- read.table("test/y_test.txt")
Y <- rbind(temp_1, temp_2)

#### Part 2. 

# Extracts only the measurements on the mean and standard deviation for each measurement.

features <- read.table("features.txt")
indices_of_good_features <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
X <- X[, indices_of_good_features]
names(X) <- features[indices_of_good_features, 2]
names(X) <- gsub("\\(|\\)", "", names(X))
names(X) <- tolower(names(X))

#### Part 3. 

# Uses descriptive activity names to name the activities in the data set.

activities <- read.table("activity_labels.txt")
activities[, 2] <- gsub("_", "", tolower(as.character(activities[, 2])))
Y[,1] <- activities[Y[,1], 2]
names(Y) <- "activity"

#### Part 4. 

# Appropriately labels the data set with descriptive activity names.

names(S) <- "subject"
cleaned <- cbind(S, Y, X)
write.table(cleaned, "merged_clean_data.txt")

#### Part 5. 

# Creates a second independent tidy data set 
# This contains the average of each variable for each activity and each subject.

UniSubjs = unique(S)[,1]
numSubs = length(unique(S)[,1])
numActivities = length(activities[,1])
numCols = dim(cleaned)[2]
result = cleaned[1:(numSubs * numActivities), ]

	# For loop
row = 1
for (s in 1:numSubjs) {
    for (a in 1:numActivities) {
        result[row, 1] = UniSubjs[s]
        result[row, 2] = activities[a, 2]
        temp_ <- cleaned[(cleaned$subject==s) & (cleaned$activity==activities[a, 2]), ]
        result[row, 3:numCols] <- colMeans(temp_[, 3:numCols])
        row = row+1
    }
}
write.table(result, "data_set_with_the_averages.txt")
