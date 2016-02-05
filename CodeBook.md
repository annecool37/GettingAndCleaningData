# Code Book for run_analysis.R
## The variables
xtrain: read UCI HAR Dataset/train/X_train.txt <br />
ytrain: read UCI HAR Dataset/train/y_train.txt <br />
subtrain: read UCI HAR Dataset/train/subject_train.txt <br />
xtest: read UCI HAR Dataset/test/X_test.txt <br />
ytest: read UCI HAR Dataset/test/y_test.txt <br />
subtest: read UCI HAR Dataset/test/subject_test.txt <br />
features: read UCI HAR Dataset/features.txt, second row <br />
actLabel: read UCI HAR Dataset/activity_labels.txt, second row <br />
extract: criteria for extracitng only mean and standard deviation <br />
testData: merged dataset including subtest, ytest, and xtest <br />
trainData: merged dataset including subtrain, ytrain, and xtrain <br />
df: merged dataset of testData and trainData <br />
tidyData: final tidy dataset with mean of each variables for each activitie and subject <br />

## The data
Data source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Transformations made
1. Label test and traning data with features
2. Extract means and standard deviations
3. Reformat activity from ID to activity name
2. Merges the training and the test sets to create one data set. <br />
3. Relabels the data set with descriptive variable names. <br />
4. Creates an independent tidy data set with the average of each variable for each activity and each subject. <br />

