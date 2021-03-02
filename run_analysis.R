---
title: "Getting and Cleaning Data Course Project"
author: "Darwin Nava"
date: "February 2, 2021"
file: "run_analysis.R"
---
#[Link to project on GitHUB](https://github.com/darwinnava/Getting-and-Cleaning-Data-Course-Project)

# Objective: 
#    Tyding data from the UCI Machine Learning repository called
#    "Human Activity Recognition Using Smartphones Data Set".
#    This R script called run_analysis.R should do the following:
# A. Merges the training and the test sets to create one data set.
# B. Extracts only the measurements on the mean and standard deviation for each measurement. 
# C. Uses descriptive activity names to name the activities in the data set
# D. Appropriately labels the data set with descriptive variable names. 
# E. From the data set in step 4, creates a second, independent tidy data set with the average 
#    of each variable for each activity and each subject.

## 1. Required Libraries
library(dplyr)  # for manipulating, gruoping and chaining data
library(tidyr)  # for tidying data
library(plyr)   # for manipulating data
library(data.table) #  for manipulating data

## 2. Downloading data from the source supplied by coursera
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

## Downloading and unzip data
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/dataset.zip")  # Windows OS (method="curl" not required)
unzip("./data/dataset.zip")

## List of files to read
filestrain <- list.files("./UCI HAR Dataset/train", pattern = "*.txt")
filestest <- list.files("./UCI HAR Dataset/test", pattern = "*.txt")
filesfeatures <- list.files("./UCI HAR Dataset", pattern = "*.txt")
files <- c(filestrain, filestest, filesfeatures)
files

## 3. Tidyng Data. 

# a: 'train/X_train.txt': Training set. (dim=7352x561)
# b: 'train/y_train.txt': Training labels.(dim=7352x1)
# c: 'test/X_test.txt': Test set. (dim=2947x561)
# d: 'test/y_test.txt': Test labels.(dim=2947x1)
# e: 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. 
#    'Its range is from 1 to 30.' (dim=2947x1)
# f: 'features.txt': List of all features. Each feature vector is a row on the text file.
#    "The features selected for this database come from the accelerometer and gyroscope 
#     3-axial raw signals tAcc-XYZ and tGyro-XYZ." (dim=561x2)
# g: 'activity_labels.txt': Links the class labels with their activity name. (dim=6x2)

## Reading files (raw data). Manipulating data. Giving the columns appropriate names.
subjecttrain <- (read.table("./UCI HAR Dataset/train/subject_train.txt", sep="\t", header = FALSE, col.names = "subject"))
xtrain <- (read.table("./UCI HAR Dataset/train/X_train.txt",header = FALSE, col.names = features$feature)) # Assign features as column names. 
ytrain <- (read.table("./UCI HAR Dataset/train/y_train.txt", sep="\t", header = FALSE, col.names = "idact"))
subjecttest <- (read.table("./UCI HAR Dataset/test/subject_test.txt", sep="\t", header = FALSE, col.names = "subject"))
xtest <- (read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE, col.names = features$feature))
ytest <- (read.table("./UCI HAR Dataset/test/y_test.txt", sep="\t", header = FALSE, col.names = "idact"))
features <- (read.table("./UCI HAR Dataset/features.txt", sep=" ", header = FALSE, col.names = c("idfea", "feature")))
activitylabels <- (read.table("./UCI HAR Dataset/activity_labels.txt", sep=" ", header = FALSE, col.names = c("idact", "activity")))

#Note: x <- features, y <- activities, subject <- who performs(id number)

## " The obtained dataset has been randomly partitioned into two sets, "
## " where 70% of the volunteers was selected for generating the training data and 30% the test data."
## Joining the information from train and test data by x, y, and subject.Then merging them. 


xsets <- rbind(xtrain, xtest) # The training and the test sets merged. (dim=10299 x 561)
ylabels <- rbind(ytrain, ytest) # The training and the test labels merged. (dim=10299 x 1)
subjects <- rbind(subjecttrain, subjecttest) # The training and the test subjects merged. (dim=10299 x 1)

## Meged Data (xsets, ylabels, subjects)
mergeddata <- data.frame(xsets, ylabels, subjects)
#head(mergeddata)


# 4. Extracts only the measurements on the mean and standard deviation for each measurement. 
# Note: Extracting columns where the measurements contain mean and standard deviation.

meansdmeasurement <- select(mergeddata, contains("mean"), contains("Mean"), contains("std"), contains("Std"))
#meansdmeasurement

# 5. Uses descriptive activity names to name the activities in the data set

mergeddata$idact <- activitylabels[mergeddata$idact, 2]  # Replacing numbers with activity descriptors
# head(select(mergeddata, idact), n=100)
# tail(select(mergeddata, idact, subject), n=300)

# 6. Appropriately labels the data set with descriptive variable names.
# Renaming variables according to the principles of tiny data
# Acc = Accelerometer  and Gyro=Gyroscope. 
# I am going to change the name of the variables which contain these diminutives 
# to make them more understandable when reading them.

names(mergeddata)<-gsub("Gyro", "Gyroscope", names(mergeddata))
names(mergeddata)<-gsub("Acc", "Accelerometer", names(mergeddata))

