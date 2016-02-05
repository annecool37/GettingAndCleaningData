# Coursera: Reading and Cleaning data
# Assignment: run_analysis.R
# Author: Chia-An Chen
# Date: Feb 2016

### Downloads and reads files ###
if(!file.exists("./data/UCI HAR Dataset")){
fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./data/UCIHARDataset.zip", method="curl")
unzip("./data/UCIHARDataset.zip", files = NULL, list = FALSE, overwrite = TRUE,
      junkpaths = FALSE, exdir = "./data", unzip = "internal",
      setTimes = FALSE)
}
# read files
xtrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt") 
subtrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt") 
xtest <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./data/UCI HAR Dataset/test/y_test.txt") 
subtest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
features <- read.table("./data/UCI HAR Dataset/features.txt")[,2]
actLabel <- read.table("./data/UCI HAR Dataset/activity_labels.txt")[,2]

library(data.table)
library(plyr)
### Merges the training and the test sets to create one data set. ###
# label data
names(xtrain) = features
names(xtest) = features

# extract only mean and std
extract <- grepl("mean|std", features)
xtrain = xtrain[,extract]
xtest = xtest[,extract]

# handle activity data
ytest[,2] = actLabel[ytest[,1]]
ytrain[,2] = actLabel[ytrain[,1]]

# reformat ytest and ytrain based on activity labels
names(ytrain) = c("ActivityID", "Activity")
names(ytest) = c("ActivityID", "Activity")
names(subtrain) = "Subject"
names(subtest) = "Subject"

# bind and merge data
testData <- cbind(as.data.table(subtest), ytest, xtest)
trainData <- cbind(as.data.table(subtrain), ytrain, xtrain)
df = rbind(testData, trainData)
df$ActivityID <- NULL

## Appropriately labels the data set with descriptive variable names. ###
names(df) <- gsub("-", "", names(df))
names(df) <- gsub("-mean\\(\\)", "Mean", names(df))
names(df) <- gsub("-std\\(\\)", "Std", names(df))
names(df) <- gsub("^t", "Time", names(df))
names(df) <- gsub("^f", "Frequency", names(df))

### From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. ###
SpecifiedColMeans <- function(input) {colMeans(input[,-c(1,2)])}
tidyData <- ddply(df, .(Subject, Activity), SpecifiedColMeans)
write.table(tidyData, "tidyData.txt", row.names = FALSE)




