# Getting_and_Cleaning_Data_project
## A requirement for the Getting and Cleaning Data class  Oct-2015

## Overview
The class project is to produce a R program titled run_analyis.R to combine two data sets, each consisting of 3 tables to produce a descriptive data set that is then summarized and written out to a file.  The full requirements for the program are:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Pre-Requisits
1. Obtain the data:  The data can be downloaded from  [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2. Unzip the dataset in a working directory.
3. Set you R environment to the working directory containing the dataset root directory, which is "../getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset".
4. Move run_analysis.R into the working directory. 


## How to Run run_analysis.R
run_analysis.R contains a set of scripts to read the data provided and produce a summarized output table called "tidy_data.txt" in the working directory. If the pre-requisit steps have been completed, run_analysis.R can be called without parameters and will output tidy_data.txt. 


## Program Output
The program will output a text file named tidy_data.txt which contains a table of 180 rows and 81 columns of measurements.  There are 6 measurements for each of the 30 participants in the study. To read tidy_data.txt into R use: dt <- read.csv("tidy_data.txt", sep=" ").
