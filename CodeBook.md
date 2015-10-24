## CodeBook for Getting and Cleaning Data Class Project Oct. 2015
The purpose of this book is to describe the data analyzed and the output data.

## Data Analyzed:
The project data comes from the UCI Machine Learning Repository
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The dataset used can downloaded at [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The overall dataset, when unzipped, contains two main subsets, test and train. Each of these contains three main files:
* subject_(xxxx).txt: provides the IDs for the 30 individuals that participated in the observations. 
* X_(xxxx).txt: contains the individual measurements (variables) gathered from each observation. 561 individual measurements for each observation were provided.
* Y_(XXXX).txt: contains the numeric indicator for the 6 possible activities associated with each observation. 

The three files for each subset are merged into a table and then the two resultant tables are merged to create a master table to be analyzed. 

#Measurements
From the 561 possible measurements for each observation, 79 were c hosen for the summary based on their names containing either substrings "mean" or "std".   
These are:
* tBodyAcc-mean()-X	
* tBodyAcc-mean()-Y	
* tBodyAcc-mean()-Z	
* tBodyAcc-std()-X	
* tBodyAcc-std()-Y	
* tBodyAcc-std()-Z	
* tGravityAcc-mean()-X	
* tGravityAcc-mean()-Y	
* tGravityAcc-mean()-Z	
* tGravityAcc-std()-X	
* tGravityAcc-std()-Y	
* tGravityAcc-std()-Z	
* tBodyAccJerk-mean()-X	
* tBodyAccJerk-mean()-Y	
* tBodyAccJerk-mean()-Z	
* tBodyAccJerk-std()-X	
* tBodyAccJerk-std()-Y	
* tBodyAccJerk-std()-Z	
* tBodyGyro-mean()-X	
* tBodyGyro-mean()-Y	
* tBodyGyro-mean()-Z	
* tBodyGyro-std()-X	
* tBodyGyro-std()-Y	
* tBodyGyro-std()-Z	
* tBodyGyroJerk-mean()-X	
* tBodyGyroJerk-mean()-Y	
* tBodyGyroJerk-mean()-Z	
* tBodyGyroJerk-std()-X	
* tBodyGyroJerk-std()-Y	
* tBodyGyroJerk-std()-Z	
* tBodyAccMag-mean()	
* tBodyAccMag-std()	
* tGravityAccMag-mean()	
* tGravityAccMag-std()	
* tBodyAccJerkMag-mean()	
* tBodyAccJerkMag-std()	
* tBodyGyroMag-mean()	
* tBodyGyroMag-std()	
* tBodyGyroJerkMag-mean()	
* tBodyGyroJerkMag-std()	
* fBodyAcc-mean()-X	
* fBodyAcc-mean()-Y	
* fBodyAcc-mean()-Z	
* fBodyAcc-std()-X	
* fBodyAcc-std()-Y	
* fBodyAcc-std()-Z	
* fBodyAcc-meanFreq()-X	
* fBodyAcc-meanFreq()-Y	
* fBodyAcc-meanFreq()-Z	
* fBodyAccJerk-mean()-X	
* fBodyAccJerk-mean()-Y	
* fBodyAccJerk-mean()-Z	
* fBodyAccJerk-std()-X	
* fBodyAccJerk-std()-Y	
* fBodyAccJerk-std()-Z	
* fBodyAccJerk-meanFreq()-X	
* fBodyAccJerk-meanFreq()-Y	
* fBodyAccJerk-meanFreq()-Z	
* fBodyGyro-mean()-X	
* fBodyGyro-mean()-Y	
* fBodyGyro-mean()-Z	
* fBodyGyro-std()-X	
* fBodyGyro-std()-Y	
* fBodyGyro-std()-Z	
* fBodyGyro-meanFreq()-X	
* fBodyGyro-meanFreq()-Y	
* fBodyGyro-meanFreq()-Z	
* fBodyAccMag-mean()	
* fBodyAccMag-std()	
* fBodyAccMag-meanFreq()	
* fBodyBodyAccJerkMag-mean()	
* fBodyBodyAccJerkMag-std()	
* fBodyBodyAccJerkMag-meanFreq()	
* fBodyBodyGyroMag-mean()	
* fBodyBodyGyroMag-std()	
* fBodyBodyGyroMag-meanFreq()	
* fBodyBodyGyroJerkMag-mean()	
* fBodyBodyGyroJerkMag-std()	
* fBodyBodyGyroJerkMag-meanFreq()

##Output File: tidy_data.txt
The output file is contains 180 rows and 81 columns. 
* Column #1 is the subject identifier who participated in the study.
* Column #2 is the activity description
* Columns 3-81 contain the average of the variables above for each subject and each activity. 

tidy_data.txt can be read using the R command: dt <- read.csv("tidy_data.txt", sep=" ") 

