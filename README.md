### README.md ###

"Getting and Cleaning Data" Project
Coursera Data Science Specialization
Johns Hopkins University

Project Description

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set.
https://github.com/darwinnava/Getting-and-Cleaning-Data-Course-Project

Project Files

The components of tidy data are: 

1. The raw data (input).

Specifically, this project uses data from the UCI Machine Learning repository called Human Activity Recognition Using Smartphones Data Set. Available through the following link:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

Coursera provides the following link to download the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

2. A tidy data set (output).
The .txt file tidy_Data.txt

The independent tidy data set is created with the average of each variable for each activity and each subject.

3. A code book 
(getting, cleaning and understanding the data).
The .md file CodeBook.md

Information about the variables (description and units), the summary choices made and format are available. The data sets are cleaning with emphasis on creating tidy data sets that can be used in downstream analyses. 

4. An explicit and exact recipe used to go from 1 to 2,3.
(getting, cleaning and understanding the data)
The R Script run_analysis.R

It downloads, reads, and manipulates the data files to set it up to be a tidy data set that can be used in downstream analyses. It merges the training and the test sets, creating one data set. It was extracted only the measurements on the mean and standard desviation for each measurement. Descriptive variable and activity names were used according to the principles of tidy data. 
