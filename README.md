# Getting_and_Cleaning_Data_project
## A requirement for the Getting and Cleaning Data class  Oct-2015

## Overview
The class project is to produce a R program titled run_analyis.R to combine two data sets, each consisting of 3 tables to produce a descriptive data set that is then summarized and written out to a file.  The full requirements for the program are:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## How to Run
The data set which was provided can be found at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Steps to prepare to run.
1. Download the data set above to your working directory and unzip.
2. With the run_analysis.R in the same working directory issue the command "run_analysis.R"

## Program Output
The program will output a text file named tidy_data which contains a table of 180 rows and 79 columns of measurements.  There are 6 measurements for each of the 30 participants in the study. 