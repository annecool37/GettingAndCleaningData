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

## Transformations made
