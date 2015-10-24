##################################################
## run_analysis from 
## Getting and Cleaning data class project
## October 2015 by Steve Travis
## 
## This file contains 6 scripts with descriptions
## included above each section. 
#################################################

#################################################
## mergeTables looks in the data directory for the project
## data and merges six tables into one. The data is organized
## into two sets, Training and Test. Each set has three
## tables, X, Y and subject which will be combined.
#################################################

mergeTables <- function(dataDir) {
    
    print("Reading Train data sets")
    xTrain <- read.table(paste(dataDir,"/train/X_train.txt", sep = ""))
    
    yTrain <- read.table(paste(dataDir,"/train/Y_train.txt", sep = ""))
    
    subTrain <- read.table(paste(dataDir,"/train/subject_train.txt", sep = ""))
    
    
    print("Merging Train data sets")
    trainMerge <- cbind(subTrain,yTrain, xTrain)
    
    
    print("Reading Test data sets")
    xTest <- read.table(paste(dataDir,"/test/X_test.txt", sep = ""))
    
    yTest <- read.table(paste(dataDir,"/test/Y_test.txt", sep = ""))
    
    subTest <- read.table(paste(dataDir,"/test/subject_test.txt", sep = ""))
    
    print("Merging Test data sets")
    testMerge <- cbind(subTest,yTest, xTest)
    
    print("Merging Train and Test datasets")
    train_testMerge <- rbind(trainMerge, testMerge)
    
   
}

#################################################
## rowLabels looks in the data directory for the 
## activities_label file and replaces the numeric activity 
## indictor in the table output from mergeTables (DT), 2nd
## column with the correct activtiy name. 
################################################

rowLabels <- function(DT, datadir){
    
    print("Setting Row Labels")
    
    lbl <- read.table(paste(datadir,"/activity_labels.txt", sep=""), colClasses = "character")
    
    lblr= nrow(lbl)
    dtr = nrow(DT)
    i <- 1
    
    for (i in 1:dtr){
        j <- 1
        for (j in 1:lblr){
            if (DT[i,2] == lbl[j,1]) {
                #print(i)
                #rownames(DT)[i] <- lbl[j,2]
                DT[i,2] <- lbl[j,2]
                break
                } 
            }
    }
    DT

}

#################################################
## varLabels takes the output of rowLables or mergetables
## and provides column names obtained from features.txt 
## found in the data directory.
################################################

varLabels <- function(DT,datadir){ 

    print("Setting Var Labels")
    fnames <- read.table(paste(datadir,"/features.txt", sep=""), colClasses = "character")
    
    cnum <- ncol(DT)
    colnames(DT)[3:cnum] <- fnames[,2]
    colnames(DT)[2] <- "Activity"
    colnames(DT)[1] <- "Subject"
    
    DT
    
}

#################################################
## meanstdSelect chooses any column whos name contains
## the string "mean" or "std" as an indicator that the 
## column varible is a mean of standard deviation 
## measurement.  Input is a table output from varLabels
#################################################

meanstdSelect <- function(DT){
    print("Selecting measurements for Mean and Std Only")
    cnum <- ncol(DT)
    tempc <- DT[,1:2]
    
    pt <- DT[,grep("mean|std",colnames(DT)[3:cnum],fixed=FALSE, value=TRUE)]
    pt <- cbind(tempc,pt)
}


#################################################
## tidyData creates a summarized table by subject
## and variable which includes only averaged data
## for each activity. Since there are 30 subjects 
## and 6 activities, the output should include 
## 180 rows.
#################################################

tidyData <- function(DT){
    print("Creating Tidy Data")
    library(data.table)
    DTDT <- data.table(DT)
    td <- DTDT[,lapply(.SD, mean),by=c("Subject", "Activity")]
    td
}

#################################################
## run_analysis runs the scripts above in order 
## to create the desired table specified in the 
## project instructions.  The output is a file
## called "tidy_data.txt" in the working directory
## ret_list is included for troubleshooting and 
## can be uncommented if desired. 
#################################################

run_analysis <- function(datadir) {
    tnt <- mergeTables(datadir)
    
    rt <- rowLabels(tnt,datadir)
    
    vt <- varLabels(rt,datadir)
    
    pt <- meanstdSelect(vt)
    
    td <- tidyData(pt)
    
    write.table(td, file="tidy_data.txt", row.name=FALSE)
    
    #ret_list <- list(tnt=tnt,rt=rt,vt=vt,pt=pt,td=td)
    
}


##############################################
## The following two lines run the scripts when
## run_analysis.R is called. The data directory
## (datadir) is given and made to fit the project
## supplied data structure. If other data is desired 
## to be analyized with these scripts the data paths 
## will need to be manipulated to work this structure.
##############################################

datadir <- ("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset")

ft <- run_analysis(datadir)
