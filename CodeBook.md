# Code Book

## Dataset information

the datasets was provided through the following link:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

According to the web site:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 
3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. 
The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets,
where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and 
then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, 
was separated using a Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

In this programming assignment, the train dataset and the test dataset were read then merged.
The train data was read from X_train.txt file and stored in trainData variable
The train activities were read from Y_train.txt file and stored in trainActivities variable
The train subjects were read from subject_train.txt file and stored in trainSubjects variable
The train dataset trainData was obtained by column binding of trainSubjects,trainActivities and trainData variables

The test data was read from X_test.txt file and stored in testData variable
The test activities were read from Y_test.txt file and stored in testActivities variable
The test subjects were read from subject_test.txt file and stored in testSubjects variable
The test dataset testData was obtained by column binding of testSubjects,testActivities and testData variables

The merged dataset mergedData was obtained by row binding of the train and test datasets

The activity labels were obtained by reading the file activity_labels.txt

The feature's names were obtained by reading the file features.txt

Only the columns names containing the strings "mean" or "std" were kept in the merged dataset

A tidy dataset tidy.txt was created from the merged dataset with the average of each variable for each activity and each subject

The following are the variables of the dataset tidy.txt

## Identifiers
Colum Number        Column Name       Description
[1]                 subject           subject ID
[2]                 activity          type of activity performed 

## Features(Measurements)
###Column Number         Column Name               Description
[3]                   "tBodyAcc-mean()-Z"               
[4]                   "tBodyAcc-std()-X"               
[5]                   "tBodyAcc-std()-Y"                
[6]                   "tBodyAcc-std()-Z"               
[7]                   "tBodyAcc-mad()-X"                
[8]                   "tBodyAcc-mad()-Y"               
[9]                   "tGravityAcc-mean()-Z"            
[10]                   "tGravityAcc-std()-X"            
[11]                   "tGravityAcc-std()-Y"             
[12]                  "tGravityAcc-std()-Z"            
[13]                  "tGravityAcc-mad()-X"             
[14]                  "tGravityAcc-mad()-Y"            
[15]                  "tBodyAccJerk-mean()-Z"           
[16]                  "tBodyAccJerk-std()-X"           
[17]                  "tBodyAccJerk-std()-Y"            
[18]                  "tBodyAccJerk-std()-Z"           
[19]                  "tBodyAccJerk-mad()-X"            
[20]                  "tBodyAccJerk-mad()-Y"           
[21]                  "tBodyGyro-mean()-Z"              
[22]                  "tBodyGyro-std()-X"              
[23]                  "tBodyGyro-std()-Y"               
[24]                  "tBodyGyro-std()-Z"              
[25]                  "tBodyGyro-mad()-X"               
[26]                  "tBodyGyro-mad()-Y"              
[27]                  "tBodyGyroJerk-mean()-Z"          
[28]                  "tBodyGyroJerk-std()-X"          
[29]                  "tBodyGyroJerk-std()-Y"           
[30]                  "tBodyGyroJerk-std()-Z"          
[31]                  "tBodyGyroJerk-mad()-X"           
[32]                  "tBodyGyroJerk-mad()-Y"          
[33]                  "tBodyAccMag-mad()"               
[34]                  "tBodyAccMag-max()"              
[35]                  "tGravityAccMag-mad()"            
[36]                  "tGravityAccMag-max()"           
[37]                  "tBodyAccJerkMag-mad()"           
[38]                  "tBodyAccJerkMag-max()"          
[39]                  "tBodyGyroMag-mad()"              
[40]                  "tBodyGyroMag-max()"             
[41]                  "tBodyGyroJerkMag-mad()"          
[42]                  "tBodyGyroJerkMag-max()"         
[43]                  "fBodyAcc-mean()-Z"               
[44]                  "fBodyAcc-std()-X"               
[45]                  "fBodyAcc-std()-Y"                
[46]                  "fBodyAcc-std()-Z"               
[47]                  "fBodyAcc-mad()-X"                
[48]                  "fBodyAcc-mad()-Y"               
[49]                  "fBodyAcc-meanFreq()-Z"           
[50]                  "fBodyAcc-skewness()-X"          
[51]                  "fBodyAcc-kurtosis()-X"           
[52]                  "fBodyAccJerk-mean()-Z"          
[53]                  "fBodyAccJerk-std()-X"            
[54]                  "fBodyAccJerk-std()-Y"           
[55]                  "fBodyAccJerk-std()-Z"            
[56]                  "fBodyAccJerk-mad()-X"           
[57]                  "fBodyAccJerk-mad()-Y"            
[58]                  "fBodyAccJerk-meanFreq()-Z"      
[59]                  "fBodyAccJerk-skewness()-X"       
[60]                  "fBodyAccJerk-kurtosis()-X"      
[61]                  "fBodyGyro-mean()-Z"              
[62]                  "fBodyGyro-std()-X"              
[63]                  "fBodyGyro-std()-Y"               
[64]                  "fBodyGyro-std()-Z"              
[65]                  "fBodyGyro-mad()-X"               
[66]                  "fBodyGyro-mad()-Y"              
[67]                  "fBodyGyro-meanFreq()-Z"          
[68]                  "fBodyGyro-skewness()-X"         
[69]                  "fBodyGyro-kurtosis()-X"         
[70]                  "fBodyAccMag-mad()"              
[71]                  "fBodyAccMag-max()"               
[72]                  "fBodyAccMag-kurtosis()"         
[73]                  "fBodyBodyAccJerkMag-mad()"       
[74]                  "fBodyBodyAccJerkMag-max()"      
[75]                  "fBodyBodyAccJerkMag-kurtosis()"  
[76]                  "fBodyBodyGyroMag-mad()"         
[77]                  "fBodyBodyGyroMag-max()"          
[78]                  "fBodyBodyGyroMag-kurtosis()"    
[79]                  "fBodyBodyGyroJerkMag-mad()"      
[90]                  "fBodyBodyGyroJerkMag-max()"     
[81]                  "fBodyBodyGyroJerkMag-kurtosis()"

## Activity Labels

WALKING (value 1): subject was walking during the test
WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
SITTING (value 4): subject was sitting during the test
STANDING (value 5): subject was standing during the test
LAYING (value 6): subject was laying down during the test
