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
* timeBodyAcc.std...X
* timeBodyAcc.std...Y
* timeBodyAcc.std...Z
* timeGravityAcc.std...X
* timeGravityAcc.std...Y
* timeGravityAcc.std...Z
* timeBodyAccJerk.std...X
* timeBodyAccJerk.std...Y
* timeBodyAccJerk.std...Z
* timeBodyGyro.std...X
* timeBodyGyro.std...Y
* timeBodyGyro.std...Z
* timeBodyGyroJerk.std...X
* timeBodyGyroJerk.std...Y
* timeBodyGyroJerk.std...Z
* timeBodyAccMag.std..
* timeGravityAccMag.std..
* timeBodyAccJerkMag.std..
* timeBodyGyroMag.std..
* timeBodyGyroJerkMag.std..
* freqBodyAcc.std...X
* freqBodyAcc.std...Y
* freqBodyAcc.std...Z
* freqBodyAccJerk.std...X
* freqBodyAccJerk.std...Y
* freqBodyAccJerk.std...Z
* freqBodyGyro.std...X
* freqBodyGyro.std...Y
* freqBodyGyro.std...Z
* freqBodyAccMag.std..
* freqBodyBodyAccJerkMag.std..
* freqBodyBodyGyroMag.std..
* freqBodyBodyGyroJerkMag.std..
* timeBodyAcc.mean...X
* timeBodyAcc.mean...Y
* timeBodyAcc.mean...Z
* timeGravityAcc.mean...X
* timeGravityAcc.mean...Y
* timeGravityAcc.mean...Z
* timeBodyAccJerk.mean...X
* timeBodyAccJerk.mean...Y
* timeBodyAccJerk.mean...Z
* timeBodyGyro.mean...X
* timeBodyGyro.mean...Y
* timeBodyGyro.mean...Z
* timeBodyGyroJerk.mean...X
* timeBodyGyroJerk.mean...Y
* timeBodyGyroJerk.mean...Z
* timeBodyAccMag.mean..
* timeGravityAccMag.mean..
* timeBodyAccJerkMag.mean..
* timeBodyGyroMag.mean..
* timeBodyGyroJerkMag.mean..
* freqBodyAcc.mean...X
* freqBodyAcc.mean...Y
* freqBodyAcc.mean...Z
* freqBodyAcc.meanFreq...X
* freqBodyAcc.meanFreq...Y
* freqBodyAcc.meanFreq...Z
* freqBodyAccJerk.mean...X
* freqBodyAccJerk.mean...Y
* freqBodyAccJerk.mean...Z
* freqBodyAccJerk.meanFreq...X
* freqBodyAccJerk.meanFreq...Y
* freqBodyAccJerk.meanFreq...Z
* freqBodyGyro.mean...X
* freqBodyGyro.mean...Y
* freqBodyGyro.mean...Z
* freqBodyGyro.meanFreq...X
* freqBodyGyro.meanFreq...Y
* freqBodyGyro.meanFreq...Z
* freqBodyAccMag.mean..
* freqBodyAccMag.meanFreq..
* freqBodyBodyAccJerkMag.mean..
* freqBodyBodyAccJerkMag.meanFreq..
* freqBodyBodyGyroMag.mean..
* freqBodyBodyGyroMag.meanFreq..
* freqBodyBodyGyroJerkMag.mean..
* freqBodyBodyGyroJerkMag.meanFreq..

