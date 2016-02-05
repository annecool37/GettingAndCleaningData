# Code Book for run_analysis.R
## The variables
xtrain: read UCI HAR Dataset/train/X_train.txt
ytrain: read UCI HAR Dataset/train/y_train.txt
subtrain: read UCI HAR Dataset/train/subject_train.txt
xtest: read UCI HAR Dataset/test/X_test.txt
ytest: read UCI HAR Dataset/test/y_test.txt 
subtest: read UCI HAR Dataset/test/subject_test.txt
features: read UCI HAR Dataset/features.txt, second row
actLabel: read UCI HAR Dataset/activity_labels.txt, second row
extract: criteria for extracitng only mean and standard deviation
testData: merged dataset including subtest, ytest, and xtest
trainData: merged dataset including subtrain, ytrain, and xtrain
df: merged dataset of testData and trainData
tidyData: final tidy dataset with mean of each variables for each activitie and subject

## The data

## Transformations made
