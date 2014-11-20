## Project Instructions:
## You should create one R script called run_analysis.R that does the following. 
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of 
##    each variable for each activity and each subject.
## 6. Please upload the tidy data set created in step 5 of the instructions. Please upload your data 
##    set as a txt file created with write.table() using row.name=FALSE (do not cut and paste a dataset 
##    directly into the text box, as this may cause errors saving your submission).
##==============================================


## 1. Read data into R
test_data <- read.table("UCI HAR Dataset/test/X_test.txt")
test_label <- read.table("UCI HAR Dataset/test/y_test.txt")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")

train_data <- read.table("UCI HAR Dataset/train/X_train.txt")
train_label <- read.table("UCI HAR Dataset/train/y_train.txt")
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")

features <- read.table("UCI HAR Dataset/features.txt")
activity <- read.table("UCI HAR Dataset/activity_labels.txt")

## 2. Add appropriate labels to the files containing info on the activity and subject.
colnames(test_label) <- "ActivityName"
colnames(test_subject) <- "Subject"
colnames(train_label) <- "ActivityName"
colnames(train_subject) <- "Subject"

## Locate the columns that are either a mean or a standard error.
sel_col_no <- grep("mean|std",features$V2)
sel_col_names <- grep("mean|std",features$V2, value=TRUE)
## Remove the ()'s from the names as they are confusing.  I believe that the capital letters make
## the column names easier to read and more understandable.  I do not like like long column names as this
## can lead to confusion so I have chosen to only change the prefixs to time and freq for ease of reading.
## all the other abbreviations and straightforward.
sel_col_names_edit <- sub ("\\(\\)","",sel_col_names)
sel_col_names_edit <- sub ("^(t)","time",sel_col_names_edit)
sel_col_names_edit <- sub ("^(f)","freq",sel_col_names_edit)

# Make a selection based on the mean and standard deviation.  Then write the appropriate column labels.
test_data_sub <- test_data[,sel_col_no]
colnames(test_data_sub) <- sel_col_names_edit
train_data_sub <- train_data[,sel_col_no]
colnames(train_data_sub) <- sel_col_names_edit


## 3. Combine the train and test datasets with the activity and subject data, try using cbind.
test <- data.frame(test_subject, test_label, test_data_sub)
train <- data.frame(train_subject, train_label, train_data_sub)

## Combine the test and train data
data <- rbind(test,train)

## Remove old data
rm(features,train_data,train_label, train_subject, test_data, test_label, test_subject, 
   test_data_sub, train_data_sub, sel_col_names, sel_col_names_edit, sel_col_no, test, train)


# 4. Change numbers to human readable description of the activity for clarity.
rows <- nrow(data)
for(i in 1:rows){
    if (data[i,2]==1) {data[i,2]<-"WALKING"}
    else if (data[i,2]==2) {data[i,2]<-"WALKING_UPSTAIRS"}
    else if (data[i,2]==3) {data[i,2]<-"WALKING_DOWNSTAIRS"}
    else if (data[i,2]==4) {data[i,2]<-"SITTING"}
    else if (data[i,2]==5) {data[i,2]<-"STANDING"}
    else if (data[i,2]==6) {data[i,2]<-"LAYING"}
}

## 5.  Order the table and then change the Subject and Activity variables to be factor variables. 
data <- arrange(data,Subject,ActivityName)
data$Subject <- factor(data$Subject)
data$ActivityName <- factor(data$ActivityName)
write.table(data, './Data.txt',row.names=FALSE,sep='\t')

## 6. Create the tidy data table consisting of the means for each subject and activity
data_means <- aggregate(x=data, by=list(data$Subject, data$ActivityName), FUN="mean")


## 7. Need to remove the 3rd and 4th column as it cannot create means 
## the of the subject and activity columns.  New columns based on these groupings were created in the previous step.
data_means <- data_means[,-c(3,4)]  
## Rename the first two columns that were created when we calculated the means.  
## There should now be 180 rows due to the 6 activities and the 30 participtants
colnames(data_means)[1] <- "Subject"
colnames(data_means)[2] <- "ActivityName"

## 8. Export the tidy Data set with tab separation
write.table(data_means, './Data_means.txt',row.names=FALSE,sep='\t')

