# Getting and Cleaning Data: Course Project 1
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following. 

    Merges the training and the test sets to create one data set.
    Extracts only the measurements on the mean and standard deviation for each measurement. 
    Uses descriptive activity names to name the activities in the data set
    Appropriately labels the data set with descriptive variable names. 

    From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Good luck!

## run_analysis.R
This script performs the required data reduction detailed above.  In particular it produces the two tidy data sets
* Data.txt
* Data_mean.txt

The relevent data files from the above sources should be placed in a directory called in "UCI HAR Dataset".  This should be at the same level as the script run_analysis.R

./run_analysis.R
./UCI HAR Dataset/

run_analysis.R can be directly sourced from R
> source ("./run_analysis.R")

### Reduction Steps:

1. Reads the pre reduced data into R.  These contain the data and descriptions of the columns and activities, specifically the following files:
+ UCI HAR Dataset/test/X_test.txt
+ UCI HAR Dataset/test/y_test.txt
+ UCI HAR Dataset/test/subject_test.txt
+ UCI HAR Dataset/train/X_train.txt
+ UCI HAR Dataset/train/y_train.txt
+ UCI HAR Dataset/train/subject_train.txt
+ UCI HAR Dataset/features.txt
+ UCI HAR Dataset/activity_labels.txt

2. Edit the column names of all files and make a selection in the primary data table of those columns containing data pertaining to a mean or standard deviation.
3. Combine the testing and training data sets into one common table called data.  Remove old data frames to free up memory.
4. Edit the activity column so that it is human readable.
5. Reorder the data table and change the Subject and Activity columns to factor labels.  Write the data to file called "Data.txt)
6. Caluculate the means of each column based on each subject and activity.
7. Columns names are cleaned up due to the aggregate command used.
8. Final tidy data frame is written to file named "Data_means.txt"

Enjoy!