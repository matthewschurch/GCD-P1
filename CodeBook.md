# Code book

## Scritps
run_analytics.R - reduces accelerometer data from a study of 30 individuals collected using the the Samsung Galaxy S smartphone.
Project instructions are included at the top of the script

## Reduction Steps:

1. Reads the pre reduced data into R.  These contain the data and descriptions of the columns and activities, specifically the following files:
  UCI HAR Dataset/test/X_test.txt
  UCI HAR Dataset/test/y_test.txt
  UCI HAR Dataset/test/subject_test.txt
  UCI HAR Dataset/train/X_train.txt
  UCI HAR Dataset/train/y_train.txt
  UCI HAR Dataset/train/subject_train.txt
  UCI HAR Dataset/features.txt
  UCI HAR Dataset/activity_labels.txt

2. Edit the column names of all files and make a selection in the primary data table of those columns containing data pertaining to a mean or standard deviation.
3. Combine the testing and training data sets into one common table called data.  Remove old data frames to free up memory.
4. Edit the activity column so that it is human readable.
5. Reorder the data table and change the Subject and Activity columns to factor labels.  Write the data to file called "Data.txt)
6. Caluculate the means of each column based on each subject and activity.
7. Columns names are cleaned up due to the aggregate command used.
8. Final tidy data frame is written to file named "Data_means.txt"

## Data Files Produced
### Data.txt
10299 rows by 81 columns.  Tab separated.


### Data_means.txt
180 rows by 81 columns.  Tab separated.


### Columns 
* Subject
* ActivityName
* tBodyAcc.std...X
* tBodyAcc.std...Y
* tBodyAcc.std...Z
* tGravityAcc.std...X
* tGravityAcc.std...Y
* tGravityAcc.std...Z
* tBodyAccJerk.std...X
* tBodyAccJerk.std...Y
* tBodyAccJerk.std...Z
* tBodyGyro.std...X
* tBodyGyro.std...Y
* tBodyGyro.std...Z
* tBodyGyroJerk.std...X
* tBodyGyroJerk.std...Y
* tBodyGyroJerk.std...Z
* tBodyAccMag.std..
* tGravityAccMag.std..
* tBodyAccJerkMag.std..
* tBodyGyroMag.std..
* tBodyGyroJerkMag.std..
* fBodyAcc.std...X
* fBodyAcc.std...Y
* fBodyAcc.std...Z
* fBodyAccJerk.std...X
* fBodyAccJerk.std...Y
* fBodyAccJerk.std...Z
* fBodyGyro.std...X
* fBodyGyro.std...Y
* fBodyGyro.std...Z
* fBodyAccMag.std..
* fBodyBodyAccJerkMag.std..
* fBodyBodyGyroMag.std..
* fBodyBodyGyroJerkMag.std..
* tBodyAcc.mean...X
* tBodyAcc.mean...Y
* tBodyAcc.mean...Z
* tGravityAcc.mean...X
* tGravityAcc.mean...Y
* tGravityAcc.mean...Z
* tBodyAccJerk.mean...X
* tBodyAccJerk.mean...Y
* tBodyAccJerk.mean...Z
* tBodyGyro.mean...X
* tBodyGyro.mean...Y
* tBodyGyro.mean...Z
* tBodyGyroJerk.mean...X
* tBodyGyroJerk.mean...Y
* tBodyGyroJerk.mean...Z
* tBodyAccMag.mean..
* tGravityAccMag.mean..
* tBodyAccJerkMag.mean..
* tBodyGyroMag.mean..
* tBodyGyroJerkMag.mean..
* fBodyAcc.mean...X
* fBodyAcc.mean...Y
* fBodyAcc.mean...Z
* fBodyAcc.meanFreq...X
* fBodyAcc.meanFreq...Y
* fBodyAcc.meanFreq...Z
* fBodyAccJerk.mean...X
* fBodyAccJerk.mean...Y
* fBodyAccJerk.mean...Z
* fBodyAccJerk.meanFreq...X
* fBodyAccJerk.meanFreq...Y
* fBodyAccJerk.meanFreq...Z
* fBodyGyro.mean...X
* fBodyGyro.mean...Y
* fBodyGyro.mean...Z
* fBodyGyro.meanFreq...X
* fBodyGyro.meanFreq...Y
* fBodyGyro.meanFreq...Z
* fBodyAccMag.mean..
* fBodyAccMag.meanFreq..
* fBodyBodyAccJerkMag.mean..
* fBodyBodyAccJerkMag.meanFreq..
* fBodyBodyGyroMag.mean..
* fBodyBodyGyroMag.meanFreq..
* fBodyBodyGyroJerkMag.mean..
* fBodyBodyGyroJerkMag.meanFreq..

