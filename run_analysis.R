## Programming Assignment for Getting and Cleaning Data Course Project
# 1. Merges the training and the test sets to create one data set
# 2. Extracts only the measurements on the mean and standard deviation for each measurement
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names
# 5. From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.

library(reshape2)

filename <- "getdata_dataset.zip"

# Download and unzip the dataset
if (!file.exists(filename)){
  fileURL <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, mode = "wb")
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}
unlink(filename)

# Get the train dataset
trainData <- read.table("UCI HAR Dataset/train/X_train.txt")
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
trainData <- cbind(trainSubjects, trainActivities, trainData)

# Get the test dataset
testData <- read.table("UCI HAR Dataset/test/X_test.txt")
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
testData <- cbind(testSubjects, testActivities, testData)

# merge datasets 
mergedData <- rbind(trainData, testData)

# Get features
features <- read.table("UCI HAR Dataset/features.txt")
featuresNames <- as.character(features$V2)

# label the data set with descriptive variable names
colnames(mergedData) <- c("subject", "activity", featuresNames)

# Select only the data on mean and standard deviation for each measurement
featuresSel <- grep(".*mean.*|.*std.*", names(mergedData))
mergedData <- mergedData[,c(1,2,featuresSel)]

# Get activity labels
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels$V2 <- as.character(activityLabels$V2)


# convert activities & subjects into factors
mergedData$activity <- factor(mergedData$activity, levels = activityLabels$V1, labels = activityLabels$V2)
mergedData$subject <- as.factor(mergedData$subject)

# stack measurement variables into one column
mergedDataMolten <- melt(mergedData, id.vars = c("subject", "activity"))


# Create tidy dataset with the average of each variable for 
# each activity and each subject 
mergedDataAverage <- dcast(mergedDataMolten, subject + activity ~ variable, mean)
write.table(mergedDataAverage, "tidy.txt", row.names = FALSE, quote = FALSE)